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
%struct.bProperty = type { ptr, ptr, [64 x i8], i16, i16, i32, ptr }
%struct.KeyingSet = type { ptr, ptr, %struct.ListBase, [64 x i8], [64 x i8], [240 x i8], [64 x i8], i16, i16, i32 }
%struct.KS_Path = type { ptr, ptr, ptr, [64 x i8], i32, i16, i16, ptr, i32, i16, i16 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: nounwind uwtable
define dso_local void @ED_base_object_activate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 6
  store ptr %1, ptr %4, align 8, !tbaa !50
  %5 = icmp eq ptr %1, null
  %6 = select i1 %5, ptr null, ptr %3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %6) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
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
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !78
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @object_type_items, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #6
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !79
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_select_by_type_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.6) #6
  %8 = load ptr, ptr %5, align 8, !tbaa !80
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #6
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %13 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %14 = load ptr, ptr %3, align 8, !tbaa !82
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12, %29
  %17 = phi ptr [ %30, %29 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.CollectionPointerLink, ptr %17, i64 0, i32 2, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !48
  %24 = and i32 %23, -2
  store i32 %24, ptr %22, align 8, !tbaa !48
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 53
  store i16 %25, ptr %28, align 4, !tbaa !49
  br label %29

29:                                               ; preds = %16, %21
  %30 = load ptr, ptr %17, align 8, !tbaa !82
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %16, !llvm.loop !87

32:                                               ; preds = %29, %12
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %33

33:                                               ; preds = %32, %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %34 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %4) #6
  %35 = load ptr, ptr %4, align 8, !tbaa !82
  %36 = icmp eq ptr %35, null
  br i1 %36, label %69, label %37

37:                                               ; preds = %33
  %38 = shl i32 %7, 16
  %39 = ashr exact i32 %38, 16
  br label %40

40:                                               ; preds = %37, %66
  %41 = phi ptr [ %35, %37 ], [ %67, %66 ]
  %42 = getelementptr inbounds %struct.CollectionPointerLink, ptr %41, i64 0, i32 2, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.Base, ptr %43, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 3
  %47 = load i16, ptr %46, align 8, !tbaa !90
  %48 = sext i16 %47 to i32
  %49 = icmp ne i32 %39, %48
  %50 = icmp eq ptr %43, null
  %51 = or i1 %50, %49
  br i1 %51, label %66, label %52

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 102
  %54 = load i8, ptr %53, align 8, !tbaa !41
  %55 = and i8 %54, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Base, ptr %43, i64 0, i32 4
  %59 = load i32, ptr %58, align 8, !tbaa !48
  %60 = or i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !48
  br label %61

61:                                               ; preds = %57, %52
  %62 = getelementptr inbounds %struct.Base, ptr %43, i64 0, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !48
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 53
  store i16 %64, ptr %65, align 4, !tbaa !49
  br label %66

66:                                               ; preds = %61, %40
  %67 = load ptr, ptr %41, align 8, !tbaa !82
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %40, !llvm.loop !91

