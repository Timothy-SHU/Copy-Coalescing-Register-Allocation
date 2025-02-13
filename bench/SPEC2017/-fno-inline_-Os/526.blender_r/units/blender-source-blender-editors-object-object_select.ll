; ModuleID = 'blender/source/blender/editors/object/object_select.c'
source_filename = "blender/source/blender/editors/object/object_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
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
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.HookModifierData = type { %struct.ModifierData, ptr, [64 x i8], [4 x [4 x float]], [3 x float], float, ptr, i32, float, [64 x i8] }
%struct.KeyingSet = type { ptr, ptr, %struct.ListBase, [64 x i8], [64 x i8], [240 x i8], [64 x i8], i16, i16, i32 }
%struct.KS_Path = type { ptr, ptr, ptr, [64 x i8], i32, i16, i16, ptr, i32, i16, i16 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.bProperty = type { ptr, ptr, [64 x i8], i16, i16, i32, ptr }

@.str = private unnamed_addr constant [15 x i8] c"Select By Type\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Select all visible objects that are of a type\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_select_by_type\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Extend selection instead of deselecting everything first\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@object_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Select Linked\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Select all visible objects that are linked\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_select_linked\00", align 1
@prop_select_linked_types = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 2, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.8 }, %struct.EnumPropertyItem { i32 3, ptr @.str.47, i32 0, ptr @.str.48, ptr @.str.8 }, %struct.EnumPropertyItem { i32 4, ptr @.str.49, i32 0, ptr @.str.50, ptr @.str.8 }, %struct.EnumPropertyItem { i32 5, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.8 }, %struct.EnumPropertyItem { i32 6, ptr @.str.53, i32 0, ptr @.str.54, ptr @.str.8 }, %struct.EnumPropertyItem { i32 7, ptr @.str.55, i32 0, ptr @.str.56, ptr @.str.8 }, %struct.EnumPropertyItem { i32 8, ptr @.str.57, i32 0, ptr @.str.58, ptr @.str.8 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [15 x i8] c"Select Grouped\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"Select all visible objects grouped by various properties\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_select_grouped\00", align 1
@prop_select_grouped_types = internal global [14 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.64, i32 0, ptr @.str.65, ptr @.str.8 }, %struct.EnumPropertyItem { i32 1, ptr @.str.66, i32 0, ptr @.str.67, ptr @.str.8 }, %struct.EnumPropertyItem { i32 2, ptr @.str.68, i32 0, ptr @.str.69, ptr @.str.8 }, %struct.EnumPropertyItem { i32 3, ptr @.str.70, i32 0, ptr @.str.71, ptr @.str.72 }, %struct.EnumPropertyItem { i32 4, ptr @.str.73, i32 0, ptr @.str.7, ptr @.str.74 }, %struct.EnumPropertyItem { i32 5, ptr @.str.75, i32 0, ptr @.str.25, ptr @.str.76 }, %struct.EnumPropertyItem { i32 6, ptr @.str.77, i32 0, ptr @.str.33, ptr @.str.78 }, %struct.EnumPropertyItem { i32 7, ptr @.str.79, i32 0, ptr @.str.80, ptr @.str.8 }, %struct.EnumPropertyItem { i32 8, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.83 }, %struct.EnumPropertyItem { i32 9, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.86 }, %struct.EnumPropertyItem { i32 10, ptr @.str.87, i32 0, ptr @.str.88, ptr @.str.89 }, %struct.EnumPropertyItem { i32 11, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.92 }, %struct.EnumPropertyItem { i32 12, ptr @.str.93, i32 0, ptr @.str.94, ptr @.str.95 }, %struct.EnumPropertyItem zeroinitializer], align 16
@OBJECT_OT_select_by_layer.match_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.8 }, %struct.EnumPropertyItem { i32 2, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.8 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [6 x i8] c"EXACT\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Exact Match\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"SHARED\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"Shared Layers\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Select by Layer\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Select all visible objects on a layer\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_select_by_layer\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Match\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Layer\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"Change selection of all visible objects in scene\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_select_all\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Select Same Group\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"Select object in the same group\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_select_same_group\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"Name of the group to select\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"Select Mirror\00", align 1
@.str.36 = private unnamed_addr constant [72 x i8] c"Select the Mirror objects of the selected object eg. L.sword -> R.sword\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_select_mirror\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"Select Random\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"Set select on random visible objects\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_select_random\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"Percent\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"Percentage of objects to select randomly\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"No active object\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"OBDATA\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Object Data\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"TEXTURE\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"DUPGROUP\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"Dupligroup\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"PARTICLE\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"Particle System\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"LIBRARY\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"Library\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"LIBRARY_OBDATA\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"Library (Object Data)\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"Active object must be a lamp\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"Select Group\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"No active Keying Set to use\00", align 1
@.str.62 = private unnamed_addr constant [137 x i8] c"Use another Keying Set, as the active one depends on the currently selected objects or cannot find any targets due to unsuitable context\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"Keying Set does not contain any paths\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"CHILDREN_RECURSIVE\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"Children\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"CHILDREN\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"Immediate Children\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"PARENT\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"SIBLINGS\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"Siblings\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"Shared Parent\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"Shared object type\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"LAYER\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"Shared layers\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"Shared group\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"HOOK\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"Hook\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"Pass\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"Render pass Index\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"Object Color\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"PROPERTIES\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"Game Properties\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"KEYINGSET\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"Keying Set\00", align 1
@.str.92 = private unnamed_addr constant [38 x i8] c"Objects included in active Keying Set\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"LAMP_TYPE\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"Lamp Type\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"Matching lamp types\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"action\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_base_object_select(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  switch i16 %1, label %20 [
    i16 1, label %5
    i16 0, label %16
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.Base, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 102
  %9 = load i8, ptr %8, align 8, !tbaa !41
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Base, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !48
  %15 = or i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !48
  br label %20

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.Base, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = and i32 %18, -2
  store i32 %19, ptr %17, align 8, !tbaa !48
  br label %20

20:                                               ; preds = %4, %16, %5, %12
  %21 = getelementptr inbounds %struct.Base, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.Base, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 53
  store i16 %23, ptr %26, align 4, !tbaa !49
  br label %27

27:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_base_object_activate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 6
  store ptr %1, ptr %4, align 8, !tbaa !50
  %5 = icmp eq ptr %1, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef nonnull %3) #7
  br label %8

7:                                                ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef null) #7
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_select_by_type(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_select_by_type_exec, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @objects_selectable_poll, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !78
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @object_type_items, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_select_by_type_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !80 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.6) #7
  %8 = load ptr, ptr %5, align 8, !tbaa !81
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #7
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %13 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %14 = load ptr, ptr %3, align 8, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.CollectionPointerLink, ptr %17, i64 0, i32 2, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  call void @ED_base_object_select(ptr noundef %19, i16 noundef signext 0) #9
  %20 = load ptr, ptr %17, align 8, !tbaa !83
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !llvm.loop !88

22:                                               ; preds = %16, %12
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %23

23:                                               ; preds = %22, %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %24 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %4) #7
  %25 = load ptr, ptr %4, align 8, !tbaa !83
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = shl i32 %7, 16
  %29 = ashr exact i32 %28, 16
  br label %30

30:                                               ; preds = %27, %41
  %31 = phi ptr [ %25, %27 ], [ %42, %41 ]
  %32 = getelementptr inbounds %struct.CollectionPointerLink, ptr %31, i64 0, i32 2, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !84
  %34 = getelementptr inbounds %struct.Base, ptr %33, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 3
  %37 = load i16, ptr %36, align 8, !tbaa !90
  %38 = sext i16 %37 to i32
  %39 = icmp eq i32 %29, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  call void @ED_base_object_select(ptr noundef nonnull %33, i16 noundef signext 1) #9
  br label %41

41:                                               ; preds = %40, %30
  %42 = load ptr, ptr %31, align 8, !tbaa !83
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %30, !llvm.loop !91

44:                                               ; preds = %41, %23
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  %45 = call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %45) #7
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @objects_selectable_poll(ptr noundef %0) #1 !PGOFuncName !92 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !93
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %5
  br label %12

