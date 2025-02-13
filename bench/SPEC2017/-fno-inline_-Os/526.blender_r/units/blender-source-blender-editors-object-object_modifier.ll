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
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleCacheKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.MVertSkin = type { [3 x float], i32 }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.MeshDeformModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, i16, [2 x i16], ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, [3 x float], float, [4 x [4 x float]], ptr, ptr, ptr }
%struct.ExplodeModifierData = type { %struct.ModifierData, ptr, i16, i16, float, [64 x i8] }
%struct.OceanModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, float, float, i32, i32, [1024 x i8], [64 x i8], i8, i8, i8, i8, i16, i16, i32, float, float, i32 }
%struct.OceanCache = type { ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, i32, i32, i32, i32, i32, i32 }
%struct.OceanBakeJob = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.LaplacianDeformModifierData = type { %struct.ModifierData, [64 x i8], i32, i32, ptr, ptr, i16, [3 x i16] }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.MeshElemMap = type { ptr, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_object_modifier_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @modifierType_getInfo(i32 noundef %5) #11
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
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str, ptr noundef nonnull %11) #11
  br label %82

12:                                               ; preds = %6, %6, %6, %6, %6
  %13 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @modifiers_findByType(ptr noundef nonnull %3, i32 noundef %5) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @BKE_report(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.1) #11
  br label %82

21:                                               ; preds = %17, %12
  %22 = icmp eq i32 %5, 19
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = tail call ptr @object_add_particle_system(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) #11
  br label %80

25:                                               ; preds = %21
  %26 = tail call ptr @modifier_new(i32 noundef %5) #11
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
  %38 = tail call ptr @modifierType_getInfo(i32 noundef %37) #11
  %39 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !51
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %31, label %42, !llvm.loop !52

42:                                               ; preds = %31, %35
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %30, ptr noundef %33, ptr noundef %26) #11
  br label %44

43:                                               ; preds = %25
  tail call void @BLI_addtail(ptr noundef nonnull %30, ptr noundef %26) #11
  br label %44

44:                                               ; preds = %43, %42
  %45 = icmp eq ptr %4, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.ModifierData, ptr %26, i64 0, i32 6
  %48 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %47, ptr noundef nonnull %4, i64 noundef 64) #11
  br label %49

49:                                               ; preds = %46, %44
  %50 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 26
  tail call void @modifier_unique_name(ptr noundef nonnull %50, ptr noundef %26) #11
  switch i32 %5, label %80 [
    i32 10, label %51
    i32 23, label %60
    i32 30, label %69
    i32 29, label %70
    i32 42, label %77
  ]

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 111
  %53 = load ptr, ptr %52, align 8, !tbaa !54
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = tail call ptr @sbNew(ptr noundef %2) #11
  store ptr %56, ptr %52, align 8, !tbaa !54
  %57 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 104
  %58 = load i16, ptr %57, align 2, !tbaa !55
  %59 = or i16 %58, 6
  store i16 %59, ptr %57, align 2, !tbaa !55
  br label %80

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %62 = load ptr, ptr %61, align 8, !tbaa !56
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = tail call ptr @object_add_collision_fields(i32 noundef 0) #11
  store ptr %65, ptr %61, align 8, !tbaa !56
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi ptr [ %65, %64 ], [ %62, %60 ]
  %68 = getelementptr inbounds %struct.PartDeflect, ptr %67, i64 0, i32 1
  store i16 1, ptr %68, align 4, !tbaa !57
  tail call void @DAG_relations_tag_update(ptr noundef %1) #11
  br label %80

69:                                               ; preds = %49
  tail call void @DAG_relations_tag_update(ptr noundef %1) #11
  br label %80

70:                                               ; preds = %49
  tail call void @multiresModifier_set_levels_from_disps(ptr noundef %26, ptr noundef %3) #11
  %71 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %72 = load i32, ptr %71, align 8, !tbaa !59
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @BKE_sculpt_mask_layers_ensure(ptr noundef nonnull %3, ptr noundef %26) #11
  br label %80

77:                                               ; preds = %49
  %78 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %79 = load ptr, ptr %78, align 8, !tbaa !60
  tail call void @BKE_mesh_ensure_skin_customdata(ptr noundef %79) #11
  br label %80

80:                                               ; preds = %49, %55, %51, %69, %77, %70, %75, %66, %23
  %81 = phi ptr [ %24, %23 ], [ %26, %51 ], [ %26, %55 ], [ %26, %66 ], [ %26, %69 ], [ %26, %75 ], [ %26, %70 ], [ %26, %77 ], [ %26, %49 ]
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #11
  br label %82

