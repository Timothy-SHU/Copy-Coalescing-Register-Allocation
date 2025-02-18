; ModuleID = 'blender/source/blender/editors/object/object_modifier.c'
source_filename = "blender/source/blender/editors/object/object_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleCacheKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float, i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
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
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.MVertSkin = type { [3 x float], i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.MeshElemMap = type { ptr, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.MeshDeformModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, i16, [2 x i16], ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, [3 x float], float, [4 x [4 x float]], ptr, ptr, ptr }
%struct.ExplodeModifierData = type { %struct.ModifierData, ptr, i16, i16, float, [64 x i8] }
%struct.OceanModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, float, float, i32, i32, [1024 x i8], [64 x i8], i8, i8, i8, i8, i16, i16, i32, float, float, i32 }
%struct.OceanCache = type { ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, i32, i32, i32, i32, i32, i32 }
%struct.OceanBakeJob = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.LaplacianDeformModifierData = type { %struct.ModifierData, [64 x i8], i32, i32, ptr, ptr, i16, [3 x i16] }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }

@.str = private unnamed_addr constant [41 x i8] c"Modifiers cannot be added to object '%s'\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Only one modifier of this type is allowed\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Modifier '%s' not in object '%s'\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Cannot move above a modifier requiring original data\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Cannot move beyond a non-deforming modifier\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Modifiers cannot be applied in edit mode\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Modifiers cannot be applied to multi-user data\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"Constructive modifier cannot be applied to multi-res data in sculpt mode\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"Applied modifier was not first, result may not be as expected\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Add Modifier\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Add a modifier to the active object\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"OBJECT_OT_modifier_add\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@modifier_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Remove Modifier\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Remove a modifier from the active object\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_modifier_remove\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Move Up Modifier\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Move modifier up in the stack\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_modifier_move_up\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Move Down Modifier\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Move modifier down in the stack\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"OBJECT_OT_modifier_move_down\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"Apply Modifier\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"Apply modifier and remove from the stack\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_modifier_apply\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"apply_as\00", align 1
@modifier_apply_as_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.101, i32 0, ptr @.str.102, ptr @.str.103 }, %struct.EnumPropertyItem { i32 2, ptr @.str.104, i32 0, ptr @.str.105, ptr @.str.106 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [9 x i8] c"Apply as\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"How to apply the modifier to the geometry\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Convert Modifier\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"Convert particles to a mesh object\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_modifier_convert\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Copy Modifier\00", align 1
@.str.34 = private unnamed_addr constant [53 x i8] c"Duplicate modifier at the same position in the stack\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_modifier_copy\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"Delete Higher Levels\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"Deletes the higher resolution mesh, potential loss of detail\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"OBJECT_OT_multires_higher_levels_delete\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"Multires Subdivide\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"Add a new level of subdivision\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"OBJECT_OT_multires_subdivide\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"Multires Reshape\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"Copy vertex coordinates from other object\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_multires_reshape\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"Multires Save External\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"Save displacements to an external file\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"OBJECT_OT_multires_external_save\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"Multires Pack External\00", align 1
@.str.49 = private unnamed_addr constant [41 x i8] c"Pack displacements from an external file\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"OBJECT_OT_multires_external_pack\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"Multires Apply Base\00", align 1
@.str.52 = private unnamed_addr constant [54 x i8] c"Modify the base mesh to conform to the displaced mesh\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_multires_base_apply\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"Skin Root Mark\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"Mark selected vertices as roots\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_skin_root_mark\00", align 1
@OBJECT_OT_skin_loose_mark_clear.action_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.57, i32 0, ptr @.str.58, ptr @.str.59 }, %struct.EnumPropertyItem { i32 1, ptr @.str.60, i32 0, ptr @.str.61, ptr @.str.62 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.57 = private unnamed_addr constant [5 x i8] c"MARK\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"Mark\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"Mark selected vertices as loose\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"Set selected vertices as not loose\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"Skin Mark/Clear Loose\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"Mark/clear selected vertices as loose\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"OBJECT_OT_skin_loose_mark_clear\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"Skin Radii Equalize\00", align 1
@.str.69 = private unnamed_addr constant [56 x i8] c"Make skin radii of selected vertices equal on each axis\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_skin_radii_equalize\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"Skin Armature Create\00", align 1
@.str.72 = private unnamed_addr constant [50 x i8] c"Create an armature that parallels the skin layout\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"OBJECT_OT_skin_armature_create\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"Mesh Deform Bind\00", align 1
@.str.75 = private unnamed_addr constant [42 x i8] c"Bind mesh to cage in mesh deform modifier\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_meshdeform_bind\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"Explode Refresh\00", align 1
@.str.78 = private unnamed_addr constant [37 x i8] c"Refresh data in the Explode modifier\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_explode_refresh\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"Bake Ocean\00", align 1
@.str.81 = private unnamed_addr constant [37 x i8] c"Bake an image sequence of ocean data\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_ocean_bake\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"Free\00", align 1
@.str.85 = private unnamed_addr constant [41 x i8] c"Free the bake, rather than generating it\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"Laplacian Deform Bind\00", align 1
@.str.87 = private unnamed_addr constant [49 x i8] c"Bind mesh to system in laplacian deform modifier\00", align 1
@.str.88 = private unnamed_addr constant [31 x i8] c"OBJECT_OT_laplaciandeform_bind\00", align 1
@.str.89 = private unnamed_addr constant [37 x i8] c"Modifier is disabled, skipping apply\00", align 1
@.str.90 = private unnamed_addr constant [50 x i8] c"Only deforming modifiers can be applied to shapes\00", align 1
@.str.91 = private unnamed_addr constant [55 x i8] c"Modifier is disabled or returned error, skipping apply\00", align 1
@.str.92 = private unnamed_addr constant [43 x i8] c"Cannot apply modifier for this object type\00", align 1
@.str.93 = private unnamed_addr constant [53 x i8] c"Modifier cannot be applied to a mesh with shape keys\00", align 1
@.str.94 = private unnamed_addr constant [49 x i8] c"Multires modifier returned error, skipping apply\00", align 1
@.str.95 = private unnamed_addr constant [40 x i8] c"Modifier returned error, skipping apply\00", align 1
@CD_MASK_MESH = external local_unnamed_addr constant i64, align 8
@.str.96 = private unnamed_addr constant [45 x i8] c"Cannot apply constructive modifiers on curve\00", align 1
@.str.97 = private unnamed_addr constant [72 x i8] c"Applied modifier only changed CV points, not tessellated/bevel vertices\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.98 = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@RNA_Modifier = external global %struct.StructRNA, align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"Modifier\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"Name of the modifier to edit\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"Object Data\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c"Apply modifier to the object's data\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"SHAPE\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"New Shape\00", align 1
@.str.106 = private unnamed_addr constant [57 x i8] c"Apply deform-only modifier to a new shape on this object\00", align 1
@RNA_MultiresModifier = external global %struct.StructRNA, align 1
@.str.107 = private unnamed_addr constant [57 x i8] c"Reshape can work only with higher levels of subdivisions\00", align 1
@.str.108 = private unnamed_addr constant [56 x i8] c"Second selected mesh object required to copy shape from\00", align 1
@.str.109 = private unnamed_addr constant [48 x i8] c"Objects do not have the same number of vertices\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"relative_path\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.112 = private unnamed_addr constant [9 x i8] c"//%s.btx\00", align 1
@RNA_SkinModifier = external global %struct.StructRNA, align 1
@__func__.skin_root_mark_exec = private unnamed_addr constant [20 x i8] c"skin_root_mark_exec\00", align 1
@.str.113 = private unnamed_addr constant [34 x i8] c"Mesh '%s' has no skin vertex data\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.114 = private unnamed_addr constant [14 x i8] c"edbo armature\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"edge_visited\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"Bone.%.2d\00", align 1
@RNA_MeshDeformModifier = external global %struct.StructRNA, align 1
@RNA_ExplodeModifier = external global %struct.StructRNA, align 1
@RNA_OceanModifier = external global %struct.StructRNA, align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.118 = private unnamed_addr constant [15 x i8] c"foam bake time\00", align 1
@.str.119 = private unnamed_addr constant [17 x i8] c"Ocean Simulation\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"ocean bake job\00", align 1
@RNA_LaplacianDeformModifier = external global %struct.StructRNA, align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_object_modifier_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @modifierType_getInfo(i32 noundef %5) #7
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !34
  switch i16 %9, label %10 [
    i16 1, label %12
    i16 2, label %12
    i16 3, label %12
    i16 4, label %12
    i16 22, label %12
  ]

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str, ptr noundef nonnull %11) #7
  br label %82

12:                                               ; preds = %6, %6, %6, %6, %6
  %13 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @modifiers_findByType(ptr noundef %3, i32 noundef %5) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @BKE_report(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.1) #7
  br label %82

21:                                               ; preds = %17, %12
  %22 = icmp eq i32 %5, 19
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = tail call ptr @object_add_particle_system(ptr noundef %2, ptr noundef %3, ptr noundef %4) #7
  br label %80

25:                                               ; preds = %21
  %26 = tail call ptr @modifier_new(i32 noundef %5) #7
  %27 = load i32, ptr %13, align 8, !tbaa !46
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 26
  br i1 %29, label %43, label %31

31:                                               ; preds = %25, %35
  %32 = phi ptr [ %33, %35 ], [ %30, %25 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ModifierData, ptr %33, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !49
  %38 = tail call ptr @modifierType_getInfo(i32 noundef %37) #7
  %39 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !51
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %31, label %42, !llvm.loop !52

42:                                               ; preds = %31, %35
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %30, ptr noundef %33, ptr noundef %26) #7
  br label %44

43:                                               ; preds = %25
  tail call void @BLI_addtail(ptr noundef nonnull %30, ptr noundef %26) #7
  br label %44

44:                                               ; preds = %43, %42
  %45 = icmp eq ptr %4, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.ModifierData, ptr %26, i64 0, i32 6
  %48 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %47, ptr noundef nonnull %4, i64 noundef 64) #7
  br label %49

49:                                               ; preds = %46, %44
  %50 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 26
  tail call void @modifier_unique_name(ptr noundef nonnull %50, ptr noundef %26) #7
  switch i32 %5, label %80 [
    i32 10, label %51
    i32 23, label %60
    i32 30, label %69
    i32 29, label %70
    i32 42, label %77
  ]

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 111
  %53 = load ptr, ptr %52, align 8, !tbaa !55
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = tail call ptr @sbNew(ptr noundef %2) #7
  store ptr %56, ptr %52, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 104
  %58 = load i16, ptr %57, align 2, !tbaa !56
  %59 = or i16 %58, 6
  store i16 %59, ptr %57, align 2, !tbaa !56
  br label %80

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %62 = load ptr, ptr %61, align 8, !tbaa !57
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = tail call ptr @object_add_collision_fields(i32 noundef 0) #7
  store ptr %65, ptr %61, align 8, !tbaa !57
  br label %66

66:                                               ; preds = %64, %60
  %67 = load ptr, ptr %61, align 8, !tbaa !57
  %68 = getelementptr inbounds %struct.PartDeflect, ptr %67, i64 0, i32 1
  store i16 1, ptr %68, align 4, !tbaa !58
  tail call void @DAG_relations_tag_update(ptr noundef %1) #7
  br label %80

69:                                               ; preds = %49
  tail call void @DAG_relations_tag_update(ptr noundef %1) #7
  br label %80

70:                                               ; preds = %49
  tail call void @multiresModifier_set_levels_from_disps(ptr noundef %26, ptr noundef %3) #7
  %71 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %72 = load i32, ptr %71, align 8, !tbaa !60
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @BKE_sculpt_mask_layers_ensure(ptr noundef %3, ptr noundef %26) #7
  br label %80

77:                                               ; preds = %49
  %78 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %79 = load ptr, ptr %78, align 8, !tbaa !61
  tail call void @BKE_mesh_ensure_skin_customdata(ptr noundef %79) #7
  br label %80

80:                                               ; preds = %49, %55, %51, %69, %77, %70, %75, %66, %23
  %81 = phi ptr [ %24, %23 ], [ %26, %51 ], [ %26, %55 ], [ %26, %66 ], [ %26, %69 ], [ %26, %75 ], [ %26, %70 ], [ %26, %77 ], [ %26, %49 ]
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #7
  br label %82

