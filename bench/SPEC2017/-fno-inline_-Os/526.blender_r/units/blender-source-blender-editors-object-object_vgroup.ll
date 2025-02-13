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
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.SoftBody = type { i32, i32, ptr, ptr, i8, i8, i16, float, [64 x i8], float, float, float, float, float, float, float, float, float, i16, [64 x i8], i16, float, float, [64 x i8], i32, i32, i32, i16, i16, ptr, i32, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, float, float, ptr, %struct.ListBase, ptr, [3 x float], [3 x [3 x float]], [3 x [3 x float]], i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ExplodeModifierData = type { %struct.ModifierData, ptr, i16, i16, float, [64 x i8] }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
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
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.LinkNode = type { ptr, ptr }
%struct.MeshElemMap = type { ptr, i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_vgroup_sync_from_pose(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %0) #19
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
  %17 = tail call i32 @defgroup_name_index(ptr noundef %0, ptr noundef nonnull %16) #19
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

; Function Attrs: optsize
declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_vgroup_object_is_edit_mode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !50
  switch i16 %3, label %13 [
    i16 1, label %4
    i16 22, label %7
  ]

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %0) #19
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

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %8 = tail call ptr @BKE_defgroup_new(ptr noundef nonnull %0, ptr noundef %1) #19
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %10 = tail call i32 @BLI_countlist(ptr noundef nonnull %9) #19
  %11 = trunc i32 %10 to i16
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  store i16 %11, ptr %12, align 2, !tbaa !49
  br label %13

13:                                               ; preds = %2, %4, %7
  %14 = phi ptr [ %8, %7 ], [ null, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @BKE_defgroup_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_vgroup_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ED_vgroup_add_name(ptr noundef %0, ptr noundef nonnull @.str) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vgroup_delete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @ED_vgroup_object_is_edit_mode(ptr noundef %0) #20, !range !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @vgroup_delete_edit_mode(ptr noundef %0, ptr noundef %1) #20
  br label %7

6:                                                ; preds = %2
  tail call fastcc void @vgroup_delete_object_mode(ptr noundef %0, ptr noundef %1) #20
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_delete_edit_mode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !54 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %5 = tail call i32 @BLI_findindex(ptr noundef nonnull %4, ptr noundef %1) #19
  %6 = tail call fastcc zeroext i8 @vgroup_active_remove_verts(ptr noundef %0, i8 noundef zeroext 1, ptr noundef %1) #20, !range !53
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %91, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !50
  switch i16 %10, label %91 [
    i16 1, label %11
    i16 22, label %50
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 24
  %18 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %17, i32 noundef 2) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %19 = load ptr, ptr %15, align 8, !tbaa !58
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %19, i8 noundef zeroext 1, ptr noundef null) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %11
  %23 = sext i32 %18 to i64
  br label %24

24:                                               ; preds = %22, %46
  %25 = phi ptr [ %20, %22 ], [ %47, %46 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  %27 = getelementptr inbounds i8, ptr %26, i64 %23
  %28 = icmp eq ptr %26, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.MDeformVert, ptr %27, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !63
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load ptr, ptr %27, align 8, !tbaa !65
  %35 = zext nneg i32 %31 to i64
  br label %36

36:                                               ; preds = %33, %43
  %37 = phi i64 [ 0, %33 ], [ %44, %43 ]
  %38 = getelementptr inbounds %struct.MDeformWeight, ptr %34, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !66
  %40 = icmp sgt i32 %39, %5
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = add nsw i32 %39, -1
  store i32 %42, ptr %38, align 4, !tbaa !66
  br label %43

43:                                               ; preds = %36, %41
  %44 = add nuw nsw i64 %37, 1
  %45 = icmp eq i64 %44, %35
  br i1 %45, label %46, label %36, !llvm.loop !68

46:                                               ; preds = %43, %29, %24
  %47 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #20
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %24, !llvm.loop !70

49:                                               ; preds = %46, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  br label %91

50:                                               ; preds = %8
  %51 = tail call fastcc ptr @vgroup_edit_lattice(ptr noundef nonnull %0) #20
  %52 = getelementptr inbounds %struct.Lattice, ptr %51, i64 0, i32 24
  %53 = load ptr, ptr %52, align 8, !tbaa !71
  %54 = icmp eq ptr %53, null
  br i1 %54, label %91, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.Lattice, ptr %51, i64 0, i32 2
  %57 = load i16, ptr %56, align 8, !tbaa !72
  %58 = sext i16 %57 to i32
  %59 = getelementptr inbounds %struct.Lattice, ptr %51, i64 0, i32 3
  %60 = load i16, ptr %59, align 2, !tbaa !73
  %61 = sext i16 %60 to i32
  %62 = mul nsw i32 %61, %58
  %63 = getelementptr inbounds %struct.Lattice, ptr %51, i64 0, i32 4
  %64 = load i16, ptr %63, align 4, !tbaa !74
  %65 = sext i16 %64 to i32
  %66 = mul nsw i32 %62, %65
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %55, %87
  %69 = phi i32 [ %88, %87 ], [ 0, %55 ]
  %70 = phi ptr [ %89, %87 ], [ %53, %55 ]
  %71 = getelementptr inbounds %struct.MDeformVert, ptr %70, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !63
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load ptr, ptr %70, align 8, !tbaa !65
  %76 = zext nneg i32 %72 to i64
  br label %77

77:                                               ; preds = %74, %84
  %78 = phi i64 [ 0, %74 ], [ %85, %84 ]
  %79 = getelementptr inbounds %struct.MDeformWeight, ptr %75, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !66
  %81 = icmp sgt i32 %80, %5
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = add nsw i32 %80, -1
  store i32 %83, ptr %79, align 4, !tbaa !66
  br label %84

84:                                               ; preds = %77, %82
  %85 = add nuw nsw i64 %78, 1
  %86 = icmp eq i64 %85, %76
  br i1 %86, label %87, label %77, !llvm.loop !75

87:                                               ; preds = %84, %68
  %88 = add nuw nsw i32 %69, 1
  %89 = getelementptr inbounds %struct.MDeformVert, ptr %70, i64 1
  %90 = icmp eq i32 %88, %66
  br i1 %90, label %91, label %68, !llvm.loop !76

91:                                               ; preds = %87, %55, %50, %8, %49, %2
  %92 = add nsw i32 %5, 1
  call fastcc void @vgroup_delete_update_users(ptr noundef %0, i32 noundef %92) #20
  call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef %1) #19
  %93 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %94 = load i16, ptr %93, align 2, !tbaa !49
  %95 = zext i16 %94 to i32
  %96 = icmp slt i32 %5, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = add i16 %94, -1
  store i16 %98, ptr %93, align 2, !tbaa !49
  br label %99

99:                                               ; preds = %97, %91
  %100 = phi i16 [ %98, %97 ], [ %94, %91 ]
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load ptr, ptr %4, align 8, !tbaa !77
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  store i16 1, ptr %93, align 2, !tbaa !49
  br label %106

106:                                              ; preds = %105, %102, %99
  %107 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %4) #20, !range !53
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %129, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %111 = load i16, ptr %110, align 8, !tbaa !50
  switch i16 %111, label %129 [
    i16 1, label %112
    i16 22, label %120
  ]

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %114 = load ptr, ptr %113, align 8, !tbaa !46
  %115 = getelementptr inbounds %struct.Mesh, ptr %114, i64 0, i32 21
  %116 = getelementptr inbounds %struct.Mesh, ptr %114, i64 0, i32 26
  %117 = load i32, ptr %116, align 8, !tbaa !78
  %118 = call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %115, i32 noundef 2, i32 noundef %117) #19
  %119 = getelementptr inbounds %struct.Mesh, ptr %114, i64 0, i32 17
  br label %127

120:                                              ; preds = %109
  %121 = call fastcc ptr @vgroup_edit_lattice(ptr noundef nonnull %0) #20
  %122 = getelementptr inbounds %struct.Lattice, ptr %121, i64 0, i32 24
  %123 = load ptr, ptr %122, align 8, !tbaa !71
  %124 = icmp eq ptr %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %126(ptr noundef nonnull %123) #19
  br label %127

127:                                              ; preds = %112, %125
  %128 = phi ptr [ %122, %125 ], [ %119, %112 ]
  store ptr null, ptr %128, align 8, !tbaa !79
  br label %129

129:                                              ; preds = %127, %120, %109, %106
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_delete_object_mode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !80 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !tbaa !81
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %6 = tail call i32 @BLI_findindex(ptr noundef nonnull %5, ptr noundef %1) #19
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = call zeroext i8 @ED_vgroup_array_get(ptr noundef %8, ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !53
  %10 = load ptr, ptr %3, align 8, !tbaa !79
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4, !tbaa !81
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %12, %35
  %16 = phi i32 [ %36, %35 ], [ 0, %12 ]
  %17 = phi ptr [ %37, %35 ], [ %10, %12 ]
  %18 = tail call ptr @defvert_find_index(ptr noundef nonnull %17, i32 noundef %6) #19
  tail call void @defvert_remove_group(ptr noundef nonnull %17, ptr noundef %18) #19
  %19 = getelementptr inbounds %struct.MDeformVert, ptr %17, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !63
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load ptr, ptr %17, align 8, !tbaa !65
  %24 = zext nneg i32 %20 to i64
  br label %25

25:                                               ; preds = %22, %32
  %26 = phi i64 [ 0, %22 ], [ %33, %32 ]
  %27 = getelementptr inbounds %struct.MDeformWeight, ptr %23, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !66
  %29 = icmp sgt i32 %28, %6
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = add nsw i32 %28, -1
  store i32 %31, ptr %27, align 4, !tbaa !66
  br label %32

32:                                               ; preds = %25, %30
  %33 = add nuw nsw i64 %26, 1
  %34 = icmp eq i64 %33, %24
  br i1 %34, label %35, label %25, !llvm.loop !82

35:                                               ; preds = %32, %15
  %36 = add nuw nsw i32 %16, 1
  %37 = getelementptr inbounds %struct.MDeformVert, ptr %17, i64 1
  %38 = icmp eq i32 %36, %13
  br i1 %38, label %39, label %15, !llvm.loop !83

39:                                               ; preds = %35, %12, %2
  %40 = add nsw i32 %6, 1
  tail call fastcc void @vgroup_delete_update_users(ptr noundef %0, i32 noundef %40) #20
  tail call void @BLI_freelinkN(ptr noundef nonnull %5, ptr noundef %1) #19
  %41 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %42 = load i16, ptr %41, align 2, !tbaa !49
  %43 = zext i16 %42 to i32
  %44 = icmp slt i32 %6, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = add i16 %42, -1
  store i16 %46, ptr %41, align 2, !tbaa !49
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi i16 [ %46, %45 ], [ %42, %39 ]
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load ptr, ptr %5, align 8, !tbaa !77
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i16 1, ptr %41, align 2, !tbaa !49
  br label %54

54:                                               ; preds = %53, %50, %47
  %55 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %5) #20, !range !53
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %59 = load i16, ptr %58, align 8, !tbaa !50
  switch i16 %59, label %76 [
    i16 1, label %60
    i16 22, label %67
  ]

60:                                               ; preds = %57
  %61 = load ptr, ptr %7, align 8, !tbaa !46
  %62 = getelementptr inbounds %struct.Mesh, ptr %61, i64 0, i32 21
  %63 = getelementptr inbounds %struct.Mesh, ptr %61, i64 0, i32 26
  %64 = load i32, ptr %63, align 8, !tbaa !78
  %65 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %62, i32 noundef 2, i32 noundef %64) #19
  %66 = getelementptr inbounds %struct.Mesh, ptr %61, i64 0, i32 17
  br label %74

67:                                               ; preds = %57
  %68 = load ptr, ptr %7, align 8, !tbaa !46
  %69 = getelementptr inbounds %struct.Lattice, ptr %68, i64 0, i32 24
  %70 = load ptr, ptr %69, align 8, !tbaa !71
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %73(ptr noundef nonnull %70) #19
  br label %74

74:                                               ; preds = %60, %72
  %75 = phi ptr [ %69, %72 ], [ %66, %60 ]
  store ptr null, ptr %75, align 8, !tbaa !79
  br label %76

76:                                               ; preds = %74, %67, %57, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vgroup_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = tail call zeroext i8 @ED_vgroup_object_is_edit_mode(ptr noundef %0) #20, !range !53
  %5 = icmp eq ptr %3, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = icmp eq i8 %4, 0
  br label %8

8:                                                ; preds = %6, %13
  %9 = phi ptr [ %3, %6 ], [ %10, %13 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !84
  br i1 %7, label %12, label %11

11:                                               ; preds = %8
  tail call fastcc void @vgroup_delete_edit_mode(ptr noundef %0, ptr noundef nonnull %9) #20
  br label %13

12:                                               ; preds = %8
  tail call fastcc void @vgroup_delete_object_mode(ptr noundef %0, ptr noundef nonnull %9) #20
  br label %13

13:                                               ; preds = %12, %11
  %14 = icmp eq ptr %10, null
  br i1 %14, label %15, label %8, !llvm.loop !86

15:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_vgroup_data_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !87
  switch i16 %3, label %26 [
    i16 17741, label %4
    i16 21580, label %10
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %5, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %7) #19
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 17
  store ptr %8, ptr %9, align 8, !tbaa !88
  br label %26

10:                                               ; preds = %1
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !79
  %12 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !72
  %14 = sext i16 %13 to i64
  %15 = shl nsw i64 %14, 4
  %16 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !73
  %18 = sext i16 %17 to i64
  %19 = mul nsw i64 %15, %18
  %20 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %21 = load i16, ptr %20, align 4, !tbaa !74
  %22 = sext i16 %21 to i64
  %23 = mul nsw i64 %19, %22
  %24 = tail call ptr %11(i64 noundef %23, ptr noundef nonnull @.str.1) #19
  %25 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 24
  store ptr %24, ptr %25, align 8, !tbaa !71
  br label %26

26:                                               ; preds = %1, %10, %4
  %27 = phi i8 [ 1, %4 ], [ 1, %10 ], [ 0, %1 ]
  ret i8 %27
}

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vgroup_data_clamp_range(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %5 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #20, !range !53
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4, !tbaa !81
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !tbaa !79
  %12 = zext nneg i32 %8 to i64
  br label %13

13:                                               ; preds = %10, %36
  %14 = phi i64 [ 0, %10 ], [ %37, %36 ]
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !79
  %17 = getelementptr inbounds %struct.MDeformVert, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !63
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %13, %31
  %21 = phi i32 [ %32, %31 ], [ %18, %13 ]
  %22 = phi i32 [ %34, %31 ], [ 0, %13 ]
  %23 = load ptr, ptr %16, align 8, !tbaa !65
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds %struct.MDeformWeight, ptr %23, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = icmp slt i32 %26, %1
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  tail call void @defvert_remove_group(ptr noundef nonnull %16, ptr noundef nonnull %25) #19
  %29 = add nsw i32 %22, -1
  %30 = load i32, ptr %17, align 8, !tbaa !63
  br label %31

31:                                               ; preds = %20, %28
  %32 = phi i32 [ %30, %28 ], [ %21, %20 ]
  %33 = phi i32 [ %29, %28 ], [ %22, %20 ]
  %34 = add nsw i32 %33, 1
  %35 = icmp slt i32 %34, %32
  br i1 %35, label %20, label %36, !llvm.loop !89

36:                                               ; preds = %31, %13
  %37 = add nuw nsw i64 %14, 1
  %38 = icmp eq i64 %37, %12
  br i1 %38, label %39, label %13, !llvm.loop !90

39:                                               ; preds = %36, %7, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_vgroup_parray_alloc(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  store i32 0, ptr %2, align 4, !tbaa !81
  store ptr null, ptr %1, align 8, !tbaa !79
  %6 = icmp eq ptr %0, null
  br i1 %6, label %166, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !87
  switch i16 %9, label %166 [
    i16 17741, label %10
    i16 21580, label %105
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = icmp eq ptr %12, null
  br i1 %13, label %63, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 24
  %17 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %16, i32 noundef 2) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %61, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %12, align 8, !tbaa !58
  %21 = load i32, ptr %20, align 8, !tbaa !91
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %23 = sext i32 %21 to i64
  %24 = shl nsw i64 %23, 3
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.2) #19
  store ptr %25, ptr %1, align 8, !tbaa !79
  store i32 %21, ptr %2, align 4, !tbaa !81
  %26 = icmp eq i8 %3, 0
  %27 = load ptr, ptr %12, align 8, !tbaa !58
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %27, i8 noundef zeroext 1, ptr noundef null) #20
  %29 = icmp eq ptr %28, null
  br i1 %26, label %48, label %30

30:                                               ; preds = %19
  br i1 %29, label %61, label %31

31:                                               ; preds = %30
  %32 = sext i32 %17 to i64
  br label %33

33:                                               ; preds = %31, %41
  %34 = phi i64 [ 0, %31 ], [ %45, %41 ]
  %35 = phi ptr [ %28, %31 ], [ %46, %41 ]
  %36 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %35, i8 noundef zeroext 1) #20, !range !93
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %35, align 8, !tbaa !60
  %40 = getelementptr inbounds i8, ptr %39, i64 %32
  br label %41

41:                                               ; preds = %33, %38
  %42 = phi ptr [ %40, %38 ], [ null, %33 ]
  %43 = load ptr, ptr %1, align 8, !tbaa !79
  %44 = getelementptr inbounds ptr, ptr %43, i64 %34
  store ptr %42, ptr %44, align 8, !tbaa !79
  %45 = add nuw i64 %34, 1
  %46 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %33, !llvm.loop !94

48:                                               ; preds = %19
  br i1 %29, label %61, label %49

49:                                               ; preds = %48
  %50 = sext i32 %17 to i64
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ 0, %49 ], [ %58, %51 ]
  %53 = phi ptr [ %28, %49 ], [ %59, %51 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !60
  %55 = getelementptr inbounds i8, ptr %54, i64 %50
  %56 = load ptr, ptr %1, align 8, !tbaa !79
  %57 = getelementptr inbounds ptr, ptr %56, i64 %52
  store ptr %55, ptr %57, align 8, !tbaa !79
  %58 = add nuw i64 %52, 1
  %59 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #20
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %51, !llvm.loop !95

61:                                               ; preds = %41, %51, %30, %48, %14
  %62 = phi i8 [ 0, %14 ], [ 1, %48 ], [ 1, %30 ], [ 1, %51 ], [ 1, %41 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %166

63:                                               ; preds = %10
  %64 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 17
  %65 = load ptr, ptr %64, align 8, !tbaa !88
  %66 = icmp eq ptr %65, null
  br i1 %66, label %166, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %69 = load ptr, ptr %68, align 8, !tbaa !96
  %70 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %71 = load i32, ptr %70, align 8, !tbaa !78
  store i32 %71, ptr %2, align 4, !tbaa !81
  %72 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %73 = sext i32 %71 to i64
  %74 = shl nsw i64 %73, 3
  %75 = tail call ptr %72(i64 noundef %74, ptr noundef nonnull @.str.2) #19
  store ptr %75, ptr %1, align 8, !tbaa !79
  %76 = icmp eq i8 %3, 0
  %77 = load i32, ptr %70, align 8, !tbaa !78
  %78 = icmp sgt i32 %77, 0
  br i1 %76, label %82, label %79

79:                                               ; preds = %67
  br i1 %78, label %80, label %166

80:                                               ; preds = %79
  %81 = zext nneg i32 %77 to i64
  br label %85

82:                                               ; preds = %67
  br i1 %78, label %83, label %166

83:                                               ; preds = %82
  %84 = zext nneg i32 %77 to i64
  br label %97

85:                                               ; preds = %80, %85
  %86 = phi i64 [ 0, %80 ], [ %95, %85 ]
  %87 = getelementptr inbounds %struct.MVert, ptr %69, i64 %86, i32 2
  %88 = load i8, ptr %87, align 2, !tbaa !97
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  %91 = getelementptr inbounds %struct.MDeformVert, ptr %65, i64 %86
  %92 = select i1 %90, ptr null, ptr %91
  %93 = load ptr, ptr %1, align 8, !tbaa !79
  %94 = getelementptr inbounds ptr, ptr %93, i64 %86
  store ptr %92, ptr %94, align 8, !tbaa !79
  %95 = add nuw nsw i64 %86, 1
  %96 = icmp eq i64 %95, %81
  br i1 %96, label %166, label %85, !llvm.loop !99

97:                                               ; preds = %83, %97
  %98 = phi i64 [ 0, %83 ], [ %103, %97 ]
  %99 = load ptr, ptr %64, align 8, !tbaa !88
  %100 = getelementptr inbounds %struct.MDeformVert, ptr %99, i64 %98
  %101 = load ptr, ptr %1, align 8, !tbaa !79
  %102 = getelementptr inbounds ptr, ptr %101, i64 %98
  store ptr %100, ptr %102, align 8, !tbaa !79
  %103 = add nuw nsw i64 %98, 1
  %104 = icmp eq i64 %103, %84
  br i1 %104, label %166, label %97, !llvm.loop !100

105:                                              ; preds = %7
  %106 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %107 = load ptr, ptr %106, align 8, !tbaa !51
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %107, align 8, !tbaa !101
  br label %111

111:                                              ; preds = %105, %109
  %112 = phi ptr [ %110, %109 ], [ %0, %105 ]
  %113 = getelementptr inbounds %struct.Lattice, ptr %112, i64 0, i32 24
  %114 = load ptr, ptr %113, align 8, !tbaa !71
  %115 = icmp eq ptr %114, null
  br i1 %115, label %166, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.Lattice, ptr %112, i64 0, i32 21
  %118 = load ptr, ptr %117, align 8, !tbaa !103
  %119 = getelementptr inbounds %struct.Lattice, ptr %112, i64 0, i32 2
  %120 = load i16, ptr %119, align 8, !tbaa !72
  %121 = sext i16 %120 to i32
  %122 = getelementptr inbounds %struct.Lattice, ptr %112, i64 0, i32 3
  %123 = load i16, ptr %122, align 2, !tbaa !73
  %124 = sext i16 %123 to i32
  %125 = mul nsw i32 %124, %121
  %126 = getelementptr inbounds %struct.Lattice, ptr %112, i64 0, i32 4
  %127 = load i16, ptr %126, align 4, !tbaa !74
  %128 = sext i16 %127 to i32
  %129 = mul nsw i32 %125, %128
  store i32 %129, ptr %2, align 4, !tbaa !81
  %130 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %131 = sext i32 %129 to i64
  %132 = shl nsw i64 %131, 3
  %133 = tail call ptr %130(i64 noundef %132, ptr noundef nonnull @.str.2) #19
  store ptr %133, ptr %1, align 8, !tbaa !79
  %134 = icmp eq i8 %3, 0
  %135 = load i32, ptr %2, align 4, !tbaa !81
  %136 = icmp sgt i32 %135, 0
  br i1 %134, label %144, label %137

137:                                              ; preds = %116
  br i1 %136, label %138, label %166

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct.BPoint, ptr %118, i64 0, i32 3
  %140 = load i16, ptr %139, align 4, !tbaa !104
  %141 = and i16 %140, 1
  %142 = icmp eq i16 %141, 0
  %143 = zext nneg i32 %135 to i64
  br label %147

144:                                              ; preds = %116
  br i1 %136, label %145, label %166

145:                                              ; preds = %144
  %146 = zext nneg i32 %135 to i64
  br label %158

147:                                              ; preds = %138, %152
  %148 = phi i64 [ 0, %138 ], [ %156, %152 ]
  br i1 %142, label %152, label %149

149:                                              ; preds = %147
  %150 = load ptr, ptr %113, align 8, !tbaa !71
  %151 = getelementptr inbounds %struct.MDeformVert, ptr %150, i64 %148
  br label %152

152:                                              ; preds = %147, %149
  %153 = phi ptr [ %151, %149 ], [ null, %147 ]
  %154 = load ptr, ptr %1, align 8, !tbaa !79
  %155 = getelementptr inbounds ptr, ptr %154, i64 %148
  store ptr %153, ptr %155, align 8, !tbaa !79
  %156 = add nuw nsw i64 %148, 1
  %157 = icmp eq i64 %156, %143
  br i1 %157, label %166, label %147, !llvm.loop !106

158:                                              ; preds = %145, %158
  %159 = phi i64 [ 0, %145 ], [ %164, %158 ]
  %160 = load ptr, ptr %113, align 8, !tbaa !71
  %161 = getelementptr inbounds %struct.MDeformVert, ptr %160, i64 %159
  %162 = load ptr, ptr %1, align 8, !tbaa !79
  %163 = getelementptr inbounds ptr, ptr %162, i64 %159
  store ptr %161, ptr %163, align 8, !tbaa !79
  %164 = add nuw nsw i64 %159, 1
  %165 = icmp eq i64 %164, %146
  br i1 %165, label %166, label %158, !llvm.loop !107

166:                                              ; preds = %152, %158, %85, %97, %137, %144, %79, %82, %4, %7, %111, %61, %63
  %167 = phi i8 [ %62, %61 ], [ 0, %63 ], [ 0, %111 ], [ 0, %7 ], [ 0, %4 ], [ 1, %82 ], [ 1, %79 ], [ 1, %144 ], [ 1, %137 ], [ 1, %97 ], [ 1, %85 ], [ 1, %158 ], [ 1, %152 ]
  ret i8 %167
}

; Function Attrs: optsize
declare void @defvert_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !108 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #20
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #20
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !109 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !110
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !111 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = tail call ptr %3(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vgroup_parray_mirror_sync(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #20, !range !53
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %5
  %14 = icmp eq ptr %8, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %8, align 8, !tbaa !58
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %16, i8 noundef zeroext 1) #19
  br label %17

17:                                               ; preds = %15, %13
  %18 = icmp sgt i32 %2, 0
  %19 = load ptr, ptr %6, align 8
  br i1 %18, label %20, label %46

20:                                               ; preds = %17
  %21 = zext nneg i32 %2 to i64
  br label %22

22:                                               ; preds = %20, %43
  %23 = phi i64 [ 0, %20 ], [ %44, %43 ]
  %24 = getelementptr inbounds ptr, ptr %1, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = trunc i64 %23 to i32
  %29 = tail call i32 @ED_mesh_mirror_get_vert(ptr noundef %0, i32 noundef %28) #19
  %30 = icmp eq i32 %29, -1
  %31 = zext i32 %29 to i64
  %32 = icmp eq i64 %23, %31
  %33 = or i1 %30, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %27
  %35 = sext i32 %29 to i64
  %36 = getelementptr inbounds ptr, ptr %1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds ptr, ptr %19, i64 %23
  %41 = load ptr, ptr %40, align 8, !tbaa !79
  tail call void @defvert_copy_subset(ptr noundef %41, ptr noundef nonnull %37, ptr noundef %3, i32 noundef %4) #19
  %42 = load ptr, ptr %40, align 8, !tbaa !79
  store ptr %42, ptr %24, align 8, !tbaa !79
  br label %43

43:                                               ; preds = %27, %34, %39, %22
  %44 = add nuw nsw i64 %23, 1
  %45 = icmp eq i64 %44, %21
  br i1 %45, label %46, label %22, !llvm.loop !114

46:                                               ; preds = %43, %17
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %47(ptr noundef %19) #19
  br label %48

48:                                               ; preds = %5, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_mesh_mirror_get_vert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_copy_subset(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vgroup_parray_mirror_assign(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0) #20, !range !53
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %3
  %12 = icmp eq ptr %6, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %6, align 8, !tbaa !58
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %14, i8 noundef zeroext 1) #19
  br label %15

15:                                               ; preds = %13, %11
  %16 = icmp sgt i32 %2, 0
  %17 = load ptr, ptr %4, align 8
  br i1 %16, label %18, label %43

18:                                               ; preds = %15
  %19 = zext nneg i32 %2 to i64
  br label %20

20:                                               ; preds = %18, %40
  %21 = phi i64 [ 0, %18 ], [ %41, %40 ]
  %22 = getelementptr inbounds ptr, ptr %1, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = trunc i64 %21 to i32
  %27 = tail call i32 @ED_mesh_mirror_get_vert(ptr noundef %0, i32 noundef %26) #19
  %28 = icmp eq i32 %27, -1
  %29 = zext i32 %27 to i64
  %30 = icmp eq i64 %21, %29
  %31 = or i1 %28, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = sext i32 %27 to i64
  %34 = getelementptr inbounds ptr, ptr %1, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds ptr, ptr %17, i64 %21
  %39 = load ptr, ptr %38, align 8, !tbaa !79
  store ptr %39, ptr %22, align 8, !tbaa !79
  br label %40

40:                                               ; preds = %25, %32, %37, %20
  %41 = add nuw nsw i64 %21, 1
  %42 = icmp eq i64 %41, %19
  br i1 %42, label %43, label %20, !llvm.loop !115

43:                                               ; preds = %40, %15
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %44(ptr noundef %17) #19
  br label %45

45:                                               ; preds = %3, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  %15 = icmp eq ptr %14, null
  br i1 %15, label %46, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.MDeformVert, ptr %14, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !63
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
  %26 = load i32, ptr %17, align 8, !tbaa !63
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %46, label %28

28:                                               ; preds = %25, %22
  %29 = load ptr, ptr %14, align 8, !tbaa !65
  %30 = getelementptr inbounds %struct.MDeformWeight, ptr %29, i64 %24
  %31 = load i32, ptr %30, align 4, !tbaa !66
  %32 = icmp slt i32 %31, %3
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds i8, ptr %2, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !116
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.MDeformWeight, ptr %29, i64 %24, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !117
  %41 = fcmp ugt float %40, %4
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @defvert_remove_group(ptr noundef nonnull %14, ptr noundef nonnull %30) #19
  br label %43

43:                                               ; preds = %28, %33, %42, %38
  %44 = and i64 %24, 4294967295
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %22

46:                                               ; preds = %43, %25, %16, %11
  %47 = add nuw nsw i64 %12, 1
  %48 = icmp eq i64 %47, %10
  br i1 %48, label %49, label %11, !llvm.loop !118

49:                                               ; preds = %46, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_vgroup_array_get(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !87
  switch i16 %7, label %34 [
    i16 17741, label %8
    i16 21580, label %13
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  store ptr %10, ptr %1, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %12 = load i32, ptr %11, align 8, !tbaa !78
  br label %35

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 26
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !101
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %18, %17 ], [ %0, %13 ]
  %21 = getelementptr inbounds %struct.Lattice, ptr %20, i64 0, i32 24
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  store ptr %22, ptr %1, align 8, !tbaa !79
  %23 = getelementptr inbounds %struct.Lattice, ptr %20, i64 0, i32 2
  %24 = load i16, ptr %23, align 8, !tbaa !72
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.Lattice, ptr %20, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !73
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %28, %25
  %30 = getelementptr inbounds %struct.Lattice, ptr %20, i64 0, i32 4
  %31 = load i16, ptr %30, align 4, !tbaa !74
  %32 = sext i16 %31 to i32
  %33 = mul nsw i32 %29, %32
  br label %35

34:                                               ; preds = %5, %3
  store ptr null, ptr %1, align 8, !tbaa !79
  br label %35

35:                                               ; preds = %34, %19, %8
  %36 = phi i32 [ 0, %34 ], [ %33, %19 ], [ %12, %8 ]
  %37 = phi i8 [ 0, %34 ], [ 1, %19 ], [ 1, %8 ]
  store i32 %36, ptr %2, align 4, !tbaa !81
  ret i8 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_vgroup_array_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %8 = tail call i32 @BLI_countlist(ptr noundef nonnull %7) #19
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %10 = tail call i32 @BLI_countlist(ptr noundef nonnull %9) #19
  %11 = icmp eq ptr %0, %1
  br i1 %11, label %153, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %14, ptr noundef nonnull %3, ptr noundef nonnull %5, i8 noundef zeroext 0) #20, !range !53
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %17, ptr noundef nonnull %4, ptr noundef nonnull %6, i8 noundef zeroext 0) #20, !range !53
  %19 = load ptr, ptr %4, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  %21 = load ptr, ptr %3, align 8
  %22 = icmp ne ptr %21, null
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %31

24:                                               ; preds = %12
  %25 = load ptr, ptr %16, align 8, !tbaa !46
  %26 = tail call zeroext i8 @ED_vgroup_data_create(ptr noundef %25) #20, !range !53
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %16, align 8, !tbaa !46
  %30 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %6, i8 noundef zeroext 0) #20, !range !53
  br label %31

31:                                               ; preds = %28, %24, %12
  %32 = phi i1 [ true, %28 ], [ false, %24 ], [ false, %12 ]
  %33 = load i32, ptr %6, align 4, !tbaa !81
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %5, align 4, !tbaa !81
  %37 = icmp ne i32 %33, %36
  %38 = icmp eq ptr %21, null
  %39 = select i1 %37, i1 true, i1 %38
  %40 = load ptr, ptr %4, align 8
  %41 = icmp eq ptr %40, null
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %45, label %60

43:                                               ; preds = %31
  %44 = load ptr, ptr %4, align 8, !tbaa !79
  br label %45