82:                                               ; preds = %80, %20, %10
  %83 = phi ptr [ null, %20 ], [ %81, %80 ], [ null, %10 ]
  ret ptr %83
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @object_add_particle_system(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifier_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbNew(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @object_add_collision_fields(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @multiresModifier_set_levels_from_disps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_sculpt_mask_layers_ensure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_ensure_skin_customdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_object_iter_other(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !61
  %10 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 5
  %11 = load i16, ptr %10, align 2, !tbaa !62
  %12 = shl i16 %11, 6
  %13 = ashr i16 %12, 15
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %9, %14
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %46

17:                                               ; preds = %5
  %18 = icmp ne i8 %2, 0
  %19 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %17
  %23 = xor i1 %18, true
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %22, %40
  %26 = phi ptr [ %42, %40 ], [ %20, %22 ]
  %27 = phi i32 [ %41, %40 ], [ %24, %22 ]
  %28 = icmp ne ptr %26, %1
  %29 = or i1 %18, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = load ptr, ptr %6, align 8, !tbaa !60
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = tail call zeroext i8 %3(ptr noundef nonnull %26, ptr noundef %4) #11
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = add nsw i32 %27, 1
  br label %40

40:                                               ; preds = %30, %38, %25
  %41 = phi i32 [ %39, %38 ], [ %27, %30 ], [ %27, %25 ]
  %42 = load ptr, ptr %26, align 8, !tbaa !48
  %43 = icmp eq ptr %42, null
  %44 = icmp sge i32 %41, %15
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %50, label %25, !llvm.loop !63

46:                                               ; preds = %5
  %47 = icmp eq i8 %2, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %46
  %49 = tail call zeroext i8 %3(ptr noundef nonnull %1, ptr noundef %4) #11
  br label %50

50:                                               ; preds = %35, %40, %17, %46, %48
  %51 = phi i8 [ %49, %48 ], [ 0, %46 ], [ 0, %17 ], [ 1, %35 ], [ 0, %40 ]
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_object_multires_update_totlevels_cb(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !64
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
  tail call void @multires_set_tot_level(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %3) #11
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #11
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %8, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !65

16:                                               ; preds = %13, %2
  ret i8 0
}

; Function Attrs: optsize
declare void @multires_set_tot_level(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_object_modifier_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  %6 = call fastcc zeroext i8 @object_modifier_remove(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #13, !range !66
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 6
  %10 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  br label %12

11:                                               ; preds = %4
  tail call void @DAG_id_tag_update(ptr noundef %2, i16 noundef signext 2) #11
  tail call void @DAG_relations_tag_update(ptr noundef %1) #11
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i8 [ 1, %11 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @object_modifier_remove(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !67 {
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %6 = tail call i32 @BLI_findindex(ptr noundef nonnull %5, ptr noundef %2) #11
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %53, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !49
  switch i32 %10, label %42 [
    i32 19, label %11
    i32 10, label %16
    i32 23, label %22
    i32 30, label %29
    i32 29, label %30
    i32 42, label %36
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %13 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  tail call void @BLI_remlink(ptr noundef nonnull %12, ptr noundef %14) #11
  %15 = load ptr, ptr %13, align 8, !tbaa !68
  tail call void @psys_free(ptr noundef %1, ptr noundef %15) #11
  store ptr null, ptr %13, align 8, !tbaa !68
  br label %40

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %16
  tail call void @sbFree(ptr noundef nonnull %18) #11
  store ptr null, ptr %17, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 104
  store i16 0, ptr %21, align 2, !tbaa !55
  br label %40

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 110
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.PartDeflect, ptr %24, i64 0, i32 1
  store i16 0, ptr %27, align 4, !tbaa !57
  br label %28

28:                                               ; preds = %26, %22
  store i8 1, ptr %3, align 1, !tbaa !70
  br label %40

29:                                               ; preds = %8
  store i8 1, ptr %3, align 1, !tbaa !70
  br label %40

30:                                               ; preds = %8
  %31 = tail call fastcc zeroext i8 @object_modifier_safe_to_delete(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 29) #13, !range !66
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  tail call void @multires_customdata_delete(ptr noundef %35) #11
  br label %40

36:                                               ; preds = %8
  %37 = tail call fastcc zeroext i8 @object_modifier_safe_to_delete(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 42) #13, !range !66
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call fastcc void @modifier_skin_customdata_delete(ptr noundef %1) #13
  br label %40

40:                                               ; preds = %11, %28, %33, %30, %36, %39, %29, %20
  %41 = load i32, ptr %9, align 8, !tbaa !49
  br label %42

42:                                               ; preds = %40, %8
  %43 = phi i32 [ %41, %40 ], [ %10, %8 ]
  switch i32 %43, label %52 [
    i32 10, label %44
    i32 22, label %44
  ]

44:                                               ; preds = %16, %42, %42
  %45 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %46 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %45) #13, !range !66
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %50 = load i32, ptr %49, align 8, !tbaa !59
  %51 = and i32 %50, -33
  store i32 %51, ptr %49, align 8, !tbaa !59
  br label %52

52:                                               ; preds = %42, %48, %44
  tail call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %2) #11
  tail call void @modifier_free(ptr noundef nonnull %2) #11
  br label %53

53:                                               ; preds = %4, %52
  %54 = phi i8 [ 1, %52 ], [ 0, %4 ]
  ret i8 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_modifier_clear(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = call fastcc zeroext i8 @object_modifier_remove(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %3) #13, !range !66
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %7, !llvm.loop !73

12:                                               ; preds = %7
  tail call void @DAG_id_tag_update(ptr noundef %1, i16 noundef signext 2) #11
  tail call void @DAG_relations_tag_update(ptr noundef %0) #11
  br label %13

13:                                               ; preds = %2, %12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_object_modifier_move_up(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !49
  %10 = tail call ptr @modifierType_getInfo(i32 noundef %9) #11
  %11 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !51
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %4, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.ModifierData, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !49
  %18 = tail call ptr @modifierType_getInfo(i32 noundef %17) #11
  %19 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %7, %14
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  tail call void @BLI_remlink(ptr noundef nonnull %24, ptr noundef nonnull %2) #11
  %25 = load ptr, ptr %4, align 8, !tbaa !74
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %24, ptr noundef %25, ptr noundef nonnull %2) #11
  br label %27

26:                                               ; preds = %14
  tail call void @BKE_report(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3) #11
  br label %27

27:                                               ; preds = %3, %23, %26
  %28 = phi i32 [ 0, %26 ], [ 1, %23 ], [ 1, %3 ]
  ret i32 %28
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_object_modifier_move_down(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = tail call ptr @modifierType_getInfo(i32 noundef %8) #11
  %10 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %2, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.ModifierData, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !49
  %18 = tail call ptr @modifierType_getInfo(i32 noundef %17) #11
  %19 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !51
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %6, %14
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  tail call void @BLI_remlink(ptr noundef nonnull %23, ptr noundef nonnull %2) #11
  %24 = load ptr, ptr %2, align 8, !tbaa !72
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %23, ptr noundef %24, ptr noundef nonnull %2) #11
  br label %26

25:                                               ; preds = %14
  tail call void @BKE_report(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.4) #11
  br label %26

26:                                               ; preds = %3, %22, %25
  %27 = phi i32 [ 0, %25 ], [ 1, %22 ], [ 1, %3 ]
  ret i32 %27
}

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_object_modifier_convert(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ModifierData, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !49
  %8 = icmp eq i32 %7, 19
  br i1 %8, label %9, label %195

9:                                                ; preds = %5
  %10 = icmp eq ptr %3, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %195

16:                                               ; preds = %11, %9
  %17 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %4, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.ParticleSettings, ptr %20, i64 0, i32 21
  %22 = load i16, ptr %21, align 8, !tbaa !77
  %23 = icmp eq i16 %22, 6
  br i1 %23, label %24, label %195

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  %27 = icmp eq ptr %26, null
  br i1 %27, label %195, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 29
  %30 = load i32, ptr %29, align 4, !tbaa !80
  %31 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 30
  %32 = load i32, ptr %31, align 8, !tbaa !81
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ParticleSettings, ptr %20, i64 0, i32 15
  %36 = load i32, ptr %35, align 8, !tbaa !82
  %37 = and i32 %36, 256
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %34, %28
  %40 = icmp sgt i32 %30, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %39
  %42 = zext nneg i32 %30 to i64
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ 0, %41 ], [ %57, %43 ]
  %45 = phi i32 [ 0, %41 ], [ %56, %43 ]
  %46 = phi i32 [ 0, %41 ], [ %54, %43 ]
  %47 = getelementptr inbounds ptr, ptr %26, i64 %44
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = getelementptr inbounds %struct.ParticleCacheKey, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !83
  %51 = icmp sgt i32 %50, 0
  %52 = add nuw nsw i32 %50, 1
  %53 = select i1 %51, i32 %52, i32 0
  %54 = add nsw i32 %53, %46
  %55 = tail call i32 @llvm.smax.i32(i32 %50, i32 0)
  %56 = add nuw nsw i32 %55, %45
  %57 = add nuw nsw i64 %44, 1
  %58 = icmp eq i64 %57, %42
  br i1 %58, label %59, label %43, !llvm.loop !85

59:                                               ; preds = %43, %34, %39
  %60 = phi i1 [ false, %39 ], [ false, %34 ], [ %40, %43 ]
  %61 = phi i32 [ %30, %39 ], [ 0, %34 ], [ %30, %43 ]
  %62 = phi i32 [ 0, %39 ], [ 0, %34 ], [ %54, %43 ]
  %63 = phi i32 [ 0, %39 ], [ 0, %34 ], [ %56, %43 ]
  %64 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !86
  %66 = icmp sgt i32 %32, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %59
  %68 = zext nneg i32 %32 to i64
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ 0, %67 ], [ %83, %69 ]
  %71 = phi i32 [ %63, %67 ], [ %82, %69 ]
  %72 = phi i32 [ %62, %67 ], [ %80, %69 ]
  %73 = getelementptr inbounds ptr, ptr %65, i64 %70
  %74 = load ptr, ptr %73, align 8, !tbaa !48
  %75 = getelementptr inbounds %struct.ParticleCacheKey, ptr %74, i64 0, i32 5
  %76 = load i32, ptr %75, align 4, !tbaa !83
  %77 = icmp sgt i32 %76, 0
  %78 = add nuw nsw i32 %76, 1
  %79 = select i1 %77, i32 %78, i32 0
  %80 = add nsw i32 %79, %72
  %81 = tail call i32 @llvm.smax.i32(i32 %76, i32 0)
  %82 = add nsw i32 %81, %71
  %83 = add nuw nsw i64 %70, 1
  %84 = icmp eq i64 %83, %68
  br i1 %84, label %85, label %69, !llvm.loop !87

85:                                               ; preds = %69, %59
  %86 = phi i32 [ %62, %59 ], [ %80, %69 ]
  %87 = phi i32 [ %63, %59 ], [ %82, %69 ]
  %88 = icmp eq i32 %86, 0
  br i1 %88, label %195, label %89

89:                                               ; preds = %85
  %90 = tail call ptr @BKE_object_add(ptr noundef %1, ptr noundef %2, i32 noundef 1) #11
  %91 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 19
  %92 = load ptr, ptr %91, align 8, !tbaa !60
  %93 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 26
  store i32 %86, ptr %93, align 8, !tbaa !88
  %94 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 27
  store i32 %87, ptr %94, align 4, !tbaa !91
  %95 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 21
  %96 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %95, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %86) #11
  %97 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 15
  store ptr %96, ptr %97, align 8, !tbaa !92
  %98 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 22
  %99 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %98, i32 noundef 3, i32 noundef 1, ptr noundef null, i32 noundef %87) #11
  %100 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 16
  store ptr %99, ptr %100, align 8, !tbaa !93
  %101 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 23
  %102 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %101, i32 noundef 4, i32 noundef 1, ptr noundef null, i32 noundef 0) #11
  %103 = getelementptr inbounds %struct.Mesh, ptr %92, i64 0, i32 12
  store ptr %102, ptr %103, align 8, !tbaa !94
  %104 = load ptr, ptr %97, align 8, !tbaa !92
  %105 = load ptr, ptr %100, align 8, !tbaa !93
  %106 = load ptr, ptr %25, align 8, !tbaa !79
  br i1 %60, label %107, label %148

107:                                              ; preds = %89
  %108 = zext nneg i32 %61 to i64
  br label %109

109:                                              ; preds = %107, %142
  %110 = phi i64 [ 0, %107 ], [ %146, %142 ]
  %111 = phi i32 [ 0, %107 ], [ %145, %142 ]
  %112 = phi ptr [ %105, %107 ], [ %144, %142 ]
  %113 = phi ptr [ %104, %107 ], [ %143, %142 ]
  %114 = getelementptr inbounds ptr, ptr %106, i64 %110
  %115 = load ptr, ptr %114, align 8, !tbaa !48
  %116 = getelementptr inbounds %struct.ParticleCacheKey, ptr %115, i64 0, i32 5
  %117 = load i32, ptr %116, align 4, !tbaa !83
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %142, label %119

119:                                              ; preds = %109, %135
  %120 = phi i32 [ %139, %135 ], [ %111, %109 ]
  %121 = phi i32 [ %137, %135 ], [ 0, %109 ]
  %122 = phi ptr [ %136, %135 ], [ %112, %109 ]
  %123 = phi ptr [ %140, %135 ], [ %113, %109 ]
  %124 = phi ptr [ %138, %135 ], [ %115, %109 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %123, ptr noundef nonnull %124) #13
  %125 = icmp eq i32 %121, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %119
  %127 = add nsw i32 %120, -1
  store i32 %127, ptr %122, align 4, !tbaa !95
  %128 = getelementptr inbounds %struct.MEdge, ptr %122, i64 0, i32 1
  store i32 %120, ptr %128, align 4, !tbaa !97
  %129 = getelementptr inbounds %struct.MEdge, ptr %122, i64 0, i32 4
  store i16 162, ptr %129, align 2, !tbaa !98
  %130 = getelementptr inbounds %struct.MEdge, ptr %122, i64 1
  br label %135

131:                                              ; preds = %119
  %132 = getelementptr inbounds %struct.MVert, ptr %123, i64 0, i32 2
  %133 = load i8, ptr %132, align 2, !tbaa !99
  %134 = or i8 %133, 1
  store i8 %134, ptr %132, align 2, !tbaa !99
  br label %135

135:                                              ; preds = %126, %131
  %136 = phi ptr [ %130, %126 ], [ %122, %131 ]
  %137 = add nuw i32 %121, 1
  %138 = getelementptr inbounds %struct.ParticleCacheKey, ptr %124, i64 1
  %139 = add nsw i32 %120, 1
  %140 = getelementptr inbounds %struct.MVert, ptr %123, i64 1
  %141 = icmp eq i32 %121, %117
  br i1 %141, label %142, label %119, !llvm.loop !101

142:                                              ; preds = %135, %109
  %143 = phi ptr [ %113, %109 ], [ %140, %135 ]
  %144 = phi ptr [ %112, %109 ], [ %136, %135 ]
  %145 = phi i32 [ %111, %109 ], [ %139, %135 ]
  %146 = add nuw nsw i64 %110, 1
  %147 = icmp eq i64 %146, %108
  br i1 %147, label %148, label %109, !llvm.loop !102

148:                                              ; preds = %142, %89
  %149 = phi ptr [ %104, %89 ], [ %143, %142 ]
  %150 = phi ptr [ %105, %89 ], [ %144, %142 ]
  %151 = phi i32 [ 0, %89 ], [ %145, %142 ]
  %152 = load ptr, ptr %64, align 8, !tbaa !86
  br i1 %66, label %153, label %194

153:                                              ; preds = %148
  %154 = zext nneg i32 %32 to i64
  br label %155

155:                                              ; preds = %153, %188
  %156 = phi i64 [ 0, %153 ], [ %192, %188 ]
  %157 = phi i32 [ %151, %153 ], [ %191, %188 ]
  %158 = phi ptr [ %150, %153 ], [ %190, %188 ]
  %159 = phi ptr [ %149, %153 ], [ %189, %188 ]
  %160 = getelementptr inbounds ptr, ptr %152, i64 %156
  %161 = load ptr, ptr %160, align 8, !tbaa !48
  %162 = getelementptr inbounds %struct.ParticleCacheKey, ptr %161, i64 0, i32 5
  %163 = load i32, ptr %162, align 4, !tbaa !83
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %188, label %165

165:                                              ; preds = %155, %181
  %166 = phi i32 [ %185, %181 ], [ %157, %155 ]
  %167 = phi i32 [ %183, %181 ], [ 0, %155 ]
  %168 = phi ptr [ %182, %181 ], [ %158, %155 ]
  %169 = phi ptr [ %186, %181 ], [ %159, %155 ]
  %170 = phi ptr [ %184, %181 ], [ %161, %155 ]
  tail call fastcc void @copy_v3_v3(ptr noundef %169, ptr noundef nonnull %170) #13
  %171 = icmp eq i32 %167, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %165
  %173 = add nsw i32 %166, -1
  store i32 %173, ptr %168, align 4, !tbaa !95
  %174 = getelementptr inbounds %struct.MEdge, ptr %168, i64 0, i32 1
  store i32 %166, ptr %174, align 4, !tbaa !97
  %175 = getelementptr inbounds %struct.MEdge, ptr %168, i64 0, i32 4
  store i16 162, ptr %175, align 2, !tbaa !98
  %176 = getelementptr inbounds %struct.MEdge, ptr %168, i64 1
  br label %181

177:                                              ; preds = %165
  %178 = getelementptr inbounds %struct.MVert, ptr %169, i64 0, i32 2
  %179 = load i8, ptr %178, align 2, !tbaa !99
  %180 = or i8 %179, 1
  store i8 %180, ptr %178, align 2, !tbaa !99
  br label %181

181:                                              ; preds = %172, %177
  %182 = phi ptr [ %176, %172 ], [ %168, %177 ]
  %183 = add nuw i32 %167, 1
  %184 = getelementptr inbounds %struct.ParticleCacheKey, ptr %170, i64 1
  %185 = add nsw i32 %166, 1
  %186 = getelementptr inbounds %struct.MVert, ptr %169, i64 1
  %187 = icmp eq i32 %167, %163
  br i1 %187, label %188, label %165, !llvm.loop !103

188:                                              ; preds = %181, %155
  %189 = phi ptr [ %159, %155 ], [ %186, %181 ]
  %190 = phi ptr [ %158, %155 ], [ %182, %181 ]
  %191 = phi i32 [ %157, %155 ], [ %185, %181 ]
  %192 = add nuw nsw i64 %156, 1
  %193 = icmp eq i64 %192, %154
  br i1 %193, label %194, label %155, !llvm.loop !104

194:                                              ; preds = %188, %148
  tail call void @DAG_relations_tag_update(ptr noundef %1) #11
  br label %195

195:                                              ; preds = %85, %16, %24, %11, %5, %194
  %196 = phi i32 [ 1, %194 ], [ 0, %5 ], [ 0, %11 ], [ 0, %24 ], [ 0, %16 ], [ 0, %85 ]
  ret i32 %196
}

; Function Attrs: optsize
declare ptr @BKE_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !105 {
  %3 = load float, ptr %1, align 4, !tbaa !106
  store float %3, ptr %0, align 4, !tbaa !106
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !106
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !106
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !106
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !106
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_object_modifier_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.5) #11
  br label %48

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !61
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.6) #11
  br label %48

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %19 = load i32, ptr %18, align 8, !tbaa !59
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = tail call ptr @find_multires_modifier_before(ptr noundef nonnull %1, ptr noundef %3) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @modifier_isSameTopology(ptr noundef %3) #11
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.7) #11
  br label %48

29:                                               ; preds = %25, %22, %17
  %30 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 26
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  %32 = icmp eq ptr %31, %3
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @BKE_report(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.8) #11
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !126
  %37 = or i32 %36, 1
  store i32 %37, ptr %35, align 4, !tbaa !126
  %38 = icmp eq i32 %4, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = tail call fastcc i32 @modifier_apply_shape(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !127
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  store i32 %36, ptr %35, align 4, !tbaa !126
  br label %48

43:                                               ; preds = %34
  %44 = tail call fastcc i32 @modifier_apply_obdata(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #13, !range !127
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 %36, ptr %35, align 4, !tbaa !126
  br label %48

47:                                               ; preds = %43, %39
  tail call void @BLI_remlink(ptr noundef nonnull %30, ptr noundef nonnull %3) #11
  tail call void @modifier_free(ptr noundef nonnull %3) #11
  br label %48

48:                                               ; preds = %47, %46, %42, %28, %16, %9
  %49 = phi i32 [ 0, %9 ], [ 0, %16 ], [ 0, %28 ], [ 1, %47 ], [ 0, %42 ], [ 0, %46 ]
  ret i32 %49
}

; Function Attrs: optsize
declare ptr @find_multires_modifier_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @modifier_isSameTopology(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @modifier_apply_shape(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !128 {
  %5 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !49
  %7 = tail call ptr @modifierType_getInfo(i32 noundef %6) #11
  %8 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 7
  store ptr %1, ptr %8, align 8, !tbaa !129
  %9 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = tail call zeroext i8 %10(ptr noundef nonnull %3, i32 noundef 0) #11
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.89) #11
  br label %49

16:                                               ; preds = %12, %4
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !34
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !131
  %25 = tail call zeroext i8 @modifier_isSameTopology(ptr noundef nonnull %3) #11
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !51
  %30 = icmp eq i32 %29, 5
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %20
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.90) #11
  br label %49

32:                                               ; preds = %27
  %33 = tail call ptr @mesh_create_derived_for_modifier(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0) #11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.91) #11
  br label %49

36:                                               ; preds = %32
  %37 = icmp eq ptr %24, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = tail call ptr @BKE_key_add(ptr noundef nonnull %22) #11
  store ptr %39, ptr %23, align 8, !tbaa !131
  %40 = getelementptr inbounds %struct.Key, ptr %39, i64 0, i32 9
  store i16 1, ptr %40, align 8, !tbaa !132
  %41 = tail call ptr @BKE_keyblock_add(ptr noundef %39, ptr noundef null) #11
  tail call void @BKE_key_convert_from_mesh(ptr noundef nonnull %22, ptr noundef %41) #11
  br label %42

42:                                               ; preds = %38, %36
  %43 = phi ptr [ %39, %38 ], [ %24, %36 ]
  %44 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 6
  %45 = tail call ptr @BKE_keyblock_add(ptr noundef nonnull %43, ptr noundef nonnull %44) #11
  tail call void @DM_to_meshkey(ptr noundef nonnull %33, ptr noundef nonnull %22, ptr noundef %45) #11
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 95
  %47 = load ptr, ptr %46, align 8, !tbaa !134
  tail call void %47(ptr noundef nonnull %33) #11
  br label %49

48:                                               ; preds = %16
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.92) #11
  br label %49

49:                                               ; preds = %35, %31, %42, %48, %15
  %50 = phi i32 [ 0, %15 ], [ 0, %48 ], [ 1, %42 ], [ 0, %31 ], [ 0, %35 ]
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @modifier_apply_obdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !136 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !49
  %8 = tail call ptr @modifierType_getInfo(i32 noundef %7) #11
  %9 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 7
  store ptr %1, ptr %9, align 8, !tbaa !129
  %10 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %8, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = tail call zeroext i8 %11(ptr noundef nonnull %3, i32 noundef 0) #11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.89) #11
  br label %92

17:                                               ; preds = %13, %4
  %18 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !34
  switch i16 %19, label %76 [
    i16 1, label %20
    i16 2, label %61
    i16 3, label %61
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = tail call ptr @find_multires_modifier_before(ptr noundef %1, ptr noundef nonnull %3) #11
  %24 = getelementptr inbounds %struct.Mesh, ptr %22, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %8, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !51
  %30 = icmp eq i32 %29, 5
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.93) #11
  br label %92

32:                                               ; preds = %27, %20
  %33 = load i32, ptr %6, align 8, !tbaa !49
  %34 = icmp eq i32 %33, 29
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @multires_force_update(ptr noundef nonnull %2) #11
  br label %36

36:                                               ; preds = %35, %32
  %37 = icmp eq ptr %23, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.MultiresModifierData, ptr %23, i64 0, i32 4
  %40 = load i8, ptr %39, align 1, !tbaa !137
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %8, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !51
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = tail call i32 @multiresModifier_reshapeFromDeformMod(ptr noundef %1, ptr noundef nonnull %23, ptr noundef nonnull %2, ptr noundef nonnull %3) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %46
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.94) #11
  br label %92

50:                                               ; preds = %42, %38, %36
  %51 = tail call ptr @mesh_create_derived_for_modifier(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1) #11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.95) #11
  br label %92

54:                                               ; preds = %50
  %55 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !139
  tail call void @DM_to_mesh(ptr noundef nonnull %51, ptr noundef nonnull %22, ptr noundef nonnull %2, i64 noundef %55) #11
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %51, i64 0, i32 95
  %57 = load ptr, ptr %56, align 8, !tbaa !134
  tail call void %57(ptr noundef nonnull %51) #11
  %58 = load i32, ptr %6, align 8, !tbaa !49
  %59 = icmp eq i32 %58, 29
  br i1 %59, label %60, label %77

60:                                               ; preds = %54
  tail call void @multires_customdata_delete(ptr noundef nonnull %22) #11
  br label %77

61:                                               ; preds = %17, %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %62 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %8, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !51
  %64 = and i32 %63, -2
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.96) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %92

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %69 = load ptr, ptr %68, align 8, !tbaa !60
  tail call void @BKE_report(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.97) #11
  %70 = getelementptr inbounds %struct.Curve, ptr %69, i64 0, i32 3
  %71 = call ptr @BKE_curve_nurbs_vertexCos_get(ptr noundef nonnull %70, ptr noundef nonnull %5) #11
  %72 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %8, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !140
  %74 = load i32, ptr %5, align 4, !tbaa !64
  call void %73(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef null, ptr noundef %71, i32 noundef %74, i32 noundef 0) #11
  call void @BK_curve_nurbs_vertexCos_apply(ptr noundef nonnull %70, ptr noundef %71) #11
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %75(ptr noundef %71) #11
  call void @DAG_id_tag_update(ptr noundef nonnull %2, i16 noundef signext 2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %77

76:                                               ; preds = %17
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.92) #11
  br label %92