12:                                               ; preds = %7, %1, %11
  %13 = phi i32 [ 1, %11 ], [ 0, %1 ], [ 0, %7 ]
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_select_linked_by_id(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %4 = load i16, ptr %3, align 8, !tbaa !94
  switch i16 %4, label %16 [
    i16 21827, label %5
    i16 21580, label %5
    i16 21057, label %5
    i16 19283, label %5
    i16 17741, label %5
    i16 16973, label %5
    i16 16716, label %5
    i16 16707, label %5
    i16 16717, label %7
    i16 18764, label %9
  ]

5:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %6 = tail call fastcc zeroext i8 @object_select_all_by_obdata(ptr noundef %0, ptr noundef nonnull %1) #9, !range !95
  br label %11

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @object_select_all_by_material_texture(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) #9, !range !95
  br label %11

9:                                                ; preds = %2
  %10 = tail call fastcc zeroext i8 @object_select_all_by_library(ptr noundef %0, ptr noundef nonnull %1) #9, !range !95
  br label %11

11:                                               ; preds = %7, %9, %5
  %12 = phi i8 [ %6, %5 ], [ %8, %7 ], [ %10, %9 ]
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %15) #7
  br label %16

16:                                               ; preds = %2, %14, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @object_select_all_by_obdata(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #1 !PGOFuncName !96 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %4 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = load ptr, ptr %3, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2, %26
  %8 = phi ptr [ %28, %26 ], [ %5, %2 ]
  %9 = phi i8 [ %27, %26 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %8, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !48
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = or disjoint i32 %13, 1
  store i32 %23, ptr %12, align 8, !tbaa !48
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 53
  store i16 %24, ptr %25, align 4, !tbaa !49
  br label %26

26:                                               ; preds = %16, %22, %7
  %27 = phi i8 [ 1, %22 ], [ %9, %16 ], [ %9, %7 ]
  %28 = load ptr, ptr %8, align 8, !tbaa !83
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %7, !llvm.loop !98

30:                                               ; preds = %26, %2
  %31 = phi i8 [ 0, %2 ], [ %27, %26 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @object_select_all_by_material_texture(ptr noundef %0, i32 noundef %1, ptr noundef readnone %2, ptr noundef readnone %3) unnamed_addr #1 !PGOFuncName !99 {
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %6 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %5) #7
  %7 = load ptr, ptr %5, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %9

9:                                                ; preds = %4
  %10 = icmp eq i32 %1, 0
  br label %11

11:                                               ; preds = %9, %64
  %12 = phi ptr [ %7, %9 ], [ %66, %64 ]
  %13 = phi i8 [ 0, %9 ], [ %65, %64 ]
  %14 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  %16 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !48
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 31
  %24 = load i32, ptr %23, align 8, !tbaa !100
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %58, label %26

26:                                               ; preds = %20, %50
  %27 = phi i32 [ %52, %50 ], [ 1, %20 ]
  %28 = phi i8 [ %51, %50 ], [ %13, %20 ]
  %29 = trunc i32 %27 to i16
  %30 = call ptr @give_current_material(ptr noundef nonnull %22, i16 noundef signext %29) #7
  br i1 %10, label %31, label %33

31:                                               ; preds = %26
  %32 = icmp eq ptr %30, %2
  br i1 %32, label %47, label %50

33:                                               ; preds = %26
  %34 = icmp eq ptr %30, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %33, %44
  %36 = phi i64 [ %45, %44 ], [ 0, %33 ]
  %37 = getelementptr inbounds %struct.Material, ptr %30, i64 0, i32 102, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !83
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.MTex, ptr %38, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !101
  %43 = icmp eq ptr %42, %3
  br i1 %43, label %47, label %44

44:                                               ; preds = %35, %40
  %45 = add nuw nsw i64 %36, 1
  %46 = icmp eq i64 %45, 18
  br i1 %46, label %50, label %35, !llvm.loop !103

47:                                               ; preds = %40, %31
  %48 = load i32, ptr %16, align 8, !tbaa !48
  %49 = or i32 %48, 1
  store i32 %49, ptr %16, align 8, !tbaa !48
  br label %50

50:                                               ; preds = %44, %47, %31, %33
  %51 = phi i8 [ %28, %33 ], [ %28, %31 ], [ 1, %47 ], [ %28, %44 ]
  %52 = add nuw nsw i32 %27, 1
  %53 = load i32, ptr %23, align 8, !tbaa !100
  %54 = icmp slt i32 %27, %53
  br i1 %54, label %26, label %55, !llvm.loop !104

55:                                               ; preds = %50
  %56 = load i32, ptr %16, align 8, !tbaa !48
  %57 = load ptr, ptr %21, align 8, !tbaa !34
  br label %58

58:                                               ; preds = %55, %20
  %59 = phi ptr [ %22, %20 ], [ %57, %55 ]
  %60 = phi i32 [ %17, %20 ], [ %56, %55 ]
  %61 = phi i8 [ %13, %20 ], [ %51, %55 ]
  %62 = trunc i32 %60 to i16
  %63 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 53
  store i16 %62, ptr %63, align 4, !tbaa !49
  br label %64

64:                                               ; preds = %58, %11
  %65 = phi i8 [ %61, %58 ], [ %13, %11 ]
  %66 = load ptr, ptr %12, align 8, !tbaa !83
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %11, !llvm.loop !105

68:                                               ; preds = %64, %4
  %69 = phi i8 [ 0, %4 ], [ %65, %64 ]
  call void @BLI_freelistN(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret i8 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @object_select_all_by_library(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #1 !PGOFuncName !106 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %4 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = load ptr, ptr %3, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2, %26
  %8 = phi ptr [ %28, %26 ], [ %5, %2 ]
  %9 = phi i8 [ %27, %26 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %8, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !48
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !107
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = or disjoint i32 %13, 1
  store i32 %23, ptr %12, align 8, !tbaa !48
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 53
  store i16 %24, ptr %25, align 4, !tbaa !49
  br label %26

26:                                               ; preds = %16, %22, %7
  %27 = phi i8 [ 1, %22 ], [ %9, %16 ], [ %9, %7 ]
  %28 = load ptr, ptr %8, align 8, !tbaa !83
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %7, !llvm.loop !108

30:                                               ; preds = %26, %2
  %31 = phi i8 [ 0, %2 ], [ %27, %26 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_select_linked(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_select_linked_exec, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @objects_selectable_poll, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !78
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @prop_select_linked_types, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_select_linked_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !109 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.6) #7
  %8 = load ptr, ptr %5, align 8, !tbaa !81
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #7
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %13 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %14 = load ptr, ptr %3, align 8, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.CollectionPointerLink, ptr %17, i64 0, i32 2, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  call void @ED_base_object_select(ptr noundef %19, i16 noundef signext 0) #9
  %20 = load ptr, ptr %17, align 8, !tbaa !83
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !llvm.loop !110

22:                                               ; preds = %16, %12
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %23

23:                                               ; preds = %22, %2
  %24 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %23, %27
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !111
  call void @BKE_report(ptr noundef %33, i32 noundef 32, ptr noundef nonnull @.str.44) #7
  br label %96

34:                                               ; preds = %27
  switch i32 %7, label %41 [
    i32 1, label %96
    i32 2, label %35
  ]

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !97
  %38 = icmp eq ptr %37, null
  br i1 %38, label %96, label %39

39:                                               ; preds = %35
  %40 = call fastcc zeroext i8 @object_select_all_by_obdata(ptr noundef %0, ptr noundef nonnull %37) #9, !range !95
  br label %92

41:                                               ; preds = %34
  %42 = icmp eq i32 %7, 4
  %43 = add i32 %7, -3
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 32
  %47 = load i32, ptr %46, align 4, !tbaa !112
  %48 = trunc i32 %47 to i16
  %49 = call ptr @give_current_material(ptr noundef nonnull %29, i16 noundef signext %48) #7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %96, label %51

51:                                               ; preds = %45
  br i1 %42, label %52, label %63

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.Material, ptr %49, i64 0, i32 75
  %54 = load i8, ptr %53, align 1, !tbaa !113
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds %struct.Material, ptr %49, i64 0, i32 102, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !83
  %58 = icmp eq ptr %57, null
  br i1 %58, label %96, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.MTex, ptr %57, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !101
  %62 = icmp eq ptr %61, null
  br i1 %62, label %96, label %63

63:                                               ; preds = %51, %59
  %64 = phi ptr [ %61, %59 ], [ null, %51 ]
  %65 = phi i32 [ 1, %59 ], [ 0, %51 ]
  %66 = call fastcc zeroext i8 @object_select_all_by_material_texture(ptr noundef %0, i32 noundef %65, ptr noundef nonnull %49, ptr noundef %64) #9, !range !95
  br label %92

67:                                               ; preds = %41
  switch i32 %7, label %96 [
    i32 5, label %68
    i32 6, label %74
    i32 7, label %80
    i32 8, label %84
  ]

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 112
  %70 = load ptr, ptr %69, align 8, !tbaa !117
  %71 = icmp eq ptr %70, null
  br i1 %71, label %96, label %72

72:                                               ; preds = %68
  %73 = call fastcc zeroext i8 @object_select_all_by_dup_group(ptr noundef %0, ptr noundef nonnull %29) #9, !range !95
  br label %92

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 109
  %76 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %75) #9, !range !95
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = call fastcc zeroext i8 @object_select_all_by_particle(ptr noundef %0, ptr noundef nonnull %29) #9, !range !95
  br label %92

80:                                               ; preds = %67
  %81 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !107
  %83 = call fastcc zeroext i8 @object_select_all_by_library(ptr noundef %0, ptr noundef %82) #9, !range !95
  br label %92

84:                                               ; preds = %67
  %85 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 19
  %86 = load ptr, ptr %85, align 8, !tbaa !97
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.ID, ptr %86, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !118
  %91 = call fastcc zeroext i8 @object_select_all_by_library_obdata(ptr noundef %0, ptr noundef %90) #9, !range !95
  br label %92

92:                                               ; preds = %63, %39, %72, %80, %88, %78
  %93 = phi i8 [ %40, %39 ], [ %66, %63 ], [ %73, %72 ], [ %79, %78 ], [ %83, %80 ], [ %91, %88 ]
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef nonnull %4) #7
  br label %96

96:                                               ; preds = %52, %59, %45, %92, %67, %84, %74, %68, %35, %34, %95, %31
  %97 = phi i32 [ 2, %31 ], [ 4, %95 ], [ 2, %34 ], [ 2, %35 ], [ 2, %68 ], [ 2, %74 ], [ 2, %84 ], [ 2, %67 ], [ 2, %92 ], [ 2, %45 ], [ 2, %59 ], [ 2, %52 ]
  ret i32 %97
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_select_grouped(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_select_grouped_exec, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @objects_selectable_poll, ptr %6, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !78
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @prop_select_grouped_types, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_select_grouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !119 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.6) #7
  %8 = load ptr, ptr %5, align 8, !tbaa !81
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #7
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %13 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %14 = load ptr, ptr %3, align 8, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.CollectionPointerLink, ptr %17, i64 0, i32 2, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  call void @ED_base_object_select(ptr noundef %19, i16 noundef signext 0) #9
  %20 = load ptr, ptr %17, align 8, !tbaa !83
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !llvm.loop !120

22:                                               ; preds = %16, %12
  %23 = phi i8 [ 0, %12 ], [ 1, %16 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i8 [ %23, %22 ], [ 0, %2 ]
  %26 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.Base, ptr %27, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %24, %29
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !111
  call void @BKE_report(ptr noundef %35, i32 noundef 32, ptr noundef nonnull @.str.44) #7
  br label %76

36:                                               ; preds = %29
  switch i32 %7, label %72 [
    i32 0, label %37
    i32 1, label %39
    i32 2, label %41
    i32 3, label %43
    i32 4, label %45
    i32 5, label %47
    i32 6, label %49
    i32 7, label %51
    i32 8, label %53
    i32 9, label %55
    i32 10, label %57
    i32 11, label %59
    i32 12, label %63
  ]

37:                                               ; preds = %36
  %38 = call fastcc zeroext i8 @select_grouped_children(ptr noundef %0, ptr noundef nonnull %31, i8 noundef zeroext 1) #9, !range !95
  br label %72

39:                                               ; preds = %36
  %40 = call fastcc zeroext i8 @select_grouped_children(ptr noundef %0, ptr noundef nonnull %31, i8 noundef zeroext 0) #9, !range !95
  br label %72

41:                                               ; preds = %36
  %42 = call fastcc zeroext i8 @select_grouped_parent(ptr noundef %0) #9, !range !95
  br label %72

43:                                               ; preds = %36
  %44 = call fastcc zeroext i8 @select_grouped_siblings(ptr noundef %0, ptr noundef nonnull %31) #9, !range !95
  br label %72

45:                                               ; preds = %36
  %46 = call fastcc zeroext i8 @select_grouped_type(ptr noundef %0, ptr noundef nonnull %31) #9, !range !95
  br label %72

47:                                               ; preds = %36
  %48 = call fastcc zeroext i8 @select_grouped_layer(ptr noundef %0, ptr noundef nonnull %31) #9, !range !95
  br label %72

49:                                               ; preds = %36
  %50 = call fastcc zeroext i8 @select_grouped_group(ptr noundef %0, ptr noundef nonnull %31) #9, !range !95
  br label %72

51:                                               ; preds = %36
  %52 = call fastcc zeroext i8 @select_grouped_object_hooks(ptr noundef %0, ptr noundef nonnull %31) #9, !range !95
  br label %72

53:                                               ; preds = %36
  %54 = call fastcc zeroext i8 @select_grouped_index_object(ptr noundef %0, ptr noundef nonnull %31) #9, !range !95
  br label %72

55:                                               ; preds = %36
  %56 = call fastcc zeroext i8 @select_grouped_color(ptr noundef %0, ptr noundef nonnull %31) #9, !range !95
  br label %72

57:                                               ; preds = %36
  %58 = call fastcc zeroext i8 @select_grouped_gameprops(ptr noundef %0, ptr noundef nonnull %31) #9, !range !95
  br label %72

59:                                               ; preds = %36
  %60 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !111
  %62 = call fastcc zeroext i8 @select_grouped_keyingset(ptr noundef %0, ptr noundef %61) #9
  br label %72

63:                                               ; preds = %36
  %64 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 3
  %65 = load i16, ptr %64, align 8, !tbaa !90
  %66 = icmp eq i16 %65, 10
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !111
  call void @BKE_report(ptr noundef %69, i32 noundef 32, ptr noundef nonnull @.str.59) #7
  br label %72

70:                                               ; preds = %63
  %71 = call fastcc zeroext i8 @select_grouped_lamptype(ptr noundef %0, ptr noundef nonnull %31) #9, !range !95
  br label %72

72:                                               ; preds = %36, %70, %67, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37
  %73 = phi i8 [ %25, %36 ], [ %25, %67 ], [ %71, %70 ], [ %62, %59 ], [ %58, %57 ], [ %56, %55 ], [ %54, %53 ], [ %52, %51 ], [ %50, %49 ], [ %48, %47 ], [ %46, %45 ], [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ]
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef nonnull %4) #7
  br label %76

76:                                               ; preds = %72, %75, %33
  %77 = phi i32 [ 2, %33 ], [ 4, %75 ], [ 2, %72 ]
  ret i32 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_select_by_layer(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_select_by_layer_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @objects_selectable_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull @OBJECT_OT_select_by_layer.match_items, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.8) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !78
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  %12 = load ptr, ptr %7, align 8, !tbaa !78
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef 1, i32 noundef 20, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef 20) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_select_by_layer_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !121 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.3) #7
  %8 = load ptr, ptr %5, align 8, !tbaa !81
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.24) #7
  %10 = load ptr, ptr %5, align 8, !tbaa !81
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.22) #7
  %12 = and i32 %7, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %15 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %16 = load ptr, ptr %3, align 8, !tbaa !83
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %22, %18 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !84
  call void @ED_base_object_select(ptr noundef %21, i16 noundef signext 0) #9
  %22 = load ptr, ptr %19, align 8, !tbaa !83
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18, !llvm.loop !122

