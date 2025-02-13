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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @outliner_do_object_operation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %3, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %52, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 14
  br label %10

10:                                               ; preds = %8, %49
  %11 = phi ptr [ %6, %8 ], [ %50, %49 ]
  %12 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.TreeStoreElem, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 4, !tbaa !16
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %10
  %19 = load i16, ptr %13, align 8, !tbaa !18
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 9
  %23 = load i16, ptr %22, align 4, !tbaa !19
  %24 = icmp eq i16 %23, 16975
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = tail call ptr @outliner_search_back(ptr noundef %2, ptr noundef nonnull %11, i16 noundef signext 17235) #8
  %27 = icmp eq ptr %26, null
  %28 = icmp eq ptr %26, %1
  %29 = or i1 %27, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @CTX_wm_screen(ptr noundef %0) #8
  tail call void @ED_screen_set_scene(ptr noundef %0, ptr noundef %31, ptr noundef nonnull %26) #8
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi ptr [ %26, %30 ], [ %1, %25 ]
  tail call void %4(ptr noundef %0, ptr noundef %33, ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull %13) #8
  %34 = load i16, ptr %14, align 4, !tbaa !16
  br label %35

35:                                               ; preds = %18, %21, %32, %10
  %36 = phi i16 [ %15, %18 ], [ %15, %21 ], [ %34, %32 ], [ %15, %10 ]
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load i16, ptr %9, align 2, !tbaa !20
  %42 = and i16 %41, 4
  %43 = icmp eq i16 %42, 0
  %44 = and i32 %37, 8
  %45 = icmp eq i32 %44, 0
  %46 = or i1 %45, %43
  br i1 %46, label %49, label %47

47:                                               ; preds = %40, %35
  %48 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 3
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %48, ptr noundef %4) #9
  br label %49

49:                                               ; preds = %40, %47
  %50 = load ptr, ptr %11, align 8, !tbaa !5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %10, !llvm.loop !26

52:                                               ; preds = %49, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @outliner_search_back(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_screen_set_scene(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OUTLINER_OT_object_operation(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_object_operation_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_object_op_types, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outliner_object_operation_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !39
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
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %12, ptr noundef nonnull @object_select_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %4) #8
  br label %29

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %14, ptr noundef nonnull @object_select_hierarchy_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %4) #8
  br label %29

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %16, ptr noundef nonnull @object_deselect_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %4) #8
  br label %29

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull @object_delete_cb) #9
  tail call void @outliner_cleanup_tree(ptr noundef nonnull %5) #8
  tail call void @DAG_relations_tag_update(ptr noundef %3) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %4) #8
  br label %29

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %20, ptr noundef nonnull @id_local_cb) #9
  br label %29

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %22, ptr noundef nonnull @object_toggle_visibility_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67698688, ptr noundef %4) #8
  br label %29

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %24, ptr noundef nonnull @object_toggle_selectability_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %4) #8
  br label %29

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %26, ptr noundef nonnull @object_toggle_renderability_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67764224, ptr noundef %4) #8
  br label %29

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.SpaceOops, ptr %5, i64 0, i32 7
  tail call void @outliner_do_object_operation(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %28, ptr noundef nonnull @item_rename_cb) #9
  br label %29

29:                                               ; preds = %13, %17, %21, %25, %27, %23, %19, %15, %11
  %30 = phi ptr [ @.str.25, %11 ], [ @.str.26, %13 ], [ @.str.27, %15 ], [ @.str.28, %17 ], [ @.str.29, %19 ], [ @.str.30, %21 ], [ @.str.31, %23 ], [ @.str.32, %25 ], [ @.str.33, %27 ]
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull %30) #8
  br label %31

31:                                               ; preds = %7, %2, %29
  %32 = phi i32 [ 4, %29 ], [ 2, %2 ], [ 2, %7 ]
  ret i32 %32
}

; Function Attrs: optsize
declare i32 @ED_operator_outliner_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OUTLINER_OT_group_operation(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.5, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.6, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_group_operation_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_group_op_types, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outliner_group_operation_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.3) #8
  switch i32 %9, label %31 [
    i32 0, label %10
    i32 1, label %12
    i32 2, label %14
    i32 3, label %24
    i32 4, label %16
    i32 5, label %18
    i32 6, label %20
    i32 7, label %22
  ]

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 7
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull @unlink_group_cb) #9
  br label %27

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 7
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %13, ptr noundef nonnull @id_local_cb) #9
  br label %27

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 7
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %15, ptr noundef nonnull @group_linkobs2scene_cb) #9
  br label %27

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 7
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %17, ptr noundef nonnull @group_toggle_visibility_cb) #9
  br label %27

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 7
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %19, ptr noundef nonnull @group_toggle_selectability_cb) #9
  br label %27

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 7
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %21, ptr noundef nonnull @group_toggle_renderability_cb) #9
  br label %27

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 7
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %23, ptr noundef nonnull @item_rename_cb) #9
  br label %27

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.SpaceOops, ptr %4, i64 0, i32 7
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %25, ptr noundef nonnull @group_instance_cb) #9
  %26 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  tail call void @DAG_relations_tag_update(ptr noundef %26) #8
  br label %27

27:                                               ; preds = %10, %12, %14, %16, %18, %20, %22, %24
  %28 = zext nneg i32 %9 to i64
  %29 = getelementptr inbounds [9 x %struct.EnumPropertyItem], ptr @prop_group_op_types, i64 0, i64 %28, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !41
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef %30) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 150994944, ptr noundef null) #8
  br label %31

31:                                               ; preds = %6, %2, %27
  %32 = phi i32 [ 4, %27 ], [ 2, %2 ], [ 2, %6 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OUTLINER_OT_id_operation(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.9, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_id_operation_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_id_op_types, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outliner_id_operation_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %8 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.SpaceOops, ptr %8, i64 0, i32 7
  call fastcc void @set_operation_types(ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !39
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
  %16 = load i32, ptr %5, align 4, !tbaa !43
  switch i32 %16, label %21 [
    i32 17217, label %17
    i32 16717, label %18
    i32 17748, label %19
    i32 20311, label %20
  ]

17:                                               ; preds = %15
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @unlink_action_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.60) #8
  br label %36

18:                                               ; preds = %15
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @unlink_material_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85131264, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.61) #8
  br label %36

19:                                               ; preds = %15
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @unlink_texture_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85131264, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.62) #8
  br label %36

20:                                               ; preds = %15
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @unlink_world_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 73138176, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.63) #8
  br label %36

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  tail call void @BKE_report(ptr noundef %23, i32 noundef 16, ptr noundef nonnull @.str.64) #8
  br label %36

24:                                               ; preds = %10
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @id_local_cb) #9
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.65) #8
  br label %36

25:                                               ; preds = %10
  %26 = load i32, ptr %5, align 4, !tbaa !43
  switch i32 %26, label %29 [
    i32 17217, label %27
    i32 20311, label %28
  ]

27:                                               ; preds = %25
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @singleuser_action_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.66) #8
  br label %36

28:                                               ; preds = %25
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @singleuser_world_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 73138176, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.67) #8
  br label %36

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  tail call void @BKE_report(ptr noundef %31, i32 noundef 16, ptr noundef nonnull @.str.64) #8
  br label %36

32:                                               ; preds = %10
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @id_fake_user_set_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 301989889, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.68) #8
  br label %36

33:                                               ; preds = %10
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @id_fake_user_clear_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 301989889, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.69) #8
  br label %36

34:                                               ; preds = %10
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @item_rename_cb) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 301989889, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.49) #8
  br label %36

35:                                               ; preds = %10
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull @id_select_linked_cb) #9
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.35) #8
  br label %36

36:                                               ; preds = %10, %27, %28, %29, %17, %18, %19, %20, %21, %35, %34, %33, %32, %24
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 301989889, ptr noundef null) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252182528, ptr noundef null) #8
  br label %37