45:                                               ; preds = %43, %35
  %46 = phi ptr [ %44, %43 ], [ %40, %35 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %49(ptr noundef nonnull %46) #19
  br label %50

50:                                               ; preds = %48, %45
  %51 = icmp eq ptr %21, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %53(ptr noundef nonnull %21) #19
  br label %54

54:                                               ; preds = %52, %50
  br i1 %32, label %55, label %56

55:                                               ; preds = %54
  tail call fastcc void @vgroup_delete_all(ptr noundef nonnull %0) #20
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, ptr %5, align 4, !tbaa !81
  %58 = icmp eq i32 %33, %57
  %59 = zext i1 %58 to i8
  br label %153

60:                                               ; preds = %35
  tail call void @BLI_freelistN(ptr noundef nonnull %9) #19
  tail call void @BLI_duplicatelist(ptr noundef nonnull %9, ptr noundef nonnull %7) #19
  %61 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 97
  %62 = load i16, ptr %61, align 2, !tbaa !49
  %63 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  store i16 %62, ptr %63, align 2, !tbaa !49
  %64 = icmp slt i32 %8, %10
  br i1 %64, label %65, label %123

65:                                               ; preds = %60
  %66 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %67 = add nsw i32 %10, 1
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 2
  %70 = tail call ptr %66(i64 noundef %69, ptr noundef nonnull @__func__.ED_vgroup_array_copy) #19
  %71 = icmp slt i32 %8, 0
  br i1 %71, label %110, label %72

72:                                               ; preds = %65
  %73 = add nuw nsw i32 %8, 1
  %74 = zext nneg i32 %73 to i64
  %75 = add nuw nsw i64 %74, 3
  %76 = and i64 %75, 4294967292
  %77 = add nsw i64 %74, -1
  %78 = insertelement <4 x i64> poison, i64 %77, i64 0
  %79 = shufflevector <4 x i64> %78, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %80

80:                                               ; preds = %106, %72
  %81 = phi i64 [ 0, %72 ], [ %107, %106 ]
  %82 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %72 ], [ %108, %106 ]
  %83 = trunc i64 %81 to i32
  %84 = icmp ule <4 x i64> %82, %79
  %85 = extractelement <4 x i1> %84, i64 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = getelementptr inbounds i32, ptr %70, i64 %81
  store i32 %83, ptr %87, align 4, !tbaa !81
  br label %88

88:                                               ; preds = %86, %80
  %89 = extractelement <4 x i1> %84, i64 1
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = or disjoint i64 %81, 1
  %92 = getelementptr inbounds i32, ptr %70, i64 %91
  %93 = or disjoint i32 %83, 1
  store i32 %93, ptr %92, align 4, !tbaa !81
  br label %94

94:                                               ; preds = %90, %88
  %95 = extractelement <4 x i1> %84, i64 2
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = or disjoint i64 %81, 2
  %98 = getelementptr inbounds i32, ptr %70, i64 %97
  %99 = or disjoint i32 %83, 2
  store i32 %99, ptr %98, align 4, !tbaa !81
  br label %100

100:                                              ; preds = %96, %94
  %101 = extractelement <4 x i1> %84, i64 3
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  %103 = or disjoint i64 %81, 3
  %104 = getelementptr inbounds i32, ptr %70, i64 %103
  %105 = or disjoint i32 %83, 3
  store i32 %105, ptr %104, align 4, !tbaa !81
  br label %106

106:                                              ; preds = %102, %100
  %107 = add i64 %81, 4
  %108 = add <4 x i64> %82, <i64 4, i64 4, i64 4, i64 4>
  %109 = icmp eq i64 %107, %76
  br i1 %109, label %110, label %80, !llvm.loop !119

110:                                              ; preds = %106, %65
  %111 = phi i32 [ 0, %65 ], [ %73, %106 ]
  %112 = icmp sgt i32 %111, %10
  br i1 %112, label %121, label %113

113:                                              ; preds = %110
  %114 = zext i32 %111 to i64
  %115 = shl nuw nsw i64 %114, 2
  %116 = getelementptr i8, ptr %70, i64 %115
  %117 = sub i32 %10, %111
  %118 = zext i32 %117 to i64
  %119 = shl nuw nsw i64 %118, 2
  %120 = add nuw nsw i64 %119, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %116, i8 0, i64 %120, i1 false), !tbaa !81
  br label %121

121:                                              ; preds = %113, %110
  tail call fastcc void @vgroup_remap_update_users(ptr noundef %0, ptr noundef %70) #20
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %122(ptr noundef %70) #19
  br label %123

123:                                              ; preds = %121, %60
  %124 = icmp sgt i32 %33, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %123, %145
  %126 = phi ptr [ %147, %145 ], [ %21, %123 ]
  %127 = phi ptr [ %148, %145 ], [ %40, %123 ]
  %128 = phi i32 [ %146, %145 ], [ 0, %123 ]
  %129 = load ptr, ptr %127, align 8, !tbaa !79
  %130 = load ptr, ptr %129, align 8, !tbaa !65
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %125
  %133 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %133(ptr noundef nonnull %130) #19
  %134 = load ptr, ptr %127, align 8, !tbaa !79
  br label %135

135:                                              ; preds = %132, %125
  %136 = phi ptr [ %134, %132 ], [ %129, %125 ]
  %137 = load ptr, ptr %126, align 8, !tbaa !79
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %136, ptr noundef nonnull align 8 dereferenceable(16) %137, i64 16, i1 false), !tbaa.struct !122
  %138 = load ptr, ptr %127, align 8, !tbaa !79
  %139 = load ptr, ptr %138, align 8, !tbaa !65
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %135
  %142 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !79
  %143 = tail call ptr %142(ptr noundef nonnull %139) #19
  %144 = load ptr, ptr %127, align 8, !tbaa !79
  store ptr %143, ptr %144, align 8, !tbaa !65
  br label %145

145:                                              ; preds = %135, %141
  %146 = add nuw nsw i32 %128, 1
  %147 = getelementptr inbounds ptr, ptr %126, i64 1
  %148 = getelementptr inbounds ptr, ptr %127, i64 1
  %149 = icmp eq i32 %146, %33
  br i1 %149, label %150, label %125, !llvm.loop !123

150:                                              ; preds = %145, %123
  %151 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %151(ptr noundef %40) #19
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %152(ptr noundef %21) #19
  br label %153

153:                                              ; preds = %2, %150, %56
  %154 = phi i8 [ %59, %56 ], [ 1, %150 ], [ 1, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %154
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_delete_all(ptr noundef %0) unnamed_addr #0 !PGOFuncName !124 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !50
  switch i16 %3, label %21 [
    i16 1, label %4
    i16 22, label %12
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 21
  %8 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !78
  %10 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %7, i32 noundef 2, i32 noundef %9) #19
  %11 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 17
  br label %19

12:                                               ; preds = %1
  %13 = tail call fastcc ptr @vgroup_edit_lattice(ptr noundef nonnull %0) #20
  %14 = getelementptr inbounds %struct.Lattice, ptr %13, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %18(ptr noundef nonnull %15) #19
  br label %19

19:                                               ; preds = %4, %17
  %20 = phi ptr [ %14, %17 ], [ %11, %4 ]
  store ptr null, ptr %20, align 8, !tbaa !79
  br label %21

21:                                               ; preds = %19, %12, %1
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  tail call void @BLI_freelistN(ptr noundef nonnull %22) #19
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  store i16 0, ptr %23, align 2, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @vgroup_remap_update_users(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !125 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SoftBody, ptr %4, i64 0, i32 18
  %8 = load i16, ptr %7, align 4, !tbaa !127
  %9 = sext i16 %8 to i64
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !81
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %7, align 4, !tbaa !127
  br label %13

13:                                               ; preds = %6, %2
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %13, %48
  %18 = phi ptr [ %49, %48 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.ModifierData, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !129
  switch i32 %20, label %48 [
    i32 21, label %21
    i32 22, label %23
  ]

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ExplodeModifierData, ptr %18, i64 0, i32 3
  br label %41

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ClothModifierData, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  %26 = icmp eq ptr %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ClothSimSettings, ptr %25, i64 0, i32 34
  %29 = load i16, ptr %28, align 8, !tbaa !133
  %30 = sext i16 %29 to i64
  %31 = getelementptr inbounds i32, ptr %1, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !81
  %33 = trunc i32 %32 to i16
  store i16 %33, ptr %28, align 8, !tbaa !133
  %34 = getelementptr inbounds %struct.ClothSimSettings, ptr %25, i64 0, i32 33
  %35 = load i16, ptr %34, align 2, !tbaa !135
  %36 = sext i16 %35 to i64
  %37 = getelementptr inbounds i32, ptr %1, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !81
  %39 = trunc i32 %38 to i16
  store i16 %39, ptr %34, align 2, !tbaa !135
  %40 = getelementptr inbounds %struct.ClothSimSettings, ptr %25, i64 0, i32 35
  br label %41

41:                                               ; preds = %27, %21
  %42 = phi ptr [ %22, %21 ], [ %40, %27 ]
  %43 = load i16, ptr %42, align 2, !tbaa !87
  %44 = sext i16 %43 to i64
  %45 = getelementptr inbounds i32, ptr %1, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !81
  %47 = trunc i32 %46 to i16
  store i16 %47, ptr %42, align 2, !tbaa !87
  br label %48

48:                                               ; preds = %41, %17, %23
  %49 = load ptr, ptr %18, align 8, !tbaa !79
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %17, !llvm.loop !136

51:                                               ; preds = %48, %13
  %52 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %53 = load ptr, ptr %52, align 8, !tbaa !79
  %54 = icmp eq ptr %53, null
  br i1 %54, label %70, label %58

55:                                               ; preds = %60
  %56 = load ptr, ptr %59, align 8, !tbaa !79
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58, !llvm.loop !137

58:                                               ; preds = %51, %55
  %59 = phi ptr [ %56, %55 ], [ %53, %51 ]
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i64 [ 0, %58 ], [ %68, %60 ]
  %62 = getelementptr inbounds %struct.ParticleSystem, ptr %59, i64 0, i32 36, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !87
  %64 = sext i16 %63 to i64
  %65 = getelementptr inbounds i32, ptr %1, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !81
  %67 = trunc i32 %66 to i16
  store i16 %67, ptr %62, align 2, !tbaa !87
  %68 = add nuw nsw i64 %61, 1
  %69 = icmp eq i64 %68, 12
  br i1 %69, label %55, label %60, !llvm.loop !138

70:                                               ; preds = %55, %51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vgroup_vert_active_mirror(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 46
  %10 = load i8, ptr %9, align 1, !tbaa !139
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %2
  %14 = icmp eq ptr %8, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %16 = call ptr @ED_mesh_active_dvert_get_em(ptr noundef nonnull %0, ptr noundef nonnull %3) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %8, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.BMesh, ptr %19, i64 0, i32 24
  %21 = call i32 @CustomData_get_offset(ptr noundef nonnull %20, i32 noundef 2) #19
  %22 = load ptr, ptr %3, align 8, !tbaa !79
  call fastcc void @ED_mesh_defvert_mirror_update_em(ptr noundef nonnull %0, ptr noundef %22, i32 noundef %1, i32 noundef -1, i32 noundef %21) #20
  br label %23

23:                                               ; preds = %18, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %30

24:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %25 = call ptr @ED_mesh_active_dvert_get_ob(ptr noundef nonnull %0, ptr noundef nonnull %4) #19
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %4, align 4, !tbaa !81
  call fastcc void @ED_mesh_defvert_mirror_update_ob(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %28) #20
  br label %29

29:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  br label %30

30:                                               ; preds = %23, %29, %2
  ret void
}

; Function Attrs: optsize
declare ptr @ED_mesh_active_dvert_get_em(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ED_mesh_defvert_mirror_update_em(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !140 {
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  %11 = load i8, ptr %10, align 1, !tbaa !139
  %12 = lshr i8 %11, 4
  %13 = and i8 %12, 1
  %14 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %15 = tail call ptr @editbmesh_get_x_mirror_vert(ptr noundef %0, ptr noundef %9, ptr noundef %1, ptr noundef nonnull %14, i32 noundef %3, i8 noundef zeroext %13) #19
  %16 = icmp eq ptr %15, null
  %17 = icmp eq ptr %15, %1
  %18 = or i1 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load ptr, ptr %1, align 8, !tbaa !60
  %21 = sext i32 %4 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = load ptr, ptr %15, align 8, !tbaa !60
  %24 = getelementptr inbounds i8, ptr %23, i64 %21
  tail call fastcc void @mesh_defvert_mirror_update_internal(ptr noundef nonnull %0, ptr noundef %24, ptr noundef %22, i32 noundef %2) #20
  br label %25

25:                                               ; preds = %19, %5
  ret void
}

; Function Attrs: optsize
declare ptr @ED_mesh_active_dvert_get_ob(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ED_mesh_defvert_mirror_update_ob(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !141 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq i32 %2, -1
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 46
  %9 = load i8, ptr %8, align 1, !tbaa !139
  %10 = lshr i8 %9, 4
  %11 = and i8 %10, 1
  %12 = tail call i32 @mesh_get_x_mirror_vert(ptr noundef nonnull %0, i32 noundef %2, i8 noundef zeroext %11) #19
  %13 = icmp slt i32 %12, 0
  %14 = icmp eq i32 %12, %2
  %15 = or i1 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds %struct.MDeformVert, ptr %18, i64 %19
  %21 = zext nneg i32 %12 to i64
  %22 = getelementptr inbounds %struct.MDeformVert, ptr %18, i64 %21
  tail call fastcc void @mesh_defvert_mirror_update_internal(ptr noundef nonnull %0, ptr noundef %22, ptr noundef %20, i32 noundef %1) #20
  br label %23

23:                                               ; preds = %7, %16, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_object_vgroup_selection_itemf_helper(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !tbaa !81
  %8 = icmp eq ptr %0, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #19
  %11 = and i32 %4, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  call void @RNA_enum_items_add_value(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull @WT_vertex_group_select_item, i32 noundef 1) #19
  br label %14

14:                                               ; preds = %13, %9
  %15 = call ptr @BKE_object_pose_armature_get(ptr noundef %10) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = and i32 %4, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void @RNA_enum_items_add_value(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull @WT_vertex_group_select_item, i32 noundef 2) #19
  br label %21

21:                                               ; preds = %20, %17
  %22 = and i32 %4, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call void @RNA_enum_items_add_value(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull @WT_vertex_group_select_item, i32 noundef 3) #19
  br label %25

25:                                               ; preds = %21, %24, %14
  %26 = and i32 %4, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  call void @RNA_enum_items_add_value(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull @WT_vertex_group_select_item, i32 noundef 0) #19
  br label %29

29:                                               ; preds = %28, %25
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  store i8 1, ptr %3, align 1, !tbaa !116
  %30 = load ptr, ptr %6, align 8, !tbaa !79
  br label %31

31:                                               ; preds = %5, %29
  %32 = phi ptr [ %30, %29 ], [ @WT_vertex_group_select_item, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret ptr %32
}

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_items_add_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vgroup_vert_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %9 = tail call i32 @BLI_findindex(ptr noundef nonnull %8, ptr noundef %1) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %22, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = call zeroext i8 @ED_vgroup_array_get(ptr noundef %13, ptr noundef nonnull %6, ptr noundef nonnull %7) #20, !range !53
  %15 = icmp ne i8 %14, 0
  %16 = load ptr, ptr %6, align 8
  %17 = icmp eq ptr %16, null
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = tail call zeroext i8 @ED_vgroup_data_create(ptr noundef %13) #20, !range !53
  br label %21

21:                                               ; preds = %19, %11
  tail call fastcc void @ED_vgroup_nr_vert_add(ptr noundef nonnull %0, i32 noundef %9, i32 noundef %2, float noundef %3, i32 noundef %4) #20
  br label %22

22:                                               ; preds = %21, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ED_vgroup_nr_vert_add(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !142 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = call zeroext i8 @ED_vgroup_array_get(ptr noundef %9, ptr noundef nonnull %6, ptr noundef nonnull %7) #20, !range !53
  %11 = load ptr, ptr %6, align 8, !tbaa !79
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %5
  %14 = icmp sgt i32 %2, -1
  %15 = load i32, ptr %7, align 4
  %16 = icmp sgt i32 %15, %2
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = zext nneg i32 %2 to i64
  %20 = getelementptr inbounds %struct.MDeformVert, ptr %11, i64 %19
  %21 = tail call ptr @defvert_find_index(ptr noundef nonnull %20, i32 noundef %1) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  switch i32 %4, label %42 [
    i32 1, label %24
    i32 2, label %26
    i32 3, label %32
  ]

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.MDeformWeight, ptr %21, i64 0, i32 1
  store float %3, ptr %25, align 4, !tbaa !117
  br label %42

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.MDeformWeight, ptr %21, i64 0, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !117
  %29 = fadd float %28, %3
  store float %29, ptr %27, align 4, !tbaa !117
  %30 = fcmp ult float %29, 1.000000e+00
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  store float 1.000000e+00, ptr %27, align 4, !tbaa !117
  br label %42

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.MDeformWeight, ptr %21, i64 0, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !117
  %35 = fsub float %34, %3
  store float %35, ptr %33, align 4, !tbaa !117
  %36 = fcmp ugt float %35, 0.000000e+00
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  tail call void @defvert_remove_group(ptr noundef nonnull %20, ptr noundef nonnull %21) #19
  br label %42

38:                                               ; preds = %18
  %39 = add i32 %4, -1
  %40 = icmp ult i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void @defvert_add_index_notest(ptr noundef nonnull %20, i32 noundef %1, float noundef %3) #19
  br label %42

42:                                               ; preds = %38, %32, %37, %26, %31, %23, %24, %41, %13, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vgroup_vert_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %7 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %1) #19
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = call zeroext i8 @ED_vgroup_array_get(ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull %5) #20, !range !53
  %13 = load ptr, ptr %4, align 8, !tbaa !79
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds %struct.MDeformVert, ptr %13, i64 %16
  %18 = tail call ptr @defvert_find_index(ptr noundef nonnull %17, i32 noundef %7) #19
  tail call void @defvert_remove_group(ptr noundef nonnull %17, ptr noundef %18) #19
  br label %19

19:                                               ; preds = %15, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %20

20:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: optsize
declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @ED_vgroup_vert_weight(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %5 = tail call i32 @BLI_findindex(ptr noundef nonnull %4, ptr noundef %1) #19
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc float @get_vert_def_nr(ptr noundef %0, i32 noundef %5, i32 noundef %2) #20
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi float [ %8, %7 ], [ -1.000000e+00, %3 ]
  ret float %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @get_vert_def_nr(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !143 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !50
  switch i16 %5, label %65 [
    i16 1, label %6
    i16 22, label %35
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %10, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 24
  %15 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %14, i32 noundef 2) #19
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %65, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %10, align 8, !tbaa !58
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %18, i8 noundef zeroext 1) #19
  %19 = load ptr, ptr %10, align 8, !tbaa !58
  %20 = tail call ptr @BM_vert_at_index(ptr noundef %19, i32 noundef %2) #19
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = sext i32 %15 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  br label %56

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !88
  %27 = icmp eq ptr %26, null
  br i1 %27, label %65, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 26
  %30 = load i32, ptr %29, align 8, !tbaa !78
  %31 = icmp sgt i32 %30, %2
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  %33 = sext i32 %2 to i64
  %34 = getelementptr inbounds %struct.MDeformVert, ptr %26, i64 %33
  br label %56

35:                                               ; preds = %3
  %36 = tail call fastcc ptr @vgroup_edit_lattice(ptr noundef nonnull %0) #20
  %37 = getelementptr inbounds %struct.Lattice, ptr %36, i64 0, i32 24
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  %39 = icmp eq ptr %38, null
  br i1 %39, label %65, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.Lattice, ptr %36, i64 0, i32 2
  %42 = load i16, ptr %41, align 8, !tbaa !72
  %43 = sext i16 %42 to i32
  %44 = getelementptr inbounds %struct.Lattice, ptr %36, i64 0, i32 3
  %45 = load i16, ptr %44, align 2, !tbaa !73
  %46 = sext i16 %45 to i32
  %47 = mul nsw i32 %46, %43
  %48 = getelementptr inbounds %struct.Lattice, ptr %36, i64 0, i32 4
  %49 = load i16, ptr %48, align 4, !tbaa !74
  %50 = sext i16 %49 to i32
  %51 = mul nsw i32 %47, %50
  %52 = icmp sgt i32 %51, %2
  br i1 %52, label %53, label %65

53:                                               ; preds = %40
  %54 = sext i32 %2 to i64
  %55 = getelementptr inbounds %struct.MDeformVert, ptr %38, i64 %54
  br label %56

56:                                               ; preds = %53, %32, %17
  %57 = phi ptr [ %23, %17 ], [ %34, %32 ], [ %55, %53 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = tail call ptr @defvert_find_index(ptr noundef nonnull %57, i32 noundef %1) #19
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.MDeformWeight, ptr %60, i64 0, i32 1
  %64 = load float, ptr %63, align 4, !tbaa !117
  br label %65

65:                                               ; preds = %35, %24, %59, %28, %3, %56, %62, %40, %12
  %66 = phi float [ %64, %62 ], [ 0.000000e+00, %12 ], [ 0.000000e+00, %40 ], [ -1.000000e+00, %56 ], [ -1.000000e+00, %3 ], [ 0.000000e+00, %28 ], [ -1.000000e+00, %59 ], [ -1.000000e+00, %24 ], [ -1.000000e+00, %35 ]
  ret float %66
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vgroup_select_by_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @defgroup_name_index(ptr noundef %0, ptr noundef %1) #19
  %4 = trunc i32 %3 to i16
  %5 = add i16 %4, 1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  store i16 %5, ptr %6, align 2, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_vgroup_subset_from_select_type(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %6 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #19
  store i32 %6, ptr %2, align 4, !tbaa !81
  switch i32 %1, label %65 [
    i32 1, label %7
    i32 2, label %25
    i32 3, label %27
    i32 4, label %47
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %9 = load i16, ptr %8, align 2, !tbaa !49
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %11 = sext i32 %6 to i64
  %12 = tail call ptr %10(i64 noundef %11, ptr noundef nonnull @__func__.ED_vgroup_subset_from_select_type) #19
  %13 = load i32, ptr %2, align 4, !tbaa !81
  %14 = sext i32 %13 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %12, i8 0, i64 %14, i1 false)
  %15 = icmp eq i16 %9, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %7
  %17 = zext i16 %9 to i32
  %18 = load i32, ptr %2, align 4, !tbaa !81
  %19 = icmp slt i32 %18, %17
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  store i32 1, ptr %3, align 4, !tbaa !81
  %21 = zext i16 %9 to i64
  %22 = getelementptr i8, ptr %12, i64 %21
  %23 = getelementptr i8, ptr %22, i64 -1
  store i8 1, ptr %23, align 1, !tbaa !116
  br label %72

24:                                               ; preds = %16, %7
  store i32 0, ptr %3, align 4, !tbaa !81
  br label %72

25:                                               ; preds = %4
  %26 = tail call ptr @BKE_objdef_selected_get(ptr noundef %0, i32 noundef %6, ptr noundef %3) #19
  br label %72

27:                                               ; preds = %4
  %28 = tail call ptr @BKE_objdef_validmap_get(ptr noundef %0, i32 noundef %6) #19
  store i32 0, ptr %3, align 4, !tbaa !81
  %29 = load i32, ptr %2, align 4, !tbaa !81
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %27, %41
  %32 = phi i32 [ %42, %41 ], [ %29, %27 ]
  %33 = phi i32 [ %43, %41 ], [ 0, %27 ]
  %34 = phi i64 [ %44, %41 ], [ 0, %27 ]
  %35 = getelementptr inbounds i8, ptr %28, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !116
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = add nsw i32 %33, 1
  store i32 %39, ptr %3, align 4, !tbaa !81
  %40 = load i32, ptr %2, align 4, !tbaa !81
  br label %41

41:                                               ; preds = %31, %38
  %42 = phi i32 [ %32, %31 ], [ %40, %38 ]
  %43 = phi i32 [ %33, %31 ], [ %39, %38 ]
  %44 = add nuw nsw i64 %34, 1
  %45 = sext i32 %42 to i64
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %31, label %72, !llvm.loop !144

47:                                               ; preds = %4
  %48 = tail call ptr @BKE_objdef_validmap_get(ptr noundef %0, i32 noundef %6) #19
  store i32 0, ptr %3, align 4, !tbaa !81
  %49 = load i32, ptr %2, align 4, !tbaa !81
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %47, %60
  %52 = phi i64 [ %61, %60 ], [ 0, %47 ]
  %53 = getelementptr inbounds i8, ptr %48, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !116
  %55 = icmp eq i8 %54, 0
  %56 = zext i1 %55 to i8
  store i8 %56, ptr %53, align 1, !tbaa !116
  br i1 %55, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, ptr %3, align 4, !tbaa !81
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %3, align 4, !tbaa !81
  br label %60

60:                                               ; preds = %51, %57
  %61 = add nuw nsw i64 %52, 1
  %62 = load i32, ptr %2, align 4, !tbaa !81
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %51, label %72, !llvm.loop !145

65:                                               ; preds = %4
  %66 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %67 = sext i32 %6 to i64
  %68 = tail call ptr %66(i64 noundef %67, ptr noundef nonnull @__func__.ED_vgroup_subset_from_select_type) #19
  %69 = load i32, ptr %2, align 4, !tbaa !81
  %70 = sext i32 %69 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %68, i8 1, i64 %70, i1 false)
  %71 = load i32, ptr %2, align 4, !tbaa !81
  store i32 %71, ptr %3, align 4, !tbaa !81
  br label %72

72:                                               ; preds = %60, %41, %47, %27, %20, %24, %65, %25
  %73 = phi ptr [ %68, %65 ], [ %26, %25 ], [ %12, %24 ], [ %12, %20 ], [ %28, %27 ], [ %48, %47 ], [ %28, %41 ], [ %48, %60 ]
  ret ptr %73
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @BKE_objdef_selected_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_objdef_validmap_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @ED_vgroup_subset_to_index_array(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #8 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %18
  %8 = phi i64 [ 0, %5 ], [ %20, %18 ]
  %9 = phi i32 [ 0, %5 ], [ %19, %18 ]
  %10 = getelementptr inbounds i8, ptr %0, i64 %8
  %11 = load i8, ptr %10, align 1, !tbaa !116
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = add nsw i32 %9, 1
  %15 = sext i32 %9 to i64
  %16 = getelementptr inbounds i32, ptr %2, i64 %15
  %17 = trunc i64 %8 to i32
  store i32 %17, ptr %16, align 4, !tbaa !81
  br label %18

18:                                               ; preds = %7, %13
  %19 = phi i32 [ %14, %13 ], [ %9, %7 ]
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %22, label %7, !llvm.loop !146

22:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_vgroup_mirror(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #21
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %11 = load i16, ptr %10, align 2, !tbaa !49
  %12 = zext i16 %11 to i32
  %13 = add nsw i32 %12, -1
  store i32 0, ptr %6, align 4, !tbaa !81
  store i32 0, ptr %5, align 4, !tbaa !81
  %14 = or i8 %2, %1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %261, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %17, i32 noundef %13) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %261, label %20

20:                                               ; preds = %16
  %21 = icmp eq i8 %2, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %20
  %23 = icmp eq i8 %3, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = call ptr @defgroup_flip_map(ptr noundef nonnull %0, ptr noundef nonnull %8, i8 noundef zeroext 0) #19
  br label %28

26:                                               ; preds = %22
  %27 = call ptr @defgroup_flip_map_single(ptr noundef nonnull %0, ptr noundef nonnull %8, i8 noundef zeroext 0, i32 noundef %13) #19
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %25, %24 ], [ %27, %26 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %261, label %32

31:                                               ; preds = %20
  store i32 0, ptr %8, align 4, !tbaa !81
  br label %32

32:                                               ; preds = %28, %31
  %33 = phi ptr [ %29, %28 ], [ null, %31 ]
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !50
  switch i16 %35, label %255 [
    i16 1, label %36
    i16 22, label %171
  ]

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 20
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  %41 = icmp eq ptr %40, null
  br i1 %41, label %87, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %40, align 8, !tbaa !58
  %44 = getelementptr inbounds %struct.BMesh, ptr %43, i64 0, i32 24
  %45 = call i32 @CustomData_get_offset(ptr noundef nonnull %44, i32 noundef 2) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #21
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #21
  br label %255

48:                                               ; preds = %42
  call void @EDBM_verts_mirror_cache_begin(ptr noundef nonnull %40, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext %4) #19
  %49 = load ptr, ptr %40, align 8, !tbaa !58
  %50 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %9, ptr noundef %49, i8 noundef zeroext 1, ptr noundef null) #20
  %51 = icmp eq ptr %50, null
  br i1 %51, label %84, label %52

52:                                               ; preds = %48
  %53 = sext i32 %45 to i64
  br label %54

54:                                               ; preds = %52, %79
  %55 = phi ptr [ %50, %52 ], [ %82, %79 ]
  %56 = phi i32 [ 0, %52 ], [ %81, %79 ]
  %57 = phi i32 [ 0, %52 ], [ %80, %79 ]
  %58 = call ptr @EDBM_verts_mirror_get(ptr noundef nonnull %40, ptr noundef nonnull %55) #19
  %59 = icmp eq ptr %58, null
  br i1 %59, label %77, label %60

60:                                               ; preds = %54
  %61 = icmp eq ptr %58, %55
  br i1 %61, label %75, label %62

62:                                               ; preds = %60
  %63 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %55, i8 noundef zeroext 1) #20, !range !93
  %64 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %58, i8 noundef zeroext 1) #20, !range !93
  %65 = icmp ne i8 %63, 0
  %66 = icmp ne i8 %64, 0
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load ptr, ptr %55, align 8, !tbaa !60
  %70 = getelementptr inbounds i8, ptr %69, i64 %53
  %71 = load ptr, ptr %58, align 8, !tbaa !60
  %72 = getelementptr inbounds i8, ptr %71, i64 %53
  %73 = load i32, ptr %8, align 4, !tbaa !81
  call fastcc void @dvert_mirror_op(ptr noundef %70, ptr noundef %72, i8 noundef zeroext %63, i8 noundef zeroext %64, ptr noundef %33, i32 noundef %73, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %13) #20
  %74 = add nsw i32 %56, 1
  br label %75

75:                                               ; preds = %68, %62, %60
  %76 = phi i32 [ %74, %68 ], [ %56, %62 ], [ %56, %60 ]
  call void @EDBM_verts_mirror_cache_clear(ptr noundef nonnull %40, ptr noundef nonnull %55) #19
  call void @EDBM_verts_mirror_cache_clear(ptr noundef nonnull %40, ptr noundef nonnull %58) #19
  br label %79

77:                                               ; preds = %54
  %78 = add nsw i32 %57, 1
  br label %79

79:                                               ; preds = %75, %77
  %80 = phi i32 [ %57, %75 ], [ %78, %77 ]
  %81 = phi i32 [ %76, %75 ], [ %56, %77 ]
  %82 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %9) #20
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %54, !llvm.loop !147

84:                                               ; preds = %79, %48
  %85 = phi i32 [ 0, %48 ], [ %80, %79 ]
  %86 = phi i32 [ 0, %48 ], [ %81, %79 ]
  call void @EDBM_verts_mirror_cache_end(ptr noundef nonnull %40) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #21
  br label %255

87:                                               ; preds = %36
  %88 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 46
  %89 = load i8, ptr %88, align 1, !tbaa !139
  %90 = and i8 %89, 32
  %91 = icmp eq i8 %90, 0
  %92 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 17
  %93 = load ptr, ptr %92, align 8, !tbaa !88
  %94 = icmp eq ptr %93, null
  br i1 %94, label %255, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 15
  %97 = load ptr, ptr %96, align 8, !tbaa !96
  %98 = getelementptr inbounds %struct.Mesh, ptr %38, i64 0, i32 26
  %99 = load i32, ptr %98, align 8, !tbaa !78
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %102, label %255

101:                                              ; preds = %102
  br i1 %100, label %111, label %255

102:                                              ; preds = %95, %102
  %103 = phi i32 [ %108, %102 ], [ 0, %95 ]
  %104 = phi ptr [ %109, %102 ], [ %97, %95 ]
  %105 = getelementptr inbounds %struct.MVert, ptr %104, i64 0, i32 2
  %106 = load i8, ptr %105, align 2, !tbaa !97
  %107 = and i8 %106, -5
  store i8 %107, ptr %105, align 2, !tbaa !97
  %108 = add nuw nsw i32 %103, 1
  %109 = getelementptr inbounds %struct.MVert, ptr %104, i64 1
  %110 = icmp eq i32 %108, %99
  br i1 %110, label %101, label %102, !llvm.loop !148

111:                                              ; preds = %101, %161
  %112 = phi i64 [ %166, %161 ], [ 0, %101 ]
  %113 = phi i8 [ %165, %161 ], [ 1, %101 ]
  %114 = phi i8 [ %164, %161 ], [ 1, %101 ]
  %115 = phi i32 [ %163, %161 ], [ 0, %101 ]
  %116 = phi i32 [ %162, %161 ], [ 0, %101 ]
  %117 = phi ptr [ %167, %161 ], [ %97, %101 ]
  %118 = getelementptr inbounds %struct.MVert, ptr %117, i64 0, i32 2
  %119 = load i8, ptr %118, align 2, !tbaa !97
  %120 = and i8 %119, 4
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %161

122:                                              ; preds = %111
  %123 = trunc i64 %112 to i32
  %124 = call i32 @mesh_get_x_mirror_vert(ptr noundef %0, i32 noundef %123, i8 noundef zeroext %4) #19
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %159, label %126

126:                                              ; preds = %122
  %127 = zext i32 %124 to i64
  %128 = icmp eq i64 %112, %127
  br i1 %128, label %161, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %96, align 8, !tbaa !96
  %131 = sext i32 %124 to i64
  %132 = getelementptr inbounds %struct.MVert, ptr %130, i64 %131, i32 2
  %133 = load i8, ptr %132, align 2, !tbaa !97
  %134 = and i8 %133, 4
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %161

136:                                              ; preds = %129
  br i1 %91, label %141, label %137

137:                                              ; preds = %136
  %138 = load i8, ptr %118, align 2, !tbaa !97
  %139 = and i8 %138, 1
  %140 = and i8 %133, 1
  br label %141

141:                                              ; preds = %137, %136
  %142 = phi i8 [ %140, %137 ], [ %114, %136 ]
  %143 = phi i8 [ %139, %137 ], [ %113, %136 ]
  %144 = icmp ne i8 %143, 0
  %145 = icmp ne i8 %142, 0
  %146 = select i1 %144, i1 true, i1 %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load ptr, ptr %92, align 8, !tbaa !88
  %149 = getelementptr inbounds %struct.MDeformVert, ptr %148, i64 %112
  %150 = getelementptr inbounds %struct.MDeformVert, ptr %148, i64 %131
  %151 = load i32, ptr %8, align 4, !tbaa !81
  call fastcc void @dvert_mirror_op(ptr noundef %149, ptr noundef %150, i8 noundef zeroext %143, i8 noundef zeroext %142, ptr noundef %33, i32 noundef %151, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %13) #20
  %152 = add nsw i32 %115, 1
  br label %153

153:                                              ; preds = %141, %147
  %154 = phi i32 [ %152, %147 ], [ %115, %141 ]
  %155 = load i8, ptr %118, align 2, !tbaa !97
  %156 = or i8 %155, 4
  store i8 %156, ptr %118, align 2, !tbaa !97
  %157 = load i8, ptr %132, align 2, !tbaa !97
  %158 = or i8 %157, 4
  store i8 %158, ptr %132, align 2, !tbaa !97
  br label %161

159:                                              ; preds = %122
  %160 = add nsw i32 %116, 1
  br label %161

161:                                              ; preds = %111, %126, %153, %129, %159
  %162 = phi i32 [ %116, %153 ], [ %116, %129 ], [ %116, %126 ], [ %160, %159 ], [ %116, %111 ]
  %163 = phi i32 [ %154, %153 ], [ %115, %129 ], [ %115, %126 ], [ %115, %159 ], [ %115, %111 ]
  %164 = phi i8 [ %142, %153 ], [ %114, %129 ], [ %114, %126 ], [ %114, %159 ], [ %114, %111 ]
  %165 = phi i8 [ %143, %153 ], [ %113, %129 ], [ %113, %126 ], [ %113, %159 ], [ %113, %111 ]
  %166 = add nuw nsw i64 %112, 1
  %167 = getelementptr inbounds %struct.MVert, ptr %117, i64 1
  %168 = load i32, ptr %98, align 8, !tbaa !78
  %169 = sext i32 %168 to i64
  %170 = icmp slt i64 %166, %169
  br i1 %170, label %111, label %255, !llvm.loop !149

171:                                              ; preds = %32
  %172 = call fastcc ptr @vgroup_edit_lattice(ptr noundef nonnull %0) #20
  %173 = getelementptr inbounds %struct.Lattice, ptr %172, i64 0, i32 2
  %174 = load i16, ptr %173, align 8, !tbaa !72
  %175 = icmp eq i16 %174, 1
  br i1 %175, label %255, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.Lattice, ptr %172, i64 0, i32 24
  %178 = load ptr, ptr %177, align 8, !tbaa !71
  %179 = icmp eq ptr %178, null
  br i1 %179, label %255, label %180

180:                                              ; preds = %176
  %181 = sdiv i16 %174, 2
  %182 = sext i16 %181 to i32
  %183 = getelementptr inbounds %struct.Lattice, ptr %172, i64 0, i32 4
  %184 = load i16, ptr %183, align 4, !tbaa !74
  %185 = icmp sgt i16 %184, 0
  br i1 %185, label %186, label %255

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.Lattice, ptr %172, i64 0, i32 3
  %188 = icmp sgt i16 %174, 1
  %189 = getelementptr inbounds %struct.Lattice, ptr %172, i64 0, i32 21
  %190 = load i16, ptr %187, align 2, !tbaa !73
  br label %191

191:                                              ; preds = %186, %247
  %192 = phi i16 [ %184, %186 ], [ %248, %247 ]
  %193 = phi i16 [ %190, %186 ], [ %249, %247 ]
  %194 = phi i16 [ %190, %186 ], [ %250, %247 ]
  %195 = phi i32 [ 0, %186 ], [ %252, %247 ]
  %196 = phi i32 [ 0, %186 ], [ %251, %247 ]
  %197 = icmp sgt i16 %194, 0
  br i1 %197, label %198, label %247

198:                                              ; preds = %191, %239
  %199 = phi i16 [ %240, %239 ], [ %193, %191 ]
  %200 = phi i32 [ %242, %239 ], [ 0, %191 ]
  %201 = phi i32 [ %241, %239 ], [ %196, %191 ]
  br i1 %188, label %202, label %239

202:                                              ; preds = %198, %233
  %203 = phi i32 [ %235, %233 ], [ 0, %198 ]
  %204 = phi i32 [ %234, %233 ], [ %201, %198 ]
  %205 = load i16, ptr %173, align 8, !tbaa !72
  %206 = sext i16 %205 to i32
  %207 = xor i32 %203, -1
  %208 = add i32 %206, %207
  %209 = icmp eq i32 %203, %208
  br i1 %209, label %233, label %210

210:                                              ; preds = %202
  %211 = call i32 @BKE_lattice_index_from_uvw(ptr noundef nonnull %172, i32 noundef %203, i32 noundef %200, i32 noundef %195) #19
  %212 = call i32 @BKE_lattice_index_from_uvw(ptr noundef nonnull %172, i32 noundef %208, i32 noundef %200, i32 noundef %195) #19
  %213 = load ptr, ptr %189, align 8, !tbaa !103
  %214 = sext i32 %211 to i64
  %215 = sext i32 %212 to i64
  %216 = getelementptr inbounds %struct.BPoint, ptr %213, i64 %214, i32 3
  %217 = load i16, ptr %216, align 4, !tbaa !104
  %218 = trunc i16 %217 to i8
  %219 = and i8 %218, 1
  %220 = getelementptr inbounds %struct.BPoint, ptr %213, i64 %215, i32 3
  %221 = load i16, ptr %220, align 4, !tbaa !104
  %222 = trunc i16 %221 to i8
  %223 = and i8 %222, 1
  %224 = icmp ne i8 %219, 0
  %225 = icmp ne i8 %223, 0
  %226 = select i1 %224, i1 true, i1 %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %210
  %228 = load ptr, ptr %177, align 8, !tbaa !71
  %229 = getelementptr inbounds %struct.MDeformVert, ptr %228, i64 %214
  %230 = getelementptr inbounds %struct.MDeformVert, ptr %228, i64 %215
  %231 = load i32, ptr %8, align 4, !tbaa !81
  call fastcc void @dvert_mirror_op(ptr noundef %229, ptr noundef %230, i8 noundef zeroext %219, i8 noundef zeroext %223, ptr noundef %33, i32 noundef %231, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %13) #20
  %232 = add nsw i32 %204, 1
  br label %233

233:                                              ; preds = %227, %210, %202
  %234 = phi i32 [ %204, %202 ], [ %232, %227 ], [ %204, %210 ]
  %235 = add nuw nsw i32 %203, 1
  %236 = icmp eq i32 %235, %182
  br i1 %236, label %237, label %202, !llvm.loop !150

237:                                              ; preds = %233
  %238 = load i16, ptr %187, align 2, !tbaa !73
  br label %239

239:                                              ; preds = %237, %198
  %240 = phi i16 [ %199, %198 ], [ %238, %237 ]
  %241 = phi i32 [ %201, %198 ], [ %234, %237 ]
  %242 = add nuw nsw i32 %200, 1
  %243 = sext i16 %240 to i32
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %198, label %245, !llvm.loop !151

245:                                              ; preds = %239
  %246 = load i16, ptr %183, align 4, !tbaa !74
  br label %247

247:                                              ; preds = %245, %191
  %248 = phi i16 [ %192, %191 ], [ %246, %245 ]
  %249 = phi i16 [ %193, %191 ], [ %240, %245 ]
  %250 = phi i16 [ %194, %191 ], [ %240, %245 ]
  %251 = phi i32 [ %196, %191 ], [ %241, %245 ]
  %252 = add nuw nsw i32 %195, 1
  %253 = sext i16 %248 to i32
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %191, label %255, !llvm.loop !152

255:                                              ; preds = %247, %161, %95, %180, %101, %84, %87, %47, %176, %171, %32
  %256 = phi i32 [ 0, %32 ], [ 0, %171 ], [ 0, %176 ], [ 0, %47 ], [ 0, %87 ], [ %85, %84 ], [ 0, %101 ], [ 0, %180 ], [ 0, %95 ], [ %162, %161 ], [ 0, %247 ]
  %257 = phi i32 [ 0, %32 ], [ 0, %171 ], [ 0, %176 ], [ 0, %47 ], [ 0, %87 ], [ %86, %84 ], [ 0, %101 ], [ 0, %180 ], [ 0, %95 ], [ %163, %161 ], [ %251, %247 ]
  store i32 %257, ptr %5, align 4, !tbaa !81
  store i32 %256, ptr %6, align 4, !tbaa !81
  %258 = icmp eq ptr %33, null
  br i1 %258, label %261, label %259

259:                                              ; preds = %255
  %260 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %260(ptr noundef nonnull %33) #19
  br label %261

261:                                              ; preds = %255, %259, %28, %16, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #21
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @defgroup_flip_map(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @defgroup_flip_map_single(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_verts_mirror_cache_begin(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @EDBM_verts_mirror_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dvert_mirror_op(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i8 noundef zeroext %8, i32 noundef %9) unnamed_addr #0 !PGOFuncName !153 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !122
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !122
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11)
  br label %41

20:                                               ; preds = %17
  %21 = tail call ptr @defvert_find_index(ptr noundef %0, i32 noundef %9) #19
  %22 = tail call ptr @defvert_find_index(ptr noundef %1, i32 noundef %9) #19
  %23 = icmp ne ptr %21, null
  %24 = icmp ne ptr %22, null
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = icmp eq ptr %22, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = tail call ptr @defvert_verify_index(ptr noundef %1, i32 noundef %9) #19
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %29, %28 ], [ %22, %26 ]
  %32 = icmp eq ptr %21, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call ptr @defvert_verify_index(ptr noundef %0, i32 noundef %9) #19
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi ptr [ %34, %33 ], [ %21, %30 ]
  %37 = getelementptr inbounds %struct.MDeformWeight, ptr %36, i64 0, i32 1
  %38 = load float, ptr %37, align 4, !tbaa !117
  %39 = getelementptr inbounds %struct.MDeformWeight, ptr %31, i64 0, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !117
  store float %40, ptr %37, align 4, !tbaa !117
  store float %38, ptr %39, align 4, !tbaa !117
  br label %41

41:                                               ; preds = %35, %20, %19, %15
  %42 = icmp eq i8 %7, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %41
  tail call void @defvert_flip(ptr noundef %0, ptr noundef %4, i32 noundef %5) #19
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
  tail call void @defvert_copy(ptr noundef %47, ptr noundef %46) #19
  br label %53

52:                                               ; preds = %49
  tail call void @defvert_copy_index(ptr noundef %47, ptr noundef %46, i32 noundef %9) #19
  br label %53

53:                                               ; preds = %51, %52, %44
  %54 = icmp eq i8 %7, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %53, %43
  %56 = phi ptr [ %1, %43 ], [ %47, %53 ]
  tail call void @defvert_flip(ptr noundef %56, ptr noundef %4, i32 noundef %5) #19
  br label %57

57:                                               ; preds = %55, %53, %41
  ret void
}

; Function Attrs: optsize
declare void @EDBM_verts_mirror_cache_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_verts_mirror_cache_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @mesh_get_x_mirror_vert(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @vgroup_edit_lattice(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !154 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !101
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ %8, %7 ], [ %3, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare i32 @BKE_lattice_index_from_uvw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_supported_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_add_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vertex_group_supported_poll(ptr noundef %0) #0 !PGOFuncName !163 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !50
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = icmp eq i16 %12, 22
  %16 = icmp ne ptr %6, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %20, label %25

18:                                               ; preds = %10
  %19 = icmp eq ptr %6, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %14, %18
  %21 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !165
  %23 = icmp eq ptr %22, null
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %1, %20, %18, %14, %4
  %26 = phi i32 [ 0, %18 ], [ 0, %14 ], [ 0, %4 ], [ %24, %20 ], [ 0, %1 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !166 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %4 = tail call ptr @ED_vgroup_add(ptr noundef %3) #20
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #19
  %5 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %6) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_remove_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vertex_group_poll(ptr noundef %0) #0 !PGOFuncName !168 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = icmp eq ptr %8, null
  %10 = icmp ne ptr %6, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !165
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !50
  switch i16 %18, label %24 [
    i16 1, label %19
    i16 22, label %19
  ]

19:                                               ; preds = %16, %16
  %20 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 25
  %21 = load ptr, ptr %20, align 8, !tbaa !77
  %22 = icmp ne ptr %21, null
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %1, %16, %19, %12, %4
  %25 = phi i32 [ 0, %12 ], [ 0, %4 ], [ %23, %19 ], [ 0, %16 ], [ 0, %1 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !169 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.9) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @vgroup_delete_all(ptr noundef %3) #20
  br label %10

9:                                                ; preds = %2
  tail call fastcc void @vgroup_delete(ptr noundef %3) #20
  br label %10

10:                                               ; preds = %9, %8
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #19
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %12) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #19
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_assign(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_unlocked_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_assign_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vertex_group_vert_select_unlocked_poll(ptr noundef %0) #0 !PGOFuncName !172 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = icmp eq ptr %8, null
  %10 = icmp ne ptr %6, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %38

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !165
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = tail call zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef nonnull %2) #19
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = tail call zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr noundef nonnull %2) #19
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %19, %16
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 97
  %24 = load i16, ptr %23, align 2, !tbaa !49
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = zext i16 %24 to i32
  %28 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 25
  %29 = add nsw i32 %27, -1
  %30 = tail call ptr @BLI_findlink(ptr noundef nonnull %28, i32 noundef %29) #19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.bDeformGroup, ptr %30, i64 0, i32 3
  %34 = load i8, ptr %33, align 8, !tbaa !173
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = zext nneg i8 %36 to i32
  br label %38

38:                                               ; preds = %26, %1, %22, %32, %19, %4, %12
  %39 = phi i32 [ %37, %32 ], [ 0, %12 ], [ 0, %4 ], [ 0, %19 ], [ 1, %22 ], [ 0, %1 ], [ 1, %26 ]
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_assign_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !174 {
  %3 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %3, i64 0, i32 4
  %6 = load float, ptr %5, align 8, !tbaa !175
  tail call fastcc void @vgroup_assign_verts(ptr noundef %4, float noundef %6) #20
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #19
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %8) #19
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_assign_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_assign_new_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vertex_group_vert_select_poll(ptr noundef %0) #0 !PGOFuncName !182 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = icmp eq ptr %8, null
  %10 = icmp ne ptr %6, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !165
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = tail call zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef nonnull %2) #19
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = tail call zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr noundef nonnull %2) #19
  %21 = icmp ne i8 %20, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %1, %16, %19, %4, %12
  %24 = phi i32 [ 0, %12 ], [ 0, %4 ], [ 1, %16 ], [ %22, %19 ], [ 0, %1 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_assign_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !183 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %4 = tail call ptr @ED_vgroup_add(ptr noundef %3) #20
  %5 = tail call i32 @vertex_group_assign_exec(ptr noundef %0, ptr poison) #20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_remove_from(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_unlocked_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_remove_from_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #19
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #19
  %10 = load ptr, ptr %7, align 8, !tbaa !167
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #19
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268435456) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_remove_from_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !184 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !170
  %5 = tail call i32 @RNA_boolean_get(ptr noundef %4, ptr noundef nonnull @.str.21) #19
  %6 = load ptr, ptr %3, align 8, !tbaa !170
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.24) #19
  %8 = trunc i32 %7 to i8
  %9 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %10 = and i32 %5, 255
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc zeroext i8 @vgroup_remove_verts(ptr noundef %9) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %29, label %26

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 25
  %17 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 97
  %18 = load i16, ptr %17, align 2, !tbaa !49
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %19, -1
  %21 = tail call ptr @BLI_findlink(ptr noundef nonnull %16, i32 noundef %20) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %15
  %24 = tail call fastcc zeroext i8 @vgroup_active_remove_verts(ptr noundef nonnull %9, i8 noundef zeroext %8, ptr noundef nonnull %21) #20, !range !53
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %12
  tail call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 2) #19
  %27 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %28) #19
  br label %29

29:                                               ; preds = %23, %15, %12, %26
  %30 = phi i32 [ 4, %26 ], [ 2, %12 ], [ 2, %15 ], [ 2, %23 ]
  ret i32 %30
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_select(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_select_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_select_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !185 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !164
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @vgroup_select_verts(ptr noundef nonnull %3, i32 noundef 1) #20
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %11) #19
  br label %12

12:                                               ; preds = %2, %5, %9
  %13 = phi i32 [ 4, %9 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_deselect(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_deselect_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_deselect_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !186 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  tail call fastcc void @vgroup_select_verts(ptr noundef %3, i32 noundef 0) #20
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %5) #19
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_copy_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !187 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  tail call fastcc void @vgroup_duplicate(ptr noundef %3) #20
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #19
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %5) #19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_levels(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_levels_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  tail call fastcc void @vgroup_operator_subset_select_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #20
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.39, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, float noundef -1.000000e+00, float noundef 1.000000e+00) #19
  %10 = load ptr, ptr %7, align 8, !tbaa !167
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.42, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, float noundef 0.000000e+00, float noundef 1.000000e+01) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_levels_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !188 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.39) #19
  %9 = load ptr, ptr %6, align 8, !tbaa !170
  %10 = tail call float @RNA_float_get(ptr noundef %9, ptr noundef nonnull @.str.42) #19
  %11 = load ptr, ptr %6, align 8, !tbaa !170
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.129) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %13 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %5, i32 noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %14 = load i32, ptr %4, align 4, !tbaa !81
  call fastcc void @vgroup_levels_subset(ptr noundef %5, ptr noundef %13, i32 noundef %14, float noundef %8, float noundef %10) #20
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %15(ptr noundef %13) #19
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %5) #19
  %16 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %17) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_operator_subset_select_props(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !189 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !167
  %5 = icmp ne i8 %1, 0
  %6 = zext i1 %5 to i32
  %7 = tail call ptr @RNA_def_enum(ptr noundef %4, ptr noundef nonnull @.str.129, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef %6, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.191) #19
  %8 = icmp eq i8 %1, 0
  %9 = select i1 %8, ptr @rna_vertex_group_select_itemf, ptr @rna_vertex_group_with_single_itemf
  tail call void @RNA_def_enum_funcs(ptr noundef %7, ptr noundef nonnull %9) #19
  tail call void @RNA_def_property_flag(ptr noundef %7, i32 noundef 536870912) #19
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %7, ptr %10, align 8, !tbaa !190
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_normalize(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_normalize_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_normalize_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !191 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  tail call fastcc void @vgroup_normalize(ptr noundef %3) #20
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #19
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %5) #19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_normalize_all(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.49, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_normalize_all_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  tail call fastcc void @vgroup_operator_subset_select_props(ptr noundef nonnull %0, i8 noundef zeroext 0) #20
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.51, i32 noundef 1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_normalize_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !192 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.51) #19
  %9 = trunc i32 %8 to i8
  %10 = load ptr, ptr %6, align 8, !tbaa !170
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.129) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %12 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %5, i32 noundef %11, ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %13 = load i32, ptr %4, align 4, !tbaa !81
  %14 = load i32, ptr %3, align 4, !tbaa !81
  call fastcc void @vgroup_normalize_all(ptr noundef %5, ptr noundef %12, i32 noundef %13, i32 noundef %14, i8 noundef zeroext %9) #20
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %15(ptr noundef %12) #19
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %5) #19
  %16 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %17) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_fix(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.56, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_mesh_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_fix_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.57, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, float noundef -1.000000e+01, float noundef 1.000000e+01) #19
  %10 = load ptr, ptr %7, align 8, !tbaa !167
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.60, float noundef 1.000000e+00, float noundef -2.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, float noundef -2.000000e+00, float noundef 2.000000e+00) #19
  %12 = load ptr, ptr %7, align 8, !tbaa !167
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.63, float noundef 1.000000e+00, float noundef 0x3FA99999A0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, float noundef 0x3FA99999A0000000, float noundef 1.000000e+00) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vertex_group_mesh_poll(ptr noundef %0) #0 !PGOFuncName !193 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = icmp eq ptr %8, null
  %10 = icmp ne ptr %6, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %25

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !165
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !50
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 25
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = icmp ne ptr %22, null
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %1, %20, %16, %12, %4
  %26 = phi i32 [ 0, %16 ], [ 0, %12 ], [ 0, %4 ], [ %24, %20 ], [ 0, %1 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_fix_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !194 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #19
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  %7 = tail call float @RNA_float_get(ptr noundef %6, ptr noundef nonnull @.str.57) #19
  %8 = load ptr, ptr %5, align 8, !tbaa !170
  %9 = tail call float @RNA_float_get(ptr noundef %8, ptr noundef nonnull @.str.60) #19
  %10 = load ptr, ptr %5, align 8, !tbaa !170
  %11 = tail call float @RNA_float_get(ptr noundef %10, ptr noundef nonnull @.str.63) #19
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %2, %25
  %16 = phi ptr [ %26, %25 ], [ %13, %2 ]
  %17 = getelementptr inbounds %struct.ModifierData, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !129
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ModifierData, ptr %16, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !195
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %15
  %26 = load ptr, ptr %16, align 8, !tbaa !79
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %15, !llvm.loop !196

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !197
  tail call void @BKE_report(ptr noundef %30, i32 noundef 128, ptr noundef nonnull @.str.192) #19
  br label %34

31:                                               ; preds = %25, %2
  tail call fastcc void @vgroup_fix(ptr noundef %4, ptr noundef %3, float noundef %7, float noundef %9, float noundef %11) #20
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #19
  %32 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %33) #19
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ 2, %28 ], [ 4, %31 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_lock(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.68, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_lock_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.69, ptr noundef nonnull @vgroup_lock_actions, i32 noundef 0, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_lock_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !198 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.69) #19
  tail call fastcc void @vgroup_lock_all(ptr noundef %3, i32 noundef %6) #20
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_invert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.74, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_invert_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  tail call fastcc void @vgroup_operator_subset_select_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #20
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.75, i32 noundef 1, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77) #19
  %10 = load ptr, ptr %7, align 8, !tbaa !167
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.78, i32 noundef 1, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_invert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !199 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.75) #19
  %9 = trunc i32 %8 to i8
  %10 = load ptr, ptr %6, align 8, !tbaa !170
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.78) #19
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr %6, align 8, !tbaa !170
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.129) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %15 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %5, i32 noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %16 = load i32, ptr %4, align 4, !tbaa !81
  call fastcc void @vgroup_invert_subset(ptr noundef %5, ptr noundef %15, i32 noundef %16, i8 noundef zeroext %9, i8 noundef zeroext %12) #20
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %17(ptr noundef %15) #19
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %5) #19
  %18 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %19) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_blend(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.81, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.82, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.83, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_blend_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_blend_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  tail call fastcc void @vgroup_operator_subset_select_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #20
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_property(ptr noundef %8, ptr noundef nonnull @.str.84, i32 noundef 2, i32 noundef 15) #19
  tail call void @RNA_def_property_ui_text(ptr noundef %9, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86) #19
  tail call void @RNA_def_property_range(ptr noundef %9, double noundef 0.000000e+00, double noundef 1.000000e+00) #19
  tail call void @RNA_def_property_float_default(ptr noundef %9, float noundef 1.000000e+00) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_blend_poll(ptr noundef %0) #0 !PGOFuncName !200 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = icmp eq ptr %8, null
  %10 = icmp ne ptr %6, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %34

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !165
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !50
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = tail call zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef nonnull %2) #19
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %25 = load i32, ptr %24, align 8, !tbaa !34
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 46
  %30 = load i8, ptr %29, align 1, !tbaa !139
  %31 = and i8 %30, 40
  %32 = icmp eq i8 %31, 32
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull @.str.211) #19
  br label %34