69:                                               ; preds = %66, %33
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  %70 = call ptr @CTX_data_scene(ptr noundef %0) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %70) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @objects_selectable_poll(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = icmp eq ptr %2, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !92
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %5
  br label %12

12:                                               ; preds = %7, %1, %11
  %13 = phi i32 [ 1, %11 ], [ 0, %1 ], [ 0, %7 ]
  ret i32 %13
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_select_linked_by_id(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !93
  switch i16 %7, label %111 [
    i16 21827, label %8
    i16 21580, label %8
    i16 21057, label %8
    i16 19283, label %8
    i16 17741, label %8
    i16 16973, label %8
    i16 16716, label %8
    i16 16707, label %8
    i16 16717, label %37
    i16 18764, label %82
  ]

8:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %9 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %5) #6
  %10 = load ptr, ptr %5, align 8, !tbaa !82
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8, %31
  %13 = phi ptr [ %33, %31 ], [ %10, %8 ]
  %14 = phi i8 [ %32, %31 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %13, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  %17 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !48
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !94
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = or disjoint i32 %18, 1
  store i32 %28, ptr %17, align 8, !tbaa !48
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 53
  store i16 %29, ptr %30, align 4, !tbaa !49
  br label %31

31:                                               ; preds = %27, %21, %12
  %32 = phi i8 [ 1, %27 ], [ %14, %21 ], [ %14, %12 ]
  %33 = load ptr, ptr %13, align 8, !tbaa !82
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %12, !llvm.loop !95

35:                                               ; preds = %31, %8
  %36 = phi i8 [ 0, %8 ], [ %32, %31 ]
  call void @BLI_freelistN(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br label %111

37:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %38 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %4) #6
  %39 = load ptr, ptr %4, align 8, !tbaa !82
  %40 = icmp eq ptr %39, null
  br i1 %40, label %80, label %41

41:                                               ; preds = %37, %76
  %42 = phi ptr [ %78, %76 ], [ %39, %37 ]
  %43 = phi i8 [ %77, %76 ], [ 0, %37 ]
  %44 = getelementptr inbounds %struct.CollectionPointerLink, ptr %42, i64 0, i32 2, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !83
  %46 = getelementptr inbounds %struct.Base, ptr %45, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !48
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.Base, ptr %45, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 31
  %54 = load i32, ptr %53, align 8, !tbaa !96
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %70, label %56

56:                                               ; preds = %50, %65
  %57 = phi i32 [ %67, %65 ], [ 1, %50 ]
  %58 = phi i8 [ %66, %65 ], [ %43, %50 ]
  %59 = trunc i32 %57 to i16
  %60 = call ptr @give_current_material(ptr noundef %52, i16 noundef signext %59) #6
  %61 = icmp eq ptr %60, %1
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, ptr %46, align 8, !tbaa !48
  %64 = or i32 %63, 1
  store i32 %64, ptr %46, align 8, !tbaa !48
  br label %65

65:                                               ; preds = %62, %56
  %66 = phi i8 [ 1, %62 ], [ %58, %56 ]
  %67 = add nuw nsw i32 %57, 1
  %68 = load i32, ptr %53, align 8, !tbaa !96
  %69 = icmp slt i32 %57, %68
  br i1 %69, label %56, label %70, !llvm.loop !97

70:                                               ; preds = %65, %50
  %71 = phi i8 [ %43, %50 ], [ %66, %65 ]
  %72 = load i32, ptr %46, align 8, !tbaa !48
  %73 = trunc i32 %72 to i16
  %74 = load ptr, ptr %51, align 8, !tbaa !34
  %75 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 53
  store i16 %73, ptr %75, align 4, !tbaa !49
  br label %76

76:                                               ; preds = %70, %41
  %77 = phi i8 [ %71, %70 ], [ %43, %41 ]
  %78 = load ptr, ptr %42, align 8, !tbaa !82
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %41, !llvm.loop !98

80:                                               ; preds = %76, %37
  %81 = phi i8 [ 0, %37 ], [ %77, %76 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %111

82:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %83 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %84 = load ptr, ptr %3, align 8, !tbaa !82
  %85 = icmp eq ptr %84, null
  br i1 %85, label %109, label %86

86:                                               ; preds = %82, %105
  %87 = phi ptr [ %107, %105 ], [ %84, %82 ]
  %88 = phi i8 [ %106, %105 ], [ 0, %82 ]
  %89 = getelementptr inbounds %struct.CollectionPointerLink, ptr %87, i64 0, i32 2, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !83
  %91 = getelementptr inbounds %struct.Base, ptr %90, i64 0, i32 4
  %92 = load i32, ptr %91, align 8, !tbaa !48
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.Base, ptr %90, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = getelementptr inbounds %struct.ID, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !99
  %100 = icmp eq ptr %99, %1
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = or disjoint i32 %92, 1
  store i32 %102, ptr %91, align 8, !tbaa !48
  %103 = trunc i32 %102 to i16
  %104 = getelementptr inbounds %struct.Object, ptr %97, i64 0, i32 53
  store i16 %103, ptr %104, align 4, !tbaa !49
  br label %105

105:                                              ; preds = %101, %95, %86
  %106 = phi i8 [ 1, %101 ], [ %88, %95 ], [ %88, %86 ]
  %107 = load ptr, ptr %87, align 8, !tbaa !82
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %86, !llvm.loop !100

109:                                              ; preds = %105, %82
  %110 = phi i8 [ 0, %82 ], [ %106, %105 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %111

111:                                              ; preds = %2, %80, %109, %35
  %112 = phi i8 [ %36, %35 ], [ %81, %80 ], [ %110, %109 ], [ 0, %2 ]
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = call ptr @CTX_data_scene(ptr noundef %0) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %115) #6
  br label %116

116:                                              ; preds = %114, %111
  ret void
}

; Function Attrs: nounwind uwtable
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
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !78
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @prop_select_linked_types, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #6
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !79
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_select_linked_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.ListBase, align 8
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  %13 = tail call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.6) #6
  %14 = load ptr, ptr %11, align 8, !tbaa !80
  %15 = tail call i32 @RNA_boolean_get(ptr noundef %14, ptr noundef nonnull @.str.3) #6
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6
  %19 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %9) #6
  %20 = load ptr, ptr %9, align 8, !tbaa !82
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %18, %35
  %23 = phi ptr [ %36, %35 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.CollectionPointerLink, ptr %23, i64 0, i32 2, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !48
  %30 = and i32 %29, -2
  store i32 %30, ptr %28, align 8, !tbaa !48
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 53
  store i16 %31, ptr %34, align 4, !tbaa !49
  br label %35

35:                                               ; preds = %22, %27
  %36 = load ptr, ptr %23, align 8, !tbaa !82
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %22, !llvm.loop !101

38:                                               ; preds = %35, %18
  call void @BLI_freelistN(ptr noundef nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6
  br label %39

39:                                               ; preds = %38, %2
  %40 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Base, ptr %41, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  br label %46

46:                                               ; preds = %39, %43
  %47 = phi ptr [ %45, %43 ], [ null, %39 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !102
  call void @BKE_report(ptr noundef %51, i32 noundef 32, ptr noundef nonnull @.str.44) #6
  br label %340

52:                                               ; preds = %46
  switch i32 %13, label %86 [
    i32 1, label %340
    i32 2, label %53
  ]

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !94
  %56 = icmp eq ptr %55, null
  br i1 %56, label %340, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %58 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %8) #6
  %59 = load ptr, ptr %8, align 8, !tbaa !82
  %60 = icmp eq ptr %59, null
  br i1 %60, label %84, label %61

61:                                               ; preds = %57, %80
  %62 = phi ptr [ %82, %80 ], [ %59, %57 ]
  %63 = phi i8 [ %81, %80 ], [ 0, %57 ]
  %64 = getelementptr inbounds %struct.CollectionPointerLink, ptr %62, i64 0, i32 2, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !83
  %66 = getelementptr inbounds %struct.Base, ptr %65, i64 0, i32 4
  %67 = load i32, ptr %66, align 8, !tbaa !48
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.Base, ptr %65, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.Object, ptr %72, i64 0, i32 19
  %74 = load ptr, ptr %73, align 8, !tbaa !94
  %75 = icmp eq ptr %74, %55
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = or disjoint i32 %67, 1
  store i32 %77, ptr %66, align 8, !tbaa !48
  %78 = trunc i32 %77 to i16
  %79 = getelementptr inbounds %struct.Object, ptr %72, i64 0, i32 53
  store i16 %78, ptr %79, align 4, !tbaa !49
  br label %80

80:                                               ; preds = %76, %70, %61
  %81 = phi i8 [ 1, %76 ], [ %63, %70 ], [ %63, %61 ]
  %82 = load ptr, ptr %62, align 8, !tbaa !82
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %61, !llvm.loop !95

84:                                               ; preds = %80, %57
  %85 = phi i8 [ 0, %57 ], [ %81, %80 ]
  call void @BLI_freelistN(ptr noundef nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  br label %336

86:                                               ; preds = %52
  %87 = icmp eq i32 %13, 4
  %88 = add i32 %13, -3
  %89 = icmp ult i32 %88, 2
  br i1 %89, label %90, label %174

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 32
  %92 = load i32, ptr %91, align 4, !tbaa !103
  %93 = trunc i32 %92 to i16
  %94 = call ptr @give_current_material(ptr noundef nonnull %47, i16 noundef signext %93) #6
  %95 = icmp eq ptr %94, null
  br i1 %95, label %171, label %96

96:                                               ; preds = %90
  br i1 %87, label %97, label %110

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.Material, ptr %94, i64 0, i32 75
  %99 = load i8, ptr %98, align 1, !tbaa !104
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds %struct.Material, ptr %94, i64 0, i32 102, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !82
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.MTex, ptr %102, i64 0, i32 5
  %106 = load ptr, ptr %105, align 8, !tbaa !108
  br label %107

107:                                              ; preds = %104, %97
  %108 = phi ptr [ %106, %104 ], [ null, %97 ]
  %109 = icmp eq ptr %108, null
  br i1 %109, label %171, label %110

110:                                              ; preds = %107, %96
  %111 = phi ptr [ %108, %107 ], [ null, %96 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  %112 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %7) #6
  %113 = load ptr, ptr %7, align 8, !tbaa !82
  %114 = icmp eq ptr %113, null
  br i1 %114, label %169, label %115

115:                                              ; preds = %110, %165
  %116 = phi ptr [ %167, %165 ], [ %113, %110 ]
  %117 = phi i8 [ %166, %165 ], [ 0, %110 ]
  %118 = getelementptr inbounds %struct.CollectionPointerLink, ptr %116, i64 0, i32 2, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !83
  %120 = getelementptr inbounds %struct.Base, ptr %119, i64 0, i32 4
  %121 = load i32, ptr %120, align 8, !tbaa !48
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %165

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.Base, ptr %119, i64 0, i32 7
  %126 = load ptr, ptr %125, align 8, !tbaa !34
  %127 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 31
  %128 = load i32, ptr %127, align 8, !tbaa !96
  %129 = icmp slt i32 %128, 1
  br i1 %129, label %159, label %130

130:                                              ; preds = %124, %154
  %131 = phi i32 [ %156, %154 ], [ 1, %124 ]
  %132 = phi i8 [ %155, %154 ], [ %117, %124 ]
  %133 = trunc i32 %131 to i16
  %134 = call ptr @give_current_material(ptr noundef %126, i16 noundef signext %133) #6
  br i1 %87, label %137, label %135

135:                                              ; preds = %130
  %136 = icmp eq ptr %134, %94
  br i1 %136, label %151, label %154

137:                                              ; preds = %130
  %138 = icmp eq ptr %134, null
  br i1 %138, label %154, label %139

139:                                              ; preds = %137, %148
  %140 = phi i64 [ %149, %148 ], [ 0, %137 ]
  %141 = getelementptr inbounds %struct.Material, ptr %134, i64 0, i32 102, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !82
  %143 = icmp eq ptr %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.MTex, ptr %142, i64 0, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !108
  %147 = icmp eq ptr %146, %111
  br i1 %147, label %151, label %148

148:                                              ; preds = %144, %139
  %149 = add nuw nsw i64 %140, 1
  %150 = icmp eq i64 %149, 18
  br i1 %150, label %154, label %139, !llvm.loop !110

151:                                              ; preds = %144, %135
  %152 = load i32, ptr %120, align 8, !tbaa !48
  %153 = or i32 %152, 1
  store i32 %153, ptr %120, align 8, !tbaa !48
  br label %154

154:                                              ; preds = %148, %151, %137, %135
  %155 = phi i8 [ %132, %137 ], [ %132, %135 ], [ 1, %151 ], [ %132, %148 ]
  %156 = add nuw nsw i32 %131, 1
  %157 = load i32, ptr %127, align 8, !tbaa !96
  %158 = icmp slt i32 %131, %157
  br i1 %158, label %130, label %159, !llvm.loop !97

159:                                              ; preds = %154, %124
  %160 = phi i8 [ %117, %124 ], [ %155, %154 ]
  %161 = load i32, ptr %120, align 8, !tbaa !48
  %162 = trunc i32 %161 to i16
  %163 = load ptr, ptr %125, align 8, !tbaa !34
  %164 = getelementptr inbounds %struct.Object, ptr %163, i64 0, i32 53
  store i16 %162, ptr %164, align 4, !tbaa !49
  br label %165

165:                                              ; preds = %159, %115
  %166 = phi i8 [ %160, %159 ], [ %117, %115 ]
  %167 = load ptr, ptr %116, align 8, !tbaa !82
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %115, !llvm.loop !98

169:                                              ; preds = %165, %110
  %170 = phi i8 [ 0, %110 ], [ %166, %165 ]
  call void @BLI_freelistN(ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  br label %171

171:                                              ; preds = %107, %90, %169
  %172 = phi i8 [ %170, %169 ], [ 0, %90 ], [ 0, %107 ]
  %173 = phi i1 [ true, %169 ], [ false, %90 ], [ false, %107 ]
  br i1 %173, label %336, label %340

174:                                              ; preds = %86
  switch i32 %13, label %340 [
    i32 5, label %175
    i32 6, label %220
    i32 7, label %266
    i32 8, label %297
  ]

175:                                              ; preds = %174
  %176 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 112
  %177 = load ptr, ptr %176, align 8, !tbaa !111
  %178 = icmp eq ptr %177, null
  br i1 %178, label %340, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 55
  %181 = load i16, ptr %180, align 8, !tbaa !112
  %182 = and i16 %181, 256
  %183 = icmp eq i16 %182, 0
  %184 = select i1 %183, ptr null, ptr %177
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %185 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %6) #6
  %186 = load ptr, ptr %6, align 8, !tbaa !82
  %187 = icmp eq ptr %186, null
  br i1 %187, label %218, label %188

188:                                              ; preds = %179, %214
  %189 = phi ptr [ %216, %214 ], [ %186, %179 ]
  %190 = phi i8 [ %215, %214 ], [ 0, %179 ]
  %191 = getelementptr inbounds %struct.CollectionPointerLink, ptr %189, i64 0, i32 2, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !83
  %193 = getelementptr inbounds %struct.Base, ptr %192, i64 0, i32 4
  %194 = load i32, ptr %193, align 8, !tbaa !48
  %195 = and i32 %194, 1
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %214

197:                                              ; preds = %188
  %198 = getelementptr inbounds %struct.Base, ptr %192, i64 0, i32 7
  %199 = load ptr, ptr %198, align 8, !tbaa !34
  %200 = getelementptr inbounds %struct.Object, ptr %199, i64 0, i32 55
  %201 = load i16, ptr %200, align 8, !tbaa !112
  %202 = and i16 %201, 256
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.Object, ptr %199, i64 0, i32 112
  %206 = load ptr, ptr %205, align 8, !tbaa !111
  br label %207

207:                                              ; preds = %204, %197
  %208 = phi ptr [ %206, %204 ], [ null, %197 ]
  %209 = icmp eq ptr %184, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = or disjoint i32 %194, 1
  store i32 %211, ptr %193, align 8, !tbaa !48
  %212 = trunc i32 %211 to i16
  %213 = getelementptr inbounds %struct.Object, ptr %199, i64 0, i32 53
  store i16 %212, ptr %213, align 4, !tbaa !49
  br label %214

214:                                              ; preds = %210, %207, %188
  %215 = phi i8 [ %190, %188 ], [ 1, %210 ], [ %190, %207 ]
  %216 = load ptr, ptr %189, align 8, !tbaa !82
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %188, !llvm.loop !113

218:                                              ; preds = %214, %179
  %219 = phi i8 [ 0, %179 ], [ %215, %214 ]
  call void @BLI_freelistN(ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br label %336

220:                                              ; preds = %174
  %221 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 109
  %222 = load ptr, ptr %221, align 8, !tbaa !114
  %223 = icmp eq ptr %222, null
  br i1 %223, label %340, label %224

224:                                              ; preds = %220
  %225 = call ptr @psys_get_current(ptr noundef nonnull %47) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %226 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %5) #6
  %227 = load ptr, ptr %5, align 8, !tbaa !82
  %228 = icmp eq ptr %227, null
  br i1 %228, label %264, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.ParticleSystem, ptr %225, i64 0, i32 2
  br label %231

231:                                              ; preds = %260, %229
  %232 = phi ptr [ %227, %229 ], [ %262, %260 ]
  %233 = phi i8 [ 0, %229 ], [ %261, %260 ]
  %234 = getelementptr inbounds %struct.CollectionPointerLink, ptr %232, i64 0, i32 2, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !83
  %236 = getelementptr inbounds %struct.Base, ptr %235, i64 0, i32 4
  %237 = load i32, ptr %236, align 8, !tbaa !48
  %238 = and i32 %237, 1
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %260

240:                                              ; preds = %231
  %241 = getelementptr inbounds %struct.Base, ptr %235, i64 0, i32 7
  %242 = load ptr, ptr %241, align 8, !tbaa !34
  %243 = getelementptr inbounds %struct.Object, ptr %242, i64 0, i32 109
  br label %244

244:                                              ; preds = %248, %240
  %245 = phi ptr [ %243, %240 ], [ %246, %248 ]
  %246 = load ptr, ptr %245, align 8, !tbaa !82
  %247 = icmp eq ptr %246, null
  br i1 %247, label %255, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.ParticleSystem, ptr %246, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !115
  %251 = load ptr, ptr %230, align 8, !tbaa !115
  %252 = icmp eq ptr %250, %251
  br i1 %252, label %253, label %244, !llvm.loop !117

253:                                              ; preds = %248
  %254 = or disjoint i32 %237, 1
  store i32 %254, ptr %236, align 8, !tbaa !48
  br label %255

255:                                              ; preds = %244, %253
  %256 = phi i8 [ 1, %253 ], [ %233, %244 ]
  %257 = load i32, ptr %236, align 8, !tbaa !48
  %258 = trunc i32 %257 to i16
  %259 = getelementptr inbounds %struct.Object, ptr %242, i64 0, i32 53
  store i16 %258, ptr %259, align 4, !tbaa !49
  br label %260

260:                                              ; preds = %255, %231
  %261 = phi i8 [ %256, %255 ], [ %233, %231 ]
  %262 = load ptr, ptr %232, align 8, !tbaa !82
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %231, !llvm.loop !118

264:                                              ; preds = %260, %224
  %265 = phi i8 [ 0, %224 ], [ %261, %260 ]
  call void @BLI_freelistN(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br label %336

266:                                              ; preds = %174
  %267 = getelementptr inbounds %struct.ID, ptr %47, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %269 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %4) #6
  %270 = load ptr, ptr %4, align 8, !tbaa !82
  %271 = icmp eq ptr %270, null
  br i1 %271, label %295, label %272

272:                                              ; preds = %266, %291
  %273 = phi ptr [ %293, %291 ], [ %270, %266 ]
  %274 = phi i8 [ %292, %291 ], [ 0, %266 ]
  %275 = getelementptr inbounds %struct.CollectionPointerLink, ptr %273, i64 0, i32 2, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !83
  %277 = getelementptr inbounds %struct.Base, ptr %276, i64 0, i32 4
  %278 = load i32, ptr %277, align 8, !tbaa !48
  %279 = and i32 %278, 1
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %272
  %282 = getelementptr inbounds %struct.Base, ptr %276, i64 0, i32 7
  %283 = load ptr, ptr %282, align 8, !tbaa !34
  %284 = getelementptr inbounds %struct.ID, ptr %283, i64 0, i32 3
  %285 = load ptr, ptr %284, align 8, !tbaa !99
  %286 = icmp eq ptr %285, %268
  br i1 %286, label %287, label %291

287:                                              ; preds = %281
  %288 = or disjoint i32 %278, 1
  store i32 %288, ptr %277, align 8, !tbaa !48
  %289 = trunc i32 %288 to i16
  %290 = getelementptr inbounds %struct.Object, ptr %283, i64 0, i32 53
  store i16 %289, ptr %290, align 4, !tbaa !49
  br label %291

291:                                              ; preds = %287, %281, %272
  %292 = phi i8 [ 1, %287 ], [ %274, %281 ], [ %274, %272 ]
  %293 = load ptr, ptr %273, align 8, !tbaa !82
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %272, !llvm.loop !100

295:                                              ; preds = %291, %266
  %296 = phi i8 [ 0, %266 ], [ %292, %291 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %336

297:                                              ; preds = %174
  %298 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 19
  %299 = load ptr, ptr %298, align 8, !tbaa !94
  %300 = icmp eq ptr %299, null
  br i1 %300, label %340, label %301

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.ID, ptr %299, i64 0, i32 3
  %303 = load ptr, ptr %302, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %304 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %305 = load ptr, ptr %3, align 8, !tbaa !82
  %306 = icmp eq ptr %305, null
  br i1 %306, label %334, label %307

307:                                              ; preds = %301, %330
  %308 = phi ptr [ %332, %330 ], [ %305, %301 ]
  %309 = phi i8 [ %331, %330 ], [ 0, %301 ]
  %310 = getelementptr inbounds %struct.CollectionPointerLink, ptr %308, i64 0, i32 2, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !83
  %312 = getelementptr inbounds %struct.Base, ptr %311, i64 0, i32 4
  %313 = load i32, ptr %312, align 8, !tbaa !48
  %314 = and i32 %313, 1
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %330

316:                                              ; preds = %307
  %317 = getelementptr inbounds %struct.Base, ptr %311, i64 0, i32 7
  %318 = load ptr, ptr %317, align 8, !tbaa !34
  %319 = getelementptr inbounds %struct.Object, ptr %318, i64 0, i32 19
  %320 = load ptr, ptr %319, align 8, !tbaa !94
  %321 = icmp eq ptr %320, null
  br i1 %321, label %330, label %322

322:                                              ; preds = %316
  %323 = getelementptr inbounds %struct.ID, ptr %320, i64 0, i32 3
  %324 = load ptr, ptr %323, align 8, !tbaa !119
  %325 = icmp eq ptr %324, %303
  br i1 %325, label %326, label %330

326:                                              ; preds = %322
  %327 = or disjoint i32 %313, 1
  store i32 %327, ptr %312, align 8, !tbaa !48
  %328 = trunc i32 %327 to i16
  %329 = getelementptr inbounds %struct.Object, ptr %318, i64 0, i32 53
  store i16 %328, ptr %329, align 4, !tbaa !49
  br label %330

330:                                              ; preds = %326, %322, %316, %307
  %331 = phi i8 [ 1, %326 ], [ %309, %322 ], [ %309, %316 ], [ %309, %307 ]
  %332 = load ptr, ptr %308, align 8, !tbaa !82
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %307, !llvm.loop !120

334:                                              ; preds = %330, %301
  %335 = phi i8 [ 0, %301 ], [ %331, %330 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %336

336:                                              ; preds = %84, %218, %295, %334, %264, %171
  %337 = phi i8 [ %85, %84 ], [ %172, %171 ], [ %219, %218 ], [ %265, %264 ], [ %296, %295 ], [ %335, %334 ]
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %336
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %10) #6
  br label %340

340:                                              ; preds = %336, %174, %297, %220, %175, %53, %52, %171, %339, %49
  %341 = phi i32 [ 2, %49 ], [ 4, %339 ], [ 2, %171 ], [ 2, %52 ], [ 2, %53 ], [ 2, %175 ], [ 2, %220 ], [ 2, %297 ], [ 2, %174 ], [ 2, %336 ]
  ret i32 %341
}

; Function Attrs: nounwind uwtable
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
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !78
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef nonnull @prop_select_grouped_types, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #6
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !79
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_select_grouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca [24 x ptr], align 16
  %10 = alloca %struct.ListBase, align 8
  %11 = alloca %struct.ListBase, align 8
  %12 = alloca %struct.ListBase, align 8
  %13 = alloca %struct.ListBase, align 8
  %14 = alloca %struct.ListBase, align 8
  %15 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  %18 = tail call i32 @RNA_enum_get(ptr noundef %17, ptr noundef nonnull @.str.6) #6
  %19 = load ptr, ptr %16, align 8, !tbaa !80
  %20 = tail call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.3) #6
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #6
  %24 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %14) #6
  %25 = load ptr, ptr %14, align 8, !tbaa !82
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %23, %40
  %28 = phi ptr [ %41, %40 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.CollectionPointerLink, ptr %28, i64 0, i32 2, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !83
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !48
  %35 = and i32 %34, -2
  store i32 %35, ptr %33, align 8, !tbaa !48
  %36 = trunc i32 %35 to i16
  %37 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 53
  store i16 %36, ptr %39, align 4, !tbaa !49
  br label %40

40:                                               ; preds = %27, %32
  %41 = load ptr, ptr %28, align 8, !tbaa !82
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %27, !llvm.loop !121

43:                                               ; preds = %40, %23
  %44 = phi i8 [ 0, %23 ], [ 1, %40 ]
  call void @BLI_freelistN(ptr noundef nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #6
  br label %45

45:                                               ; preds = %43, %2
  %46 = phi i8 [ %44, %43 ], [ 0, %2 ]
  %47 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !50
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.Base, ptr %48, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  br label %53

53:                                               ; preds = %45, %50
  %54 = phi ptr [ %52, %50 ], [ null, %45 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !102
  call void @BKE_report(ptr noundef %58, i32 noundef 32, ptr noundef nonnull @.str.44) #6
  br label %665

59:                                               ; preds = %53
  switch i32 %18, label %661 [
    i32 0, label %60
    i32 1, label %62
    i32 2, label %100
    i32 3, label %142
    i32 4, label %183
    i32 5, label %224
    i32 6, label %266
    i32 7, label %344
    i32 8, label %393
    i32 9, label %434
    i32 10, label %493
    i32 11, label %539
    i32 12, label %605
  ]

60:                                               ; preds = %59
  %61 = call fastcc zeroext i8 @select_grouped_children(ptr noundef %0, ptr noundef nonnull %54, i8 noundef zeroext 1), !range !122
  br label %661

62:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %63 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %64 = load ptr, ptr %3, align 8, !tbaa !82
  %65 = icmp eq ptr %64, null
  br i1 %65, label %98, label %66

66:                                               ; preds = %62, %94
  %67 = phi ptr [ %96, %94 ], [ %64, %62 ]
  %68 = phi i8 [ %95, %94 ], [ 0, %62 ]
  %69 = getelementptr inbounds %struct.CollectionPointerLink, ptr %67, i64 0, i32 2, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !83
  %71 = getelementptr inbounds %struct.Base, ptr %70, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.Object, ptr %72, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !123
  %75 = icmp eq ptr %74, %54
  br i1 %75, label %76, label %94

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.Base, ptr %70, i64 0, i32 4
  %78 = load i32, ptr %77, align 8, !tbaa !48
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = icmp eq ptr %70, null
  br i1 %82, label %94, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.Object, ptr %72, i64 0, i32 102
  %85 = load i8, ptr %84, align 8, !tbaa !41
  %86 = and i8 %85, 2
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = or disjoint i32 %78, 1
  store i32 %89, ptr %77, align 8, !tbaa !48
  br label %90

90:                                               ; preds = %88, %83
  %91 = load i32, ptr %77, align 8, !tbaa !48
  %92 = trunc i32 %91 to i16
  %93 = getelementptr inbounds %struct.Object, ptr %72, i64 0, i32 53
  store i16 %92, ptr %93, align 4, !tbaa !49
  br label %94

94:                                               ; preds = %76, %81, %90, %66
  %95 = phi i8 [ %68, %66 ], [ %68, %76 ], [ 1, %81 ], [ 1, %90 ]
  %96 = load ptr, ptr %67, align 8, !tbaa !82
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %66, !llvm.loop !124

98:                                               ; preds = %94, %62
  %99 = phi i8 [ 0, %62 ], [ %95, %94 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %661

100:                                              ; preds = %59
  %101 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %102 = call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %103 = call ptr @CTX_data_active_base(ptr noundef %0) #6
  %104 = icmp eq ptr %103, null
  br i1 %104, label %661, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.Base, ptr %103, i64 0, i32 7
  %107 = load ptr, ptr %106, align 8, !tbaa !34
  %108 = getelementptr inbounds %struct.Object, ptr %107, i64 0, i32 9
  %109 = load ptr, ptr %108, align 8, !tbaa !123
  %110 = icmp eq ptr %109, null
  br i1 %110, label %661, label %111

111:                                              ; preds = %105
  %112 = call ptr @BKE_scene_base_find(ptr noundef %101, ptr noundef nonnull %109) #6
  %113 = icmp eq ptr %112, null
  br i1 %113, label %661, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.Base, ptr %112, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !125
  %117 = getelementptr inbounds %struct.View3D, ptr %102, i64 0, i32 22
  %118 = load i32, ptr %117, align 8, !tbaa !126
  %119 = and i32 %118, %116
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %661, label %121

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.Base, ptr %112, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !34
  %124 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 102
  %125 = load i8, ptr %124, align 8, !tbaa !41
  %126 = and i8 %125, 3
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %661

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.Base, ptr %103, i64 0, i32 4
  %130 = load i32, ptr %129, align 8, !tbaa !48
  %131 = and i32 %130, -2
  store i32 %131, ptr %129, align 8, !tbaa !48
  %132 = trunc i32 %131 to i16
  %133 = load ptr, ptr %106, align 8, !tbaa !34
  %134 = getelementptr inbounds %struct.Object, ptr %133, i64 0, i32 53
  store i16 %132, ptr %134, align 4, !tbaa !49
  %135 = getelementptr inbounds %struct.Base, ptr %112, i64 0, i32 4
  %136 = load i32, ptr %135, align 8, !tbaa !48
  %137 = or i32 %136, 1
  store i32 %137, ptr %135, align 8, !tbaa !48
  %138 = trunc i32 %137 to i16
  %139 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 53
  store i16 %138, ptr %139, align 4, !tbaa !49
  %140 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %141 = getelementptr inbounds %struct.Scene, ptr %140, i64 0, i32 6
  store ptr %112, ptr %141, align 8, !tbaa !50
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %140) #6
  br label %661

142:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #6
  %143 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %13) #6
  %144 = load ptr, ptr %13, align 8, !tbaa !82
  %145 = icmp eq ptr %144, null
  br i1 %145, label %181, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 9
  %148 = load ptr, ptr %147, align 8, !tbaa !123
  br label %149

149:                                              ; preds = %146, %177
  %150 = phi ptr [ %144, %146 ], [ %179, %177 ]
  %151 = phi i8 [ 0, %146 ], [ %178, %177 ]
  %152 = getelementptr inbounds %struct.CollectionPointerLink, ptr %150, i64 0, i32 2, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !83
  %154 = getelementptr inbounds %struct.Base, ptr %153, i64 0, i32 7
  %155 = load ptr, ptr %154, align 8, !tbaa !34
  %156 = getelementptr inbounds %struct.Object, ptr %155, i64 0, i32 9
  %157 = load ptr, ptr %156, align 8, !tbaa !123
  %158 = icmp eq ptr %157, %148
  br i1 %158, label %159, label %177

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.Base, ptr %153, i64 0, i32 4
  %161 = load i32, ptr %160, align 8, !tbaa !48
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %159
  %165 = icmp eq ptr %153, null
  br i1 %165, label %177, label %166

166:                                              ; preds = %164
  %167 = getelementptr inbounds %struct.Object, ptr %155, i64 0, i32 102
  %168 = load i8, ptr %167, align 8, !tbaa !41
  %169 = and i8 %168, 2
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = or disjoint i32 %161, 1
  store i32 %172, ptr %160, align 8, !tbaa !48
  br label %173

173:                                              ; preds = %171, %166
  %174 = load i32, ptr %160, align 8, !tbaa !48
  %175 = trunc i32 %174 to i16
  %176 = getelementptr inbounds %struct.Object, ptr %155, i64 0, i32 53
  store i16 %175, ptr %176, align 4, !tbaa !49
  br label %177

177:                                              ; preds = %173, %164, %159, %149
  %178 = phi i8 [ %151, %159 ], [ %151, %149 ], [ 1, %164 ], [ 1, %173 ]
  %179 = load ptr, ptr %150, align 8, !tbaa !82
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %149, !llvm.loop !128

181:                                              ; preds = %177, %142
  %182 = phi i8 [ 0, %142 ], [ %178, %177 ]
  call void @BLI_freelistN(ptr noundef nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #6
  br label %661

183:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #6
  %184 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %12) #6
  %185 = load ptr, ptr %12, align 8, !tbaa !82
  %186 = icmp eq ptr %185, null
  br i1 %186, label %222, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 3
  %189 = load i16, ptr %188, align 8, !tbaa !90
  br label %190

190:                                              ; preds = %187, %218
  %191 = phi ptr [ %185, %187 ], [ %220, %218 ]
  %192 = phi i8 [ 0, %187 ], [ %219, %218 ]
  %193 = getelementptr inbounds %struct.CollectionPointerLink, ptr %191, i64 0, i32 2, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !83
  %195 = getelementptr inbounds %struct.Base, ptr %194, i64 0, i32 7
  %196 = load ptr, ptr %195, align 8, !tbaa !34
  %197 = getelementptr inbounds %struct.Object, ptr %196, i64 0, i32 3
  %198 = load i16, ptr %197, align 8, !tbaa !90
  %199 = icmp eq i16 %198, %189
  br i1 %199, label %200, label %218

200:                                              ; preds = %190
  %201 = getelementptr inbounds %struct.Base, ptr %194, i64 0, i32 4
  %202 = load i32, ptr %201, align 8, !tbaa !48
  %203 = and i32 %202, 1
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %200
  %206 = icmp eq ptr %194, null
  br i1 %206, label %218, label %207

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.Object, ptr %196, i64 0, i32 102
  %209 = load i8, ptr %208, align 8, !tbaa !41
  %210 = and i8 %209, 2
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = or disjoint i32 %202, 1
  store i32 %213, ptr %201, align 8, !tbaa !48
  br label %214

214:                                              ; preds = %212, %207
  %215 = load i32, ptr %201, align 8, !tbaa !48
  %216 = trunc i32 %215 to i16
  %217 = getelementptr inbounds %struct.Object, ptr %196, i64 0, i32 53
  store i16 %216, ptr %217, align 4, !tbaa !49
  br label %218

218:                                              ; preds = %214, %205, %200, %190
  %219 = phi i8 [ %192, %200 ], [ %192, %190 ], [ 1, %205 ], [ 1, %214 ]
  %220 = load ptr, ptr %191, align 8, !tbaa !82
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %190, !llvm.loop !129

222:                                              ; preds = %218, %183
  %223 = phi i8 [ 0, %183 ], [ %219, %218 ]
  call void @BLI_freelistN(ptr noundef nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #6
  br label %661

224:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #6
  %225 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %11) #6
  %226 = load ptr, ptr %11, align 8, !tbaa !82
  %227 = icmp eq ptr %226, null
  br i1 %227, label %264, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 52
  %230 = load i32, ptr %229, align 8, !tbaa !130
  br label %231

231:                                              ; preds = %228, %260
  %232 = phi ptr [ %226, %228 ], [ %262, %260 ]
  %233 = phi i8 [ 0, %228 ], [ %261, %260 ]
  %234 = getelementptr inbounds %struct.CollectionPointerLink, ptr %232, i64 0, i32 2, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !83
  %236 = getelementptr inbounds %struct.Base, ptr %235, i64 0, i32 2
  %237 = load i32, ptr %236, align 8, !tbaa !125
  %238 = and i32 %230, %237
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %260, label %240

240:                                              ; preds = %231
  %241 = getelementptr inbounds %struct.Base, ptr %235, i64 0, i32 4
  %242 = load i32, ptr %241, align 8, !tbaa !48
  %243 = and i32 %242, 1
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %260

245:                                              ; preds = %240
  %246 = icmp eq ptr %235, null
  br i1 %246, label %260, label %247

247:                                              ; preds = %245
  %248 = getelementptr inbounds %struct.Base, ptr %235, i64 0, i32 7
  %249 = load ptr, ptr %248, align 8, !tbaa !34
  %250 = getelementptr inbounds %struct.Object, ptr %249, i64 0, i32 102
  %251 = load i8, ptr %250, align 8, !tbaa !41
  %252 = and i8 %251, 2
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %247
  %255 = or disjoint i32 %242, 1
  store i32 %255, ptr %241, align 8, !tbaa !48
  br label %256

256:                                              ; preds = %254, %247
  %257 = load i32, ptr %241, align 8, !tbaa !48
  %258 = trunc i32 %257 to i16
  %259 = getelementptr inbounds %struct.Object, ptr %249, i64 0, i32 53
  store i16 %258, ptr %259, align 4, !tbaa !49
  br label %260

260:                                              ; preds = %256, %245, %240, %231
  %261 = phi i8 [ %233, %240 ], [ %233, %231 ], [ 1, %245 ], [ 1, %256 ]
  %262 = load ptr, ptr %232, align 8, !tbaa !82
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %231, !llvm.loop !131

264:                                              ; preds = %260, %224
  %265 = phi i8 [ 0, %224 ], [ %261, %260 ]
  call void @BLI_freelistN(ptr noundef nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6
  br label %661

266:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %9) #6
  %267 = call ptr @CTX_data_main(ptr noundef %0) #6
  %268 = getelementptr inbounds %struct.Main, ptr %267, i64 0, i32 32
  %269 = load ptr, ptr %268, align 8, !tbaa !82
  %270 = icmp eq ptr %269, null
  br i1 %270, label %286, label %271

271:                                              ; preds = %266, %280
  %272 = phi ptr [ %282, %280 ], [ %269, %266 ]
  %273 = phi i32 [ %281, %280 ], [ 0, %266 ]
  %274 = call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %272, ptr noundef nonnull %54) #6
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %271
  %277 = sext i32 %273 to i64
  %278 = getelementptr inbounds [24 x ptr], ptr %9, i64 0, i64 %277
  store ptr %272, ptr %278, align 8, !tbaa !82
  %279 = add nsw i32 %273, 1
  br label %280

280:                                              ; preds = %276, %271
  %281 = phi i32 [ %279, %276 ], [ %273, %271 ]
  %282 = load ptr, ptr %272, align 8, !tbaa !82
  %283 = icmp ne ptr %282, null
  %284 = icmp slt i32 %281, 24
  %285 = select i1 %283, i1 %284, i1 false
  br i1 %285, label %271, label %286, !llvm.loop !132

286:                                              ; preds = %280, %266
  %287 = phi i32 [ 0, %266 ], [ %281, %280 ]
  switch i32 %287, label %328 [
    i32 0, label %342
    i32 1, label %288
  ]

288:                                              ; preds = %286
  %289 = load ptr, ptr %9, align 16, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6
  %290 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %10) #6
  %291 = load ptr, ptr %10, align 8, !tbaa !82
  %292 = icmp eq ptr %291, null
  br i1 %292, label %326, label %293

293:                                              ; preds = %288, %322
  %294 = phi ptr [ %324, %322 ], [ %291, %288 ]
  %295 = phi i8 [ %323, %322 ], [ 0, %288 ]
  %296 = getelementptr inbounds %struct.CollectionPointerLink, ptr %294, i64 0, i32 2, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !83
  %298 = getelementptr inbounds %struct.Base, ptr %297, i64 0, i32 4
  %299 = load i32, ptr %298, align 8, !tbaa !48
  %300 = and i32 %299, 1
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %322

302:                                              ; preds = %293
  %303 = getelementptr inbounds %struct.Base, ptr %297, i64 0, i32 7
  %304 = load ptr, ptr %303, align 8, !tbaa !34
  %305 = call zeroext i8 @BKE_group_object_exists(ptr noundef %289, ptr noundef %304) #6
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %322, label %307

307:                                              ; preds = %302
  %308 = icmp eq ptr %297, null
  br i1 %308, label %322, label %309

309:                                              ; preds = %307
  %310 = load ptr, ptr %303, align 8, !tbaa !34
  %311 = getelementptr inbounds %struct.Object, ptr %310, i64 0, i32 102
  %312 = load i8, ptr %311, align 8, !tbaa !41
  %313 = and i8 %312, 2
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %309
  %316 = load i32, ptr %298, align 8, !tbaa !48
  %317 = or i32 %316, 1
  store i32 %317, ptr %298, align 8, !tbaa !48
  br label %318

318:                                              ; preds = %315, %309
  %319 = load i32, ptr %298, align 8, !tbaa !48
  %320 = trunc i32 %319 to i16
  %321 = getelementptr inbounds %struct.Object, ptr %310, i64 0, i32 53
  store i16 %320, ptr %321, align 4, !tbaa !49
  br label %322

322:                                              ; preds = %318, %307, %302, %293
  %323 = phi i8 [ %295, %293 ], [ %295, %302 ], [ 1, %307 ], [ 1, %318 ]
  %324 = load ptr, ptr %294, align 8, !tbaa !82
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %293, !llvm.loop !133

326:                                              ; preds = %322, %288
  %327 = phi i8 [ 0, %288 ], [ %323, %322 ]
  call void @BLI_freelistN(ptr noundef nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6
  br label %342

328:                                              ; preds = %286
  %329 = call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef 0) #6
  %330 = call ptr @uiPupMenuLayout(ptr noundef %329) #6
  %331 = icmp sgt i32 %287, 0
  br i1 %331, label %332, label %341

332:                                              ; preds = %328
  %333 = zext nneg i32 %287 to i64
  br label %334

334:                                              ; preds = %332, %334
  %335 = phi i64 [ 0, %332 ], [ %339, %334 ]
  %336 = getelementptr inbounds [24 x ptr], ptr %9, i64 0, i64 %335
  %337 = load ptr, ptr %336, align 8, !tbaa !82
  %338 = getelementptr inbounds %struct.ID, ptr %337, i64 0, i32 4, i64 2
  call void @uiItemStringO(ptr noundef %330, ptr noundef nonnull %338, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull %338) #6
  %339 = add nuw nsw i64 %335, 1
  %340 = icmp eq i64 %339, %333
  br i1 %340, label %341, label %334, !llvm.loop !134

341:                                              ; preds = %334, %328
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %329) #6
  br label %342