82:                                               ; preds = %80, %20, %10
  %83 = phi ptr [ null, %20 ], [ %81, %80 ], [ null, %10 ]
  ret ptr %83
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @object_add_particle_system(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @modifier_new(i32 noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @sbNew(ptr noundef) local_unnamed_addr #2

declare ptr @object_add_collision_fields(i32 noundef) local_unnamed_addr #2

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

declare void @multiresModifier_set_levels_from_disps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_sculpt_mask_layers_ensure(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_ensure_skin_customdata(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_object_iter_other(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !62
  %10 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 5
  %11 = load i16, ptr %10, align 2, !tbaa !63
  %12 = shl i16 %11, 6
  %13 = ashr i16 %12, 15
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %9, %14
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %47

17:                                               ; preds = %5
  %18 = icmp ne i8 %2, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  %24 = icmp sle i32 %15, %20
  %25 = or i1 %23, %24
  br i1 %25, label %51, label %26

26:                                               ; preds = %17, %41
  %27 = phi ptr [ %43, %41 ], [ %22, %17 ]
  %28 = phi i32 [ %42, %41 ], [ %20, %17 ]
  %29 = icmp ne ptr %27, %1
  %30 = or i1 %18, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !61
  %34 = load ptr, ptr %6, align 8, !tbaa !61
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = tail call zeroext i8 %3(ptr noundef nonnull %27, ptr noundef %4) #7
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = add nsw i32 %28, 1
  br label %41

41:                                               ; preds = %31, %39, %26
  %42 = phi i32 [ %40, %39 ], [ %28, %31 ], [ %28, %26 ]
  %43 = load ptr, ptr %27, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  %45 = icmp sge i32 %42, %15
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %51, label %26, !llvm.loop !64

47:                                               ; preds = %5
  %48 = icmp eq i8 %2, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  %50 = tail call zeroext i8 %3(ptr noundef %1, ptr noundef %4) #7
  br label %51

51:                                               ; preds = %36, %41, %17, %47, %49
  %52 = phi i8 [ %50, %49 ], [ 0, %47 ], [ 0, %17 ], [ 0, %41 ], [ 1, %36 ]
  ret i8 %52
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_object_multires_update_totlevels_cb(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !65
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %13
  %8 = phi ptr [ %14, %13 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !49
  %11 = icmp eq i32 %10, 29
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @multires_set_tot_level(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %3) #7
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #7
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !66

16:                                               ; preds = %13, %2
  ret i8 0
}

declare void @multires_set_tot_level(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_object_modifier_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !tbaa !67
  %6 = call fastcc zeroext i8 @object_modifier_remove(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !range !68
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 6
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull %9, ptr noundef nonnull %10) #7
  br label %12

11:                                               ; preds = %4
  tail call void @DAG_id_tag_update(ptr noundef %2, i16 noundef signext 2) #7
  tail call void @DAG_relations_tag_update(ptr noundef %1) #7
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i8 [ 1, %11 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @object_modifier_remove(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %6 = tail call i32 @BLI_findindex(ptr noundef nonnull %5, ptr noundef %2) #7
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %172, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !49
  switch i32 %10, label %161 [
    i32 19, label %11
    i32 10, label %16
    i32 23, label %22
    i32 30, label %29
    i32 29, label %30
    i32 42, label %90
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %13 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  tail call void @BLI_remlink(ptr noundef nonnull %12, ptr noundef %14) #7
  %15 = load ptr, ptr %13, align 8, !tbaa !69
  tail call void @psys_free(ptr noundef %1, ptr noundef %15) #7
  store ptr null, ptr %13, align 8, !tbaa !69
  br label %161

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = icmp eq ptr %18, null
  br i1 %19, label %161, label %20

20:                                               ; preds = %16
  tail call void @sbFree(ptr noundef nonnull %18) #7
  store ptr null, ptr %17, align 8, !tbaa !55
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  store i16 0, ptr %21, align 2, !tbaa !56
  br label %161

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 110
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.PartDeflect, ptr %24, i64 0, i32 1
  store i16 0, ptr %27, align 4, !tbaa !58
  br label %28

28:                                               ; preds = %26, %22
  store i8 1, ptr %3, align 1, !tbaa !67
  br label %161

29:                                               ; preds = %8
  store i8 1, ptr %3, align 1, !tbaa !67
  br label %161

30:                                               ; preds = %8
  %31 = load ptr, ptr %5, align 8, !tbaa !48
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %30, %41
  %34 = phi i1 [ %43, %41 ], [ %32, %30 ]
  %35 = phi ptr [ %42, %41 ], [ %31, %30 ]
  %36 = icmp eq ptr %35, %2
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ModifierData, ptr %35, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !49
  %40 = icmp eq i32 %39, 29
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %33
  %42 = load ptr, ptr %35, align 8, !tbaa !48
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %33, !llvm.loop !71

44:                                               ; preds = %37
  br i1 %34, label %45, label %161

45:                                               ; preds = %41, %44, %30
  %46 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !61
  %48 = getelementptr inbounds %struct.ID, ptr %47, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !62
  %50 = getelementptr inbounds %struct.ID, ptr %47, i64 0, i32 5
  %51 = load i16, ptr %50, align 2, !tbaa !63
  %52 = shl i16 %51, 6
  %53 = ashr i16 %52, 15
  %54 = sext i16 %53 to i32
  %55 = add nsw i32 %49, %54
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %87

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = icmp eq ptr %59, null
  br i1 %60, label %87, label %61

61:                                               ; preds = %57, %81
  %62 = phi ptr [ %83, %81 ], [ %59, %57 ]
  %63 = phi i32 [ %82, %81 ], [ 1, %57 ]
  %64 = icmp eq ptr %62, %1
  br i1 %64, label %81, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 19
  %67 = load ptr, ptr %66, align 8, !tbaa !61
  %68 = icmp eq ptr %67, %47
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 26
  br label %71

71:                                               ; preds = %75, %69
  %72 = phi ptr [ %70, %69 ], [ %73, %75 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !48
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ModifierData, ptr %73, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !49
  %78 = icmp eq i32 %77, 29
  br i1 %78, label %161, label %71, !llvm.loop !71

79:                                               ; preds = %71
  %80 = add nsw i32 %63, 1
  br label %81

81:                                               ; preds = %79, %65, %61
  %82 = phi i32 [ %80, %79 ], [ %63, %65 ], [ %63, %61 ]
  %83 = load ptr, ptr %62, align 8, !tbaa !48
  %84 = icmp eq ptr %83, null
  %85 = icmp sge i32 %82, %55
  %86 = select i1 %84, i1 true, i1 %85
  br i1 %86, label %87, label %61, !llvm.loop !64

87:                                               ; preds = %81, %57, %45
  %88 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %89 = load ptr, ptr %88, align 8, !tbaa !61
  tail call void @multires_customdata_delete(ptr noundef %89) #7
  br label %161

90:                                               ; preds = %8
  %91 = load ptr, ptr %5, align 8, !tbaa !48
  %92 = icmp eq ptr %91, null
  br i1 %92, label %105, label %93

93:                                               ; preds = %90, %101
  %94 = phi i1 [ %103, %101 ], [ %92, %90 ]
  %95 = phi ptr [ %102, %101 ], [ %91, %90 ]
  %96 = icmp eq ptr %95, %2
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.ModifierData, ptr %95, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !49
  %100 = icmp eq i32 %99, 42
  br i1 %100, label %104, label %101

101:                                              ; preds = %97, %93
  %102 = load ptr, ptr %95, align 8, !tbaa !48
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %93, !llvm.loop !71

104:                                              ; preds = %97
  br i1 %94, label %105, label %161

105:                                              ; preds = %101, %104, %90
  %106 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %107 = load ptr, ptr %106, align 8, !tbaa !61
  %108 = getelementptr inbounds %struct.ID, ptr %107, i64 0, i32 6
  %109 = load i32, ptr %108, align 4, !tbaa !62
  %110 = getelementptr inbounds %struct.ID, ptr %107, i64 0, i32 5
  %111 = load i16, ptr %110, align 2, !tbaa !63
  %112 = shl i16 %111, 6
  %113 = ashr i16 %112, 15
  %114 = sext i16 %113 to i32
  %115 = add nsw i32 %109, %114
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %147

117:                                              ; preds = %105
  %118 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %119 = load ptr, ptr %118, align 8, !tbaa !48
  %120 = icmp eq ptr %119, null
  br i1 %120, label %147, label %121

121:                                              ; preds = %117, %141
  %122 = phi ptr [ %143, %141 ], [ %119, %117 ]
  %123 = phi i32 [ %142, %141 ], [ 1, %117 ]
  %124 = icmp eq ptr %122, %1
  br i1 %124, label %141, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 19
  %127 = load ptr, ptr %126, align 8, !tbaa !61
  %128 = icmp eq ptr %127, %107
  br i1 %128, label %129, label %141

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 26
  br label %131

131:                                              ; preds = %135, %129
  %132 = phi ptr [ %130, %129 ], [ %133, %135 ]
  %133 = load ptr, ptr %132, align 8, !tbaa !48
  %134 = icmp eq ptr %133, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.ModifierData, ptr %133, i64 0, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !49
  %138 = icmp eq i32 %137, 42
  br i1 %138, label %161, label %131, !llvm.loop !71

139:                                              ; preds = %131
  %140 = add nsw i32 %123, 1
  br label %141

141:                                              ; preds = %139, %125, %121
  %142 = phi i32 [ %140, %139 ], [ %123, %125 ], [ %123, %121 ]
  %143 = load ptr, ptr %122, align 8, !tbaa !48
  %144 = icmp eq ptr %143, null
  %145 = icmp sge i32 %142, %115
  %146 = select i1 %144, i1 true, i1 %145
  br i1 %146, label %147, label %121, !llvm.loop !64

147:                                              ; preds = %141, %117, %105
  %148 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %149 = load ptr, ptr %148, align 8, !tbaa !61
  %150 = getelementptr inbounds %struct.Mesh, ptr %149, i64 0, i32 20
  %151 = load ptr, ptr %150, align 8, !tbaa !72
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = load ptr, ptr %151, align 8, !tbaa !75
  %155 = getelementptr inbounds %struct.BMesh, ptr %154, i64 0, i32 24
  tail call void @BM_data_layer_free(ptr noundef %154, ptr noundef nonnull %155, i32 noundef 36) #7
  br label %161

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.Mesh, ptr %149, i64 0, i32 21
  %158 = getelementptr inbounds %struct.Mesh, ptr %149, i64 0, i32 26
  %159 = load i32, ptr %158, align 8, !tbaa !77
  %160 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %157, i32 noundef 36, i32 noundef %159) #7
  br label %161

161:                                              ; preds = %135, %75, %104, %44, %156, %153, %8, %20, %16, %29, %87, %28, %11
  %162 = load i32, ptr %9, align 8, !tbaa !49
  switch i32 %162, label %171 [
    i32 10, label %163
    i32 22, label %163
  ]

163:                                              ; preds = %161, %161
  %164 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %165 = load ptr, ptr %164, align 8, !tbaa !78
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %169 = load i32, ptr %168, align 8, !tbaa !60
  %170 = and i32 %169, -33
  store i32 %170, ptr %168, align 8, !tbaa !60
  br label %171

171:                                              ; preds = %161, %167, %163
  tail call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef %2) #7
  tail call void @modifier_free(ptr noundef %2) #7
  br label %172

172:                                              ; preds = %4, %171
  %173 = phi i8 [ 1, %171 ], [ 0, %4 ]
  ret i8 %173
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_modifier_clear(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = call fastcc zeroext i8 @object_modifier_remove(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %3), !range !68
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %7, !llvm.loop !81

12:                                               ; preds = %7
  tail call void @DAG_id_tag_update(ptr noundef %1, i16 noundef signext 2) #7
  tail call void @DAG_relations_tag_update(ptr noundef %0) #7
  br label %13

13:                                               ; preds = %2, %12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_object_modifier_move_up(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !49
  %10 = tail call ptr @modifierType_getInfo(i32 noundef %9) #7
  %11 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !51
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %24, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %4, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.ModifierData, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !49
  %18 = tail call ptr @modifierType_getInfo(i32 noundef %17) #7
  %19 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  tail call void @BKE_report(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %27

24:                                               ; preds = %14, %7
  %25 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  tail call void @BLI_remlink(ptr noundef nonnull %25, ptr noundef %2) #7
  %26 = load ptr, ptr %4, align 8, !tbaa !82
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %25, ptr noundef %26, ptr noundef %2) #7
  br label %27

27:                                               ; preds = %3, %24, %23
  %28 = phi i32 [ 0, %23 ], [ 1, %24 ], [ 1, %3 ]
  ret i32 %28
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_object_modifier_move_down(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !80
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = tail call ptr @modifierType_getInfo(i32 noundef %8) #7
  %10 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %2, align 8, !tbaa !80
  %16 = getelementptr inbounds %struct.ModifierData, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !49
  %18 = tail call ptr @modifierType_getInfo(i32 noundef %17) #7
  %19 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !51
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  tail call void @BKE_report(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.4) #7
  br label %26

23:                                               ; preds = %14, %6
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  tail call void @BLI_remlink(ptr noundef nonnull %24, ptr noundef nonnull %2) #7
  %25 = load ptr, ptr %2, align 8, !tbaa !80
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %24, ptr noundef %25, ptr noundef nonnull %2) #7
  br label %26

26:                                               ; preds = %3, %23, %22
  %27 = phi i32 [ 0, %22 ], [ 1, %23 ], [ 1, %3 ]
  ret i32 %27
}

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_object_modifier_convert(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ModifierData, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !49
  %8 = icmp eq i32 %7, 19
  br i1 %8, label %9, label %211

9:                                                ; preds = %5
  %10 = icmp eq ptr %3, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !60
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %211

16:                                               ; preds = %11, %9
  %17 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %4, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.ParticleSettings, ptr %20, i64 0, i32 21
  %22 = load i16, ptr %21, align 8, !tbaa !85
  %23 = icmp eq i16 %22, 6
  br i1 %23, label %24, label %211

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = icmp eq ptr %26, null
  br i1 %27, label %211, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 29
  %30 = load i32, ptr %29, align 4, !tbaa !88
  %31 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 30
  %32 = load i32, ptr %31, align 8, !tbaa !89
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %20, i64 0, i32 15
  %36 = load i32, ptr %35, align 8, !tbaa !90
  %37 = and i32 %36, 256
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 0, i32 %30
  br label %40

40:                                               ; preds = %34, %28
  %41 = phi i32 [ %30, %28 ], [ %39, %34 ]
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = zext nneg i32 %41 to i64
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi i64 [ 0, %43 ], [ %59, %45 ]
  %47 = phi i32 [ 0, %43 ], [ %58, %45 ]
  %48 = phi i32 [ 0, %43 ], [ %56, %45 ]
  %49 = getelementptr inbounds ptr, ptr %26, i64 %46
  %50 = load ptr, ptr %49, align 8, !tbaa !48
  %51 = getelementptr inbounds %struct.ParticleCacheKey, ptr %50, i64 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !91
  %53 = icmp sgt i32 %52, 0
  %54 = add nuw nsw i32 %52, 1
  %55 = select i1 %53, i32 %54, i32 0
  %56 = add nsw i32 %55, %48
  %57 = tail call i32 @llvm.smax.i32(i32 %52, i32 0)
  %58 = add nuw nsw i32 %57, %47
  %59 = add nuw nsw i64 %46, 1
  %60 = icmp eq i64 %59, %44
  br i1 %60, label %61, label %45, !llvm.loop !93

61:                                               ; preds = %45, %40
  %62 = phi i32 [ 0, %40 ], [ %56, %45 ]
  %63 = phi i32 [ 0, %40 ], [ %58, %45 ]
  %64 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !94
  %66 = icmp sgt i32 %32, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = zext nneg i32 %32 to i64
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ 0, %67 ], [ %83, %69 ]
  %71 = phi i32 [ %63, %67 ], [ %82, %69 ]
  %72 = phi i32 [ %62, %67 ], [ %80, %69 ]
  %73 = getelementptr inbounds ptr, ptr %65, i64 %70
  %74 = load ptr, ptr %73, align 8, !tbaa !48
  %75 = getelementptr inbounds %struct.ParticleCacheKey, ptr %74, i64 0, i32 5
  %76 = load i32, ptr %75, align 4, !tbaa !91
  %77 = icmp sgt i32 %76, 0
  %78 = add nuw nsw i32 %76, 1
  %79 = select i1 %77, i32 %78, i32 0
  %80 = add nsw i32 %79, %72
  %81 = tail call i32 @llvm.smax.i32(i32 %76, i32 0)
  %82 = add nuw nsw i32 %81, %71
  %83 = add nuw nsw i64 %70, 1
  %84 = icmp eq i64 %83, %68
  br i1 %84, label %85, label %69, !llvm.loop !95

85:                                               ; preds = %69, %61
  %86 = phi i32 [ %62, %61 ], [ %80, %69 ]
  %87 = phi i32 [ %63, %61 ], [ %82, %69 ]
  %88 = icmp eq i32 %86, 0
  br i1 %88, label %211, label %89

89:                                               ; preds = %85
  %90 = tail call ptr @BKE_object_add(ptr noundef %1, ptr noundef %2, i32 noundef 1) #7
  %91 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 19
  %92 = load ptr, ptr %91, align 8, !tbaa !61
  %93 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 26
  store i32 %86, ptr %93, align 8, !tbaa !77
  %94 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 27
  store i32 %87, ptr %94, align 4, !tbaa !96
  %95 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 21
  %96 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %95, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %86) #7
  %97 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 15
  store ptr %96, ptr %97, align 8, !tbaa !97
  %98 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 22
  %99 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %98, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %87) #7
  %100 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 16
  store ptr %99, ptr %100, align 8, !tbaa !98
  %101 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 23
  %102 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %101, i32 noundef 4, i32 noundef 1, ptr noundef null, i32 noundef 0) #7
  %103 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 12
  store ptr %102, ptr %103, align 8, !tbaa !99
  %104 = load ptr, ptr %97, align 8, !tbaa !97
  %105 = load ptr, ptr %100, align 8, !tbaa !98
  %106 = load ptr, ptr %25, align 8, !tbaa !87
  %107 = icmp sgt i32 %41, 0
  br i1 %107, label %108, label %156

108:                                              ; preds = %89
  %109 = zext nneg i32 %41 to i64
  br label %110

110:                                              ; preds = %108, %150
  %111 = phi i64 [ 0, %108 ], [ %154, %150 ]
  %112 = phi i32 [ 0, %108 ], [ %153, %150 ]
  %113 = phi ptr [ %105, %108 ], [ %152, %150 ]
  %114 = phi ptr [ %104, %108 ], [ %151, %150 ]
  %115 = getelementptr inbounds ptr, ptr %106, i64 %111
  %116 = load ptr, ptr %115, align 8, !tbaa !48
  %117 = getelementptr inbounds %struct.ParticleCacheKey, ptr %116, i64 0, i32 5
  %118 = load i32, ptr %117, align 4, !tbaa !91
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %150, label %120

120:                                              ; preds = %110, %143
  %121 = phi i32 [ %147, %143 ], [ %112, %110 ]
  %122 = phi i32 [ %145, %143 ], [ 0, %110 ]
  %123 = phi ptr [ %144, %143 ], [ %113, %110 ]
  %124 = phi ptr [ %148, %143 ], [ %114, %110 ]
  %125 = phi ptr [ %146, %143 ], [ %116, %110 ]
  %126 = load float, ptr %125, align 4, !tbaa !100
  store float %126, ptr %124, align 4, !tbaa !100
  %127 = getelementptr inbounds float, ptr %125, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !100
  %129 = getelementptr inbounds float, ptr %124, i64 1
  store float %128, ptr %129, align 4, !tbaa !100
  %130 = getelementptr inbounds float, ptr %125, i64 2
  %131 = load float, ptr %130, align 4, !tbaa !100
  %132 = getelementptr inbounds float, ptr %124, i64 2
  store float %131, ptr %132, align 4, !tbaa !100
  %133 = icmp eq i32 %122, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %120
  %135 = add nsw i32 %121, -1
  store i32 %135, ptr %123, align 4, !tbaa !101
  %136 = getelementptr inbounds %struct.MEdge, ptr %123, i64 0, i32 1
  store i32 %121, ptr %136, align 4, !tbaa !103
  %137 = getelementptr inbounds %struct.MEdge, ptr %123, i64 0, i32 4
  store i16 162, ptr %137, align 2, !tbaa !104
  %138 = getelementptr inbounds %struct.MEdge, ptr %123, i64 1
  br label %143

139:                                              ; preds = %120
  %140 = getelementptr inbounds %struct.MVert, ptr %124, i64 0, i32 2
  %141 = load i8, ptr %140, align 2, !tbaa !105
  %142 = or i8 %141, 1
  store i8 %142, ptr %140, align 2, !tbaa !105
  br label %143

143:                                              ; preds = %134, %139
  %144 = phi ptr [ %138, %134 ], [ %123, %139 ]
  %145 = add nuw i32 %122, 1
  %146 = getelementptr inbounds %struct.ParticleCacheKey, ptr %125, i64 1
  %147 = add nsw i32 %121, 1
  %148 = getelementptr inbounds %struct.MVert, ptr %124, i64 1
  %149 = icmp eq i32 %122, %118
  br i1 %149, label %150, label %120, !llvm.loop !107

150:                                              ; preds = %143, %110
  %151 = phi ptr [ %114, %110 ], [ %148, %143 ]
  %152 = phi ptr [ %113, %110 ], [ %144, %143 ]
  %153 = phi i32 [ %112, %110 ], [ %147, %143 ]
  %154 = add nuw nsw i64 %111, 1
  %155 = icmp eq i64 %154, %109
  br i1 %155, label %156, label %110, !llvm.loop !108

156:                                              ; preds = %150, %89
  %157 = phi ptr [ %104, %89 ], [ %151, %150 ]
  %158 = phi ptr [ %105, %89 ], [ %152, %150 ]
  %159 = phi i32 [ 0, %89 ], [ %153, %150 ]
  %160 = load ptr, ptr %64, align 8, !tbaa !94
  %161 = icmp sgt i32 %32, 0
  br i1 %161, label %162, label %210

162:                                              ; preds = %156
  %163 = zext nneg i32 %32 to i64
  br label %164

164:                                              ; preds = %162, %204
  %165 = phi i64 [ 0, %162 ], [ %208, %204 ]
  %166 = phi i32 [ %159, %162 ], [ %207, %204 ]
  %167 = phi ptr [ %158, %162 ], [ %206, %204 ]
  %168 = phi ptr [ %157, %162 ], [ %205, %204 ]
  %169 = getelementptr inbounds ptr, ptr %160, i64 %165
  %170 = load ptr, ptr %169, align 8, !tbaa !48
  %171 = getelementptr inbounds %struct.ParticleCacheKey, ptr %170, i64 0, i32 5
  %172 = load i32, ptr %171, align 4, !tbaa !91
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %204, label %174

174:                                              ; preds = %164, %197
  %175 = phi i32 [ %201, %197 ], [ %166, %164 ]
  %176 = phi i32 [ %199, %197 ], [ 0, %164 ]
  %177 = phi ptr [ %198, %197 ], [ %167, %164 ]
  %178 = phi ptr [ %202, %197 ], [ %168, %164 ]
  %179 = phi ptr [ %200, %197 ], [ %170, %164 ]
  %180 = load float, ptr %179, align 4, !tbaa !100
  store float %180, ptr %178, align 4, !tbaa !100
  %181 = getelementptr inbounds float, ptr %179, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !100
  %183 = getelementptr inbounds float, ptr %178, i64 1
  store float %182, ptr %183, align 4, !tbaa !100
  %184 = getelementptr inbounds float, ptr %179, i64 2
  %185 = load float, ptr %184, align 4, !tbaa !100
  %186 = getelementptr inbounds float, ptr %178, i64 2
  store float %185, ptr %186, align 4, !tbaa !100
  %187 = icmp eq i32 %176, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %174
  %189 = add nsw i32 %175, -1
  store i32 %189, ptr %177, align 4, !tbaa !101
  %190 = getelementptr inbounds %struct.MEdge, ptr %177, i64 0, i32 1
  store i32 %175, ptr %190, align 4, !tbaa !103
  %191 = getelementptr inbounds %struct.MEdge, ptr %177, i64 0, i32 4
  store i16 162, ptr %191, align 2, !tbaa !104
  %192 = getelementptr inbounds %struct.MEdge, ptr %177, i64 1
  br label %197

193:                                              ; preds = %174
  %194 = getelementptr inbounds %struct.MVert, ptr %178, i64 0, i32 2
  %195 = load i8, ptr %194, align 2, !tbaa !105
  %196 = or i8 %195, 1
  store i8 %196, ptr %194, align 2, !tbaa !105
  br label %197

197:                                              ; preds = %188, %193
  %198 = phi ptr [ %192, %188 ], [ %177, %193 ]
  %199 = add nuw i32 %176, 1
  %200 = getelementptr inbounds %struct.ParticleCacheKey, ptr %179, i64 1
  %201 = add nsw i32 %175, 1
  %202 = getelementptr inbounds %struct.MVert, ptr %178, i64 1
  %203 = icmp eq i32 %176, %172
  br i1 %203, label %204, label %174, !llvm.loop !109

204:                                              ; preds = %197, %164
  %205 = phi ptr [ %168, %164 ], [ %202, %197 ]
  %206 = phi ptr [ %167, %164 ], [ %198, %197 ]
  %207 = phi i32 [ %166, %164 ], [ %201, %197 ]
  %208 = add nuw nsw i64 %165, 1
  %209 = icmp eq i64 %208, %163
  br i1 %209, label %210, label %164, !llvm.loop !110

210:                                              ; preds = %204, %156
  tail call void @DAG_relations_tag_update(ptr noundef %1) #7
  br label %211

211:                                              ; preds = %85, %16, %24, %11, %5, %210
  %212 = phi i32 [ 1, %210 ], [ 0, %5 ], [ 0, %11 ], [ 0, %24 ], [ 0, %16 ], [ 0, %85 ]
  ret i32 %212
}

declare ptr @BKE_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_object_modifier_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.5) #7
  br label %162

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !62
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.6) #7
  br label %162

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %20 = load i32, ptr %19, align 8, !tbaa !60
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @find_multires_modifier_before(ptr noundef %1, ptr noundef %3) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = tail call zeroext i8 @modifier_isSameTopology(ptr noundef %3) #7
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.7) #7
  br label %162

30:                                               ; preds = %26, %23, %18
  %31 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 26
  %32 = load ptr, ptr %31, align 8, !tbaa !79
  %33 = icmp eq ptr %32, %3
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @BKE_report(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.8) #7
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !130
  %38 = or i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !130
  %39 = icmp eq i32 %4, 2
  %40 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !49
  %42 = tail call ptr @modifierType_getInfo(i32 noundef %41) #7
  %43 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 7
  store ptr %1, ptr %43, align 8, !tbaa !131
  %44 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %42, i64 0, i32 15
  %45 = load ptr, ptr %44, align 8, !tbaa !132
  %46 = icmp eq ptr %45, null
  br i1 %39, label %47, label %82

47:                                               ; preds = %35
  br i1 %46, label %51, label %48

48:                                               ; preds = %47
  %49 = tail call zeroext i8 %45(ptr noundef %3, i32 noundef 0) #7
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %48, %47
  %52 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !34
  %54 = icmp eq i16 %53, 1
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load ptr, ptr %12, align 8, !tbaa !61
  %57 = getelementptr inbounds %struct.Mesh, ptr %56, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !133
  %59 = tail call zeroext i8 @modifier_isSameTopology(ptr noundef %3) #7
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %42, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !51
  %64 = icmp eq i32 %63, 5
  br i1 %64, label %80, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @mesh_create_derived_for_modifier(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #7
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = icmp eq ptr %58, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  %71 = tail call ptr @BKE_key_add(ptr noundef %56) #7
  store ptr %71, ptr %57, align 8, !tbaa !133
  %72 = getelementptr inbounds %struct.Key, ptr %71, i64 0, i32 9
  store i16 1, ptr %72, align 8, !tbaa !134
  %73 = tail call ptr @BKE_keyblock_add(ptr noundef %71, ptr noundef null) #7
  tail call void @BKE_key_convert_from_mesh(ptr noundef %56, ptr noundef %73) #7
  br label %74

74:                                               ; preds = %70, %68
  %75 = phi ptr [ %71, %70 ], [ %58, %68 ]
  %76 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 6
  %77 = tail call ptr @BKE_keyblock_add(ptr noundef %75, ptr noundef nonnull %76) #7
  tail call void @DM_to_meshkey(ptr noundef nonnull %66, ptr noundef %56, ptr noundef %77) #7
  %78 = getelementptr inbounds %struct.DerivedMesh, ptr %66, i64 0, i32 95
  %79 = load ptr, ptr %78, align 8, !tbaa !136
  tail call void %79(ptr noundef nonnull %66) #7
  br label %161

80:                                               ; preds = %51, %65, %55, %61, %48
  %81 = phi ptr [ @.str.89, %48 ], [ @.str.90, %61 ], [ @.str.90, %55 ], [ @.str.91, %65 ], [ @.str.92, %51 ]
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull %81) #7
  store i32 %37, ptr %36, align 4, !tbaa !130
  br label %162

82:                                               ; preds = %35
  br i1 %46, label %87, label %83

83:                                               ; preds = %82
  %84 = tail call zeroext i8 %45(ptr noundef %3, i32 noundef 0) #7
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.89) #7
  br label %160

87:                                               ; preds = %83, %82
  %88 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %89 = load i16, ptr %88, align 8, !tbaa !34
  switch i16 %89, label %144 [
    i16 1, label %90
    i16 2, label %130
    i16 3, label %130
  ]

90:                                               ; preds = %87
  %91 = load ptr, ptr %12, align 8, !tbaa !61
  %92 = tail call ptr @find_multires_modifier_before(ptr noundef %1, ptr noundef %3) #7
  %93 = getelementptr inbounds %struct.Mesh, ptr %91, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !133
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %42, i64 0, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !51
  %99 = icmp eq i32 %98, 5
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.93) #7
  br label %160

101:                                              ; preds = %96, %90
  %102 = load i32, ptr %40, align 8, !tbaa !49
  %103 = icmp eq i32 %102, 29
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  tail call void @multires_force_update(ptr noundef %2) #7
  br label %105

105:                                              ; preds = %104, %101
  %106 = icmp eq ptr %92, null
  br i1 %106, label %119, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.MultiresModifierData, ptr %92, i64 0, i32 4
  %109 = load i8, ptr %108, align 1, !tbaa !138
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %42, i64 0, i32 3
  %113 = load i32, ptr %112, align 4, !tbaa !51
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = tail call i32 @multiresModifier_reshapeFromDeformMod(ptr noundef %1, ptr noundef nonnull %92, ptr noundef %2, ptr noundef %3) #7
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %145

118:                                              ; preds = %115
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.94) #7
  br label %160