34:                                               ; preds = %1, %23, %28, %20, %16, %4, %12, %33
  %35 = phi i32 [ 0, %33 ], [ 0, %12 ], [ 0, %4 ], [ 0, %16 ], [ 1, %20 ], [ 1, %28 ], [ 0, %23 ], [ 0, %1 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_blend_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !201 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.84) #19
  %9 = load ptr, ptr %6, align 8, !tbaa !170
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.129) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %11 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %5, i32 noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %12 = load i32, ptr %4, align 4, !tbaa !81
  %13 = load i32, ptr %3, align 4, !tbaa !81
  call fastcc void @vgroup_blend_subset(ptr noundef %5, ptr noundef %11, i32 noundef %12, i32 noundef %13, float noundef %8) #20
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %14(ptr noundef %11) #19
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %5) #19
  %15 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %16) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_property(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_ui_text(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_range(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_float_default(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_clean(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.87, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.88, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.89, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_clean_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  tail call fastcc void @vgroup_operator_subset_select_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #20
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.90, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, float noundef 0.000000e+00, float noundef 0x3FEFAE1480000000) #19
  %10 = load ptr, ptr %7, align 8, !tbaa !167
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.93, i32 noundef 0, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_clean_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !202 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.90) #19
  %9 = load ptr, ptr %6, align 8, !tbaa !170
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.93) #19
  %11 = trunc i32 %10 to i8
  %12 = load ptr, ptr %6, align 8, !tbaa !170
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.129) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %14 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %5, i32 noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %15 = load i32, ptr %4, align 4, !tbaa !81
  call fastcc void @vgroup_clean_subset(ptr noundef %5, ptr noundef %14, i32 noundef %15, float noundef %8, i8 noundef zeroext %11) #20
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %16(ptr noundef %14) #19
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %5) #19
  %17 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %18) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_quantize(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.96, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.97, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.98, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_quantize_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  tail call fastcc void @vgroup_operator_subset_select_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #20
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.99, i32 noundef 4, i32 noundef 1, i32 noundef 1000, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 1, i32 noundef 100) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_quantize_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !203 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.99) #19
  %9 = load ptr, ptr %6, align 8, !tbaa !170
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.129) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %11 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %5, i32 noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %12 = load i32, ptr %4, align 4, !tbaa !81
  call fastcc void @vgroup_quantize_subset(ptr noundef %5, ptr noundef %11, i32 noundef %12, i32 noundef %8) #20
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %13(ptr noundef %11) #19
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %5) #19
  %14 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %15) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_limit_total(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.102, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.103, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.104, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_limit_total_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  tail call fastcc void @vgroup_operator_subset_select_props(ptr noundef nonnull %0, i8 noundef zeroext 0) #20
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.90, i32 noundef 4, i32 noundef 1, i32 noundef 32, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.105, i32 noundef 1, i32 noundef 32) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_limit_total_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !204 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.90) #19
  %9 = load ptr, ptr %6, align 8, !tbaa !170
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.129) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %11 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %5, i32 noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %3) #20
  %12 = load i32, ptr %4, align 4, !tbaa !81
  %13 = load i32, ptr %3, align 4, !tbaa !81
  %14 = call fastcc i32 @vgroup_limit_total_subset(ptr noundef %5, ptr noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %8) #20
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %15(ptr noundef %11) #19
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !197
  %18 = icmp eq i32 %14, 0
  %19 = select i1 %18, i32 16, i32 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %17, i32 noundef %19, ptr noundef nonnull @.str.212, i32 noundef %14) #19
  br i1 %18, label %23, label %20

20:                                               ; preds = %2
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %5) #19
  %21 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %22) #19
  br label %23

23:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_mirror(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.106, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.107, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.108, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_mirror_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.109, i32 noundef 1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111) #19
  %10 = load ptr, ptr %7, align 8, !tbaa !167
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.112, i32 noundef 1, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114) #19
  %12 = load ptr, ptr %7, align 8, !tbaa !167
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.116) #19
  %14 = load ptr, ptr %7, align 8, !tbaa !167
  %15 = tail call ptr @RNA_def_boolean(ptr noundef %14, ptr noundef nonnull @.str.117, i32 noundef 0, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_mirror_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !205 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !tbaa !81
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.109) #19
  %9 = trunc i32 %8 to i8
  %10 = load ptr, ptr %6, align 8, !tbaa !170
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.112) #19
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr %6, align 8, !tbaa !170
  %14 = tail call i32 @RNA_boolean_get(ptr noundef %13, ptr noundef nonnull @.str.115) #19
  %15 = trunc i32 %14 to i8
  %16 = load ptr, ptr %6, align 8, !tbaa !170
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.117) #19
  %18 = trunc i32 %17 to i8
  call void @ED_vgroup_mirror(ptr noundef %5, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %15, i8 noundef zeroext %18, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %19 = load i32, ptr %3, align 4, !tbaa !81
  %20 = load i32, ptr %4, align 4, !tbaa !81
  tail call void @ED_mesh_report_mirror(ptr noundef %1, i32 noundef %19, i32 noundef %20) #19
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %5) #19
  %21 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %22) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_copy_to_linked(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.120, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.121, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.122, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_copy_to_linked_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vertex_group_copy_to_linked_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !206 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !79
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
  %17 = load ptr, ptr %16, align 8, !tbaa !207
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
  tail call void @BLI_freelistN(ptr noundef nonnull %30) #19
  %31 = load ptr, ptr %16, align 8, !tbaa !207
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 25
  tail call void @BLI_duplicatelist(ptr noundef nonnull %32, ptr noundef nonnull %11) #19
  %33 = load i16, ptr %12, align 2, !tbaa !49
  %34 = load ptr, ptr %16, align 8, !tbaa !207
  %35 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 97
  store i16 %33, ptr %35, align 2, !tbaa !49
  tail call void @DAG_id_tag_update(ptr noundef %34, i16 noundef signext 2) #19
  %36 = load ptr, ptr %16, align 8, !tbaa !207
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %36) #19
  %37 = load ptr, ptr %16, align 8, !tbaa !207
  %38 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %39) #19
  br label %40

40:                                               ; preds = %13, %29, %24
  %41 = phi i32 [ 4, %29 ], [ %15, %24 ], [ %15, %13 ]
  %42 = load ptr, ptr %14, align 8, !tbaa !79
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %13, !llvm.loop !209

44:                                               ; preds = %40, %2
  %45 = phi i32 [ 2, %2 ], [ %41, %40 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_group_copy_to_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.123, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.124, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.125, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_copy_to_selected_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_copy_to_selected_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !210 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_object_context(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #19
  %6 = load ptr, ptr %3, align 8, !tbaa !79
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %2, %22
  %9 = phi ptr [ %25, %22 ], [ %6, %2 ]
  %10 = phi i32 [ %24, %22 ], [ 0, %2 ]
  %11 = phi i32 [ %23, %22 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !211
  %14 = icmp eq ptr %4, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = call zeroext i8 @ED_vgroup_array_copy(ptr noundef %13, ptr noundef %4) #20, !range !53
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
  %25 = load ptr, ptr %9, align 8, !tbaa !79
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !215

27:                                               ; preds = %22, %2
  %28 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %29 = phi i32 [ 0, %2 ], [ %24, %22 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  %30 = icmp eq i32 %29, 0
  %31 = icmp ne i32 %28, 0
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !197
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %35, i32 noundef 32, ptr noundef nonnull @.str.213, i32 noundef %29, i32 noundef %28) #19
  br label %36

36:                                               ; preds = %27, %33
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_transfer_weight(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.126, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.127, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.128, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_mesh_supported_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_transfer_weight_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.129, ptr noundef nonnull @WT_vertex_group_mode_item, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.86) #19
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !190
  %11 = load ptr, ptr %7, align 8, !tbaa !167
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.130, ptr noundef nonnull @WT_method_item, i32 noundef 3, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.86) #19
  store ptr %12, ptr %10, align 8, !tbaa !190
  %13 = load ptr, ptr %7, align 8, !tbaa !167
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.132, ptr noundef nonnull @WT_replace_mode_item, i32 noundef 1, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.86) #19
  store ptr %14, ptr %10, align 8, !tbaa !190
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vertex_group_mesh_supported_poll(ptr noundef %0) #0 !PGOFuncName !216 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !50
  %13 = icmp eq i16 %12, 1
  %14 = icmp ne ptr %6, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !165
  %19 = icmp eq ptr %18, null
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %1, %16, %10, %4
  %22 = phi i32 [ 0, %10 ], [ 0, %4 ], [ %20, %16 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_transfer_weight_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !217 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #19
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 25
  %8 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 97
  %9 = load i16, ptr %8, align 2, !tbaa !49
  %10 = zext i16 %9 to i32
  %11 = add nsw i32 %10, -1
  %12 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %11) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !170
  %15 = tail call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.129) #19
  %16 = load ptr, ptr %13, align 8, !tbaa !170
  %17 = tail call i32 @RNA_enum_get(ptr noundef %16, ptr noundef nonnull @.str.130) #19
  %18 = load ptr, ptr %13, align 8, !tbaa !170
  %19 = tail call i32 @RNA_enum_get(ptr noundef %18, ptr noundef nonnull @.str.132) #19
  %20 = icmp ne i32 %15, 1
  %21 = icmp ne ptr %12, null
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !197
  tail call void @BKE_report(ptr noundef %25, i32 noundef 16, ptr noundef nonnull @.str.214) #19
  br label %95

26:                                               ; preds = %2
  br i1 %21, label %27, label %30

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.bDeformGroup, ptr %12, i64 0, i32 2
  %29 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %28, i64 noundef 64) #19
  br label %30