77:                                               ; preds = %67, %54, %60, %46
  %78 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 109
  %79 = load ptr, ptr %78, align 8, !tbaa !141
  %80 = icmp eq ptr %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %77, %89
  %82 = phi ptr [ %90, %89 ], [ %79, %77 ]
  %83 = getelementptr inbounds %struct.ParticleSystem, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !75
  %85 = getelementptr inbounds %struct.ParticleSettings, ptr %84, i64 0, i32 7
  %86 = load i16, ptr %85, align 8, !tbaa !142
  %87 = icmp eq i16 %86, 2
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  call void @psys_apply_hair_lattice(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %82) #11
  br label %89

89:                                               ; preds = %81, %88
  %90 = load ptr, ptr %82, align 8, !tbaa !143
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %81, !llvm.loop !144

92:                                               ; preds = %89, %31, %49, %53, %77, %66, %76, %16
  %93 = phi i32 [ 0, %16 ], [ 0, %76 ], [ 0, %66 ], [ 1, %77 ], [ 0, %53 ], [ 0, %49 ], [ 0, %31 ], [ 1, %89 ]
  ret i32 %93
}

; Function Attrs: optsize
declare void @modifier_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_object_modifier_copy(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = tail call ptr @modifier_new(i32 noundef %5) #11
  tail call void @modifier_copyData(ptr noundef %2, ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %6) #11
  tail call void @modifier_unique_name(ptr noundef nonnull %7, ptr noundef %6) #11
  ret i32 1
}

; Function Attrs: optsize
declare void @modifier_copyData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_modifier_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_add_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !153
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @modifier_type_items, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #11
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @modifier_add_itemf) #11
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !155
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @modifier_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !156 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.12) #11
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  %11 = tail call ptr @ED_object_modifier_add(ptr noundef %10, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null, i32 noundef %8) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %5) #11
  br label %14

14:                                               ; preds = %2, %13
  %15 = phi i32 [ 4, %13 ], [ 2, %2 ]
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @ED_operator_object_active_editable(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @modifier_add_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !160 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store ptr null, ptr %5, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr getelementptr inbounds ([0 x %struct.EnumPropertyItem], ptr @modifier_type_items, i64 0, i64 0, i32 1), align 8, !tbaa !161
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %9, %34
  %13 = phi i64 [ %36, %34 ], [ 0, %9 ]
  %14 = phi ptr [ %39, %34 ], [ %10, %9 ]
  %15 = phi ptr [ %37, %34 ], [ @modifier_type_items, %9 ]
  %16 = phi ptr [ %35, %34 ], [ null, %9 ]
  %17 = load i8, ptr %14, align 1, !tbaa !70
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %15, align 8, !tbaa !163
  %21 = call ptr @modifierType_getInfo(i32 noundef %20) #11
  %22 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i32, ptr %15, align 8, !tbaa !163
  %28 = call zeroext i8 @BKE_object_support_modifier_type_check(ptr noundef nonnull %7, i32 noundef %27) #11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = icmp eq ptr %16, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %16) #11
  br label %33

33:                                               ; preds = %32, %30
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %15) #11
  br label %34

34:                                               ; preds = %12, %26, %19, %33
  %35 = phi ptr [ %16, %19 ], [ null, %33 ], [ %16, %26 ], [ %15, %12 ]
  %36 = add nuw i64 %13, 1
  %37 = getelementptr inbounds [0 x %struct.EnumPropertyItem], ptr @modifier_type_items, i64 0, i64 %36
  %38 = getelementptr inbounds [0 x %struct.EnumPropertyItem], ptr @modifier_type_items, i64 0, i64 %36, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !161
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %12, !llvm.loop !164

41:                                               ; preds = %34, %9
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  store i8 1, ptr %3, align 1, !tbaa !70
  %42 = load ptr, ptr %5, align 8, !tbaa !48
  br label %43

43:                                               ; preds = %4, %41
  %44 = phi ptr [ %42, %41 ], [ @modifier_type_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_modifier_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @modifier_remove_invoke, ptr %4, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_remove_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_modifier_poll, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @modifier_remove_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !165 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @modifier_remove_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @modifier_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !167 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %6 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %5, i32 noundef 0) #13
  %7 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %6, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = tail call zeroext i8 @ED_object_modifier_remove(ptr noundef %12, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #13, !range !66
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef nonnull %5) #11
  %16 = and i32 %8, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %7, align 8, !tbaa !59
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !168
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !169
  %29 = icmp eq ptr %28, %5
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67830016, ptr noundef null) #11
  br label %31