119:                                              ; preds = %111, %107, %105
  %120 = tail call ptr @mesh_create_derived_for_modifier(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1) #7
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.95) #7
  br label %160

123:                                              ; preds = %119
  %124 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !140
  tail call void @DM_to_mesh(ptr noundef nonnull %120, ptr noundef %91, ptr noundef %2, i64 noundef %124) #7
  %125 = getelementptr inbounds %struct.DerivedMesh, ptr %120, i64 0, i32 95
  %126 = load ptr, ptr %125, align 8, !tbaa !136
  tail call void %126(ptr noundef nonnull %120) #7
  %127 = load i32, ptr %40, align 8, !tbaa !49
  %128 = icmp eq i32 %127, 29
  br i1 %128, label %129, label %145

129:                                              ; preds = %123
  tail call void @multires_customdata_delete(ptr noundef %91) #7
  br label %145

130:                                              ; preds = %87, %87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %131 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %42, i64 0, i32 3
  %132 = load i32, ptr %131, align 4, !tbaa !51
  %133 = and i32 %132, -2
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.96) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %160

136:                                              ; preds = %130
  %137 = load ptr, ptr %12, align 8, !tbaa !61
  tail call void @BKE_report(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.97) #7
  %138 = getelementptr inbounds %struct.Curve, ptr %137, i64 0, i32 3
  %139 = call ptr @BKE_curve_nurbs_vertexCos_get(ptr noundef nonnull %138, ptr noundef nonnull %6) #7
  %140 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %42, i64 0, i32 6
  %141 = load ptr, ptr %140, align 8, !tbaa !141
  %142 = load i32, ptr %6, align 4, !tbaa !65
  call void %141(ptr noundef %3, ptr noundef %2, ptr noundef null, ptr noundef %139, i32 noundef %142, i32 noundef 0) #7
  call void @BK_curve_nurbs_vertexCos_apply(ptr noundef nonnull %138, ptr noundef %139) #7
  %143 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %143(ptr noundef %139) #7
  call void @DAG_id_tag_update(ptr noundef %2, i16 noundef signext 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  br label %145

144:                                              ; preds = %87
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.92) #7
  br label %160