30:                                               ; preds = %27, %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %31 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #19
  %32 = load ptr, ptr %4, align 8, !tbaa !79
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @BLI_freelistN(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  br label %89

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %37

37:                                               ; preds = %35, %78
  %38 = phi ptr [ %32, %35 ], [ %80, %78 ]
  %39 = phi i8 [ 0, %35 ], [ %79, %78 ]
  %40 = getelementptr inbounds %struct.CollectionPointerLink, ptr %38, i64 0, i32 2, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !211
  %42 = icmp eq ptr %6, %41
  br i1 %42, label %78, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 25
  %45 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %44) #20, !range !53
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %36, align 8, !tbaa !197
  %49 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %48, i32 noundef 16, ptr noundef nonnull @.str.215, ptr noundef nonnull %49) #19
  br label %78

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 3
  %52 = load i16, ptr %51, align 8, !tbaa !50
  switch i16 %52, label %53 [
    i16 1, label %56
    i16 25, label %78
  ]

53:                                               ; preds = %50
  %54 = load ptr, ptr %36, align 8, !tbaa !197
  %55 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %54, i32 noundef 16, ptr noundef nonnull @.str.216, ptr noundef nonnull %55) #19
  br label %78

56:                                               ; preds = %50
  switch i32 %15, label %78 [
    i32 1, label %60
    i32 2, label %57
  ]

57:                                               ; preds = %56
  %58 = load ptr, ptr %44, align 8, !tbaa !79
  %59 = icmp eq ptr %58, null
  br i1 %59, label %78, label %70

60:                                               ; preds = %56
  %61 = call ptr @defgroup_find_name(ptr noundef nonnull %41, ptr noundef nonnull %3) #19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load ptr, ptr %36, align 8, !tbaa !197
  %65 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %64, i32 noundef 16, ptr noundef nonnull @.str.217, ptr noundef nonnull %65, ptr noundef nonnull %3) #19
  br label %78

66:                                               ; preds = %60
  %67 = call fastcc zeroext i8 @ed_vgroup_transfer_weight(ptr noundef %6, ptr noundef nonnull %41, ptr noundef nonnull %61, ptr noundef %5, i32 noundef %17, i32 noundef %19, ptr noundef %1) #20, !range !53
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, i8 %39, i8 1
  br label %78

70:                                               ; preds = %57, %70
  %71 = phi ptr [ %76, %70 ], [ %58, %57 ]
  %72 = phi i8 [ %75, %70 ], [ %39, %57 ]
  %73 = call fastcc zeroext i8 @ed_vgroup_transfer_weight(ptr noundef %6, ptr noundef %41, ptr noundef nonnull %71, ptr noundef %5, i32 noundef %17, i32 noundef %19, ptr noundef %1) #20, !range !53
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, i8 %72, i8 1
  %76 = load ptr, ptr %71, align 8, !tbaa !79
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %70, !llvm.loop !218

78:                                               ; preds = %70, %57, %63, %66, %37, %56, %53, %50, %47
  %79 = phi i8 [ %39, %47 ], [ %39, %50 ], [ %39, %53 ], [ %39, %56 ], [ %39, %37 ], [ %39, %63 ], [ %69, %66 ], [ %39, %57 ], [ %75, %70 ]
  %80 = load ptr, ptr %38, align 8, !tbaa !79
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %37, !llvm.loop !219

82:                                               ; preds = %78
  %83 = icmp eq i8 %79, 0
  call void @BLI_freelistN(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  br i1 %83, label %89, label %84

84:                                               ; preds = %82
  br i1 %21, label %85, label %86

85:                                               ; preds = %84
  call void @ED_vgroup_select_by_name(ptr noundef %6, ptr noundef nonnull %3) #20
  br label %88

86:                                               ; preds = %84
  %87 = call zeroext i8 @ED_vgroup_sync_from_pose(ptr noundef %6) #20, !range !53
  br label %88

88:                                               ; preds = %86, %85
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %6) #19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %6) #19
  br label %95

89:                                               ; preds = %34, %82
  %90 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !197
  %92 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %91) #20, !range !53
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  call void @BKE_report(ptr noundef %91, i32 noundef 16, ptr noundef nonnull @.str.218) #19
  br label %95

95:                                               ; preds = %89, %94, %88, %23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_set_active(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.134, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.135, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.136, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_active_group_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %6, align 8, !tbaa !220
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !162
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !167
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.137, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.138) #19
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @vgroup_itemf) #19
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #19
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !190
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_active_group_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !221 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.137) #19
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, 1
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 97
  store i16 %8, ptr %9, align 2, !tbaa !49
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %3) #19
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @vgroup_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !222 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call ptr @ED_object_context(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) @__const.vgroup_itemf.tmp, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !tbaa !81
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !79
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
  store i32 %20, ptr %5, align 8, !tbaa !223
  store i32 201, ptr %15, align 8, !tbaa !225
  %21 = getelementptr inbounds %struct.bDeformGroup, ptr %19, i64 0, i32 2
  store ptr %21, ptr %16, align 8, !tbaa !226
  store ptr %21, ptr %17, align 8, !tbaa !227
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #19
  %22 = add nuw nsw i32 %20, 1
  %23 = load ptr, ptr %19, align 8, !tbaa !79
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !228

25:                                               ; preds = %18, %10
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  store i8 1, ptr %3, align 1, !tbaa !116
  %26 = load ptr, ptr %6, align 8, !tbaa !79
  br label %27

27:                                               ; preds = %4, %25
  %28 = phi ptr [ %26, %25 ], [ @DummyRNA_NULL_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #21
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_sort(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.143, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.144, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.145, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_group_sort_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.146, ptr noundef nonnull @OBJECT_OT_vertex_group_sort.vgroup_sort_type, i32 noundef 0, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.147) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_group_sort_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !229 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.146) #19
  %7 = tail call fastcc ptr @vgroup_init_remap(ptr noundef %3) #20
  switch i32 %6, label %11 [
    i32 0, label %8
    i32 1, label %10
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  tail call void @BLI_sortlist(ptr noundef nonnull %9, ptr noundef nonnull @vgroup_sort_name) #19
  br label %11

10:                                               ; preds = %2
  tail call fastcc void @vgroup_sort_bone_hierarchy(ptr noundef %3, ptr noundef null) #20
  br label %11

11:                                               ; preds = %2, %10, %8
  %12 = tail call fastcc i32 @vgroup_do_remap(ptr noundef %3, ptr noundef %7, ptr noundef nonnull %1) #20, !range !230
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef %3) #19
  br label %15

15:                                               ; preds = %14, %11
  %16 = icmp eq ptr %7, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %18(ptr noundef nonnull %7) #19
  br label %19

19:                                               ; preds = %17, %15
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_group_move(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.152, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.153, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.154, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vgroup_move_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.155, ptr noundef nonnull @OBJECT_OT_vertex_group_move.vgroup_slot_move, i32 noundef 0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vgroup_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !231 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.155) #19
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 25
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 97
  %9 = load i16, ptr %8, align 2, !tbaa !49
  %10 = zext i16 %9 to i32
  %11 = add nsw i32 %10, -1
  %12 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %11) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = tail call fastcc ptr @vgroup_init_remap(ptr noundef nonnull %3) #20
  %16 = icmp eq i32 %6, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bDeformGroup, ptr %12, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !232
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %12) #19
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %7, ptr noundef %19, ptr noundef nonnull %12) #19
  br label %22

20:                                               ; preds = %14
  %21 = load ptr, ptr %12, align 8, !tbaa !84
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %12) #19
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %7, ptr noundef %21, ptr noundef nonnull %12) #19
  br label %22

22:                                               ; preds = %20, %17
  %23 = tail call fastcc i32 @vgroup_do_remap(ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull %1) #20, !range !230
  %24 = icmp eq ptr %15, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %26(ptr noundef nonnull %15) #19
  br label %27

27:                                               ; preds = %25, %22
  %28 = icmp eq i32 %23, 2
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  tail call void @DAG_id_tag_update(ptr noundef nonnull %3, i16 noundef signext 2) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274464768, ptr noundef nonnull %3) #19
  br label %30

30:                                               ; preds = %27, %29, %2
  %31 = phi i32 [ 2, %2 ], [ %23, %29 ], [ 2, %27 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_weight_paste(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.158, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.159, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.160, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_mesh_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_weight_paste_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.161, i32 noundef -1, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, i32 noundef -1, i32 noundef 2147483647) #19
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268959744) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vertex_group_vert_select_mesh_poll(ptr noundef %0) #0 !PGOFuncName !233 {
  %2 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = icmp eq ptr %8, null
  %10 = icmp ne ptr %6, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %27

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !165
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !50
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = tail call zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef nonnull %2) #19
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = tail call zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr noundef nonnull %2) #19
  %25 = icmp ne i8 %24, 0
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %1, %20, %23, %16, %4, %12
  %28 = phi i32 [ 0, %12 ], [ 0, %4 ], [ 0, %16 ], [ 1, %20 ], [ %26, %23 ], [ 0, %1 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_weight_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !234 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.161) #19
  %7 = tail call fastcc zeroext i8 @check_vertex_group_accessible(ptr noundef %1, ptr noundef %3, i32 noundef %6) #20, !range !53
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call fastcc void @vgroup_copy_active_to_sel_single(ptr noundef %3, i32 noundef %6) #20
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #19
  br label %10

10:                                               ; preds = %2, %9
  %11 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_weight_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.164, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.165, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.166, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_mesh_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_weight_delete_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.161, i32 noundef -1, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, i32 noundef -1, i32 noundef 2147483647) #19
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268959744) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_weight_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !235 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.161) #19
  %7 = tail call fastcc zeroext i8 @check_vertex_group_accessible(ptr noundef %1, ptr noundef %3, i32 noundef %6) #20, !range !53
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call fastcc void @vgroup_remove_weight(ptr noundef %3, i32 noundef %6) #20
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #19
  br label %10

10:                                               ; preds = %2, %9
  %11 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_vertex_weight_set_active(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.167, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.168, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.169, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_mesh_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_weight_set_active_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !167
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.161, i32 noundef -1, i32 noundef -1, i32 noundef 2147483647, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, i32 noundef -1, i32 noundef 2147483647) #19
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268959744) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_weight_set_active_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !236 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.161) #19
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = trunc i32 %6 to i16
  %10 = add i16 %9, 1
  %11 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 97
  store i16 %10, ptr %11, align 2, !tbaa !49
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #19
  br label %12

12:                                               ; preds = %8, %2
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_weight_normalize_active_vertex(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.170, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.171, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.172, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_mesh_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_weight_normalize_active_vertex_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_weight_normalize_active_vertex_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !237 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %4 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 63
  %6 = load i8, ptr %5, align 1, !tbaa !238
  %7 = zext i8 %6 to i32
  tail call fastcc void @vgroup_normalize_active(ptr noundef %3, i32 noundef %7) #20
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #19
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_vertex_weight_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 {
  store ptr @.str.173, ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.174, ptr %2, align 8, !tbaa !158
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.175, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @vertex_group_vert_select_mesh_poll, ptr %4, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @vertex_weight_copy_exec, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vertex_weight_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !239 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #19
  %4 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.ToolSettings, ptr %4, i64 0, i32 63
  %6 = load i8, ptr %5, align 1, !tbaa !238
  %7 = zext i8 %6 to i32
  tail call fastcc void @vgroup_copy_active_to_sel(ptr noundef %3, i32 noundef %7) #20
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %3) #19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !240 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !241
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %18 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !242
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !112
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !243
  br label %19

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !242
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !112
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !244
  br label %19

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !242
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !112
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !245
  br label %19

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !242
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !112
  br label %19

18:                                               ; preds = %4
  unreachable

19:                                               ; preds = %17, %14, %11, %8
  %20 = phi ptr [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %21 = phi ptr [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %20, ptr %0, align 8, !tbaa !116
  tail call void %21(ptr noundef nonnull %0) #19
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
declare ptr @editbmesh_get_x_mirror_vert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mesh_defvert_mirror_update_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !246 {
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %3, -1
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %8 = call ptr @defgroup_flip_map(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 1) #19
  %9 = load i32, ptr %5, align 4, !tbaa !81
  call void @defvert_sync_mapped(ptr noundef %1, ptr noundef %2, ptr noundef %8, i32 noundef %9, i8 noundef zeroext 1) #19
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %10(ptr noundef %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %18

11:                                               ; preds = %4
  %12 = tail call i32 @defgroup_flip_index(ptr noundef %0, i32 noundef %3, i8 noundef zeroext 1) #19
  %13 = tail call ptr @defvert_verify_index(ptr noundef %1, i32 noundef %12) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call float @defvert_find_weight(ptr noundef %2, i32 noundef %3) #19
  %17 = getelementptr inbounds %struct.MDeformWeight, ptr %13, i64 0, i32 1
  store float %16, ptr %17, align 4, !tbaa !117
  br label %18

18:                                               ; preds = %11, %15, %7
  ret void
}

; Function Attrs: optsize
declare void @defvert_sync_mapped(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @defvert_verify_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @defgroup_flip_index(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_add_index_notest(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_flip(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_copy_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_delete_update_users(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !247 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %4 = tail call i32 @BLI_countlist(ptr noundef nonnull %3) #19
  %5 = add nsw i32 %4, 1
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %7 = sext i32 %5 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.187) #19
  store i32 0, ptr %9, align 4, !tbaa !81
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  store i32 0, ptr %11, align 4, !tbaa !81
  %12 = icmp sgt i32 %1, 1
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = zext nneg i32 %1 to i64
  %15 = add nuw nsw i64 %14, 2
  %16 = and i64 %15, 4294967292
  %17 = add nsw i64 %14, -2
  %18 = insertelement <4 x i64> poison, i64 %17, i64 0
  %19 = shufflevector <4 x i64> %18, <4 x i64> poison, <4 x i32> zeroinitializer
  %20 = getelementptr i32, ptr %9, i64 4
  br label %21

21:                                               ; preds = %50, %13
  %22 = phi i64 [ 0, %13 ], [ %51, %50 ]
  %23 = trunc i64 %22 to i32
  %24 = insertelement <4 x i64> poison, i64 %22, i64 0
  %25 = shufflevector <4 x i64> %24, <4 x i64> poison, <4 x i32> zeroinitializer
  %26 = or disjoint <4 x i64> %25, <i64 0, i64 1, i64 2, i64 3>
  %27 = icmp ule <4 x i64> %26, %19
  %28 = extractelement <4 x i1> %27, i64 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = or disjoint i32 %23, 1
  %31 = or disjoint i64 %22, 1
  %32 = getelementptr inbounds i32, ptr %9, i64 %31
  store i32 %30, ptr %32, align 4, !tbaa !81
  br label %33

33:                                               ; preds = %29, %21
  %34 = extractelement <4 x i1> %27, i64 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = or disjoint i64 %22, 2
  %37 = getelementptr inbounds i32, ptr %9, i64 %36
  %38 = or disjoint i32 %23, 2
  store i32 %38, ptr %37, align 4, !tbaa !81
  br label %39

39:                                               ; preds = %35, %33
  %40 = extractelement <4 x i1> %27, i64 2
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = or disjoint i64 %22, 3
  %43 = getelementptr inbounds i32, ptr %9, i64 %42
  %44 = or disjoint i32 %23, 3
  store i32 %44, ptr %43, align 4, !tbaa !81
  br label %45

45:                                               ; preds = %41, %39
  %46 = extractelement <4 x i1> %27, i64 3
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = getelementptr i32, ptr %20, i64 %22
  %49 = add i32 %23, 4
  store i32 %49, ptr %48, align 4, !tbaa !81
  br label %50

50:                                               ; preds = %47, %45
  %51 = add i64 %22, 4
  %52 = icmp eq i64 %51, %16
  br i1 %52, label %53, label %21, !llvm.loop !248

53:                                               ; preds = %50, %2
  %54 = icmp sgt i32 %4, %1
  br i1 %54, label %55, label %97

55:                                               ; preds = %53
  %56 = sext i32 %4 to i64
  %57 = sub nsw i64 %56, %10
  %58 = add nsw i64 %57, 3
  %59 = and i64 %58, -4
  %60 = add nsw i64 %57, -1
  %61 = insertelement <4 x i64> poison, i64 %60, i64 0
  %62 = shufflevector <4 x i64> %61, <4 x i64> poison, <4 x i32> zeroinitializer
  %63 = getelementptr i32, ptr %9, i64 1
  %64 = getelementptr i32, ptr %9, i64 2
  %65 = getelementptr i32, ptr %9, i64 3
  %66 = getelementptr i32, ptr %9, i64 4
  br label %67

67:                                               ; preds = %94, %55
  %68 = phi i64 [ 0, %55 ], [ %95, %94 ]
  %69 = trunc i64 %68 to i32
  %70 = add i32 %69, %1
  %71 = add i64 %68, %10
  %72 = insertelement <4 x i64> poison, i64 %68, i64 0
  %73 = shufflevector <4 x i64> %72, <4 x i64> poison, <4 x i32> zeroinitializer
  %74 = or disjoint <4 x i64> %73, <i64 0, i64 1, i64 2, i64 3>
  %75 = icmp ule <4 x i64> %74, %62
  %76 = extractelement <4 x i1> %75, i64 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = getelementptr i32, ptr %63, i64 %71
  store i32 %70, ptr %78, align 4, !tbaa !81
  br label %79

79:                                               ; preds = %77, %67
  %80 = extractelement <4 x i1> %75, i64 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = getelementptr i32, ptr %64, i64 %71
  %83 = add i32 %70, 1
  store i32 %83, ptr %82, align 4, !tbaa !81
  br label %84

84:                                               ; preds = %81, %79
  %85 = extractelement <4 x i1> %75, i64 2
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = getelementptr i32, ptr %65, i64 %71
  %88 = add i32 %70, 2
  store i32 %88, ptr %87, align 4, !tbaa !81
  br label %89

89:                                               ; preds = %86, %84
  %90 = extractelement <4 x i1> %75, i64 3
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = getelementptr i32, ptr %66, i64 %71
  %93 = add i32 %70, 3
  store i32 %93, ptr %92, align 4, !tbaa !81
  br label %94

94:                                               ; preds = %91, %89
  %95 = add i64 %68, 4
  %96 = icmp eq i64 %95, %59
  br i1 %96, label %97, label %67, !llvm.loop !249

97:                                               ; preds = %94, %53
  tail call fastcc void @vgroup_remap_update_users(ptr noundef %0, ptr noundef nonnull %9) #20
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %98(ptr noundef nonnull %9) #19
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !250 {
  %2 = load ptr, ptr %0, align 8, !tbaa !251
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_free_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vgroup_active_remove_verts(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !252 {
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %6 = tail call i32 @BLI_findindex(ptr noundef nonnull %5, ptr noundef %2) #19
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !50
  switch i16 %8, label %123 [
    i16 1, label %9
    i16 22, label %82
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %13, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 24
  %18 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %17, i32 noundef 2) #19
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %123, label %20

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  %21 = load ptr, ptr %13, align 8, !tbaa !58
  %22 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %21, i8 noundef zeroext 1, ptr noundef null) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %20
  %25 = sext i32 %18 to i64
  %26 = icmp eq i8 %1, 0
  br label %27

27:                                               ; preds = %24, %42
  %28 = phi i8 [ 0, %24 ], [ %43, %42 ]
  %29 = phi ptr [ %22, %24 ], [ %44, %42 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = getelementptr inbounds i8, ptr %30, i64 %25
  %32 = icmp eq ptr %30, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %31, align 8, !tbaa !65
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  br i1 %26, label %37, label %40

37:                                               ; preds = %36
  %38 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %29, i8 noundef zeroext 1) #20, !range !93
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37, %36
  %41 = call ptr @defvert_find_index(ptr noundef nonnull %31, i32 noundef %6) #19
  call void @defvert_remove_group(ptr noundef nonnull %31, ptr noundef %41) #19
  br label %42

42:                                               ; preds = %27, %33, %37, %40
  %43 = phi i8 [ 1, %40 ], [ %28, %37 ], [ %28, %33 ], [ %28, %27 ]
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #20
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %27, !llvm.loop !253

46:                                               ; preds = %42, %20
  %47 = phi i8 [ 0, %20 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  br label %123

48:                                               ; preds = %9
  %49 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !88
  %51 = icmp eq ptr %50, null
  br i1 %51, label %123, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 26
  %54 = load i32, ptr %53, align 8, !tbaa !78
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %123

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 15
  %58 = load ptr, ptr %57, align 8, !tbaa !96
  br label %59

59:                                               ; preds = %56, %75
  %60 = phi i32 [ %76, %75 ], [ %54, %56 ]
  %61 = phi ptr [ %80, %75 ], [ %50, %56 ]
  %62 = phi i8 [ %77, %75 ], [ 0, %56 ]
  %63 = phi ptr [ %79, %75 ], [ %58, %56 ]
  %64 = phi i32 [ %78, %75 ], [ 0, %56 ]
  %65 = getelementptr inbounds %struct.MVert, ptr %63, i64 0, i32 2
  %66 = load i8, ptr %65, align 2, !tbaa !97
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %59
  %70 = load ptr, ptr %61, align 8, !tbaa !65
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = tail call ptr @defvert_find_index(ptr noundef nonnull %61, i32 noundef %6) #19
  tail call void @defvert_remove_group(ptr noundef nonnull %61, ptr noundef %73) #19
  %74 = load i32, ptr %53, align 8, !tbaa !78
  br label %75

75:                                               ; preds = %59, %72, %69
  %76 = phi i32 [ %74, %72 ], [ %60, %69 ], [ %60, %59 ]
  %77 = phi i8 [ 1, %72 ], [ %62, %69 ], [ %62, %59 ]
  %78 = add nuw nsw i32 %64, 1
  %79 = getelementptr inbounds %struct.MVert, ptr %63, i64 1
  %80 = getelementptr inbounds %struct.MDeformVert, ptr %61, i64 1
  %81 = icmp slt i32 %78, %76
  br i1 %81, label %59, label %123, !llvm.loop !254

82:                                               ; preds = %3
  %83 = tail call fastcc ptr @vgroup_edit_lattice(ptr noundef nonnull %0) #20
  %84 = getelementptr inbounds %struct.Lattice, ptr %83, i64 0, i32 24
  %85 = load ptr, ptr %84, align 8, !tbaa !71
  %86 = icmp eq ptr %85, null
  br i1 %86, label %123, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.Lattice, ptr %83, i64 0, i32 2
  %89 = load i16, ptr %88, align 8, !tbaa !72
  %90 = sext i16 %89 to i32
  %91 = getelementptr inbounds %struct.Lattice, ptr %83, i64 0, i32 3
  %92 = load i16, ptr %91, align 2, !tbaa !73
  %93 = sext i16 %92 to i32
  %94 = mul nsw i32 %93, %90
  %95 = getelementptr inbounds %struct.Lattice, ptr %83, i64 0, i32 4
  %96 = load i16, ptr %95, align 4, !tbaa !74
  %97 = sext i16 %96 to i32
  %98 = mul nsw i32 %94, %97
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %87
  %101 = getelementptr inbounds %struct.Lattice, ptr %83, i64 0, i32 21
  %102 = load ptr, ptr %101, align 8, !tbaa !103
  %103 = icmp eq i8 %1, 0
  %104 = zext nneg i32 %98 to i64
  br label %105

105:                                              ; preds = %100, %118
  %106 = phi i64 [ 0, %100 ], [ %120, %118 ]
  %107 = phi i8 [ 0, %100 ], [ %119, %118 ]
  %108 = phi ptr [ %102, %100 ], [ %121, %118 ]
  br i1 %103, label %109, label %114

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.BPoint, ptr %108, i64 0, i32 3
  %111 = load i16, ptr %110, align 4, !tbaa !104
  %112 = and i16 %111, 1
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %109, %105
  %115 = load ptr, ptr %84, align 8, !tbaa !71
  %116 = getelementptr inbounds %struct.MDeformVert, ptr %115, i64 %106
  %117 = tail call ptr @defvert_find_index(ptr noundef %116, i32 noundef %6) #19
  tail call void @defvert_remove_group(ptr noundef %116, ptr noundef %117) #19
  br label %118

118:                                              ; preds = %109, %114
  %119 = phi i8 [ 1, %114 ], [ %107, %109 ]
  %120 = add nuw nsw i64 %106, 1
  %121 = getelementptr inbounds %struct.BPoint, ptr %108, i64 1
  %122 = icmp eq i64 %120, %104
  br i1 %122, label %123, label %105, !llvm.loop !255

123:                                              ; preds = %118, %75, %87, %52, %82, %3, %48, %46, %15
  %124 = phi i8 [ 0, %48 ], [ %47, %46 ], [ 0, %15 ], [ 0, %3 ], [ 0, %82 ], [ 0, %52 ], [ 0, %87 ], [ %77, %75 ], [ %119, %118 ]
  ret i8 %124
}

; Function Attrs: optsize
declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_delete(ptr noundef %0) unnamed_addr #0 !PGOFuncName !256 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %4 = load i16, ptr %3, align 2, !tbaa !49
  %5 = zext i16 %4 to i32
  %6 = add nsw i32 %5, -1
  %7 = tail call ptr @BLI_findlink(ptr noundef nonnull %2, i32 noundef %6) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = tail call zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef nonnull %0) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call fastcc void @vgroup_delete_edit_mode(ptr noundef nonnull %0, ptr noundef nonnull %7) #20
  br label %14

13:                                               ; preds = %9
  tail call fastcc void @vgroup_delete_object_mode(ptr noundef nonnull %0, ptr noundef nonnull %7) #20
  br label %14

14:                                               ; preds = %12, %13, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_assign_verts(ptr noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !257 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %5 = load i16, ptr %4, align 2, !tbaa !49
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %6, -1
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %8, i32 noundef %7) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %129, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !50
  switch i16 %13, label %129 [
    i16 1, label %14
    i16 22, label %86
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = icmp eq ptr %18, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %21 = load ptr, ptr %18, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 24
  %23 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %22, i32 noundef 2) #19
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load ptr, ptr %18, align 8, !tbaa !58
  %27 = getelementptr inbounds %struct.BMesh, ptr %26, i64 0, i32 24
  tail call void @BM_data_layer_add(ptr noundef %26, ptr noundef nonnull %27, i32 noundef 2) #19
  br label %28

28:                                               ; preds = %25, %20
  %29 = load ptr, ptr %18, align 8, !tbaa !58
  %30 = getelementptr inbounds %struct.BMesh, ptr %29, i64 0, i32 24
  %31 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %30, i32 noundef 2) #19
  %32 = load ptr, ptr %18, align 8, !tbaa !58
  %33 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %32, i8 noundef zeroext 1, ptr noundef null) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %28
  %36 = sext i32 %31 to i64
  br label %37

37:                                               ; preds = %35, %48
  %38 = phi ptr [ %33, %35 ], [ %49, %48 ]
  %39 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %38, i8 noundef zeroext 1) #20, !range !93
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %38, align 8, !tbaa !60
  %43 = getelementptr inbounds i8, ptr %42, i64 %36
  %44 = call ptr @defvert_verify_index(ptr noundef %43, i32 noundef %7) #19
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.MDeformWeight, ptr %44, i64 0, i32 1
  store float %1, ptr %47, align 4, !tbaa !117
  br label %48

48:                                               ; preds = %41, %46, %37
  %49 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %37, !llvm.loop !258

51:                                               ; preds = %48, %28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  br label %129

52:                                               ; preds = %14
  %53 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !88
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = tail call zeroext i8 @ED_vgroup_data_create(ptr noundef nonnull %16) #20, !range !53
  %58 = load ptr, ptr %53, align 8, !tbaa !88
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi ptr [ %58, %56 ], [ %54, %52 ]
  %61 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 26
  %62 = load i32, ptr %61, align 8, !tbaa !78
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %129

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 15
  %66 = load ptr, ptr %65, align 8, !tbaa !96
  br label %67

67:                                               ; preds = %64, %80
  %68 = phi ptr [ %82, %80 ], [ %66, %64 ]
  %69 = phi ptr [ %83, %80 ], [ %60, %64 ]
  %70 = phi i32 [ %81, %80 ], [ 0, %64 ]
  %71 = getelementptr inbounds %struct.MVert, ptr %68, i64 0, i32 2
  %72 = load i8, ptr %71, align 2, !tbaa !97
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %67
  %76 = tail call ptr @defvert_verify_index(ptr noundef %69, i32 noundef %7) #19
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.MDeformWeight, ptr %76, i64 0, i32 1
  store float %1, ptr %79, align 4, !tbaa !117
  br label %80

80:                                               ; preds = %75, %78, %67
  %81 = add nuw nsw i32 %70, 1
  %82 = getelementptr inbounds %struct.MVert, ptr %68, i64 1
  %83 = getelementptr inbounds %struct.MDeformVert, ptr %69, i64 1
  %84 = load i32, ptr %61, align 8, !tbaa !78
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %67, label %129, !llvm.loop !259

86:                                               ; preds = %11
  %87 = tail call fastcc ptr @vgroup_edit_lattice(ptr noundef nonnull %0) #20
  %88 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 24
  %89 = load ptr, ptr %88, align 8, !tbaa !71
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = tail call zeroext i8 @ED_vgroup_data_create(ptr noundef nonnull %87) #20, !range !53
  %93 = load ptr, ptr %88, align 8, !tbaa !71
  br label %94

94:                                               ; preds = %91, %86
  %95 = phi ptr [ %93, %91 ], [ %89, %86 ]
  %96 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 2
  %97 = load i16, ptr %96, align 8, !tbaa !72
  %98 = sext i16 %97 to i32
  %99 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 3
  %100 = load i16, ptr %99, align 2, !tbaa !73
  %101 = sext i16 %100 to i32
  %102 = mul nsw i32 %101, %98
  %103 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 4
  %104 = load i16, ptr %103, align 4, !tbaa !74
  %105 = sext i16 %104 to i32
  %106 = mul nsw i32 %102, %105
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %94
  %109 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 21
  %110 = load ptr, ptr %109, align 8, !tbaa !103
  br label %111

111:                                              ; preds = %108, %124
  %112 = phi i32 [ %125, %124 ], [ 0, %108 ]
  %113 = phi ptr [ %126, %124 ], [ %110, %108 ]
  %114 = phi ptr [ %127, %124 ], [ %95, %108 ]
  %115 = getelementptr inbounds %struct.BPoint, ptr %113, i64 0, i32 3
  %116 = load i16, ptr %115, align 4, !tbaa !104
  %117 = and i16 %116, 1
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %111
  %120 = tail call ptr @defvert_verify_index(ptr noundef %114, i32 noundef %7) #19
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.MDeformWeight, ptr %120, i64 0, i32 1
  store float %1, ptr %123, align 4, !tbaa !117
  br label %124

124:                                              ; preds = %119, %122, %111
  %125 = add nuw nsw i32 %112, 1
  %126 = getelementptr inbounds %struct.BPoint, ptr %113, i64 1
  %127 = getelementptr inbounds %struct.MDeformVert, ptr %114, i64 1
  %128 = icmp eq i32 %125, %106
  br i1 %128, label %129, label %111, !llvm.loop !260

129:                                              ; preds = %124, %80, %94, %59, %51, %11, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vgroup_remove_verts(ptr noundef %0) unnamed_addr #0 !PGOFuncName !261 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = phi i8 [ %9, %5 ], [ 0, %1 ]
  %8 = tail call fastcc zeroext i8 @vgroup_active_remove_verts(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %6) #20, !range !53
  %9 = or i8 %8, %7
  %10 = load ptr, ptr %6, align 8, !tbaa !79
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !262

12:                                               ; preds = %5, %1
  %13 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_select_verts(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !263 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %5 = load i16, ptr %4, align 2, !tbaa !49
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %6, -1
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %8, i32 noundef %7) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %133, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !50
  switch i16 %13, label %133 [
    i16 1, label %14
    i16 22, label %86
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = icmp eq ptr %18, null
  br i1 %19, label %51, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %18, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.BMesh, ptr %21, i64 0, i32 24
  %23 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %22, i32 noundef 2) #19
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %133, label %25

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  %26 = load ptr, ptr %18, align 8, !tbaa !58
  %27 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %26, i8 noundef zeroext 1, ptr noundef null) #20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = sext i32 %23 to i64
  %31 = trunc i32 %1 to i8
  br label %32

32:                                               ; preds = %29, %43
  %33 = phi ptr [ %27, %29 ], [ %44, %43 ]
  %34 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %33, i8 noundef zeroext 2) #20, !range !93
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load ptr, ptr %33, align 8, !tbaa !60
  %38 = getelementptr inbounds i8, ptr %37, i64 %30
  %39 = call ptr @defvert_find_index(ptr noundef %38, i32 noundef %7) #19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %18, align 8, !tbaa !58
  call void @BM_vert_select_set(ptr noundef %42, ptr noundef nonnull %33, i8 noundef zeroext %31) #19
  br label %43

43:                                               ; preds = %36, %41, %32
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #20
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %32, !llvm.loop !264

46:                                               ; preds = %43, %25
  %47 = icmp eq i32 %1, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  call void @EDBM_select_flush(ptr noundef nonnull %18) #19
  br label %50

49:                                               ; preds = %46
  call void @EDBM_deselect_flush(ptr noundef nonnull %18) #19
  br label %50

50:                                               ; preds = %49, %48
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  br label %133

51:                                               ; preds = %14
  %52 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !88
  %54 = icmp eq ptr %53, null
  br i1 %54, label %133, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 26
  %57 = load i32, ptr %56, align 8, !tbaa !78
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 15
  %61 = load ptr, ptr %60, align 8, !tbaa !96
  %62 = icmp ne i32 %1, 0
  %63 = zext i1 %62 to i8
  br label %64

64:                                               ; preds = %59, %79
  %65 = phi ptr [ %61, %59 ], [ %81, %79 ]
  %66 = phi i32 [ 0, %59 ], [ %80, %79 ]
  %67 = phi ptr [ %53, %59 ], [ %82, %79 ]
  %68 = getelementptr inbounds %struct.MVert, ptr %65, i64 0, i32 2
  %69 = load i8, ptr %68, align 2, !tbaa !97
  %70 = and i8 %69, 16
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = tail call ptr @defvert_find_index(ptr noundef nonnull %67, i32 noundef %7) #19
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i8, ptr %68, align 2, !tbaa !97
  %77 = and i8 %76, -2
  %78 = or disjoint i8 %77, %63
  store i8 %78, ptr %68, align 2, !tbaa !97
  br label %79

79:                                               ; preds = %75, %64, %72
  %80 = add nuw nsw i32 %66, 1
  %81 = getelementptr inbounds %struct.MVert, ptr %65, i64 1
  %82 = getelementptr inbounds %struct.MDeformVert, ptr %67, i64 1
  %83 = load i32, ptr %56, align 8, !tbaa !78
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %64, label %85, !llvm.loop !265

85:                                               ; preds = %79, %55
  tail call void @paintvert_flush_flags(ptr noundef %0) #19
  br label %133

86:                                               ; preds = %11
  %87 = tail call fastcc ptr @vgroup_edit_lattice(ptr noundef nonnull %0) #20
  %88 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 24
  %89 = load ptr, ptr %88, align 8, !tbaa !71
  %90 = icmp eq ptr %89, null
  br i1 %90, label %133, label %91

91:                                               ; preds = %86
  %92 = tail call ptr @BKE_lattice_active_point_get(ptr noundef nonnull %87) #19
  %93 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 2
  %94 = load i16, ptr %93, align 8, !tbaa !72
  %95 = sext i16 %94 to i32
  %96 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 3
  %97 = load i16, ptr %96, align 2, !tbaa !73
  %98 = sext i16 %97 to i32
  %99 = mul nsw i32 %98, %95
  %100 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 4
  %101 = load i16, ptr %100, align 4, !tbaa !74
  %102 = sext i16 %101 to i32
  %103 = mul nsw i32 %99, %102
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %133

105:                                              ; preds = %91
  %106 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 21
  %107 = load ptr, ptr %106, align 8, !tbaa !103
  %108 = load ptr, ptr %88, align 8, !tbaa !71
  %109 = icmp eq i32 %1, 0
  %110 = icmp ne ptr %92, null
  %111 = getelementptr inbounds %struct.Lattice, ptr %87, i64 0, i32 14
  br label %112

112:                                              ; preds = %105, %128
  %113 = phi i32 [ 0, %105 ], [ %129, %128 ]
  %114 = phi ptr [ %107, %105 ], [ %130, %128 ]
  %115 = phi ptr [ %108, %105 ], [ %131, %128 ]
  %116 = tail call ptr @defvert_find_index(ptr noundef %115, i32 noundef %7) #19
  %117 = icmp eq ptr %116, null
  br i1 %117, label %128, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.BPoint, ptr %114, i64 0, i32 3
  %120 = load i16, ptr %119, align 4, !tbaa !104
  br i1 %109, label %123, label %121

121:                                              ; preds = %118
  %122 = or i16 %120, 1
  store i16 %122, ptr %119, align 4, !tbaa !104
  br label %128

123:                                              ; preds = %118
  %124 = and i16 %120, -2
  store i16 %124, ptr %119, align 4, !tbaa !104
  %125 = icmp eq ptr %114, %92
  %126 = select i1 %110, i1 %125, i1 false
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 -1, ptr %111, align 4, !tbaa !266
  br label %128

128:                                              ; preds = %112, %123, %127, %121
  %129 = add nuw nsw i32 %113, 1
  %130 = getelementptr inbounds %struct.BPoint, ptr %114, i64 1
  %131 = getelementptr inbounds %struct.MDeformVert, ptr %115, i64 1
  %132 = icmp eq i32 %129, %103
  br i1 %132, label %133, label %112, !llvm.loop !267

133:                                              ; preds = %128, %91, %20, %50, %51, %85, %11, %86, %2
  ret void
}

; Function Attrs: optsize
declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_select_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_deselect_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @paintvert_flush_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_lattice_active_point_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_duplicate(ptr noundef %0) unnamed_addr #0 !PGOFuncName !268 {
  %2 = alloca [64 x i8], align 16
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !tbaa !81
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %7 = load i16, ptr %6, align 2, !tbaa !49
  %8 = zext i16 %7 to i32
  %9 = add nsw i32 %8, -1
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %9) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %57, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.bDeformGroup, ptr %10, i64 0, i32 2
  %14 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.188) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 64, ptr noundef nonnull @.str.189, ptr noundef nonnull %13) #19
  br label %20