24:                                               ; preds = %18, %14
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %25

25:                                               ; preds = %24, %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %26 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %4) #7
  %27 = load ptr, ptr %4, align 8, !tbaa !83
  %28 = icmp eq ptr %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = and i32 %11, 255
  %31 = icmp eq i32 %30, 1
  %32 = add i32 %9, -1
  %33 = shl nuw i32 1, %32
  br label %34

34:                                               ; preds = %29, %46
  %35 = phi ptr [ %27, %29 ], [ %47, %46 ]
  %36 = getelementptr inbounds %struct.CollectionPointerLink, ptr %35, i64 0, i32 2, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !84
  %38 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !123
  br i1 %31, label %40, label %42

40:                                               ; preds = %34
  %41 = icmp eq i32 %39, %33
  br i1 %41, label %45, label %46

42:                                               ; preds = %34
  %43 = and i32 %39, %33
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %42
  call void @ED_base_object_select(ptr noundef nonnull %37, i16 noundef signext 1) #9
  br label %46

46:                                               ; preds = %40, %45, %42
  %47 = load ptr, ptr %35, align 8, !tbaa !83
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %34, !llvm.loop !124

49:                                               ; preds = %46, %25
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  %50 = call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %50) #7
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_select_all(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_select_all_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @objects_selectable_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !125 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.96) #7
  %8 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_visible_bases) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %13 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  br label %14

