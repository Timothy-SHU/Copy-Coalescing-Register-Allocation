; ModuleID = 'blender/source/blender/editors/space_outliner/outliner_tools.c'
source_filename = "blender/source/blender/editors/space_outliner/outliner_tools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SpaceOops = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, %struct.ListBase, ptr, [32 x i8], %struct.TreeStoreElem, i16, i16, i16, i16, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.TreeElement = type { ptr, ptr, ptr, %struct.ListBase, i32, i32, ptr, i16, i16, i16, i16, ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
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
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.IdAdtTemplate = type { %struct.ID, ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }

@.str = private unnamed_addr constant [26 x i8] c"Outliner Object Operation\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"OUTLINER_OT_object_operation\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_object_op_types = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.38, i32 0, ptr @.str.39, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.40, i32 0, ptr @.str.41, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.44, i32 0, ptr @.str.45, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.46, i32 0, ptr @.str.47, ptr @.str.2 }, %struct.EnumPropertyItem { i32 9, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [17 x i8] c"Object Operation\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Outliner Group Operation\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"OUTLINER_OT_group_operation\00", align 1
@prop_group_op_types = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.53, i32 0, ptr @.str.54, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.55, i32 0, ptr @.str.56, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.57, i32 0, ptr @.str.58, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.42, i32 0, ptr @.str.59, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.44, i32 0, ptr @.str.45, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.46, i32 0, ptr @.str.47, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [16 x i8] c"Group Operation\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Outliner ID data Operation\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"OUTLINER_OT_id_operation\00", align 1
@prop_id_op_types = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.51, i32 0, ptr @.str.71, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.53, i32 0, ptr @.str.72, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.73, i32 0, ptr @.str.74, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.75, i32 0, ptr @.str.68, ptr @.str.76 }, %struct.EnumPropertyItem { i32 5, ptr @.str.77, i32 0, ptr @.str.69, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [18 x i8] c"ID data Operation\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Outliner Set Action\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"OUTLINER_OT_action_set\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Change the active action used\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Outliner Animation Data Operation\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"OUTLINER_OT_animdata_operation\00", align 1
@prop_animdata_op_types = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.85, i32 0, ptr @.str.83, ptr @.str.86 }, %struct.EnumPropertyItem { i32 2, ptr @.str.87, i32 0, ptr @.str.88, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.89, i32 0, ptr @.str.90, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.91, i32 0, ptr @.str.92, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.93, i32 0, ptr @.str.84, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [20 x i8] c"Animation Operation\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Outliner Data Operation\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"OUTLINER_OT_data_operation\00", align 1
@prop_data_op_types = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.97, i32 0, ptr @.str.98, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.99, i32 0, ptr @.str.100, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [15 x i8] c"Data Operation\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Execute Operation\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"OUTLINER_OT_operation\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Context menu for item operations\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Select Objects\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Select Object Hierarchy\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Deselect Objects\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"Delete Objects\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Localized Objects\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Toggle Visibility\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Toggle Selectability\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Toggle Renderability\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Rename Object\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"DESELECT\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"Deselect\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"SELECT_HIERARCHY\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"Select Hierarchy\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"TOGVIS\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Toggle Visible\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"TOGSEL\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"Toggle Selectable\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"TOGREN\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"Toggle Renderable\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"RENAME\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"Rename\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [9 x i8] c"add_base\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"UNLINK\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"Unlink Group\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"Make Local Group\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"Link Group Objects to Scene\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"INSTANCE\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"Instance Groups in Scene\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"Toggle Visible Group\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"Unlink action\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"Unlink material\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"Unlink texture\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"Unlink world\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"Not yet implemented\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"Localized Data\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"Single-User Action\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"Single-User World\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"Add Fake User\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"Clear Fake User\00", align 1
@RNA_AnimData = external global %struct.StructRNA, align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"Unlink\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"Make Local\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"SINGLE\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"Make Single User\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"ADD_FAKE\00", align 1
@.str.76 = private unnamed_addr constant [93 x i8] c"Ensure datablock gets saved even if it isn't in use (e.g. for motion and material libraries)\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"CLEAR_FAKE\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"SELECT_LINKED\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"Select Linked\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"No valid action to add\00", align 1
@.str.81 = private unnamed_addr constant [172 x i8] c"Action '%s' does not specify what datablocks it can be used on (try setting the 'ID Root Type' setting from the Datablocks Editor for this action to avoid future problems)\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"Set action\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"Clear Animation Data\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"Clear Drivers\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"CLEAR_ANIMDATA\00", align 1
@.str.86 = private unnamed_addr constant [37 x i8] c"Remove this animation data container\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"SET_ACT\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"Set Action\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"CLEAR_ACT\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"Unlink Action\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"REFRESH_DRIVERS\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"Refresh Drivers\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"CLEAR_DRIVERS\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"PoseChannel operation\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"Bone operation\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"EditBone operation\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"HIDE\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"Hide\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"UNHIDE\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"Unhide\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.101 = private unnamed_addr constant [16 x i8] c"Mixed selection\00", align 1
@switch.table.outliner_group_operation_exec = private unnamed_addr constant [8 x ptr] [ptr @unlink_group_cb, ptr @id_local_cb, ptr @group_linkobs2scene_cb, ptr @group_instance_cb, ptr @group_toggle_visibility_cb, ptr @group_toggle_selectability_cb, ptr @group_toggle_renderability_cb, ptr @item_rename_cb], align 8

; Function Attrs: nounwind uwtable
define dso_local void @outliner_do_object_operation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 14
  br label %10

10:                                               ; preds = %8, %48
  %11 = phi ptr [ %6, %8 ], [ %49, %48 ]
  %12 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.TreeStoreElem, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 4, !tbaa !45
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %10
  %19 = load i16, ptr %13, align 8, !tbaa !47
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 9
  %23 = load i16, ptr %22, align 4, !tbaa !48
  %24 = icmp eq i16 %23, 16975
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = tail call ptr @outliner_search_back(ptr noundef %2, ptr noundef nonnull %11, i16 noundef signext 17235) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = icmp eq ptr %26, %1
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = tail call ptr @CTX_wm_screen(ptr noundef %0) #8
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef %31, ptr noundef nonnull %26) #8
  br label %32

32:                                               ; preds = %30, %28, %25
  %33 = phi ptr [ %26, %30 ], [ %26, %28 ], [ %1, %25 ]
  tail call void %4(ptr noundef %0, ptr noundef %33, ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull %13) #8
  br label %34

34:                                               ; preds = %18, %21, %32, %10
  %35 = load i16, ptr %14, align 4, !tbaa !45
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load i16, ptr %9, align 2, !tbaa !49
  %41 = and i16 %40, 4
  %42 = icmp eq i16 %41, 0
  %43 = and i32 %36, 8
  %44 = icmp eq i32 %43, 0
  %45 = or i1 %44, %42
  br i1 %45, label %48, label %46

46:                                               ; preds = %39, %34
  %47 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 3
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %47, ptr noundef %4)
  br label %48

48:                                               ; preds = %39, %46
  %49 = load ptr, ptr %11, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %10, !llvm.loop !55

51:                                               ; preds = %48, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @outliner_search_back(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @ED_screen_set_scene(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_object_operation(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_object_operation_exec, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_object_op_types, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !68
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_object_operation_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.3) #8
  switch i32 %10, label %31 [
    i32 1, label %11
    i32 3, label %13
    i32 2, label %15
    i32 4, label %17
    i32 5, label %19
    i32 6, label %21
    i32 7, label %23
    i32 8, label %25
    i32 9, label %27
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %12, ptr noundef nonnull @object_select_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %4) #8
  br label %29

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %14, ptr noundef nonnull @object_select_hierarchy_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %4) #8
  br label %29

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %16, ptr noundef nonnull @object_deselect_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %4) #8
  br label %29

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull @object_delete_cb)
  tail call void @outliner_cleanup_tree(ptr noundef nonnull %5) #8
  tail call void @DAG_relations_tag_update(ptr noundef %3) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %4) #8
  br label %29

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %20, ptr noundef nonnull @id_local_cb)
  br label %29

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %22, ptr noundef nonnull @object_toggle_visibility_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67698688, ptr noundef %4) #8
  br label %29

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %24, ptr noundef nonnull @object_toggle_selectability_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %4) #8
  br label %29

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %26, ptr noundef nonnull @object_toggle_renderability_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67764224, ptr noundef %4) #8
  br label %29

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %28, ptr noundef nonnull @item_rename_cb)
  br label %29