18:                                               ; preds = %12
  %19 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %13, i64 noundef 64) #19
  br label %20

20:                                               ; preds = %18, %16
  %21 = call ptr @defgroup_duplicate(ptr noundef nonnull %10) #19
  %22 = getelementptr inbounds %struct.bDeformGroup, ptr %21, i64 0, i32 2
  %23 = call ptr @BLI_strncpy(ptr noundef nonnull %22, ptr noundef nonnull %2, i64 noundef 64) #19
  call void @defgroup_unique_name(ptr noundef %21, ptr noundef nonnull %0) #19
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %21) #19
  %24 = load i16, ptr %6, align 2, !tbaa !49
  %25 = zext i16 %24 to i32
  %26 = add nsw i32 %25, -1
  %27 = call i32 @BLI_countlist(ptr noundef nonnull %5) #19
  %28 = trunc i32 %27 to i16
  store i16 %28, ptr %6, align 2, !tbaa !49
  %29 = and i32 %27, 65535
  %30 = add nsw i32 %29, -1
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %32, ptr noundef nonnull %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #20, !range !53
  %34 = load ptr, ptr %3, align 8, !tbaa !79
  %35 = icmp eq ptr %34, null
  br i1 %35, label %57, label %36

36:                                               ; preds = %20
  %37 = load i32, ptr %4, align 4, !tbaa !81
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = zext nneg i32 %37 to i64
  br label %41

41:                                               ; preds = %39, %52
  %42 = phi i64 [ 0, %39 ], [ %53, %52 ]
  %43 = getelementptr inbounds ptr, ptr %34, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !79
  %45 = call ptr @defvert_find_index(ptr noundef %44, i32 noundef %26) #19
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.MDeformWeight, ptr %45, i64 0, i32 1
  %49 = load float, ptr %48, align 4, !tbaa !117
  %50 = call ptr @defvert_verify_index(ptr noundef %44, i32 noundef %30) #19
  %51 = getelementptr inbounds %struct.MDeformWeight, ptr %50, i64 0, i32 1
  store float %49, ptr %51, align 4, !tbaa !117
  br label %52

52:                                               ; preds = %47, %41
  %53 = add nuw nsw i64 %42, 1
  %54 = icmp eq i64 %53, %40
  br i1 %54, label %55, label %41, !llvm.loop !269

55:                                               ; preds = %52, %36
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %56(ptr noundef nonnull %34) #19
  br label %57

57:                                               ; preds = %20, %55, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @defgroup_duplicate(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defgroup_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_levels_subset(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !270 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !tbaa !81
  %8 = tail call fastcc zeroext i8 @vertex_group_use_vert_sel(ptr noundef %0) #20, !range !53
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !50
  %11 = icmp eq i16 %10, 1
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  br i1 %11, label %14, label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 46
  %16 = load i8, ptr %15, align 1, !tbaa !139
  %17 = and i8 %16, 1
  %18 = icmp ne i8 %17, 0
  br label %19

19:                                               ; preds = %5, %14
  %20 = phi i1 [ %18, %14 ], [ false, %5 ]
  %21 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %13, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext %8) #20, !range !53
  %22 = load ptr, ptr %6, align 8, !tbaa !79
  %23 = icmp eq ptr %22, null
  br i1 %23, label %68, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %7, align 4, !tbaa !81
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %24
  %28 = icmp eq i32 %2, 0
  %29 = sext i32 %2 to i64
  %30 = zext nneg i32 %25 to i64
  br label %31

31:                                               ; preds = %27, %59
  %32 = phi i64 [ 0, %27 ], [ %60, %59 ]
  %33 = getelementptr inbounds ptr, ptr %22, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !79
  %35 = icmp eq ptr %34, null
  %36 = or i1 %35, %28
  br i1 %36, label %59, label %37

37:                                               ; preds = %31, %57
  %38 = phi i64 [ %39, %57 ], [ %29, %31 ]
  %39 = add nsw i64 %38, -1
  %40 = getelementptr inbounds i8, ptr %1, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !116
  %42 = icmp eq i8 %41, 0
  %43 = trunc i64 %39 to i32
  br i1 %42, label %57, label %44

44:                                               ; preds = %37
  %45 = tail call ptr @defvert_find_index(ptr noundef nonnull %34, i32 noundef %43) #19
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.MDeformWeight, ptr %45, i64 0, i32 1
  %49 = load float, ptr %48, align 4, !tbaa !117
  %50 = fadd float %49, %3
  %51 = fmul float %50, %4
  store float %51, ptr %48, align 4, !tbaa !117
  %52 = fcmp olt float %51, 0.000000e+00
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = fcmp ogt float %51, 1.000000e+00
  br i1 %54, label %55, label %57

55:                                               ; preds = %53, %47
  %56 = phi float [ 0.000000e+00, %47 ], [ 1.000000e+00, %53 ]
  store float %56, ptr %48, align 4, !tbaa !117
  br label %57

57:                                               ; preds = %55, %37, %44, %53
  %58 = icmp eq i32 %43, 0
  br i1 %58, label %59, label %37, !llvm.loop !271

59:                                               ; preds = %57, %31
  %60 = add nuw nsw i64 %32, 1
  %61 = icmp eq i64 %60, %30
  br i1 %61, label %62, label %31, !llvm.loop !272

62:                                               ; preds = %59, %24
  %63 = icmp ne i8 %8, 0
  %64 = and i1 %63, %20
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  tail call void @ED_vgroup_parray_mirror_sync(ptr noundef %0, ptr noundef nonnull %22, i32 noundef %25, ptr noundef %1, i32 noundef %2) #20
  br label %66

66:                                               ; preds = %65, %62
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %67(ptr noundef nonnull %22) #19
  br label %68

68:                                               ; preds = %66, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @vertex_group_use_vert_sel(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !273 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 46
  %13 = load i8, ptr %12, align 1, !tbaa !139
  %14 = and i8 %13, 32
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %5
  br label %17

17:                                               ; preds = %9, %1, %16
  %18 = phi i8 [ 0, %16 ], [ 1, %1 ], [ 1, %9 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_vertex_group_with_single_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !274 {
  %5 = tail call ptr @ED_object_vgroup_selection_itemf_helper(ptr noundef %0, ptr poison, ptr poison, ptr noundef %3, i32 noundef 31) #20
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_vertex_group_select_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !275 {
  %5 = tail call ptr @ED_object_vgroup_selection_itemf_helper(ptr noundef %0, ptr poison, ptr poison, ptr noundef %3, i32 noundef 29) #20
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_normalize(ptr noundef %0) unnamed_addr #0 !PGOFuncName !276 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store ptr null, ptr %2, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !tbaa !81
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %5 = load i16, ptr %4, align 2, !tbaa !49
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %6, -1
  %8 = tail call fastcc zeroext i8 @vertex_group_use_vert_sel(ptr noundef %0) #20, !range !53
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %9, i32 noundef %7) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %14, ptr noundef nonnull %2, ptr noundef nonnull %3, i8 noundef zeroext %8) #20, !range !53
  %16 = load ptr, ptr %2, align 8, !tbaa !79
  %17 = icmp eq ptr %16, null
  br i1 %17, label %67, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %3, align 4, !tbaa !81
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %18
  %22 = zext nneg i32 %19 to i64
  br label %23

23:                                               ; preds = %21, %36
  %24 = phi i64 [ 0, %21 ], [ %38, %36 ]
  %25 = phi float [ 0.000000e+00, %21 ], [ %37, %36 ]
  %26 = getelementptr inbounds ptr, ptr %16, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @defvert_find_index(ptr noundef nonnull %27, i32 noundef %7) #19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.MDeformWeight, ptr %30, i64 0, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !117
  %35 = tail call fastcc float @max_ff(float noundef %34, float noundef %25) #20
  br label %36

36:                                               ; preds = %29, %32, %23
  %37 = phi float [ %35, %32 ], [ %25, %29 ], [ %25, %23 ]
  %38 = add nuw nsw i64 %24, 1
  %39 = icmp eq i64 %38, %22
  br i1 %39, label %40, label %23, !llvm.loop !277

40:                                               ; preds = %36
  %41 = fcmp ogt float %37, 0.000000e+00
  %42 = and i1 %41, %20
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = zext nneg i32 %19 to i64
  br label %45

45:                                               ; preds = %43, %62
  %46 = phi i64 [ 0, %43 ], [ %63, %62 ]
  %47 = getelementptr inbounds ptr, ptr %16, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !79
  %49 = icmp eq ptr %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %45
  %51 = tail call ptr @defvert_find_index(ptr noundef nonnull %48, i32 noundef %7) #19
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.MDeformWeight, ptr %51, i64 0, i32 1
  %55 = load float, ptr %54, align 4, !tbaa !117
  %56 = fdiv float %55, %37
  store float %56, ptr %54, align 4, !tbaa !117
  %57 = fcmp olt float %56, 0.000000e+00
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = fcmp ogt float %56, 1.000000e+00
  br i1 %59, label %60, label %62

60:                                               ; preds = %58, %53
  %61 = phi float [ 0.000000e+00, %53 ], [ 1.000000e+00, %58 ]
  store float %61, ptr %54, align 4, !tbaa !117
  br label %62

62:                                               ; preds = %60, %50, %58, %45
  %63 = add nuw nsw i64 %46, 1
  %64 = icmp eq i64 %63, %44
  br i1 %64, label %65, label %45, !llvm.loop !278

65:                                               ; preds = %62, %18, %40
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %66(ptr noundef nonnull %16) #19
  br label %67

67:                                               ; preds = %12, %65, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #12 !PGOFuncName !279 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_normalize_all(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !280 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !tbaa !81
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %9 = load i16, ptr %8, align 2, !tbaa !49
  %10 = zext i16 %9 to i32
  %11 = add nsw i32 %10, -1
  %12 = tail call fastcc zeroext i8 @vertex_group_use_vert_sel(ptr noundef %0) #20, !range !53
  %13 = icmp eq i8 %4, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %16 = tail call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef %11) #19
  %17 = icmp eq ptr %16, null
  %18 = icmp eq i32 %3, 0
  %19 = or i1 %18, %17
  br i1 %19, label %63, label %22

20:                                               ; preds = %5
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %63, label %22

22:                                               ; preds = %14, %20
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %24, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext %12) #20, !range !53
  %26 = load ptr, ptr %6, align 8, !tbaa !79
  %27 = icmp eq ptr %26, null
  br i1 %27, label %63, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %30 = tail call i32 @BLI_countlist(ptr noundef nonnull %29) #19
  %31 = tail call ptr @BKE_objdef_lock_flags_get(ptr noundef nonnull %0, i32 noundef %30) #19
  %32 = icmp ne i8 %4, 1
  %33 = icmp eq ptr %31, null
  %34 = select i1 %32, i1 true, i1 %33
  %35 = icmp slt i32 %30, %10
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = sext i32 %11 to i64
  %39 = getelementptr inbounds i8, ptr %31, i64 %38
  store i8 1, ptr %39, align 1, !tbaa !116
  br label %40

40:                                               ; preds = %37, %28
  %41 = load i32, ptr %7, align 4, !tbaa !81
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = zext nneg i32 %41 to i64
  br label %45

45:                                               ; preds = %43, %55
  %46 = phi i64 [ 0, %43 ], [ %56, %55 ]
  %47 = getelementptr inbounds ptr, ptr %26, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !79
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  br i1 %33, label %52, label %51

51:                                               ; preds = %50
  tail call void @defvert_normalize_lock_map(ptr noundef nonnull %48, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %31, i32 noundef %30) #19
  br label %55

52:                                               ; preds = %50
  br i1 %13, label %54, label %53

53:                                               ; preds = %52
  tail call void @defvert_normalize_lock_single(ptr noundef nonnull %48, ptr noundef %1, i32 noundef %2, i32 noundef %11) #19
  br label %55

54:                                               ; preds = %52
  tail call void @defvert_normalize_subset(ptr noundef nonnull %48, ptr noundef %1, i32 noundef %2) #19
  br label %55

55:                                               ; preds = %45, %53, %54, %51
  %56 = add nuw nsw i64 %46, 1
  %57 = icmp eq i64 %56, %44
  br i1 %57, label %58, label %45, !llvm.loop !281

58:                                               ; preds = %55, %40
  br i1 %33, label %61, label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %60(ptr noundef nonnull %31) #19
  br label %61

61:                                               ; preds = %59, %58
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %62(ptr noundef nonnull %26) #19
  br label %63

63:                                               ; preds = %22, %61, %14, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_objdef_lock_flags_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_normalize_lock_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_normalize_lock_single(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_normalize_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_fix(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !282 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.MVert, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 46
  %13 = load i8, ptr %12, align 1, !tbaa !139
  %14 = and i8 %13, 32
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %77, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 26
  %20 = load i32, ptr %19, align 8, !tbaa !78
  %21 = icmp sgt i32 %20, 0
  %22 = icmp ne ptr %18, null
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %77

24:                                               ; preds = %16
  %25 = load i64, ptr @CD_MASK_BAREMESH, align 8
  br label %26

26:                                               ; preds = %24, %72
  %27 = phi i32 [ %20, %24 ], [ %73, %72 ]
  %28 = phi i32 [ 0, %24 ], [ %74, %72 ]
  %29 = phi ptr [ %18, %24 ], [ %75, %72 ]
  %30 = getelementptr inbounds %struct.MVert, ptr %29, i64 0, i32 2
  %31 = load i8, ptr %30, align 2, !tbaa !97
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %72, label %34

34:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !tbaa !81
  %35 = call fastcc ptr @getSurroundingVerts(ptr noundef nonnull %11, i32 noundef %28, ptr noundef nonnull %6) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %70, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #21
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !79
  %39 = load i32, ptr %6, align 4, !tbaa !81
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %40, 20
  %42 = call ptr %38(i64 noundef %41, ptr noundef nonnull @.str.193) #19
  %43 = call ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %1, i64 noundef %25) #19
  %44 = icmp eq i32 %39, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 28
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi i64 [ %40, %45 ], [ %49, %47 ]
  %49 = add nsw i64 %48, -1
  %50 = load ptr, ptr %46, align 8, !tbaa !283
  %51 = getelementptr inbounds i32, ptr %35, i64 %49
  %52 = load i32, ptr %51, align 4, !tbaa !81
  call void %50(ptr noundef %43, i32 noundef %52, ptr noundef nonnull %7) #19
  %53 = getelementptr inbounds %struct.MVert, ptr %42, i64 %49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %53, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !285
  %54 = and i64 %49, 4294967295
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %47, !llvm.loop !286

56:                                               ; preds = %47
  %57 = icmp sgt i32 %39, 2
  br i1 %57, label %58, label %67

58:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #21
  call fastcc void @getSingleCoordinate(ptr noundef nonnull %42, i32 noundef %39, ptr noundef nonnull %8) #20
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 28
  %60 = load ptr, ptr %59, align 8, !tbaa !283
  call void %60(ptr noundef nonnull %43, i32 noundef %28, ptr noundef nonnull %7) #19
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  %61 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #20
  %62 = fcmp une float %61, 0.000000e+00
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8) #20
  %65 = fneg float %64
  call fastcc void @moveCloserToDistanceFromPlane(ptr noundef %0, ptr noundef %1, ptr noundef %11, i32 noundef %28, ptr noundef nonnull %9, ptr noundef nonnull %8, float noundef %65, float noundef %2, float noundef %3, float noundef %4) #20
  br label %66

66:                                               ; preds = %63, %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #21
  br label %67

67:                                               ; preds = %37, %66, %56
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %68(ptr noundef nonnull %35) #19
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %69(ptr noundef %42) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #21
  br label %70

70:                                               ; preds = %67, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  %71 = load i32, ptr %19, align 8, !tbaa !78
  br label %72

72:                                               ; preds = %26, %70
  %73 = phi i32 [ %27, %26 ], [ %71, %70 ]
  %74 = add nuw nsw i32 %28, 1
  %75 = getelementptr inbounds %struct.MVert, ptr %29, i64 1
  %76 = icmp slt i32 %74, %73
  br i1 %76, label %26, label %77, !llvm.loop !287

77:                                               ; preds = %72, %16, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @getSurroundingVerts(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !288 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !289
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 30
  %8 = load i32, ptr %7, align 8, !tbaa !290
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !79
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef null, i32 noundef 4, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @.str.194) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %114, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 9
  br label %12

12:                                               ; preds = %10, %110
  %13 = phi i32 [ %8, %10 ], [ %16, %110 ]
  %14 = phi ptr [ %6, %10 ], [ %112, %110 ]
  %15 = phi i32 [ 0, %10 ], [ %111, %110 ]
  %16 = add nsw i32 %13, -1
  %17 = getelementptr inbounds %struct.MPoly, ptr %14, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !291
  %19 = load ptr, ptr %11, align 8, !tbaa !293
  %20 = load i32, ptr %14, align 4, !tbaa !294
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MLoop, ptr %19, i64 %21
  %23 = icmp eq i32 %18, 0
  br i1 %23, label %110, label %24

24:                                               ; preds = %12, %107
  %25 = phi ptr [ %108, %107 ], [ %22, %12 ]
  %26 = phi i32 [ %27, %107 ], [ %18, %12 ]
  %27 = add nsw i32 %26, -1
  %28 = load i32, ptr %25, align 4, !tbaa !295
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %30, label %107

30:                                               ; preds = %24
  %31 = icmp eq i32 %26, %18
  %32 = sext i32 %27 to i64
  %33 = getelementptr inbounds %struct.MLoop, ptr %25, i64 %32
  %34 = icmp eq i32 %27, 0
  %35 = getelementptr inbounds %struct.MLoop, ptr %25, i64 1
  %36 = select i1 %34, ptr %22, ptr %35
  %37 = select i1 %31, i64 1, i64 -1
  %38 = getelementptr inbounds %struct.MLoop, ptr %25, i64 %37
  %39 = select i1 %31, ptr %33, ptr %36
  %40 = load i32, ptr %39, align 4, !tbaa !295
  %41 = load i32, ptr %38, align 4, !tbaa !295
  %42 = icmp eq i32 %15, 0
  %43 = and i32 %40, %41
  %44 = icmp eq i32 %43, -1
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %66, label %46

46:                                               ; preds = %30
  %47 = load ptr, ptr %4, align 8, !tbaa !79
  %48 = sext i32 %15 to i64
  br label %49

49:                                               ; preds = %46, %49
  %50 = phi i64 [ %48, %46 ], [ %53, %49 ]
  %51 = phi i32 [ %40, %46 ], [ %60, %49 ]
  %52 = phi i32 [ %41, %46 ], [ %59, %49 ]
  %53 = add nsw i64 %50, -1
  %54 = getelementptr inbounds i32, ptr %47, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !81
  %56 = icmp eq i32 %55, %52
  %57 = icmp eq i32 %55, %51
  %58 = select i1 %57, i32 -1, i32 %51
  %59 = select i1 %56, i32 -1, i32 %52
  %60 = select i1 %56, i32 %51, i32 %58
  %61 = and i64 %53, 4294967295
  %62 = icmp eq i64 %61, 0
  %63 = and i32 %60, %59
  %64 = icmp eq i32 %63, -1
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %66, label %49, !llvm.loop !297

66:                                               ; preds = %49, %30
  %67 = phi i32 [ %41, %30 ], [ %59, %49 ]
  %68 = phi i32 [ %40, %30 ], [ %60, %49 ]
  %69 = icmp eq i32 %67, -1
  br i1 %69, label %87, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %4, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !79
  %75 = call i64 %74(ptr noundef nonnull %71) #19
  %76 = lshr i64 %75, 2
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i64 [ %76, %73 ], [ 0, %70 ]
  %79 = add nsw i32 %15, 1
  %80 = sext i32 %79 to i64
  %81 = icmp ult i64 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef null, i32 noundef 4, i32 noundef %15, i32 noundef 1, ptr noundef nonnull @.str.194) #19
  br label %83

83:                                               ; preds = %82, %77
  %84 = load ptr, ptr %4, align 8, !tbaa !79
  %85 = sext i32 %15 to i64
  %86 = getelementptr inbounds i32, ptr %84, i64 %85
  store i32 %67, ptr %86, align 4, !tbaa !81
  br label %87

87:                                               ; preds = %83, %66
  %88 = phi i32 [ %79, %83 ], [ %15, %66 ]
  %89 = icmp eq i32 %68, -1
  br i1 %89, label %110, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %4, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !79
  %95 = call i64 %94(ptr noundef nonnull %91) #19
  %96 = lshr i64 %95, 2
  br label %97

97:                                               ; preds = %93, %90
  %98 = phi i64 [ %96, %93 ], [ 0, %90 ]
  %99 = add nsw i32 %88, 1
  %100 = sext i32 %99 to i64
  %101 = icmp ult i64 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef null, i32 noundef 4, i32 noundef %88, i32 noundef 1, ptr noundef nonnull @.str.194) #19
  br label %103

103:                                              ; preds = %102, %97
  %104 = load ptr, ptr %4, align 8, !tbaa !79
  %105 = sext i32 %88 to i64
  %106 = getelementptr inbounds i32, ptr %104, i64 %105
  store i32 %68, ptr %106, align 4, !tbaa !81
  br label %110

107:                                              ; preds = %24
  %108 = getelementptr inbounds %struct.MLoop, ptr %25, i64 1
  %109 = icmp eq i32 %27, 0
  br i1 %109, label %110, label %24, !llvm.loop !298

110:                                              ; preds = %107, %12, %87, %103
  %111 = phi i32 [ %99, %103 ], [ %88, %87 ], [ %15, %12 ], [ %15, %107 ]
  %112 = getelementptr inbounds %struct.MPoly, ptr %14, i64 1
  %113 = icmp eq i32 %16, 0
  br i1 %113, label %114, label %12, !llvm.loop !299

114:                                              ; preds = %110, %3
  %115 = phi i32 [ 0, %3 ], [ %111, %110 ]
  store i32 %115, ptr %2, align 4, !tbaa !81
  %116 = load ptr, ptr %4, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret ptr %116
}

; Function Attrs: optsize
declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @getSingleCoordinate(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #8 !PGOFuncName !300 {
  tail call fastcc void @zero_v3(ptr noundef %2) #20
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %10, %7 ]
  %9 = getelementptr inbounds %struct.MVert, ptr %0, i64 %8
  tail call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef %9) #20
  %10 = add nuw nsw i64 %8, 1
  %11 = icmp eq i64 %10, %6
  br i1 %11, label %12, label %7, !llvm.loop !301

12:                                               ; preds = %7, %3
  %13 = sitofp i32 %1 to float
  %14 = fdiv float 1.000000e+00, %13
  tail call fastcc void @mul_v3_fl(ptr noundef %2, float noundef %14) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #13 !PGOFuncName !302 {
  %4 = load float, ptr %1, align 4, !tbaa !303
  %5 = load float, ptr %2, align 4, !tbaa !303
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !303
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !303
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !303
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !303
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !303
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !303
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !303
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #14 !PGOFuncName !304 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #20
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !305 {
  %3 = load float, ptr %0, align 4, !tbaa !303
  %4 = load float, ptr %1, align 4, !tbaa !303
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !303
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !303
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !303
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !303
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @moveCloserToDistanceFromPlane(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9) unnamed_addr #0 !PGOFuncName !306 {
  %11 = alloca %struct.MVert, align 4
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #21
  %13 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds %struct.MDeformVert, ptr %14, i64 %15
  %17 = getelementptr inbounds %struct.MDeformVert, ptr %14, i64 %15, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, i8 0, i64 12, i1 false)
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %20 = sext i32 %18 to i64
  %21 = shl nsw i64 %20, 4
  %22 = tail call ptr %19(i64 noundef %21, ptr noundef nonnull @.str.195) #19
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %24 = shl nsw i64 %20, 2
  %25 = tail call ptr %23(i64 noundef %24, ptr noundef nonnull @.str.196) #19
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !79
  %27 = tail call ptr %26(i64 noundef %24, ptr noundef nonnull @.str.197) #19
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !79
  %29 = tail call ptr %28(i64 noundef %24, ptr noundef nonnull @.str.198) #19
  %30 = icmp sgt i32 %18, 0
  %31 = fadd float %9, 1.000000e+00
  %32 = add i32 %18, -1
  %33 = zext nneg i32 %18 to i64
  %34 = zext nneg i32 %32 to i64
  %35 = getelementptr inbounds float, ptr %25, i64 %34
  %36 = zext nneg i32 %18 to i64
  br label %37

37:                                               ; preds = %180, %10
  %38 = phi float [ 0.000000e+00, %10 ], [ %123, %180 ]
  %39 = phi i32 [ 0, %10 ], [ %160, %180 ]
  %40 = phi i1 [ true, %10 ], [ false, %180 ]
  %41 = phi float [ %7, %10 ], [ %51, %180 ]
  %42 = call fastcc ptr @dm_deform_recalc(ptr noundef %0, ptr noundef %1) #20
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %42, i64 0, i32 28
  %44 = load ptr, ptr %43, align 8, !tbaa !283
  call void %44(ptr noundef %42, i32 noundef %3, ptr noundef nonnull %11) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %11) #20
  %45 = call fastcc float @dot_v3v3(ptr noundef %4, ptr noundef nonnull %12) #20
  %46 = fadd float %45, %6
  %47 = fcmp oeq float %41, %7
  %48 = fneg float %46
  %49 = call float @llvm.fmuladd.f32(float %48, float %8, float %46)
  %50 = select i1 %47, float %49, float -0.000000e+00
  %51 = fadd float %41, %50
  br i1 %30, label %52, label %191

52:                                               ; preds = %37
  %53 = fsub float %46, %51
  %54 = call float @llvm.fabs.f32(float %53)
  %55 = insertelement <2 x float> poison, float %51, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  br label %58

57:                                               ; preds = %117
  br i1 %30, label %126, label %191

58:                                               ; preds = %52, %117
  %59 = phi i64 [ 0, %52 ], [ %120, %117 ]
  %60 = phi ptr [ %42, %52 ], [ %119, %117 ]
  %61 = phi float [ %38, %52 ], [ %118, %117 ]
  %62 = getelementptr inbounds i32, ptr %29, i64 %59
  %63 = trunc i64 %59 to i32
  store i32 %63, ptr %62, align 4, !tbaa !81
  %64 = load ptr, ptr %16, align 8, !tbaa !65
  %65 = getelementptr inbounds %struct.MDeformWeight, ptr %64, i64 %59, i32 1
  %66 = load float, ptr %65, align 4, !tbaa !117
  %67 = fcmp une float %66, 0.000000e+00
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = getelementptr inbounds float, ptr %25, i64 %59
  %70 = getelementptr inbounds i32, ptr %27, i64 %59
  %71 = getelementptr inbounds [2 x float], ptr %22, i64 %59
  br label %75

72:                                               ; preds = %58
  %73 = getelementptr inbounds [2 x float], ptr %22, i64 %59
  store <2 x float> zeroinitializer, ptr %73, align 4, !tbaa !303
  %74 = getelementptr inbounds float, ptr %25, i64 %59
  br label %113

75:                                               ; preds = %111, %68
  %76 = phi ptr [ %60, %68 ], [ %93, %111 ]
  %77 = phi float [ %61, %68 ], [ %96, %111 ]
  %78 = phi i1 [ true, %68 ], [ false, %111 ]
  %79 = phi <2 x float> [ zeroinitializer, %68 ], [ %112, %111 ]
  %80 = icmp eq ptr %76, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  call fastcc void @dm_deform_clear(ptr noundef nonnull %76, ptr noundef %1) #20
  br label %82

82:                                               ; preds = %81, %75
  %83 = load float, ptr %65, align 4, !tbaa !117
  %84 = fdiv float %83, %31
  %85 = fmul float %31, %83
  %86 = select i1 %78, float %84, float %85
  store float %86, ptr %65, align 4, !tbaa !117
  %87 = fcmp oeq float %86, %83
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store <2 x float> zeroinitializer, ptr %71, align 4, !tbaa !303
  br label %113

89:                                               ; preds = %82
  %90 = fcmp ogt float %86, 1.000000e+00
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  store float 1.000000e+00, ptr %65, align 4, !tbaa !117
  br label %92

92:                                               ; preds = %91, %89
  %93 = call fastcc ptr @dm_deform_recalc(ptr noundef %0, ptr noundef %1) #20
  %94 = getelementptr inbounds %struct.DerivedMesh, ptr %93, i64 0, i32 28
  %95 = load ptr, ptr %94, align 8, !tbaa !283
  call void %95(ptr noundef %93, i32 noundef %3, ptr noundef nonnull %11) #19
  call fastcc void @getVerticalAndHorizontalChange(ptr noundef %4, float noundef %6, ptr noundef %5, ptr noundef nonnull %12, float noundef %46, ptr noundef nonnull %11, ptr noundef %22, ptr noundef %25, i32 noundef %63) #20
  store float %83, ptr %65, align 4, !tbaa !117
  %96 = load float, ptr %69, align 4, !tbaa !303
  br i1 %78, label %111, label %97