342:                                              ; preds = %286, %326, %341
  %343 = phi i8 [ %327, %326 ], [ 0, %341 ], [ 0, %286 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %9) #6
  br label %661

344:                                              ; preds = %59
  %345 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %346 = call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %347 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 26
  %348 = load ptr, ptr %347, align 8, !tbaa !82
  %349 = icmp eq ptr %348, null
  br i1 %349, label %661, label %350

350:                                              ; preds = %344
  %351 = getelementptr inbounds %struct.View3D, ptr %346, i64 0, i32 22
  br label %352

352:                                              ; preds = %350, %389
  %353 = phi ptr [ %348, %350 ], [ %391, %389 ]
  %354 = phi i8 [ 0, %350 ], [ %390, %389 ]
  %355 = getelementptr inbounds %struct.ModifierData, ptr %353, i64 0, i32 2
  %356 = load i32, ptr %355, align 8, !tbaa !135
  %357 = icmp eq i32 %356, 9
  br i1 %357, label %358, label %389

358:                                              ; preds = %352
  %359 = getelementptr inbounds %struct.HookModifierData, ptr %353, i64 0, i32 1
  %360 = load ptr, ptr %359, align 8, !tbaa !137
  %361 = icmp eq ptr %360, null
  br i1 %361, label %389, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.Object, ptr %360, i64 0, i32 53
  %364 = load i16, ptr %363, align 4, !tbaa !49
  %365 = and i16 %364, 1
  %366 = icmp eq i16 %365, 0
  br i1 %366, label %367, label %389