145:                                              ; preds = %136, %129, %123, %115
  %146 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 109
  %147 = load ptr, ptr %146, align 8, !tbaa !142
  %148 = icmp eq ptr %147, null
  br i1 %148, label %161, label %149

149:                                              ; preds = %145, %157
  %150 = phi ptr [ %158, %157 ], [ %147, %145 ]
  %151 = getelementptr inbounds %struct.ParticleSystem, ptr %150, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !83
  %153 = getelementptr inbounds %struct.ParticleSettings, ptr %152, i64 0, i32 7
  %154 = load i16, ptr %153, align 8, !tbaa !143
  %155 = icmp eq i16 %154, 2
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  call void @psys_apply_hair_lattice(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %150) #7
  br label %157

157:                                              ; preds = %156, %149
  %158 = load ptr, ptr %150, align 8, !tbaa !144
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %149, !llvm.loop !145

160:                                              ; preds = %100, %118, %122, %135, %144, %86
  store i32 %37, ptr %36, align 4, !tbaa !130
  br label %162

161:                                              ; preds = %157, %145, %74
  call void @BLI_remlink(ptr noundef nonnull %31, ptr noundef %3) #7
  call void @modifier_free(ptr noundef %3) #7
  br label %162

162:                                              ; preds = %161, %160, %80, %29, %17, %10
  %163 = phi i32 [ 0, %10 ], [ 0, %17 ], [ 0, %29 ], [ 1, %161 ], [ 0, %80 ], [ 0, %160 ]
  ret i32 %163
}

declare ptr @find_multires_modifier_before(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @modifier_isSameTopology(ptr noundef) local_unnamed_addr #2

declare void @modifier_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_object_modifier_copy(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = tail call ptr @modifier_new(i32 noundef %5) #7
  tail call void @modifier_copyData(ptr noundef %2, ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %6) #7
  tail call void @modifier_unique_name(ptr noundef nonnull %7, ptr noundef %6) #7
  ret i32 1
}

declare void @modifier_copyData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_modifier_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_add_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @modifier_type_items, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #7
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @modifier_add_itemf) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !156
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.12) #7
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  %11 = tail call ptr @ED_object_modifier_add(ptr noundef %10, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null, i32 noundef %8)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %5) #7
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 4, %13 ], [ 2, %2 ]
  ret i32 %15
}

declare i32 @ED_operator_object_active_editable(ptr noundef) #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @modifier_add_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store ptr null, ptr %5, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr getelementptr inbounds ([0 x %struct.EnumPropertyItem], ptr @modifier_type_items, i64 0, i64 0, i32 1), align 8, !tbaa !160
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %9, %34
  %13 = phi i64 [ %36, %34 ], [ 0, %9 ]
  %14 = phi ptr [ %39, %34 ], [ %10, %9 ]
  %15 = phi ptr [ %37, %34 ], [ @modifier_type_items, %9 ]
  %16 = phi ptr [ %35, %34 ], [ null, %9 ]
  %17 = load i8, ptr %14, align 1, !tbaa !67
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %15, align 8, !tbaa !162
  %21 = call ptr @modifierType_getInfo(i32 noundef %20) #7
  %22 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i32, ptr %15, align 8, !tbaa !162
  %28 = call zeroext i8 @BKE_object_support_modifier_type_check(ptr noundef nonnull %7, i32 noundef %27) #7
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %16, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %16) #7
  br label %33

33:                                               ; preds = %32, %30
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %15) #7
  br label %34

34:                                               ; preds = %12, %26, %19, %33
  %35 = phi ptr [ %16, %19 ], [ null, %33 ], [ %16, %26 ], [ %15, %12 ]
  %36 = add nuw i64 %13, 1
  %37 = getelementptr inbounds [0 x %struct.EnumPropertyItem], ptr @modifier_type_items, i64 0, i64 %36
  %38 = getelementptr inbounds [0 x %struct.EnumPropertyItem], ptr @modifier_type_items, i64 0, i64 %36, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !160
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %12, !llvm.loop !163

41:                                               ; preds = %34, %9
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  store i8 1, ptr %3, align 1, !tbaa !67
  %42 = load ptr, ptr %5, align 8, !tbaa !48
  br label %43

43:                                               ; preds = %4, %41
  %44 = phi ptr [ %42, %41 ], [ @modifier_type_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret ptr %44
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_modifier_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @modifier_remove_invoke, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_remove_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_modifier_poll, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_remove_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @modifier_remove_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %7 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef nonnull %4) #7
  %10 = call ptr @modifiers_findByName(ptr noundef %7, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  %11 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !60
  %13 = icmp eq ptr %10, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !tbaa !67
  %17 = call fastcc zeroext i8 @object_modifier_remove(ptr noundef %5, ptr noundef %7, ptr noundef nonnull %10, ptr noundef nonnull %3), !range !68
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ModifierData, ptr %10, i64 0, i32 6
  %21 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull %20, ptr noundef nonnull %21) #7
  br label %23

22:                                               ; preds = %14
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #7
  call void @DAG_relations_tag_update(ptr noundef %5) #7
  br label %23

23:                                               ; preds = %19, %22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br i1 %18, label %40, label %24

24:                                               ; preds = %23
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %7) #7
  %25 = and i32 %12, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %11, align 8, !tbaa !60
  %29 = and i32 %28, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !168
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Base, ptr %33, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !169
  %38 = icmp eq ptr %37, %7
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67830016, ptr noundef null) #7
  br label %40

40:                                               ; preds = %24, %31, %35, %39, %27, %2, %23
  %41 = phi i32 [ 2, %23 ], [ 2, %2 ], [ 4, %27 ], [ 4, %39 ], [ 4, %35 ], [ 4, %31 ], [ 4, %24 ]
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edit_modifier_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call ptr @ED_object_active_context(ptr noundef %0) #7
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !tbaa !171
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14
  br label %22