97:                                               ; preds = %92
  %98 = insertelement <2 x float> poison, float %77, i64 0
  %99 = insertelement <2 x float> %98, float %96, i64 1
  %100 = fsub <2 x float> %99, %56
  %101 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %100)
  %102 = extractelement <2 x float> %101, i64 0
  %103 = extractelement <2 x float> %101, i64 1
  %104 = fcmp olt float %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i32 0, ptr %70, align 4, !tbaa !81
  store <2 x float> %79, ptr %71, align 4, !tbaa !303
  store float %77, ptr %69, align 4, !tbaa !303
  br label %107

106:                                              ; preds = %97
  store i32 1, ptr %70, align 4, !tbaa !81
  br label %107

107:                                              ; preds = %106, %105
  %108 = phi float [ %103, %106 ], [ %102, %105 ]
  %109 = fcmp ogt float %108, %54
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  store <2 x float> zeroinitializer, ptr %71, align 4, !tbaa !303
  br label %113

111:                                              ; preds = %92
  %112 = load <2 x float>, ptr %71, align 4, !tbaa !303
  br label %75, !llvm.loop !307

113:                                              ; preds = %72, %88, %110
  %114 = phi ptr [ %69, %110 ], [ %69, %88 ], [ %74, %72 ]
  %115 = phi float [ %77, %110 ], [ %77, %88 ], [ %61, %72 ]
  %116 = phi ptr [ %93, %110 ], [ null, %88 ], [ %60, %72 ]
  store float %46, ptr %114, align 4, !tbaa !303
  br label %117

117:                                              ; preds = %113, %107
  %118 = phi float [ %77, %107 ], [ %115, %113 ]
  %119 = phi ptr [ %93, %107 ], [ %116, %113 ]
  %120 = add nuw nsw i64 %59, 1
  %121 = icmp eq i64 %120, %33
  br i1 %121, label %57, label %58, !llvm.loop !308

122:                                              ; preds = %131, %126
  %123 = phi float [ %132, %131 ], [ %127, %126 ]
  %124 = icmp eq i32 %129, %18
  br i1 %124, label %125, label %126, !llvm.loop !309

125:                                              ; preds = %122
  br i1 %30, label %133, label %191

126:                                              ; preds = %57, %122
  %127 = phi float [ %123, %122 ], [ %118, %57 ]
  %128 = phi i32 [ %129, %122 ], [ 0, %57 ]
  %129 = add nuw nsw i32 %128, 1
  %130 = icmp slt i32 %129, %18
  br i1 %130, label %131, label %122

131:                                              ; preds = %126
  %132 = load float, ptr %35, align 4, !tbaa !303
  br label %122

133:                                              ; preds = %125, %143
  %134 = phi i64 [ %144, %143 ], [ 0, %125 ]
  %135 = getelementptr inbounds [2 x float], ptr %22, i64 %134
  %136 = load float, ptr %135, align 4, !tbaa !303
  %137 = call float @llvm.fabs.f32(float %136)
  %138 = getelementptr inbounds [2 x float], ptr %22, i64 %134, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !303
  %140 = fmul float %139, 2.000000e+00
  %141 = call float @llvm.fabs.f32(float %140)
  %142 = fcmp ogt float %137, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %133
  %144 = add nuw nsw i64 %134, 1
  %145 = icmp eq i64 %144, %36
  br i1 %145, label %191, label %133, !llvm.loop !310

146:                                              ; preds = %133
  br i1 %40, label %147, label %151

147:                                              ; preds = %146
  %148 = and i64 %134, 4294967295
  %149 = getelementptr inbounds i32, ptr %27, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !81
  br label %158

151:                                              ; preds = %146
  %152 = and i32 %39, 255
  %153 = and i64 %134, 4294967295
  %154 = getelementptr inbounds i32, ptr %27, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !81
  %156 = icmp eq i32 %155, %152
  %157 = zext i1 %156 to i8
  br label %158

158:                                              ; preds = %147, %151
  %159 = phi i64 [ %148, %147 ], [ %153, %151 ]
  %160 = phi i32 [ %150, %147 ], [ %155, %151 ]
  %161 = phi i8 [ 1, %147 ], [ %157, %151 ]
  %162 = load ptr, ptr %16, align 8, !tbaa !65
  %163 = getelementptr inbounds i32, ptr %29, i64 %159
  %164 = load i32, ptr %163, align 4, !tbaa !81
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.MDeformWeight, ptr %162, i64 %165, i32 1
  %167 = load float, ptr %166, align 4, !tbaa !117
  %168 = icmp eq i32 %160, 0
  %169 = fdiv float %167, %31
  %170 = fmul float %31, %167
  %171 = select i1 %168, float %169, float %170
  %172 = fcmp ogt float %171, 1.000000e+00
  %173 = select i1 %172, float 1.000000e+00, float %171
  store float %173, ptr %166, align 4, !tbaa !117
  %174 = fcmp oeq float %167, %173
  %175 = icmp eq ptr %119, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %158
  call fastcc void @dm_deform_clear(ptr noundef nonnull %119, ptr noundef %1) #20
  br label %177

177:                                              ; preds = %176, %158
  %178 = icmp eq i8 %161, 0
  %179 = select i1 %174, i1 true, i1 %178
  br i1 %179, label %191, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds float, ptr %25, i64 %159
  %182 = load float, ptr %181, align 4, !tbaa !303
  %183 = insertelement <2 x float> poison, float %46, i64 0
  %184 = insertelement <2 x float> %183, float %182, i64 1
  %185 = fsub <2 x float> %184, %56
  %186 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %185)
  %187 = fdiv <2 x float> %185, %186
  %188 = extractelement <2 x float> %187, i64 0
  %189 = extractelement <2 x float> %187, i64 1
  %190 = fcmp oeq float %188, %189
  br i1 %190, label %37, label %191, !llvm.loop !311

191:                                              ; preds = %37, %57, %177, %180, %125, %143
  %192 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %192(ptr noundef %27) #19
  %193 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %193(ptr noundef %22) #19
  %194 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %194(ptr noundef %25) #19
  %195 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %195(ptr noundef %29) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #21
  ret void
}

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !312 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !303
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !303
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !313 {
  %3 = load float, ptr %1, align 4, !tbaa !303
  %4 = load float, ptr %0, align 4, !tbaa !303
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !303
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !303
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !303
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !303
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !303
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !303
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !303
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #13 !PGOFuncName !314 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !303
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !303
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !303
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !303
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !315 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #20
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #19
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #20
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #20
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #13 !PGOFuncName !316 {
  %4 = load float, ptr %1, align 4, !tbaa !303
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !303
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !303
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !303
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !303
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !303
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @dm_deform_recalc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !317 {
  %3 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !318
  %4 = tail call ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %1, i64 noundef %3) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !319 {
  %3 = load float, ptr %1, align 4, !tbaa !303
  store float %3, ptr %0, align 4, !tbaa !303
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !303
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !303
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !303
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !303
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dm_deform_clear(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !320 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 119
  %4 = load ptr, ptr %3, align 8, !tbaa !321
  %5 = icmp ne ptr %4, null
  %6 = icmp eq ptr %4, %0
  %7 = and i1 %5, %6
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 10
  store i32 1, ptr %8, align 4, !tbaa !322
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 95
  %10 = load ptr, ptr %9, align 8, !tbaa !323
  br i1 %7, label %11, label %12

11:                                               ; preds = %2
  tail call void %10(ptr noundef nonnull %0) #19
  store ptr null, ptr %3, align 8, !tbaa !321
  br label %13

12:                                               ; preds = %2
  tail call void %10(ptr noundef %0) #19
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @getVerticalAndHorizontalChange(ptr noundef %0, float noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !324 {
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #21
  call void @plane_from_point_normal_v3(ptr noundef nonnull %12, ptr noundef %2, ptr noundef %0) #19
  call void @closest_to_plane_v3(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef %3) #19
  call void @closest_to_plane_v3(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %5) #19
  %13 = call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %5) #20
  %14 = fadd float %13, %1
  %15 = sext i32 %8 to i64
  %16 = getelementptr inbounds float, ptr %7, i64 %15
  store float %14, ptr %16, align 4, !tbaa !303
  %17 = fsub float %14, %4
  %18 = getelementptr inbounds [2 x float], ptr %6, i64 %15
  store float %17, ptr %18, align 4, !tbaa !303
  %19 = call fastcc float @len_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #20
  %20 = getelementptr inbounds [2 x float], ptr %6, i64 %15, i64 1
  store float %19, ptr %20, align 4, !tbaa !303
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #16

; Function Attrs: optsize
declare void @plane_from_point_normal_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @closest_to_plane_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !325 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #20
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !326 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #20
  %3 = tail call float @sqrtf(float noundef %2) #19
  ret float %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @vgroup_lock_all(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !327 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bDeformGroup, ptr %8, i64 0, i32 3
  %12 = load i8, ptr %11, align 8, !tbaa !173
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %6, label %15, !llvm.loop !328

15:                                               ; preds = %10, %6, %2
  %16 = phi i32 [ %1, %2 ], [ 2, %10 ], [ 1, %6 ]
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %15, %34
  %21 = phi ptr [ %35, %34 ], [ %18, %15 ]
  switch i32 %16, label %34 [
    i32 1, label %22
    i32 2, label %26
    i32 3, label %30
  ]

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.bDeformGroup, ptr %21, i64 0, i32 3
  %24 = load i8, ptr %23, align 8, !tbaa !173
  %25 = or i8 %24, 1
  store i8 %25, ptr %23, align 8, !tbaa !173
  br label %34

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.bDeformGroup, ptr %21, i64 0, i32 3
  %28 = load i8, ptr %27, align 8, !tbaa !173
  %29 = and i8 %28, -2
  store i8 %29, ptr %27, align 8, !tbaa !173
  br label %34

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.bDeformGroup, ptr %21, i64 0, i32 3
  %32 = load i8, ptr %31, align 8, !tbaa !173
  %33 = xor i8 %32, 1
  store i8 %33, ptr %31, align 8, !tbaa !173
  br label %34

34:                                               ; preds = %22, %26, %30, %20
  %35 = load ptr, ptr %21, align 8, !tbaa !79
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %20, !llvm.loop !329

37:                                               ; preds = %34, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_invert_subset(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !330 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !tbaa !81
  %8 = tail call fastcc zeroext i8 @vertex_group_use_vert_sel(ptr noundef %0) #20, !range !53
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !50
  %11 = icmp eq i16 %10, 1
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  br i1 %11, label %14, label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 46
  %16 = load i8, ptr %15, align 1, !tbaa !139
  %17 = and i8 %16, 1
  %18 = icmp ne i8 %17, 0
  br label %19

19:                                               ; preds = %5, %14
  %20 = phi i1 [ %18, %14 ], [ false, %5 ]
  %21 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %13, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext %8) #20, !range !53
  %22 = load ptr, ptr %6, align 8, !tbaa !79
  %23 = icmp eq ptr %22, null
  br i1 %23, label %77, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %7, align 4, !tbaa !81
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %24
  %28 = icmp eq i32 %2, 0
  %29 = icmp eq i8 %3, 0
  %30 = sext i32 %2 to i64
  %31 = zext nneg i32 %25 to i64
  br label %32

32:                                               ; preds = %27, %65
  %33 = phi i64 [ 0, %27 ], [ %66, %65 ]
  %34 = getelementptr inbounds ptr, ptr %22, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = icmp eq ptr %35, null
  %37 = or i1 %36, %28
  br i1 %37, label %65, label %38

38:                                               ; preds = %32, %62
  %39 = phi i64 [ %40, %62 ], [ %30, %32 ]
  %40 = add nsw i64 %39, -1
  %41 = getelementptr inbounds i8, ptr %1, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !116
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %38
  %45 = trunc i64 %40 to i32
  br i1 %29, label %48, label %46

46:                                               ; preds = %44
  %47 = tail call ptr @defvert_verify_index(ptr noundef nonnull %35, i32 noundef %45) #19
  br label %50

48:                                               ; preds = %44
  %49 = tail call ptr @defvert_find_index(ptr noundef nonnull %35, i32 noundef %45) #19
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %47, %46 ], [ %49, %48 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.MDeformWeight, ptr %51, i64 0, i32 1
  %55 = load float, ptr %54, align 4, !tbaa !117
  %56 = fsub float 1.000000e+00, %55
  store float %56, ptr %54, align 4, !tbaa !117
  %57 = fcmp olt float %56, 0.000000e+00
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = fcmp ogt float %56, 1.000000e+00
  br i1 %59, label %60, label %62

60:                                               ; preds = %58, %53
  %61 = phi float [ 0.000000e+00, %53 ], [ 1.000000e+00, %58 ]
  store float %61, ptr %54, align 4, !tbaa !117
  br label %62

62:                                               ; preds = %60, %50, %58, %38
  %63 = and i64 %40, 4294967295
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %38, !llvm.loop !331

65:                                               ; preds = %62, %32
  %66 = add nuw nsw i64 %33, 1
  %67 = icmp eq i64 %66, %31
  br i1 %67, label %68, label %32, !llvm.loop !332

68:                                               ; preds = %65, %24
  %69 = icmp ne i8 %8, 0
  %70 = and i1 %69, %20
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  tail call void @ED_vgroup_parray_mirror_sync(ptr noundef %0, ptr noundef nonnull %22, i32 noundef %25, ptr noundef %1, i32 noundef %2) #20
  br label %72

72:                                               ; preds = %71, %68
  %73 = icmp eq i8 %4, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %72
  tail call void @ED_vgroup_parray_remove_zero(ptr noundef nonnull %22, i32 noundef %25, ptr noundef %1, i32 noundef %2, float noundef 0.000000e+00, i8 noundef zeroext 0) #20
  br label %75

75:                                               ; preds = %74, %72
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %76(ptr noundef nonnull %22) #19
  br label %77

77:                                               ; preds = %75, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret void
}

; Function Attrs: optsize
declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_blend_subset(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !333 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = fsub float 1.000000e+00, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !tbaa !81
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
  %23 = load i8, ptr %22, align 1, !tbaa !139
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br label %26

26:                                               ; preds = %5, %19
  %27 = phi i1 [ %25, %19 ], [ true, %5 ]
  %28 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %0) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !58
  br label %35

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  br label %35

35:                                               ; preds = %30, %32
  %36 = phi ptr [ null, %32 ], [ %31, %30 ]
  %37 = phi ptr [ %34, %32 ], [ null, %30 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  call void @ED_vgroup_subset_to_index_array(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %14) #20
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %39, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #20, !range !53
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %15, i8 0, i64 %13, i1 false)
  %41 = icmp eq ptr %36, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  tail call void @BM_mesh_elem_table_ensure(ptr noundef nonnull %36, i8 noundef zeroext 1) #19
  store ptr null, ptr %8, align 8, !tbaa !79
  store ptr null, ptr %9, align 8, !tbaa !79
  br label %50

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.Mesh, ptr %37, i64 0, i32 16
  %45 = load ptr, ptr %44, align 8, !tbaa !334
  %46 = getelementptr inbounds %struct.Mesh, ptr %37, i64 0, i32 26
  %47 = load i32, ptr %46, align 8, !tbaa !78
  %48 = getelementptr inbounds %struct.Mesh, ptr %37, i64 0, i32 27
  %49 = load i32, ptr %48, align 4, !tbaa !335
  call void @BKE_mesh_vert_edge_map_create(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %45, i32 noundef %47, i32 noundef %49) #19
  br label %50

50:                                               ; preds = %43, %42
  %51 = load i32, ptr %7, align 4, !tbaa !81
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %236

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.Mesh, ptr %37, i64 0, i32 15
  %55 = getelementptr inbounds %struct.Mesh, ptr %37, i64 0, i32 16
  %56 = icmp sgt i32 %3, 0
  %57 = zext nneg i32 %51 to i64
  %58 = zext nneg i32 %3 to i64
  %59 = zext nneg i32 %3 to i64
  br label %60

60:                                               ; preds = %53, %231
  %61 = phi i64 [ 0, %53 ], [ %234, %231 ]
  %62 = phi ptr [ null, %53 ], [ %233, %231 ]
  %63 = phi ptr [ null, %53 ], [ %232, %231 ]
  br i1 %41, label %106, label %64

64:                                               ; preds = %60
  %65 = trunc i64 %61 to i32
  %66 = call ptr @BM_vert_at_index(ptr noundef nonnull %36, i32 noundef %65) #19
  %67 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %66, i8 noundef zeroext 1) #20, !range !93
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %231, label %69

69:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #21
  %70 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %10, ptr noundef null, i8 noundef zeroext 4, ptr noundef %66) #20
  %71 = icmp eq ptr %70, null
  br i1 %71, label %102, label %72

72:                                               ; preds = %69, %96
  %73 = phi ptr [ %99, %96 ], [ %62, %69 ]
  %74 = phi ptr [ %98, %96 ], [ %63, %69 ]
  %75 = phi i32 [ %97, %96 ], [ 0, %69 ]
  %76 = phi ptr [ %100, %96 ], [ %70, %69 ]
  %77 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %76, ptr noundef %66) #20
  %78 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %77, i8 noundef zeroext 1) #20, !range !93
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %72
  %81 = call fastcc i32 @_bm_elem_index_get(ptr noundef %77) #20
  %82 = load ptr, ptr %6, align 8, !tbaa !79
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds ptr, ptr %82, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !79
  %86 = icmp eq ptr %74, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = load ptr, ptr %74, align 8, !tbaa !336
  br label %91

89:                                               ; preds = %80
  %90 = alloca [16 x i8], align 16
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi ptr [ %74, %87 ], [ %90, %89 ]
  %93 = phi ptr [ %88, %87 ], [ null, %89 ]
  store ptr %73, ptr %92, align 8, !tbaa !336
  %94 = getelementptr inbounds %struct.LinkNode, ptr %92, i64 0, i32 1
  store ptr %85, ptr %94, align 8, !tbaa !338
  %95 = add nsw i32 %75, 1
  br label %96

96:                                               ; preds = %91, %72
  %97 = phi i32 [ %95, %91 ], [ %75, %72 ]
  %98 = phi ptr [ %93, %91 ], [ %74, %72 ]
  %99 = phi ptr [ %92, %91 ], [ %73, %72 ]
  %100 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %10) #20
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %72, !llvm.loop !339

102:                                              ; preds = %96, %69
  %103 = phi i32 [ 0, %69 ], [ %97, %96 ]
  %104 = phi ptr [ %63, %69 ], [ %98, %96 ]
  %105 = phi ptr [ %62, %69 ], [ %99, %96 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #21
  br label %169

106:                                              ; preds = %60
  %107 = load ptr, ptr %54, align 8, !tbaa !96
  %108 = getelementptr inbounds %struct.MVert, ptr %107, i64 %61, i32 2
  %109 = load i8, ptr %108, align 2, !tbaa !97
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %231, label %112

112:                                              ; preds = %106
  %113 = load ptr, ptr %8, align 8, !tbaa !79
  %114 = getelementptr inbounds %struct.MeshElemMap, ptr %113, i64 %61, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !340
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %231

117:                                              ; preds = %112
  %118 = load ptr, ptr %55, align 8, !tbaa !334
  br label %119

119:                                              ; preds = %117, %159
  %120 = phi ptr [ %113, %117 ], [ %160, %159 ]
  %121 = phi i64 [ 0, %117 ], [ %164, %159 ]
  %122 = phi ptr [ %62, %117 ], [ %163, %159 ]
  %123 = phi ptr [ %63, %117 ], [ %162, %159 ]
  %124 = phi i32 [ 0, %117 ], [ %161, %159 ]
  %125 = getelementptr inbounds %struct.MeshElemMap, ptr %120, i64 %61
  %126 = load ptr, ptr %125, align 8, !tbaa !342
  %127 = getelementptr inbounds i32, ptr %126, i64 %121
  %128 = load i32, ptr %127, align 4, !tbaa !81
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.MEdge, ptr %118, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !343
  %132 = zext i32 %131 to i64
  %133 = icmp eq i64 %61, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %119
  %135 = getelementptr inbounds %struct.MEdge, ptr %118, i64 %129, i32 1
  %136 = load i32, ptr %135, align 4, !tbaa !345
  br label %137

137:                                              ; preds = %119, %134
  %138 = phi i32 [ %136, %134 ], [ %131, %119 ]
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.MVert, ptr %107, i64 %139, i32 2
  %141 = load i8, ptr %140, align 2, !tbaa !97
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %137
  %145 = load ptr, ptr %6, align 8, !tbaa !79
  %146 = getelementptr inbounds ptr, ptr %145, i64 %139
  %147 = load ptr, ptr %146, align 8, !tbaa !79
  %148 = icmp eq ptr %123, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr %123, align 8, !tbaa !336
  br label %153

151:                                              ; preds = %144
  %152 = alloca [16 x i8], align 16
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi ptr [ %123, %149 ], [ %152, %151 ]
  %155 = phi ptr [ %150, %149 ], [ null, %151 ]
  store ptr %122, ptr %154, align 8, !tbaa !336
  %156 = getelementptr inbounds %struct.LinkNode, ptr %154, i64 0, i32 1
  store ptr %147, ptr %156, align 8, !tbaa !338
  %157 = add nsw i32 %124, 1
  %158 = load ptr, ptr %8, align 8, !tbaa !79
  br label %159

159:                                              ; preds = %153, %137
  %160 = phi ptr [ %158, %153 ], [ %120, %137 ]
  %161 = phi i32 [ %157, %153 ], [ %124, %137 ]
  %162 = phi ptr [ %155, %153 ], [ %123, %137 ]
  %163 = phi ptr [ %154, %153 ], [ %122, %137 ]
  %164 = add nuw nsw i64 %121, 1
  %165 = getelementptr inbounds %struct.MeshElemMap, ptr %160, i64 %61, i32 1
  %166 = load i32, ptr %165, align 8, !tbaa !340
  %167 = sext i32 %166 to i64
  %168 = icmp slt i64 %164, %167
  br i1 %168, label %119, label %169, !llvm.loop !346

169:                                              ; preds = %159, %102
  %170 = phi i32 [ %103, %102 ], [ %161, %159 ]
  %171 = phi ptr [ %104, %102 ], [ %162, %159 ]
  %172 = phi ptr [ %105, %102 ], [ %163, %159 ]
  %173 = icmp eq i32 %170, 0
  br i1 %173, label %231, label %174

174:                                              ; preds = %169
  %175 = sitofp i32 %170 to float
  %176 = fdiv float 1.000000e+00, %175
  %177 = icmp eq ptr %172, null
  br i1 %177, label %198, label %180

178:                                              ; preds = %188, %187
  %179 = icmp eq ptr %183, null
  br i1 %179, label %198, label %180, !llvm.loop !347

180:                                              ; preds = %174, %178
  %181 = phi ptr [ %183, %178 ], [ %172, %174 ]
  %182 = phi ptr [ %181, %178 ], [ %171, %174 ]
  %183 = load ptr, ptr %181, align 8, !tbaa !336
  store ptr %182, ptr %181, align 8, !tbaa !336
  %184 = getelementptr inbounds %struct.LinkNode, ptr %181, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !338
  %186 = icmp eq ptr %185, null
  br i1 %186, label %198, label %187

187:                                              ; preds = %180
  br i1 %56, label %188, label %178

188:                                              ; preds = %187, %188
  %189 = phi i64 [ %196, %188 ], [ 0, %187 ]
  %190 = getelementptr inbounds i32, ptr %14, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !81
  %192 = call float @defvert_find_weight(ptr noundef nonnull %185, i32 noundef %191) #19
  %193 = getelementptr inbounds float, ptr %15, i64 %189
  %194 = load float, ptr %193, align 4, !tbaa !303
  %195 = call float @llvm.fmuladd.f32(float %176, float %192, float %194)
  store float %195, ptr %193, align 4, !tbaa !303
  %196 = add nuw nsw i64 %189, 1
  %197 = icmp eq i64 %196, %58
  br i1 %197, label %178, label %188, !llvm.loop !348

198:                                              ; preds = %180, %178, %174
  %199 = phi ptr [ null, %174 ], [ null, %178 ], [ %183, %180 ]
  %200 = phi ptr [ %171, %174 ], [ %181, %178 ], [ %181, %180 ]
  %201 = load ptr, ptr %6, align 8, !tbaa !79
  %202 = getelementptr inbounds ptr, ptr %201, i64 %61
  %203 = load ptr, ptr %202, align 8, !tbaa !79
  br i1 %56, label %204, label %231

204:                                              ; preds = %198, %228
  %205 = phi i64 [ %229, %228 ], [ 0, %198 ]
  %206 = getelementptr inbounds float, ptr %15, i64 %205
  %207 = load float, ptr %206, align 4, !tbaa !303
  %208 = fcmp ogt float %207, 0.000000e+00
  %209 = getelementptr inbounds i32, ptr %14, i64 %205
  %210 = load i32, ptr %209, align 4, !tbaa !81
  br i1 %208, label %211, label %213

211:                                              ; preds = %204
  %212 = call ptr @defvert_verify_index(ptr noundef %203, i32 noundef %210) #19
  br label %215

213:                                              ; preds = %204
  %214 = call ptr @defvert_find_index(ptr noundef %203, i32 noundef %210) #19
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi ptr [ %212, %211 ], [ %214, %213 ]
  %217 = icmp eq ptr %216, null
  br i1 %217, label %228, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.MDeformWeight, ptr %216, i64 0, i32 1
  %220 = load float, ptr %219, align 4, !tbaa !117
  %221 = fmul float %11, %220
  %222 = call float @llvm.fmuladd.f32(float %4, float %207, float %221)
  store float %222, ptr %219, align 4, !tbaa !117
  %223 = fcmp olt float %222, 0.000000e+00
  br i1 %223, label %226, label %224

224:                                              ; preds = %218
  %225 = fcmp ogt float %222, 1.000000e+00
  br i1 %225, label %226, label %228

226:                                              ; preds = %224, %218
  %227 = phi float [ 0.000000e+00, %218 ], [ 1.000000e+00, %224 ]
  store float %227, ptr %219, align 4, !tbaa !117
  br label %228

228:                                              ; preds = %226, %224, %215
  store float 0.000000e+00, ptr %206, align 4, !tbaa !303
  %229 = add nuw nsw i64 %205, 1
  %230 = icmp eq i64 %229, %59
  br i1 %230, label %231, label %204, !llvm.loop !349

231:                                              ; preds = %228, %112, %198, %106, %64, %169
  %232 = phi ptr [ %171, %169 ], [ %63, %64 ], [ %63, %106 ], [ %200, %198 ], [ %63, %112 ], [ %200, %228 ]
  %233 = phi ptr [ %172, %169 ], [ %62, %64 ], [ %62, %106 ], [ %199, %198 ], [ %62, %112 ], [ %199, %228 ]
  %234 = add nuw nsw i64 %61, 1
  %235 = icmp eq i64 %234, %57
  br i1 %235, label %236, label %60, !llvm.loop !350

236:                                              ; preds = %231, %50
  br i1 %41, label %237, label %242

237:                                              ; preds = %236
  %238 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  %239 = load ptr, ptr %8, align 8, !tbaa !79
  call void %238(ptr noundef %239) #19
  %240 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  %241 = load ptr, ptr %9, align 8, !tbaa !79
  call void %240(ptr noundef %241) #19
  br label %242

242:                                              ; preds = %236, %237
  %243 = load ptr, ptr %6, align 8, !tbaa !79
  %244 = icmp eq ptr %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %242
  %246 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %246(ptr noundef nonnull %243) #19
  br label %247

247:                                              ; preds = %245, %242
  br i1 %27, label %256, label %248

248:                                              ; preds = %247
  %249 = load ptr, ptr %38, align 8, !tbaa !46
  %250 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %249, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 1) #20, !range !53
  %251 = load ptr, ptr %6, align 8, !tbaa !79
  %252 = load i32, ptr %7, align 4, !tbaa !81
  call void @ED_vgroup_parray_mirror_sync(ptr noundef %0, ptr noundef %251, i32 noundef %252, ptr noundef %1, i32 noundef %2) #20
  %253 = icmp eq ptr %251, null
  br i1 %253, label %256, label %254

254:                                              ; preds = %248
  %255 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %255(ptr noundef nonnull %251) #19
  br label %256

256:                                              ; preds = %248, %254, %247
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_vert_edge_map_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !351 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !352
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !355
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !356 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !357
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_clean_subset(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, float noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !358 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !tbaa !81
  %8 = tail call fastcc zeroext i8 @vertex_group_use_vert_sel(ptr noundef %0) #20, !range !53
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !50
  %11 = icmp eq i16 %10, 1
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  br i1 %11, label %14, label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 46
  %16 = load i8, ptr %15, align 1, !tbaa !139
  %17 = and i8 %16, 1
  %18 = icmp ne i8 %17, 0
  br label %19

19:                                               ; preds = %5, %14
  %20 = phi i1 [ %18, %14 ], [ false, %5 ]
  %21 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %13, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext %8) #20, !range !53
  %22 = load ptr, ptr %6, align 8, !tbaa !79
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = icmp ne i8 %8, 0
  %26 = and i1 %25, %20
  %27 = load i32, ptr %7, align 4, !tbaa !81
  br i1 %26, label %28, label %29

28:                                               ; preds = %24
  tail call void @ED_vgroup_parray_mirror_assign(ptr noundef nonnull %0, ptr noundef nonnull %22, i32 noundef %27) #20
  br label %29

29:                                               ; preds = %28, %24
  tail call void @ED_vgroup_parray_remove_zero(ptr noundef nonnull %22, i32 noundef %27, ptr noundef %1, i32 noundef %2, float noundef %3, i8 noundef zeroext %4) #20
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %30(ptr noundef nonnull %22) #19
  br label %31

31:                                               ; preds = %29, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_quantize_subset(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !359 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !tbaa !81
  %7 = tail call fastcc zeroext i8 @vertex_group_use_vert_sel(ptr noundef %0) #20, !range !53
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i16 %9, 1
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  br i1 %10, label %13, label %18

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 46
  %15 = load i8, ptr %14, align 1, !tbaa !139
  %16 = and i8 %15, 1
  %17 = icmp ne i8 %16, 0
  br label %18

18:                                               ; preds = %4, %13
  %19 = phi i1 [ %17, %13 ], [ false, %4 ]
  %20 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %12, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %7) #20, !range !53
  %21 = load ptr, ptr %5, align 8, !tbaa !79
  %22 = icmp eq ptr %21, null
  br i1 %22, label %74, label %23

23:                                               ; preds = %18
  %24 = sitofp i32 %3 to float
  %25 = icmp ne i8 %7, 0
  %26 = and i1 %25, %19
  %27 = load i32, ptr %6, align 4, !tbaa !81
  br i1 %26, label %28, label %29

28:                                               ; preds = %23
  tail call void @ED_vgroup_parray_mirror_assign(ptr noundef nonnull %0, ptr noundef nonnull %21, i32 noundef %27) #20
  br label %29

29:                                               ; preds = %28, %23
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %29
  %32 = zext nneg i32 %27 to i64
  br label %33

33:                                               ; preds = %31, %69
  %34 = phi i64 [ 0, %31 ], [ %70, %69 ]
  %35 = getelementptr inbounds ptr, ptr %21, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !79
  %37 = icmp eq ptr %36, null
  br i1 %37, label %69, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.MDeformVert, ptr %36, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !63
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %38
  %43 = load ptr, ptr %36, align 8, !tbaa !65
  br label %44

44:                                               ; preds = %42, %65
  %45 = phi i32 [ %66, %65 ], [ 0, %42 ]
  %46 = phi ptr [ %67, %65 ], [ %43, %42 ]
  %47 = load i32, ptr %46, align 4, !tbaa !66
  %48 = icmp slt i32 %47, %2
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds i8, ptr %1, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !116
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.MDeformWeight, ptr %46, i64 0, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !117
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %24, float 5.000000e-01)
  %58 = tail call float @llvm.floor.f32(float %57)
  %59 = fdiv float %58, %24
  store float %59, ptr %55, align 4, !tbaa !117
  %60 = fcmp olt float %59, 0.000000e+00
  br i1 %60, label %63, label %61

61:                                               ; preds = %54
  %62 = fcmp ogt float %59, 1.000000e+00
  br i1 %62, label %63, label %65

63:                                               ; preds = %61, %54
  %64 = phi float [ 0.000000e+00, %54 ], [ 1.000000e+00, %61 ]
  store float %64, ptr %55, align 4, !tbaa !117
  br label %65

65:                                               ; preds = %63, %44, %49, %61
  %66 = add nuw nsw i32 %45, 1
  %67 = getelementptr inbounds %struct.MDeformWeight, ptr %46, i64 1
  %68 = icmp eq i32 %66, %40
  br i1 %68, label %69, label %44, !llvm.loop !360

69:                                               ; preds = %65, %38, %33
  %70 = add nuw nsw i64 %34, 1
  %71 = icmp eq i64 %70, %32
  br i1 %71, label %72, label %33, !llvm.loop !361

72:                                               ; preds = %69, %29
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %73(ptr noundef nonnull %21) #19
  br label %74

74:                                               ; preds = %72, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vgroup_limit_total_subset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !362 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !tbaa !81
  %8 = tail call fastcc zeroext i8 @vertex_group_use_vert_sel(ptr noundef %0) #20, !range !53
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext %8) #20, !range !53
  %12 = load ptr, ptr %6, align 8, !tbaa !79
  %13 = icmp eq ptr %12, null
  br i1 %13, label %97, label %14

14:                                               ; preds = %5
  %15 = load i32, ptr %7, align 4, !tbaa !81
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %94

17:                                               ; preds = %14
  %18 = icmp sgt i32 %3, %4
  %19 = zext nneg i32 %15 to i64
  br label %20