29:                                               ; preds = %13, %17, %21, %25, %27, %23, %19, %15, %11
  %30 = phi ptr [ @.str.25, %11 ], [ @.str.26, %13 ], [ @.str.27, %15 ], [ @.str.28, %17 ], [ @.str.29, %19 ], [ @.str.30, %21 ], [ @.str.31, %23 ], [ @.str.32, %25 ], [ @.str.33, %27 ]
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull %30) #8
  br label %31

31:                                               ; preds = %7, %2, %29
  %32 = phi i32 [ 4, %29 ], [ 2, %2 ], [ 2, %7 ]
  ret i32 %32
}

declare i32 @ED_operator_outliner_active(ptr noundef) #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_group_operation(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.5, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_group_operation_exec, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_group_op_types, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_group_operation_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.3) #8
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [8 x ptr], ptr @switch.table.outliner_group_operation_exec, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 7
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %15, ptr noundef nonnull %14)
  %16 = icmp eq i32 %9, 3
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  tail call void @DAG_relations_tag_update(ptr noundef %18) #8
  br label %19

19:                                               ; preds = %17, %11
  %20 = zext nneg i32 %9 to i64
  %21 = getelementptr inbounds [9 x %struct.EnumPropertyItem], ptr @prop_group_op_types, i64 0, i64 %20, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef %22) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994944, ptr noundef null) #8
  br label %23

23:                                               ; preds = %6, %2, %19
  %24 = phi i32 [ 4, %19 ], [ 2, %2 ], [ 2, %6 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_id_operation(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_id_operation_exec, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_id_op_types, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_id_operation_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %8 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !tbaa !73
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.SpaceOops, ptr %8, i64 0, i32 7
  call fastcc void @set_operation_types(ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.3) #8
  switch i32 %14, label %36 [
    i32 1, label %15
    i32 2, label %24
    i32 3, label %25
    i32 4, label %32
    i32 5, label %33
    i32 6, label %34
    i32 7, label %35
  ]

15:                                               ; preds = %10
  %16 = load i32, ptr %5, align 4, !tbaa !73
  switch i32 %16, label %21 [
    i32 17217, label %17
    i32 16717, label %18
    i32 17748, label %19
    i32 20311, label %20
  ]

17:                                               ; preds = %15
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @unlink_action_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.60) #8
  br label %36

18:                                               ; preds = %15
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @unlink_material_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85131264, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.61) #8
  br label %36

19:                                               ; preds = %15
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @unlink_texture_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85131264, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.62) #8
  br label %36

20:                                               ; preds = %15
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @unlink_world_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 73138176, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.63) #8
  br label %36

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !74
  tail call void @BKE_report(ptr noundef %23, i32 noundef 16, ptr noundef nonnull @.str.64) #8
  br label %36

24:                                               ; preds = %10
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @id_local_cb)
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.65) #8
  br label %36

25:                                               ; preds = %10
  %26 = load i32, ptr %5, align 4, !tbaa !73
  switch i32 %26, label %29 [
    i32 17217, label %27
    i32 20311, label %28
  ]

27:                                               ; preds = %25
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @singleuser_action_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.66) #8
  br label %36

28:                                               ; preds = %25
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @singleuser_world_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 73138176, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.67) #8
  br label %36

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  tail call void @BKE_report(ptr noundef %31, i32 noundef 16, ptr noundef nonnull @.str.64) #8
  br label %36

32:                                               ; preds = %10
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @id_fake_user_set_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 301989889, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.68) #8
  br label %36

33:                                               ; preds = %10
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @id_fake_user_clear_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 301989889, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.69) #8
  br label %36

34:                                               ; preds = %10
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @item_rename_cb)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 301989889, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.49) #8
  br label %36

35:                                               ; preds = %10
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @id_select_linked_cb)
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.35) #8
  br label %36

36:                                               ; preds = %10, %27, %28, %29, %17, %18, %19, %20, %21, %35, %34, %33, %32, %24
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 301989889, ptr noundef null) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252182528, ptr noundef null) #8
  br label %37

37:                                               ; preds = %2, %36
  %38 = phi i32 [ 4, %36 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_action_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_enum_search_invoke, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_action_set_exec, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2) #8
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @RNA_action_itemf) #8
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !68
  ret void
}

declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_action_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SpaceOops, ptr %7, i64 0, i32 7
  call fastcc void @set_operation_types(ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %11 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 34
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = tail call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.14) #8
  %16 = tail call ptr @BLI_findlink(ptr noundef nonnull %12, i32 noundef %15) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  tail call void @BKE_report(ptr noundef %20, i32 noundef 32, ptr noundef nonnull @.str.80) #8
  br label %37

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.bAction, ptr %16, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !75
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %27, i32 noundef 16, ptr noundef nonnull @.str.81, ptr noundef nonnull %28) #8
  br label %29

29:                                               ; preds = %21, %25
  %30 = load i32, ptr %6, align 4, !tbaa !73
  %31 = icmp eq i32 %30, 15
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %5, align 4, !tbaa !73
  %34 = icmp eq i32 %33, 17217
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29
  %36 = phi i32 [ 15, %29 ], [ 17217, %32 ]
  tail call fastcc void @outliner_do_id_set_operation(ptr noundef nonnull %7, i32 noundef %36, ptr noundef nonnull %10, ptr noundef nonnull %16)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.82) #8
  br label %37

37:                                               ; preds = %32, %2, %35, %18
  %38 = phi i32 [ 2, %18 ], [ 4, %35 ], [ 2, %2 ], [ 2, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %38
}

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_action_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_animdata_operation(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_animdata_operation_exec, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_animdata_op_types, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_animdata_operation_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.3) #8
  %13 = getelementptr inbounds %struct.SpaceOops, ptr %7, i64 0, i32 7
  call fastcc void @set_operation_types(ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %14 = load i32, ptr %6, align 4, !tbaa !73
  %15 = icmp eq i32 %14, 15
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  switch i32 %12, label %25 [
    i32 1, label %17
    i32 2, label %18
    i32 3, label %20
    i32 4, label %21
    i32 5, label %22
  ]

17:                                               ; preds = %16
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %13, ptr noundef nonnull @clear_animdata_cb, ptr noundef null)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.83) #8
  br label %25

18:                                               ; preds = %16
  %19 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.12, i16 noundef signext 1, ptr noundef null) #8
  br label %25

20:                                               ; preds = %16
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 15, i32 noundef 3, ptr noundef nonnull %13, ptr noundef nonnull @unlinkact_animdata_cb, ptr noundef null)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.60) #8
  br label %25

21:                                               ; preds = %16
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %13, ptr noundef nonnull @refreshdrivers_animdata_cb, ptr noundef null)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599616, ptr noundef null) #8
  br label %23

22:                                               ; preds = %16
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 15, i32 noundef 5, ptr noundef nonnull %13, ptr noundef nonnull @cleardrivers_animdata_cb, ptr noundef null)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599616, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.84) #8
  br label %23

23:                                               ; preds = %21, %22
  %24 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  tail call void @DAG_relations_tag_update(ptr noundef %24) #8
  br label %25

25:                                               ; preds = %23, %17, %18, %20, %16, %9, %2
  %26 = phi i32 [ 2, %2 ], [ 2, %9 ], [ 4, %16 ], [ 4, %20 ], [ 4, %18 ], [ 4, %17 ], [ 4, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local void @OUTLINER_OT_data_operation(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_data_operation_exec, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_data_op_types, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_data_operation_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !tbaa !73
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.3) #8
  %13 = getelementptr inbounds %struct.SpaceOops, ptr %7, i64 0, i32 7
  call fastcc void @set_operation_types(ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %14 = icmp slt i32 %12, 1
  br i1 %14, label %28, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %6, align 4, !tbaa !73
  switch i32 %16, label %25 [
    i32 14, label %17
    i32 5, label %18
    i32 6, label %19
    i32 26, label %20
    i32 30, label %22
  ]

17:                                               ; preds = %15
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 14, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull @pchan_cb, ptr noundef null)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.94) #8
  br label %28