37:                                               ; preds = %2, %36
  %38 = phi i32 [ 4, %36 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OUTLINER_OT_action_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_enum_search_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_action_set_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2) #8
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @RNA_action_itemf) #8
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outliner_action_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SpaceOops, ptr %7, i64 0, i32 7
  call fastcc void @set_operation_types(ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %11 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 34
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = tail call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.14) #8
  %16 = tail call ptr @BLI_findlink(ptr noundef nonnull %12, i32 noundef %15) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  tail call void @BKE_report(ptr noundef %20, i32 noundef 32, ptr noundef nonnull @.str.80) #8
  br label %37

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.bAction, ptr %16, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !45
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %27, i32 noundef 16, ptr noundef nonnull @.str.81, ptr noundef nonnull %28) #8
  br label %29

29:                                               ; preds = %21, %25
  %30 = load i32, ptr %6, align 4, !tbaa !43
  %31 = icmp eq i32 %30, 15
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %5, align 4, !tbaa !43
  %34 = icmp eq i32 %33, 17217
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29
  %36 = phi i32 [ 15, %29 ], [ 17217, %32 ]
  tail call fastcc void @outliner_do_id_set_operation(ptr noundef nonnull %7, i32 noundef %36, ptr noundef nonnull %10, ptr noundef nonnull %16) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.82) #8
  br label %37

37:                                               ; preds = %32, %2, %35, %18
  %38 = phi i32 [ 2, %18 ], [ 4, %35 ], [ 2, %2 ], [ 2, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %38
}

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_action_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OUTLINER_OT_animdata_operation(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_animdata_operation_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_animdata_op_types, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outliner_animdata_operation_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.3) #8
  %13 = getelementptr inbounds %struct.SpaceOops, ptr %7, i64 0, i32 7
  call fastcc void @set_operation_types(ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %14 = load i32, ptr %6, align 4, !tbaa !43
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
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 15, i32 noundef 1, ptr noundef nonnull %13, ptr noundef nonnull @clear_animdata_cb, ptr noundef null) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.83) #8
  br label %25

18:                                               ; preds = %16
  %19 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.12, i16 noundef signext 1, ptr noundef null) #8
  br label %25

20:                                               ; preds = %16
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 15, i32 noundef 3, ptr noundef nonnull %13, ptr noundef nonnull @unlinkact_animdata_cb, ptr noundef null) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239730688, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.60) #8
  br label %25

21:                                               ; preds = %16
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %13, ptr noundef nonnull @refreshdrivers_animdata_cb, ptr noundef null) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599616, ptr noundef null) #8
  br label %23

22:                                               ; preds = %16
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 15, i32 noundef 5, ptr noundef nonnull %13, ptr noundef nonnull @cleardrivers_animdata_cb, ptr noundef null) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239599616, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.84) #8
  br label %23

23:                                               ; preds = %21, %22
  %24 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  tail call void @DAG_relations_tag_update(ptr noundef %24) #8
  br label %25

25:                                               ; preds = %23, %17, %18, %20, %16, %9, %2
  %26 = phi i32 [ 2, %2 ], [ 2, %9 ], [ 4, %16 ], [ 4, %20 ], [ 4, %18 ], [ 4, %17 ], [ 4, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OUTLINER_OT_data_operation(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @outliner_data_operation_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @prop_data_op_types, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outliner_data_operation_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.3) #8
  %13 = getelementptr inbounds %struct.SpaceOops, ptr %7, i64 0, i32 7
  call fastcc void @set_operation_types(ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %14 = icmp slt i32 %12, 1
  br i1 %14, label %28, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %6, align 4, !tbaa !43
  switch i32 %16, label %25 [
    i32 14, label %17
    i32 5, label %18
    i32 6, label %19
    i32 26, label %20
    i32 30, label %22
  ]

17:                                               ; preds = %15
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 14, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull @pchan_cb, ptr noundef null) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.94) #8
  br label %28

18:                                               ; preds = %15
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 5, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull @bone_cb, ptr noundef null) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.95) #8
  br label %28

19:                                               ; preds = %15
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 6, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull @ebone_cb, ptr noundef null) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #8
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.96) #8
  br label %28

20:                                               ; preds = %15
  %21 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 26, i32 noundef %12, ptr noundef nonnull %13, ptr noundef nonnull @sequence_cb, ptr noundef %21) #9
  br label %28

22:                                               ; preds = %15
  %23 = icmp eq i32 %12, 5
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  tail call fastcc void @outliner_do_data_operation(ptr noundef nonnull %7, i32 noundef 30, i32 noundef 5, ptr noundef nonnull %13, ptr noundef nonnull @data_select_linked_cb, ptr noundef %0) #9
  br label %28

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  tail call void @BKE_report(ptr noundef %27, i32 noundef 16, ptr noundef nonnull @.str.64) #8
  br label %28

28:                                               ; preds = %17, %18, %19, %20, %25, %24, %22, %9, %2
  %29 = phi i32 [ 2, %2 ], [ 2, %9 ], [ 4, %22 ], [ 4, %24 ], [ 4, %25 ], [ 4, %20 ], [ 4, %19 ], [ 4, %18 ], [ 4, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OUTLINER_OT_operation(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @outliner_operation, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_outliner_active, ptr %5, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @outliner_operation(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %7 = tail call ptr @CTX_wm_space_outliner(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %8 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 2
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = sitofp i32 %10 to float
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !43
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %8, float noundef %11, float noundef %14, ptr noundef nonnull %4, ptr noundef nonnull %15) #8
  %16 = getelementptr inbounds %struct.SpaceOops, ptr %7, i64 0, i32 7
  br label %17

17:                                               ; preds = %21, %3
  %18 = phi ptr [ %16, %3 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = call fastcc i32 @do_outliner_operation_event(ptr noundef %0, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %19, ptr noundef nonnull %4) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %17, label %24, !llvm.loop !48

24:                                               ; preds = %21, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 4
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_outliner(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @object_select_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %11) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %5, %9
  %15 = phi ptr [ %12, %9 ], [ %7, %5 ]
  %16 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 102
  %19 = load i8, ptr %18, align 8, !tbaa !53
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !57
  %25 = or i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 53
  %27 = load i16, ptr %26, align 4, !tbaa !58
  %28 = or i16 %27, 1
  store i16 %28, ptr %26, align 4, !tbaa !58
  br label %29

29:                                               ; preds = %22, %14, %9
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @object_select_hierarchy_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !43
  %13 = tail call i32 @outliner_item_do_activate(ptr noundef %0, i32 noundef %10, i32 noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @object_deselect_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %11) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %5, %9
  %15 = phi ptr [ %12, %9 ], [ %7, %5 ]
  %16 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !57
  %18 = and i32 %17, -2
  store i32 %18, ptr %16, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 53
  %22 = load i16, ptr %21, align 4, !tbaa !58
  %23 = and i16 %22, -2
  store i16 %23, ptr %21, align 4, !tbaa !58
  br label %24

24:                                               ; preds = %14, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @object_delete_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture readnone %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %11) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %5, %9
  %15 = phi ptr [ %12, %9 ], [ %7, %5 ]
  %16 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 15) #8
  br label %22

22:                                               ; preds = %21, %14
  %23 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  tail call void @ED_base_object_free_and_unlink(ptr noundef %23, ptr noundef nonnull %1, ptr noundef nonnull %15) #8
  store ptr null, ptr %6, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  store ptr null, ptr %24, align 8, !tbaa !50
  br label %25

25:                                               ; preds = %22, %9
  ret void
}

; Function Attrs: optsize
declare void @outliner_cleanup_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @id_local_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 5
  %13 = load i16, ptr %12, align 2, !tbaa !79
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = tail call zeroext i8 @id_make_local(ptr noundef nonnull %7, i8 noundef zeroext 0) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %21 = load ptr, ptr %6, align 8, !tbaa !50
  tail call void @id_clear_lib_data(ptr noundef %20, ptr noundef %21) #8
  br label %22

22:                                               ; preds = %16, %19, %11, %5
  ret void
}