22:                                               ; preds = %7, %10, %17, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %10 ], [ 0, %7 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_modifier_move_up(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @modifier_move_up_invoke, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_move_up_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_modifier_poll, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_move_up_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @modifier_move_up_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_move_up_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %7 = call ptr @modifiers_findByName(ptr noundef %4, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = call i32 @ED_object_modifier_move_up(ptr noundef %11, ptr noundef %4, ptr noundef nonnull %7), !range !174
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #7
  br label %15

15:                                               ; preds = %2, %9, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %9 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_modifier_move_down(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @modifier_move_down_invoke, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_move_down_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_modifier_poll, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_move_down_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @modifier_move_down_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_move_down_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %7 = call ptr @modifiers_findByName(ptr noundef %4, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = call i32 @ED_object_modifier_move_down(ptr noundef %11, ptr noundef %4, ptr noundef nonnull %7), !range !174
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #7
  br label %15

15:                                               ; preds = %2, %9, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %9 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_modifier_apply(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @modifier_apply_invoke, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_apply_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_modifier_poll, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.27, ptr noundef nonnull @modifier_apply_as_items, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !155
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_apply_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @modifier_apply_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_apply_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %8 = call ptr @modifiers_findByName(ptr noundef %5, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %9 = load ptr, ptr %6, align 8, !tbaa !157
  %10 = call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.27) #7
  %11 = icmp eq ptr %8, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = call i32 @ED_object_modifier_apply(ptr noundef %14, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %8, i32 noundef %10), !range !174
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %5) #7
  br label %18

18:                                               ; preds = %2, %12, %17
  %19 = phi i32 [ 4, %17 ], [ 2, %12 ], [ 2, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_modifier_convert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @modifier_convert_invoke, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_convert_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_modifier_poll, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_convert_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @modifier_convert_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_convert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %6 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %9 = call ptr @modifiers_findByName(ptr noundef %6, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = call i32 @ED_object_modifier_convert(ptr poison, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %9), !range !174
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %6) #7
  br label %15

15:                                               ; preds = %2, %11, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %11 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_modifier_copy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @modifier_copy_invoke, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_copy_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_modifier_poll, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_copy_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @modifier_copy_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @modifier_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %7 = call ptr @modifiers_findByName(ptr noundef %4, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = call ptr @modifier_new(i32 noundef %11) #7
  call void @modifier_copyData(ptr noundef nonnull %7, ptr noundef %12) #7
  %13 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 26
  call void @BLI_insertlinkafter(ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef %12) #7
  call void @modifier_unique_name(ptr noundef nonnull %13, ptr noundef %12) #7
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #7
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_multires_higher_levels_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @multires_poll, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @multires_higher_levels_delete_invoke, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @multires_higher_levels_delete_exec, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @multires_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_MultiresModifier) #7
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call ptr @ED_object_active_context(ptr noundef %0) #7
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !34
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8, !tbaa !171
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !173
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %18
  br label %26

26:                                               ; preds = %7, %10, %14, %21, %25
  %27 = phi i32 [ 1, %25 ], [ 0, %10 ], [ 0, %7 ], [ 0, %14 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @multires_higher_levels_delete_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @multires_higher_levels_delete_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @multires_higher_levels_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %7 = call ptr @modifiers_findByName(ptr noundef %4, ptr noundef nonnull %3) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = icmp eq i32 %11, 29
  %13 = select i1 %12, ptr %7, ptr null
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi ptr [ %13, %9 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %79, label %17

17:                                               ; preds = %14
  call void @multiresModifier_del_levels(ptr noundef nonnull %15, ptr noundef %4, i32 noundef 1) #7
  %18 = call ptr @CTX_data_main(ptr noundef %0) #7
  %19 = getelementptr inbounds %struct.MultiresModifierData, ptr %15, i64 0, i32 4
  %20 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !62
  %24 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 5
  %25 = load i16, ptr %24, align 2, !tbaa !63
  %26 = shl i16 %25, 6
  %27 = ashr i16 %26, 15
  %28 = sext i16 %27 to i32
  %29 = add nsw i32 %23, %28
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %64

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.Main, ptr %18, i64 0, i32 13
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = icmp eq ptr %33, null
  br i1 %34, label %78, label %35

35:                                               ; preds = %31, %58
  %36 = phi ptr [ %60, %58 ], [ %33, %31 ]
  %37 = phi i32 [ %59, %58 ], [ 0, %31 ]
  %38 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = load ptr, ptr %20, align 8, !tbaa !61
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load i32, ptr %19, align 4, !tbaa !65
  %44 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 26
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %42, %53
  %48 = phi ptr [ %54, %53 ], [ %45, %42 ]
  %49 = getelementptr inbounds %struct.ModifierData, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !49
  %51 = icmp eq i32 %50, 29
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call void @multires_set_tot_level(ptr noundef %36, ptr noundef nonnull %48, i32 noundef %43) #7
  call void @DAG_id_tag_update(ptr noundef %36, i16 noundef signext 2) #7
  br label %53

53:                                               ; preds = %52, %47
  %54 = load ptr, ptr %48, align 8, !tbaa !48
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %47, !llvm.loop !66

56:                                               ; preds = %53, %42
  %57 = add nsw i32 %37, 1
  br label %58

58:                                               ; preds = %56, %35
  %59 = phi i32 [ %57, %56 ], [ %37, %35 ]
  %60 = load ptr, ptr %36, align 8, !tbaa !48
  %61 = icmp eq ptr %60, null
  %62 = icmp sge i32 %59, %29
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %78, label %35, !llvm.loop !64

64:                                               ; preds = %17
  %65 = load i32, ptr %19, align 4, !tbaa !65
  %66 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 26
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  %68 = icmp eq ptr %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %64, %75
  %70 = phi ptr [ %76, %75 ], [ %67, %64 ]
  %71 = getelementptr inbounds %struct.ModifierData, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !49
  %73 = icmp eq i32 %72, 29
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  call void @multires_set_tot_level(ptr noundef %4, ptr noundef nonnull %70, i32 noundef %65) #7
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  br label %75

75:                                               ; preds = %74, %69
  %76 = load ptr, ptr %70, align 8, !tbaa !48
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %69, !llvm.loop !66

78:                                               ; preds = %75, %58, %31, %64
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #7
  br label %79

79:                                               ; preds = %14, %78
  %80 = phi i32 [ 4, %78 ], [ 2, %14 ]
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_multires_subdivide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @multires_poll, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @multires_subdivide_invoke, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @multires_subdivide_exec, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @multires_subdivide_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @multires_subdivide_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @multires_subdivide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %7 = call ptr @modifiers_findByName(ptr noundef %4, ptr noundef nonnull %3) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = icmp eq i32 %11, 29
  %13 = select i1 %12, ptr %7, ptr null
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi ptr [ %13, %9 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %88, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.MultiresModifierData, ptr %15, i64 0, i32 5
  %19 = load i8, ptr %18, align 4, !tbaa !175
  %20 = zext i8 %19 to i32
  call void @multiresModifier_subdivide(ptr noundef nonnull %15, ptr noundef %4, i32 noundef 0, i32 noundef %20) #7
  %21 = call ptr @CTX_data_main(ptr noundef %0) #7
  %22 = getelementptr inbounds %struct.MultiresModifierData, ptr %15, i64 0, i32 4
  %23 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !62
  %27 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 5
  %28 = load i16, ptr %27, align 2, !tbaa !63
  %29 = shl i16 %28, 6
  %30 = ashr i16 %29, 15
  %31 = sext i16 %30 to i32
  %32 = add nsw i32 %26, %31
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %67

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.Main, ptr %21, i64 0, i32 13
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %81, label %38

38:                                               ; preds = %34, %61
  %39 = phi ptr [ %63, %61 ], [ %36, %34 ]
  %40 = phi i32 [ %62, %61 ], [ 0, %34 ]
  %41 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !61
  %43 = load ptr, ptr %23, align 8, !tbaa !61
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = load i32, ptr %22, align 4, !tbaa !65
  %47 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 26
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %45, %56
  %51 = phi ptr [ %57, %56 ], [ %48, %45 ]
  %52 = getelementptr inbounds %struct.ModifierData, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !49
  %54 = icmp eq i32 %53, 29
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  call void @multires_set_tot_level(ptr noundef %39, ptr noundef nonnull %51, i32 noundef %46) #7
  call void @DAG_id_tag_update(ptr noundef %39, i16 noundef signext 2) #7
  br label %56

56:                                               ; preds = %55, %50
  %57 = load ptr, ptr %51, align 8, !tbaa !48
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %50, !llvm.loop !66

59:                                               ; preds = %56, %45
  %60 = add nsw i32 %40, 1
  br label %61

61:                                               ; preds = %59, %38
  %62 = phi i32 [ %60, %59 ], [ %40, %38 ]
  %63 = load ptr, ptr %39, align 8, !tbaa !48
  %64 = icmp eq ptr %63, null
  %65 = icmp sge i32 %62, %32
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %81, label %38, !llvm.loop !64

67:                                               ; preds = %17
  %68 = load i32, ptr %22, align 4, !tbaa !65
  %69 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 26
  %70 = load ptr, ptr %69, align 8, !tbaa !48
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %67, %78
  %73 = phi ptr [ %79, %78 ], [ %70, %67 ]
  %74 = getelementptr inbounds %struct.ModifierData, ptr %73, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !49
  %76 = icmp eq i32 %75, 29
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  call void @multires_set_tot_level(ptr noundef %4, ptr noundef nonnull %73, i32 noundef %68) #7
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  br label %78

78:                                               ; preds = %77, %72
  %79 = load ptr, ptr %73, align 8, !tbaa !48
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %72, !llvm.loop !66

81:                                               ; preds = %78, %61, %34, %67
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #7
  %82 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %83 = load i32, ptr %82, align 8, !tbaa !60
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = call i32 @BKE_sculpt_mask_layers_ensure(ptr noundef %4, ptr noundef nonnull %15) #7
  br label %88

88:                                               ; preds = %81, %86, %14
  %89 = phi i32 [ 2, %14 ], [ 4, %86 ], [ 4, %81 ]
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_multires_reshape(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.43, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @multires_poll, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @multires_reshape_invoke, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @multires_reshape_exec, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @multires_reshape_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @multires_reshape_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @multires_reshape_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %9 = call ptr @modifiers_findByName(ptr noundef %5, ptr noundef nonnull %3) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ModifierData, ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !49
  %14 = icmp eq i32 %13, 29
  %15 = select i1 %14, ptr %9, ptr null
  br label %16

16:                                               ; preds = %2, %11
  %17 = phi ptr [ %15, %11 ], [ %9, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.MultiresModifierData, ptr %17, i64 0, i32 1
  %21 = load i8, ptr %20, align 8, !tbaa !176
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !159
  call void @BKE_report(ptr noundef %25, i32 noundef 32, ptr noundef nonnull @.str.107) #7
  br label %55

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %27 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %4) #7
  br label %28

28:                                               ; preds = %33, %26
  %29 = phi ptr [ null, %26 ], [ %41, %33 ]
  %30 = phi ptr [ %4, %26 ], [ %31, %33 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.CollectionPointerLink, ptr %31, i64 0, i32 2, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !177
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 3
  %37 = load i16, ptr %36, align 8, !tbaa !34
  %38 = icmp ne i16 %37, 1
  %39 = icmp eq ptr %35, %5
  %40 = select i1 %38, i1 true, i1 %39
  %41 = select i1 %40, ptr %29, ptr %35
  br i1 %40, label %28, label %42

42:                                               ; preds = %33, %28
  %43 = phi ptr [ %41, %33 ], [ %29, %28 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !159
  call void @BKE_report(ptr noundef %47, i32 noundef 32, ptr noundef nonnull @.str.108) #7
  br label %55

48:                                               ; preds = %42
  %49 = call i32 @multiresModifier_reshape(ptr noundef %6, ptr noundef nonnull %17, ptr noundef %5, ptr noundef nonnull %43) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !159
  call void @BKE_report(ptr noundef %53, i32 noundef 32, ptr noundef nonnull @.str.109) #7
  br label %55

54:                                               ; preds = %48
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %5) #7
  br label %55

55:                                               ; preds = %16, %54, %51, %45, %23
  %56 = phi i32 [ 2, %23 ], [ 4, %54 ], [ 2, %51 ], [ 2, %45 ], [ 2, %16 ]
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_multires_external_save(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.46, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.47, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @multires_external_save_exec, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @multires_external_save_invoke, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @multires_poll, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 6144, i16 noundef signext 9, i16 noundef signext 1, i16 noundef signext 9, i16 noundef signext 0) #7
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @multires_external_save_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = select i1 %5, ptr %7, ptr %6
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #7
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.110) #7
  %13 = icmp eq ptr %9, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 25
  %16 = tail call zeroext i8 @CustomData_external_test(ptr noundef nonnull %15, i32 noundef 19) #7
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %19, ptr noundef nonnull @.str.111, ptr noundef nonnull %3) #7
  %20 = and i32 %12, 255
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @G, align 8, !tbaa !179
  %24 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 2
  call void @BLI_path_rel(ptr noundef nonnull %3, ptr noundef nonnull %24) #7
  br label %25

25:                                               ; preds = %22, %18
  %26 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 31
  %27 = load i32, ptr %26, align 4, !tbaa !181
  call void @CustomData_external_add(ptr noundef nonnull %15, ptr noundef nonnull %9, i32 noundef 19, i32 noundef %27, ptr noundef nonnull %3) #7
  %28 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !140
  %29 = load i32, ptr %26, align 4, !tbaa !181
  call void @CustomData_external_write(ptr noundef nonnull %15, ptr noundef nonnull %9, i64 noundef %28, i32 noundef %29, i32 noundef 0) #7
  br label %30

30:                                               ; preds = %14, %2, %25
  %31 = phi i32 [ 4, %25 ], [ 2, %2 ], [ 2, %14 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #7
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @multires_external_save_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #7
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  %12 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %11, ptr noundef nonnull @.str.98) #7
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %15 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 8, !tbaa !157
  %20 = getelementptr inbounds %struct.ModifierData, ptr %16, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %19, ptr noundef nonnull @.str.98, ptr noundef nonnull %20) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  br label %21

21:                                               ; preds = %18, %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %22 = load ptr, ptr %10, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %22, ptr noundef nonnull @.str.98, ptr noundef nonnull %4) #7
  %23 = call ptr @modifiers_findByName(ptr noundef %7, ptr noundef nonnull %4) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %44, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ModifierData, ptr %23, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !49
  %28 = icmp eq i32 %27, 29
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 25
  %31 = call zeroext i8 @CustomData_external_test(ptr noundef nonnull %30, i32 noundef 19) #7
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load ptr, ptr %10, align 8, !tbaa !157
  %35 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %34, ptr noundef nonnull @.str.111) #7
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = call i32 @multires_external_save_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %46

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %9, ptr %40, align 8, !tbaa !182
  %41 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4, i64 2
  %42 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 1024, ptr noundef nonnull @.str.112, ptr noundef nonnull %41) #7
  %43 = load ptr, ptr %10, align 8, !tbaa !157
  call void @RNA_string_set(ptr noundef %43, ptr noundef nonnull @.str.111, ptr noundef nonnull %6) #7
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #7
  br label %46

44:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  br label %46

45:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  br label %46

46:                                               ; preds = %45, %44, %29, %25, %39, %37
  %47 = phi i32 [ %38, %37 ], [ 1, %39 ], [ 2, %25 ], [ 2, %29 ], [ 2, %44 ], [ 2, %45 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #7
  ret i32 %47
}

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_multires_external_pack(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @multires_poll, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @multires_external_pack_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !154
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @multires_external_pack_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 25
  %7 = tail call zeroext i8 @CustomData_external_test(ptr noundef nonnull %6, i32 noundef 19) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 31
  %11 = load i32, ptr %10, align 4, !tbaa !181
  tail call void @CustomData_external_remove(ptr noundef nonnull %6, ptr noundef %5, i32 noundef 19, i32 noundef %11) #7
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_multires_base_apply(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @multires_poll, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @multires_base_apply_invoke, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @multires_base_apply_exec, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @multires_base_apply_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @multires_base_apply_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @multires_base_apply_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %7 = call ptr @modifiers_findByName(ptr noundef %4, ptr noundef nonnull %3) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = icmp eq i32 %11, 29
  %13 = select i1 %12, ptr %7, ptr null
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi ptr [ %13, %9 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void @multiresModifier_base_apply(ptr noundef nonnull %15, ptr noundef %4) #7
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #7
  br label %18

18:                                               ; preds = %14, %17
  %19 = phi i32 [ 4, %17 ], [ 2, %14 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_skin_root_mark(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @skin_edit_poll, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @skin_root_mark_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !154
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @skin_edit_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_SkinModifier) #7
  %6 = load ptr, ptr %2, align 8, !tbaa !171
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call ptr @ED_object_active_context(ptr noundef %0) #7
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %9, %8 ], [ %6, %5 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !34
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load ptr, ptr %2, align 8, !tbaa !171
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !173
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %21
  br label %29

29:                                               ; preds = %10, %13, %17, %24, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %13 ], [ 0, %10 ], [ 0, %17 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  br label %31

31:                                               ; preds = %29, %1
  %32 = phi i32 [ 0, %1 ], [ %30, %29 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @skin_root_mark_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #7
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %7 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @__func__.skin_root_mark_exec) #7
  %8 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  tail call void @BKE_mesh_ensure_skin_customdata(ptr noundef %9) #7
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %10, align 4, !tbaa !183
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %11, align 8, !tbaa !185
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %12, align 8, !tbaa !186
  %13 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !187
  store ptr %14, ptr %3, align 8, !tbaa !67
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #7
  %15 = load ptr, ptr %12, align 8, !tbaa !186
  %16 = call ptr %15(ptr noundef nonnull %3) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 24
  br label %20

20:                                               ; preds = %18, %35
  %21 = phi ptr [ %16, %18 ], [ %37, %35 ]
  %22 = call zeroext i8 @BLI_gset_haskey(ptr noundef %7, ptr noundef nonnull %21) #7
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !189
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %21, align 8, !tbaa !191
  %31 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %19, ptr noundef %30, i32 noundef 36) #7
  %32 = getelementptr inbounds %struct.MVertSkin, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !193
  %34 = or i32 %33, 1
  store i32 %34, ptr %32, align 4, !tbaa !193
  call void @BLI_gset_insert(ptr noundef %7, ptr noundef nonnull %21) #7
  call fastcc void @skin_root_clear(ptr noundef %6, ptr noundef nonnull %21, ptr noundef %7)
  br label %35

35:                                               ; preds = %20, %24, %29
  %36 = load ptr, ptr %12, align 8, !tbaa !186
  %37 = call ptr %36(ptr noundef nonnull %3) #7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %20, !llvm.loop !195

39:                                               ; preds = %35, %2
  call void @BLI_gset_free(ptr noundef %7, ptr noundef null) #7
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_skin_loose_mark_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.63, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @skin_edit_poll, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @skin_loose_mark_clear_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !154
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.66, ptr noundef nonnull @OBJECT_OT_skin_loose_mark_clear.action_items, i32 noundef 0, ptr noundef nonnull @.str.67, ptr noundef null) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @skin_loose_mark_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #7
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.66) #7
  %10 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 24
  %11 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %10, i32 noundef 36) #7
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %14, align 4, !tbaa !183
  %15 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %15, align 8, !tbaa !185
  %16 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %16, align 8, !tbaa !186
  %17 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !187
  store ptr %18, ptr %3, align 8, !tbaa !67
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #7
  %19 = load ptr, ptr %16, align 8, !tbaa !186
  %20 = call ptr %19(ptr noundef nonnull %3) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %13, %39
  %23 = phi ptr [ %41, %39 ], [ %20, %13 ]
  %24 = getelementptr inbounds %struct.BMHeader, ptr %23, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !189
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %23, align 8, !tbaa !191
  %30 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %10, ptr noundef %29, i32 noundef 36) #7
  switch i32 %9, label %39 [
    i32 0, label %31
    i32 1, label %35
  ]

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.MVertSkin, ptr %30, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !193
  %34 = or i32 %33, 2
  store i32 %34, ptr %32, align 4, !tbaa !193
  br label %39

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.MVertSkin, ptr %30, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !193
  %38 = and i32 %37, -3
  store i32 %38, ptr %36, align 4, !tbaa !193
  br label %39

39:                                               ; preds = %31, %35, %28, %22
  %40 = load ptr, ptr %16, align 8, !tbaa !186
  %41 = call ptr %40(ptr noundef nonnull %3) #7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %22, !llvm.loop !196

43:                                               ; preds = %39, %13
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #7
  br label %44

44:                                               ; preds = %2, %43
  %45 = phi i32 [ 4, %43 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret i32 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_skin_radii_equalize(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.69, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.70, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @skin_edit_poll, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @skin_radii_equalize_exec, ptr %5, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !154
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @skin_radii_equalize_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #7
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 24
  %8 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %7, i32 noundef 36) #7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %11, align 4, !tbaa !183
  %12 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !185
  %13 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !186
  %14 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !187
  store ptr %15, ptr %3, align 8, !tbaa !67
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #7
  %16 = load ptr, ptr %13, align 8, !tbaa !186
  %17 = call ptr %16(ptr noundef nonnull %3) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %10, %33
  %20 = phi ptr [ %35, %33 ], [ %17, %10 ]
  %21 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 3
  %22 = load i8, ptr %21, align 1, !tbaa !189
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !191
  %27 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %7, ptr noundef %26, i32 noundef 36) #7
  %28 = load float, ptr %27, align 4, !tbaa !100
  %29 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !100
  %31 = fadd float %28, %30
  %32 = fmul float %31, 5.000000e-01
  store float %32, ptr %29, align 4, !tbaa !100
  store float %32, ptr %27, align 4, !tbaa !100
  br label %33

33:                                               ; preds = %19, %25
  %34 = load ptr, ptr %13, align 8, !tbaa !186
  %35 = call ptr %34(ptr noundef nonnull %3) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %19, !llvm.loop !197

37:                                               ; preds = %33, %10
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #7
  br label %38

38:                                               ; preds = %2, %37
  %39 = phi i32 [ 4, %37 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_skin_armature_create(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.71, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.72, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @skin_poll, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @skin_armature_create_invoke, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @skin_armature_create_exec, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @skin_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_SkinModifier) #7
  %6 = load ptr, ptr %2, align 8, !tbaa !171
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call ptr @ED_object_active_context(ptr noundef %0) #7
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %9, %8 ], [ %6, %5 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !34
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load ptr, ptr %2, align 8, !tbaa !171
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !173
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %21
  br label %29

29:                                               ; preds = %10, %13, %17, %24, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %13 ], [ 0, %10 ], [ 0, %17 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  br label %31

31:                                               ; preds = %29, %1
  %32 = phi i32 [ 0, %1 ], [ %30, %29 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @skin_armature_create_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @skin_armature_create_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @skin_armature_create_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 21
  %12 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %11, i32 noundef 36) #7
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !159
  %17 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %16, i32 noundef 16, ptr noundef nonnull @.str.113, ptr noundef nonnull %17) #7
  br label %126

18:                                               ; preds = %2
  %19 = load ptr, ptr %9, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %20 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !140
  %21 = tail call ptr @mesh_get_derived_deform(ptr noundef %7, ptr noundef %8, i64 noundef %20) #7
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %21, i64 0, i32 31
  %23 = load ptr, ptr %22, align 8, !tbaa !198
  %24 = tail call ptr %23(ptr noundef %21) #7
  %25 = getelementptr inbounds %struct.Mesh, ptr %19, i64 0, i32 21
  %26 = getelementptr inbounds %struct.Mesh, ptr %19, i64 0, i32 26
  %27 = load i32, ptr %26, align 8, !tbaa !77
  %28 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %25, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %27) #7
  %29 = tail call ptr @BKE_object_add(ptr noundef %6, ptr noundef %7, i32 noundef 25) #7
  tail call void @BKE_object_transform_copy(ptr noundef %29, ptr noundef %8) #7
  %30 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 19
  %31 = load ptr, ptr %30, align 8, !tbaa !61
  %32 = getelementptr inbounds %struct.bArmature, ptr %31, i64 0, i32 15
  store i32 1, ptr %32, align 8, !tbaa !199
  %33 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 86
  %34 = load i16, ptr %33, align 4, !tbaa !201
  %35 = or i16 %34, 64
  store i16 %35, ptr %33, align 4, !tbaa !201
  %36 = getelementptr inbounds %struct.bArmature, ptr %31, i64 0, i32 9
  store i32 1, ptr %36, align 4, !tbaa !202
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %38 = tail call ptr %37(i64 noundef 16, ptr noundef nonnull @.str.114) #7
  %39 = getelementptr inbounds %struct.bArmature, ptr %31, i64 0, i32 4
  store ptr %38, ptr %39, align 8, !tbaa !203
  %40 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %25, i32 noundef 36) #7
  %41 = getelementptr inbounds %struct.Mesh, ptr %19, i64 0, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !98
  %43 = load i32, ptr %26, align 8, !tbaa !77
  %44 = getelementptr inbounds %struct.Mesh, ptr %19, i64 0, i32 27
  %45 = load i32, ptr %44, align 4, !tbaa !96
  call void @BKE_mesh_vert_edge_map_create(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %42, i32 noundef %43, i32 noundef %45) #7
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %47 = load i32, ptr %44, align 4, !tbaa !96
  %48 = ashr i32 %47, 5
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = shl nsw i64 %50, 2
  %52 = call ptr %46(i64 noundef %51, ptr noundef nonnull @.str.115) #7
  %53 = load i32, ptr %26, align 8, !tbaa !77
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %102

55:                                               ; preds = %18
  %56 = getelementptr inbounds %struct.Mesh, ptr %19, i64 0, i32 15
  br label %57

57:                                               ; preds = %55, %97
  %58 = phi i64 [ 0, %55 ], [ %98, %97 ]
  %59 = getelementptr inbounds %struct.MVertSkin, ptr %40, i64 %58, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !193
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %97, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %4, align 8, !tbaa !48
  %65 = getelementptr inbounds %struct.MeshElemMap, ptr %64, i64 %58, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !204
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = call ptr @ED_armature_edit_bone_add(ptr noundef %31, ptr noundef nonnull @.str.116) #7
  %70 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 7
  %71 = load ptr, ptr %56, align 8, !tbaa !97
  %72 = getelementptr inbounds %struct.MVert, ptr %71, i64 %58
  %73 = load float, ptr %72, align 4, !tbaa !100
  store float %73, ptr %70, align 4, !tbaa !100
  %74 = getelementptr inbounds float, ptr %72, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !100
  %76 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 7, i64 1
  store float %75, ptr %76, align 4, !tbaa !100
  %77 = getelementptr inbounds float, ptr %72, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !100
  %79 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 7, i64 2
  store float %78, ptr %79, align 4, !tbaa !100
  %80 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 8
  %81 = load float, ptr %72, align 4, !tbaa !100
  store float %81, ptr %80, align 4, !tbaa !100
  %82 = load float, ptr %74, align 4, !tbaa !100
  %83 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 8, i64 1
  store float %82, ptr %83, align 4, !tbaa !100
  %84 = load float, ptr %77, align 4, !tbaa !100
  %85 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 8, i64 2
  store float %84, ptr %85, align 4, !tbaa !100
  store float 1.000000e+00, ptr %76, align 4, !tbaa !100
  %86 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 19
  store float 2.500000e-01, ptr %86, align 4, !tbaa !206
  %87 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 18
  store float 2.500000e-01, ptr %87, align 8, !tbaa !208
  br label %88

88:                                               ; preds = %68, %63
  %89 = phi ptr [ %69, %68 ], [ null, %63 ]
  %90 = load ptr, ptr %4, align 8, !tbaa !48
  %91 = getelementptr inbounds %struct.MeshElemMap, ptr %90, i64 %58, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !204
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load ptr, ptr %41, align 8, !tbaa !98
  %96 = trunc i64 %58 to i32
  call fastcc void @skin_armature_bone_create(ptr noundef %8, ptr noundef %24, ptr noundef %95, ptr noundef %31, ptr noundef %52, ptr noundef %90, ptr noundef %89, i32 noundef %96)
  br label %97

97:                                               ; preds = %94, %88, %57
  %98 = add nuw nsw i64 %58, 1
  %99 = load i32, ptr %26, align 8, !tbaa !77
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %57, label %102, !llvm.loop !209

102:                                              ; preds = %97, %18
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %103(ptr noundef %52) #7
  %104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %105 = load ptr, ptr %4, align 8, !tbaa !48
  call void %104(ptr noundef %105) #7
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %107 = load ptr, ptr %5, align 8, !tbaa !48
  call void %106(ptr noundef %107) #7
  call void @ED_armature_from_edit(ptr noundef %31) #7
  call void @ED_armature_edit_free(ptr noundef %31) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  %108 = call ptr @modifier_new(i32 noundef 8) #7
  %109 = icmp eq ptr %108, null
  br i1 %109, label %125, label %110

110:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %111 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %112 = load ptr, ptr %111, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %112, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %113 = call ptr @modifiers_findByName(ptr noundef %8, ptr noundef nonnull %3) #7
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.ModifierData, ptr %113, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !49
  %118 = icmp eq i32 %117, 42
  %119 = select i1 %118, ptr %113, ptr null
  br label %120

120:                                              ; preds = %110, %115
  %121 = phi ptr [ %119, %115 ], [ %113, %110 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %122 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 26
  call void @BLI_insertlinkafter(ptr noundef nonnull %122, ptr noundef %121, ptr noundef nonnull %108) #7
  %123 = getelementptr inbounds %struct.ArmatureModifierData, ptr %108, i64 0, i32 4
  store ptr %29, ptr %123, align 8, !tbaa !210
  %124 = getelementptr inbounds %struct.ArmatureModifierData, ptr %108, i64 0, i32 1
  store i16 5, ptr %124, align 8, !tbaa !212
  call void @DAG_relations_tag_update(ptr noundef %6) #7
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 2) #7
  br label %125

125:                                              ; preds = %120, %102
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %8) #7
  br label %126

126:                                              ; preds = %125, %14
  %127 = phi i32 [ 4, %125 ], [ 2, %14 ]
  ret i32 %127
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_meshdeform_bind(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.74, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.75, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.76, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @meshdeform_poll, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @meshdeform_bind_invoke, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @meshdeform_bind_exec, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @meshdeform_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_MeshDeformModifier) #7
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call ptr @ED_object_active_context(ptr noundef %0) #7
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !tbaa !171
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14
  br label %22

22:                                               ; preds = %7, %10, %17, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %10 ], [ 0, %7 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @meshdeform_bind_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @meshdeform_bind_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @meshdeform_bind_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %8 = call ptr @modifiers_findByName(ptr noundef %5, ptr noundef nonnull %3) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !49
  %13 = icmp eq i32 %12, 18
  %14 = select i1 %13, ptr %8, ptr null
  br label %15

15:                                               ; preds = %2, %10
  %16 = phi ptr [ %14, %10 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %85, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %16, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !213
  %21 = icmp eq ptr %20, null
  br i1 %21, label %67, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %23(ptr noundef nonnull %20) #7
  %24 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %16, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !215
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %28(ptr noundef nonnull %25) #7
  br label %29

29:                                               ; preds = %27, %22
  %30 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %16, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !216
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %34(ptr noundef nonnull %31) #7
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %16, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !217
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %40(ptr noundef nonnull %37) #7
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %16, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !218
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %46(ptr noundef nonnull %43) #7
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %16, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !219
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %52(ptr noundef nonnull %49) #7
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %16, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !220
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %58(ptr noundef nonnull %55) #7
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %16, i64 0, i32 20
  %61 = load ptr, ptr %60, align 8, !tbaa !221
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %64(ptr noundef nonnull %61) #7
  br label %65

65:                                               ; preds = %63, %59
  %66 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %16, i64 0, i32 15
  store i32 0, ptr %66, align 4, !tbaa !222
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %36, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 0, i64 16, i1 false)
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %5) #7
  br label %85