18:                                               ; preds = %15
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 5, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull @bone_cb, ptr noundef null)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.95) #8
  br label %28

19:                                               ; preds = %15
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 6, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull @ebone_cb, ptr noundef null)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.96) #8
  br label %28

20:                                               ; preds = %15
  %21 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef %16, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull @sequence_cb, ptr noundef %21)
  br label %28

22:                                               ; preds = %15
  %23 = icmp eq i32 %12, 5
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 30, i32 noundef 5, ptr noundef nonnull %13, ptr noundef nonnull @data_select_linked_cb, ptr noundef %0)
  br label %28

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  tail call void @BKE_report(ptr noundef %27, i32 noundef 16, ptr noundef nonnull @.str.64) #8
  br label %28

28:                                               ; preds = %17, %18, %19, %20, %25, %24, %22, %9, %2
  %29 = phi i32 [ 2, %2 ], [ 2, %9 ], [ 4, %22 ], [ 4, %24 ], [ 4, %25 ], [ 4, %20 ], [ 4, %19 ], [ 4, %18 ], [ 4, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_operation(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @outliner_operation, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @outliner_operation(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %7 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %8 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !73
  %11 = sitofp i32 %10 to float
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !73
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %8, float noundef %11, float noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %15) #8
  %16 = getelementptr inbounds %struct.SpaceOops, ptr %7, i64 0, i32 7
  br label %17

17:                                               ; preds = %21, %3
  %18 = phi ptr [ %16, %3 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = call fastcc i32 @do_outliner_operation_event(ptr noundef %0, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %19, ptr noundef nonnull %4)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %17, label %24, !llvm.loop !78

24:                                               ; preds = %21, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 4
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_outliner(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @object_select_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %11) #8
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %12, %9 ], [ %7, %5 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !81
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 102
  %20 = load i8, ptr %19, align 8, !tbaa !83
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !87
  %26 = or i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !87
  %27 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 53
  %28 = load i16, ptr %27, align 4, !tbaa !88
  %29 = or i16 %28, 1
  store i16 %29, ptr %27, align 4, !tbaa !88
  br label %30

30:                                               ; preds = %23, %16, %13
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @object_select_hierarchy_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !73
  %11 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !73
  %13 = tail call i32 @outliner_item_do_activate(ptr noundef %0, i32 noundef %10, i32 noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @object_deselect_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %11) #8
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %12, %9 ], [ %7, %5 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !87
  %19 = and i32 %18, -2
  store i32 %19, ptr %17, align 8, !tbaa !87
  %20 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 53
  %23 = load i16, ptr %22, align 4, !tbaa !88
  %24 = and i16 %23, -2
  store i16 %24, ptr %22, align 4, !tbaa !88
  br label %25

25:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @object_delete_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture readnone %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %11) #8
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %12, %9 ], [ %7, %5 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 15) #8
  br label %23

23:                                               ; preds = %22, %16
  %24 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  tail call void @ED_base_object_free_and_unlink(ptr noundef %24, ptr noundef %1, ptr noundef nonnull %14) #8
  store ptr null, ptr %6, align 8, !tbaa !79
  %25 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  store ptr null, ptr %25, align 8, !tbaa !80
  br label %26

26:                                               ; preds = %23, %13
  ret void
}

declare void @outliner_cleanup_tree(ptr noundef) local_unnamed_addr #2

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @id_local_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 5
  %13 = load i16, ptr %12, align 2, !tbaa !109
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = tail call zeroext i8 @id_make_local(ptr noundef %7, i8 noundef zeroext 0) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %21 = load ptr, ptr %6, align 8, !tbaa !80
  tail call void @id_clear_lib_data(ptr noundef %20, ptr noundef %21) #8
  br label %22

22:                                               ; preds = %16, %19, %11, %5
  ret void
}

declare void @object_toggle_visibility_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @object_toggle_selectability_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @object_toggle_renderability_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @item_rename_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare i32 @outliner_item_do_activate(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_base_object_free_and_unlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @id_make_local(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 14
  br label %10

10:                                               ; preds = %8, %44
  %11 = phi ptr [ %6, %8 ], [ %45, %44 ]
  %12 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.TreeStoreElem, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 4, !tbaa !45
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %10
  %19 = load i16, ptr %13, align 8, !tbaa !47
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TreeElement, ptr %23, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  br label %28

28:                                               ; preds = %21, %25
  %29 = phi ptr [ %27, %25 ], [ null, %21 ]
  tail call void %4(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef %29, ptr noundef nonnull %13) #8
  br label %30

30:                                               ; preds = %18, %28, %10
  %31 = load i16, ptr %14, align 4, !tbaa !45
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load i16, ptr %9, align 2, !tbaa !49
  %37 = and i16 %36, 4
  %38 = icmp eq i16 %37, 0
  %39 = and i32 %32, 8
  %40 = icmp eq i32 %39, 0
  %41 = or i1 %40, %38
  br i1 %41, label %44, label %42

42:                                               ; preds = %35, %30
  %43 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 3
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %43, ptr noundef %4)
  br label %44

44:                                               ; preds = %35, %42
  %45 = load ptr, ptr %11, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %10, !llvm.loop !111

47:                                               ; preds = %44, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @unlink_group_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !112
  %12 = icmp eq i16 %11, 16975
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 112
  store ptr null, ptr %14, align 8, !tbaa !113
  br label %18

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  tail call void @BKE_group_unlink(ptr noundef %17) #8
  br label %18

18:                                               ; preds = %7, %13, %15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @group_linkobs2scene_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.Group, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  br label %13

13:                                               ; preds = %11, %41
  %14 = phi ptr [ %9, %11 ], [ %42, %41 ]
  %15 = getelementptr inbounds %struct.GroupObject, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %16) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 53
  %23 = load i16, ptr %22, align 4, !tbaa !88
  %24 = or i16 %23, 1
  store i16 %24, ptr %22, align 4, !tbaa !88
  %25 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !87
  %27 = or i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !87
  br label %41

28:                                               ; preds = %13
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %30 = tail call ptr %29(i64 noundef 40, ptr noundef nonnull @.str.50) #8
  tail call void @BLI_addhead(ptr noundef nonnull %12, ptr noundef %30) #8
  %31 = load ptr, ptr %15, align 8, !tbaa !114
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 52
  %33 = load i32, ptr %32, align 8, !tbaa !116
  %34 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 2
  store i32 %33, ptr %34, align 8, !tbaa !117
  %35 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 53
  %36 = load i16, ptr %35, align 4, !tbaa !88
  %37 = or i16 %36, 1
  store i16 %37, ptr %35, align 4, !tbaa !88
  %38 = sext i16 %37 to i32
  %39 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 4
  store i32 %38, ptr %39, align 8, !tbaa !87
  %40 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 7
  store ptr %31, ptr %40, align 8, !tbaa !81
  tail call void @id_lib_extern(ptr noundef %31) #8
  br label %41

41:                                               ; preds = %19, %28
  %42 = load ptr, ptr %14, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %13, !llvm.loop !118

44:                                               ; preds = %41, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @group_instance_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 8
  %9 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 13
  %10 = load i32, ptr %9, align 4, !tbaa !119
  %11 = tail call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 0, i32 noundef %10) #8
  %12 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4, i64 2
  tail call void @rename_id(ptr noundef %11, ptr noundef nonnull %12) #8
  %13 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 112
  store ptr %7, ptr %13, align 8, !tbaa !113
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 55
  %15 = load i16, ptr %14, align 8, !tbaa !120
  %16 = or i16 %15, 256
  store i16 %16, ptr %14, align 8, !tbaa !120
  tail call void @id_lib_extern(ptr noundef %7) #8
  ret void
}