367:                                              ; preds = %362
  %368 = call ptr @BKE_scene_base_find(ptr noundef %345, ptr noundef nonnull %360) #6
  %369 = icmp eq ptr %368, null
  br i1 %369, label %389, label %370

370:                                              ; preds = %367
  %371 = getelementptr inbounds %struct.Base, ptr %368, i64 0, i32 2
  %372 = load i32, ptr %371, align 8, !tbaa !125
  %373 = load i32, ptr %351, align 8, !tbaa !126
  %374 = and i32 %373, %372
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %389, label %376

376:                                              ; preds = %370
  %377 = getelementptr inbounds %struct.Base, ptr %368, i64 0, i32 7
  %378 = load ptr, ptr %377, align 8, !tbaa !34
  %379 = getelementptr inbounds %struct.Object, ptr %378, i64 0, i32 102
  %380 = load i8, ptr %379, align 8, !tbaa !41
  %381 = and i8 %380, 3
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %383, label %389

383:                                              ; preds = %376
  %384 = getelementptr inbounds %struct.Base, ptr %368, i64 0, i32 4
  %385 = load i32, ptr %384, align 8, !tbaa !48
  %386 = or i32 %385, 1
  store i32 %386, ptr %384, align 8, !tbaa !48
  %387 = trunc i32 %386 to i16
  %388 = getelementptr inbounds %struct.Object, ptr %378, i64 0, i32 53
  store i16 %387, ptr %388, align 4, !tbaa !49
  br label %389