67:                                               ; preds = %18
  %68 = getelementptr inbounds %struct.ModifierData, ptr %16, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !223
  %70 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %16, i64 0, i32 21
  store ptr @mesh_deform_bind, ptr %70, align 8, !tbaa !224
  %71 = or i32 %69, 1
  store i32 %71, ptr %68, align 4, !tbaa !223
  %72 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %73 = load i16, ptr %72, align 8, !tbaa !34
  switch i16 %73, label %84 [
    i16 1, label %74
    i16 22, label %78
    i16 5, label %79
    i16 2, label %83
    i16 3, label %83
    i16 4, label %83
  ]

74:                                               ; preds = %67
  %75 = call ptr @mesh_create_derived_view(ptr noundef %4, ptr noundef %5, i64 noundef 0) #7
  %76 = getelementptr inbounds %struct.DerivedMesh, ptr %75, i64 0, i32 95
  %77 = load ptr, ptr %76, align 8, !tbaa !136
  call void %77(ptr noundef %75) #7
  br label %84

78:                                               ; preds = %67
  call void @BKE_lattice_modifiers_calc(ptr noundef %4, ptr noundef %5) #7
  br label %84

79:                                               ; preds = %67
  %80 = call ptr @CTX_data_main(ptr noundef %0) #7
  %81 = getelementptr inbounds %struct.Main, ptr %80, i64 0, i32 46
  %82 = load ptr, ptr %81, align 8, !tbaa !225
  call void @BKE_displist_make_mball(ptr noundef %82, ptr noundef %4, ptr noundef %5) #7
  br label %84

83:                                               ; preds = %67, %67, %67
  call void @BKE_displist_make_curveTypes(ptr noundef %4, ptr noundef %5, i8 noundef zeroext 0) #7
  br label %84

84:                                               ; preds = %67, %78, %83, %79, %74
  store ptr null, ptr %70, align 8, !tbaa !224
  store i32 %69, ptr %68, align 4, !tbaa !223
  br label %85

85:                                               ; preds = %65, %84, %15
  %86 = phi i32 [ 2, %15 ], [ 4, %84 ], [ 4, %65 ]
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_explode_refresh(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.77, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.78, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.79, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @explode_poll, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @explode_refresh_invoke, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @explode_refresh_exec, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @explode_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_ExplodeModifier) #7
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call ptr @ED_object_active_context(ptr noundef %0) #7
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !tbaa !171
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14
  br label %22