14:                                               ; preds = %18, %12
  %15 = phi ptr [ %3, %12 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.CollectionPointerLink, ptr %16, i64 0, i32 2, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !84
  %21 = getelementptr inbounds %struct.Base, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %14, label %25

25:                                               ; preds = %18, %14
  %26 = phi i32 [ 2, %18 ], [ 1, %14 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %27

27:                                               ; preds = %25, %10
  %28 = phi i32 [ %26, %25 ], [ %7, %10 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %29 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %4) #7
  %30 = load ptr, ptr %4, align 8, !tbaa !83
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %27, %45
  %33 = phi ptr [ %46, %45 ], [ %30, %27 ]
  %34 = getelementptr inbounds %struct.CollectionPointerLink, ptr %33, i64 0, i32 2, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !84
  switch i32 %28, label %45 [
    i32 1, label %36
    i32 2, label %37
    i32 3, label %38
  ]

36:                                               ; preds = %32
  call void @ED_base_object_select(ptr noundef %35, i16 noundef signext 1) #9
  br label %45

37:                                               ; preds = %32
  call void @ED_base_object_select(ptr noundef %35, i16 noundef signext 0) #9
  br label %45

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Base, ptr %35, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !48
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  call void @ED_base_object_select(ptr noundef nonnull %35, i16 noundef signext 0) #9
  br label %45

44:                                               ; preds = %38
  call void @ED_base_object_select(ptr noundef nonnull %35, i16 noundef signext 1) #9
  br label %45

45:                                               ; preds = %43, %44, %32, %37, %36
  %46 = load ptr, ptr %33, align 8, !tbaa !83
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %32, !llvm.loop !126

48:                                               ; preds = %45, %27
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  %49 = call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %49) #7
  br label %50

50:                                               ; preds = %2, %48
  %51 = phi i32 [ 4, %48 ], [ 8, %2 ]
  ret i32 %51
}

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_select_same_group(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_select_same_group_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @objects_selectable_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 66, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_select_same_group_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !127 {
  %3 = alloca [66 x i8], align 16
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %3) #8
  %5 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_visible_bases) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  call void @RNA_string_get(ptr noundef %9, ptr noundef nonnull @.str.32, ptr noundef nonnull %3) #7
  %10 = call ptr @BKE_libblock_find_name(i16 noundef signext 21063, ptr noundef nonnull %3) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %13 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %4) #7
  %14 = load ptr, ptr %4, align 8, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %12, %30
  %17 = phi ptr [ %31, %30 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.CollectionPointerLink, ptr %17, i64 0, i32 2, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !48
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %10, ptr noundef %26) #7
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  call void @ED_base_object_select(ptr noundef nonnull %19, i16 noundef signext 1) #9
  br label %30

30:                                               ; preds = %29, %24, %16
  %31 = load ptr, ptr %17, align 8, !tbaa !83
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %16, !llvm.loop !128

33:                                               ; preds = %30, %12
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  %34 = call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %34) #7
  br label %35

35:                                               ; preds = %7, %2, %33
  %36 = phi i32 [ 4, %33 ], [ 8, %2 ], [ 8, %7 ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %3) #8
  ret i32 %36
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_select_mirror(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_select_mirror_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @objects_selectable_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_select_mirror_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !129 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %9 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %10 = load ptr, ptr %3, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %2
  %13 = and i32 %8, 255
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %12, %35
  %16 = phi ptr [ %10, %12 ], [ %36, %35 ]
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %16, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  %19 = getelementptr inbounds %struct.Base, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4, i64 2
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %4, ptr noundef nonnull %21, i8 noundef zeroext 1) #7
  %22 = load ptr, ptr %19, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 4, i64 2
  %24 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %23) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %15
  %27 = call ptr @BKE_libblock_find_name(i16 noundef signext 16975, ptr noundef nonnull %4) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = call ptr @BKE_scene_base_find(ptr noundef %5, ptr noundef nonnull %27) #7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  call void @ED_base_object_select(ptr noundef nonnull %30, i16 noundef signext 1) #9
  br label %33

33:                                               ; preds = %26, %32, %29, %15
  br i1 %14, label %34, label %35

34:                                               ; preds = %33
  call void @ED_base_object_select(ptr noundef nonnull %18, i16 noundef signext 0) #9
  br label %35

35:                                               ; preds = %34, %33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  %36 = load ptr, ptr %16, align 8, !tbaa !83
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %15, !llvm.loop !130