389:                                              ; preds = %383, %376, %370, %367, %362, %358, %352
  %390 = phi i8 [ %354, %362 ], [ 1, %383 ], [ %354, %376 ], [ %354, %370 ], [ %354, %367 ], [ %354, %358 ], [ %354, %352 ]
  %391 = load ptr, ptr %353, align 8, !tbaa !82
  %392 = icmp eq ptr %391, null
  br i1 %392, label %661, label %352, !llvm.loop !139

393:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %394 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %8) #6
  %395 = load ptr, ptr %8, align 8, !tbaa !82
  %396 = icmp eq ptr %395, null
  br i1 %396, label %432, label %397

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 96
  %399 = load i16, ptr %398, align 4, !tbaa !140
  br label %400

400:                                              ; preds = %397, %428
  %401 = phi ptr [ %395, %397 ], [ %430, %428 ]
  %402 = phi i8 [ 0, %397 ], [ %429, %428 ]
  %403 = getelementptr inbounds %struct.CollectionPointerLink, ptr %401, i64 0, i32 2, i32 2
  %404 = load ptr, ptr %403, align 8, !tbaa !83
  %405 = getelementptr inbounds %struct.Base, ptr %404, i64 0, i32 7
  %406 = load ptr, ptr %405, align 8, !tbaa !34
  %407 = getelementptr inbounds %struct.Object, ptr %406, i64 0, i32 96
  %408 = load i16, ptr %407, align 4, !tbaa !140
  %409 = icmp eq i16 %408, %399
  br i1 %409, label %410, label %428

410:                                              ; preds = %400
  %411 = getelementptr inbounds %struct.Base, ptr %404, i64 0, i32 4
  %412 = load i32, ptr %411, align 8, !tbaa !48
  %413 = and i32 %412, 1
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %428

415:                                              ; preds = %410
  %416 = icmp eq ptr %404, null
  br i1 %416, label %428, label %417

417:                                              ; preds = %415
  %418 = getelementptr inbounds %struct.Object, ptr %406, i64 0, i32 102
  %419 = load i8, ptr %418, align 8, !tbaa !41
  %420 = and i8 %419, 2
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %422, label %424

422:                                              ; preds = %417
  %423 = or disjoint i32 %412, 1
  store i32 %423, ptr %411, align 8, !tbaa !48
  br label %424

424:                                              ; preds = %422, %417
  %425 = load i32, ptr %411, align 8, !tbaa !48
  %426 = trunc i32 %425 to i16
  %427 = getelementptr inbounds %struct.Object, ptr %406, i64 0, i32 53
  store i16 %426, ptr %427, align 4, !tbaa !49
  br label %428

428:                                              ; preds = %424, %415, %410, %400
  %429 = phi i8 [ %402, %410 ], [ %402, %400 ], [ 1, %415 ], [ 1, %424 ]
  %430 = load ptr, ptr %401, align 8, !tbaa !82
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %400, !llvm.loop !141

432:                                              ; preds = %428, %393
  %433 = phi i8 [ 0, %393 ], [ %429, %428 ]
  call void @BLI_freelistN(ptr noundef nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  br label %661

434:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  %435 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %7) #6
  %436 = load ptr, ptr %7, align 8, !tbaa !82
  %437 = icmp eq ptr %436, null
  br i1 %437, label %491, label %438

438:                                              ; preds = %434
  %439 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 98
  %440 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 98, i64 1
  %441 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 98, i64 2
  br label %442

442:                                              ; preds = %438, %487
  %443 = phi ptr [ %436, %438 ], [ %489, %487 ]
  %444 = phi i8 [ 0, %438 ], [ %488, %487 ]
  %445 = getelementptr inbounds %struct.CollectionPointerLink, ptr %443, i64 0, i32 2, i32 2
  %446 = load ptr, ptr %445, align 8, !tbaa !83
  %447 = getelementptr inbounds %struct.Base, ptr %446, i64 0, i32 4
  %448 = load i32, ptr %447, align 8, !tbaa !48
  %449 = and i32 %448, 1
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %487

451:                                              ; preds = %442
  %452 = getelementptr inbounds %struct.Base, ptr %446, i64 0, i32 7
  %453 = load ptr, ptr %452, align 8, !tbaa !34
  %454 = getelementptr inbounds %struct.Object, ptr %453, i64 0, i32 98
  %455 = load float, ptr %454, align 4, !tbaa !142
  %456 = load float, ptr %439, align 4, !tbaa !142
  %457 = fsub float %455, %456
  %458 = call float @llvm.fabs.f32(float %457)
  %459 = fcmp ugt float %458, 0x3F747AE140000000
  br i1 %459, label %487, label %460

460:                                              ; preds = %451
  %461 = getelementptr inbounds %struct.Object, ptr %453, i64 0, i32 98, i64 1
  %462 = load float, ptr %461, align 4, !tbaa !142
  %463 = load float, ptr %440, align 4, !tbaa !142
  %464 = fsub float %462, %463
  %465 = call float @llvm.fabs.f32(float %464)
  %466 = fcmp ugt float %465, 0x3F747AE140000000
  br i1 %466, label %487, label %467

467:                                              ; preds = %460
  %468 = getelementptr inbounds %struct.Object, ptr %453, i64 0, i32 98, i64 2
  %469 = load float, ptr %468, align 4, !tbaa !142
  %470 = load float, ptr %441, align 4, !tbaa !142
  %471 = fsub float %469, %470
  %472 = call float @llvm.fabs.f32(float %471)
  %473 = fcmp ugt float %472, 0x3F747AE140000000
  br i1 %473, label %487, label %474

474:                                              ; preds = %467
  %475 = icmp eq ptr %446, null
  br i1 %475, label %487, label %476

476:                                              ; preds = %474
  %477 = getelementptr inbounds %struct.Object, ptr %453, i64 0, i32 102
  %478 = load i8, ptr %477, align 8, !tbaa !41
  %479 = and i8 %478, 2
  %480 = icmp eq i8 %479, 0
  br i1 %480, label %481, label %483

481:                                              ; preds = %476
  %482 = or disjoint i32 %448, 1
  store i32 %482, ptr %447, align 8, !tbaa !48
  br label %483

483:                                              ; preds = %481, %476
  %484 = load i32, ptr %447, align 8, !tbaa !48
  %485 = trunc i32 %484 to i16
  %486 = getelementptr inbounds %struct.Object, ptr %453, i64 0, i32 53
  store i16 %485, ptr %486, align 4, !tbaa !49
  br label %487

487:                                              ; preds = %451, %460, %467, %483, %474, %442
  %488 = phi i8 [ %444, %442 ], [ 1, %474 ], [ 1, %483 ], [ %444, %467 ], [ %444, %460 ], [ %444, %451 ]
  %489 = load ptr, ptr %443, align 8, !tbaa !82
  %490 = icmp eq ptr %489, null
  br i1 %490, label %491, label %442, !llvm.loop !143

491:                                              ; preds = %487, %434
  %492 = phi i8 [ 0, %434 ], [ %488, %487 ]
  call void @BLI_freelistN(ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  br label %661

493:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %494 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %6) #6
  %495 = load ptr, ptr %6, align 8, !tbaa !82
  %496 = icmp eq ptr %495, null
  br i1 %496, label %537, label %497