31:                                               ; preds = %15, %22, %26, %30, %18, %2, %10
  %32 = phi i32 [ 2, %10 ], [ 2, %2 ], [ 4, %18 ], [ 4, %30 ], [ 4, %26 ], [ 4, %22 ], [ 4, %15 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edit_modifier_poll(ptr noundef %0) #0 !PGOFuncName !171 {
  %2 = tail call fastcc i32 @edit_modifier_poll_generic(ptr noundef %0, ptr noundef nonnull @RNA_Modifier, i32 noundef 0) #13, !range !127
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edit_modifier_properties(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !172 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = tail call ptr @RNA_def_string(ptr noundef %3, ptr noundef nonnull @.str.98, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_modifier_move_up(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @modifier_move_up_invoke, ptr %4, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_move_up_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_modifier_poll, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @modifier_move_up_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !173 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @modifier_move_up_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @modifier_move_up_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !174 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %4 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 0) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !159
  %9 = tail call i32 @ED_object_modifier_move_up(ptr noundef %8, ptr noundef %3, ptr noundef nonnull %4) #13, !range !127
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #11
  br label %12

12:                                               ; preds = %2, %6, %11
  %13 = phi i32 [ 4, %11 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_modifier_move_down(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @modifier_move_down_invoke, ptr %4, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_move_down_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_modifier_poll, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @modifier_move_down_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !175 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @modifier_move_down_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @modifier_move_down_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !176 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %4 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 0) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !159
  %9 = tail call i32 @ED_object_modifier_move_down(ptr noundef %8, ptr noundef %3, ptr noundef nonnull %4) #13, !range !127
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #11
  br label %12

12:                                               ; preds = %2, %6, %11
  %13 = phi i32 [ 4, %11 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_modifier_apply(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @modifier_apply_invoke, ptr %4, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_apply_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_modifier_poll, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.27, ptr noundef nonnull @modifier_apply_as_items, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #11
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @modifier_apply_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !177 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @modifier_apply_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @modifier_apply_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !178 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %5 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %4, i32 noundef 0) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.27) #11
  %9 = icmp eq ptr %5, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = tail call i32 @ED_object_modifier_apply(ptr noundef %12, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %8) #13, !range !127
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #11
  br label %16

16:                                               ; preds = %2, %10, %15
  %17 = phi i32 [ 4, %15 ], [ 2, %10 ], [ 2, %2 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_modifier_convert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @modifier_convert_invoke, ptr %4, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_convert_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_modifier_poll, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @modifier_convert_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !179 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @modifier_convert_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @modifier_convert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !180 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %6 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %5, i32 noundef 0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @ED_object_modifier_convert(ptr poison, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6) #13, !range !127
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %5) #11
  br label %12

12:                                               ; preds = %2, %8, %11
  %13 = phi i32 [ 4, %11 ], [ 2, %8 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_modifier_copy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @modifier_copy_invoke, ptr %4, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @modifier_copy_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_modifier_poll, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @modifier_copy_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !181 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @modifier_copy_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @modifier_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !182 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %4 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 0) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @ED_object_modifier_copy(ptr poison, ptr noundef %3, ptr noundef nonnull %4) #13
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #11
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_multires_higher_levels_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @multires_poll, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @multires_higher_levels_delete_invoke, ptr %5, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @multires_higher_levels_delete_exec, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @multires_poll(ptr noundef %0) #0 !PGOFuncName !183 {
  %2 = tail call fastcc i32 @edit_modifier_poll_generic(ptr noundef %0, ptr noundef nonnull @RNA_MultiresModifier, i32 noundef 2) #13, !range !127
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @multires_higher_levels_delete_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !184 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @multires_higher_levels_delete_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @multires_higher_levels_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !185 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %4 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 29) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  tail call void @multiresModifier_del_levels(ptr noundef nonnull %4, ptr noundef %3, i32 noundef 1) #11
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %8 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 4
  %9 = tail call zeroext i8 @ED_object_iter_other(ptr noundef %7, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull @ED_object_multires_update_totlevels_cb, ptr noundef nonnull %8) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #11
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_multires_subdivide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @multires_poll, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @multires_subdivide_invoke, ptr %5, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @multires_subdivide_exec, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @multires_subdivide_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !186 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @multires_subdivide_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @multires_subdivide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !187 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %4 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 29) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 5
  %8 = load i8, ptr %7, align 4, !tbaa !188
  %9 = zext i8 %8 to i32
  tail call void @multiresModifier_subdivide(ptr noundef nonnull %4, ptr noundef %3, i32 noundef 0, i32 noundef %9) #11
  %10 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %11 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 4
  %12 = tail call zeroext i8 @ED_object_iter_other(ptr noundef %10, ptr noundef %3, i8 noundef zeroext 1, ptr noundef nonnull @ED_object_multires_update_totlevels_cb, ptr noundef nonnull %11) #13
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #11
  %13 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  %18 = tail call i32 @BKE_sculpt_mask_layers_ensure(ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  br label %19

19:                                               ; preds = %6, %17, %2
  %20 = phi i32 [ 2, %2 ], [ 4, %17 ], [ 4, %6 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_multires_reshape(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.43, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @multires_poll, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @multires_reshape_invoke, ptr %5, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @multires_reshape_exec, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @multires_reshape_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !189 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @multires_reshape_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @multires_reshape_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !190 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %6 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %4, i32 noundef 29) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MultiresModifierData, ptr %6, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !191
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.107) #11
  br label %39

15:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %16 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #11
  br label %17

17:                                               ; preds = %21, %15
  %18 = phi ptr [ %3, %15 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !192
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !34
  %26 = icmp ne i16 %25, 1
  %27 = icmp eq ptr %23, %4
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %17, label %32

29:                                               ; preds = %17
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !159
  call void @BKE_report(ptr noundef %31, i32 noundef 32, ptr noundef nonnull @.str.108) #11
  br label %39

32:                                               ; preds = %21
  call void @BLI_freelistN(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  %33 = call i32 @multiresModifier_reshape(ptr noundef %5, ptr noundef nonnull %6, ptr noundef %4, ptr noundef nonnull %23) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !159
  call void @BKE_report(ptr noundef %37, i32 noundef 32, ptr noundef nonnull @.str.109) #11
  br label %39

38:                                               ; preds = %32
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #11
  br label %39

39:                                               ; preds = %2, %38, %35, %29, %12
  %40 = phi i32 [ 2, %12 ], [ 4, %38 ], [ 2, %35 ], [ 2, %29 ], [ 2, %2 ]
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_multires_external_save(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.46, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.47, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @multires_external_save_exec, ptr %4, align 8, !tbaa !151
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @multires_external_save_invoke, ptr %5, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @multires_poll, ptr %6, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 6144, i16 noundef signext 9, i16 noundef signext 1, i16 noundef signext 9, i16 noundef signext 0) #11
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @multires_external_save_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !196 {
  %3 = alloca [1024 x i8], align 16
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = select i1 %5, ptr %7, ptr %6
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #12
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.110) #11
  %13 = icmp eq ptr %9, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 25
  %16 = tail call zeroext i8 @CustomData_external_test(ptr noundef nonnull %15, i32 noundef 19) #11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %19, ptr noundef nonnull @.str.111, ptr noundef nonnull %3) #11
  %20 = and i32 %12, 255
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @G, align 8, !tbaa !197
  %24 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 2
  call void @BLI_path_rel(ptr noundef nonnull %3, ptr noundef nonnull %24) #11
  br label %25

25:                                               ; preds = %22, %18
  %26 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 31
  %27 = load i32, ptr %26, align 4, !tbaa !199
  call void @CustomData_external_add(ptr noundef nonnull %15, ptr noundef nonnull %9, i32 noundef 19, i32 noundef %27, ptr noundef nonnull %3) #11
  %28 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !139
  %29 = load i32, ptr %26, align 4, !tbaa !199
  call void @CustomData_external_write(ptr noundef nonnull %15, ptr noundef nonnull %9, i64 noundef %28, i32 noundef %29, i32 noundef 0) #11
  br label %30

30:                                               ; preds = %14, %2, %25
  %31 = phi i32 [ 4, %25 ], [ 2, %2 ], [ 2, %14 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #12
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @multires_external_save_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !200 {
  %4 = alloca [1024 x i8], align 16
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #12
  %8 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %3
  %11 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 29) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 25
  %15 = tail call zeroext i8 @CustomData_external_test(ptr noundef nonnull %14, i32 noundef 19) #11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !157
  %20 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %19, ptr noundef nonnull @.str.111) #11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @multires_external_save_exec(ptr noundef %0, ptr noundef nonnull %1) #13, !range !166
  br label %29

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %25, align 8, !tbaa !201
  %26 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4, i64 2
  %27 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull @.str.112, ptr noundef nonnull %26) #11
  %28 = load ptr, ptr %18, align 8, !tbaa !157
  call void @RNA_string_set(ptr noundef %28, ptr noundef nonnull @.str.111, ptr noundef nonnull %4) #11
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %29

29:                                               ; preds = %13, %10, %3, %24, %22
  %30 = phi i32 [ %23, %22 ], [ 1, %24 ], [ 2, %3 ], [ 2, %10 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #12
  ret i32 %30
}

; Function Attrs: optsize
declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_multires_external_pack(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @multires_poll, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @multires_external_pack_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @multires_external_pack_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !202 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 25
  %7 = tail call zeroext i8 @CustomData_external_test(ptr noundef nonnull %6, i32 noundef 19) #11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 31
  %11 = load i32, ptr %10, align 4, !tbaa !199
  tail call void @CustomData_external_remove(ptr noundef nonnull %6, ptr noundef %5, i32 noundef 19, i32 noundef %11) #11
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_multires_base_apply(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @multires_poll, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @multires_base_apply_invoke, ptr %5, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @multires_base_apply_exec, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @multires_base_apply_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !203 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @multires_base_apply_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @multires_base_apply_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !204 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %4 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 29) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @multiresModifier_base_apply(ptr noundef nonnull %4, ptr noundef %3) #11
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #11
  br label %7

7:                                                ; preds = %2, %6
  %8 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_skin_root_mark(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @skin_edit_poll, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @skin_root_mark_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @skin_edit_poll(ptr noundef %0) #0 !PGOFuncName !205 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @edit_modifier_poll_generic(ptr noundef %0, ptr noundef nonnull @RNA_SkinModifier, i32 noundef 2) #13, !range !127
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @skin_root_mark_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !206 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  %6 = load ptr, ptr %5, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %7 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @__func__.skin_root_mark_exec) #11
  %8 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  tail call void @BKE_mesh_ensure_skin_customdata(ptr noundef %9) #11
  %10 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %6, i8 noundef zeroext 1, ptr noundef null) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 24
  br label %14

14:                                               ; preds = %12, %27
  %15 = phi ptr [ %10, %12 ], [ %28, %27 ]
  %16 = call zeroext i8 @BLI_gset_haskey(ptr noundef %7, ptr noundef nonnull %15) #11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %15) #13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !209
  %23 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %13, ptr noundef %22, i32 noundef 36) #11
  %24 = getelementptr inbounds %struct.MVertSkin, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !212
  %26 = or i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !212
  call void @BLI_gset_insert(ptr noundef %7, ptr noundef nonnull %15) #11
  call fastcc void @skin_root_clear(ptr noundef %6, ptr noundef nonnull %15, ptr noundef %7) #13
  br label %27

27:                                               ; preds = %14, %18, %21
  %28 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %14, !llvm.loop !214

30:                                               ; preds = %27, %2
  call void @BLI_gset_free(ptr noundef %7, ptr noundef null) #11
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_skin_loose_mark_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.63, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.64, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.65, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @skin_edit_poll, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @skin_loose_mark_clear_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.66, ptr noundef nonnull @OBJECT_OT_skin_loose_mark_clear.action_items, i32 noundef 0, ptr noundef nonnull @.str.67, ptr noundef null) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @skin_loose_mark_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !215 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  %6 = load ptr, ptr %5, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.66) #11
  %10 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 24
  %11 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %10, i32 noundef 36) #11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %2
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %6, i8 noundef zeroext 1, ptr noundef null) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %13, %31
  %17 = phi ptr [ %32, %31 ], [ %14, %13 ]
  %18 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %17) #13
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %17, align 8, !tbaa !209
  %22 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %10, ptr noundef %21, i32 noundef 36) #11
  switch i32 %9, label %31 [
    i32 0, label %23
    i32 1, label %27
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.MVertSkin, ptr %22, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !212
  %26 = or i32 %25, 2
  store i32 %26, ptr %24, align 4, !tbaa !212
  br label %31

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.MVertSkin, ptr %22, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !212
  %30 = and i32 %29, -3
  store i32 %30, ptr %28, align 4, !tbaa !212
  br label %31

31:                                               ; preds = %23, %27, %20, %16
  %32 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %16, !llvm.loop !216

34:                                               ; preds = %31, %13
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #11
  br label %35

35:                                               ; preds = %2, %34
  %36 = phi i32 [ 4, %34 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret i32 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_skin_radii_equalize(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.69, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.70, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @skin_edit_poll, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @skin_radii_equalize_exec, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @skin_radii_equalize_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !217 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #11
  %6 = load ptr, ptr %5, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %7 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 24
  %8 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %7, i32 noundef 36) #11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %6, i8 noundef zeroext 1, ptr noundef null) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %10, %25
  %14 = phi ptr [ %26, %25 ], [ %11, %10 ]
  %15 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %14) #13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %14, align 8, !tbaa !209
  %19 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %7, ptr noundef %18, i32 noundef 36) #11
  %20 = load float, ptr %19, align 4, !tbaa !106
  %21 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !106
  %23 = fadd float %20, %22
  %24 = fmul float %23, 5.000000e-01
  store float %24, ptr %21, align 4, !tbaa !106
  store float %24, ptr %19, align 4, !tbaa !106
  br label %25

25:                                               ; preds = %13, %17
  %26 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !218

28:                                               ; preds = %25, %10
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #11
  br label %29

29:                                               ; preds = %2, %28
  %30 = phi i32 [ 4, %28 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_skin_armature_create(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.71, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.72, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @skin_poll, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @skin_armature_create_invoke, ptr %5, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @skin_armature_create_exec, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @skin_poll(ptr noundef %0) #0 !PGOFuncName !219 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @edit_modifier_poll_generic(ptr noundef %0, ptr noundef nonnull @RNA_SkinModifier, i32 noundef 2) #13, !range !127
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 0, %1 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @skin_armature_create_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !220 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @skin_armature_create_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @skin_armature_create_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !221 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 21
  %9 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %8, i32 noundef 36) #11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !159
  %14 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %13, i32 noundef 16, ptr noundef nonnull @.str.113, ptr noundef nonnull %14) #11
  br label %25