20:                                               ; preds = %17, %90
  %21 = phi i64 [ 0, %17 ], [ %92, %90 ]
  %22 = phi i32 [ 0, %17 ], [ %91, %90 ]
  %23 = getelementptr inbounds ptr, ptr %12, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = icmp ne ptr %24, null
  %26 = and i1 %18, %25
  br i1 %26, label %27, label %90

27:                                               ; preds = %20
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %29 = getelementptr inbounds %struct.MDeformVert, ptr %24, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !63
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 3
  %33 = tail call ptr %28(i64 noundef %32, ptr noundef nonnull @__func__.vgroup_limit_total_subset) #19
  %34 = load i32, ptr %29, align 8, !tbaa !63
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %27, %62
  %37 = phi i64 [ %65, %62 ], [ 0, %27 ]
  %38 = phi i32 [ %66, %62 ], [ %34, %27 ]
  %39 = phi i32 [ %64, %62 ], [ 0, %27 ]
  %40 = phi i32 [ %63, %62 ], [ 0, %27 ]
  %41 = load ptr, ptr %24, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct.MDeformWeight, ptr %41, i64 %37
  %43 = load i32, ptr %42, align 4, !tbaa !66
  %44 = icmp slt i32 %43, %2
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds i8, ptr %1, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !116
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = xor i32 %40, -1
  %52 = add i32 %38, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.MDeformWeight, ptr %33, i64 %53
  %55 = load i64, ptr %42, align 4
  store i64 %55, ptr %54, align 4
  %56 = add nsw i32 %40, 1
  br label %62

57:                                               ; preds = %45, %36
  %58 = sext i32 %39 to i64
  %59 = getelementptr inbounds %struct.MDeformWeight, ptr %33, i64 %58
  %60 = load i64, ptr %42, align 4
  store i64 %60, ptr %59, align 4
  %61 = add nsw i32 %39, 1
  br label %62

62:                                               ; preds = %50, %57
  %63 = phi i32 [ %56, %50 ], [ %40, %57 ]
  %64 = phi i32 [ %39, %50 ], [ %61, %57 ]
  %65 = add nuw nsw i64 %37, 1
  %66 = load i32, ptr %29, align 8, !tbaa !63
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %36, label %69, !llvm.loop !363

69:                                               ; preds = %62, %27
  %70 = phi i32 [ 0, %27 ], [ %63, %62 ]
  %71 = phi i32 [ 0, %27 ], [ %64, %62 ]
  %72 = sub nsw i32 %70, %4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = sext i32 %71 to i64
  %76 = getelementptr inbounds %struct.MDeformWeight, ptr %33, i64 %75
  %77 = sext i32 %70 to i64
  tail call void @qsort(ptr noundef %76, i64 noundef %77, i64 noundef 8, ptr noundef nonnull @inv_cmp_mdef_vert_weights) #19
  %78 = load i32, ptr %29, align 8, !tbaa !63
  %79 = sub nsw i32 %78, %72
  store i32 %79, ptr %29, align 8, !tbaa !63
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  %81 = load ptr, ptr %24, align 8, !tbaa !65
  tail call void %80(ptr noundef %81) #19
  %82 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !79
  %83 = load i32, ptr %29, align 8, !tbaa !63
  %84 = sext i32 %83 to i64
  %85 = shl nsw i64 %84, 3
  %86 = tail call ptr %82(ptr noundef %33, i64 noundef %85, ptr noundef nonnull @__func__.vgroup_limit_total_subset) #19
  store ptr %86, ptr %24, align 8, !tbaa !65
  %87 = add nsw i32 %72, %22
  br label %90

88:                                               ; preds = %69
  %89 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %89(ptr noundef %33) #19
  br label %90

90:                                               ; preds = %88, %74, %20
  %91 = phi i32 [ %22, %20 ], [ %87, %74 ], [ %22, %88 ]
  %92 = add nuw nsw i64 %21, 1
  %93 = icmp eq i64 %92, %19
  br i1 %93, label %94, label %20, !llvm.loop !364

94:                                               ; preds = %90, %14
  %95 = phi i32 [ 0, %14 ], [ %91, %90 ]
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %96(ptr noundef nonnull %12) #19
  br label %97

97:                                               ; preds = %94, %5
  %98 = phi i32 [ %95, %94 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret i32 %98
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef i32 @inv_cmp_mdef_vert_weights(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !PGOFuncName !365 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.MDeformWeight, ptr %0, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !117
  %7 = getelementptr inbounds %struct.MDeformWeight, ptr %1, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !117
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
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 %16
}

; Function Attrs: optsize
declare void @ED_mesh_report_mirror(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ed_vgroup_transfer_weight(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !PGOFuncName !366 {
  %8 = alloca %struct.BVHTreeFromMesh, align 8
  %9 = alloca %struct.BVHTreeFromMesh, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.BVHTreeNearest, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x float], align 16
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #21
  %19 = tail call fastcc zeroext i8 @vertex_group_use_vert_sel(ptr noundef %0) #20, !range !53
  %20 = getelementptr inbounds %struct.bDeformGroup, ptr %2, i64 0, i32 2
  %21 = tail call ptr @defgroup_find_name(ptr noundef %0, ptr noundef nonnull %20) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = tail call ptr @BKE_defgroup_new(ptr noundef %0, ptr noundef nonnull %20) #19
  br label %25

25:                                               ; preds = %23, %7
  %26 = phi ptr [ %24, %23 ], [ %21, %7 ]
  %27 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !318
  %28 = or i64 %27, 4
  %29 = tail call ptr @mesh_get_derived_final(ptr noundef %3, ptr noundef %1, i64 noundef %28) #19
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = call fastcc zeroext i8 @ed_vgroup_dm_parray_alloc(ptr noundef %29, ptr noundef nonnull %10, ptr noundef nonnull %13) #20, !range !53
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.wmOperator, ptr %6, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !197
  tail call void @BKE_report(ptr noundef %36, i32 noundef 32, ptr noundef nonnull @.str.219) #19
  br label %364

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.Mesh, ptr %31, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !88
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = tail call zeroext i8 @ED_vgroup_data_create(ptr noundef nonnull %31) #20, !range !53
  br label %43

43:                                               ; preds = %41, %37
  %44 = call zeroext i8 @ED_vgroup_parray_alloc(ptr noundef nonnull %31, ptr noundef nonnull %11, ptr noundef nonnull %14, i8 noundef zeroext %19) #20, !range !53
  %45 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %46 = tail call i32 @BLI_findindex(ptr noundef nonnull %45, ptr noundef %2) #19
  %47 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %48 = tail call i32 @BLI_findindex(ptr noundef nonnull %47, ptr noundef %26) #19
  %49 = getelementptr inbounds %struct.Mesh, ptr %31, i64 0, i32 15
  %50 = load ptr, ptr %49, align 8, !tbaa !96
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 31
  %52 = load ptr, ptr %51, align 8, !tbaa !367
  %53 = tail call ptr %52(ptr noundef %29) #19
  %54 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %55 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %56 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %54, ptr noundef nonnull %55) #19
  %57 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %18, ptr noundef nonnull %54, ptr noundef nonnull %57) #19
  %58 = icmp eq i32 %5, 1
  br i1 %58, label %59, label %80

59:                                               ; preds = %43
  %60 = getelementptr inbounds %struct.Mesh, ptr %31, i64 0, i32 26
  %61 = load i32, ptr %60, align 8, !tbaa !78
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load ptr, ptr %11, align 8, !tbaa !79
  br label %65

65:                                               ; preds = %63, %75
  %66 = phi ptr [ %77, %75 ], [ %64, %63 ]
  %67 = phi i32 [ %76, %75 ], [ 0, %63 ]
  %68 = load ptr, ptr %66, align 8, !tbaa !79
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = call ptr @defvert_find_index(ptr noundef nonnull %68, i32 noundef %48) #19
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %66, align 8, !tbaa !79
  call void @defvert_remove_group(ptr noundef %74, ptr noundef nonnull %71) #19
  br label %75

75:                                               ; preds = %70, %73, %65
  %76 = add nuw nsw i32 %67, 1
  %77 = getelementptr inbounds ptr, ptr %66, i64 1
  %78 = load i32, ptr %60, align 8, !tbaa !78
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %65, label %80, !llvm.loop !368

80:                                               ; preds = %75, %59, %43
  switch i32 %4, label %351 [
    i32 1, label %81
    i32 2, label %141
    i32 3, label %182
    i32 4, label %267
  ]

81:                                               ; preds = %80
  %82 = icmp eq ptr %0, %1
  %83 = load i32, ptr %14, align 4
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %82, i1 true, i1 %84
  br i1 %85, label %99, label %86

86:                                               ; preds = %81
  %87 = load i32, ptr %13, align 4, !tbaa !81
  %88 = icmp ne i32 %83, %87
  %89 = load ptr, ptr %10, align 8
  %90 = icmp eq ptr %89, null
  %91 = select i1 %88, i1 true, i1 %90
  %92 = load ptr, ptr %11, align 8
  %93 = icmp eq ptr %92, null
  %94 = select i1 %91, i1 true, i1 %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.Mesh, ptr %31, i64 0, i32 26
  %97 = load i32, ptr %96, align 8, !tbaa !78
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %116, label %351

99:                                               ; preds = %86, %81
  br i1 %22, label %100, label %101

100:                                              ; preds = %99
  call void @ED_vgroup_delete(ptr noundef %0, ptr noundef %26) #20
  br label %101

101:                                              ; preds = %100, %99
  %102 = load ptr, ptr %10, align 8, !tbaa !79
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %105(ptr noundef nonnull %102) #19
  br label %106

106:                                              ; preds = %104, %101
  %107 = load ptr, ptr %11, align 8, !tbaa !79
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %110(ptr noundef nonnull %107) #19
  br label %111

111:                                              ; preds = %109, %106
  %112 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 95
  %113 = load ptr, ptr %112, align 8, !tbaa !323
  call void %113(ptr noundef %29) #19
  %114 = getelementptr inbounds %struct.wmOperator, ptr %6, i64 0, i32 8
  %115 = load ptr, ptr %114, align 8, !tbaa !197
  call void @BKE_report(ptr noundef %115, i32 noundef 32, ptr noundef nonnull @.str.220) #19
  br label %364

116:                                              ; preds = %95, %135
  %117 = phi ptr [ %138, %135 ], [ %89, %95 ]
  %118 = phi ptr [ %137, %135 ], [ %92, %95 ]
  %119 = phi i32 [ %136, %135 ], [ 0, %95 ]
  %120 = load ptr, ptr %118, align 8, !tbaa !79
  %121 = icmp eq ptr %120, null
  br i1 %121, label %135, label %122

122:                                              ; preds = %116
  %123 = load ptr, ptr %117, align 8, !tbaa !79
  %124 = call ptr @defvert_find_index(ptr noundef %123, i32 noundef %46) #19
  %125 = icmp eq ptr %124, null
  br i1 %125, label %135, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.MDeformWeight, ptr %124, i64 0, i32 1
  %128 = load float, ptr %127, align 4, !tbaa !117
  %129 = fcmp une float %128, 0.000000e+00
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load ptr, ptr %118, align 8, !tbaa !79
  %132 = call ptr @defvert_verify_index(ptr noundef %131, i32 noundef %48) #19
  %133 = getelementptr inbounds %struct.MDeformWeight, ptr %132, i64 0, i32 1
  %134 = load float, ptr %127, align 4, !tbaa !117
  call fastcc void @vgroup_transfer_weight(ptr noundef nonnull %133, float noundef %134, i32 noundef %5) #20
  br label %135

135:                                              ; preds = %122, %126, %130, %116
  %136 = add nuw nsw i32 %119, 1
  %137 = getelementptr inbounds ptr, ptr %118, i64 1
  %138 = getelementptr inbounds ptr, ptr %117, i64 1
  %139 = load i32, ptr %96, align 8, !tbaa !78
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %116, label %351, !llvm.loop !369

141:                                              ; preds = %80
  %142 = call ptr @bvhtree_from_mesh_verts(ptr noundef nonnull %8, ptr noundef %29, float noundef 0x3E80000000000000, i32 noundef 2, i32 noundef 6) #19
  %143 = getelementptr inbounds %struct.Mesh, ptr %31, i64 0, i32 26
  %144 = load i32, ptr %143, align 8, !tbaa !78
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %349

146:                                              ; preds = %141
  %147 = load ptr, ptr %11, align 8, !tbaa !79
  %148 = getelementptr inbounds %struct.BVHTreeNearest, ptr %12, i64 0, i32 3
  %149 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %8, i64 0, i32 1
  %150 = load ptr, ptr %10, align 8
  br label %151

151:                                              ; preds = %146, %176
  %152 = phi ptr [ %147, %146 ], [ %178, %176 ]
  %153 = phi ptr [ %50, %146 ], [ %179, %176 ]
  %154 = phi i32 [ 0, %146 ], [ %177, %176 ]
  %155 = load ptr, ptr %152, align 8, !tbaa !79
  %156 = icmp eq ptr %155, null
  br i1 %156, label %176, label %157

157:                                              ; preds = %151
  store float 0x47EFFFFFE0000000, ptr %148, align 4, !tbaa !370
  store i32 -1, ptr %12, align 4, !tbaa !372
  call void @mul_v3_m4v3(ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef %153) #19
  %158 = load ptr, ptr %8, align 8, !tbaa !373
  %159 = load ptr, ptr %149, align 8, !tbaa !375
  %160 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %158, ptr noundef nonnull %16, ptr noundef nonnull %12, ptr noundef %159, ptr noundef nonnull %8) #19
  %161 = load i32, ptr %12, align 4, !tbaa !372
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds ptr, ptr %150, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !79
  %165 = call ptr @defvert_find_index(ptr noundef %164, i32 noundef %46) #19
  %166 = icmp eq ptr %165, null
  br i1 %166, label %176, label %167

167:                                              ; preds = %157
  %168 = getelementptr inbounds %struct.MDeformWeight, ptr %165, i64 0, i32 1
  %169 = load float, ptr %168, align 4, !tbaa !117
  %170 = fcmp une float %169, 0.000000e+00
  br i1 %170, label %171, label %176

171:                                              ; preds = %167
  %172 = load ptr, ptr %152, align 8, !tbaa !79
  %173 = call ptr @defvert_verify_index(ptr noundef %172, i32 noundef %48) #19
  %174 = getelementptr inbounds %struct.MDeformWeight, ptr %173, i64 0, i32 1
  %175 = load float, ptr %168, align 4, !tbaa !117
  call fastcc void @vgroup_transfer_weight(ptr noundef nonnull %174, float noundef %175, i32 noundef %5) #20
  br label %176

176:                                              ; preds = %157, %167, %171, %151
  %177 = add nuw nsw i32 %154, 1
  %178 = getelementptr inbounds ptr, ptr %152, i64 1
  %179 = getelementptr inbounds %struct.MVert, ptr %153, i64 1
  %180 = load i32, ptr %143, align 8, !tbaa !78
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %151, label %349, !llvm.loop !376

182:                                              ; preds = %80
  call void @DM_ensure_tessface(ptr noundef %29) #19
  %183 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 33
  %184 = load ptr, ptr %183, align 8, !tbaa !377
  %185 = call ptr %184(ptr noundef %29) #19
  %186 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %9, ptr noundef %29, float noundef 0x3E80000000000000, i32 noundef 2, i32 noundef 6) #19
  %187 = getelementptr inbounds %struct.Mesh, ptr %31, i64 0, i32 26
  %188 = load i32, ptr %187, align 8, !tbaa !78
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %349

190:                                              ; preds = %182
  %191 = load ptr, ptr %11, align 8, !tbaa !79
  %192 = getelementptr inbounds %struct.BVHTreeNearest, ptr %12, i64 0, i32 3
  %193 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %9, i64 0, i32 1
  %194 = load ptr, ptr %10, align 8
  br label %195

195:                                              ; preds = %190, %261
  %196 = phi ptr [ %191, %190 ], [ %263, %261 ]
  %197 = phi ptr [ %50, %190 ], [ %264, %261 ]
  %198 = phi i32 [ 0, %190 ], [ %262, %261 ]
  %199 = load ptr, ptr %196, align 8, !tbaa !79
  %200 = icmp eq ptr %199, null
  br i1 %200, label %261, label %201

201:                                              ; preds = %195
  store float 0x47EFFFFFE0000000, ptr %192, align 4, !tbaa !370
  store i32 -1, ptr %12, align 4, !tbaa !372
  call void @mul_v3_m4v3(ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef %197) #19
  %202 = load ptr, ptr %9, align 8, !tbaa !373
  %203 = load ptr, ptr %193, align 8, !tbaa !375
  %204 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %202, ptr noundef nonnull %16, ptr noundef nonnull %12, ptr noundef %203, ptr noundef nonnull %9) #19
  %205 = load i32, ptr %12, align 4, !tbaa !372
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.MFace, ptr %185, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !378
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.MVert, ptr %53, i64 %209
  %211 = getelementptr inbounds %struct.MFace, ptr %185, i64 %206, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !380
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.MVert, ptr %53, i64 %213
  %215 = getelementptr inbounds %struct.MFace, ptr %185, i64 %206, i32 2
  %216 = load i32, ptr %215, align 4, !tbaa !381
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.MVert, ptr %53, i64 %217
  %219 = call float @normal_tri_v3(ptr noundef nonnull %17, ptr noundef %210, ptr noundef %214, ptr noundef %218) #19
  %220 = load i32, ptr %207, align 4, !tbaa !378
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.MVert, ptr %53, i64 %221
  call void @project_v3_plane(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %222) #19
  %223 = load i32, ptr %207, align 4, !tbaa !378
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.MVert, ptr %53, i64 %224
  %226 = load i32, ptr %211, align 4, !tbaa !380
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.MVert, ptr %53, i64 %227
  %229 = load i32, ptr %215, align 4, !tbaa !381
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.MVert, ptr %53, i64 %230
  %232 = getelementptr inbounds %struct.MFace, ptr %185, i64 %206, i32 3
  %233 = load i32, ptr %232, align 4, !tbaa !382
  %234 = icmp eq i32 %233, 0
  %235 = zext i32 %233 to i64
  %236 = getelementptr inbounds %struct.MVert, ptr %53, i64 %235
  %237 = select i1 %234, ptr null, ptr %236
  call void @interp_weights_face_v3(ptr noundef nonnull %15, ptr noundef %225, ptr noundef %228, ptr noundef %231, ptr noundef %237, ptr noundef nonnull %16) #19
  %238 = load i32, ptr %232, align 4, !tbaa !382
  %239 = icmp eq i32 %238, 0
  %240 = select i1 %239, i64 2, i64 3
  br label %241

241:                                              ; preds = %241, %201
  %242 = phi i64 [ %253, %241 ], [ %240, %201 ]
  %243 = phi float [ %252, %241 ], [ 0.000000e+00, %201 ]
  %244 = getelementptr inbounds i32, ptr %207, i64 %242
  %245 = load i32, ptr %244, align 4, !tbaa !378
  %246 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 %242
  %247 = load float, ptr %246, align 4, !tbaa !303
  %248 = sext i32 %245 to i64
  %249 = getelementptr inbounds ptr, ptr %194, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !79
  %251 = call float @defvert_find_weight(ptr noundef %250, i32 noundef %46) #19
  %252 = call float @llvm.fmuladd.f32(float %247, float %251, float %243)
  %253 = add nsw i64 %242, -1
  %254 = icmp eq i64 %242, 0
  br i1 %254, label %255, label %241, !llvm.loop !383

255:                                              ; preds = %241
  %256 = fcmp ogt float %252, 0.000000e+00
  br i1 %256, label %257, label %261

257:                                              ; preds = %255
  %258 = load ptr, ptr %196, align 8, !tbaa !79
  %259 = call ptr @defvert_verify_index(ptr noundef %258, i32 noundef %48) #19
  %260 = getelementptr inbounds %struct.MDeformWeight, ptr %259, i64 0, i32 1
  call fastcc void @vgroup_transfer_weight(ptr noundef nonnull %260, float noundef %252, i32 noundef %5) #20
  br label %261

261:                                              ; preds = %255, %257, %195
  %262 = add nuw nsw i32 %198, 1
  %263 = getelementptr inbounds ptr, ptr %196, i64 1
  %264 = getelementptr inbounds %struct.MVert, ptr %197, i64 1
  %265 = load i32, ptr %187, align 8, !tbaa !78
  %266 = icmp slt i32 %262, %265
  br i1 %266, label %195, label %349, !llvm.loop !384

267:                                              ; preds = %80
  call void @DM_ensure_tessface(ptr noundef %29) #19
  %268 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 33
  %269 = load ptr, ptr %268, align 8, !tbaa !377
  %270 = call ptr %269(ptr noundef %29) #19
  %271 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %9, ptr noundef %29, float noundef 0x3E80000000000000, i32 noundef 2, i32 noundef 6) #19
  %272 = getelementptr inbounds %struct.Mesh, ptr %31, i64 0, i32 26
  %273 = load i32, ptr %272, align 8, !tbaa !78
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %349

275:                                              ; preds = %267
  %276 = load ptr, ptr %11, align 8, !tbaa !79
  %277 = getelementptr inbounds %struct.BVHTreeNearest, ptr %12, i64 0, i32 3
  %278 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %9, i64 0, i32 1
  %279 = load ptr, ptr %10, align 8
  br label %280

280:                                              ; preds = %275, %343
  %281 = phi ptr [ %276, %275 ], [ %345, %343 ]
  %282 = phi ptr [ %50, %275 ], [ %346, %343 ]
  %283 = phi i32 [ 0, %275 ], [ %344, %343 ]
  %284 = load ptr, ptr %281, align 8, !tbaa !79
  %285 = icmp eq ptr %284, null
  br i1 %285, label %343, label %286

286:                                              ; preds = %280
  store float 0x47EFFFFFE0000000, ptr %277, align 4, !tbaa !370
  store i32 -1, ptr %12, align 4, !tbaa !372
  call void @mul_v3_m4v3(ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef %282) #19
  %287 = load ptr, ptr %9, align 8, !tbaa !373
  %288 = load ptr, ptr %278, align 8, !tbaa !375
  %289 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %287, ptr noundef nonnull %16, ptr noundef nonnull %12, ptr noundef %288, ptr noundef nonnull %9) #19
  %290 = load i32, ptr %12, align 4, !tbaa !372
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.MFace, ptr %270, i64 %291
  %293 = load i32, ptr %292, align 4, !tbaa !378
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.MVert, ptr %53, i64 %294
  %296 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %16, ptr noundef %295) #20
  %297 = getelementptr inbounds %struct.MFace, ptr %270, i64 %291, i32 1
  %298 = load i32, ptr %297, align 4, !tbaa !380
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds %struct.MVert, ptr %53, i64 %299
  %301 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %16, ptr noundef %300) #20
  %302 = getelementptr inbounds %struct.MFace, ptr %270, i64 %291, i32 2
  %303 = load i32, ptr %302, align 4, !tbaa !381
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds %struct.MVert, ptr %53, i64 %304
  %306 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %16, ptr noundef %305) #20
  %307 = getelementptr inbounds %struct.MFace, ptr %270, i64 %291, i32 3
  %308 = load i32, ptr %307, align 4, !tbaa !382
  %309 = icmp eq i32 %308, 0
  %310 = fcmp olt float %296, %301
  %311 = fcmp olt float %296, %306
  %312 = select i1 %310, i1 %311, i1 false
  %313 = fcmp olt float %301, %306
  %314 = select i1 %313, ptr %297, ptr %302
  %315 = select i1 %312, ptr %292, ptr %314
  %316 = load i32, ptr %315, align 4, !tbaa !81
  br i1 %309, label %327, label %317

317:                                              ; preds = %286
  %318 = zext i32 %308 to i64
  %319 = getelementptr inbounds %struct.MVert, ptr %53, i64 %318
  %320 = call fastcc float @len_squared_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %319) #20
  %321 = fcmp olt float %320, %296
  %322 = fcmp olt float %320, %301
  %323 = and i1 %321, %322
  %324 = fcmp olt float %320, %306
  %325 = select i1 %323, i1 %324, i1 false
  %326 = select i1 %325, i32 %308, i32 %316
  br label %327

327:                                              ; preds = %317, %286
  %328 = phi i32 [ %316, %286 ], [ %326, %317 ]
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds ptr, ptr %279, i64 %329
  %331 = load ptr, ptr %330, align 8, !tbaa !79
  %332 = call ptr @defvert_find_index(ptr noundef %331, i32 noundef %46) #19
  %333 = icmp eq ptr %332, null
  br i1 %333, label %343, label %334

334:                                              ; preds = %327
  %335 = getelementptr inbounds %struct.MDeformWeight, ptr %332, i64 0, i32 1
  %336 = load float, ptr %335, align 4, !tbaa !117
  %337 = fcmp une float %336, 0.000000e+00
  br i1 %337, label %338, label %343

338:                                              ; preds = %334
  %339 = load ptr, ptr %281, align 8, !tbaa !79
  %340 = call ptr @defvert_verify_index(ptr noundef %339, i32 noundef %48) #19
  %341 = getelementptr inbounds %struct.MDeformWeight, ptr %340, i64 0, i32 1
  %342 = load float, ptr %335, align 4, !tbaa !117
  call fastcc void @vgroup_transfer_weight(ptr noundef nonnull %341, float noundef %342, i32 noundef %5) #20
  br label %343

343:                                              ; preds = %327, %334, %338, %280
  %344 = add nuw nsw i32 %283, 1
  %345 = getelementptr inbounds ptr, ptr %281, i64 1
  %346 = getelementptr inbounds %struct.MVert, ptr %282, i64 1
  %347 = load i32, ptr %272, align 8, !tbaa !78
  %348 = icmp slt i32 %344, %347
  br i1 %348, label %280, label %349, !llvm.loop !385

349:                                              ; preds = %343, %261, %176, %267, %182, %141
  %350 = phi ptr [ %8, %141 ], [ %9, %182 ], [ %9, %267 ], [ %8, %176 ], [ %9, %261 ], [ %9, %343 ]
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %350) #19
  br label %351

351:                                              ; preds = %135, %349, %95, %80
  %352 = load ptr, ptr %10, align 8, !tbaa !79
  %353 = icmp eq ptr %352, null
  br i1 %353, label %356, label %354

354:                                              ; preds = %351
  %355 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %355(ptr noundef nonnull %352) #19
  br label %356

356:                                              ; preds = %354, %351
  %357 = load ptr, ptr %11, align 8, !tbaa !79
  %358 = icmp eq ptr %357, null
  br i1 %358, label %361, label %359

359:                                              ; preds = %356
  %360 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %360(ptr noundef nonnull %357) #19
  br label %361

361:                                              ; preds = %359, %356
  %362 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 95
  %363 = load ptr, ptr %362, align 8, !tbaa !323
  call void %363(ptr noundef %29) #19
  br label %364

364:                                              ; preds = %361, %111, %34
  %365 = phi i8 [ 1, %361 ], [ 0, %111 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #21
  ret i8 %365
}

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ed_vgroup_dm_parray_alloc(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !386 {
  store i32 0, ptr %2, align 4, !tbaa !81
  store ptr null, ptr %1, align 8, !tbaa !79
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %7 = load ptr, ptr %6, align 8, !tbaa !387
  %8 = tail call ptr %7(ptr noundef nonnull %0, i32 noundef 2) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !388
  %13 = tail call i32 %12(ptr noundef nonnull %0) #19
  store i32 %13, ptr %2, align 4, !tbaa !81
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %15 = sext i32 %13 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call ptr %14(i64 noundef %16, ptr noundef nonnull @.str.2) #19
  store ptr %17, ptr %1, align 8, !tbaa !79
  %18 = icmp sgt i32 %13, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = zext nneg i32 %13 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %26, %21 ]
  %23 = getelementptr inbounds %struct.MDeformVert, ptr %8, i64 %22
  %24 = load ptr, ptr %1, align 8, !tbaa !79
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  store ptr %23, ptr %25, align 8, !tbaa !79
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %20
  br i1 %27, label %28, label %21, !llvm.loop !389

28:                                               ; preds = %21, %3, %5, %10
  %29 = phi i8 [ 1, %10 ], [ 0, %5 ], [ 0, %3 ], [ 1, %21 ]
  ret i8 %29
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @vgroup_transfer_weight(ptr nocapture noundef %0, float noundef %1, i32 noundef %2) unnamed_addr #13 !PGOFuncName !390 {
  switch i32 %2, label %8 [
    i32 1, label %7
    i32 2, label %4
  ]

4:                                                ; preds = %3
  %5 = load float, ptr %0, align 4, !tbaa !303
  %6 = fcmp oeq float %5, 0.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %3
  store float %1, ptr %0, align 4, !tbaa !303
  br label %8

8:                                                ; preds = %7, %3, %4
  ret void
}

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_verts(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @project_v3_plane(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_weights_face_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !391 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #20
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #21
  ret float %4
}

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vgroup_init_remap(ptr noundef %0) unnamed_addr #0 !PGOFuncName !392 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %3 = tail call i32 @BLI_countlist(ptr noundef nonnull %2) #19
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %5 = sext i32 %3 to i64
  %6 = shl nsw i64 %5, 6
  %7 = tail call ptr %4(i64 noundef %6, ptr noundef nonnull @.str.243) #19
  %8 = load ptr, ptr %2, align 8, !tbaa !79
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %16, %10 ], [ %8, %1 ]
  %12 = phi ptr [ %15, %10 ], [ %7, %1 ]
  %13 = getelementptr inbounds %struct.bDeformGroup, ptr %11, i64 0, i32 2
  %14 = tail call ptr @BLI_strncpy(ptr noundef %12, ptr noundef nonnull %13, i64 noundef 64) #19
  %15 = getelementptr inbounds i8, ptr %12, i64 64
  %16 = load ptr, ptr %11, align 8, !tbaa !79
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !393

18:                                               ; preds = %10, %1
  ret ptr %7
}

; Function Attrs: optsize
declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vgroup_sort_name(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !394 {
  %3 = getelementptr inbounds %struct.bDeformGroup, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.bDeformGroup, ptr %1, i64 0, i32 2
  %5 = tail call i32 @BLI_natstrcmp(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_sort_bone_hierarchy(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !PGOFuncName !395 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef %0) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.bArmature, ptr %9, i64 0, i32 2
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %10, %7 ], [ %1, %2 ]
  %13 = getelementptr inbounds %struct.ListBase, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  br label %18

18:                                               ; preds = %16, %25
  %19 = phi ptr [ %14, %16 ], [ %27, %25 ]
  %20 = getelementptr inbounds %struct.Bone, ptr %19, i64 0, i32 5
  %21 = tail call ptr @defgroup_find_name(ptr noundef %0, ptr noundef nonnull %20) #19
  %22 = getelementptr inbounds %struct.Bone, ptr %19, i64 0, i32 4
  tail call fastcc void @vgroup_sort_bone_hierarchy(ptr noundef %0, ptr noundef nonnull %22) #20
  %23 = icmp eq ptr %21, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @BLI_remlink(ptr noundef nonnull %17, ptr noundef nonnull %21) #19
  tail call void @BLI_addhead(ptr noundef nonnull %17, ptr noundef nonnull %21) #19
  br label %25

25:                                               ; preds = %24, %18
  %26 = getelementptr inbounds %struct.Bone, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %18, !llvm.loop !396

29:                                               ; preds = %25, %11, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @vgroup_do_remap(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !397 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %8 = tail call i32 @BLI_countlist(ptr noundef nonnull %7) #19
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !79
  %10 = add nsw i32 %8, 1
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %9(i64 noundef %12, ptr noundef nonnull @.str.243) #19
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  %15 = load ptr, ptr %7, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %3, %17
  %18 = phi i64 [ %24, %17 ], [ 0, %3 ]
  %19 = phi ptr [ %25, %17 ], [ %15, %3 ]
  %20 = phi ptr [ %23, %17 ], [ %1, %3 ]
  %21 = tail call i32 @BLI_findstringindex(ptr noundef nonnull %7, ptr noundef %20, i32 noundef 16) #19
  %22 = getelementptr inbounds i32, ptr %14, i64 %18
  store i32 %21, ptr %22, align 4, !tbaa !81
  %23 = getelementptr inbounds i8, ptr %20, i64 64
  %24 = add nuw i64 %18, 1
  %25 = load ptr, ptr %19, align 8, !tbaa !79
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %17, !llvm.loop !398

27:                                               ; preds = %17, %3
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %29 = load i32, ptr %28, align 8, !tbaa !34
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %63

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %33 = load i16, ptr %32, align 8, !tbaa !50
  %34 = icmp eq i16 %33, 1
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %0) #19
  %37 = load ptr, ptr %36, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct.BMesh, ptr %37, i64 0, i32 24
  %39 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %38, i32 noundef 2) #19
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %84, label %41

41:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %42 = load ptr, ptr %36, align 8, !tbaa !58
  %43 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %42, i8 noundef zeroext 1, ptr noundef null) #20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %41
  %46 = sext i32 %39 to i64
  br label %47