497:                                              ; preds = %493, %533
  %498 = phi ptr [ %535, %533 ], [ %495, %493 ]
  %499 = phi i8 [ %534, %533 ], [ 0, %493 ]
  %500 = getelementptr inbounds %struct.CollectionPointerLink, ptr %498, i64 0, i32 2, i32 2
  %501 = load ptr, ptr %500, align 8, !tbaa !83
  %502 = getelementptr inbounds %struct.Base, ptr %501, i64 0, i32 4
  %503 = load i32, ptr %502, align 8, !tbaa !48
  %504 = and i32 %503, 1
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %533

506:                                              ; preds = %497
  %507 = getelementptr inbounds %struct.Base, ptr %501, i64 0, i32 7
  %508 = load ptr, ptr %507, align 8, !tbaa !34
  %509 = getelementptr inbounds %struct.Object, ptr %508, i64 0, i32 91
  br label %510

510:                                              ; preds = %514, %506
  %511 = phi ptr [ %509, %506 ], [ %512, %514 ]
  %512 = load ptr, ptr %511, align 8, !tbaa !82
  %513 = icmp eq ptr %512, null
  br i1 %513, label %533, label %514

514:                                              ; preds = %510
  %515 = getelementptr inbounds %struct.bProperty, ptr %512, i64 0, i32 2
  %516 = call ptr @BKE_bproperty_object_get(ptr noundef nonnull %54, ptr noundef nonnull %515) #6
  %517 = icmp eq ptr %516, null
  br i1 %517, label %510, label %518, !llvm.loop !144

518:                                              ; preds = %514
  %519 = icmp eq ptr %501, null
  br i1 %519, label %533, label %520

520:                                              ; preds = %518
  %521 = load ptr, ptr %507, align 8, !tbaa !34
  %522 = getelementptr inbounds %struct.Object, ptr %521, i64 0, i32 102
  %523 = load i8, ptr %522, align 8, !tbaa !41
  %524 = and i8 %523, 2
  %525 = icmp eq i8 %524, 0
  br i1 %525, label %526, label %529

526:                                              ; preds = %520
  %527 = load i32, ptr %502, align 8, !tbaa !48
  %528 = or i32 %527, 1
  store i32 %528, ptr %502, align 8, !tbaa !48
  br label %529

529:                                              ; preds = %526, %520
  %530 = load i32, ptr %502, align 8, !tbaa !48
  %531 = trunc i32 %530 to i16
  %532 = getelementptr inbounds %struct.Object, ptr %521, i64 0, i32 53
  store i16 %531, ptr %532, align 4, !tbaa !49
  br label %533

533:                                              ; preds = %510, %529, %518, %497
  %534 = phi i8 [ %499, %497 ], [ 1, %518 ], [ 1, %529 ], [ %499, %510 ]
  %535 = load ptr, ptr %498, align 8, !tbaa !82
  %536 = icmp eq ptr %535, null
  br i1 %536, label %537, label %497, !llvm.loop !145

537:                                              ; preds = %533, %493
  %538 = phi i8 [ 0, %493 ], [ %534, %533 ]
  call void @BLI_freelistN(ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br label %661

539:                                              ; preds = %59
  %540 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %541 = load ptr, ptr %540, align 8, !tbaa !102
  %542 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %543 = call ptr @ANIM_scene_get_active_keyingset(ptr noundef %542) #6
  %544 = icmp eq ptr %543, null
  br i1 %544, label %545, label %546

545:                                              ; preds = %539
  call void @BKE_report(ptr noundef %541, i32 noundef 32, ptr noundef nonnull @.str.61) #6
  br label %661

546:                                              ; preds = %539
  %547 = call signext i16 @ANIM_validate_keyingset(ptr noundef %0, ptr noundef null, ptr noundef nonnull %543) #6
  %548 = icmp eq i16 %547, 0
  br i1 %548, label %560, label %549

549:                                              ; preds = %546
  %550 = getelementptr inbounds %struct.KeyingSet, ptr %543, i64 0, i32 2
  %551 = load ptr, ptr %550, align 8, !tbaa !146
  %552 = icmp eq ptr %551, null
  br i1 %552, label %553, label %661

553:                                              ; preds = %549
  %554 = getelementptr inbounds %struct.KeyingSet, ptr %543, i64 0, i32 7
  %555 = load i16, ptr %554, align 8, !tbaa !148
  %556 = and i16 %555, 2
  %557 = icmp eq i16 %556, 0
  br i1 %557, label %558, label %559

558:                                              ; preds = %553
  call void @BKE_report(ptr noundef %541, i32 noundef 32, ptr noundef nonnull @.str.62) #6
  br label %661

559:                                              ; preds = %553
  call void @BKE_report(ptr noundef %541, i32 noundef 32, ptr noundef nonnull @.str.63) #6
  br label %661

560:                                              ; preds = %546
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %561 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %5) #6
  %562 = load ptr, ptr %5, align 8, !tbaa !82
  %563 = icmp eq ptr %562, null
  br i1 %563, label %603, label %564

564:                                              ; preds = %560
  %565 = getelementptr inbounds %struct.KeyingSet, ptr %543, i64 0, i32 2
  br label %566

566:                                              ; preds = %564, %599
  %567 = phi ptr [ %562, %564 ], [ %601, %599 ]
  %568 = phi i8 [ 0, %564 ], [ %600, %599 ]
  %569 = getelementptr inbounds %struct.CollectionPointerLink, ptr %567, i64 0, i32 2, i32 2
  %570 = load ptr, ptr %569, align 8, !tbaa !83
  %571 = getelementptr inbounds %struct.Base, ptr %570, i64 0, i32 4
  %572 = load i32, ptr %571, align 8, !tbaa !48
  %573 = and i32 %572, 1
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %599

575:                                              ; preds = %566
  %576 = getelementptr inbounds %struct.Base, ptr %570, i64 0, i32 7
  br label %577

577:                                              ; preds = %581, %575
  %578 = phi ptr [ %565, %575 ], [ %579, %581 ]
  %579 = load ptr, ptr %578, align 8, !tbaa !82
  %580 = icmp eq ptr %579, null
  br i1 %580, label %599, label %581

581:                                              ; preds = %577
  %582 = getelementptr inbounds %struct.KS_Path, ptr %579, i64 0, i32 2
  %583 = load ptr, ptr %582, align 8, !tbaa !149
  %584 = load ptr, ptr %576, align 8, !tbaa !34
  %585 = icmp eq ptr %583, %584
  br i1 %585, label %586, label %577, !llvm.loop !151

586:                                              ; preds = %581
  %587 = icmp eq ptr %570, null
  br i1 %587, label %599, label %588

588:                                              ; preds = %586
  %589 = getelementptr inbounds %struct.Object, ptr %584, i64 0, i32 102
  %590 = load i8, ptr %589, align 8, !tbaa !41
  %591 = and i8 %590, 2
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %593, label %595

593:                                              ; preds = %588
  %594 = or disjoint i32 %572, 1
  store i32 %594, ptr %571, align 8, !tbaa !48
  br label %595

595:                                              ; preds = %593, %588
  %596 = load i32, ptr %571, align 8, !tbaa !48
  %597 = trunc i32 %596 to i16
  %598 = getelementptr inbounds %struct.Object, ptr %584, i64 0, i32 53
  store i16 %597, ptr %598, align 4, !tbaa !49
  br label %599

599:                                              ; preds = %577, %595, %586, %566
  %600 = phi i8 [ %568, %566 ], [ 1, %586 ], [ 1, %595 ], [ %568, %577 ]
  %601 = load ptr, ptr %567, align 8, !tbaa !82
  %602 = icmp eq ptr %601, null
  br i1 %602, label %603, label %566, !llvm.loop !152

603:                                              ; preds = %599, %560
  %604 = phi i8 [ 0, %560 ], [ %600, %599 ]
  call void @BLI_freelistN(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br label %661

605:                                              ; preds = %59
  %606 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 3
  %607 = load i16, ptr %606, align 8, !tbaa !90
  %608 = icmp eq i16 %607, 10
  br i1 %608, label %612, label %609

609:                                              ; preds = %605
  %610 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %611 = load ptr, ptr %610, align 8, !tbaa !102
  call void @BKE_report(ptr noundef %611, i32 noundef 32, ptr noundef nonnull @.str.59) #6
  br label %661

612:                                              ; preds = %605
  %613 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 19
  %614 = load ptr, ptr %613, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %615 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %4) #6
  %616 = load ptr, ptr %4, align 8, !tbaa !82
  %617 = icmp eq ptr %616, null
  br i1 %617, label %659, label %618

618:                                              ; preds = %612
  %619 = getelementptr inbounds %struct.Lamp, ptr %614, i64 0, i32 2
  br label %620

620:                                              ; preds = %618, %655
  %621 = phi ptr [ %616, %618 ], [ %657, %655 ]
  %622 = phi i8 [ 0, %618 ], [ %656, %655 ]
  %623 = getelementptr inbounds %struct.CollectionPointerLink, ptr %621, i64 0, i32 2, i32 2
  %624 = load ptr, ptr %623, align 8, !tbaa !83
  %625 = getelementptr inbounds %struct.Base, ptr %624, i64 0, i32 7
  %626 = load ptr, ptr %625, align 8, !tbaa !34
  %627 = getelementptr inbounds %struct.Object, ptr %626, i64 0, i32 3
  %628 = load i16, ptr %627, align 8, !tbaa !90
  %629 = icmp eq i16 %628, 10
  br i1 %629, label %630, label %655

630:                                              ; preds = %620
  %631 = getelementptr inbounds %struct.Object, ptr %626, i64 0, i32 19
  %632 = load ptr, ptr %631, align 8, !tbaa !94
  %633 = load i16, ptr %619, align 8, !tbaa !153
  %634 = getelementptr inbounds %struct.Lamp, ptr %632, i64 0, i32 2
  %635 = load i16, ptr %634, align 8, !tbaa !153
  %636 = icmp eq i16 %633, %635
  br i1 %636, label %637, label %655

637:                                              ; preds = %630
  %638 = getelementptr inbounds %struct.Base, ptr %624, i64 0, i32 4
  %639 = load i32, ptr %638, align 8, !tbaa !48
  %640 = and i32 %639, 1
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %642, label %655

642:                                              ; preds = %637
  %643 = icmp eq ptr %624, null
  br i1 %643, label %655, label %644

644:                                              ; preds = %642
  %645 = getelementptr inbounds %struct.Object, ptr %626, i64 0, i32 102
  %646 = load i8, ptr %645, align 8, !tbaa !41
  %647 = and i8 %646, 2
  %648 = icmp eq i8 %647, 0
  br i1 %648, label %649, label %651

649:                                              ; preds = %644
  %650 = or disjoint i32 %639, 1
  store i32 %650, ptr %638, align 8, !tbaa !48
  br label %651

651:                                              ; preds = %649, %644
  %652 = load i32, ptr %638, align 8, !tbaa !48
  %653 = trunc i32 %652 to i16
  %654 = getelementptr inbounds %struct.Object, ptr %626, i64 0, i32 53
  store i16 %653, ptr %654, align 4, !tbaa !49
  br label %655