; Function Attrs: optsize
declare void @object_toggle_visibility_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @object_toggle_selectability_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @object_toggle_renderability_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @item_rename_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @outliner_item_do_activate(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_base_object_free_and_unlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @id_make_local(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = load ptr, ptr %3, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 14
  br label %10

10:                                               ; preds = %8, %45
  %11 = phi ptr [ %6, %8 ], [ %46, %45 ]
  %12 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.TreeStoreElem, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 4, !tbaa !16
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %10
  %19 = load i16, ptr %13, align 8, !tbaa !18
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !80
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TreeElement, ptr %23, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  br label %28

28:                                               ; preds = %21, %25
  %29 = phi ptr [ %27, %25 ], [ null, %21 ]
  tail call void %4(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef %29, ptr noundef nonnull %13) #8
  %30 = load i16, ptr %14, align 4, !tbaa !16
  br label %31

31:                                               ; preds = %18, %28, %10
  %32 = phi i16 [ %15, %18 ], [ %30, %28 ], [ %15, %10 ]
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load i16, ptr %9, align 2, !tbaa !20
  %38 = and i16 %37, 4
  %39 = icmp eq i16 %38, 0
  %40 = and i32 %33, 8
  %41 = icmp eq i32 %40, 0
  %42 = or i1 %41, %39
  br i1 %42, label %45, label %43

43:                                               ; preds = %36, %31
  %44 = getelementptr inbounds %struct.TreeElement, ptr %11, i64 0, i32 3
  tail call fastcc void @outliner_do_libdata_operation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %44, ptr noundef %4) #9
  br label %45

45:                                               ; preds = %36, %43
  %46 = load ptr, ptr %11, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %10, !llvm.loop !81

48:                                               ; preds = %45, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @unlink_group_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !82
  %12 = icmp eq i16 %11, 16975
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 112
  store ptr null, ptr %14, align 8, !tbaa !83
  br label %18

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  tail call void @BKE_group_unlink(ptr noundef %17) #8
  br label %18

18:                                               ; preds = %7, %13, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @group_linkobs2scene_cb(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.Group, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  br label %13

13:                                               ; preds = %11, %41
  %14 = phi ptr [ %9, %11 ], [ %42, %41 ]
  %15 = getelementptr inbounds %struct.GroupObject, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %16) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 53
  %23 = load i16, ptr %22, align 4, !tbaa !58
  %24 = or i16 %23, 1
  store i16 %24, ptr %22, align 4, !tbaa !58
  %25 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !57
  %27 = or i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !57
  br label %41

28:                                               ; preds = %13
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %30 = tail call ptr %29(i64 noundef 40, ptr noundef nonnull @.str.50) #8
  tail call void @BLI_addhead(ptr noundef nonnull %12, ptr noundef %30) #8
  %31 = load ptr, ptr %15, align 8, !tbaa !84
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 52
  %33 = load i32, ptr %32, align 8, !tbaa !86
  %34 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 2
  store i32 %33, ptr %34, align 8, !tbaa !87
  %35 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 53
  %36 = load i16, ptr %35, align 4, !tbaa !58
  %37 = or i16 %36, 1
  store i16 %37, ptr %35, align 4, !tbaa !58
  %38 = sext i16 %37 to i32
  %39 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 4
  store i32 %38, ptr %39, align 8, !tbaa !57
  %40 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 7
  store ptr %31, ptr %40, align 8, !tbaa !51
  tail call void @id_lib_extern(ptr noundef %31) #8
  br label %41

41:                                               ; preds = %19, %28
  %42 = load ptr, ptr %14, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %13, !llvm.loop !88

44:                                               ; preds = %41, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @group_instance_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 8
  %9 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 13
  %10 = load i32, ptr %9, align 4, !tbaa !89
  %11 = tail call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 0, i32 noundef %10) #8
  %12 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4, i64 2
  tail call void @rename_id(ptr noundef %11, ptr noundef nonnull %12) #8
  %13 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 112
  store ptr %7, ptr %13, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 55
  %15 = load i16, ptr %14, align 8, !tbaa !90
  %16 = or i16 %15, 256
  store i16 %16, ptr %14, align 8, !tbaa !90
  tail call void @id_lib_extern(ptr noundef %7) #8
  ret void
}