22:                                               ; preds = %7, %10, %17, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %10 ], [ 0, %7 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @explode_refresh_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @explode_refresh_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @explode_refresh_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %7 = call ptr @modifiers_findByName(ptr noundef %4, ptr noundef nonnull %3) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = icmp eq i32 %11, 21
  %13 = select i1 %12, ptr %7, ptr null
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi ptr [ %13, %9 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ExplodeModifierData, ptr %15, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !227
  %20 = or i16 %19, 1
  store i16 %20, ptr %18, align 8, !tbaa !227
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #7
  br label %21

21:                                               ; preds = %14, %17
  %22 = phi i32 [ 4, %17 ], [ 2, %14 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_ocean_bake(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.80, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.81, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.82, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ocean_bake_poll, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ocean_bake_invoke, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ocean_bake_exec, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !155
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.83, i32 noundef 0, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ocean_bake_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_OceanModifier) #7
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call ptr @ED_object_active_context(ptr noundef %0) #7
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !tbaa !171
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14
  br label %22

22:                                               ; preds = %7, %10, %17, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %10 ], [ 0, %7 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ocean_bake_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @ocean_bake_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ocean_bake_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %7 = call ptr @modifiers_findByName(ptr noundef %4, ptr noundef nonnull %3) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = icmp eq i32 %11, 39
  %13 = select i1 %12, ptr %7, ptr null
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi ptr [ %13, %9 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %16 = call ptr @CTX_data_scene(ptr noundef %0) #7
  %17 = load ptr, ptr %5, align 8, !tbaa !157
  %18 = call i32 @RNA_boolean_get(ptr noundef %17, ptr noundef nonnull @.str.83) #7
  %19 = icmp eq ptr %15, null
  br i1 %19, label %116, label %20

20:                                               ; preds = %14
  %21 = and i32 %18, 255
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 22
  %25 = load i8, ptr %24, align 1, !tbaa !229
  %26 = or i8 %25, 8
  store i8 %26, ptr %24, align 1, !tbaa !229
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #7
  br label %116

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 17
  %29 = call ptr @modifier_path_relbase(ptr noundef %4) #7
  %30 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 15
  %31 = load i32, ptr %30, align 8, !tbaa !231
  %32 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 16
  %33 = load i32, ptr %32, align 4, !tbaa !232
  %34 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 11
  %35 = load float, ptr %34, align 8, !tbaa !233
  %36 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 12
  %37 = load float, ptr %36, align 4, !tbaa !234
  %38 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 13
  %39 = load float, ptr %38, align 8, !tbaa !235
  %40 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 27
  %41 = load float, ptr %40, align 8, !tbaa !236
  %42 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !237
  %44 = call ptr @BKE_init_ocean_cache(ptr noundef nonnull %28, ptr noundef %29, i32 noundef %31, i32 noundef %33, float noundef %35, float noundef %37, float noundef %39, float noundef %41, i32 noundef %43) #7
  %45 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct.OceanCache, ptr %44, i64 0, i32 12
  %47 = load i32, ptr %46, align 8, !tbaa !238
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 2
  %50 = call ptr %45(i64 noundef %49, ptr noundef nonnull @.str.118) #7
  %51 = getelementptr inbounds %struct.OceanCache, ptr %44, i64 0, i32 5
  store ptr %50, ptr %51, align 8, !tbaa !240
  %52 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 22, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !241
  %54 = load i32, ptr %30, align 8, !tbaa !231
  %55 = load i32, ptr %32, align 4, !tbaa !232
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %72, label %57

57:                                               ; preds = %27
  %58 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 1
  %59 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 14
  br label %60

60:                                               ; preds = %57, %60
  %61 = phi i64 [ 0, %57 ], [ %68, %60 ]
  %62 = phi i32 [ %54, %57 ], [ %69, %60 ]
  %63 = load ptr, ptr %58, align 8, !tbaa !242
  %64 = sitofp i32 %62 to float
  call void @BKE_animsys_evaluate_animdata(ptr noundef %16, ptr noundef %4, ptr noundef %63, float noundef %64, i16 noundef signext 2) #7
  %65 = load float, ptr %59, align 4, !tbaa !243
  %66 = load ptr, ptr %51, align 8, !tbaa !240
  %67 = getelementptr inbounds float, ptr %66, i64 %61
  store float %65, ptr %67, align 4, !tbaa !100
  %68 = add nuw nsw i64 %61, 1
  %69 = add nsw i32 %62, 1
  %70 = load i32, ptr %32, align 4, !tbaa !232
  %71 = icmp slt i32 %62, %70
  br i1 %71, label %60, label %72, !llvm.loop !244

72:                                               ; preds = %60, %27
  %73 = call ptr @BKE_add_ocean() #7
  %74 = icmp eq ptr %73, null
  br i1 %74, label %106, label %75

75:                                               ; preds = %72
  %76 = load float, ptr %36, align 4, !tbaa !234
  %77 = fcmp ogt float %76, 0.000000e+00
  %78 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 21
  %79 = load i8, ptr %78, align 2, !tbaa !245
  %80 = and i8 %79, 1
  %81 = load i32, ptr %42, align 8, !tbaa !237
  %82 = mul nsw i32 %81, %81
  %83 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 4
  %84 = load i32, ptr %83, align 4, !tbaa !246
  %85 = sitofp i32 %84 to float
  %86 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 5
  %87 = load float, ptr %86, align 8, !tbaa !247
  %88 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 7
  %89 = load float, ptr %88, align 8, !tbaa !248
  %90 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 10
  %91 = load float, ptr %90, align 4, !tbaa !249
  %92 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 6
  %93 = load float, ptr %92, align 4, !tbaa !250
  %94 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 9
  %95 = load float, ptr %94, align 8, !tbaa !251
  %96 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 8
  %97 = load float, ptr %96, align 4, !tbaa !252
  %98 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 14
  %99 = load float, ptr %98, align 4, !tbaa !243
  %100 = zext i1 %77 to i16
  %101 = and i8 %79, 2
  %102 = zext nneg i8 %101 to i16
  %103 = zext nneg i8 %80 to i16
  %104 = getelementptr inbounds %struct.OceanModifierData, ptr %15, i64 0, i32 25
  %105 = load i32, ptr %104, align 8, !tbaa !253
  call void @BKE_init_ocean(ptr noundef nonnull %73, i32 noundef %82, i32 noundef %82, float noundef %85, float noundef %85, float noundef %87, float noundef %89, float noundef 1.000000e+00, float noundef %91, float noundef %93, float noundef %95, float noundef %97, float noundef %99, i16 noundef signext 1, i16 noundef signext %100, i16 noundef signext %102, i16 noundef signext %103, i32 noundef %105) #7
  br label %106

106:                                              ; preds = %72, %75
  store i32 %53, ptr %52, align 8, !tbaa !241
  %107 = call ptr @CTX_wm_manager(ptr noundef %0) #7
  %108 = call ptr @CTX_wm_window(ptr noundef %0) #7
  %109 = call ptr @WM_jobs_get(ptr noundef %107, ptr noundef %108, ptr noundef %16, ptr noundef nonnull @.str.119, i32 noundef 4, i32 noundef 5) #7
  %110 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %111 = call ptr %110(i64 noundef 64, ptr noundef nonnull @.str.120) #7
  %112 = getelementptr inbounds %struct.OceanBakeJob, ptr %111, i64 0, i32 6
  store ptr %73, ptr %112, align 8, !tbaa !254
  %113 = getelementptr inbounds %struct.OceanBakeJob, ptr %111, i64 0, i32 5
  store ptr %44, ptr %113, align 8, !tbaa !256
  %114 = getelementptr inbounds %struct.OceanBakeJob, ptr %111, i64 0, i32 7
  store ptr %15, ptr %114, align 8, !tbaa !257
  call void @WM_jobs_customdata_set(ptr noundef %109, ptr noundef %111, ptr noundef nonnull @oceanbake_free) #7
  call void @WM_jobs_timer(ptr noundef %109, double noundef 1.000000e-01, i32 noundef 85458944, i32 noundef 85458944) #7
  call void @WM_jobs_callbacks(ptr noundef %109, ptr noundef nonnull @oceanbake_startjob, ptr noundef null, ptr noundef null, ptr noundef nonnull @oceanbake_endjob) #7
  %115 = call ptr @CTX_wm_manager(ptr noundef %0) #7
  call void @WM_jobs_start(ptr noundef %115, ptr noundef %109) #7
  br label %116

116:                                              ; preds = %14, %106, %23
  %117 = phi i32 [ 4, %23 ], [ 4, %106 ], [ 2, %14 ]
  ret i32 %117
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_laplaciandeform_bind(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.86, ptr %0, align 8, !tbaa !146
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.87, ptr %2, align 8, !tbaa !149
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.88, ptr %3, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @laplaciandeform_poll, ptr %4, align 8, !tbaa !153
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @laplaciandeform_bind_invoke, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @laplaciandeform_bind_exec, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !154
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @laplaciandeform_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_LaplacianDeformModifier) #7
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call ptr @ED_object_active_context(ptr noundef %0) #7
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !172
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !tbaa !171
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14
  br label %22

22:                                               ; preds = %7, %10, %17, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %10 ], [ 0, %7 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @laplaciandeform_bind_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.98) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #7
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !157
  %15 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %16

16:                                               ; preds = %13, %3
  %17 = call i32 @laplaciandeform_bind_exec(ptr noundef %0, ptr noundef %1), !range !167
  br label %19

18:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 2, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @laplaciandeform_bind_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.98, ptr noundef nonnull %3) #7
  %7 = call ptr @modifiers_findByName(ptr noundef %4, ptr noundef nonnull %3) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !49
  %12 = icmp eq i32 %11, 47
  %13 = select i1 %12, ptr %7, ptr null
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi ptr [ %13, %9 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %15, i64 0, i32 6
  %19 = load i16, ptr %18, align 8, !tbaa !258
  %20 = xor i16 %19, 1
  store i16 %20, ptr %18, align 8, !tbaa !258
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #7
  br label %21

21:                                               ; preds = %14, %17
  %22 = phi i32 [ 4, %17 ], [ 2, %14 ]
  ret i32 %22
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @psys_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sbFree(ptr noundef) local_unnamed_addr #2

declare void @multires_customdata_delete(ptr noundef) local_unnamed_addr #2

declare void @BM_data_layer_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_free_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @mesh_create_derived_for_modifier(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_key_add(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_keyblock_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_key_convert_from_mesh(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DM_to_meshkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @multires_force_update(ptr noundef) local_unnamed_addr #2

declare i32 @multiresModifier_reshapeFromDeformMod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DM_to_mesh(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BKE_curve_nurbs_vertexCos_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BK_curve_nurbs_vertexCos_apply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @psys_apply_hair_lattice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @ED_object_active_context(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_object_support_modifier_type_check(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_findByName(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @multiresModifier_del_levels(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @multiresModifier_subdivide(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare i32 @multiresModifier_reshape(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_external_test(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_external_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_external_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CustomData_external_remove(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @multiresModifier_base_apply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_gset_ptr_new(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @skin_root_clear(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %5 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 4, ptr %5, align 4, !tbaa !183
  %6 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !185
  %7 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !186
  store ptr %1, ptr %4, align 8, !tbaa !67
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #7
  %8 = load ptr, ptr %7, align 8, !tbaa !186
  %9 = call ptr %8(ptr noundef nonnull %4) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  br label %13

13:                                               ; preds = %11, %31
  %14 = phi ptr [ %9, %11 ], [ %33, %31 ]
  %15 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !260
  %17 = icmp eq ptr %16, %1
  %18 = getelementptr inbounds %struct.BMEdge, ptr %14, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !263
  %20 = icmp eq ptr %19, %1
  %21 = select i1 %20, ptr %16, ptr null
  %22 = select i1 %17, ptr %19, ptr %21
  %23 = call zeroext i8 @BLI_gset_haskey(ptr noundef %2, ptr noundef %22) #7
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %13
  %26 = load ptr, ptr %22, align 8, !tbaa !191
  %27 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %12, ptr noundef %26, i32 noundef 36) #7
  %28 = getelementptr inbounds %struct.MVertSkin, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !193
  %30 = and i32 %29, -2
  store i32 %30, ptr %28, align 4, !tbaa !193
  call void @BLI_gset_insert(ptr noundef %2, ptr noundef nonnull %22) #7
  call fastcc void @skin_root_clear(ptr noundef %0, ptr noundef nonnull %22, ptr noundef %2)
  br label %31

31:                                               ; preds = %25, %13
  %32 = load ptr, ptr %7, align 8, !tbaa !186
  %33 = call ptr %32(ptr noundef nonnull %4) #7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %13, !llvm.loop !264

35:                                               ; preds = %31, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  ret void
}

declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BKE_object_transform_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mesh_vert_edge_map_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ED_armature_edit_bone_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @skin_armature_bone_create(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds %struct.MeshElemMap, ptr %5, i64 %9, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !204
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %76

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.MeshElemMap, ptr %5, i64 %9
  %15 = getelementptr inbounds %struct.MVert, ptr %1, i64 %9
  %16 = getelementptr inbounds float, ptr %15, i64 1
  %17 = getelementptr inbounds float, ptr %15, i64 2
  br label %18

18:                                               ; preds = %13, %71
  %19 = phi i64 [ 0, %13 ], [ %72, %71 ]
  %20 = load ptr, ptr %14, align 8, !tbaa !265
  %21 = getelementptr inbounds i32, ptr %20, i64 %19
  %22 = load i32, ptr %21, align 4, !tbaa !65
  %23 = sext i32 %22 to i64
  %24 = ashr i32 %22, 5
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %4, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !65
  %28 = and i32 %22, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %23
  %34 = or i32 %29, %27
  store i32 %34, ptr %26, align 4, !tbaa !65
  %35 = load i32, ptr %33, align 4, !tbaa !101
  %36 = icmp eq i32 %35, %7
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %23, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !103
  br label %40

40:                                               ; preds = %32, %37
  %41 = phi i32 [ %39, %37 ], [ %35, %32 ]
  %42 = tail call ptr @ED_armature_edit_bone_add(ptr noundef %3, ptr noundef nonnull @.str.116) #7
  %43 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 3
  store ptr %6, ptr %43, align 8, !tbaa !266
  %44 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 9
  %45 = load i32, ptr %44, align 4, !tbaa !267
  %46 = or i32 %45, 16
  store i32 %46, ptr %44, align 4, !tbaa !267
  %47 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 7
  %48 = load float, ptr %15, align 4, !tbaa !100
  store float %48, ptr %47, align 4, !tbaa !100
  %49 = load float, ptr %16, align 4, !tbaa !100
  %50 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 7, i64 1
  store float %49, ptr %50, align 4, !tbaa !100
  %51 = load float, ptr %17, align 4, !tbaa !100
  %52 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 7, i64 2
  store float %51, ptr %52, align 4, !tbaa !100
  %53 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 8
  %54 = sext i32 %41 to i64
  %55 = getelementptr inbounds %struct.MVert, ptr %1, i64 %54
  %56 = load float, ptr %55, align 4, !tbaa !100
  store float %56, ptr %53, align 4, !tbaa !100
  %57 = getelementptr inbounds float, ptr %55, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !100
  %59 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 8, i64 1
  store float %58, ptr %59, align 4, !tbaa !100
  %60 = getelementptr inbounds float, ptr %55, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !100
  %62 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 8, i64 2
  store float %61, ptr %62, align 4, !tbaa !100
  %63 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 19
  store float 2.500000e-01, ptr %63, align 4, !tbaa !206
  %64 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 18
  store float 2.500000e-01, ptr %64, align 8, !tbaa !208
  %65 = getelementptr inbounds %struct.EditBone, ptr %42, i64 0, i32 5
  %66 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %65, i64 noundef 64, ptr noundef nonnull @.str.117, i32 noundef %22) #7
  %67 = tail call ptr @ED_vgroup_add_name(ptr noundef %0, ptr noundef nonnull %65) #7
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %40
  tail call void @ED_vgroup_vert_add(ptr noundef %0, ptr noundef nonnull %67, i32 noundef %7, float noundef 1.000000e+00, i32 noundef 1) #7
  tail call void @ED_vgroup_vert_add(ptr noundef %0, ptr noundef nonnull %67, i32 noundef %41, float noundef 1.000000e+00, i32 noundef 1) #7
  br label %70

70:                                               ; preds = %69, %40
  tail call fastcc void @skin_armature_bone_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %42, i32 noundef %41)
  br label %71

71:                                               ; preds = %18, %70
  %72 = add nuw nsw i64 %19, 1
  %73 = load i32, ptr %10, align 8, !tbaa !204
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %18, label %76, !llvm.loop !268

76:                                               ; preds = %71, %8
  ret void
}

declare void @ED_armature_from_edit(ptr noundef) local_unnamed_addr #2

declare void @ED_armature_edit_free(ptr noundef) local_unnamed_addr #2

declare ptr @ED_vgroup_add_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_vgroup_vert_add(ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @mesh_deform_bind(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @mesh_create_derived_view(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BKE_lattice_modifiers_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_displist_make_mball(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BKE_init_ocean_cache(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare ptr @modifier_path_relbase(ptr noundef) local_unnamed_addr #2

declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @BKE_add_ocean() local_unnamed_addr #2

declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @oceanbake_free(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %2(ptr noundef %0) #7
  ret void
}

declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @oceanbake_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !269
  %6 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !270
  %7 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 3
  store ptr %3, ptr %7, align 8, !tbaa !271
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !272
  %8 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !254
  %10 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !256
  tail call void @BKE_bake_ocean(ptr noundef %9, ptr noundef %11, ptr noundef nonnull @oceanbake_update, ptr noundef %0) #7
  store i16 1, ptr %2, align 2, !tbaa !273
  store i16 0, ptr %1, align 2, !tbaa !273
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @oceanbake_endjob(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !254
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BKE_free_ocean(ptr noundef nonnull %3) #7
  store ptr null, ptr %2, align 8, !tbaa !254
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !256
  %9 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !257
  %11 = getelementptr inbounds %struct.OceanModifierData, ptr %10, i64 0, i32 2
  store ptr %8, ptr %11, align 8, !tbaa !274
  %12 = getelementptr inbounds %struct.OceanModifierData, ptr %10, i64 0, i32 19
  store i8 1, ptr %12, align 8, !tbaa !275
  ret void
}

declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_init_ocean(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef) local_unnamed_addr #2

declare void @BKE_bake_ocean(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @oceanbake_update(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !272
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  store i32 1, ptr %2, align 4, !tbaa !65
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !270
  store i16 1, ptr %9, align 2, !tbaa !273
  %10 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !271
  store float %1, ptr %11, align 4, !tbaa !100
  ret void
}

declare void @BKE_free_ocean(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!46 = !{!47, !41, i64 72}
!47 = !{!"ModifierTypeInfo", !38, i64 0, !38, i64 32, !41, i64 64, !41, i64 68, !41, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208}
!48 = !{!37, !37, i64 0}
!49 = !{!50, !41, i64 16}
!50 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!51 = !{!47, !41, i64 68}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!35, !37, i64 1248}
!56 = !{!35, !40, i64 1162}
!57 = !{!35, !37, i64 1240}
!58 = !{!59, !40, i64 4}
!59 = !{!"PartDeflect", !41, i64 0, !40, i64 4, !40, i64 6, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !40, i64 16, !40, i64 18, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !37, i64 128, !37, i64 136, !44, i64 144, !41, i64 148, !37, i64 152}
!60 = !{!35, !41, i64 432}
!61 = !{!35, !37, i64 296}
!62 = !{!36, !41, i64 100}
!63 = !{!36, !40, i64 98}
!64 = distinct !{!64, !53, !54}
!65 = !{!41, !41, i64 0}
!66 = distinct !{!66, !53, !54}
!67 = !{!38, !38, i64 0}
!68 = !{i8 0, i8 2}
!69 = !{!70, !37, i64 112}
!70 = !{!"ParticleSystemModifierData", !50, i64 0, !37, i64 112, !37, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142}
!71 = distinct !{!71, !53, !54}
!72 = !{!73, !37, i64 272}
!73 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !74, i64 280, !74, i64 480, !74, i64 680, !74, i64 880, !74, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!74 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!75 = !{!76, !37, i64 0}
!76 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !45, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!77 = !{!73, !41, i64 1280}
!78 = !{!43, !37, i64 0}
!79 = !{!35, !37, i64 416}
!80 = !{!50, !37, i64 0}
!81 = distinct !{!81, !53, !54}
!82 = !{!50, !37, i64 8}
!83 = !{!84, !37, i64 16}
!84 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !43, i64 72, !43, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !38, i64 168, !38, i64 232, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !43, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !44, i64 648, !44, i64 652}
!85 = !{!86, !40, i64 192}
!86 = !{!"ParticleSettings", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !44, i64 232, !44, i64 236, !38, i64 240, !38, i64 248, !44, i64 256, !44, i64 260, !44, i64 264, !40, i64 268, !40, i64 270, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !38, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !38, i64 342, !44, i64 348, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !38, i64 376, !44, i64 388, !44, i64 392, !44, i64 396, !44, i64 400, !44, i64 404, !44, i64 408, !44, i64 412, !38, i64 416, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !41, i64 444, !41, i64 448, !44, i64 452, !44, i64 456, !44, i64 460, !44, i64 464, !44, i64 468, !44, i64 472, !44, i64 476, !44, i64 480, !44, i64 484, !44, i64 488, !44, i64 492, !44, i64 496, !44, i64 500, !44, i64 504, !44, i64 508, !44, i64 512, !44, i64 516, !44, i64 520, !44, i64 524, !44, i64 528, !44, i64 532, !44, i64 536, !44, i64 540, !44, i64 544, !44, i64 548, !38, i64 552, !44, i64 560, !44, i64 564, !41, i64 568, !41, i64 572, !38, i64 576, !37, i64 720, !43, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !40, i64 792, !38, i64 794}
!87 = !{!84, !37, i64 56}
!88 = !{!84, !41, i64 332}
!89 = !{!84, !41, i64 336}
!90 = !{!86, !41, i64 176}
!91 = !{!92, !41, i64 56}
!92 = !{!"ParticleCacheKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !44, i64 52, !41, i64 56}
!93 = distinct !{!93, !53, !54}
!94 = !{!84, !37, i64 64}
!95 = distinct !{!95, !53, !54}
!96 = !{!73, !41, i64 1284}
!97 = !{!73, !37, i64 232}
!98 = !{!73, !37, i64 240}
!99 = !{!73, !37, i64 208}
!100 = !{!44, !44, i64 0}
!101 = !{!102, !41, i64 0}
!102 = !{!"MEdge", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !40, i64 10}
!103 = !{!102, !41, i64 4}
!104 = !{!102, !40, i64 10}
!105 = !{!106, !38, i64 18}
!106 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!107 = distinct !{!107, !53, !54}
!108 = distinct !{!108, !53, !54}
!109 = distinct !{!109, !53, !54}
!110 = distinct !{!110, !53, !54}
!111 = !{!112, !37, i64 176}
!112 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !113, i64 280, !122, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !123, i64 4400, !124, i64 4416, !127, i64 4600, !37, i64 4608, !128, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !115, i64 4664, !116, i64 4824, !129, i64 4888, !37, i64 4952}
!113 = !{!"RenderData", !114, i64 0, !37, i64 248, !37, i64 256, !117, i64 264, !118, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !119, i64 544, !119, i64 560, !120, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !121, i64 2616, !41, i64 3976, !41, i64 3980}
!114 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !115, i64 24, !116, i64 184}
!115 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!116 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!117 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!118 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!119 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!120 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!121 = !{!"BakeData", !114, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!122 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!123 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!124 = !{!"GameData", !123, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !125, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !126, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!125 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!126 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!127 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!128 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!129 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!130 = !{!50, !41, i64 20}
!131 = !{!50, !37, i64 96}
!132 = !{!47, !37, i64 160}
!133 = !{!73, !37, i64 144}
!134 = !{!135, !40, i64 208}
!135 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !43, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !41, i64 220}
!136 = !{!137, !37, i64 1680}
!137 = !{!"DerivedMesh", !74, i64 0, !74, i64 200, !74, i64 400, !74, i64 600, !74, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!138 = !{!139, !38, i64 115}
!139 = !{!"MultiresModifierData", !50, i64 0, !38, i64 112, !38, i64 113, !38, i64 114, !38, i64 115, !38, i64 116, !38, i64 117, !38, i64 118}
!140 = !{!45, !45, i64 0}
!141 = !{!47, !37, i64 88}
!142 = !{!35, !37, i64 1224}
!143 = !{!86, !40, i64 160}
!144 = !{!84, !37, i64 0}
!145 = distinct !{!145, !53, !54}
!146 = !{!147, !37, i64 0}
!147 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !148, i64 152, !40, i64 184}
!148 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!149 = !{!147, !37, i64 24}
!150 = !{!147, !37, i64 8}
!151 = !{!147, !37, i64 48}
!152 = !{!147, !37, i64 32}
!153 = !{!147, !37, i64 72}
!154 = !{!147, !40, i64 184}
!155 = !{!147, !37, i64 88}
!156 = !{!147, !37, i64 104}
!157 = !{!158, !37, i64 112}
!158 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!159 = !{!158, !37, i64 120}
!160 = !{!161, !37, i64 8}
!161 = !{!"EnumPropertyItem", !41, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !37, i64 32}
!162 = !{!161, !41, i64 0}
!163 = distinct !{!163, !53, !54}
!164 = !{!165, !37, i64 16}
!165 = !{!"PointerRNA", !166, i64 0, !37, i64 8, !37, i64 16}
!166 = !{!"", !37, i64 0}
!167 = !{i32 2, i32 5}
!168 = !{!112, !37, i64 168}
!169 = !{!170, !37, i64 32}
!170 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!171 = !{!165, !37, i64 0}
!172 = !{!35, !37, i64 24}
!173 = !{!36, !37, i64 24}
!174 = !{i32 0, i32 2}
!175 = !{!139, !38, i64 116}
!176 = !{!139, !38, i64 112}
!177 = !{!178, !37, i64 32}
!178 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !165, i64 16}
!179 = !{!180, !37, i64 0}
!180 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !43, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!181 = !{!73, !41, i64 1300}
!182 = !{!158, !37, i64 96}
!183 = !{!184, !38, i64 60}
!184 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!185 = !{!184, !37, i64 40}
!186 = !{!184, !37, i64 48}
!187 = !{!188, !37, i64 32}
!188 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !74, i64 144, !74, i64 344, !74, i64 544, !74, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !43, i64 960, !37, i64 976, !43, i64 984, !37, i64 1000}
!189 = !{!190, !38, i64 13}
!190 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!191 = !{!192, !37, i64 0}
!192 = !{!"BMVert", !190, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!193 = !{!194, !41, i64 12}
!194 = !{!"MVertSkin", !38, i64 0, !41, i64 12}
!195 = distinct !{!195, !53, !54}
!196 = distinct !{!196, !53, !54}
!197 = distinct !{!197, !53, !54}
!198 = !{!137, !37, i64 1168}
!199 = !{!200, !41, i64 216}
!200 = !{!"bArmature", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!201 = !{!35, !40, i64 1044}
!202 = !{!200, !41, i64 196}
!203 = !{!200, !37, i64 160}
!204 = !{!205, !41, i64 8}
!205 = !{!"MeshElemMap", !37, i64 0, !41, i64 8}
!206 = !{!207, !44, i64 172}
!207 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !44, i64 104, !38, i64 108, !38, i64 120, !41, i64 132, !41, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !40, i64 180}
!208 = !{!207, !44, i64 168}
!209 = distinct !{!209, !53, !54}
!210 = !{!211, !37, i64 120}
!211 = !{!"ArmatureModifierData", !50, i64 0, !40, i64 112, !40, i64 114, !41, i64 116, !37, i64 120, !37, i64 128, !38, i64 136}
!212 = !{!211, !40, i64 112}
!213 = !{!214, !37, i64 208}
!214 = !{!"MeshDeformModifierData", !50, i64 0, !37, i64 112, !38, i64 120, !40, i64 184, !40, i64 186, !38, i64 188, !37, i64 192, !37, i64 200, !37, i64 208, !41, i64 216, !41, i64 220, !37, i64 224, !37, i64 232, !37, i64 240, !41, i64 248, !41, i64 252, !38, i64 256, !44, i64 268, !38, i64 272, !37, i64 336, !37, i64 344, !37, i64 352}
!215 = !{!214, !37, i64 224}
!216 = !{!214, !37, i64 232}
!217 = !{!214, !37, i64 192}
!218 = !{!214, !37, i64 200}
!219 = !{!214, !37, i64 240}
!220 = !{!214, !37, i64 336}
!221 = !{!214, !37, i64 344}
!222 = !{!214, !41, i64 252}
!223 = !{!214, !41, i64 20}
!224 = !{!214, !37, i64 352}
!225 = !{!226, !37, i64 1888}
!226 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !45, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !43, i64 1088, !43, i64 1104, !43, i64 1120, !43, i64 1136, !43, i64 1152, !43, i64 1168, !43, i64 1184, !43, i64 1200, !43, i64 1216, !43, i64 1232, !43, i64 1248, !43, i64 1264, !43, i64 1280, !43, i64 1296, !43, i64 1312, !43, i64 1328, !43, i64 1344, !43, i64 1360, !43, i64 1376, !43, i64 1392, !43, i64 1408, !43, i64 1424, !43, i64 1440, !43, i64 1456, !43, i64 1472, !43, i64 1488, !43, i64 1504, !43, i64 1520, !43, i64 1536, !43, i64 1552, !43, i64 1568, !43, i64 1584, !43, i64 1600, !43, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
!227 = !{!228, !40, i64 120}
!228 = !{!"ExplodeModifierData", !50, i64 0, !37, i64 112, !40, i64 120, !40, i64 122, !44, i64 124, !38, i64 128}
!229 = !{!230, !38, i64 1275}
!230 = !{!"OceanModifierData", !50, i64 0, !37, i64 112, !37, i64 120, !41, i64 128, !41, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 1208, !38, i64 1272, !38, i64 1273, !38, i64 1274, !38, i64 1275, !40, i64 1276, !40, i64 1278, !41, i64 1280, !44, i64 1284, !44, i64 1288, !41, i64 1292}
!231 = !{!230, !41, i64 176}
!232 = !{!230, !41, i64 180}
!233 = !{!230, !44, i64 160}
!234 = !{!230, !44, i64 164}
!235 = !{!230, !44, i64 168}
!236 = !{!230, !44, i64 1288}
!237 = !{!230, !41, i64 128}
!238 = !{!239, !41, i64 72}
!239 = !{!"OceanCache", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!240 = !{!239, !37, i64 40}
!241 = !{!112, !41, i64 680}
!242 = !{!35, !37, i64 120}
!243 = !{!230, !44, i64 172}
!244 = distinct !{!244, !53, !54}
!245 = !{!230, !38, i64 1274}
!246 = !{!230, !41, i64 132}
!247 = !{!230, !44, i64 136}
!248 = !{!230, !44, i64 144}
!249 = !{!230, !44, i64 156}
!250 = !{!230, !44, i64 140}
!251 = !{!230, !44, i64 152}
!252 = !{!230, !44, i64 148}
!253 = !{!230, !41, i64 1280}
!254 = !{!255, !37, i64 48}
!255 = !{!"OceanBakeJob", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!256 = !{!255, !37, i64 40}
!257 = !{!255, !37, i64 56}
!258 = !{!259, !40, i64 200}
!259 = !{!"LaplacianDeformModifierData", !50, i64 0, !38, i64 112, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192, !40, i64 200, !38, i64 202}
!260 = !{!261, !37, i64 24}
!261 = !{!"BMEdge", !190, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !262, i64 48, !262, i64 64}
!262 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!263 = !{!261, !37, i64 32}
!264 = distinct !{!264, !53, !54}
!265 = !{!205, !37, i64 0}
!266 = !{!207, !37, i64 24}
!267 = !{!207, !41, i64 132}
!268 = distinct !{!268, !53, !54}
!269 = !{!255, !37, i64 8}
!270 = !{!255, !37, i64 16}
!271 = !{!255, !37, i64 24}
!272 = !{!180, !38, i64 2080}
!273 = !{!40, !40, i64 0}
!274 = !{!230, !37, i64 120}
!275 = !{!230, !38, i64 1272}