655:                                              ; preds = %651, %642, %637, %630, %620
  %656 = phi i8 [ %622, %620 ], [ %622, %637 ], [ %622, %630 ], [ 1, %642 ], [ 1, %651 ]
  %657 = load ptr, ptr %621, align 8, !tbaa !82
  %658 = icmp eq ptr %657, null
  br i1 %658, label %659, label %620, !llvm.loop !155

659:                                              ; preds = %655, %612
  %660 = phi i8 [ 0, %612 ], [ %656, %655 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %661

661:                                              ; preds = %389, %344, %603, %559, %558, %549, %545, %128, %121, %114, %111, %105, %100, %59, %659, %609, %537, %491, %432, %342, %264, %222, %181, %98, %60
  %662 = phi i8 [ %46, %59 ], [ %46, %609 ], [ %660, %659 ], [ %538, %537 ], [ %492, %491 ], [ %433, %432 ], [ %343, %342 ], [ %265, %264 ], [ %223, %222 ], [ %182, %181 ], [ %99, %98 ], [ %61, %60 ], [ 0, %105 ], [ 0, %100 ], [ 1, %128 ], [ 0, %121 ], [ 0, %114 ], [ 0, %111 ], [ 0, %545 ], [ %604, %603 ], [ 0, %558 ], [ 0, %559 ], [ 0, %549 ], [ 0, %344 ], [ %390, %389 ]
  %663 = icmp eq i8 %662, 0
  br i1 %663, label %665, label %664

664:                                              ; preds = %661
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %15) #6
  br label %665

665:                                              ; preds = %661, %664, %56
  %666 = phi i32 [ 2, %56 ], [ 4, %664 ], [ 2, %661 ]
  ret i32 %666
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull @OBJECT_OT_select_by_layer.match_items, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.8) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !78
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  %12 = load ptr, ptr %7, align 8, !tbaa !78
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef 1, i32 noundef 20, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef 20) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_select_by_layer_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.3) #6
  %8 = load ptr, ptr %5, align 8, !tbaa !80
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.24) #6
  %10 = load ptr, ptr %5, align 8, !tbaa !80
  %11 = tail call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.22) #6
  %12 = and i32 %7, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %15 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %16 = load ptr, ptr %3, align 8, !tbaa !82
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %14, %31
  %19 = phi ptr [ %32, %31 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !48
  %26 = and i32 %25, -2
  store i32 %26, ptr %24, align 8, !tbaa !48
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 53
  store i16 %27, ptr %30, align 4, !tbaa !49
  br label %31

31:                                               ; preds = %18, %23
  %32 = load ptr, ptr %19, align 8, !tbaa !82
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %18, !llvm.loop !156

34:                                               ; preds = %31, %14
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %35

35:                                               ; preds = %34, %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %36 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %4) #6
  %37 = load ptr, ptr %4, align 8, !tbaa !82
  %38 = icmp eq ptr %37, null
  br i1 %38, label %77, label %39

39:                                               ; preds = %35
  %40 = and i32 %11, 255
  %41 = icmp eq i32 %40, 1
  %42 = add i32 %9, -1
  %43 = shl nuw i32 1, %42
  %44 = add i32 %9, -1
  %45 = shl nuw i32 1, %44
  br label %46

46:                                               ; preds = %39, %74
  %47 = phi ptr [ %37, %39 ], [ %75, %74 ]
  %48 = getelementptr inbounds %struct.CollectionPointerLink, ptr %47, i64 0, i32 2, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !83
  %50 = getelementptr inbounds %struct.Base, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !125
  %52 = icmp eq i32 %51, %45
  %53 = and i32 %51, %43
  %54 = icmp ne i32 %53, 0
  %55 = select i1 %41, i1 %52, i1 %54
  %56 = icmp ne ptr %49, null
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.Base, ptr %49, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 102
  %62 = load i8, ptr %61, align 8, !tbaa !41
  %63 = and i8 %62, 2
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.Base, ptr %49, i64 0, i32 4
  %67 = load i32, ptr %66, align 8, !tbaa !48
  %68 = or i32 %67, 1
  store i32 %68, ptr %66, align 8, !tbaa !48
  br label %69

69:                                               ; preds = %65, %58
  %70 = getelementptr inbounds %struct.Base, ptr %49, i64 0, i32 4
  %71 = load i32, ptr %70, align 8, !tbaa !48
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 53
  store i16 %72, ptr %73, align 4, !tbaa !49
  br label %74

74:                                               ; preds = %69, %46
  %75 = load ptr, ptr %47, align 8, !tbaa !82
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %46, !llvm.loop !157

77:                                               ; preds = %74, %35
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  %78 = call ptr @CTX_data_scene(ptr noundef %0) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %78) #6
  ret i32 4
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
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
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.96) #6
  %8 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_visible_bases) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %95, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %13 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  br label %14

14:                                               ; preds = %19, %12
  %15 = phi ptr [ %3, %12 ], [ %17, %19 ]
  %16 = phi i32 [ 1, %12 ], [ %26, %19 ]
  %17 = load ptr, ptr %15, align 8, !tbaa !82
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %17, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  %22 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !48
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 %16, i32 2
  br i1 %25, label %14, label %27

27:                                               ; preds = %19, %14
  %28 = phi i32 [ %26, %19 ], [ %16, %14 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi i32 [ %28, %27 ], [ %7, %10 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %31 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %4) #6
  %32 = load ptr, ptr %4, align 8, !tbaa !82
  %33 = icmp eq ptr %32, null
  br i1 %33, label %93, label %34

34:                                               ; preds = %29, %90
  %35 = phi ptr [ %91, %90 ], [ %32, %29 ]
  %36 = getelementptr inbounds %struct.CollectionPointerLink, ptr %35, i64 0, i32 2, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  switch i32 %30, label %90 [
    i32 1, label %38
    i32 2, label %54
    i32 3, label %62
  ]

38:                                               ; preds = %34
  %39 = icmp eq ptr %37, null
  br i1 %39, label %90, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 102
  %44 = load i8, ptr %43, align 8, !tbaa !41
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !48
  %50 = or i32 %49, 1
  store i32 %50, ptr %48, align 8, !tbaa !48
  br label %51

51:                                               ; preds = %47, %40
  %52 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !48
  br label %85

54:                                               ; preds = %34
  %55 = icmp eq ptr %37, null
  br i1 %55, label %90, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !48
  %59 = and i32 %58, -2
  store i32 %59, ptr %57, align 8, !tbaa !48
  %60 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !34
  br label %85

62:                                               ; preds = %34
  %63 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !48
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  %67 = icmp eq ptr %37, null
  br i1 %66, label %73, label %68

68:                                               ; preds = %62
  br i1 %67, label %90, label %69

69:                                               ; preds = %68
  %70 = and i32 %64, -2
  store i32 %70, ptr %63, align 8, !tbaa !48
  %71 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  br label %85

73:                                               ; preds = %62
  br i1 %67, label %90, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 7
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.Object, ptr %76, i64 0, i32 102
  %78 = load i8, ptr %77, align 8, !tbaa !41
  %79 = and i8 %78, 2
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = or disjoint i32 %64, 1
  store i32 %82, ptr %63, align 8, !tbaa !48
  br label %83

83:                                               ; preds = %81, %74
  %84 = load i32, ptr %63, align 8, !tbaa !48
  br label %85

85:                                               ; preds = %51, %56, %69, %83
  %86 = phi ptr [ %76, %83 ], [ %72, %69 ], [ %61, %56 ], [ %42, %51 ]
  %87 = phi i32 [ %84, %83 ], [ %70, %69 ], [ %59, %56 ], [ %53, %51 ]
  %88 = trunc i32 %87 to i16
  %89 = getelementptr inbounds %struct.Object, ptr %86, i64 0, i32 53
  store i16 %88, ptr %89, align 4, !tbaa !49
  br label %90

90:                                               ; preds = %85, %73, %68, %54, %38, %34
  %91 = load ptr, ptr %35, align 8, !tbaa !82
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %34, !llvm.loop !158

93:                                               ; preds = %90, %29
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  %94 = call ptr @CTX_data_scene(ptr noundef %0) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %94) #6
  br label %95

95:                                               ; preds = %2, %93
  %96 = phi i32 [ 4, %93 ], [ 8, %2 ]
  ret i32 %96
}

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 66, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_select_same_group_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [66 x i8], align 16
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %3) #6
  %5 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_visible_bases) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  call void @RNA_string_get(ptr noundef %9, ptr noundef nonnull @.str.32, ptr noundef nonnull %3) #6
  %10 = call ptr @BKE_libblock_find_name(i16 noundef signext 21063, ptr noundef nonnull %3) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %13 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %4) #6
  %14 = load ptr, ptr %4, align 8, !tbaa !82
  %15 = icmp eq ptr %14, null
  br i1 %15, label %47, label %16

16:                                               ; preds = %12, %44
  %17 = phi ptr [ %45, %44 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.CollectionPointerLink, ptr %17, i64 0, i32 2, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !48
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %10, ptr noundef %26) #6
  %28 = icmp eq i8 %27, 0
  %29 = icmp eq ptr %19, null
  %30 = or i1 %29, %28
  br i1 %30, label %44, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %25, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 102
  %34 = load i8, ptr %33, align 8, !tbaa !41
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, ptr %20, align 8, !tbaa !48
  %39 = or i32 %38, 1
  store i32 %39, ptr %20, align 8, !tbaa !48
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, ptr %20, align 8, !tbaa !48
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 53
  store i16 %42, ptr %43, align 4, !tbaa !49
  br label %44

44:                                               ; preds = %40, %24, %16
  %45 = load ptr, ptr %17, align 8, !tbaa !82
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %16, !llvm.loop !159

47:                                               ; preds = %44, %12
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  %48 = call ptr @CTX_data_scene(ptr noundef %0) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %48) #6
  br label %49

49:                                               ; preds = %7, %2, %47
  %50 = phi i32 [ 4, %47 ], [ 8, %2 ], [ 8, %7 ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %3) #6
  ret i32 %50
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_select_mirror_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %9 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %10 = load ptr, ptr %3, align 8, !tbaa !82
  %11 = icmp eq ptr %10, null
  br i1 %11, label %61, label %12

12:                                               ; preds = %2
  %13 = and i32 %8, 255
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %12, %58
  %16 = phi ptr [ %10, %12 ], [ %59, %58 ]
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %16, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %19 = getelementptr inbounds %struct.Base, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4, i64 2
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %4, ptr noundef nonnull %21, i8 noundef zeroext 1) #6
  %22 = load ptr, ptr %19, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 4, i64 2
  %24 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %23) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %15
  %27 = call ptr @BKE_libblock_find_name(i16 noundef signext 16975, ptr noundef nonnull %4) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %26
  %30 = call ptr @BKE_scene_base_find(ptr noundef %5, ptr noundef nonnull %27) #6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 102
  %36 = load i8, ptr %35, align 8, !tbaa !41
  %37 = and i8 %36, 2
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !48
  %42 = or i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !48
  br label %43

43:                                               ; preds = %39, %32
  %44 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !48
  %46 = trunc i32 %45 to i16
  %47 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 53
  store i16 %46, ptr %47, align 4, !tbaa !49
  br label %48

48:                                               ; preds = %26, %43, %29, %15
  %49 = icmp eq ptr %18, null
  %50 = or i1 %14, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.Base, ptr %18, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !48
  %54 = and i32 %53, -2
  store i32 %54, ptr %52, align 8, !tbaa !48
  %55 = trunc i32 %54 to i16
  %56 = load ptr, ptr %19, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 53
  store i16 %55, ptr %57, align 4, !tbaa !49
  br label %58