47:                                               ; preds = %45, %55
  %48 = phi ptr [ %43, %45 ], [ %56, %55 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !60
  %50 = getelementptr inbounds i8, ptr %49, i64 %46
  %51 = getelementptr inbounds %struct.MDeformVert, ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !63
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  call void @defvert_remap(ptr noundef nonnull %50, ptr noundef nonnull %14, i32 noundef %8) #19
  br label %55

55:                                               ; preds = %47, %54
  %56 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #20
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %47, !llvm.loop !399

58:                                               ; preds = %55, %41
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %84

59:                                               ; preds = %31
  %60 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !197
  tail call void @BKE_report(ptr noundef %61, i32 noundef 32, ptr noundef nonnull @.str.244) #19
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  tail call void %62(ptr noundef %13) #19
  br label %103

63:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !tbaa !81
  %64 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = call zeroext i8 @ED_vgroup_array_get(ptr noundef %65, ptr noundef nonnull %4, ptr noundef nonnull %6) #20, !range !53
  %67 = load ptr, ptr %4, align 8, !tbaa !79
  %68 = icmp eq ptr %67, null
  %69 = load i32, ptr %6, align 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %83, label %72

72:                                               ; preds = %63, %80
  %73 = phi i32 [ %75, %80 ], [ %69, %63 ]
  %74 = phi ptr [ %81, %80 ], [ %67, %63 ]
  %75 = add nsw i32 %73, -1
  %76 = getelementptr inbounds %struct.MDeformVert, ptr %74, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !63
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  tail call void @defvert_remap(ptr noundef nonnull %74, ptr noundef nonnull %14, i32 noundef %8) #19
  br label %80

80:                                               ; preds = %79, %72
  %81 = getelementptr inbounds %struct.MDeformVert, ptr %74, i64 1
  %82 = icmp eq i32 %75, 0
  br i1 %82, label %83, label %72, !llvm.loop !400

83:                                               ; preds = %80, %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %84

84:                                               ; preds = %35, %58, %83
  %85 = icmp sgt i32 %8, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %84
  %87 = zext nneg i32 %8 to i64
  br label %88

88:                                               ; preds = %86, %88
  %89 = phi i64 [ 0, %86 ], [ %93, %88 ]
  %90 = getelementptr inbounds i32, ptr %14, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !81
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %90, align 4, !tbaa !81
  %93 = add nuw nsw i64 %89, 1
  %94 = icmp eq i64 %93, %87
  br i1 %94, label %95, label %88, !llvm.loop !401

95:                                               ; preds = %88, %84
  store i32 0, ptr %13, align 4, !tbaa !81
  call fastcc void @vgroup_remap_update_users(ptr noundef %0, ptr noundef nonnull %13) #20
  %96 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %97 = load i16, ptr %96, align 2, !tbaa !49
  %98 = zext i16 %97 to i64
  %99 = getelementptr inbounds i32, ptr %13, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !81
  %101 = trunc i32 %100 to i16
  store i16 %101, ptr %96, align 2, !tbaa !49
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %102(ptr noundef nonnull %13) #19
  br label %103

103:                                              ; preds = %95, %59
  %104 = phi i32 [ 4, %95 ], [ 2, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret i32 %104
}

; Function Attrs: optsize
declare i32 @BLI_natstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findstringindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_remap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_vertex_group_accessible(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !402 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %2) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bDeformGroup, ptr %5, i64 0, i32 3
  %9 = load i8, ptr %8, align 8, !tbaa !173
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ @.str.245, %3 ], [ @.str.246, %7 ]
  %14 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !197
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull %13) #19
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i8 [ 1, %7 ], [ 0, %12 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_copy_active_to_sel_single(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !403 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %9, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.BMesh, ptr %12, i64 0, i32 24
  %14 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %13, i32 noundef 2) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %15 = call ptr @ED_mesh_active_dvert_get_em(ptr noundef nonnull %0, ptr noundef nonnull %4) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %103, label %17

17:                                               ; preds = %11
  %18 = call float @defvert_find_weight(ptr noundef nonnull %15, i32 noundef %1) #19
  %19 = load ptr, ptr %9, align 8, !tbaa !58
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %19, i8 noundef zeroext 1, ptr noundef null) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %17
  %23 = sext i32 %14 to i64
  %24 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  br label %25

25:                                               ; preds = %22, %44
  %26 = phi i32 [ 0, %22 ], [ %46, %44 ]
  %27 = phi ptr [ %20, %22 ], [ %45, %44 ]
  %28 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %27, i8 noundef zeroext 1) #20, !range !93
  %29 = icmp eq i8 %28, 0
  %30 = load ptr, ptr %4, align 8
  %31 = icmp eq ptr %27, %30
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr %27, align 8, !tbaa !60
  %35 = getelementptr inbounds i8, ptr %34, i64 %23
  %36 = call ptr @defvert_find_index(ptr noundef %35, i32 noundef %1) #19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.MDeformWeight, ptr %36, i64 0, i32 1
  store float %18, ptr %39, align 4, !tbaa !117
  %40 = load i8, ptr %24, align 1, !tbaa !139
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  call fastcc void @ED_mesh_defvert_mirror_update_em(ptr noundef %0, ptr noundef nonnull %27, i32 noundef -1, i32 noundef %26, i32 noundef %14) #20
  br label %44

44:                                               ; preds = %33, %43, %38, %25
  %45 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #20
  %46 = add nuw nsw i32 %26, 1
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %25, !llvm.loop !404

48:                                               ; preds = %44, %17
  %49 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  %50 = load i8, ptr %49, align 1, !tbaa !139
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %4, align 8, !tbaa !79
  call fastcc void @ED_mesh_defvert_mirror_update_em(ptr noundef %0, ptr noundef %54, i32 noundef -1, i32 noundef -1, i32 noundef %14) #20
  br label %55

55:                                               ; preds = %48, %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  br label %105

56:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %57 = call ptr @ED_mesh_active_dvert_get_ob(ptr noundef nonnull %0, ptr noundef nonnull %5) #19
  %58 = icmp eq ptr %57, null
  br i1 %58, label %104, label %59

59:                                               ; preds = %56
  %60 = call float @defvert_find_weight(ptr noundef nonnull %57, i32 noundef %1) #19
  %61 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 26
  %62 = load i32, ptr %61, align 8, !tbaa !78
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !88
  %67 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 15
  %68 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  br label %69

69:                                               ; preds = %64, %89
  %70 = phi i64 [ 0, %64 ], [ %90, %89 ]
  %71 = phi ptr [ %66, %64 ], [ %91, %89 ]
  %72 = load ptr, ptr %67, align 8, !tbaa !96
  %73 = getelementptr inbounds %struct.MVert, ptr %72, i64 %70, i32 2
  %74 = load i8, ptr %73, align 2, !tbaa !97
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = icmp eq ptr %71, %57
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %89, label %79

79:                                               ; preds = %69
  %80 = call ptr @defvert_find_index(ptr noundef %71, i32 noundef %1) #19
  %81 = icmp eq ptr %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.MDeformWeight, ptr %80, i64 0, i32 1
  store float %60, ptr %83, align 4, !tbaa !117
  %84 = load i8, ptr %68, align 1, !tbaa !139
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = trunc i64 %70 to i32
  call fastcc void @ED_mesh_defvert_mirror_update_ob(ptr noundef %0, i32 noundef -1, i32 noundef %88) #20
  br label %89

89:                                               ; preds = %79, %87, %82, %69
  %90 = add nuw nsw i64 %70, 1
  %91 = getelementptr inbounds %struct.MDeformVert, ptr %71, i64 1
  %92 = load i32, ptr %61, align 8, !tbaa !78
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %69, label %95, !llvm.loop !405

95:                                               ; preds = %89, %59
  %96 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  %97 = load i8, ptr %96, align 1, !tbaa !139
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load i32, ptr %5, align 4, !tbaa !81
  call fastcc void @ED_mesh_defvert_mirror_update_ob(ptr noundef %0, i32 noundef -1, i32 noundef %101) #20
  br label %102

102:                                              ; preds = %95, %100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %105

103:                                              ; preds = %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  br label %105

104:                                              ; preds = %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %105

105:                                              ; preds = %102, %55, %104, %103
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_remove_weight(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !406 {
  %3 = tail call ptr @ED_mesh_active_dvert_get_only(ptr noundef %0) #19
  %4 = tail call ptr @defvert_find_index(ptr noundef %3, i32 noundef %1) #19
  tail call void @defvert_remove_group(ptr noundef %3, ptr noundef %4) #19
  ret void
}

; Function Attrs: optsize
declare ptr @ED_mesh_active_dvert_get_only(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_normalize_active(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !407 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call ptr @ED_mesh_active_dvert_get_em(ptr noundef nonnull %0, ptr noundef nonnull %3) #19
  br label %16

14:                                               ; preds = %2
  %15 = call ptr @ED_mesh_active_dvert_get_ob(ptr noundef nonnull %0, ptr noundef nonnull %4) #19
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %16
  %20 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5) #20
  %21 = load i32, ptr %6, align 4, !tbaa !81
  call void @defvert_normalize_subset(ptr noundef nonnull %17, ptr noundef %20, i32 noundef %21) #19
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %22(ptr noundef %20) #19
  %23 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 46
  %24 = load i8, ptr %23, align 1, !tbaa !139
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  br i1 %11, label %33, label %28

28:                                               ; preds = %27
  %29 = load ptr, ptr %10, align 8, !tbaa !58
  %30 = getelementptr inbounds %struct.BMesh, ptr %29, i64 0, i32 24
  %31 = call i32 @CustomData_get_offset(ptr noundef nonnull %30, i32 noundef 2) #19
  %32 = load ptr, ptr %3, align 8, !tbaa !79
  call fastcc void @ED_mesh_defvert_mirror_update_em(ptr noundef nonnull %0, ptr noundef %32, i32 noundef -1, i32 noundef -1, i32 noundef %31) #20
  br label %35

33:                                               ; preds = %27
  %34 = load i32, ptr %4, align 4, !tbaa !81
  call fastcc void @ED_mesh_defvert_mirror_update_ob(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %34) #20
  br label %35

35:                                               ; preds = %19, %33, %28, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vgroup_copy_active_to_sel(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !408 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %12 = call ptr @ED_vgroup_subset_from_select_type(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %13 = icmp eq ptr %11, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %15 = load ptr, ptr %11, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.BMesh, ptr %15, i64 0, i32 24
  %17 = call i32 @CustomData_get_offset(ptr noundef nonnull %16, i32 noundef 2) #19
  %18 = call ptr @ED_mesh_active_dvert_get_em(ptr noundef nonnull %0, ptr noundef nonnull %6) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %11, align 8, !tbaa !58
  %22 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %21, i8 noundef zeroext 1, ptr noundef null) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %20
  %25 = sext i32 %17 to i64
  %26 = load i32, ptr %3, align 4
  %27 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 46
  br label %28

28:                                               ; preds = %24, %43
  %29 = phi i32 [ 0, %24 ], [ %45, %43 ]
  %30 = phi ptr [ %22, %24 ], [ %44, %43 ]
  %31 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %30, i8 noundef zeroext 1) #20, !range !93
  %32 = icmp eq i8 %31, 0
  %33 = load ptr, ptr %6, align 8
  %34 = icmp eq ptr %30, %33
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %28
  %37 = load ptr, ptr %30, align 8, !tbaa !60
  %38 = getelementptr inbounds i8, ptr %37, i64 %25
  call void @defvert_copy_subset(ptr noundef %38, ptr noundef nonnull %18, ptr noundef %12, i32 noundef %26) #19
  %39 = load i8, ptr %27, align 1, !tbaa !139
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  call fastcc void @ED_mesh_defvert_mirror_update_em(ptr noundef %0, ptr noundef nonnull %30, i32 noundef -1, i32 noundef %29, i32 noundef %17) #20
  br label %43

43:                                               ; preds = %36, %42, %28
  %44 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #20
  %45 = add nuw nsw i32 %29, 1
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %28, !llvm.loop !409

47:                                               ; preds = %43, %20, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br label %84

48:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  %49 = call ptr @ED_mesh_active_dvert_get_ob(ptr noundef nonnull %0, ptr noundef nonnull %7) #19
  %50 = icmp eq ptr %49, null
  br i1 %50, label %83, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 26
  %53 = load i32, ptr %52, align 8, !tbaa !78
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !88
  %58 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 15
  %59 = load i32, ptr %3, align 4
  %60 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 46
  br label %61

61:                                               ; preds = %55, %77
  %62 = phi i64 [ 0, %55 ], [ %78, %77 ]
  %63 = phi ptr [ %57, %55 ], [ %79, %77 ]
  %64 = load ptr, ptr %58, align 8, !tbaa !96
  %65 = getelementptr inbounds %struct.MVert, ptr %64, i64 %62, i32 2
  %66 = load i8, ptr %65, align 2, !tbaa !97
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  %69 = icmp eq ptr %63, %49
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %61
  call void @defvert_copy_subset(ptr noundef %63, ptr noundef nonnull %49, ptr noundef %12, i32 noundef %59) #19
  %72 = load i8, ptr %60, align 1, !tbaa !139
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = trunc i64 %62 to i32
  call fastcc void @ED_mesh_defvert_mirror_update_ob(ptr noundef %0, i32 noundef -1, i32 noundef %76) #20
  br label %77

77:                                               ; preds = %61, %75, %71
  %78 = add nuw nsw i64 %62, 1
  %79 = getelementptr inbounds %struct.MDeformVert, ptr %63, i64 1
  %80 = load i32, ptr %52, align 8, !tbaa !78
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %61, label %83, !llvm.loop !410

83:                                               ; preds = %77, %51, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  br label %84

84:                                               ; preds = %83, %47
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %85(ptr noundef %12) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind }
attributes #22 = { nounwind optsize willreturn memory(read) }

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
!54 = !{!"object_vgroup.c:vgroup_delete_edit_mode"}
!55 = !{!56, !37, i64 272}
!56 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !57, i64 280, !57, i64 480, !57, i64 680, !57, i64 880, !57, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!57 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!58 = !{!59, !37, i64 0}
!59 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !45, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!60 = !{!61, !37, i64 0}
!61 = !{!"BMVert", !62, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!62 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!63 = !{!64, !41, i64 8}
!64 = !{!"MDeformVert", !37, i64 0, !41, i64 8, !41, i64 12}
!65 = !{!64, !37, i64 0}
!66 = !{!67, !41, i64 0}
!67 = !{!"MDeformWeight", !41, i64 0, !44, i64 4}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = distinct !{!70, !69}
!71 = !{!52, !37, i64 200}
!72 = !{!52, !40, i64 128}
!73 = !{!52, !40, i64 130}
!74 = !{!52, !40, i64 132}
!75 = distinct !{!75, !69}
!76 = distinct !{!76, !69}
!77 = !{!35, !37, i64 400}
!78 = !{!56, !41, i64 1280}
!79 = !{!37, !37, i64 0}
!80 = !{!"object_vgroup.c:vgroup_delete_object_mode"}
!81 = !{!41, !41, i64 0}
!82 = distinct !{!82, !69}
!83 = distinct !{!83, !69}
!84 = !{!85, !37, i64 0}
!85 = !{!"bDeformGroup", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 80, !38, i64 81}
!86 = distinct !{!86, !69}
!87 = !{!40, !40, i64 0}
!88 = !{!56, !37, i64 248}
!89 = distinct !{!89, !69}
!90 = distinct !{!90, !69}
!91 = !{!92, !41, i64 0}
!92 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !57, i64 144, !57, i64 344, !57, i64 544, !57, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !43, i64 960, !37, i64 976, !43, i64 984, !37, i64 1000}
!93 = !{i8 0, i8 3}
!94 = distinct !{!94, !69}
!95 = distinct !{!95, !69}
!96 = !{!56, !37, i64 232}
!97 = !{!98, !38, i64 18}
!98 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!99 = distinct !{!99, !69}
!100 = distinct !{!100, !69}
!101 = !{!102, !37, i64 0}
!102 = !{!"EditLatt", !37, i64 0, !41, i64 8, !38, i64 12}
!103 = !{!52, !37, i64 176}
!104 = !{!105, !40, i64 24}
!105 = !{!"BPoint", !38, i64 0, !44, i64 16, !44, i64 20, !40, i64 24, !40, i64 26, !44, i64 28, !44, i64 32}
!106 = distinct !{!106, !69}
!107 = distinct !{!107, !69}
!108 = !{!"object_vgroup.c:BM_iter_new"}
!109 = !{!"object_vgroup.c:_bm_elem_flag_test"}
!110 = !{!62, !38, i64 13}
!111 = !{!"object_vgroup.c:BM_iter_step"}
!112 = !{!113, !37, i64 48}
!113 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!114 = distinct !{!114, !69}
!115 = distinct !{!115, !69}
!116 = !{!38, !38, i64 0}
!117 = !{!67, !44, i64 4}
!118 = distinct !{!118, !69}
!119 = distinct !{!119, !69, !120, !121}
!120 = !{!"llvm.loop.isvectorized", i32 1}
!121 = !{!"llvm.loop.unroll.runtime.disable"}
!122 = !{i64 0, i64 8, !79, i64 8, i64 4, !81, i64 12, i64 4, !81}
!123 = distinct !{!123, !69}
!124 = !{!"object_vgroup.c:vgroup_delete_all"}
!125 = !{!"object_vgroup.c:vgroup_remap_update_users"}
!126 = !{!35, !37, i64 1248}
!127 = !{!128, !40, i64 132}
!128 = !{!"SoftBody", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 25, !40, i64 26, !44, i64 28, !38, i64 32, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !44, i64 128, !40, i64 132, !38, i64 134, !40, i64 198, !44, i64 200, !44, i64 204, !38, i64 208, !41, i64 272, !41, i64 276, !41, i64 280, !40, i64 284, !40, i64 286, !37, i64 288, !41, i64 296, !41, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !40, i64 320, !40, i64 322, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !37, i64 336, !44, i64 344, !44, i64 348, !37, i64 352, !43, i64 360, !37, i64 376, !38, i64 384, !38, i64 396, !38, i64 432, !41, i64 468}
!129 = !{!130, !41, i64 16}
!130 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!131 = !{!132, !37, i64 128}
!132 = !{!"ClothModifierData", !130, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152}
!133 = !{!134, !40, i64 144}
!134 = !{!"ClothSimSettings", !37, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !38, i64 20, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !38, i64 156, !37, i64 160}
!135 = !{!134, !40, i64 142}
!136 = distinct !{!136, !69}
!137 = distinct !{!137, !69}
!138 = distinct !{!138, !69}
!139 = !{!56, !38, i64 1365}
!140 = !{!"object_vgroup.c:ED_mesh_defvert_mirror_update_em"}
!141 = !{!"object_vgroup.c:ED_mesh_defvert_mirror_update_ob"}
!142 = !{!"object_vgroup.c:ED_vgroup_nr_vert_add"}
!143 = !{!"object_vgroup.c:get_vert_def_nr"}
!144 = distinct !{!144, !69}
!145 = distinct !{!145, !69}
!146 = distinct !{!146, !69}
!147 = distinct !{!147, !69}
!148 = distinct !{!148, !69}
!149 = distinct !{!149, !69}
!150 = distinct !{!150, !69}
!151 = distinct !{!151, !69}
!152 = distinct !{!152, !69}
!153 = !{!"object_vgroup.c:dvert_mirror_op"}
!154 = !{!"object_vgroup.c:vgroup_edit_lattice"}
!155 = !{!156, !37, i64 0}
!156 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !157, i64 152, !40, i64 184}
!157 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!158 = !{!156, !37, i64 8}
!159 = !{!156, !37, i64 24}
!160 = !{!156, !37, i64 72}
!161 = !{!156, !37, i64 32}
!162 = !{!156, !40, i64 184}
!163 = !{!"object_vgroup.c:vertex_group_supported_poll"}
!164 = !{!35, !37, i64 24}
!165 = !{!36, !37, i64 24}
!166 = !{!"object_vgroup.c:vertex_group_add_exec"}
!167 = !{!156, !37, i64 88}
!168 = !{!"object_vgroup.c:vertex_group_poll"}
!169 = !{!"object_vgroup.c:vertex_group_remove_exec"}
!170 = !{!171, !37, i64 112}
!171 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!172 = !{!"object_vgroup.c:vertex_group_vert_select_unlocked_poll"}
!173 = !{!85, !38, i64 80}
!174 = !{!"object_vgroup.c:vertex_group_assign_exec"}
!175 = !{!176, !44, i64 32}
!176 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !44, i64 52, !40, i64 56, !38, i64 58, !38, i64 59, !177, i64 64, !179, i64 168, !44, i64 336, !44, i64 340, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 349, !40, i64 350, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !40, i64 464, !40, i64 466, !41, i64 468, !44, i64 472, !44, i64 476, !180, i64 480, !181, i64 608}
!177 = !{!"ImagePaintSettings", !178, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !44, i64 100}
!178 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!179 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !44, i64 128, !44, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!180 = !{!"UnifiedPaintSettings", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !44, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !44, i64 72, !38, i64 76, !41, i64 84, !44, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !44, i64 120, !41, i64 124}
!181 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !38, i64 20, !38, i64 21, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!182 = !{!"object_vgroup.c:vertex_group_vert_select_poll"}
!183 = !{!"object_vgroup.c:vertex_group_assign_new_exec"}
!184 = !{!"object_vgroup.c:vertex_group_remove_from_exec"}
!185 = !{!"object_vgroup.c:vertex_group_select_exec"}
!186 = !{!"object_vgroup.c:vertex_group_deselect_exec"}
!187 = !{!"object_vgroup.c:vertex_group_copy_exec"}
!188 = !{!"object_vgroup.c:vertex_group_levels_exec"}
!189 = !{!"object_vgroup.c:vgroup_operator_subset_select_props"}
!190 = !{!156, !37, i64 104}
!191 = !{!"object_vgroup.c:vertex_group_normalize_exec"}
!192 = !{!"object_vgroup.c:vertex_group_normalize_all_exec"}
!193 = !{!"object_vgroup.c:vertex_group_mesh_poll"}
!194 = !{!"object_vgroup.c:vertex_group_fix_exec"}
!195 = !{!130, !41, i64 20}
!196 = distinct !{!196, !69}
!197 = !{!171, !37, i64 120}
!198 = !{!"object_vgroup.c:vertex_group_lock_exec"}
!199 = !{!"object_vgroup.c:vertex_group_invert_exec"}
!200 = !{!"object_vgroup.c:vertex_group_blend_poll"}
!201 = !{!"object_vgroup.c:vertex_group_blend_exec"}
!202 = !{!"object_vgroup.c:vertex_group_clean_exec"}
!203 = !{!"object_vgroup.c:vertex_group_quantize_exec"}
!204 = !{!"object_vgroup.c:vertex_group_limit_total_exec"}
!205 = !{!"object_vgroup.c:vertex_group_mirror_exec"}
!206 = !{!"object_vgroup.c:vertex_group_copy_to_linked_exec"}
!207 = !{!208, !37, i64 32}
!208 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!209 = distinct !{!209, !69}
!210 = !{!"object_vgroup.c:vertex_group_copy_to_selected_exec"}
!211 = !{!212, !37, i64 32}
!212 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !213, i64 16}
!213 = !{!"PointerRNA", !214, i64 0, !37, i64 8, !37, i64 16}
!214 = !{!"", !37, i64 0}
!215 = distinct !{!215, !69}
!216 = !{!"object_vgroup.c:vertex_group_mesh_supported_poll"}
!217 = !{!"object_vgroup.c:vertex_group_transfer_weight_exec"}
!218 = distinct !{!218, !69}
!219 = distinct !{!219, !69}
!220 = !{!156, !37, i64 48}
!221 = !{!"object_vgroup.c:set_active_group_exec"}
!222 = !{!"object_vgroup.c:vgroup_itemf"}
!223 = !{!224, !41, i64 0}
!224 = !{!"EnumPropertyItem", !41, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !37, i64 32}
!225 = !{!224, !41, i64 16}
!226 = !{!224, !37, i64 8}
!227 = !{!224, !37, i64 24}
!228 = distinct !{!228, !69}
!229 = !{!"object_vgroup.c:vertex_group_sort_exec"}
!230 = !{i32 2, i32 5}
!231 = !{!"object_vgroup.c:vgroup_move_exec"}
!232 = !{!85, !37, i64 8}
!233 = !{!"object_vgroup.c:vertex_group_vert_select_mesh_poll"}
!234 = !{!"object_vgroup.c:vertex_weight_paste_exec"}
!235 = !{!"object_vgroup.c:vertex_weight_delete_exec"}
!236 = !{!"object_vgroup.c:vertex_weight_set_active_exec"}
!237 = !{!"object_vgroup.c:vertex_weight_normalize_active_vertex_exec"}
!238 = !{!176, !38, i64 447}
!239 = !{!"object_vgroup.c:vertex_weight_copy_exec"}
!240 = !{!"object_vgroup.c:BM_iter_init"}
!241 = !{!113, !38, i64 60}
!242 = !{!113, !37, i64 40}
!243 = !{!92, !37, i64 32}
!244 = !{!92, !37, i64 40}
!245 = !{!92, !37, i64 56}
!246 = !{!"object_vgroup.c:mesh_defvert_mirror_update_internal"}
!247 = !{!"object_vgroup.c:vgroup_delete_update_users"}
!248 = distinct !{!248, !69, !120, !121}
!249 = distinct !{!249, !69, !120, !121}
!250 = !{!"object_vgroup.c:BLI_listbase_is_empty"}
!251 = !{!43, !37, i64 0}
!252 = !{!"object_vgroup.c:vgroup_active_remove_verts"}
!253 = distinct !{!253, !69}
!254 = distinct !{!254, !69}
!255 = distinct !{!255, !69}
!256 = !{!"object_vgroup.c:vgroup_delete"}
!257 = !{!"object_vgroup.c:vgroup_assign_verts"}
!258 = distinct !{!258, !69}
!259 = distinct !{!259, !69}
!260 = distinct !{!260, !69}
!261 = !{!"object_vgroup.c:vgroup_remove_verts"}
!262 = distinct !{!262, !69}
!263 = !{!"object_vgroup.c:vgroup_select_verts"}
!264 = distinct !{!264, !69}
!265 = distinct !{!265, !69}
!266 = !{!52, !41, i64 148}
!267 = distinct !{!267, !69}
!268 = !{!"object_vgroup.c:vgroup_duplicate"}
!269 = distinct !{!269, !69}
!270 = !{!"object_vgroup.c:vgroup_levels_subset"}
!271 = distinct !{!271, !69}
!272 = distinct !{!272, !69}
!273 = !{!"object_vgroup.c:vertex_group_use_vert_sel"}
!274 = !{!"object_vgroup.c:rna_vertex_group_with_single_itemf"}
!275 = !{!"object_vgroup.c:rna_vertex_group_select_itemf"}
!276 = !{!"object_vgroup.c:vgroup_normalize"}
!277 = distinct !{!277, !69}
!278 = distinct !{!278, !69}
!279 = !{!"object_vgroup.c:max_ff"}
!280 = !{!"object_vgroup.c:vgroup_normalize_all"}
!281 = distinct !{!281, !69}
!282 = !{!"object_vgroup.c:vgroup_fix"}
!283 = !{!284, !37, i64 1144}
!284 = !{!"DerivedMesh", !57, i64 0, !57, i64 200, !57, i64 400, !57, i64 600, !57, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!285 = !{i64 0, i64 12, !116, i64 12, i64 6, !116, i64 18, i64 1, !116, i64 19, i64 1, !116}
!286 = distinct !{!286, !69}
!287 = distinct !{!287, !69}
!288 = !{!"object_vgroup.c:getSurroundingVerts"}
!289 = !{!56, !37, i64 168}
!290 = !{!56, !41, i64 1296}
!291 = !{!292, !41, i64 4}
!292 = !{!"MPoly", !41, i64 0, !41, i64 4, !40, i64 8, !38, i64 10, !38, i64 11}
!293 = !{!56, !37, i64 184}
!294 = !{!292, !41, i64 0}
!295 = !{!296, !41, i64 0}
!296 = !{!"MLoop", !41, i64 0, !41, i64 4}
!297 = distinct !{!297, !69}
!298 = distinct !{!298, !69}
!299 = distinct !{!299, !69}
!300 = !{!"object_vgroup.c:getSingleCoordinate"}
!301 = distinct !{!301, !69}
!302 = !{!"object_vgroup.c:sub_v3_v3v3"}
!303 = !{!44, !44, i64 0}
!304 = !{!"object_vgroup.c:normalize_v3"}
!305 = !{!"object_vgroup.c:dot_v3v3"}
!306 = !{!"object_vgroup.c:moveCloserToDistanceFromPlane"}
!307 = distinct !{!307, !69}
!308 = distinct !{!308, !69}
!309 = distinct !{!309, !69}
!310 = distinct !{!310, !69}
!311 = distinct !{!311, !69}
!312 = !{!"object_vgroup.c:zero_v3"}
!313 = !{!"object_vgroup.c:add_v3_v3"}
!314 = !{!"object_vgroup.c:mul_v3_fl"}
!315 = !{!"object_vgroup.c:normalize_v3_v3"}
!316 = !{!"object_vgroup.c:mul_v3_v3fl"}
!317 = !{!"object_vgroup.c:dm_deform_recalc"}
!318 = !{!45, !45, i64 0}
!319 = !{!"object_vgroup.c:copy_v3_v3"}
!320 = !{!"object_vgroup.c:dm_deform_clear"}
!321 = !{!35, !37, i64 1288}
!322 = !{!284, !41, i64 1020}
!323 = !{!284, !37, i64 1680}
!324 = !{!"object_vgroup.c:getVerticalAndHorizontalChange"}
!325 = !{!"object_vgroup.c:len_v3v3"}
!326 = !{!"object_vgroup.c:len_v3"}
!327 = !{!"object_vgroup.c:vgroup_lock_all"}
!328 = distinct !{!328, !69}
!329 = distinct !{!329, !69}
!330 = !{!"object_vgroup.c:vgroup_invert_subset"}
!331 = distinct !{!331, !69}
!332 = distinct !{!332, !69}
!333 = !{!"object_vgroup.c:vgroup_blend_subset"}
!334 = !{!56, !37, i64 240}
!335 = !{!56, !41, i64 1284}
!336 = !{!337, !37, i64 0}
!337 = !{!"LinkNode", !37, i64 0, !37, i64 8}
!338 = !{!337, !37, i64 8}
!339 = distinct !{!339, !69}
!340 = !{!341, !41, i64 8}
!341 = !{!"MeshElemMap", !37, i64 0, !41, i64 8}
!342 = !{!341, !37, i64 0}
!343 = !{!344, !41, i64 0}
!344 = !{!"MEdge", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !40, i64 10}
!345 = !{!344, !41, i64 4}
!346 = distinct !{!346, !69}
!347 = distinct !{!347, !69}
!348 = distinct !{!348, !69}
!349 = distinct !{!349, !69}
!350 = distinct !{!350, !69}
!351 = !{!"object_vgroup.c:BM_edge_other_vert"}
!352 = !{!353, !37, i64 24}
!353 = !{!"BMEdge", !62, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !354, i64 48, !354, i64 64}
!354 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!355 = !{!353, !37, i64 32}
!356 = !{!"object_vgroup.c:_bm_elem_index_get"}
!357 = !{!62, !41, i64 8}
!358 = !{!"object_vgroup.c:vgroup_clean_subset"}
!359 = !{!"object_vgroup.c:vgroup_quantize_subset"}
!360 = distinct !{!360, !69}
!361 = distinct !{!361, !69}
!362 = !{!"object_vgroup.c:vgroup_limit_total_subset"}
!363 = distinct !{!363, !69}
!364 = distinct !{!364, !69}
!365 = !{!"object_vgroup.c:inv_cmp_mdef_vert_weights"}
!366 = !{!"object_vgroup.c:ed_vgroup_transfer_weight"}
!367 = !{!284, !37, i64 1168}
!368 = distinct !{!368, !69}
!369 = distinct !{!369, !69}
!370 = !{!371, !44, i64 28}
!371 = !{!"BVHTreeNearest", !41, i64 0, !38, i64 4, !38, i64 16, !44, i64 28, !41, i64 32}
!372 = !{!371, !41, i64 0}
!373 = !{!374, !37, i64 0}
!374 = !{!"BVHTreeFromMesh", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !38, i64 48, !38, i64 49, !38, i64 50, !44, i64 52, !37, i64 56, !38, i64 64}
!375 = !{!374, !37, i64 8}
!376 = distinct !{!376, !69}
!377 = !{!284, !37, i64 1184}
!378 = !{!379, !41, i64 0}
!379 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !38, i64 18, !38, i64 19}
!380 = !{!379, !41, i64 4}
!381 = !{!379, !41, i64 8}
!382 = !{!379, !41, i64 12}
!383 = distinct !{!383, !69}
!384 = distinct !{!384, !69}
!385 = distinct !{!385, !69}
!386 = !{!"object_vgroup.c:ed_vgroup_dm_parray_alloc"}
!387 = !{!284, !37, i64 1320}
!388 = !{!284, !37, i64 1104}
!389 = distinct !{!389, !69}
!390 = !{!"object_vgroup.c:vgroup_transfer_weight"}
!391 = !{!"object_vgroup.c:len_squared_v3v3"}
!392 = !{!"object_vgroup.c:vgroup_init_remap"}
!393 = distinct !{!393, !69}
!394 = !{!"object_vgroup.c:vgroup_sort_name"}
!395 = !{!"object_vgroup.c:vgroup_sort_bone_hierarchy"}
!396 = distinct !{!396, !69}
!397 = !{!"object_vgroup.c:vgroup_do_remap"}
!398 = distinct !{!398, !69}
!399 = distinct !{!399, !69}
!400 = distinct !{!400, !69}
!401 = distinct !{!401, !69}
!402 = !{!"object_vgroup.c:check_vertex_group_accessible"}
!403 = !{!"object_vgroup.c:vgroup_copy_active_to_sel_single"}
!404 = distinct !{!404, !69}
!405 = distinct !{!405, !69}
!406 = !{!"object_vgroup.c:vgroup_remove_weight"}
!407 = !{!"object_vgroup.c:vgroup_normalize_active"}
!408 = !{!"object_vgroup.c:vgroup_copy_active_to_sel"}
!409 = distinct !{!409, !69}
!410 = distinct !{!410, !69}