15:                                               ; preds = %2
  %16 = tail call fastcc ptr @modifier_skin_armature_create(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) #13
  %17 = tail call ptr @modifier_new(i32 noundef 8) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 42) #13
  %21 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 26
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %21, ptr noundef %20, ptr noundef nonnull %17) #11
  %22 = getelementptr inbounds %struct.ArmatureModifierData, ptr %17, i64 0, i32 4
  store ptr %16, ptr %22, align 8, !tbaa !222
  %23 = getelementptr inbounds %struct.ArmatureModifierData, ptr %17, i64 0, i32 1
  store i16 5, ptr %23, align 8, !tbaa !224
  tail call void @DAG_relations_tag_update(ptr noundef %3) #11
  tail call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 2) #11
  br label %24

24:                                               ; preds = %19, %15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef nonnull %5) #11
  br label %25

25:                                               ; preds = %24, %11
  %26 = phi i32 [ 4, %24 ], [ 2, %11 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_meshdeform_bind(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.74, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.75, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.76, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @meshdeform_poll, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @meshdeform_bind_invoke, ptr %5, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @meshdeform_bind_exec, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @meshdeform_poll(ptr noundef %0) #0 !PGOFuncName !225 {
  %2 = tail call fastcc i32 @edit_modifier_poll_generic(ptr noundef %0, ptr noundef nonnull @RNA_MeshDeformModifier, i32 noundef 0) #13, !range !127
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @meshdeform_bind_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !226 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @meshdeform_bind_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @meshdeform_bind_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !227 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %5 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %4, i32 noundef 18) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %74, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %5, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !228
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %12(ptr noundef nonnull %9) #11
  %13 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %5, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !230
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %17(ptr noundef nonnull %14) #11
  br label %18

18:                                               ; preds = %16, %11
  %19 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %5, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !231
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %23(ptr noundef nonnull %20) #11
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %5, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !232
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %29(ptr noundef nonnull %26) #11
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %5, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !233
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %35(ptr noundef nonnull %32) #11
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %5, i64 0, i32 13
  %38 = load ptr, ptr %37, align 8, !tbaa !234
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %41(ptr noundef nonnull %38) #11
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %5, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !235
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %47(ptr noundef nonnull %44) #11
  br label %48

48:                                               ; preds = %46, %42
  %49 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %5, i64 0, i32 20
  %50 = load ptr, ptr %49, align 8, !tbaa !236
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %53(ptr noundef nonnull %50) #11
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %5, i64 0, i32 15
  store i32 0, ptr %55, align 4, !tbaa !237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %25, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %4) #11
  br label %74

56:                                               ; preds = %7
  %57 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !238
  %59 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %5, i64 0, i32 21
  store ptr @mesh_deform_bind, ptr %59, align 8, !tbaa !239
  %60 = or i32 %58, 1
  store i32 %60, ptr %57, align 4, !tbaa !238
  %61 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %62 = load i16, ptr %61, align 8, !tbaa !34
  switch i16 %62, label %73 [
    i16 1, label %63
    i16 22, label %67
    i16 5, label %68
    i16 2, label %72
    i16 3, label %72
    i16 4, label %72
  ]

63:                                               ; preds = %56
  %64 = tail call ptr @mesh_create_derived_view(ptr noundef %3, ptr noundef nonnull %4, i64 noundef 0) #11
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %64, i64 0, i32 95
  %66 = load ptr, ptr %65, align 8, !tbaa !134
  tail call void %66(ptr noundef %64) #11
  br label %73

67:                                               ; preds = %56
  tail call void @BKE_lattice_modifiers_calc(ptr noundef %3, ptr noundef nonnull %4) #11
  br label %73

68:                                               ; preds = %56
  %69 = tail call ptr @CTX_data_main(ptr noundef %0) #11
  %70 = getelementptr inbounds %struct.Main, ptr %69, i64 0, i32 46
  %71 = load ptr, ptr %70, align 8, !tbaa !240
  tail call void @BKE_displist_make_mball(ptr noundef %71, ptr noundef %3, ptr noundef nonnull %4) #11
  br label %73

72:                                               ; preds = %56, %56, %56
  tail call void @BKE_displist_make_curveTypes(ptr noundef %3, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  br label %73

73:                                               ; preds = %56, %67, %72, %68, %63
  store ptr null, ptr %59, align 8, !tbaa !239
  store i32 %58, ptr %57, align 4, !tbaa !238
  br label %74

74:                                               ; preds = %54, %73, %2
  %75 = phi i32 [ 2, %2 ], [ 4, %73 ], [ 4, %54 ]
  ret i32 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_explode_refresh(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.77, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.78, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.79, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @explode_poll, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @explode_refresh_invoke, ptr %5, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @explode_refresh_exec, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @explode_poll(ptr noundef %0) #0 !PGOFuncName !242 {
  %2 = tail call fastcc i32 @edit_modifier_poll_generic(ptr noundef %0, ptr noundef nonnull @RNA_ExplodeModifier, i32 noundef 0) #13, !range !127
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @explode_refresh_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !243 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @explode_refresh_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @explode_refresh_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !244 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %4 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 21) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ExplodeModifierData, ptr %4, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !245
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 8, !tbaa !245
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #11
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_ocean_bake(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.80, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.81, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.82, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ocean_bake_poll, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @ocean_bake_invoke, ptr %5, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ocean_bake_exec, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.83, i32 noundef 0, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ocean_bake_poll(ptr noundef %0) #0 !PGOFuncName !247 {
  %2 = tail call fastcc i32 @edit_modifier_poll_generic(ptr noundef %0, ptr noundef nonnull @RNA_OceanModifier, i32 noundef 0) #13, !range !127
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ocean_bake_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !248 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @ocean_bake_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ocean_bake_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !249 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %4 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 39) #13
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.83) #11
  %9 = icmp eq ptr %4, null
  br i1 %9, label %73, label %10

10:                                               ; preds = %2
  %11 = and i32 %8, 255
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 22
  %15 = load i8, ptr %14, align 1, !tbaa !250
  %16 = or i8 %15, 8
  store i8 %16, ptr %14, align 1, !tbaa !250
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #11
  br label %73

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 17
  %19 = tail call ptr @modifier_path_relbase(ptr noundef %3) #11
  %20 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 15
  %21 = load i32, ptr %20, align 8, !tbaa !252
  %22 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 16
  %23 = load i32, ptr %22, align 4, !tbaa !253
  %24 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 11
  %25 = load float, ptr %24, align 8, !tbaa !254
  %26 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 12
  %27 = load float, ptr %26, align 4, !tbaa !255
  %28 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 13
  %29 = load float, ptr %28, align 8, !tbaa !256
  %30 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 27
  %31 = load float, ptr %30, align 8, !tbaa !257
  %32 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !258
  %34 = tail call ptr @BKE_init_ocean_cache(ptr noundef nonnull %18, ptr noundef %19, i32 noundef %21, i32 noundef %23, float noundef %25, float noundef %27, float noundef %29, float noundef %31, i32 noundef %33) #11
  %35 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %36 = getelementptr inbounds %struct.OceanCache, ptr %34, i64 0, i32 12
  %37 = load i32, ptr %36, align 8, !tbaa !259
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 2
  %40 = tail call ptr %35(i64 noundef %39, ptr noundef nonnull @.str.118) #11
  %41 = getelementptr inbounds %struct.OceanCache, ptr %34, i64 0, i32 5
  store ptr %40, ptr %41, align 8, !tbaa !261
  %42 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !262
  %44 = load i32, ptr %20, align 8, !tbaa !252
  %45 = load i32, ptr %22, align 4, !tbaa !253
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %62, label %47

47:                                               ; preds = %17
  %48 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 1
  %49 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 14
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i64 [ 0, %47 ], [ %58, %50 ]
  %52 = phi i32 [ %44, %47 ], [ %59, %50 ]
  %53 = load ptr, ptr %48, align 8, !tbaa !263
  %54 = sitofp i32 %52 to float
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %5, ptr noundef %3, ptr noundef %53, float noundef %54, i16 noundef signext 2) #11
  %55 = load float, ptr %49, align 4, !tbaa !264
  %56 = load ptr, ptr %41, align 8, !tbaa !261
  %57 = getelementptr inbounds float, ptr %56, i64 %51
  store float %55, ptr %57, align 4, !tbaa !106
  %58 = add nuw nsw i64 %51, 1
  %59 = add nsw i32 %52, 1
  %60 = load i32, ptr %22, align 4, !tbaa !253
  %61 = icmp slt i32 %52, %60
  br i1 %61, label %50, label %62, !llvm.loop !265

62:                                               ; preds = %50, %17
  %63 = tail call ptr @BKE_add_ocean() #11
  tail call fastcc void @init_ocean_modifier_bake(ptr noundef %63, ptr noundef nonnull %4) #13
  store i32 %43, ptr %42, align 8, !tbaa !262
  %64 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %65 = tail call ptr @CTX_wm_window(ptr noundef %0) #11
  %66 = tail call ptr @WM_jobs_get(ptr noundef %64, ptr noundef %65, ptr noundef %5, ptr noundef nonnull @.str.119, i32 noundef 4, i32 noundef 5) #11
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %68 = tail call ptr %67(i64 noundef 64, ptr noundef nonnull @.str.120) #11
  %69 = getelementptr inbounds %struct.OceanBakeJob, ptr %68, i64 0, i32 6
  store ptr %63, ptr %69, align 8, !tbaa !266
  %70 = getelementptr inbounds %struct.OceanBakeJob, ptr %68, i64 0, i32 5
  store ptr %34, ptr %70, align 8, !tbaa !268
  %71 = getelementptr inbounds %struct.OceanBakeJob, ptr %68, i64 0, i32 7
  store ptr %4, ptr %71, align 8, !tbaa !269
  tail call void @WM_jobs_customdata_set(ptr noundef %66, ptr noundef %68, ptr noundef nonnull @oceanbake_free) #11
  tail call void @WM_jobs_timer(ptr noundef %66, double noundef 1.000000e-01, i32 noundef 85458944, i32 noundef 85458944) #11
  tail call void @WM_jobs_callbacks(ptr noundef %66, ptr noundef nonnull @oceanbake_startjob, ptr noundef null, ptr noundef null, ptr noundef nonnull @oceanbake_endjob) #11
  %72 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  tail call void @WM_jobs_start(ptr noundef %72, ptr noundef %66) #11
  br label %73