; Function Attrs: optsize
declare void @group_toggle_visibility_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @group_toggle_selectability_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @group_toggle_renderability_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @BKE_group_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_object_add_type(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rename_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_operation_types(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #4 {
  %7 = load ptr, ptr %1, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %61, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %11

11:                                               ; preds = %9, %58
  %12 = phi ptr [ %7, %9 ], [ %59, %58 ]
  %13 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.TreeStoreElem, ptr %14, i64 0, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !16
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %11
  %20 = load i16, ptr %14, align 8, !tbaa !18
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %5, align 4, !tbaa !43
  %24 = icmp eq i32 %23, 0
  %25 = sext i16 %20 to i32
  br i1 %24, label %26, label %27

26:                                               ; preds = %22
  store i32 %25, ptr %5, align 4, !tbaa !43
  br label %45

27:                                               ; preds = %22
  %28 = icmp eq i32 %23, %25
  br i1 %28, label %45, label %29

29:                                               ; preds = %27
  store i32 -1, ptr %5, align 4, !tbaa !43
  br label %45

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.TreeStoreElem, ptr %14, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 4
  %34 = load i16, ptr %33, align 8, !tbaa !82
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
  store i32 1, ptr %2, align 4, !tbaa !43
  br label %45

37:                                               ; preds = %30
  store i32 1, ptr %3, align 4, !tbaa !43
  br label %45

38:                                               ; preds = %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30
  %39 = load i32, ptr %4, align 4, !tbaa !43
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 %35, ptr %4, align 4, !tbaa !43
  br label %45

42:                                               ; preds = %38
  %43 = icmp eq i32 %39, %35
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  store i32 -1, ptr %4, align 4, !tbaa !43
  br label %45

45:                                               ; preds = %36, %37, %30, %42, %44, %41, %27, %29, %26, %11
  %46 = zext i16 %16 to i32
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load i16, ptr %10, align 2, !tbaa !20
  %51 = and i16 %50, 4
  %52 = icmp eq i16 %51, 0
  %53 = and i32 %46, 8
  %54 = icmp eq i32 %53, 0
  %55 = or i1 %54, %52
  br i1 %55, label %58, label %56

56:                                               ; preds = %49, %45
  %57 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 3
  tail call fastcc void @set_operation_types(ptr noundef %0, ptr noundef nonnull %57, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #9
  br label %58

58:                                               ; preds = %49, %56
  %59 = load ptr, ptr %12, align 8, !tbaa !5
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %11, !llvm.loop !91

61:                                               ; preds = %58, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @unlink_action_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #0 {
  %6 = tail call ptr @CTX_wm_reports(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call zeroext i8 @BKE_animdata_set_action(ptr noundef %6, ptr noundef %8, ptr noundef null) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @unlink_material_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #5 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !82
  switch i16 %9, label %56 [
    i16 16975, label %10
    i16 17741, label %14
    i16 21827, label %19
    i16 16973, label %24
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 31
  %12 = load i32, ptr %11, align 8, !tbaa !92
  %13 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 29
  br label %29

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 47
  %16 = load i16, ptr %15, align 2, !tbaa !93
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 5
  br label %29

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 22
  %21 = load i16, ptr %20, align 2, !tbaa !96
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 10
  br label %29

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 9
  %26 = load i16, ptr %25, align 2, !tbaa !99
  %27 = sext i16 %26 to i32
  %28 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 6
  br label %29

29:                                               ; preds = %14, %24, %19, %10
  %30 = phi i32 [ %12, %10 ], [ %17, %14 ], [ %22, %19 ], [ %27, %24 ]
  %31 = phi ptr [ %13, %10 ], [ %18, %14 ], [ %23, %19 ], [ %28, %24 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = icmp ne ptr %32, null
  %34 = icmp sgt i32 %30, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 8
  %38 = load i16, ptr %37, align 2, !tbaa !101
  %39 = sext i16 %38 to i64
  %40 = and i64 %39, 4294967295
  %41 = zext nneg i32 %30 to i64
  %42 = getelementptr inbounds ptr, ptr %32, i64 %40
  br label %43

43:                                               ; preds = %36, %53
  %44 = phi i64 [ 0, %36 ], [ %54, %53 ]
  %45 = icmp eq i64 %44, %40
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load ptr, ptr %42, align 8, !tbaa !5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ID, ptr %47, i64 0, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !102
  %52 = add nsw i32 %51, -1
  store i32 %52, ptr %50, align 4, !tbaa !102
  store ptr null, ptr %42, align 8, !tbaa !5
  br label %53

53:                                               ; preds = %43, %46, %49
  %54 = add nuw nsw i64 %44, 1
  %55 = icmp eq i64 %54, %41
  br i1 %55, label %56, label %43, !llvm.loop !106

56:                                               ; preds = %53, %5, %29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @unlink_texture_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture readnone %4) #5 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !82
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
  %21 = load i16, ptr %20, align 2, !tbaa !101
  %22 = sext i16 %21 to i64
  %23 = and i64 %22, 4294967295
  %24 = getelementptr inbounds ptr, ptr %19, i64 %23
  br label %25

25:                                               ; preds = %18, %39
  %26 = phi i64 [ 0, %18 ], [ %40, %39 ]
  %27 = icmp eq i64 %26, %23
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load ptr, ptr %24, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.MTex, ptr %29, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !107
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !109
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr %36, align 4, !tbaa !109
  store ptr null, ptr %32, align 8, !tbaa !107
  br label %39

39:                                               ; preds = %25, %28, %35, %31
  %40 = add nuw nsw i64 %26, 1
  %41 = icmp eq i64 %40, 18
  br i1 %41, label %42, label %25, !llvm.loop !112

42:                                               ; preds = %39, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @unlink_world_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  tail call void @id_us_min(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 3
  store ptr null, ptr %10, align 8, !tbaa !113
  ret void
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @singleuser_action_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca %struct.PointerRNA, align 8
  %7 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %13 = getelementptr inbounds %struct.IdAdtTemplate, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  call void @RNA_pointer_create(ptr noundef %12, ptr noundef nonnull @RNA_AnimData, ptr noundef %14, ptr noundef nonnull %6) #8
  %15 = call ptr @RNA_struct_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.14) #8
  %16 = call zeroext i8 @id_single_user(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef %15) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  br label %17

17:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @singleuser_world_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca %struct.PointerRNA, align 8
  %7 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.TreeStoreElem, ptr %3, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @RNA_id_pointer_create(ptr noundef %12, ptr noundef nonnull %6) #8
  %13 = call ptr @RNA_struct_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.70) #8
  %14 = call zeroext i8 @id_single_user(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef %13) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  br label %15

15:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @id_fake_user_set_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 5
  %11 = load i16, ptr %10, align 2, !tbaa !79
  %12 = and i16 %11, 512
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = or disjoint i16 %11, 512
  store i16 %15, ptr %10, align 2, !tbaa !79
  tail call void @id_us_plus(ptr noundef nonnull %7) #8
  br label %16

16:                                               ; preds = %14, %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @id_fake_user_clear_cb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 5
  %11 = load i16, ptr %10, align 2, !tbaa !79
  %12 = and i16 %11, 512
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = and i16 %11, -513
  store i16 %15, ptr %10, align 2, !tbaa !79
  tail call void @id_us_min(ptr noundef nonnull %7) #8
  br label %16

16:                                               ; preds = %14, %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @id_select_linked_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.TreeStoreElem, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  tail call void @ED_object_select_linked_by_id(ptr noundef %0, ptr noundef %7) #8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_animdata_set_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @id_single_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_object_select_linked_by_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_do_id_set_operation(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %9

9:                                                ; preds = %7, %45
  %10 = phi ptr [ %5, %7 ], [ %46, %45 ]
  %11 = getelementptr inbounds %struct.TreeElement, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.TreeStoreElem, ptr %12, i64 0, i32 2
  %14 = load i16, ptr %13, align 4, !tbaa !16
  %15 = and i16 %14, 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %9
  %18 = load i16, ptr %12, align 8, !tbaa !18
  %19 = sext i16 %18 to i32
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TreeElement, ptr %10, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !80
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TreeElement, ptr %23, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  br label %28

28:                                               ; preds = %21, %25
  %29 = phi ptr [ %27, %25 ], [ null, %21 ]
  tail call fastcc void @actionset_id_cb(ptr nonnull poison, ptr noundef nonnull %12, ptr noundef %29, ptr noundef %3) #9
  %30 = load i16, ptr %13, align 4, !tbaa !16
  br label %31

31:                                               ; preds = %17, %28, %9
  %32 = phi i16 [ %14, %17 ], [ %30, %28 ], [ %14, %9 ]
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load i16, ptr %8, align 2, !tbaa !20
  %38 = and i16 %37, 4
  %39 = icmp eq i16 %38, 0
  %40 = and i32 %33, 8
  %41 = icmp eq i32 %40, 0
  %42 = or i1 %41, %39
  br i1 %42, label %45, label %43

43:                                               ; preds = %36, %31
  %44 = getelementptr inbounds %struct.TreeElement, ptr %10, i64 0, i32 3
  tail call fastcc void @outliner_do_id_set_operation(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %44, ptr noundef %3) #9
  br label %45

45:                                               ; preds = %36, %43
  %46 = load ptr, ptr %10, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %9, !llvm.loop !116

48:                                               ; preds = %45, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @actionset_id_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i16, ptr %1, align 8, !tbaa !18
  %6 = icmp eq i16 %5, 15
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %2, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %7
  %10 = load i16, ptr %2, align 8, !tbaa !18
  %11 = icmp eq i16 %10, 15
  br i1 %11, label %12, label %17

12:                                               ; preds = %9, %4
  %13 = phi ptr [ %1, %4 ], [ %2, %9 ]
  %14 = getelementptr inbounds %struct.TreeStoreElem, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = tail call zeroext i8 @BKE_animdata_set_action(ptr noundef null, ptr noundef %15, ptr noundef %3) #8
  br label %17

17:                                               ; preds = %12, %7, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_do_data_operation(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = load ptr, ptr %3, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %11

11:                                               ; preds = %9, %39
  %12 = phi ptr [ %7, %9 ], [ %40, %39 ]
  %13 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.TreeStoreElem, ptr %14, i64 0, i32 2
  %16 = load i16, ptr %15, align 4, !tbaa !16
  %17 = and i16 %16, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = load i16, ptr %14, align 8, !tbaa !18
  %21 = sext i16 %20 to i32
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  tail call void %4(i32 noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef %5) #8
  %24 = load i16, ptr %15, align 4, !tbaa !16
  br label %25

25:                                               ; preds = %19, %23, %11
  %26 = phi i16 [ %16, %19 ], [ %24, %23 ], [ %16, %11 ]
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load i16, ptr %10, align 2, !tbaa !20
  %32 = and i16 %31, 4
  %33 = icmp eq i16 %32, 0
  %34 = and i32 %27, 8
  %35 = icmp eq i32 %34, 0
  %36 = or i1 %35, %33
  br i1 %36, label %39, label %37

37:                                               ; preds = %30, %25
  %38 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 3
  tail call fastcc void @outliner_do_data_operation(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %38, ptr noundef %4, ptr noundef %5) #9
  br label %39

39:                                               ; preds = %30, %37
  %40 = load ptr, ptr %12, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %11, !llvm.loop !117

42:                                               ; preds = %39, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clear_animdata_cb(i32 %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  tail call void @BKE_free_animdata(ptr noundef %6) #8
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @unlinkact_animdata_cb(i32 %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = tail call zeroext i8 @BKE_animdata_set_action(ptr noundef null, ptr noundef %6, ptr noundef null) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @refreshdrivers_animdata_cb(i32 %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #5 {
  %5 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.IdAdtTemplate, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  %9 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %4, %24
  %13 = phi ptr [ %25, %24 ], [ %10, %4 ]
  %14 = getelementptr inbounds %struct.FCurve, ptr %13, i64 0, i32 9
  %15 = load i16, ptr %14, align 8, !tbaa !118
  %16 = and i16 %15, -1025
  store i16 %16, ptr %14, align 8, !tbaa !118
  %17 = getelementptr inbounds %struct.FCurve, ptr %13, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !120
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.ChannelDriver, ptr %18, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !121
  %23 = and i32 %22, -2
  store i32 %23, ptr %21, align 4, !tbaa !121
  br label %24

24:                                               ; preds = %12, %20
  %25 = load ptr, ptr %13, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %12, !llvm.loop !123

27:                                               ; preds = %24, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @cleardrivers_animdata_cb(i32 %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.TreeStoreElem, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.IdAdtTemplate, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  %9 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 5
  tail call void @free_fcurves(ptr noundef nonnull %9) #8
  ret void
}

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_fcurves(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pchan_cb(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #7 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  switch i32 %0, label %32 [
    i32 1, label %7
    i32 2, label %13
    i32 3, label %19
    i32 4, label %26
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = getelementptr inbounds %struct.Bone, ptr %9, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !126
  %12 = or i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !126
  br label %32

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = getelementptr inbounds %struct.Bone, ptr %15, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !126
  %18 = and i32 %17, -2
  store i32 %18, ptr %16, align 8, !tbaa !126
  br label %32

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !124
  %22 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !126
  %24 = and i32 %23, -66
  %25 = or disjoint i32 %24, 64
  store i32 %25, ptr %22, align 8, !tbaa !126
  br label %32

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !124
  %29 = getelementptr inbounds %struct.Bone, ptr %28, i64 0, i32 10
  %30 = load i32, ptr %29, align 8, !tbaa !126
  %31 = and i32 %30, -65
  store i32 %31, ptr %29, align 8, !tbaa !126
  br label %32

32:                                               ; preds = %4, %13, %26, %19, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @bone_cb(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #7 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  switch i32 %0, label %24 [
    i32 1, label %7
    i32 2, label %11
    i32 3, label %15
    i32 4, label %20
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Bone, ptr %6, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = or i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !126
  br label %24

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Bone, ptr %6, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !126
  %14 = and i32 %13, -2
  store i32 %14, ptr %12, align 8, !tbaa !126
  br label %24

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.Bone, ptr %6, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !126
  %18 = and i32 %17, -66
  %19 = or disjoint i32 %18, 64
  store i32 %19, ptr %16, align 8, !tbaa !126
  br label %24

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.Bone, ptr %6, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !126
  %23 = and i32 %22, -65
  store i32 %23, ptr %21, align 8, !tbaa !126
  br label %24

24:                                               ; preds = %4, %11, %20, %15, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ebone_cb(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #7 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  switch i32 %0, label %24 [
    i32 1, label %7
    i32 2, label %11
    i32 3, label %15
    i32 4, label %20
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !128
  %10 = or i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !128
  br label %24

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %13 = load i32, ptr %12, align 4, !tbaa !128
  %14 = and i32 %13, -2
  store i32 %14, ptr %12, align 4, !tbaa !128
  br label %24

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !128
  %18 = and i32 %17, -1026
  %19 = or disjoint i32 %18, 1024
  store i32 %19, ptr %16, align 4, !tbaa !128
  br label %24

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !128
  %23 = and i32 %22, -1025
  store i32 %23, ptr %21, align 4, !tbaa !128
  br label %24

24:                                               ; preds = %4, %11, %20, %15, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequence_cb(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %3, i8 noundef zeroext 0) #8
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  %11 = tail call i32 @BLI_findindex(ptr noundef %10, ptr noundef %6) #8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @ED_sequencer_select_sequence_single(ptr noundef %3, ptr noundef %6, i8 noundef zeroext 1) #8
  br label %14

14:                                               ; preds = %8, %13, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @data_select_linked_cb(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3) #0 {
  %5 = icmp eq i32 %0, 5
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 13, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !132
  %9 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef %8) #8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 13, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !133
  tail call void @ED_object_select_linked_by_id(ptr noundef %3, ptr noundef %13) #8
  br label %14

14:                                               ; preds = %6, %11, %4
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_sequencer_select_sequence_single(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_ID(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @do_outliner_operation_event(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = tail call ptr @CTX_wm_reports(ptr noundef %0) #8
  %11 = getelementptr inbounds float, ptr %4, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !134
  %13 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !135
  %15 = sitofp i32 %14 to float
  %16 = fcmp ogt float %12, %15
  br i1 %16, label %17, label %76

17:                                               ; preds = %5
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !136
  %19 = sext i16 %18 to i32
  %20 = add nsw i32 %14, %19
  %21 = sitofp i32 %20 to float
  %22 = fcmp olt float %12, %21
  br i1 %22, label %23, label %76

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store i32 0, ptr %9, align 4, !tbaa !43
  %24 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.TreeStoreElem, ptr %25, i64 0, i32 2
  %27 = load i16, ptr %26, align 4, !tbaa !16
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
  %36 = load i16, ptr %26, align 4, !tbaa !16
  %37 = or i16 %36, 2
  store i16 %37, ptr %26, align 4, !tbaa !16
  %38 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 13
  %39 = load i16, ptr %38, align 4, !tbaa !140
  %40 = or i16 %39, 2
  store i16 %40, ptr %38, align 4, !tbaa !140
  tail call void @ED_region_tag_redraw(ptr noundef %1) #8
  br label %41

41:                                               ; preds = %35, %23
  %42 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 7
  call fastcc void @set_operation_types(ptr noundef %2, ptr noundef nonnull %42, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  %43 = load i32, ptr %6, align 4, !tbaa !43
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %41
  %46 = load i32, ptr %7, align 4, !tbaa !43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.1, i16 noundef signext 1, ptr noundef null) #8
  br label %75

50:                                               ; preds = %45
  %51 = load i32, ptr %8, align 4, !tbaa !43
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %85

76:                                               ; preds = %17, %5
  %77 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 3
  br label %78

78:                                               ; preds = %82, %76
  %79 = phi ptr [ %77, %76 ], [ %80, %82 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = tail call fastcc i32 @do_outliner_operation_event(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %80, ptr noundef %4) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %78, label %85, !llvm.loop !141

85:                                               ; preds = %78, %82, %75
  %86 = phi i32 [ 1, %75 ], [ 0, %78 ], [ 1, %82 ]
  ret i32 %86
}

; Function Attrs: optsize
declare i32 @outliner_has_one_flag(ptr noundef, ptr noundef, i16 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @outliner_set_flag(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 48}
!10 = !{!"TreeElement", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !12, i64 40, !12, i64 44, !6, i64 48, !13, i64 56, !13, i64 58, !13, i64 60, !13, i64 62, !6, i64 64, !6, i64 72, !14, i64 80}
!11 = !{!"ListBase", !6, i64 0, !6, i64 8}
!12 = !{!"int", !7, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!"PointerRNA", !15, i64 0, !6, i64 8, !6, i64 16}
!15 = !{!"", !6, i64 0}
!16 = !{!17, !13, i64 4}
!17 = !{!"TreeStoreElem", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !6, i64 8}
!18 = !{!17, !13, i64 0}
!19 = !{!10, !13, i64 60}
!20 = !{!21, !13, i64 294}
!21 = !{!"SpaceOops", !6, i64 0, !6, i64 8, !11, i64 16, !12, i64 32, !22, i64 36, !7, i64 40, !23, i64 56, !11, i64 216, !6, i64 232, !7, i64 240, !17, i64 272, !13, i64 288, !13, i64 290, !13, i64 292, !13, i64 294, !6, i64 296}
!22 = !{!"float", !7, i64 0}
!23 = !{!"View2D", !24, i64 0, !24, i64 16, !25, i64 32, !25, i64 48, !25, i64 64, !7, i64 80, !7, i64 88, !22, i64 96, !22, i64 100, !13, i64 104, !13, i64 106, !13, i64 108, !13, i64 110, !13, i64 112, !13, i64 114, !13, i64 116, !13, i64 118, !13, i64 120, !13, i64 122, !13, i64 124, !13, i64 126, !6, i64 128, !12, i64 136, !12, i64 140, !6, i64 144, !6, i64 152}
!24 = !{!"rctf", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!25 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29, !6, i64 0}
!29 = !{!"wmOperatorType", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !11, i64 112, !6, i64 128, !6, i64 136, !6, i64 144, !30, i64 152, !13, i64 184}
!30 = !{!"ExtensionRNA", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!31 = !{!29, !6, i64 8}
!32 = !{!29, !6, i64 24}
!33 = !{!29, !6, i64 48}
!34 = !{!29, !6, i64 32}
!35 = !{!29, !6, i64 72}
!36 = !{!29, !13, i64 184}
!37 = !{!29, !6, i64 88}
!38 = !{!29, !6, i64 104}
!39 = !{!40, !6, i64 112}
!40 = !{!"wmOperator", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !11, i64 128, !6, i64 144, !6, i64 152, !13, i64 160, !7, i64 162}
!41 = !{!42, !6, i64 24}
!42 = !{!"EnumPropertyItem", !12, i64 0, !6, i64 8, !12, i64 16, !6, i64 24, !6, i64 32}
!43 = !{!12, !12, i64 0}
!44 = !{!40, !6, i64 120}
!45 = !{!46, !12, i64 192}
!46 = !{!"bAction", !47, i64 0, !11, i64 120, !11, i64 136, !11, i64 152, !11, i64 168, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196}
!47 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !13, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !6, i64 112}
!48 = distinct !{!48, !27}
!49 = !{!10, !6, i64 72}
!50 = !{!17, !6, i64 8}
!51 = !{!52, !6, i64 32}
!52 = !{!"Base", !6, i64 0, !6, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !13, i64 28, !13, i64 30, !6, i64 32}
!53 = !{!54, !7, i64 1160}
!54 = !{!"Object", !47, i64 0, !6, i64 120, !6, i64 128, !13, i64 136, !13, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !7, i64 152, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !55, i64 312, !6, i64 360, !11, i64 368, !11, i64 384, !11, i64 400, !11, i64 416, !12, i64 432, !12, i64 436, !6, i64 440, !6, i64 448, !12, i64 456, !12, i64 460, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !7, i64 524, !7, i64 536, !7, i64 548, !7, i64 560, !7, i64 576, !7, i64 592, !7, i64 604, !22, i64 616, !22, i64 620, !7, i64 624, !7, i64 688, !7, i64 752, !7, i64 816, !7, i64 880, !12, i64 944, !13, i64 948, !13, i64 950, !13, i64 952, !13, i64 954, !13, i64 956, !13, i64 958, !13, i64 960, !13, i64 962, !13, i64 964, !7, i64 966, !7, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !22, i64 988, !22, i64 992, !22, i64 996, !22, i64 1000, !22, i64 1004, !22, i64 1008, !22, i64 1012, !22, i64 1016, !22, i64 1020, !22, i64 1024, !22, i64 1028, !22, i64 1032, !13, i64 1036, !13, i64 1038, !13, i64 1040, !7, i64 1042, !7, i64 1043, !13, i64 1044, !7, i64 1046, !7, i64 1047, !22, i64 1048, !22, i64 1052, !11, i64 1056, !11, i64 1072, !11, i64 1088, !11, i64 1104, !22, i64 1120, !13, i64 1124, !13, i64 1126, !7, i64 1128, !12, i64 1144, !12, i64 1148, !6, i64 1152, !7, i64 1160, !7, i64 1161, !13, i64 1162, !7, i64 1164, !11, i64 1176, !11, i64 1192, !11, i64 1208, !11, i64 1224, !6, i64 1240, !6, i64 1248, !6, i64 1256, !7, i64 1264, !7, i64 1265, !13, i64 1266, !22, i64 1268, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !56, i64 1304, !56, i64 1312, !12, i64 1320, !12, i64 1324, !11, i64 1328, !11, i64 1344, !6, i64 1360, !6, i64 1368, !6, i64 1376, !7, i64 1384, !6, i64 1392, !11, i64 1400, !6, i64 1416}
!55 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!56 = !{!"long", !7, i64 0}
!57 = !{!52, !12, i64 24}
!58 = !{!54, !13, i64 948}
!59 = !{!60, !6, i64 136}
!60 = !{!"wmWindow", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !13, i64 104, !13, i64 106, !13, i64 108, !13, i64 110, !13, i64 112, !13, i64 114, !13, i64 116, !13, i64 118, !13, i64 120, !13, i64 122, !13, i64 124, !13, i64 126, !12, i64 128, !13, i64 132, !13, i64 134, !6, i64 136, !6, i64 144, !6, i64 152, !12, i64 160, !12, i64 164, !6, i64 168, !11, i64 176, !11, i64 192, !11, i64 208, !11, i64 224, !11, i64 240}
!61 = !{!62, !6, i64 176}
!62 = !{!"Scene", !47, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !11, i64 152, !6, i64 168, !6, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !13, i64 244, !7, i64 246, !7, i64 247, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !63, i64 280, !70, i64 4264, !11, i64 4296, !11, i64 4312, !6, i64 4328, !6, i64 4336, !6, i64 4344, !6, i64 4352, !6, i64 4360, !6, i64 4368, !13, i64 4376, !13, i64 4378, !12, i64 4380, !11, i64 4384, !71, i64 4400, !72, i64 4416, !75, i64 4600, !6, i64 4608, !76, i64 4616, !6, i64 4640, !56, i64 4648, !56, i64 4656, !65, i64 4664, !66, i64 4824, !77, i64 4888, !6, i64 4952}
!63 = !{!"RenderData", !64, i64 0, !6, i64 248, !6, i64 256, !67, i64 264, !68, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !22, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !13, i64 432, !13, i64 434, !22, i64 436, !22, i64 440, !22, i64 444, !22, i64 448, !22, i64 452, !13, i64 456, !13, i64 458, !13, i64 460, !13, i64 462, !13, i64 464, !13, i64 466, !12, i64 468, !13, i64 472, !13, i64 474, !13, i64 476, !13, i64 478, !13, i64 480, !13, i64 482, !12, i64 484, !12, i64 488, !13, i64 492, !13, i64 494, !12, i64 496, !12, i64 500, !13, i64 504, !13, i64 506, !13, i64 508, !13, i64 510, !13, i64 512, !7, i64 514, !7, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !13, i64 528, !13, i64 530, !13, i64 532, !13, i64 534, !13, i64 536, !13, i64 538, !13, i64 540, !13, i64 542, !24, i64 544, !24, i64 560, !25, i64 576, !11, i64 592, !13, i64 608, !13, i64 610, !22, i64 612, !22, i64 616, !22, i64 620, !22, i64 624, !12, i64 628, !22, i64 632, !22, i64 636, !22, i64 640, !22, i64 644, !13, i64 648, !13, i64 650, !13, i64 652, !13, i64 654, !13, i64 656, !13, i64 658, !22, i64 660, !22, i64 664, !13, i64 668, !13, i64 670, !22, i64 672, !22, i64 676, !7, i64 680, !12, i64 1704, !13, i64 1708, !13, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !12, i64 2520, !13, i64 2524, !13, i64 2526, !22, i64 2528, !22, i64 2532, !13, i64 2536, !13, i64 2538, !22, i64 2540, !13, i64 2544, !13, i64 2546, !12, i64 2548, !13, i64 2552, !13, i64 2554, !13, i64 2556, !13, i64 2558, !22, i64 2560, !22, i64 2564, !6, i64 2568, !12, i64 2576, !22, i64 2580, !7, i64 2584, !69, i64 2616, !12, i64 3976, !12, i64 3980}
!64 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !13, i64 8, !13, i64 10, !22, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !65, i64 24, !66, i64 184}
!65 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !7, i64 8, !7, i64 72, !22, i64 136, !22, i64 140, !6, i64 144, !6, i64 152}
!66 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!67 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !13, i64 48, !13, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!68 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !22, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !6, i64 64}
!69 = !{!"BakeData", !64, i64 0, !7, i64 248, !13, i64 1272, !13, i64 1274, !13, i64 1276, !13, i64 1278, !22, i64 1280, !22, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!70 = !{!"AudioData", !12, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !12, i64 16, !13, i64 20, !13, i64 22, !22, i64 24, !22, i64 28}
!71 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!72 = !{!"GameData", !71, i64 0, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !13, i64 32, !7, i64 34, !73, i64 40, !13, i64 64, !13, i64 66, !22, i64 68, !74, i64 72, !22, i64 128, !22, i64 132, !12, i64 136, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !13, i64 152, !13, i64 154, !13, i64 156, !13, i64 158, !13, i64 160, !13, i64 162, !22, i64 164, !22, i64 168, !22, i64 172, !22, i64 176, !22, i64 180}
!73 = !{!"GameDome", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !22, i64 8, !22, i64 12, !6, i64 16}
!74 = !{!"RecastData", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !12, i64 40, !22, i64 44, !22, i64 48, !13, i64 52, !13, i64 54}
!75 = !{!"UnitSettings", !22, i64 0, !7, i64 4, !7, i64 5, !13, i64 6}
!76 = !{!"PhysicsSettings", !7, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!77 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!78 = !{!47, !6, i64 24}
!79 = !{!47, !13, i64 98}
!80 = !{!10, !6, i64 16}
!81 = distinct !{!81, !27}
!82 = !{!13, !13, i64 0}
!83 = !{!54, !6, i64 1256}
!84 = !{!85, !6, i64 16}
!85 = !{!"GroupObject", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !13, i64 32, !7, i64 34}
!86 = !{!54, !12, i64 944}
!87 = !{!52, !12, i64 16}
!88 = distinct !{!88, !27}
!89 = !{!62, !12, i64 236}
!90 = !{!54, !13, i64 952}
!91 = distinct !{!91, !27}
!92 = !{!54, !12, i64 456}
!93 = !{!94, !13, i64 1366}
!94 = !{!"Mesh", !47, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !95, i64 280, !95, i64 480, !95, i64 680, !95, i64 880, !95, i64 1080, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !12, i64 1304, !7, i64 1308, !7, i64 1320, !7, i64 1332, !12, i64 1344, !13, i64 1348, !13, i64 1350, !22, i64 1352, !12, i64 1356, !7, i64 1360, !7, i64 1361, !7, i64 1362, !7, i64 1363, !7, i64 1364, !7, i64 1365, !13, i64 1366, !6, i64 1368}
!95 = !{!"CustomData", !6, i64 0, !7, i64 8, !12, i64 172, !12, i64 176, !12, i64 180, !6, i64 184, !6, i64 192}
!96 = !{!97, !13, i64 266}
!97 = !{!"Curve", !47, i64 0, !6, i64 120, !6, i64 128, !11, i64 136, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !7, i64 208, !7, i64 220, !7, i64 232, !13, i64 244, !13, i64 246, !13, i64 248, !13, i64 250, !22, i64 252, !22, i64 256, !12, i64 260, !13, i64 264, !13, i64 266, !12, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !13, i64 284, !13, i64 286, !13, i64 288, !13, i64 290, !12, i64 292, !12, i64 296, !7, i64 300, !13, i64 304, !7, i64 306, !7, i64 307, !22, i64 308, !22, i64 312, !22, i64 316, !22, i64 320, !22, i64 324, !22, i64 328, !22, i64 332, !22, i64 336, !22, i64 340, !22, i64 344, !12, i64 348, !12, i64 352, !12, i64 356, !12, i64 360, !12, i64 364, !6, i64 368, !6, i64 376, !7, i64 384, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !6, i64 480, !12, i64 488, !12, i64 492, !6, i64 496, !98, i64 504, !22, i64 512, !22, i64 516, !22, i64 520, !7, i64 524, !7, i64 525, !7, i64 526}
!98 = !{!"CharInfo", !13, i64 0, !13, i64 2, !7, i64 4, !7, i64 5, !13, i64 6}
!99 = !{!100, !13, i64 186}
!100 = !{!"MetaBall", !47, i64 0, !6, i64 120, !11, i64 128, !11, i64 144, !6, i64 160, !6, i64 168, !6, i64 176, !7, i64 184, !7, i64 185, !13, i64 186, !13, i64 188, !13, i64 190, !7, i64 192, !7, i64 204, !7, i64 216, !22, i64 228, !22, i64 232, !22, i64 236, !6, i64 240}
!101 = !{!10, !13, i64 58}
!102 = !{!103, !12, i64 100}
!103 = !{!"Material", !47, i64 0, !6, i64 120, !13, i64 128, !13, i64 130, !22, i64 132, !22, i64 136, !22, i64 140, !22, i64 144, !22, i64 148, !22, i64 152, !22, i64 156, !22, i64 160, !22, i64 164, !22, i64 168, !22, i64 172, !22, i64 176, !22, i64 180, !22, i64 184, !22, i64 188, !22, i64 192, !22, i64 196, !22, i64 200, !22, i64 204, !22, i64 208, !22, i64 212, !22, i64 216, !22, i64 220, !104, i64 224, !105, i64 312, !22, i64 328, !22, i64 332, !22, i64 336, !22, i64 340, !22, i64 344, !22, i64 348, !22, i64 352, !13, i64 356, !13, i64 358, !13, i64 360, !7, i64 362, !7, i64 363, !22, i64 364, !22, i64 368, !13, i64 372, !13, i64 374, !22, i64 376, !22, i64 380, !22, i64 384, !22, i64 388, !13, i64 392, !13, i64 394, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408, !13, i64 412, !13, i64 414, !13, i64 416, !13, i64 418, !22, i64 420, !22, i64 424, !22, i64 428, !22, i64 432, !22, i64 436, !22, i64 440, !22, i64 444, !22, i64 448, !22, i64 452, !22, i64 456, !7, i64 460, !22, i64 524, !22, i64 528, !22, i64 532, !12, i64 536, !7, i64 540, !7, i64 541, !7, i64 542, !7, i64 543, !13, i64 544, !13, i64 546, !13, i64 548, !7, i64 550, !7, i64 551, !13, i64 552, !13, i64 554, !22, i64 556, !22, i64 560, !7, i64 564, !22, i64 580, !22, i64 584, !13, i64 588, !13, i64 590, !6, i64 592, !6, i64 600, !7, i64 608, !7, i64 609, !7, i64 610, !7, i64 611, !13, i64 612, !13, i64 614, !22, i64 616, !22, i64 620, !7, i64 624, !6, i64 768, !6, i64 776, !6, i64 784, !6, i64 792, !22, i64 800, !22, i64 804, !22, i64 808, !22, i64 812, !22, i64 816, !13, i64 820, !13, i64 822, !7, i64 824, !7, i64 836, !22, i64 848, !22, i64 852, !22, i64 856, !22, i64 860, !22, i64 864, !22, i64 868, !22, i64 872, !13, i64 876, !13, i64 878, !12, i64 880, !13, i64 884, !13, i64 886, !7, i64 888, !13, i64 904, !13, i64 906, !13, i64 908, !13, i64 910, !13, i64 912, !7, i64 914, !6, i64 920, !11, i64 928}
!104 = !{!"VolumeSettings", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !7, i64 16, !7, i64 28, !7, i64 40, !22, i64 52, !22, i64 56, !22, i64 60, !13, i64 64, !13, i64 66, !13, i64 68, !13, i64 70, !22, i64 72, !22, i64 76, !22, i64 80, !22, i64 84}
!105 = !{!"GameSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!106 = distinct !{!106, !27}
!107 = !{!108, !6, i64 16}
!108 = !{!"MTex", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !6, i64 8, !6, i64 16, !7, i64 24, !7, i64 88, !7, i64 89, !7, i64 90, !7, i64 91, !7, i64 92, !7, i64 104, !22, i64 116, !13, i64 120, !13, i64 122, !13, i64 124, !13, i64 126, !13, i64 128, !13, i64 130, !7, i64 132, !7, i64 133, !22, i64 140, !22, i64 144, !22, i64 148, !22, i64 152, !22, i64 156, !22, i64 160, !22, i64 164, !22, i64 168, !22, i64 172, !22, i64 176, !22, i64 180, !22, i64 184, !22, i64 188, !22, i64 192, !22, i64 196, !22, i64 200, !22, i64 204, !22, i64 208, !22, i64 212, !22, i64 216, !22, i64 220, !22, i64 224, !22, i64 228, !22, i64 232, !22, i64 236, !22, i64 240, !22, i64 244, !22, i64 248, !22, i64 252, !22, i64 256, !22, i64 260, !22, i64 264, !22, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !22, i64 296, !22, i64 300, !22, i64 304, !22, i64 308}
!109 = !{!110, !12, i64 100}
!110 = !{!"Tex", !47, i64 0, !6, i64 120, !22, i64 128, !22, i64 132, !22, i64 136, !22, i64 140, !22, i64 144, !22, i64 148, !22, i64 152, !22, i64 156, !22, i64 160, !22, i64 164, !22, i64 168, !22, i64 172, !22, i64 176, !22, i64 180, !22, i64 184, !22, i64 188, !22, i64 192, !22, i64 196, !22, i64 200, !22, i64 204, !22, i64 208, !22, i64 212, !13, i64 216, !13, i64 218, !13, i64 220, !13, i64 222, !13, i64 224, !13, i64 226, !13, i64 228, !13, i64 230, !13, i64 232, !13, i64 234, !22, i64 236, !22, i64 240, !22, i64 244, !22, i64 248, !12, i64 252, !12, i64 256, !13, i64 260, !13, i64 262, !13, i64 264, !13, i64 266, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !111, i64 296, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !7, i64 408, !7, i64 409}
!111 = !{!"ImageUser", !6, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !7, i64 24, !7, i64 25, !7, i64 26, !7, i64 27, !13, i64 28, !13, i64 30, !13, i64 32, !13, i64 34, !12, i64 36}
!112 = distinct !{!112, !27}
!113 = !{!62, !6, i64 136}
!114 = !{!115, !6, i64 120}
!115 = !{!"IdAdtTemplate", !47, i64 0, !6, i64 120}
!116 = distinct !{!116, !27}
!117 = distinct !{!117, !27}
!118 = !{!119, !13, i64 72}
!119 = !{!"FCurve", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !6, i64 48, !6, i64 56, !12, i64 64, !22, i64 68, !13, i64 72, !13, i64 74, !12, i64 76, !6, i64 80, !12, i64 88, !7, i64 92, !22, i64 104, !22, i64 108}
!120 = !{!119, !6, i64 24}
!121 = !{!122, !12, i64 292}
!122 = !{!"ChannelDriver", !11, i64 0, !7, i64 16, !6, i64 272, !22, i64 280, !22, i64 284, !12, i64 288, !12, i64 292}
!123 = distinct !{!123, !27}
!124 = !{!125, !6, i64 120}
!125 = !{!"bPoseChannel", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !7, i64 40, !13, i64 104, !13, i64 106, !13, i64 108, !13, i64 110, !7, i64 112, !7, i64 113, !7, i64 114, !6, i64 120, !6, i64 128, !6, i64 136, !11, i64 144, !11, i64 160, !6, i64 176, !6, i64 184, !6, i64 192, !7, i64 200, !7, i64 212, !7, i64 224, !7, i64 236, !7, i64 252, !22, i64 264, !13, i64 268, !13, i64 270, !7, i64 272, !7, i64 336, !7, i64 400, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !22, i64 524, !22, i64 528, !22, i64 532, !6, i64 536}
!126 = !{!127, !12, i64 176}
!127 = !{!"Bone", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !7, i64 48, !22, i64 112, !7, i64 116, !7, i64 128, !7, i64 140, !12, i64 176, !7, i64 180, !7, i64 192, !7, i64 204, !22, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !22, i64 296, !22, i64 300, !22, i64 304, !7, i64 308, !12, i64 320, !13, i64 324, !7, i64 326}
!128 = !{!129, !12, i64 132}
!129 = !{!"EditBone", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !22, i64 104, !7, i64 108, !7, i64 120, !12, i64 132, !12, i64 136, !22, i64 140, !22, i64 144, !22, i64 148, !22, i64 152, !22, i64 156, !22, i64 160, !22, i64 164, !22, i64 168, !22, i64 172, !22, i64 176, !13, i64 180}
!130 = !{!131, !6, i64 0}
!131 = !{!"Editing", !6, i64 0, !11, i64 8, !11, i64 24, !6, i64 40, !7, i64 48, !7, i64 1072, !12, i64 2096, !12, i64 2100, !12, i64 2104, !12, i64 2108, !24, i64 2112}
!132 = !{!10, !6, i64 88}
!133 = !{!10, !6, i64 96}
!134 = !{!22, !22, i64 0}
!135 = !{!10, !12, i64 44}
!136 = !{!137, !13, i64 8948}
!137 = !{!"UserDef", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !12, i64 8468, !13, i64 8472, !13, i64 8474, !13, i64 8476, !13, i64 8478, !13, i64 8480, !13, i64 8482, !12, i64 8484, !12, i64 8488, !12, i64 8492, !13, i64 8496, !13, i64 8498, !12, i64 8500, !12, i64 8504, !12, i64 8508, !12, i64 8512, !12, i64 8516, !12, i64 8520, !12, i64 8524, !13, i64 8528, !13, i64 8530, !13, i64 8532, !13, i64 8534, !11, i64 8536, !11, i64 8552, !11, i64 8568, !11, i64 8584, !11, i64 8600, !11, i64 8616, !11, i64 8632, !7, i64 8648, !13, i64 8712, !13, i64 8714, !13, i64 8716, !13, i64 8718, !13, i64 8720, !13, i64 8722, !13, i64 8724, !13, i64 8726, !7, i64 8728, !13, i64 8896, !13, i64 8898, !13, i64 8900, !13, i64 8902, !13, i64 8904, !13, i64 8906, !13, i64 8908, !13, i64 8910, !12, i64 8912, !12, i64 8916, !13, i64 8920, !13, i64 8922, !13, i64 8924, !13, i64 8926, !13, i64 8928, !13, i64 8930, !13, i64 8932, !13, i64 8934, !13, i64 8936, !13, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !13, i64 8944, !13, i64 8946, !13, i64 8948, !13, i64 8950, !13, i64 8952, !13, i64 8954, !22, i64 8956, !22, i64 8960, !12, i64 8964, !13, i64 8968, !13, i64 8970, !22, i64 8972, !13, i64 8976, !13, i64 8978, !13, i64 8980, !13, i64 8982, !138, i64 8984, !7, i64 9760, !7, i64 9772, !13, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !12, i64 10896, !12, i64 10900, !22, i64 10904, !22, i64 10908, !12, i64 10912, !13, i64 10916, !13, i64 10918, !13, i64 10920, !13, i64 10922, !13, i64 10924, !13, i64 10926, !139, i64 10928}
!138 = !{!"ColorBand", !13, i64 0, !13, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!139 = !{!"WalkNavigation", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !13, i64 24, !7, i64 26}
!140 = !{!21, !13, i64 292}
!141 = distinct !{!141, !27}