38:                                               ; preds = %35, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %5) #7
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_select_random(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !69
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %2, align 8, !tbaa !72
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_select_random_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @objects_selectable_poll, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = tail call ptr @RNA_def_float_percentage(ptr noundef %8, ptr noundef nonnull @.str.41, float noundef 5.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, float noundef 0.000000e+00, float noundef 1.000000e+02) #7
  tail call void @WM_operator_properties_select_action_simple(ptr noundef nonnull %0, i32 noundef 1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_select_random_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !131 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.96) #7
  %7 = load ptr, ptr %4, align 8, !tbaa !81
  %8 = tail call float @RNA_float_get(ptr noundef %7, ptr noundef nonnull @.str.41) #7
  %9 = fdiv float %8, 1.000000e+02
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %10 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %11 = load ptr, ptr %3, align 8, !tbaa !83
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = icmp eq i32 %6, 1
  %15 = zext i1 %14 to i16
  br label %16

16:                                               ; preds = %13, %23
  %17 = phi ptr [ %11, %13 ], [ %24, %23 ]
  %18 = getelementptr inbounds %struct.CollectionPointerLink, ptr %17, i64 0, i32 2, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = call float @BLI_frand() #7
  %21 = fcmp olt float %20, %9
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  call void @ED_base_object_select(ptr noundef %19, i16 noundef signext %15) #9
  br label %23

23:                                               ; preds = %22, %16
  %24 = load ptr, ptr %17, align 8, !tbaa !83
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %16, !llvm.loop !132

26:                                               ; preds = %23, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %27 = call ptr @CTX_data_scene(ptr noundef %0) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %27) #7
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operator_properties_select_action_simple(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CTX_data_visible_bases(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @object_select_all_by_dup_group(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !133 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %5 = load i16, ptr %4, align 8, !tbaa !134
  %6 = and i16 %5, 256
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 112
  %10 = load ptr, ptr %9, align 8, !tbaa !117
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %13 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %14 = load ptr, ptr %3, align 8, !tbaa !83
  %15 = icmp eq ptr %14, null
  br i1 %15, label %46, label %16

16:                                               ; preds = %11, %42
  %17 = phi ptr [ %44, %42 ], [ %14, %11 ]
  %18 = phi i8 [ %43, %42 ], [ 0, %11 ]
  %19 = getelementptr inbounds %struct.CollectionPointerLink, ptr %17, i64 0, i32 2, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !84
  %21 = getelementptr inbounds %struct.Base, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.Base, ptr %20, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 55
  %29 = load i16, ptr %28, align 8, !tbaa !134
  %30 = and i16 %29, 256
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 112
  %34 = load ptr, ptr %33, align 8, !tbaa !117
  br label %35

35:                                               ; preds = %25, %32
  %36 = phi ptr [ %34, %32 ], [ null, %25 ]
  %37 = icmp eq ptr %12, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = or disjoint i32 %22, 1
  store i32 %39, ptr %21, align 8, !tbaa !48
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 53
  store i16 %40, ptr %41, align 4, !tbaa !49
  br label %42

42:                                               ; preds = %35, %38, %16
  %43 = phi i8 [ %18, %16 ], [ 1, %38 ], [ %18, %35 ]
  %44 = load ptr, ptr %17, align 8, !tbaa !83
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %16, !llvm.loop !135

46:                                               ; preds = %42, %11
  %47 = phi i8 [ 0, %11 ], [ %43, %42 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i8 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !136 {
  %2 = load ptr, ptr %0, align 8, !tbaa !137
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @object_select_all_by_particle(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !138 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @psys_get_current(ptr noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %5 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %6 = load ptr, ptr %3, align 8, !tbaa !83
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  br label %10

10:                                               ; preds = %8, %39
  %11 = phi ptr [ %6, %8 ], [ %41, %39 ]
  %12 = phi i8 [ 0, %8 ], [ %40, %39 ]
  %13 = getelementptr inbounds %struct.CollectionPointerLink, ptr %11, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  %15 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !48
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 109
  br label %23

23:                                               ; preds = %27, %19
  %24 = phi ptr [ %22, %19 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ParticleSystem, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !139
  %30 = load ptr, ptr %9, align 8, !tbaa !139
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %23, !llvm.loop !141

32:                                               ; preds = %27
  %33 = or disjoint i32 %16, 1
  store i32 %33, ptr %15, align 8, !tbaa !48
  br label %34

34:                                               ; preds = %23, %32
  %35 = phi i32 [ %33, %32 ], [ %16, %23 ]
  %36 = phi i8 [ 1, %32 ], [ %12, %23 ]
  %37 = trunc i32 %35 to i16
  %38 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 53
  store i16 %37, ptr %38, align 4, !tbaa !49
  br label %39

39:                                               ; preds = %34, %10
  %40 = phi i8 [ %36, %34 ], [ %12, %10 ]
  %41 = load ptr, ptr %11, align 8, !tbaa !83
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %10, !llvm.loop !142

43:                                               ; preds = %39, %2
  %44 = phi i8 [ 0, %2 ], [ %40, %39 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @object_select_all_by_library_obdata(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #1 !PGOFuncName !143 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %4 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = load ptr, ptr %3, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %2, %30
  %8 = phi ptr [ %32, %30 ], [ %5, %2 ]
  %9 = phi i8 [ %31, %30 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %8, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !48
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !118
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = or disjoint i32 %13, 1
  store i32 %27, ptr %12, align 8, !tbaa !48
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 53
  store i16 %28, ptr %29, align 4, !tbaa !49
  br label %30

30:                                               ; preds = %16, %22, %26, %7
  %31 = phi i8 [ 1, %26 ], [ %9, %22 ], [ %9, %16 ], [ %9, %7 ]
  %32 = load ptr, ptr %8, align 8, !tbaa !83
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %7, !llvm.loop !144

34:                                               ; preds = %30, %2
  %35 = phi i8 [ 0, %2 ], [ %31, %30 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i8 %35
}

; Function Attrs: optsize
declare ptr @psys_get_current(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_children(ptr noundef %0, ptr noundef readnone %1, i8 noundef zeroext %2) unnamed_addr #1 !PGOFuncName !145 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %5 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %4) #7
  %6 = load ptr, ptr %4, align 8, !tbaa !83
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %3
  %9 = icmp eq i8 %2, 0
  br label %10

10:                                               ; preds = %8, %32
  %11 = phi ptr [ %6, %8 ], [ %34, %32 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %32 ]
  %13 = getelementptr inbounds %struct.CollectionPointerLink, ptr %11, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  %15 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !146
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %32

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call void @ED_base_object_select(ptr noundef nonnull %14, i16 noundef signext 1) #9
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i8 [ %12, %20 ], [ 1, %25 ]
  br i1 %9, label %32, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %15, align 8, !tbaa !34
  %30 = call fastcc zeroext i8 @select_grouped_children(ptr noundef %0, ptr noundef %29, i8 noundef zeroext 1) #9, !range !95
  %31 = or i8 %30, %27
  br label %32

32:                                               ; preds = %26, %28, %10
  %33 = phi i8 [ %31, %28 ], [ %27, %26 ], [ %12, %10 ]
  %34 = load ptr, ptr %11, align 8, !tbaa !83
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %10, !llvm.loop !147

36:                                               ; preds = %32, %3
  %37 = phi i8 [ 0, %3 ], [ %33, %32 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i8 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @select_grouped_parent(ptr noundef %0) unnamed_addr #1 !PGOFuncName !148 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_active_base(ptr noundef %0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @BKE_scene_base_find(ptr noundef %2, ptr noundef nonnull %10) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Base, ptr %13, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !123
  %18 = getelementptr inbounds %struct.View3D, ptr %3, i64 0, i32 22
  %19 = load i32, ptr %18, align 8, !tbaa !149
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Base, ptr %13, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 102
  %26 = load i8, ptr %25, align 8, !tbaa !41
  %27 = and i8 %26, 3
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  tail call void @ED_base_object_select(ptr noundef nonnull %4, i16 noundef signext 0) #9
  tail call void @ED_base_object_select(ptr noundef nonnull %13, i16 noundef signext 1) #9
  tail call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %13) #9
  br label %30

30:                                               ; preds = %12, %15, %22, %29, %1, %6
  %31 = phi i8 [ 0, %6 ], [ 0, %1 ], [ 1, %29 ], [ 0, %22 ], [ 0, %15 ], [ 0, %12 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_siblings(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !151 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %4 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = load ptr, ptr %3, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  br label %9

9:                                                ; preds = %7, %26
  %10 = phi ptr [ %5, %7 ], [ %28, %26 ]
  %11 = phi i8 [ 0, %7 ], [ %27, %26 ]
  %12 = getelementptr inbounds %struct.CollectionPointerLink, ptr %10, i64 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.Base, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !146
  %18 = load ptr, ptr %8, align 8, !tbaa !146
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.Base, ptr %13, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call void @ED_base_object_select(ptr noundef nonnull %13, i16 noundef signext 1) #9
  br label %26

26:                                               ; preds = %25, %20, %9
  %27 = phi i8 [ %11, %20 ], [ 1, %25 ], [ %11, %9 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !83
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %9, !llvm.loop !152

30:                                               ; preds = %26, %2
  %31 = phi i8 [ 0, %2 ], [ %27, %26 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_type(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !153 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %4 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = load ptr, ptr %3, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  br label %9

9:                                                ; preds = %7, %26
  %10 = phi ptr [ %5, %7 ], [ %28, %26 ]
  %11 = phi i8 [ 0, %7 ], [ %27, %26 ]
  %12 = getelementptr inbounds %struct.CollectionPointerLink, ptr %10, i64 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.Base, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !90
  %18 = load i16, ptr %8, align 8, !tbaa !90
  %19 = icmp eq i16 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.Base, ptr %13, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call void @ED_base_object_select(ptr noundef nonnull %13, i16 noundef signext 1) #9
  br label %26

26:                                               ; preds = %25, %20, %9
  %27 = phi i8 [ %11, %20 ], [ 1, %25 ], [ %11, %9 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !83
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %9, !llvm.loop !154

30:                                               ; preds = %26, %2
  %31 = phi i8 [ 0, %2 ], [ %27, %26 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_layer(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !155 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %4 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = load ptr, ptr %3, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  br label %9

9:                                                ; preds = %7, %25
  %10 = phi ptr [ %5, %7 ], [ %27, %25 ]
  %11 = phi i8 [ 0, %7 ], [ %26, %25 ]
  %12 = getelementptr inbounds %struct.CollectionPointerLink, ptr %10, i64 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.Base, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !123
  %16 = load i32, ptr %8, align 8, !tbaa !156
  %17 = and i32 %16, %15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.Base, ptr %13, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !48
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  call void @ED_base_object_select(ptr noundef nonnull %13, i16 noundef signext 1) #9
  br label %25

25:                                               ; preds = %24, %19, %9
  %26 = phi i8 [ %11, %19 ], [ 1, %24 ], [ %11, %9 ]
  %27 = load ptr, ptr %10, align 8, !tbaa !83
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %9, !llvm.loop !157

29:                                               ; preds = %25, %2
  %30 = phi i8 [ 0, %2 ], [ %26, %25 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i8 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_group(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !158 {
  %3 = alloca [24 x ptr], align 16
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 32
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %65, label %9

9:                                                ; preds = %2, %18
  %10 = phi ptr [ %20, %18 ], [ %7, %2 ]
  %11 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %12 = tail call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %10, ptr noundef %1) #7
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds [24 x ptr], ptr %3, i64 0, i64 %15
  store ptr %10, ptr %16, align 8, !tbaa !83
  %17 = add nsw i32 %11, 1
  br label %18

18:                                               ; preds = %9, %14
  %19 = phi i32 [ %17, %14 ], [ %11, %9 ]
  %20 = load ptr, ptr %10, align 8, !tbaa !83
  %21 = icmp ne ptr %20, null
  %22 = icmp slt i32 %19, 24
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %9, label %24, !llvm.loop !159

24:                                               ; preds = %18
  switch i32 %19, label %51 [
    i32 0, label %65
    i32 1, label %25
  ]

25:                                               ; preds = %24
  %26 = load ptr, ptr %3, align 16, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %27 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %4) #7
  %28 = load ptr, ptr %4, align 8, !tbaa !83
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %25, %45
  %31 = phi ptr [ %47, %45 ], [ %28, %25 ]
  %32 = phi i8 [ %46, %45 ], [ 0, %25 ]
  %33 = getelementptr inbounds %struct.CollectionPointerLink, ptr %31, i64 0, i32 2, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !84
  %35 = getelementptr inbounds %struct.Base, ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !48
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.Base, ptr %34, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = call zeroext i8 @BKE_group_object_exists(ptr noundef %26, ptr noundef %41) #7
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  call void @ED_base_object_select(ptr noundef nonnull %34, i16 noundef signext 1) #9
  br label %45

45:                                               ; preds = %44, %39, %30
  %46 = phi i8 [ %32, %30 ], [ 1, %44 ], [ %32, %39 ]
  %47 = load ptr, ptr %31, align 8, !tbaa !83
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %30, !llvm.loop !160

49:                                               ; preds = %45, %25
  %50 = phi i8 [ 0, %25 ], [ %46, %45 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  br label %65

51:                                               ; preds = %24
  %52 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef 0) #7
  %53 = tail call ptr @uiPupMenuLayout(ptr noundef %52) #7
  %54 = icmp sgt i32 %19, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = zext nneg i32 %19 to i64
  br label %57

57:                                               ; preds = %55, %57
  %58 = phi i64 [ 0, %55 ], [ %62, %57 ]
  %59 = getelementptr inbounds [24 x ptr], ptr %3, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !83
  %61 = getelementptr inbounds %struct.ID, ptr %60, i64 0, i32 4, i64 2
  tail call void @uiItemStringO(ptr noundef %53, ptr noundef nonnull %61, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull %61) #7
  %62 = add nuw nsw i64 %58, 1
  %63 = icmp eq i64 %62, %56
  br i1 %63, label %64, label %57, !llvm.loop !161

64:                                               ; preds = %57, %51
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %52) #7
  br label %65

65:                                               ; preds = %2, %24, %64, %49
  %66 = phi i8 [ %50, %49 ], [ 0, %64 ], [ 0, %24 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #8
  ret i8 %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_object_hooks(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !162 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.View3D, ptr %4, i64 0, i32 22
  br label %10

10:                                               ; preds = %8, %42
  %11 = phi ptr [ %6, %8 ], [ %44, %42 ]
  %12 = phi i8 [ 0, %8 ], [ %43, %42 ]
  %13 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !163
  %15 = icmp eq i32 %14, 9
  br i1 %15, label %16, label %42

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.HookModifierData, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !165
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 53
  %22 = load i16, ptr %21, align 4, !tbaa !49
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = tail call ptr @BKE_scene_base_find(ptr noundef %3, ptr noundef nonnull %18) #7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Base, ptr %26, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !123
  %31 = load i32, ptr %9, align 8, !tbaa !149
  %32 = and i32 %31, %30
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.Base, ptr %26, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 102
  %38 = load i8, ptr %37, align 8, !tbaa !41
  %39 = and i8 %38, 3
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  tail call void @ED_base_object_select(ptr noundef nonnull %26, i16 noundef signext 1) #9
  br label %42

42:                                               ; preds = %10, %25, %28, %34, %41, %20, %16
  %43 = phi i8 [ %12, %20 ], [ 1, %41 ], [ %12, %34 ], [ %12, %28 ], [ %12, %25 ], [ %12, %16 ], [ %12, %10 ]
  %44 = load ptr, ptr %11, align 8, !tbaa !83
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %10, !llvm.loop !167

46:                                               ; preds = %42, %2
  %47 = phi i8 [ 0, %2 ], [ %43, %42 ]
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_index_object(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !168 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %4 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = load ptr, ptr %3, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 96
  br label %9

9:                                                ; preds = %7, %26
  %10 = phi ptr [ %5, %7 ], [ %28, %26 ]
  %11 = phi i8 [ 0, %7 ], [ %27, %26 ]
  %12 = getelementptr inbounds %struct.CollectionPointerLink, ptr %10, i64 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.Base, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 96
  %17 = load i16, ptr %16, align 4, !tbaa !169
  %18 = load i16, ptr %8, align 4, !tbaa !169
  %19 = icmp eq i16 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.Base, ptr %13, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  call void @ED_base_object_select(ptr noundef nonnull %13, i16 noundef signext 1) #9
  br label %26

26:                                               ; preds = %25, %20, %9
  %27 = phi i8 [ %11, %20 ], [ 1, %25 ], [ %11, %9 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !83
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %9, !llvm.loop !170

30:                                               ; preds = %26, %2
  %31 = phi i8 [ 0, %2 ], [ %27, %26 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_color(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !171 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %4 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = load ptr, ptr %3, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 98
  br label %9

9:                                                ; preds = %7, %25
  %10 = phi ptr [ %5, %7 ], [ %27, %25 ]
  %11 = phi i8 [ 0, %7 ], [ %26, %25 ]
  %12 = getelementptr inbounds %struct.CollectionPointerLink, ptr %10, i64 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.Base, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !48
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.Base, ptr %13, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 98
  %22 = call fastcc zeroext i8 @compare_v3v3(ptr noundef nonnull %21, ptr noundef nonnull %8) #9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  call void @ED_base_object_select(ptr noundef nonnull %13, i16 noundef signext 1) #9
  br label %25

25:                                               ; preds = %24, %18, %9
  %26 = phi i8 [ %11, %9 ], [ 1, %24 ], [ %11, %18 ]
  %27 = load ptr, ptr %10, align 8, !tbaa !83
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %9, !llvm.loop !172

29:                                               ; preds = %25, %2
  %30 = phi i8 [ 0, %2 ], [ %26, %25 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i8 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_gameprops(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !173 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %4 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %5 = load ptr, ptr %3, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2, %22
  %8 = phi ptr [ %24, %22 ], [ %5, %2 ]
  %9 = phi i8 [ %23, %22 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %8, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !48
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = call fastcc zeroext i8 @objects_share_gameprop(ptr noundef %18, ptr noundef %1) #9, !range !95
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  call void @ED_base_object_select(ptr noundef nonnull %11, i16 noundef signext 1) #9
  br label %22

22:                                               ; preds = %21, %16, %7
  %23 = phi i8 [ %9, %7 ], [ 1, %21 ], [ %9, %16 ]
  %24 = load ptr, ptr %8, align 8, !tbaa !83
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7, !llvm.loop !174

26:                                               ; preds = %22, %2
  %27 = phi i8 [ 0, %2 ], [ %23, %22 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i8 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_keyingset(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !175 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @ANIM_scene_get_active_keyingset(ptr noundef %4) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.61) #7
  br label %55

8:                                                ; preds = %2
  %9 = tail call signext i16 @ANIM_validate_keyingset(ptr noundef %0, ptr noundef null, ptr noundef nonnull %5) #7
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.KeyingSet, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !176
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %55

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.KeyingSet, ptr %5, i64 0, i32 7
  %17 = load i16, ptr %16, align 8, !tbaa !178
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.62) #7
  br label %55

21:                                               ; preds = %15
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.63) #7
  br label %55

22:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %23 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %24 = load ptr, ptr %3, align 8, !tbaa !83
  %25 = icmp eq ptr %24, null
  br i1 %25, label %53, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.KeyingSet, ptr %5, i64 0, i32 2
  br label %28

28:                                               ; preds = %26, %49
  %29 = phi ptr [ %24, %26 ], [ %51, %49 ]
  %30 = phi i8 [ 0, %26 ], [ %50, %49 ]
  %31 = getelementptr inbounds %struct.CollectionPointerLink, ptr %29, i64 0, i32 2, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !84
  %33 = getelementptr inbounds %struct.Base, ptr %32, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !48
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.Base, ptr %32, i64 0, i32 7
  br label %39

39:                                               ; preds = %43, %37
  %40 = phi ptr [ %27, %37 ], [ %41, %43 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !83
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.KS_Path, ptr %41, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !179
  %46 = load ptr, ptr %38, align 8, !tbaa !34
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %39, !llvm.loop !181

48:                                               ; preds = %43
  call void @ED_base_object_select(ptr noundef nonnull %32, i16 noundef signext 1) #9
  br label %49

49:                                               ; preds = %39, %48, %28
  %50 = phi i8 [ %30, %28 ], [ 1, %48 ], [ %30, %39 ]
  %51 = load ptr, ptr %29, align 8, !tbaa !83
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %28, !llvm.loop !182

53:                                               ; preds = %49, %22
  %54 = phi i8 [ 0, %22 ], [ %50, %49 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %55

55:                                               ; preds = %11, %21, %20, %53, %7
  %56 = phi i8 [ 0, %7 ], [ %54, %53 ], [ 0, %20 ], [ 0, %21 ], [ 0, %11 ]
  ret i8 %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @select_grouped_lamptype(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !183 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %6 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %3) #7
  %7 = load ptr, ptr %3, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Lamp, ptr %5, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %34
  %12 = phi ptr [ %7, %9 ], [ %36, %34 ]
  %13 = phi i8 [ 0, %9 ], [ %35, %34 ]
  %14 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  %16 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !90
  %20 = icmp eq i16 %19, 10
  br i1 %20, label %21, label %34

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !97
  %24 = load i16, ptr %10, align 8, !tbaa !184
  %25 = getelementptr inbounds %struct.Lamp, ptr %23, i64 0, i32 2
  %26 = load i16, ptr %25, align 8, !tbaa !184
  %27 = icmp eq i16 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !48
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  call void @ED_base_object_select(ptr noundef nonnull %15, i16 noundef signext 1) #9
  br label %34

34:                                               ; preds = %21, %28, %33, %11
  %35 = phi i8 [ %13, %11 ], [ %13, %28 ], [ 1, %33 ], [ %13, %21 ]
  %36 = load ptr, ptr %12, align 8, !tbaa !83
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %11, !llvm.loop !186

38:                                               ; preds = %34, %2
  %39 = phi i8 [ 0, %2 ], [ %35, %34 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i8 %39
}

; Function Attrs: optsize
declare i32 @CTX_data_selectable_bases(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_active_base(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_exists(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemStringO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @compare_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !187 {
  %3 = load float, ptr %0, align 4, !tbaa !188
  %4 = load float, ptr %1, align 4, !tbaa !188
  %5 = fsub float %3, %4
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fcmp ugt float %6, 0x3F747AE140000000
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !188
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !188
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ugt float %14, 0x3F747AE140000000
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds float, ptr %0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !188
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !188
  %21 = fsub float %18, %20
  %22 = tail call float @llvm.fabs.f32(float %21)
  %23 = fcmp ugt float %22, 0x3F747AE140000000
  br i1 %23, label %24, label %25

24:                                               ; preds = %8, %16, %2
  br label %25

25:                                               ; preds = %16, %24
  %26 = phi i8 [ 0, %24 ], [ 1, %16 ]
  ret i8 %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @objects_share_gameprop(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !189 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 91
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bProperty, ptr %6, i64 0, i32 2
  %10 = tail call ptr @BKE_bproperty_object_get(ptr noundef %1, ptr noundef nonnull %9) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %4, label %12, !llvm.loop !190

12:                                               ; preds = %4, %8
  %13 = phi i8 [ 1, %8 ], [ 0, %4 ]
  ret i8 %13
}

; Function Attrs: optsize
declare ptr @BKE_bproperty_object_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ANIM_scene_get_active_keyingset(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare signext i16 @ANIM_validate_keyingset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CTX_data_selected_bases(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BLI_frand() local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !36, i64 32}
!35 = !{!"Base", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !40, i64 28, !40, i64 30, !36, i64 32}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!42, !37, i64 1160}
!42 = !{!"Object", !43, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !44, i64 312, !36, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !46, i64 616, !46, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !46, i64 1048, !46, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !46, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !46, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !47, i64 1304, !47, i64 1312, !39, i64 1320, !39, i64 1324, !45, i64 1328, !45, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !45, i64 1400, !36, i64 1416}
!43 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!44 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!45 = !{!"ListBase", !36, i64 0, !36, i64 8}
!46 = !{!"float", !37, i64 0}
!47 = !{!"long", !37, i64 0}
!48 = !{!35, !39, i64 24}
!49 = !{!42, !40, i64 948}
!50 = !{!51, !36, i64 168}
!51 = !{!"Scene", !43, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !45, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !52, i64 280, !61, i64 4264, !45, i64 4296, !45, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !39, i64 4380, !45, i64 4384, !62, i64 4400, !63, i64 4416, !66, i64 4600, !36, i64 4608, !67, i64 4616, !36, i64 4640, !47, i64 4648, !47, i64 4656, !54, i64 4664, !55, i64 4824, !68, i64 4888, !36, i64 4952}
!52 = !{!"RenderData", !53, i64 0, !36, i64 248, !36, i64 256, !56, i64 264, !57, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !46, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !40, i64 432, !40, i64 434, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !39, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !39, i64 484, !39, i64 488, !40, i64 492, !40, i64 494, !39, i64 496, !39, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !58, i64 544, !58, i64 560, !59, i64 576, !45, i64 592, !40, i64 608, !40, i64 610, !46, i64 612, !46, i64 616, !46, i64 620, !46, i64 624, !39, i64 628, !46, i64 632, !46, i64 636, !46, i64 640, !46, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !46, i64 660, !46, i64 664, !40, i64 668, !40, i64 670, !46, i64 672, !46, i64 676, !37, i64 680, !39, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !40, i64 2524, !40, i64 2526, !46, i64 2528, !46, i64 2532, !40, i64 2536, !40, i64 2538, !46, i64 2540, !40, i64 2544, !40, i64 2546, !39, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !46, i64 2560, !46, i64 2564, !36, i64 2568, !39, i64 2576, !46, i64 2580, !37, i64 2584, !60, i64 2616, !39, i64 3976, !39, i64 3980}
!53 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !46, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !54, i64 24, !55, i64 184}
!54 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !46, i64 136, !46, i64 140, !36, i64 144, !36, i64 152}
!55 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!56 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !40, i64 48, !40, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!57 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !46, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!58 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!59 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!60 = !{!"BakeData", !53, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !46, i64 1280, !46, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!61 = !{!"AudioData", !39, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !39, i64 16, !40, i64 20, !40, i64 22, !46, i64 24, !46, i64 28}
!62 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!63 = !{!"GameData", !62, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !64, i64 40, !40, i64 64, !40, i64 66, !46, i64 68, !65, i64 72, !46, i64 128, !46, i64 132, !39, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180}
!64 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !46, i64 8, !46, i64 12, !36, i64 16}
!65 = !{!"RecastData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !39, i64 40, !46, i64 44, !46, i64 48, !40, i64 52, !40, i64 54}
!66 = !{!"UnitSettings", !46, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!67 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!68 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!69 = !{!70, !36, i64 0}
!70 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !45, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !71, i64 152, !40, i64 184}
!71 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!72 = !{!70, !36, i64 24}
!73 = !{!70, !36, i64 8}
!74 = !{!70, !36, i64 48}
!75 = !{!70, !36, i64 32}
!76 = !{!70, !36, i64 72}
!77 = !{!70, !40, i64 184}
!78 = !{!70, !36, i64 88}
!79 = !{!70, !36, i64 104}
!80 = !{!"object_select.c:object_select_by_type_exec"}
!81 = !{!82, !36, i64 112}
!82 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !45, i64 128, !36, i64 144, !36, i64 152, !40, i64 160, !37, i64 162}
!83 = !{!36, !36, i64 0}
!84 = !{!85, !36, i64 32}
!85 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !86, i64 16}
!86 = !{!"PointerRNA", !87, i64 0, !36, i64 8, !36, i64 16}
!87 = !{!"", !36, i64 0}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!42, !40, i64 136}
!91 = distinct !{!91, !89}
!92 = !{!"object_select.c:objects_selectable_poll"}
!93 = !{!42, !39, i64 432}
!94 = !{!40, !40, i64 0}
!95 = !{i8 0, i8 2}
!96 = !{!"object_select.c:object_select_all_by_obdata"}
!97 = !{!42, !36, i64 296}
!98 = distinct !{!98, !89}
!99 = !{!"object_select.c:object_select_all_by_material_texture"}
!100 = !{!42, !39, i64 456}
!101 = !{!102, !36, i64 16}
!102 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !46, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !37, i64 132, !37, i64 133, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !46, i64 240, !46, i64 244, !46, i64 248, !46, i64 252, !46, i64 256, !46, i64 260, !46, i64 264, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308}
!103 = distinct !{!103, !89}
!104 = distinct !{!104, !89}
!105 = distinct !{!105, !89}
!106 = !{!"object_select.c:object_select_all_by_library"}
!107 = !{!42, !36, i64 24}
!108 = distinct !{!108, !89}
!109 = !{!"object_select.c:object_select_linked_exec"}
!110 = distinct !{!110, !89}
!111 = !{!82, !36, i64 120}
!112 = !{!42, !39, i64 460}
!113 = !{!114, !37, i64 541}
!114 = !{!"Material", !43, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !46, i64 132, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !46, i64 216, !46, i64 220, !115, i64 224, !116, i64 312, !46, i64 328, !46, i64 332, !46, i64 336, !46, i64 340, !46, i64 344, !46, i64 348, !46, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !46, i64 364, !46, i64 368, !40, i64 372, !40, i64 374, !46, i64 376, !46, i64 380, !46, i64 384, !46, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !46, i64 420, !46, i64 424, !46, i64 428, !46, i64 432, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !46, i64 456, !37, i64 460, !46, i64 524, !46, i64 528, !46, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !46, i64 556, !46, i64 560, !37, i64 564, !46, i64 580, !46, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !46, i64 616, !46, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !46, i64 800, !46, i64 804, !46, i64 808, !46, i64 812, !46, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !46, i64 848, !46, i64 852, !46, i64 856, !46, i64 860, !46, i64 864, !46, i64 868, !46, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !45, i64 928}
!115 = !{!"VolumeSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !46, i64 52, !46, i64 56, !46, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !46, i64 72, !46, i64 76, !46, i64 80, !46, i64 84}
!116 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!117 = !{!42, !36, i64 1256}
!118 = !{!43, !36, i64 24}
!119 = !{!"object_select.c:object_select_grouped_exec"}
!120 = distinct !{!120, !89}
!121 = !{!"object_select.c:object_select_by_layer_exec"}
!122 = distinct !{!122, !89}
!123 = !{!35, !39, i64 16}
!124 = distinct !{!124, !89}
!125 = !{!"object_select.c:object_select_all_exec"}
!126 = distinct !{!126, !89}
!127 = !{!"object_select.c:object_select_same_group_exec"}
!128 = distinct !{!128, !89}
!129 = !{!"object_select.c:object_select_mirror_exec"}
!130 = distinct !{!130, !89}
!131 = !{!"object_select.c:object_select_random_exec"}
!132 = distinct !{!132, !89}
!133 = !{!"object_select.c:object_select_all_by_dup_group"}
!134 = !{!42, !40, i64 952}
!135 = distinct !{!135, !89}
!136 = !{!"object_select.c:BLI_listbase_is_empty"}
!137 = !{!45, !36, i64 0}
!138 = !{!"object_select.c:object_select_all_by_particle"}
!139 = !{!140, !36, i64 16}
!140 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !45, i64 72, !45, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !45, i64 152, !37, i64 168, !37, i64 232, !46, i64 296, !46, i64 300, !46, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !37, i64 348, !37, i64 540, !40, i64 564, !40, i64 566, !36, i64 568, !36, i64 576, !45, i64 584, !36, i64 600, !36, i64 608, !39, i64 616, !39, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !46, i64 648, !46, i64 652}
!141 = distinct !{!141, !89}
!142 = distinct !{!142, !89}
!143 = !{!"object_select.c:object_select_all_by_library_obdata"}
!144 = distinct !{!144, !89}
!145 = !{!"object_select.c:select_grouped_children"}
!146 = !{!42, !36, i64 216}
!147 = distinct !{!147, !89}
!148 = !{!"object_select.c:select_grouped_parent"}
!149 = !{!150, !39, i64 224}
!150 = !{!"View3D", !36, i64 0, !36, i64 8, !45, i64 16, !39, i64 32, !46, i64 36, !37, i64 40, !37, i64 56, !46, i64 72, !46, i64 76, !37, i64 80, !37, i64 81, !39, i64 84, !39, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !36, i64 104, !58, i64 112, !45, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !39, i64 224, !39, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !46, i64 244, !46, i64 248, !46, i64 252, !46, i64 256, !37, i64 260, !37, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !45, i64 296, !45, i64 312, !45, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!151 = !{!"object_select.c:select_grouped_siblings"}
!152 = distinct !{!152, !89}
!153 = !{!"object_select.c:select_grouped_type"}
!154 = distinct !{!154, !89}
!155 = !{!"object_select.c:select_grouped_layer"}
!156 = !{!42, !39, i64 944}
!157 = distinct !{!157, !89}
!158 = !{!"object_select.c:select_grouped_group"}
!159 = distinct !{!159, !89}
!160 = distinct !{!160, !89}
!161 = distinct !{!161, !89}
!162 = !{!"object_select.c:select_grouped_object_hooks"}
!163 = !{!164, !39, i64 16}
!164 = !{!"ModifierData", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!165 = !{!166, !36, i64 112}
!166 = !{!"HookModifierData", !164, i64 0, !36, i64 112, !37, i64 120, !37, i64 184, !37, i64 248, !46, i64 260, !36, i64 264, !39, i64 272, !46, i64 276, !37, i64 280}
!167 = distinct !{!167, !89}
!168 = !{!"object_select.c:select_grouped_index_object"}
!169 = !{!42, !40, i64 1124}
!170 = distinct !{!170, !89}
!171 = !{!"object_select.c:select_grouped_color"}
!172 = distinct !{!172, !89}
!173 = !{!"object_select.c:select_grouped_gameprops"}
!174 = distinct !{!174, !89}
!175 = !{!"object_select.c:select_grouped_keyingset"}
!176 = !{!177, !36, i64 16}
!177 = !{!"KeyingSet", !36, i64 0, !36, i64 8, !45, i64 16, !37, i64 32, !37, i64 96, !37, i64 160, !37, i64 400, !40, i64 464, !40, i64 466, !39, i64 468}
!178 = !{!177, !40, i64 464}
!179 = !{!180, !36, i64 16}
!180 = !{!"KS_Path", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !39, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !39, i64 104, !40, i64 108, !40, i64 110}
!181 = distinct !{!181, !89}
!182 = distinct !{!182, !89}
!183 = !{!"object_select.c:select_grouped_lamptype"}
!184 = !{!185, !40, i64 128}
!185 = !{!"Lamp", !43, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !39, i64 132, !40, i64 136, !40, i64 138, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !36, i64 200, !40, i64 208, !40, i64 210, !46, i64 212, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !37, i64 248, !37, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !46, i64 260, !46, i64 264, !46, i64 268, !46, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308, !46, i64 312, !46, i64 316, !46, i64 320, !46, i64 324, !46, i64 328, !46, i64 332, !46, i64 336, !40, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !40, i64 496, !40, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!186 = distinct !{!186, !89}
!187 = !{!"object_select.c:compare_v3v3"}
!188 = !{!46, !46, i64 0}
!189 = !{!"object_select.c:objects_share_gameprop"}
!190 = distinct !{!190, !89}