58:                                               ; preds = %51, %48
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  %59 = load ptr, ptr %16, align 8, !tbaa !82
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %15, !llvm.loop !160

61:                                               ; preds = %58, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %5) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_float_percentage(ptr noundef %8, ptr noundef nonnull @.str.41, float noundef 5.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+02, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, float noundef 0.000000e+00, float noundef 1.000000e+02) #6
  tail call void @WM_operator_properties_select_action_simple(ptr noundef nonnull %0, i32 noundef 1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_select_random_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.96) #6
  %7 = icmp eq i32 %6, 1
  %8 = load ptr, ptr %4, align 8, !tbaa !80
  %9 = tail call float @RNA_float_get(ptr noundef %8, ptr noundef nonnull @.str.41) #6
  %10 = fdiv float %9, 1.000000e+02
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %11 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %12 = load ptr, ptr %3, align 8, !tbaa !82
  %13 = icmp eq ptr %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %2, %45
  %15 = phi ptr [ %46, %45 ], [ %12, %2 ]
  %16 = getelementptr inbounds %struct.CollectionPointerLink, ptr %15, i64 0, i32 2, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  %18 = call float @BLI_frand() #6
  %19 = fcmp uge float %18, %10
  %20 = icmp eq ptr %17, null
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %45, label %22

22:                                               ; preds = %14
  br i1 %7, label %23, label %34

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 102
  %27 = load i8, ptr %26, align 8, !tbaa !41
  %28 = and i8 %27, 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !48
  %33 = or i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !48
  br label %38

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !48
  %37 = and i32 %36, -2
  store i32 %37, ptr %35, align 8, !tbaa !48
  br label %38

38:                                               ; preds = %34, %30, %23
  %39 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !48
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 53
  store i16 %41, ptr %44, align 4, !tbaa !49
  br label %45

45:                                               ; preds = %38, %14
  %46 = load ptr, ptr %15, align 8, !tbaa !82
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %14, !llvm.loop !161

48:                                               ; preds = %45, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %49 = call ptr @CTX_data_scene(ptr noundef %0) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %49) #6
  ret i32 4
}

declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @WM_operator_properties_select_action_simple(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CTX_data_visible_bases(ptr noundef, ptr noundef) #3

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #3

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @psys_get_current(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @select_grouped_children(ptr noundef %0, ptr noundef readnone %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %5 = call i32 @CTX_data_selectable_bases(ptr noundef %0, ptr noundef nonnull %4) #6
  %6 = load ptr, ptr %4, align 8, !tbaa !82
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  %9 = icmp eq i8 %2, 0
  br label %10

10:                                               ; preds = %8, %43
  %11 = phi ptr [ %6, %8 ], [ %45, %43 ]
  %12 = phi i8 [ 0, %8 ], [ %44, %43 ]
  %13 = getelementptr inbounds %struct.CollectionPointerLink, ptr %11, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !123
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %43

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = icmp eq ptr %14, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 102
  %29 = load i8, ptr %28, align 8, !tbaa !41
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = or disjoint i32 %22, 1
  store i32 %33, ptr %21, align 8, !tbaa !48
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, ptr %21, align 8, !tbaa !48
  %36 = trunc i32 %35 to i16
  %37 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 53
  store i16 %36, ptr %37, align 4, !tbaa !49
  br label %38

38:                                               ; preds = %34, %25, %20
  %39 = phi i8 [ %12, %20 ], [ 1, %25 ], [ 1, %34 ]
  br i1 %9, label %43, label %40

40:                                               ; preds = %38
  %41 = call fastcc zeroext i8 @select_grouped_children(ptr noundef %0, ptr noundef %16, i8 noundef zeroext 1), !range !122
  %42 = or i8 %41, %39
  br label %43

43:                                               ; preds = %38, %40, %10
  %44 = phi i8 [ %42, %40 ], [ %39, %38 ], [ %12, %10 ]
  %45 = load ptr, ptr %11, align 8, !tbaa !82
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %10, !llvm.loop !124

47:                                               ; preds = %43, %3
  %48 = phi i8 [ 0, %3 ], [ %44, %43 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i8 %48
}

declare i32 @CTX_data_selectable_bases(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_active_base(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_group_object_exists(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #3

declare void @uiItemStringO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare ptr @BKE_bproperty_object_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ANIM_scene_get_active_keyingset(ptr noundef) local_unnamed_addr #3

declare signext i16 @ANIM_validate_keyingset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare i32 @CTX_data_selected_bases(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @BLI_frand() local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!80 = !{!81, !36, i64 112}
!81 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !45, i64 128, !36, i64 144, !36, i64 152, !40, i64 160, !37, i64 162}
!82 = !{!36, !36, i64 0}
!83 = !{!84, !36, i64 32}
!84 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !85, i64 16}
!85 = !{!"PointerRNA", !86, i64 0, !36, i64 8, !36, i64 16}
!86 = !{!"", !36, i64 0}
!87 = distinct !{!87, !88, !89}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !{!42, !40, i64 136}
!91 = distinct !{!91, !88, !89}
!92 = !{!42, !39, i64 432}
!93 = !{!40, !40, i64 0}
!94 = !{!42, !36, i64 296}
!95 = distinct !{!95, !88, !89}
!96 = !{!42, !39, i64 456}
!97 = distinct !{!97, !88, !89}
!98 = distinct !{!98, !88, !89}
!99 = !{!42, !36, i64 24}
!100 = distinct !{!100, !88, !89}
!101 = distinct !{!101, !88, !89}
!102 = !{!81, !36, i64 120}
!103 = !{!42, !39, i64 460}
!104 = !{!105, !37, i64 541}
!105 = !{!"Material", !43, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !46, i64 132, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !46, i64 216, !46, i64 220, !106, i64 224, !107, i64 312, !46, i64 328, !46, i64 332, !46, i64 336, !46, i64 340, !46, i64 344, !46, i64 348, !46, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !46, i64 364, !46, i64 368, !40, i64 372, !40, i64 374, !46, i64 376, !46, i64 380, !46, i64 384, !46, i64 388, !40, i64 392, !40, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !46, i64 420, !46, i64 424, !46, i64 428, !46, i64 432, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !46, i64 456, !37, i64 460, !46, i64 524, !46, i64 528, !46, i64 532, !39, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !46, i64 556, !46, i64 560, !37, i64 564, !46, i64 580, !46, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !46, i64 616, !46, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !46, i64 800, !46, i64 804, !46, i64 808, !46, i64 812, !46, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !46, i64 848, !46, i64 852, !46, i64 856, !46, i64 860, !46, i64 864, !46, i64 868, !46, i64 872, !40, i64 876, !40, i64 878, !39, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !45, i64 928}
!106 = !{!"VolumeSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !46, i64 52, !46, i64 56, !46, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !46, i64 72, !46, i64 76, !46, i64 80, !46, i64 84}
!107 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!108 = !{!109, !36, i64 16}
!109 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !46, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !37, i64 132, !37, i64 133, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !46, i64 240, !46, i64 244, !46, i64 248, !46, i64 252, !46, i64 256, !46, i64 260, !46, i64 264, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308}
!110 = distinct !{!110, !88, !89}
!111 = !{!42, !36, i64 1256}
!112 = !{!42, !40, i64 952}
!113 = distinct !{!113, !88, !89}
!114 = !{!45, !36, i64 0}
!115 = !{!116, !36, i64 16}
!116 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !45, i64 72, !45, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !45, i64 152, !37, i64 168, !37, i64 232, !46, i64 296, !46, i64 300, !46, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !37, i64 348, !37, i64 540, !40, i64 564, !40, i64 566, !36, i64 568, !36, i64 576, !45, i64 584, !36, i64 600, !36, i64 608, !39, i64 616, !39, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !46, i64 648, !46, i64 652}
!117 = distinct !{!117, !88, !89}
!118 = distinct !{!118, !88, !89}
!119 = !{!43, !36, i64 24}
!120 = distinct !{!120, !88, !89}
!121 = distinct !{!121, !88, !89}
!122 = !{i8 0, i8 2}
!123 = !{!42, !36, i64 216}
!124 = distinct !{!124, !88, !89}
!125 = !{!35, !39, i64 16}
!126 = !{!127, !39, i64 224}
!127 = !{!"View3D", !36, i64 0, !36, i64 8, !45, i64 16, !39, i64 32, !46, i64 36, !37, i64 40, !37, i64 56, !46, i64 72, !46, i64 76, !37, i64 80, !37, i64 81, !39, i64 84, !39, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !36, i64 104, !58, i64 112, !45, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !39, i64 224, !39, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !46, i64 244, !46, i64 248, !46, i64 252, !46, i64 256, !37, i64 260, !37, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !45, i64 296, !45, i64 312, !45, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!128 = distinct !{!128, !88, !89}
!129 = distinct !{!129, !88, !89}
!130 = !{!42, !39, i64 944}
!131 = distinct !{!131, !88, !89}
!132 = distinct !{!132, !88, !89}
!133 = distinct !{!133, !88, !89}
!134 = distinct !{!134, !88, !89}
!135 = !{!136, !39, i64 16}
!136 = !{!"ModifierData", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!137 = !{!138, !36, i64 112}
!138 = !{!"HookModifierData", !136, i64 0, !36, i64 112, !37, i64 120, !37, i64 184, !37, i64 248, !46, i64 260, !36, i64 264, !39, i64 272, !46, i64 276, !37, i64 280}
!139 = distinct !{!139, !88, !89}
!140 = !{!42, !40, i64 1124}
!141 = distinct !{!141, !88, !89}
!142 = !{!46, !46, i64 0}
!143 = distinct !{!143, !88, !89}
!144 = distinct !{!144, !88, !89}
!145 = distinct !{!145, !88, !89}
!146 = !{!147, !36, i64 16}
!147 = !{!"KeyingSet", !36, i64 0, !36, i64 8, !45, i64 16, !37, i64 32, !37, i64 96, !37, i64 160, !37, i64 400, !40, i64 464, !40, i64 466, !39, i64 468}
!148 = !{!147, !40, i64 464}
!149 = !{!150, !36, i64 16}
!150 = !{!"KS_Path", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !39, i64 88, !40, i64 92, !40, i64 94, !36, i64 96, !39, i64 104, !40, i64 108, !40, i64 110}
!151 = distinct !{!151, !88, !89}
!152 = distinct !{!152, !88, !89}
!153 = !{!154, !40, i64 128}
!154 = !{!"Lamp", !43, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !39, i64 132, !40, i64 136, !40, i64 138, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !36, i64 200, !40, i64 208, !40, i64 210, !46, i64 212, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !37, i64 248, !37, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !46, i64 260, !46, i64 264, !46, i64 268, !46, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308, !46, i64 312, !46, i64 316, !46, i64 320, !46, i64 324, !46, i64 328, !46, i64 332, !46, i64 336, !40, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !40, i64 496, !40, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!155 = distinct !{!155, !88, !89}
!156 = distinct !{!156, !88, !89}
!157 = distinct !{!157, !88, !89}
!158 = distinct !{!158, !88, !89}
!159 = distinct !{!159, !88, !89}
!160 = distinct !{!160, !88, !89}
!161 = distinct !{!161, !88, !89}