declare void @group_toggle_visibility_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @group_toggle_selectability_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @group_toggle_renderability_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @BKE_group_unlink(ptr noundef) local_unnamed_addr #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

declare ptr @ED_object_add_type(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @rename_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_operation_types(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #4 {
  %7 = load ptr, ptr %1, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %61, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %11

11:                                               ; preds = %9, %58
  %12 = phi ptr [ %7, %9 ], [ %59, %58 ]
  %13 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.TreeStoreElem, ptr %14, i64 0, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !45
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %11
  %20 = load i16, ptr %14, align 8, !tbaa !47
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %5, align 4, !tbaa !73
  %24 = icmp eq i32 %23, 0
  %25 = sext i16 %20 to i32
  br i1 %24, label %26, label %27

26:                                               ; preds = %22
  store i32 %25, ptr %5, align 4, !tbaa !73
  br label %45

27:                                               ; preds = %22
  %28 = icmp eq i32 %23, %25
  br i1 %28, label %45, label %29

29:                                               ; preds = %27
  store i32 -1, ptr %5, align 4, !tbaa !73
  br label %45

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.TreeStoreElem, ptr %14, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !80
  %33 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 4
  %34 = load i16, ptr %33, align 8, !tbaa !112
  %35 = sext i16 %34 to i32
  switch i16 %34, label %45 [
    i16 17235, label %36
    i16 16975, label %37
    i16 17741, label %38
    i16 21827, label %38
    i16 16973, label %38
    i16 21580, label %38
    i16 16716, label %38
    i16 21057, label %38
    i16 16707, label %38
    i16 19283, label %38
    i16 16717, label %38
    i16 17748, label %38
    i16 20553, label %38
    i16 19785, label %38
    i16 20307, label %38
    i16 17739, label %38
    i16 20311, label %38
    i16 17217, label %38
    i16 19534, label %38
    i16 22612, label %38
    i16 21063, label %38
    i16 21324, label %38
  ]

36:                                               ; preds = %30
  store i32 1, ptr %2, align 4, !tbaa !73
  br label %45

37:                                               ; preds = %30
  store i32 1, ptr %3, align 4, !tbaa !73
  br label %45

38:                                               ; preds = %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30
  %39 = load i32, ptr %4, align 4, !tbaa !73
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 %35, ptr %4, align 4, !tbaa !73
  br label %45

42:                                               ; preds = %38
  %43 = icmp eq i32 %39, %35
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  store i32 -1, ptr %4, align 4, !tbaa !73
  br label %45

45:                                               ; preds = %36, %37, %30, %42, %44, %41, %27, %29, %26, %11
  %46 = zext i16 %16 to i32
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load i16, ptr %10, align 2, !tbaa !49
  %51 = and i16 %50, 4
  %52 = icmp eq i16 %51, 0
  %53 = and i32 %46, 8
  %54 = icmp eq i32 %53, 0
  %55 = or i1 %54, %52
  br i1 %55, label %58, label %56

56:                                               ; preds = %49, %45
  %57 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 3
  tail call fastcc void @set_operation_types(ptr noundef %0, ptr noundef nonnull %57, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %58

58:                                               ; preds = %49, %56
  %59 = load ptr, ptr %12, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %11, !llvm.loop !121

61:                                               ; preds = %58, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @unlink_action_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #0 {
  %6 = tail call ptr @CTX_wm_reports(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = tail call zeroext i8 @BKE_animdata_set_action(ptr noundef %6, ptr noundef %8, ptr noundef null) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @unlink_material_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #5 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !112
  switch i16 %9, label %33 [
    i16 16975, label %10
    i16 17741, label %14
    i16 21827, label %19
    i16 16973, label %24
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 31
  %12 = load i32, ptr %11, align 8, !tbaa !122
  %13 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 29
  br label %29

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 47
  %16 = load i16, ptr %15, align 2, !tbaa !123
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 5
  br label %29

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 22
  %21 = load i16, ptr %20, align 2, !tbaa !126
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 10
  br label %29

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 9
  %26 = load i16, ptr %25, align 2, !tbaa !129
  %27 = sext i16 %26 to i32
  %28 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 6
  br label %29

29:                                               ; preds = %10, %19, %24, %14
  %30 = phi ptr [ %18, %14 ], [ %28, %24 ], [ %23, %19 ], [ %13, %10 ]
  %31 = phi i32 [ %17, %14 ], [ %27, %24 ], [ %22, %19 ], [ %12, %10 ]
  %32 = load ptr, ptr %30, align 8, !tbaa !34
  br label %33

33:                                               ; preds = %29, %5
  %34 = phi i32 [ 0, %5 ], [ %31, %29 ]
  %35 = phi ptr [ null, %5 ], [ %32, %29 ]
  %36 = icmp ne ptr %35, null
  %37 = icmp sgt i32 %34, 0
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %59

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %41 = load i16, ptr %40, align 2, !tbaa !131
  %42 = sext i16 %41 to i64
  %43 = and i64 %42, 4294967295
  %44 = zext i32 %34 to i64
  br label %45

45:                                               ; preds = %39, %56
  %46 = phi i64 [ 0, %39 ], [ %57, %56 ]
  %47 = icmp eq i64 %46, %43
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = getelementptr inbounds ptr, ptr %35, i64 %46
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ID, ptr %50, i64 0, i32 6
  %54 = load i32, ptr %53, align 4, !tbaa !132
  %55 = add nsw i32 %54, -1
  store i32 %55, ptr %53, align 4, !tbaa !132
  store ptr null, ptr %49, align 8, !tbaa !34
  br label %56

56:                                               ; preds = %45, %48, %52
  %57 = add nuw nsw i64 %46, 1
  %58 = icmp eq i64 %57, %44
  br i1 %58, label %59, label %45, !llvm.loop !136

59:                                               ; preds = %56, %33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @unlink_texture_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #5 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !112
  switch i16 %9, label %42 [
    i16 16717, label %10
    i16 16716, label %12
    i16 20311, label %14
    i16 21324, label %16
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Material, ptr %7, i64 0, i32 102
  br label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 69
  br label %18

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.World, ptr %7, i64 0, i32 70
  br label %18

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %7, i64 0, i32 39
  br label %18

18:                                               ; preds = %12, %16, %14, %10
  %19 = phi ptr [ %11, %10 ], [ %13, %12 ], [ %15, %14 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %21 = load i16, ptr %20, align 2, !tbaa !131
  %22 = sext i16 %21 to i64
  %23 = and i64 %22, 4294967295
  br label %24

24:                                               ; preds = %18, %39
  %25 = phi i64 [ 0, %18 ], [ %40, %39 ]
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = getelementptr inbounds ptr, ptr %19, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.MTex, ptr %29, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !137
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !139
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr %36, align 4, !tbaa !139
  store ptr null, ptr %32, align 8, !tbaa !137
  br label %39

39:                                               ; preds = %24, %27, %35, %31
  %40 = add nuw nsw i64 %25, 1
  %41 = icmp eq i64 %40, 18
  br i1 %41, label %42, label %24, !llvm.loop !142

42:                                               ; preds = %39, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @unlink_world_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  tail call void @id_us_min(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 3
  store ptr null, ptr %10, align 8, !tbaa !143
  ret void
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @singleuser_action_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca %struct.PointerRNA, align 8
  %7 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %13 = getelementptr inbounds %struct.IdAdtTemplate, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !144
  call void @RNA_pointer_create(ptr noundef %12, ptr noundef nonnull @RNA_AnimData, ptr noundef %14, ptr noundef nonnull %6) #8
  %15 = call ptr @RNA_struct_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.14) #8
  %16 = call zeroext i8 @id_single_user(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef %15) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  br label %17

17:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @singleuser_world_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca %struct.PointerRNA, align 8
  %7 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @RNA_id_pointer_create(ptr noundef %12, ptr noundef nonnull %6) #8
  %13 = call ptr @RNA_struct_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.70) #8
  %14 = call zeroext i8 @id_single_user(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef %13) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  br label %15

15:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @id_fake_user_set_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 5
  %11 = load i16, ptr %10, align 2, !tbaa !109
  %12 = and i16 %11, 512
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = or disjoint i16 %11, 512
  store i16 %15, ptr %10, align 2, !tbaa !109
  tail call void @id_us_plus(ptr noundef nonnull %7) #8
  br label %16

16:                                               ; preds = %14, %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @id_fake_user_clear_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 5
  %11 = load i16, ptr %10, align 2, !tbaa !109
  %12 = and i16 %11, 512
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = and i16 %11, -513
  store i16 %15, ptr %10, align 2, !tbaa !109
  tail call void @id_us_min(ptr noundef nonnull %7) #8
  br label %16

16:                                               ; preds = %14, %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @id_select_linked_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  tail call void @ED_object_select_linked_by_id(ptr noundef %0, ptr noundef %7) #8
  ret void
}

declare zeroext i8 @BKE_animdata_set_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @id_single_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare void @ED_object_select_linked_by_id(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_do_id_set_operation(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %58, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %9

9:                                                ; preds = %7, %55
  %10 = phi ptr [ %5, %7 ], [ %56, %55 ]
  %11 = getelementptr inbounds %struct.TreeElement, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.TreeStoreElem, ptr %12, i64 0, i32 2
  %14 = load i16, ptr %13, align 4, !tbaa !45
  %15 = and i16 %14, 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %9
  %18 = load i16, ptr %12, align 8, !tbaa !47
  %19 = sext i16 %18 to i32
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TreeElement, ptr %10, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TreeElement, ptr %23, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  br label %28

28:                                               ; preds = %21, %25
  %29 = phi ptr [ %27, %25 ], [ null, %21 ]
  %30 = icmp eq i16 %18, 15
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = icmp eq ptr %29, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %31
  %34 = load i16, ptr %29, align 8, !tbaa !47
  %35 = icmp eq i16 %34, 15
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %28
  %37 = phi ptr [ %12, %28 ], [ %29, %33 ]
  %38 = getelementptr inbounds %struct.TreeStoreElem, ptr %37, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !80
  %40 = tail call zeroext i8 @BKE_animdata_set_action(ptr noundef null, ptr noundef %39, ptr noundef %3) #8
  br label %41

41:                                               ; preds = %36, %33, %31, %17, %9
  %42 = load i16, ptr %13, align 4, !tbaa !45
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load i16, ptr %8, align 2, !tbaa !49
  %48 = and i16 %47, 4
  %49 = icmp eq i16 %48, 0
  %50 = and i32 %43, 8
  %51 = icmp eq i32 %50, 0
  %52 = or i1 %51, %49
  br i1 %52, label %55, label %53

53:                                               ; preds = %46, %41
  %54 = getelementptr inbounds %struct.TreeElement, ptr %10, i64 0, i32 3
  tail call fastcc void @outliner_do_id_set_operation(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %54, ptr noundef %3)
  br label %55

55:                                               ; preds = %46, %53
  %56 = load ptr, ptr %10, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %9, !llvm.loop !146

58:                                               ; preds = %55, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_do_data_operation(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = load ptr, ptr %3, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %11

11:                                               ; preds = %9, %38
  %12 = phi ptr [ %7, %9 ], [ %39, %38 ]
  %13 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.TreeStoreElem, ptr %14, i64 0, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !45
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %11
  %20 = load i16, ptr %14, align 8, !tbaa !47
  %21 = sext i16 %20 to i32
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void %4(i32 noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef %5) #8
  br label %24

24:                                               ; preds = %19, %23, %11
  %25 = load i16, ptr %15, align 4, !tbaa !45
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i16, ptr %10, align 2, !tbaa !49
  %31 = and i16 %30, 4
  %32 = icmp eq i16 %31, 0
  %33 = and i32 %26, 8
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %34, %32
  br i1 %35, label %38, label %36

36:                                               ; preds = %29, %24
  %37 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 3
  tail call fastcc void @outliner_do_data_operation(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %37, ptr noundef %4, ptr noundef %5)
  br label %38

38:                                               ; preds = %29, %36
  %39 = load ptr, ptr %12, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %11, !llvm.loop !147

41:                                               ; preds = %38, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clear_animdata_cb(i32 %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  tail call void @BKE_free_animdata(ptr noundef %6) #8
  ret void
}

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @unlinkact_animdata_cb(i32 %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = tail call zeroext i8 @BKE_animdata_set_action(ptr noundef null, ptr noundef %6, ptr noundef null) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @refreshdrivers_animdata_cb(i32 %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #5 {
  %5 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.IdAdtTemplate, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !144
  %9 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %4, %24
  %13 = phi ptr [ %25, %24 ], [ %10, %4 ]
  %14 = getelementptr inbounds %struct.FCurve, ptr %13, i64 0, i32 9
  %15 = load i16, ptr %14, align 8, !tbaa !148
  %16 = and i16 %15, -1025
  store i16 %16, ptr %14, align 8, !tbaa !148
  %17 = getelementptr inbounds %struct.FCurve, ptr %13, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.ChannelDriver, ptr %18, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !151
  %23 = and i32 %22, -2
  store i32 %23, ptr %21, align 4, !tbaa !151
  br label %24

24:                                               ; preds = %12, %20
  %25 = load ptr, ptr %13, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %12, !llvm.loop !153

27:                                               ; preds = %24, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cleardrivers_animdata_cb(i32 %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.IdAdtTemplate, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !144
  %9 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 5
  tail call void @free_fcurves(ptr noundef nonnull %9) #8
  ret void
}

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

declare void @free_fcurves(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pchan_cb(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #7 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  switch i32 %0, label %32 [
    i32 1, label %7
    i32 2, label %13
    i32 3, label %19
    i32 4, label %26
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  %10 = getelementptr inbounds %struct.Bone, ptr %9, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !156
  %12 = or i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !156
  br label %32

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !154
  %16 = getelementptr inbounds %struct.Bone, ptr %15, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !156
  %18 = and i32 %17, -2
  store i32 %18, ptr %16, align 8, !tbaa !156
  br label %32

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !154
  %22 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !156
  %24 = and i32 %23, -66
  %25 = or disjoint i32 %24, 64
  store i32 %25, ptr %22, align 8, !tbaa !156
  br label %32

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !154
  %29 = getelementptr inbounds %struct.Bone, ptr %28, i64 0, i32 10
  %30 = load i32, ptr %29, align 8, !tbaa !156
  %31 = and i32 %30, -65
  store i32 %31, ptr %29, align 8, !tbaa !156
  br label %32

32:                                               ; preds = %4, %13, %26, %19, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @bone_cb(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #7 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  switch i32 %0, label %24 [
    i32 1, label %7
    i32 2, label %11
    i32 3, label %15
    i32 4, label %20
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Bone, ptr %6, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !156
  %10 = or i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !156
  br label %24

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Bone, ptr %6, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !156
  %14 = and i32 %13, -2
  store i32 %14, ptr %12, align 8, !tbaa !156
  br label %24

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.Bone, ptr %6, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !156
  %18 = and i32 %17, -66
  %19 = or disjoint i32 %18, 64
  store i32 %19, ptr %16, align 8, !tbaa !156
  br label %24

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.Bone, ptr %6, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !156
  %23 = and i32 %22, -65
  store i32 %23, ptr %21, align 8, !tbaa !156
  br label %24

24:                                               ; preds = %4, %11, %20, %15, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ebone_cb(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #7 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  switch i32 %0, label %24 [
    i32 1, label %7
    i32 2, label %11
    i32 3, label %15
    i32 4, label %20
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !158
  %10 = or i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !158
  br label %24

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %13 = load i32, ptr %12, align 4, !tbaa !158
  %14 = and i32 %13, -2
  store i32 %14, ptr %12, align 4, !tbaa !158
  br label %24

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !158
  %18 = and i32 %17, -1026
  %19 = or disjoint i32 %18, 1024
  store i32 %19, ptr %16, align 4, !tbaa !158
  br label %24

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !158
  %23 = and i32 %22, -1025
  store i32 %23, ptr %21, align 4, !tbaa !158
  br label %24

24:                                               ; preds = %4, %11, %20, %15, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sequence_cb(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #8
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  %11 = tail call i32 @BLI_findindex(ptr noundef %10, ptr noundef %6) #8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @ED_sequencer_select_sequence_single(ptr noundef %3, ptr noundef %6, i8 noundef zeroext 1) #8
  br label %14

14:                                               ; preds = %8, %13, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @data_select_linked_cb(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3) #0 {
  %5 = icmp eq i32 %0, 5
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 13, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !162
  %9 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef %8) #8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 13, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !163
  tail call void @ED_object_select_linked_by_id(ptr noundef %3, ptr noundef %13) #8
  br label %14

14:                                               ; preds = %6, %11, %4
  ret void
}

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_sequencer_select_sequence_single(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_is_ID(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @do_outliner_operation_event(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = tail call ptr @CTX_wm_reports(ptr noundef %0) #8
  %11 = getelementptr inbounds float, ptr %4, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !164
  %13 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !165
  %15 = sitofp i32 %14 to float
  %16 = fcmp ogt float %12, %15
  br i1 %16, label %17, label %76

17:                                               ; preds = %5
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !166
  %19 = sext i16 %18 to i32
  %20 = add nsw i32 %14, %19
  %21 = sitofp i32 %20 to float
  %22 = fcmp olt float %12, %21
  br i1 %22, label %23, label %76

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4, !tbaa !73
  %24 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  %26 = getelementptr inbounds %struct.TreeStoreElem, ptr %25, i64 0, i32 2
  %27 = load i16, ptr %26, align 4, !tbaa !45
  %28 = and i16 %27, 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 7
  %32 = tail call i32 @outliner_has_one_flag(ptr noundef %2, ptr noundef nonnull %31, i16 noundef signext 2, i32 noundef 1) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @outliner_set_flag(ptr noundef %2, ptr noundef nonnull %31, i16 noundef signext 2, i16 noundef signext 0) #8
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i16, ptr %26, align 4, !tbaa !45
  %37 = or i16 %36, 2
  store i16 %37, ptr %26, align 4, !tbaa !45
  %38 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 13
  %39 = load i16, ptr %38, align 4, !tbaa !170
  %40 = or i16 %39, 2
  store i16 %40, ptr %38, align 4, !tbaa !170
  tail call void @ED_region_tag_redraw(ptr noundef %1) #8
  br label %41

41:                                               ; preds = %35, %23
  %42 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 7
  call fastcc void @set_operation_types(ptr noundef %2, ptr noundef nonnull %42, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %43 = load i32, ptr %6, align 4, !tbaa !73
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %41
  %46 = load i32, ptr %7, align 4, !tbaa !73
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.1, i16 noundef signext 1, ptr noundef null) #8
  br label %75

50:                                               ; preds = %45
  %51 = load i32, ptr %8, align 4, !tbaa !73
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = icmp eq i32 %51, -1
  %55 = load i32, ptr %9, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  tail call void @BKE_report(ptr noundef %10, i32 noundef 16, ptr noundef nonnull @.str.101) #8
  br label %75

59:                                               ; preds = %53
  %60 = icmp eq i32 %51, 21063
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.6, i16 noundef signext 1, ptr noundef null) #8
  br label %75

63:                                               ; preds = %59
  %64 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.9, i16 noundef signext 1, ptr noundef null) #8
  br label %75

65:                                               ; preds = %50
  %66 = load i32, ptr %9, align 4
  switch i32 %66, label %70 [
    i32 0, label %75
    i32 -1, label %67
    i32 15, label %68
    i32 16, label %75
  ]

67:                                               ; preds = %65
  tail call void @BKE_report(ptr noundef %10, i32 noundef 16, ptr noundef nonnull @.str.101) #8
  br label %75

68:                                               ; preds = %65
  %69 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.17, i16 noundef signext 1, ptr noundef null) #8
  br label %75

70:                                               ; preds = %65
  %71 = add i32 %66, -19
  %72 = icmp ult i32 %71, 3
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.20, i16 noundef signext 1, ptr noundef null) #8
  br label %75

75:                                               ; preds = %65, %65, %48, %68, %73, %70, %67, %58, %63, %61, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %85

76:                                               ; preds = %17, %5
  %77 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 3
  br label %78

78:                                               ; preds = %82, %76
  %79 = phi ptr [ %77, %76 ], [ %80, %82 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = tail call fastcc i32 @do_outliner_operation_event(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %80, ptr noundef %4)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %78, label %85, !llvm.loop !171

85:                                               ; preds = %78, %82, %75
  %86 = phi i32 [ 1, %75 ], [ 1, %82 ], [ 0, %78 ]
  ret i32 %86
}

declare i32 @outliner_has_one_flag(ptr noundef, ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #2

declare void @outliner_set_flag(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 48}
!39 = !{!"TreeElement", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !41, i64 40, !41, i64 44, !35, i64 48, !42, i64 56, !42, i64 58, !42, i64 60, !42, i64 62, !35, i64 64, !35, i64 72, !43, i64 80}
!40 = !{!"ListBase", !35, i64 0, !35, i64 8}
!41 = !{!"int", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!"PointerRNA", !44, i64 0, !35, i64 8, !35, i64 16}
!44 = !{!"", !35, i64 0}
!45 = !{!46, !42, i64 4}
!46 = !{!"TreeStoreElem", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !35, i64 8}
!47 = !{!46, !42, i64 0}
!48 = !{!39, !42, i64 60}
!49 = !{!50, !42, i64 294}
!50 = !{!"SpaceOops", !35, i64 0, !35, i64 8, !40, i64 16, !41, i64 32, !51, i64 36, !36, i64 40, !52, i64 56, !40, i64 216, !35, i64 232, !36, i64 240, !46, i64 272, !42, i64 288, !42, i64 290, !42, i64 292, !42, i64 294, !35, i64 296}
!51 = !{!"float", !36, i64 0}
!52 = !{!"View2D", !53, i64 0, !53, i64 16, !54, i64 32, !54, i64 48, !54, i64 64, !36, i64 80, !36, i64 88, !51, i64 96, !51, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !35, i64 128, !41, i64 136, !41, i64 140, !35, i64 144, !35, i64 152}
!53 = !{!"rctf", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!54 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!59, !35, i64 0}
!59 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !40, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !60, i64 152, !42, i64 184}
!60 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!61 = !{!59, !35, i64 8}
!62 = !{!59, !35, i64 24}
!63 = !{!59, !35, i64 48}
!64 = !{!59, !35, i64 32}
!65 = !{!59, !35, i64 72}
!66 = !{!59, !42, i64 184}
!67 = !{!59, !35, i64 88}
!68 = !{!59, !35, i64 104}
!69 = !{!70, !35, i64 112}
!70 = !{!"wmOperator", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 144, !35, i64 152, !42, i64 160, !36, i64 162}
!71 = !{!72, !35, i64 24}
!72 = !{!"EnumPropertyItem", !41, i64 0, !35, i64 8, !41, i64 16, !35, i64 24, !35, i64 32}
!73 = !{!41, !41, i64 0}
!74 = !{!70, !35, i64 120}
!75 = !{!76, !41, i64 192}
!76 = !{!"bAction", !77, i64 0, !40, i64 120, !40, i64 136, !40, i64 152, !40, i64 168, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196}
!77 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!78 = distinct !{!78, !56, !57}
!79 = !{!39, !35, i64 72}
!80 = !{!46, !35, i64 8}
!81 = !{!82, !35, i64 32}
!82 = !{!"Base", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !42, i64 28, !42, i64 30, !35, i64 32}
!83 = !{!84, !36, i64 1160}
!84 = !{!"Object", !77, i64 0, !35, i64 120, !35, i64 128, !42, i64 136, !42, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !85, i64 312, !35, i64 360, !40, i64 368, !40, i64 384, !40, i64 400, !40, i64 416, !41, i64 432, !41, i64 436, !35, i64 440, !35, i64 448, !41, i64 456, !41, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !51, i64 616, !51, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !41, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !51, i64 988, !51, i64 992, !51, i64 996, !51, i64 1000, !51, i64 1004, !51, i64 1008, !51, i64 1012, !51, i64 1016, !51, i64 1020, !51, i64 1024, !51, i64 1028, !51, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !51, i64 1048, !51, i64 1052, !40, i64 1056, !40, i64 1072, !40, i64 1088, !40, i64 1104, !51, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !41, i64 1144, !41, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !40, i64 1176, !40, i64 1192, !40, i64 1208, !40, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !51, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !86, i64 1304, !86, i64 1312, !41, i64 1320, !41, i64 1324, !40, i64 1328, !40, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !40, i64 1400, !35, i64 1416}
!85 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!86 = !{!"long", !36, i64 0}
!87 = !{!82, !41, i64 24}
!88 = !{!84, !42, i64 948}
!89 = !{!90, !35, i64 136}
!90 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !41, i64 128, !42, i64 132, !42, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !41, i64 160, !41, i64 164, !35, i64 168, !40, i64 176, !40, i64 192, !40, i64 208, !40, i64 224, !40, i64 240}
!91 = !{!92, !35, i64 176}
!92 = !{!"Scene", !77, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !40, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !42, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !93, i64 280, !100, i64 4264, !40, i64 4296, !40, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !42, i64 4376, !42, i64 4378, !41, i64 4380, !40, i64 4384, !101, i64 4400, !102, i64 4416, !105, i64 4600, !35, i64 4608, !106, i64 4616, !35, i64 4640, !86, i64 4648, !86, i64 4656, !95, i64 4664, !96, i64 4824, !107, i64 4888, !35, i64 4952}
!93 = !{!"RenderData", !94, i64 0, !35, i64 248, !35, i64 256, !97, i64 264, !98, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !51, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !42, i64 432, !42, i64 434, !51, i64 436, !51, i64 440, !51, i64 444, !51, i64 448, !51, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !41, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !41, i64 484, !41, i64 488, !42, i64 492, !42, i64 494, !41, i64 496, !41, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !36, i64 514, !36, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !53, i64 544, !53, i64 560, !54, i64 576, !40, i64 592, !42, i64 608, !42, i64 610, !51, i64 612, !51, i64 616, !51, i64 620, !51, i64 624, !41, i64 628, !51, i64 632, !51, i64 636, !51, i64 640, !51, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !51, i64 660, !51, i64 664, !42, i64 668, !42, i64 670, !51, i64 672, !51, i64 676, !36, i64 680, !41, i64 1704, !42, i64 1708, !42, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !41, i64 2520, !42, i64 2524, !42, i64 2526, !51, i64 2528, !51, i64 2532, !42, i64 2536, !42, i64 2538, !51, i64 2540, !42, i64 2544, !42, i64 2546, !41, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !51, i64 2560, !51, i64 2564, !35, i64 2568, !41, i64 2576, !51, i64 2580, !36, i64 2584, !99, i64 2616, !41, i64 3976, !41, i64 3980}
!94 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !42, i64 8, !42, i64 10, !51, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !95, i64 24, !96, i64 184}
!95 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 72, !51, i64 136, !51, i64 140, !35, i64 144, !35, i64 152}
!96 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!97 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !42, i64 48, !42, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!98 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !51, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !35, i64 64}
!99 = !{!"BakeData", !94, i64 0, !36, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !51, i64 1280, !51, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!100 = !{!"AudioData", !41, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !41, i64 16, !42, i64 20, !42, i64 22, !51, i64 24, !51, i64 28}
!101 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!102 = !{!"GameData", !101, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !36, i64 34, !103, i64 40, !42, i64 64, !42, i64 66, !51, i64 68, !104, i64 72, !51, i64 128, !51, i64 132, !41, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !51, i64 164, !51, i64 168, !51, i64 172, !51, i64 176, !51, i64 180}
!103 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !51, i64 8, !51, i64 12, !35, i64 16}
!104 = !{!"RecastData", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !41, i64 40, !51, i64 44, !51, i64 48, !42, i64 52, !42, i64 54}
!105 = !{!"UnitSettings", !51, i64 0, !36, i64 4, !36, i64 5, !42, i64 6}
!106 = !{!"PhysicsSettings", !36, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!107 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!108 = !{!77, !35, i64 24}
!109 = !{!77, !42, i64 98}
!110 = !{!39, !35, i64 16}
!111 = distinct !{!111, !56, !57}
!112 = !{!42, !42, i64 0}
!113 = !{!84, !35, i64 1256}
!114 = !{!115, !35, i64 16}
!115 = !{!"GroupObject", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !42, i64 32, !36, i64 34}
!116 = !{!84, !41, i64 944}
!117 = !{!82, !41, i64 16}
!118 = distinct !{!118, !56, !57}
!119 = !{!92, !41, i64 236}
!120 = !{!84, !42, i64 952}
!121 = distinct !{!121, !56, !57}
!122 = !{!84, !41, i64 456}
!123 = !{!124, !42, i64 1366}
!124 = !{!"Mesh", !77, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !125, i64 280, !125, i64 480, !125, i64 680, !125, i64 880, !125, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !41, i64 1344, !42, i64 1348, !42, i64 1350, !51, i64 1352, !41, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !42, i64 1366, !35, i64 1368}
!125 = !{!"CustomData", !35, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !35, i64 184, !35, i64 192}
!126 = !{!127, !42, i64 266}
!127 = !{!"Curve", !77, i64 0, !35, i64 120, !35, i64 128, !40, i64 136, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !42, i64 244, !42, i64 246, !42, i64 248, !42, i64 250, !51, i64 252, !51, i64 256, !41, i64 260, !42, i64 264, !42, i64 266, !41, i64 268, !51, i64 272, !51, i64 276, !51, i64 280, !42, i64 284, !42, i64 286, !42, i64 288, !42, i64 290, !41, i64 292, !41, i64 296, !36, i64 300, !42, i64 304, !36, i64 306, !36, i64 307, !51, i64 308, !51, i64 312, !51, i64 316, !51, i64 320, !51, i64 324, !51, i64 328, !51, i64 332, !51, i64 336, !51, i64 340, !51, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !35, i64 368, !35, i64 376, !36, i64 384, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !35, i64 480, !41, i64 488, !41, i64 492, !35, i64 496, !128, i64 504, !51, i64 512, !51, i64 516, !51, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!128 = !{!"CharInfo", !42, i64 0, !42, i64 2, !36, i64 4, !36, i64 5, !42, i64 6}
!129 = !{!130, !42, i64 186}
!130 = !{!"MetaBall", !77, i64 0, !35, i64 120, !40, i64 128, !40, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 185, !42, i64 186, !42, i64 188, !42, i64 190, !36, i64 192, !36, i64 204, !36, i64 216, !51, i64 228, !51, i64 232, !51, i64 236, !35, i64 240}
!131 = !{!39, !42, i64 58}
!132 = !{!133, !41, i64 100}
!133 = !{!"Material", !77, i64 0, !35, i64 120, !42, i64 128, !42, i64 130, !51, i64 132, !51, i64 136, !51, i64 140, !51, i64 144, !51, i64 148, !51, i64 152, !51, i64 156, !51, i64 160, !51, i64 164, !51, i64 168, !51, i64 172, !51, i64 176, !51, i64 180, !51, i64 184, !51, i64 188, !51, i64 192, !51, i64 196, !51, i64 200, !51, i64 204, !51, i64 208, !51, i64 212, !51, i64 216, !51, i64 220, !134, i64 224, !135, i64 312, !51, i64 328, !51, i64 332, !51, i64 336, !51, i64 340, !51, i64 344, !51, i64 348, !51, i64 352, !42, i64 356, !42, i64 358, !42, i64 360, !36, i64 362, !36, i64 363, !51, i64 364, !51, i64 368, !42, i64 372, !42, i64 374, !51, i64 376, !51, i64 380, !51, i64 384, !51, i64 388, !42, i64 392, !42, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !42, i64 414, !42, i64 416, !42, i64 418, !51, i64 420, !51, i64 424, !51, i64 428, !51, i64 432, !51, i64 436, !51, i64 440, !51, i64 444, !51, i64 448, !51, i64 452, !51, i64 456, !36, i64 460, !51, i64 524, !51, i64 528, !51, i64 532, !41, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !42, i64 544, !42, i64 546, !42, i64 548, !36, i64 550, !36, i64 551, !42, i64 552, !42, i64 554, !51, i64 556, !51, i64 560, !36, i64 564, !51, i64 580, !51, i64 584, !42, i64 588, !42, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !42, i64 612, !42, i64 614, !51, i64 616, !51, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !51, i64 800, !51, i64 804, !51, i64 808, !51, i64 812, !51, i64 816, !42, i64 820, !42, i64 822, !36, i64 824, !36, i64 836, !51, i64 848, !51, i64 852, !51, i64 856, !51, i64 860, !51, i64 864, !51, i64 868, !51, i64 872, !42, i64 876, !42, i64 878, !41, i64 880, !42, i64 884, !42, i64 886, !36, i64 888, !42, i64 904, !42, i64 906, !42, i64 908, !42, i64 910, !42, i64 912, !36, i64 914, !35, i64 920, !40, i64 928}
!134 = !{!"VolumeSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !51, i64 52, !51, i64 56, !51, i64 60, !42, i64 64, !42, i64 66, !42, i64 68, !42, i64 70, !51, i64 72, !51, i64 76, !51, i64 80, !51, i64 84}
!135 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!136 = distinct !{!136, !56, !57}
!137 = !{!138, !35, i64 16}
!138 = !{!"MTex", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !51, i64 116, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !42, i64 128, !42, i64 130, !36, i64 132, !36, i64 133, !51, i64 140, !51, i64 144, !51, i64 148, !51, i64 152, !51, i64 156, !51, i64 160, !51, i64 164, !51, i64 168, !51, i64 172, !51, i64 176, !51, i64 180, !51, i64 184, !51, i64 188, !51, i64 192, !51, i64 196, !51, i64 200, !51, i64 204, !51, i64 208, !51, i64 212, !51, i64 216, !51, i64 220, !51, i64 224, !51, i64 228, !51, i64 232, !51, i64 236, !51, i64 240, !51, i64 244, !51, i64 248, !51, i64 252, !51, i64 256, !51, i64 260, !51, i64 264, !51, i64 268, !51, i64 272, !51, i64 276, !51, i64 280, !51, i64 284, !51, i64 288, !51, i64 292, !51, i64 296, !51, i64 300, !51, i64 304, !51, i64 308}
!139 = !{!140, !41, i64 100}
!140 = !{!"Tex", !77, i64 0, !35, i64 120, !51, i64 128, !51, i64 132, !51, i64 136, !51, i64 140, !51, i64 144, !51, i64 148, !51, i64 152, !51, i64 156, !51, i64 160, !51, i64 164, !51, i64 168, !51, i64 172, !51, i64 176, !51, i64 180, !51, i64 184, !51, i64 188, !51, i64 192, !51, i64 196, !51, i64 200, !51, i64 204, !51, i64 208, !51, i64 212, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !51, i64 236, !51, i64 240, !51, i64 244, !51, i64 248, !41, i64 252, !41, i64 256, !42, i64 260, !42, i64 262, !42, i64 264, !42, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !51, i64 284, !51, i64 288, !51, i64 292, !141, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!141 = !{!"ImageUser", !35, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !41, i64 36}
!142 = distinct !{!142, !56, !57}
!143 = !{!92, !35, i64 136}
!144 = !{!145, !35, i64 120}
!145 = !{!"IdAdtTemplate", !77, i64 0, !35, i64 120}
!146 = distinct !{!146, !56, !57}
!147 = distinct !{!147, !56, !57}
!148 = !{!149, !42, i64 72}
!149 = !{!"FCurve", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !35, i64 48, !35, i64 56, !41, i64 64, !51, i64 68, !42, i64 72, !42, i64 74, !41, i64 76, !35, i64 80, !41, i64 88, !36, i64 92, !51, i64 104, !51, i64 108}
!150 = !{!149, !35, i64 24}
!151 = !{!152, !41, i64 292}
!152 = !{!"ChannelDriver", !40, i64 0, !36, i64 16, !35, i64 272, !51, i64 280, !51, i64 284, !41, i64 288, !41, i64 292}
!153 = distinct !{!153, !56, !57}
!154 = !{!155, !35, i64 120}
!155 = !{!"bPoseChannel", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !36, i64 40, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !36, i64 112, !36, i64 113, !36, i64 114, !35, i64 120, !35, i64 128, !35, i64 136, !40, i64 144, !40, i64 160, !35, i64 176, !35, i64 184, !35, i64 192, !36, i64 200, !36, i64 212, !36, i64 224, !36, i64 236, !36, i64 252, !51, i64 264, !42, i64 268, !42, i64 270, !36, i64 272, !36, i64 336, !36, i64 400, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !51, i64 524, !51, i64 528, !51, i64 532, !35, i64 536}
!156 = !{!157, !41, i64 176}
!157 = !{!"Bone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 48, !51, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !41, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !51, i64 268, !51, i64 272, !51, i64 276, !51, i64 280, !51, i64 284, !51, i64 288, !51, i64 292, !51, i64 296, !51, i64 300, !51, i64 304, !36, i64 308, !41, i64 320, !42, i64 324, !36, i64 326}
!158 = !{!159, !41, i64 132}
!159 = !{!"EditBone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !51, i64 104, !36, i64 108, !36, i64 120, !41, i64 132, !41, i64 136, !51, i64 140, !51, i64 144, !51, i64 148, !51, i64 152, !51, i64 156, !51, i64 160, !51, i64 164, !51, i64 168, !51, i64 172, !51, i64 176, !42, i64 180}
!160 = !{!161, !35, i64 0}
!161 = !{!"Editing", !35, i64 0, !40, i64 8, !40, i64 24, !35, i64 40, !36, i64 48, !36, i64 1072, !41, i64 2096, !41, i64 2100, !41, i64 2104, !41, i64 2108, !53, i64 2112}
!162 = !{!39, !35, i64 88}
!163 = !{!39, !35, i64 96}
!164 = !{!51, !51, i64 0}
!165 = !{!39, !41, i64 44}
!166 = !{!167, !42, i64 8948}
!167 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !41, i64 8468, !42, i64 8472, !42, i64 8474, !42, i64 8476, !42, i64 8478, !42, i64 8480, !42, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !42, i64 8496, !42, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !42, i64 8528, !42, i64 8530, !42, i64 8532, !42, i64 8534, !40, i64 8536, !40, i64 8552, !40, i64 8568, !40, i64 8584, !40, i64 8600, !40, i64 8616, !40, i64 8632, !36, i64 8648, !42, i64 8712, !42, i64 8714, !42, i64 8716, !42, i64 8718, !42, i64 8720, !42, i64 8722, !42, i64 8724, !42, i64 8726, !36, i64 8728, !42, i64 8896, !42, i64 8898, !42, i64 8900, !42, i64 8902, !42, i64 8904, !42, i64 8906, !42, i64 8908, !42, i64 8910, !41, i64 8912, !41, i64 8916, !42, i64 8920, !42, i64 8922, !42, i64 8924, !42, i64 8926, !42, i64 8928, !42, i64 8930, !42, i64 8932, !42, i64 8934, !42, i64 8936, !42, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !42, i64 8944, !42, i64 8946, !42, i64 8948, !42, i64 8950, !42, i64 8952, !42, i64 8954, !51, i64 8956, !51, i64 8960, !41, i64 8964, !42, i64 8968, !42, i64 8970, !51, i64 8972, !42, i64 8976, !42, i64 8978, !42, i64 8980, !42, i64 8982, !168, i64 8984, !36, i64 9760, !36, i64 9772, !42, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !41, i64 10896, !41, i64 10900, !51, i64 10904, !51, i64 10908, !41, i64 10912, !42, i64 10916, !42, i64 10918, !42, i64 10920, !42, i64 10922, !42, i64 10924, !42, i64 10926, !169, i64 10928}
!168 = !{!"ColorBand", !42, i64 0, !42, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!169 = !{!"WalkNavigation", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !42, i64 24, !36, i64 26}
!170 = !{!50, !42, i64 292}
!171 = distinct !{!171, !56, !57}