73:                                               ; preds = %2, %62, %13
  %74 = phi i32 [ 4, %13 ], [ 4, %62 ], [ 2, %2 ]
  ret i32 %74
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_laplaciandeform_bind(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.86, ptr %0, align 8, !tbaa !145
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.87, ptr %2, align 8, !tbaa !148
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.88, ptr %3, align 8, !tbaa !149
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @laplaciandeform_poll, ptr %4, align 8, !tbaa !152
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @laplaciandeform_bind_invoke, ptr %5, align 8, !tbaa !150
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @laplaciandeform_bind_exec, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 67, ptr %7, align 8, !tbaa !153
  tail call fastcc void @edit_modifier_properties(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @laplaciandeform_poll(ptr noundef %0) #0 !PGOFuncName !270 {
  %2 = tail call fastcc i32 @edit_modifier_poll_generic(ptr noundef %0, ptr noundef nonnull @RNA_LaplacianDeformModifier, i32 noundef 0) #13, !range !127
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @laplaciandeform_bind_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !271 {
  %4 = tail call fastcc i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr noundef %1) #13, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @laplaciandeform_bind_exec(ptr noundef %0, ptr noundef %1) #13, !range !166
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @laplaciandeform_bind_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !272 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #11
  %4 = tail call fastcc ptr @edit_modifier_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 47) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %4, i64 0, i32 6
  %8 = load i16, ptr %7, align 8, !tbaa !273
  %9 = xor i16 %8, 1
  store i16 %9, ptr %7, align 8, !tbaa !273
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #11
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @object_modifier_safe_to_delete(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !275 {
  %5 = alloca i32, align 4
  store i32 %3, ptr %5, align 4, !tbaa !64
  %6 = tail call fastcc zeroext i8 @object_has_modifier(ptr noundef %1, ptr noundef %2, i32 noundef %3) #13, !range !66
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = call zeroext i8 @ED_object_iter_other(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull @object_has_modifier_cb, ptr noundef nonnull %5) #13
  %10 = icmp eq i8 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i8 [ 0, %4 ], [ %11, %8 ]
  ret i8 %13
}

; Function Attrs: optsize
declare void @multires_customdata_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @modifier_skin_customdata_delete(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !276 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !277
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !207
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 24
  tail call void @BM_data_layer_free(ptr noundef %8, ptr noundef nonnull %9, i32 noundef 36) #11
  br label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 21
  %12 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 26
  %13 = load i32, ptr %12, align 8, !tbaa !88
  %14 = tail call zeroext i8 @CustomData_free_layer_active(ptr noundef nonnull %11, i32 noundef 36, i32 noundef %13) #11
  br label %15

15:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !278 {
  %2 = load ptr, ptr %0, align 8, !tbaa !279
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @object_has_modifier(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #6 !PGOFuncName !280 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3, %14
  %8 = phi ptr [ %15, %14 ], [ %5, %3 ]
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !49
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %17, label %14

14:                                               ; preds = %7, %10
  %15 = load ptr, ptr %8, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !281

17:                                               ; preds = %10, %14, %3
  %18 = phi i8 [ 0, %3 ], [ 0, %14 ], [ 1, %10 ]
  ret i8 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @object_has_modifier_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !282 {
  %3 = load i32, ptr %1, align 4, !tbaa !64
  %4 = tail call fastcc zeroext i8 @object_has_modifier(ptr noundef %0, ptr noundef null, i32 noundef %3) #13, !range !66
  ret i8 %4
}

; Function Attrs: optsize
declare void @BM_data_layer_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_free_layer_active(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_create_derived_for_modifier(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_key_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_keyblock_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_key_convert_from_mesh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_to_meshkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @multires_force_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @multiresModifier_reshapeFromDeformMod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_to_mesh(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_curve_nurbs_vertexCos_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BK_curve_nurbs_vertexCos_apply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_apply_hair_lattice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_object_active_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_object_support_modifier_type_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @edit_modifier_invoke_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !283 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !157
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.98) #11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef nonnull @RNA_Modifier) #11
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !284
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !tbaa !157
  %14 = getelementptr inbounds %struct.ModifierData, ptr %10, i64 0, i32 6
  call void @RNA_string_set(ptr noundef %13, ptr noundef nonnull @.str.98, ptr noundef nonnull %14) #11
  br label %15

15:                                               ; preds = %8, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  %16 = zext i1 %11 to i32
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ 1, %2 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edit_modifier_property_get(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !285 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !157
  call void @RNA_string_get(ptr noundef %6, ptr noundef nonnull @.str.98, ptr noundef nonnull %4) #11
  %7 = call ptr @modifiers_findByName(ptr noundef %1, ptr noundef nonnull %4) #11
  %8 = icmp ne ptr %7, null
  %9 = icmp ne i32 %2, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !49
  %14 = icmp eq i32 %13, %2
  %15 = select i1 %14, ptr %7, ptr null
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi ptr [ %15, %11 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  ret ptr %17
}

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_findByName(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @edit_modifier_poll_generic(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !286 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef %1) #11
  %5 = load ptr, ptr %4, align 8, !tbaa !287
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = call ptr @ED_object_active_context(ptr noundef %0) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %8, %7 ], [ %5, %3 ]
  %12 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !288
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !34
  %20 = zext nneg i16 %19 to i32
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %17, %15
  %25 = load ptr, ptr %4, align 8, !tbaa !287
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !289
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %27, %17, %7, %10, %31
  %33 = phi i32 [ 1, %31 ], [ 0, %10 ], [ 0, %7 ], [ 0, %17 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret i32 %33
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @multiresModifier_del_levels(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @multiresModifier_subdivide(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @multiresModifier_reshape(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_external_test(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_external_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_external_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_external_remove(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @multiresModifier_base_apply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_gset_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !290 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #13
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #13
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !291 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !292
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skin_root_clear(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !293 {
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  %5 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 4, ptr noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  br label %9

9:                                                ; preds = %7, %20
  %10 = phi ptr [ %5, %7 ], [ %21, %20 ]
  %11 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %10, ptr noundef %1) #13
  %12 = call zeroext i8 @BLI_gset_haskey(ptr noundef %2, ptr noundef %11) #11
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load ptr, ptr %11, align 8, !tbaa !209
  %16 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %8, ptr noundef %15, i32 noundef 36) #11
  %17 = getelementptr inbounds %struct.MVertSkin, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !212
  %19 = and i32 %18, -2
  store i32 %19, ptr %17, align 4, !tbaa !212
  call void @BLI_gset_insert(ptr noundef %2, ptr noundef nonnull %11) #11
  call fastcc void @skin_root_clear(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2) #13
  br label %20

20:                                               ; preds = %14, %9
  %21 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %9, !llvm.loop !294

23:                                               ; preds = %20, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !295 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !296
  %4 = tail call ptr %3(ptr noundef %0) #11
  ret ptr %4
}

; Function Attrs: optsize
declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !298 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !299
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %18 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !300
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !296
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !301
  br label %19

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !300
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !296
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !303
  br label %19

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !300
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !296
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !304
  br label %19

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !300
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !296
  br label %19

18:                                               ; preds = %4
  unreachable

19:                                               ; preds = %17, %14, %11, %8
  %20 = phi ptr [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %21 = phi ptr [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %20, ptr %0, align 8, !tbaa !70
  tail call void %21(ptr noundef nonnull %0) #11
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 !PGOFuncName !305 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !306
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !309
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @modifier_skin_armature_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !310 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %8 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !139
  %9 = tail call ptr @mesh_get_derived_deform(ptr noundef %1, ptr noundef %2, i64 noundef %8) #11
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !311
  %12 = tail call ptr %11(ptr noundef %9) #11
  %13 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 21
  %14 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !88
  %16 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %13, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %15) #11
  %17 = tail call ptr @BKE_object_add(ptr noundef %0, ptr noundef %1, i32 noundef 25) #11
  tail call void @BKE_object_transform_copy(ptr noundef %17, ptr noundef %2) #11
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.bArmature, ptr %19, i64 0, i32 15
  store i32 1, ptr %20, align 8, !tbaa !312
  %21 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 86
  %22 = load i16, ptr %21, align 4, !tbaa !314
  %23 = or i16 %22, 64
  store i16 %23, ptr %21, align 4, !tbaa !314
  %24 = getelementptr inbounds %struct.bArmature, ptr %19, i64 0, i32 9
  store i32 1, ptr %24, align 4, !tbaa !315
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %26 = tail call ptr %25(i64 noundef 16, ptr noundef nonnull @.str.114) #11
  %27 = getelementptr inbounds %struct.bArmature, ptr %19, i64 0, i32 4
  store ptr %26, ptr %27, align 8, !tbaa !316
  %28 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %13, i32 noundef 36) #11
  %29 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  %31 = load i32, ptr %14, align 8, !tbaa !88
  %32 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 27
  %33 = load i32, ptr %32, align 4, !tbaa !91
  call void @BKE_mesh_vert_edge_map_create(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %30, i32 noundef %31, i32 noundef %33) #11
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %35 = load i32, ptr %32, align 4, !tbaa !91
  %36 = ashr i32 %35, 5
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 2
  %40 = call ptr %34(i64 noundef %39, ptr noundef nonnull @.str.115) #11
  %41 = load i32, ptr %14, align 8, !tbaa !88
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 15
  br label %45

45:                                               ; preds = %43, %77
  %46 = phi i64 [ 0, %43 ], [ %78, %77 ]
  %47 = getelementptr inbounds %struct.MVertSkin, ptr %28, i64 %46, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !212
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %77, label %51

51:                                               ; preds = %45
  %52 = load ptr, ptr %4, align 8, !tbaa !48
  %53 = getelementptr inbounds %struct.MeshElemMap, ptr %52, i64 %46, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !317
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = call ptr @ED_armature_edit_bone_add(ptr noundef %19, ptr noundef nonnull @.str.116) #11
  %58 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 7
  %59 = load ptr, ptr %44, align 8, !tbaa !92
  %60 = getelementptr inbounds %struct.MVert, ptr %59, i64 %46
  call fastcc void @copy_v3_v3(ptr noundef nonnull %58, ptr noundef %60) #13
  %61 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 8
  %62 = load ptr, ptr %44, align 8, !tbaa !92
  %63 = getelementptr inbounds %struct.MVert, ptr %62, i64 %46
  call fastcc void @copy_v3_v3(ptr noundef nonnull %61, ptr noundef %63) #13
  %64 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 7, i64 1
  store float 1.000000e+00, ptr %64, align 4, !tbaa !106
  %65 = getelementptr inbounds %struct.EditBone, ptr %57, i64 0, i32 18
  store <2 x float> <float 2.500000e-01, float 2.500000e-01>, ptr %65, align 8, !tbaa !106
  %66 = load ptr, ptr %4, align 8, !tbaa !48
  %67 = getelementptr inbounds %struct.MeshElemMap, ptr %66, i64 %46, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !317
  br label %69

69:                                               ; preds = %56, %51
  %70 = phi i32 [ %68, %56 ], [ %54, %51 ]
  %71 = phi ptr [ %66, %56 ], [ %52, %51 ]
  %72 = phi ptr [ %57, %56 ], [ null, %51 ]
  %73 = icmp sgt i32 %70, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load ptr, ptr %29, align 8, !tbaa !93
  %76 = trunc i64 %46 to i32
  call fastcc void @skin_armature_bone_create(ptr noundef %2, ptr noundef %12, ptr noundef %75, ptr noundef %19, ptr noundef %40, ptr noundef nonnull %71, ptr noundef %72, i32 noundef %76) #13
  br label %77

77:                                               ; preds = %69, %74, %45
  %78 = add nuw nsw i64 %46, 1
  %79 = load i32, ptr %14, align 8, !tbaa !88
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %78, %80
  br i1 %81, label %45, label %82, !llvm.loop !319

82:                                               ; preds = %77, %3
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  call void %83(ptr noundef %40) #11
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %85 = load ptr, ptr %4, align 8, !tbaa !48
  call void %84(ptr noundef %85) #11
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %87 = load ptr, ptr %5, align 8, !tbaa !48
  call void %86(ptr noundef %87) #11
  call void @ED_armature_from_edit(ptr noundef %19) #11
  call void @ED_armature_edit_free(ptr noundef %19) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_transform_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_vert_edge_map_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_armature_edit_bone_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @skin_armature_bone_create(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, i32 noundef %7) unnamed_addr #0 !PGOFuncName !320 {
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds %struct.MeshElemMap, ptr %5, i64 %9, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !317
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %63

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.MeshElemMap, ptr %5, i64 %9
  %15 = getelementptr inbounds %struct.MVert, ptr %1, i64 %9
  br label %16

16:                                               ; preds = %13, %58
  %17 = phi i32 [ %11, %13 ], [ %59, %58 ]
  %18 = phi i64 [ 0, %13 ], [ %60, %58 ]
  %19 = load ptr, ptr %14, align 8, !tbaa !321
  %20 = getelementptr inbounds i32, ptr %19, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !64
  %22 = sext i32 %21 to i64
  %23 = ashr i32 %21, 5
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %4, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !64
  %27 = and i32 %21, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %22
  %33 = or i32 %28, %26
  store i32 %33, ptr %25, align 4, !tbaa !64
  %34 = load i32, ptr %32, align 4, !tbaa !95
  %35 = icmp eq i32 %34, %7
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.MEdge, ptr %2, i64 %22, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !97
  br label %39

39:                                               ; preds = %31, %36
  %40 = phi i32 [ %38, %36 ], [ %34, %31 ]
  %41 = tail call ptr @ED_armature_edit_bone_add(ptr noundef %3, ptr noundef nonnull @.str.116) #11
  %42 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 3
  store ptr %6, ptr %42, align 8, !tbaa !322
  %43 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 9
  %44 = load i32, ptr %43, align 4, !tbaa !324
  %45 = or i32 %44, 16
  store i32 %45, ptr %43, align 4, !tbaa !324
  %46 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %46, ptr noundef %15) #13
  %47 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 8
  %48 = sext i32 %40 to i64
  %49 = getelementptr inbounds %struct.MVert, ptr %1, i64 %48
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %47, ptr noundef %49) #13
  %50 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 18
  store <2 x float> <float 2.500000e-01, float 2.500000e-01>, ptr %50, align 8, !tbaa !106
  %51 = getelementptr inbounds %struct.EditBone, ptr %41, i64 0, i32 5
  %52 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %51, i64 noundef 64, ptr noundef nonnull @.str.117, i32 noundef %21) #11
  %53 = tail call ptr @ED_vgroup_add_name(ptr noundef %0, ptr noundef nonnull %51) #11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %39
  tail call void @ED_vgroup_vert_add(ptr noundef %0, ptr noundef nonnull %53, i32 noundef %7, float noundef 1.000000e+00, i32 noundef 1) #11
  tail call void @ED_vgroup_vert_add(ptr noundef %0, ptr noundef nonnull %53, i32 noundef %40, float noundef 1.000000e+00, i32 noundef 1) #11
  br label %56

56:                                               ; preds = %55, %39
  tail call fastcc void @skin_armature_bone_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %41, i32 noundef %40) #13
  %57 = load i32, ptr %10, align 8, !tbaa !317
  br label %58

58:                                               ; preds = %16, %56
  %59 = phi i32 [ %17, %16 ], [ %57, %56 ]
  %60 = add nuw nsw i64 %18, 1
  %61 = sext i32 %59 to i64
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %16, label %63, !llvm.loop !325

63:                                               ; preds = %58, %8
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_from_edit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_edit_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_vgroup_add_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_vgroup_vert_add(ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mesh_deform_bind(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @mesh_create_derived_view(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_lattice_modifiers_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_displist_make_mball(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_init_ocean_cache(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifier_path_relbase(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_add_ocean() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_ocean_modifier_bake(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !326 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.OceanModifierData, ptr %1, i64 0, i32 12
  %6 = load float, ptr %5, align 4, !tbaa !255
  %7 = fcmp ogt float %6, 0.000000e+00
  %8 = getelementptr inbounds %struct.OceanModifierData, ptr %1, i64 0, i32 21
  %9 = load i8, ptr %8, align 2, !tbaa !327
  %10 = and i8 %9, 1
  %11 = getelementptr inbounds %struct.OceanModifierData, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !258
  %13 = mul nsw i32 %12, %12
  %14 = getelementptr inbounds %struct.OceanModifierData, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !328
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.OceanModifierData, ptr %1, i64 0, i32 5
  %18 = load float, ptr %17, align 8, !tbaa !329
  %19 = getelementptr inbounds %struct.OceanModifierData, ptr %1, i64 0, i32 7
  %20 = load float, ptr %19, align 8, !tbaa !330
  %21 = getelementptr inbounds %struct.OceanModifierData, ptr %1, i64 0, i32 10
  %22 = load float, ptr %21, align 4, !tbaa !331
  %23 = getelementptr inbounds %struct.OceanModifierData, ptr %1, i64 0, i32 6
  %24 = load float, ptr %23, align 4, !tbaa !332
  %25 = getelementptr inbounds %struct.OceanModifierData, ptr %1, i64 0, i32 9
  %26 = load float, ptr %25, align 8, !tbaa !333
  %27 = getelementptr inbounds %struct.OceanModifierData, ptr %1, i64 0, i32 8
  %28 = load float, ptr %27, align 4, !tbaa !334
  %29 = getelementptr inbounds %struct.OceanModifierData, ptr %1, i64 0, i32 14
  %30 = load float, ptr %29, align 4, !tbaa !264
  %31 = zext i1 %7 to i16
  %32 = and i8 %9, 2
  %33 = zext nneg i8 %32 to i16
  %34 = zext nneg i8 %10 to i16
  %35 = getelementptr inbounds %struct.OceanModifierData, ptr %1, i64 0, i32 25
  %36 = load i32, ptr %35, align 8, !tbaa !335
  tail call void @BKE_init_ocean(ptr noundef nonnull %0, i32 noundef %13, i32 noundef %13, float noundef %16, float noundef %16, float noundef %18, float noundef %20, float noundef 1.000000e+00, float noundef %22, float noundef %24, float noundef %26, float noundef %28, float noundef %30, i16 noundef signext 1, i16 noundef signext %31, i16 noundef signext %33, i16 noundef signext %34, i32 noundef %36) #11
  br label %37

37:                                               ; preds = %2, %4
  ret void
}

; Function Attrs: optsize
declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @oceanbake_free(ptr noundef %0) #0 !PGOFuncName !336 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %2(ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @oceanbake_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !337 {
  %5 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !338
  %6 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !339
  %7 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 3
  store ptr %3, ptr %7, align 8, !tbaa !340
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !341
  %8 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !266
  %10 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !268
  tail call void @BKE_bake_ocean(ptr noundef %9, ptr noundef %11, ptr noundef nonnull @oceanbake_update, ptr noundef %0) #11
  store i16 1, ptr %2, align 2, !tbaa !342
  store i16 0, ptr %1, align 2, !tbaa !342
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @oceanbake_endjob(ptr nocapture noundef %0) #0 !PGOFuncName !343 {
  %2 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !266
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BKE_free_ocean(ptr noundef nonnull %3) #11
  store ptr null, ptr %2, align 8, !tbaa !266
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !268
  %9 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !269
  %11 = getelementptr inbounds %struct.OceanModifierData, ptr %10, i64 0, i32 2
  store ptr %8, ptr %11, align 8, !tbaa !344
  %12 = getelementptr inbounds %struct.OceanModifierData, ptr %10, i64 0, i32 19
  store i8 1, ptr %12, align 8, !tbaa !345
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_init_ocean(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_bake_ocean(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @oceanbake_update(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef writeonly %2) #7 !PGOFuncName !346 {
  %4 = tail call fastcc i32 @oceanbake_breakjob() #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  store i32 1, ptr %2, align 4, !tbaa !64
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !339
  store i16 1, ptr %9, align 2, !tbaa !342
  %10 = getelementptr inbounds %struct.OceanBakeJob, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !340
  store float %1, ptr %11, align 4, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @oceanbake_breakjob() unnamed_addr #8 !PGOFuncName !347 {
  %1 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !341
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: optsize
declare void @BKE_free_ocean(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { optsize }

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
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!35, !37, i64 1248}
!55 = !{!35, !40, i64 1162}
!56 = !{!35, !37, i64 1240}
!57 = !{!58, !40, i64 4}
!58 = !{!"PartDeflect", !41, i64 0, !40, i64 4, !40, i64 6, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !40, i64 16, !40, i64 18, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !37, i64 128, !37, i64 136, !44, i64 144, !41, i64 148, !37, i64 152}
!59 = !{!35, !41, i64 432}
!60 = !{!35, !37, i64 296}
!61 = !{!36, !41, i64 100}
!62 = !{!36, !40, i64 98}
!63 = distinct !{!63, !53}
!64 = !{!41, !41, i64 0}
!65 = distinct !{!65, !53}
!66 = !{i8 0, i8 2}
!67 = !{!"object_modifier.c:object_modifier_remove"}
!68 = !{!69, !37, i64 112}
!69 = !{!"ParticleSystemModifierData", !50, i64 0, !37, i64 112, !37, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142}
!70 = !{!38, !38, i64 0}
!71 = !{!35, !37, i64 416}
!72 = !{!50, !37, i64 0}
!73 = distinct !{!73, !53}
!74 = !{!50, !37, i64 8}
!75 = !{!76, !37, i64 16}
!76 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !43, i64 72, !43, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !38, i64 168, !38, i64 232, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !43, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !44, i64 648, !44, i64 652}
!77 = !{!78, !40, i64 192}
!78 = !{!"ParticleSettings", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !44, i64 232, !44, i64 236, !38, i64 240, !38, i64 248, !44, i64 256, !44, i64 260, !44, i64 264, !40, i64 268, !40, i64 270, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !38, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !38, i64 342, !44, i64 348, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !38, i64 376, !44, i64 388, !44, i64 392, !44, i64 396, !44, i64 400, !44, i64 404, !44, i64 408, !44, i64 412, !38, i64 416, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !41, i64 444, !41, i64 448, !44, i64 452, !44, i64 456, !44, i64 460, !44, i64 464, !44, i64 468, !44, i64 472, !44, i64 476, !44, i64 480, !44, i64 484, !44, i64 488, !44, i64 492, !44, i64 496, !44, i64 500, !44, i64 504, !44, i64 508, !44, i64 512, !44, i64 516, !44, i64 520, !44, i64 524, !44, i64 528, !44, i64 532, !44, i64 536, !44, i64 540, !44, i64 544, !44, i64 548, !38, i64 552, !44, i64 560, !44, i64 564, !41, i64 568, !41, i64 572, !38, i64 576, !37, i64 720, !43, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !40, i64 792, !38, i64 794}
!79 = !{!76, !37, i64 56}
!80 = !{!76, !41, i64 332}
!81 = !{!76, !41, i64 336}
!82 = !{!78, !41, i64 176}
!83 = !{!84, !41, i64 56}
!84 = !{!"ParticleCacheKey", !38, i64 0, !38, i64 12, !38, i64 24, !38, i64 40, !44, i64 52, !41, i64 56}
!85 = distinct !{!85, !53}
!86 = !{!76, !37, i64 64}
!87 = distinct !{!87, !53}
!88 = !{!89, !41, i64 1280}
!89 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !90, i64 280, !90, i64 480, !90, i64 680, !90, i64 880, !90, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !44, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!90 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!91 = !{!89, !41, i64 1284}
!92 = !{!89, !37, i64 232}
!93 = !{!89, !37, i64 240}
!94 = !{!89, !37, i64 208}
!95 = !{!96, !41, i64 0}
!96 = !{!"MEdge", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 9, !40, i64 10}
!97 = !{!96, !41, i64 4}
!98 = !{!96, !40, i64 10}
!99 = !{!100, !38, i64 18}
!100 = !{!"MVert", !38, i64 0, !38, i64 12, !38, i64 18, !38, i64 19}
!101 = distinct !{!101, !53}
!102 = distinct !{!102, !53}
!103 = distinct !{!103, !53}
!104 = distinct !{!104, !53}
!105 = !{!"object_modifier.c:copy_v3_v3"}
!106 = !{!44, !44, i64 0}
!107 = !{!108, !37, i64 176}
!108 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !109, i64 280, !118, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !119, i64 4400, !120, i64 4416, !123, i64 4600, !37, i64 4608, !124, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !111, i64 4664, !112, i64 4824, !125, i64 4888, !37, i64 4952}
!109 = !{!"RenderData", !110, i64 0, !37, i64 248, !37, i64 256, !113, i64 264, !114, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !115, i64 544, !115, i64 560, !116, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !117, i64 2616, !41, i64 3976, !41, i64 3980}
!110 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !111, i64 24, !112, i64 184}
!111 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!112 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!113 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!114 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!115 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!116 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!117 = !{!"BakeData", !110, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!118 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!119 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!120 = !{!"GameData", !119, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !121, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !122, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!121 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!122 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!123 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!124 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!125 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!126 = !{!50, !41, i64 20}
!127 = !{i32 0, i32 2}
!128 = !{!"object_modifier.c:modifier_apply_shape"}
!129 = !{!50, !37, i64 96}
!130 = !{!47, !37, i64 160}
!131 = !{!89, !37, i64 144}
!132 = !{!133, !40, i64 208}
!133 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !43, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !41, i64 220}
!134 = !{!135, !37, i64 1680}
!135 = !{!"DerivedMesh", !90, i64 0, !90, i64 200, !90, i64 400, !90, i64 600, !90, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!136 = !{!"object_modifier.c:modifier_apply_obdata"}
!137 = !{!138, !38, i64 115}
!138 = !{!"MultiresModifierData", !50, i64 0, !38, i64 112, !38, i64 113, !38, i64 114, !38, i64 115, !38, i64 116, !38, i64 117, !38, i64 118}
!139 = !{!45, !45, i64 0}
!140 = !{!47, !37, i64 88}
!141 = !{!35, !37, i64 1224}
!142 = !{!78, !40, i64 160}
!143 = !{!76, !37, i64 0}
!144 = distinct !{!144, !53}
!145 = !{!146, !37, i64 0}
!146 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !147, i64 152, !40, i64 184}
!147 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!148 = !{!146, !37, i64 24}
!149 = !{!146, !37, i64 8}
!150 = !{!146, !37, i64 48}
!151 = !{!146, !37, i64 32}
!152 = !{!146, !37, i64 72}
!153 = !{!146, !40, i64 184}
!154 = !{!146, !37, i64 88}
!155 = !{!146, !37, i64 104}
!156 = !{!"object_modifier.c:modifier_add_exec"}
!157 = !{!158, !37, i64 112}
!158 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!159 = !{!158, !37, i64 120}
!160 = !{!"object_modifier.c:modifier_add_itemf"}
!161 = !{!162, !37, i64 8}
!162 = !{!"EnumPropertyItem", !41, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !37, i64 32}
!163 = !{!162, !41, i64 0}
!164 = distinct !{!164, !53}
!165 = !{!"object_modifier.c:modifier_remove_invoke"}
!166 = !{i32 2, i32 5}
!167 = !{!"object_modifier.c:modifier_remove_exec"}
!168 = !{!108, !37, i64 168}
!169 = !{!170, !37, i64 32}
!170 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!171 = !{!"object_modifier.c:edit_modifier_poll"}
!172 = !{!"object_modifier.c:edit_modifier_properties"}
!173 = !{!"object_modifier.c:modifier_move_up_invoke"}
!174 = !{!"object_modifier.c:modifier_move_up_exec"}
!175 = !{!"object_modifier.c:modifier_move_down_invoke"}
!176 = !{!"object_modifier.c:modifier_move_down_exec"}
!177 = !{!"object_modifier.c:modifier_apply_invoke"}
!178 = !{!"object_modifier.c:modifier_apply_exec"}
!179 = !{!"object_modifier.c:modifier_convert_invoke"}
!180 = !{!"object_modifier.c:modifier_convert_exec"}
!181 = !{!"object_modifier.c:modifier_copy_invoke"}
!182 = !{!"object_modifier.c:modifier_copy_exec"}
!183 = !{!"object_modifier.c:multires_poll"}
!184 = !{!"object_modifier.c:multires_higher_levels_delete_invoke"}
!185 = !{!"object_modifier.c:multires_higher_levels_delete_exec"}
!186 = !{!"object_modifier.c:multires_subdivide_invoke"}
!187 = !{!"object_modifier.c:multires_subdivide_exec"}
!188 = !{!138, !38, i64 116}
!189 = !{!"object_modifier.c:multires_reshape_invoke"}
!190 = !{!"object_modifier.c:multires_reshape_exec"}
!191 = !{!138, !38, i64 112}
!192 = !{!193, !37, i64 32}
!193 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !194, i64 16}
!194 = !{!"PointerRNA", !195, i64 0, !37, i64 8, !37, i64 16}
!195 = !{!"", !37, i64 0}
!196 = !{!"object_modifier.c:multires_external_save_exec"}
!197 = !{!198, !37, i64 0}
!198 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !43, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!199 = !{!89, !41, i64 1300}
!200 = !{!"object_modifier.c:multires_external_save_invoke"}
!201 = !{!158, !37, i64 96}
!202 = !{!"object_modifier.c:multires_external_pack_exec"}
!203 = !{!"object_modifier.c:multires_base_apply_invoke"}
!204 = !{!"object_modifier.c:multires_base_apply_exec"}
!205 = !{!"object_modifier.c:skin_edit_poll"}
!206 = !{!"object_modifier.c:skin_root_mark_exec"}
!207 = !{!208, !37, i64 0}
!208 = !{!"BMEditMesh", !37, i64 0, !37, i64 8, !41, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !45, i64 56, !37, i64 64, !41, i64 72, !37, i64 80, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104}
!209 = !{!210, !37, i64 0}
!210 = !{!"BMVert", !211, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!211 = !{!"BMHeader", !37, i64 0, !41, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!212 = !{!213, !41, i64 12}
!213 = !{!"MVertSkin", !38, i64 0, !41, i64 12}
!214 = distinct !{!214, !53}
!215 = !{!"object_modifier.c:skin_loose_mark_clear_exec"}
!216 = distinct !{!216, !53}
!217 = !{!"object_modifier.c:skin_radii_equalize_exec"}
!218 = distinct !{!218, !53}
!219 = !{!"object_modifier.c:skin_poll"}
!220 = !{!"object_modifier.c:skin_armature_create_invoke"}
!221 = !{!"object_modifier.c:skin_armature_create_exec"}
!222 = !{!223, !37, i64 120}
!223 = !{!"ArmatureModifierData", !50, i64 0, !40, i64 112, !40, i64 114, !41, i64 116, !37, i64 120, !37, i64 128, !38, i64 136}
!224 = !{!223, !40, i64 112}
!225 = !{!"object_modifier.c:meshdeform_poll"}
!226 = !{!"object_modifier.c:meshdeform_bind_invoke"}
!227 = !{!"object_modifier.c:meshdeform_bind_exec"}
!228 = !{!229, !37, i64 208}
!229 = !{!"MeshDeformModifierData", !50, i64 0, !37, i64 112, !38, i64 120, !40, i64 184, !40, i64 186, !38, i64 188, !37, i64 192, !37, i64 200, !37, i64 208, !41, i64 216, !41, i64 220, !37, i64 224, !37, i64 232, !37, i64 240, !41, i64 248, !41, i64 252, !38, i64 256, !44, i64 268, !38, i64 272, !37, i64 336, !37, i64 344, !37, i64 352}
!230 = !{!229, !37, i64 224}
!231 = !{!229, !37, i64 232}
!232 = !{!229, !37, i64 192}
!233 = !{!229, !37, i64 200}
!234 = !{!229, !37, i64 240}
!235 = !{!229, !37, i64 336}
!236 = !{!229, !37, i64 344}
!237 = !{!229, !41, i64 252}
!238 = !{!229, !41, i64 20}
!239 = !{!229, !37, i64 352}
!240 = !{!241, !37, i64 1888}
!241 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !45, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !43, i64 1088, !43, i64 1104, !43, i64 1120, !43, i64 1136, !43, i64 1152, !43, i64 1168, !43, i64 1184, !43, i64 1200, !43, i64 1216, !43, i64 1232, !43, i64 1248, !43, i64 1264, !43, i64 1280, !43, i64 1296, !43, i64 1312, !43, i64 1328, !43, i64 1344, !43, i64 1360, !43, i64 1376, !43, i64 1392, !43, i64 1408, !43, i64 1424, !43, i64 1440, !43, i64 1456, !43, i64 1472, !43, i64 1488, !43, i64 1504, !43, i64 1520, !43, i64 1536, !43, i64 1552, !43, i64 1568, !43, i64 1584, !43, i64 1600, !43, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
!242 = !{!"object_modifier.c:explode_poll"}
!243 = !{!"object_modifier.c:explode_refresh_invoke"}
!244 = !{!"object_modifier.c:explode_refresh_exec"}
!245 = !{!246, !40, i64 120}
!246 = !{!"ExplodeModifierData", !50, i64 0, !37, i64 112, !40, i64 120, !40, i64 122, !44, i64 124, !38, i64 128}
!247 = !{!"object_modifier.c:ocean_bake_poll"}
!248 = !{!"object_modifier.c:ocean_bake_invoke"}
!249 = !{!"object_modifier.c:ocean_bake_exec"}
!250 = !{!251, !38, i64 1275}
!251 = !{!"OceanModifierData", !50, i64 0, !37, i64 112, !37, i64 120, !41, i64 128, !41, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 1208, !38, i64 1272, !38, i64 1273, !38, i64 1274, !38, i64 1275, !40, i64 1276, !40, i64 1278, !41, i64 1280, !44, i64 1284, !44, i64 1288, !41, i64 1292}
!252 = !{!251, !41, i64 176}
!253 = !{!251, !41, i64 180}
!254 = !{!251, !44, i64 160}
!255 = !{!251, !44, i64 164}
!256 = !{!251, !44, i64 168}
!257 = !{!251, !44, i64 1288}
!258 = !{!251, !41, i64 128}
!259 = !{!260, !41, i64 72}
!260 = !{!"OceanCache", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!261 = !{!260, !37, i64 40}
!262 = !{!108, !41, i64 680}
!263 = !{!35, !37, i64 120}
!264 = !{!251, !44, i64 172}
!265 = distinct !{!265, !53}
!266 = !{!267, !37, i64 48}
!267 = !{!"OceanBakeJob", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!268 = !{!267, !37, i64 40}
!269 = !{!267, !37, i64 56}
!270 = !{!"object_modifier.c:laplaciandeform_poll"}
!271 = !{!"object_modifier.c:laplaciandeform_bind_invoke"}
!272 = !{!"object_modifier.c:laplaciandeform_bind_exec"}
!273 = !{!274, !40, i64 200}
!274 = !{!"LaplacianDeformModifierData", !50, i64 0, !38, i64 112, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192, !40, i64 200, !38, i64 202}
!275 = !{!"object_modifier.c:object_modifier_safe_to_delete"}
!276 = !{!"object_modifier.c:modifier_skin_customdata_delete"}
!277 = !{!89, !37, i64 272}
!278 = !{!"object_modifier.c:BLI_listbase_is_empty"}
!279 = !{!43, !37, i64 0}
!280 = !{!"object_modifier.c:object_has_modifier"}
!281 = distinct !{!281, !53}
!282 = !{!"object_modifier.c:object_has_modifier_cb"}
!283 = !{!"object_modifier.c:edit_modifier_invoke_properties"}
!284 = !{!194, !37, i64 16}
!285 = !{!"object_modifier.c:edit_modifier_property_get"}
!286 = !{!"object_modifier.c:edit_modifier_poll_generic"}
!287 = !{!194, !37, i64 0}
!288 = !{!35, !37, i64 24}
!289 = !{!36, !37, i64 24}
!290 = !{!"object_modifier.c:BM_iter_new"}
!291 = !{!"object_modifier.c:_bm_elem_flag_test"}
!292 = !{!211, !38, i64 13}
!293 = !{!"object_modifier.c:skin_root_clear"}
!294 = distinct !{!294, !53}
!295 = !{!"object_modifier.c:BM_iter_step"}
!296 = !{!297, !37, i64 48}
!297 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !41, i64 56, !38, i64 60}
!298 = !{!"object_modifier.c:BM_iter_init"}
!299 = !{!297, !38, i64 60}
!300 = !{!297, !37, i64 40}
!301 = !{!302, !37, i64 32}
!302 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !41, i64 128, !37, i64 136, !90, i64 144, !90, i64 344, !90, i64 544, !90, i64 744, !40, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !43, i64 960, !37, i64 976, !43, i64 984, !37, i64 1000}
!303 = !{!302, !37, i64 40}
!304 = !{!302, !37, i64 56}
!305 = !{!"object_modifier.c:BM_edge_other_vert"}
!306 = !{!307, !37, i64 24}
!307 = !{!"BMEdge", !211, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !308, i64 48, !308, i64 64}
!308 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!309 = !{!307, !37, i64 32}
!310 = !{!"object_modifier.c:modifier_skin_armature_create"}
!311 = !{!135, !37, i64 1168}
!312 = !{!313, !41, i64 216}
!313 = !{!"bArmature", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!314 = !{!35, !40, i64 1044}
!315 = !{!313, !41, i64 196}
!316 = !{!313, !37, i64 160}
!317 = !{!318, !41, i64 8}
!318 = !{!"MeshElemMap", !37, i64 0, !41, i64 8}
!319 = distinct !{!319, !53}
!320 = !{!"object_modifier.c:skin_armature_bone_create"}
!321 = !{!318, !37, i64 0}
!322 = !{!323, !37, i64 24}
!323 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !44, i64 104, !38, i64 108, !38, i64 120, !41, i64 132, !41, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !40, i64 180}
!324 = !{!323, !41, i64 132}
!325 = distinct !{!325, !53}
!326 = !{!"object_modifier.c:init_ocean_modifier_bake"}
!327 = !{!251, !38, i64 1274}
!328 = !{!251, !41, i64 132}
!329 = !{!251, !44, i64 136}
!330 = !{!251, !44, i64 144}
!331 = !{!251, !44, i64 156}
!332 = !{!251, !44, i64 140}
!333 = !{!251, !44, i64 152}
!334 = !{!251, !44, i64 148}
!335 = !{!251, !41, i64 1280}
!336 = !{!"object_modifier.c:oceanbake_free"}
!337 = !{!"object_modifier.c:oceanbake_startjob"}
!338 = !{!267, !37, i64 8}
!339 = !{!267, !37, i64 16}
!340 = !{!267, !37, i64 24}
!341 = !{!198, !38, i64 2080}
!342 = !{!40, !40, i64 0}
!343 = !{!"object_modifier.c:oceanbake_endjob"}
!344 = !{!251, !37, i64 120}
!345 = !{!251, !38, i64 1272}
!346 = !{!"object_modifier.c:oceanbake_update"}
!347 = !{!"object_modifier.c:oceanbake_breakjob"}
