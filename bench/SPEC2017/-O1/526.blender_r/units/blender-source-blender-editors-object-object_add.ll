; ModuleID = 'blender/source/blender/editors/object/object_add.c'
source_filename = "blender/source/blender/editors/object/object_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.FluidsimSettings = type { ptr, i32, i32, i16, i16, i16, i16, float, i16, i16, float, i16, i16, [3 x float], float, float, i32, i32, i32, i32, float, i32, float, float, float, ptr, ptr, [1024 x i8], [3 x float], [3 x float], ptr, i16, i8, i8, float, i32, float, float, i32, i32, float, float, float, ptr, i32, float, float, float, float, float, float, float, i32, float }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@.str = private unnamed_addr constant [6 x i8] c"POINT\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Omnidirectional point light source\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SUN\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Constant direction parallel ray light source\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"SPOT\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Spot\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Directional cone light source\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"HEMI\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Hemi\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"180 degree constant light source\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"AREA\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Area\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Directional area light source\00", align 1
@lamp_type_items = dso_local global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 298, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.6, i32 300, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 3, ptr @.str.9, i32 301, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 4, ptr @.str.12, i32 302, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"view_align\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Align to View\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Align the new object to the view\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"enter_editmode\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Enter Editmode\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"Enter editmode when adding this object\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"Location for the newly added object\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"Rotation for the newly added object\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Layer\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.32 = private unnamed_addr constant [35 x i8] c"Property 'layer' has no values set\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Add Object\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Add an object to the scene\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"OBJECT_OT_add\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@object_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.37 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"Add Effector\00", align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"Add an empty object with a physics effector to the scene\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"OBJECT_OT_effector_add\00", align 1
@field_type_items = internal global [14 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.123, i32 338, ptr @.str.124, ptr @.str.17 }, %struct.EnumPropertyItem { i32 4, ptr @.str.125, i32 339, ptr @.str.126, ptr @.str.17 }, %struct.EnumPropertyItem { i32 2, ptr @.str.127, i32 340, ptr @.str.128, ptr @.str.17 }, %struct.EnumPropertyItem { i32 3, ptr @.str.129, i32 341, ptr @.str.130, ptr @.str.17 }, %struct.EnumPropertyItem { i32 7, ptr @.str.131, i32 342, ptr @.str.132, ptr @.str.17 }, %struct.EnumPropertyItem { i32 8, ptr @.str.133, i32 343, ptr @.str.134, ptr @.str.17 }, %struct.EnumPropertyItem { i32 9, ptr @.str.135, i32 344, ptr @.str.136, ptr @.str.17 }, %struct.EnumPropertyItem { i32 6, ptr @.str.137, i32 345, ptr @.str.138, ptr @.str.17 }, %struct.EnumPropertyItem { i32 5, ptr @.str.139, i32 346, ptr @.str.140, ptr @.str.17 }, %struct.EnumPropertyItem { i32 10, ptr @.str.141, i32 347, ptr @.str.142, ptr @.str.17 }, %struct.EnumPropertyItem { i32 11, ptr @.str.143, i32 348, ptr @.str.144, ptr @.str.17 }, %struct.EnumPropertyItem { i32 12, ptr @.str.145, i32 349, ptr @.str.146, ptr @.str.17 }, %struct.EnumPropertyItem { i32 13, ptr @.str.147, i32 350, ptr @.str.148, ptr @.str.17 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.41 = private unnamed_addr constant [11 x i8] c"Add Camera\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"Add a camera object to the scene\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_camera_add\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"Add Metaball\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"Add an metaball object to the scene\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"OBJECT_OT_metaball_add\00", align 1
@metaelem_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.47 = private unnamed_addr constant [10 x i8] c"Primitive\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Add Text\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"Add a text object to the scene\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"OBJECT_OT_text_add\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"Add Armature\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"Add an armature object to the scene\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"OBJECT_OT_armature_add\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"Add Empty\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"Add an empty object to the scene\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"OBJECT_OT_empty_add\00", align 1
@object_empty_drawtype_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.57 = private unnamed_addr constant [36 x i8] c"Add Empty Image/Drop Image To Empty\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c"Add an empty image type to scene with data\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_drop_named_image\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"Filepath\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"Path to image file\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"Image name to assign\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"Add Lamp\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Add a lamp object to the scene\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"OBJECT_OT_lamp_add\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"Add Group Instance\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"Add a dupligroup instance\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"OBJECT_OT_group_instance_add\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.74 = private unnamed_addr constant [18 x i8] c"Group name to add\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.76 = private unnamed_addr constant [12 x i8] c"Add Speaker\00", align 1
@.str.77 = private unnamed_addr constant [34 x i8] c"Add a speaker object to the scene\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"OBJECT_OT_speaker_add\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.79 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"Delete selected objects\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"OBJECT_OT_delete\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"use_global\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"Delete Globally\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"Remove object from all scenes\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"Make Duplicates Real\00", align 1
@.str.86 = private unnamed_addr constant [48 x i8] c"Make dupli objects attached to this object real\00", align 1
@.str.87 = private unnamed_addr constant [31 x i8] c"OBJECT_OT_duplicates_make_real\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"use_base_parent\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@.str.90 = private unnamed_addr constant [56 x i8] c"Parent newly created objects to the original duplicator\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"use_hierarchy\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"Keep Hierarchy\00", align 1
@.str.93 = private unnamed_addr constant [36 x i8] c"Maintain parent child relationships\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"Convert to\00", align 1
@.str.95 = private unnamed_addr constant [41 x i8] c"Convert selected objects to another type\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"OBJECT_OT_convert\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@convert_target_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 2, ptr @.str.156, i32 236, ptr @.str.157, ptr @.str.17 }, %struct.EnumPropertyItem { i32 1, ptr @.str.158, i32 235, ptr @.str.159, ptr @.str.17 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.98 = private unnamed_addr constant [7 x i8] c"Target\00", align 1
@.str.99 = private unnamed_addr constant [29 x i8] c"Type of object to convert to\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"keep_original\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"Keep Original\00", align 1
@.str.102 = private unnamed_addr constant [48 x i8] c"Keep original objects instead of replacing them\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"Duplicate Objects\00", align 1
@.str.104 = private unnamed_addr constant [27 x i8] c"Duplicate selected objects\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"OBJECT_OT_duplicate\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"linked\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"Linked\00", align 1
@.str.108 = private unnamed_addr constant [67 x i8] c"Duplicate object but not object data, linking to the original data\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@transform_mode_types = external global [0 x %struct.EnumPropertyItem], align 8
@.str.110 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"Add Named Object\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"Add named object\00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"OBJECT_OT_add_named\00", align 1
@.str.114 = private unnamed_addr constant [19 x i8] c"Object name to add\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"Join\00", align 1
@.str.116 = private unnamed_addr constant [41 x i8] c"Join selected objects into active object\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"OBJECT_OT_join\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"Join as Shapes\00", align 1
@.str.119 = private unnamed_addr constant [50 x i8] c"Merge selected objects to shapes of active object\00", align 1
@.str.120 = private unnamed_addr constant [22 x i8] c"OBJECT_OT_join_shapes\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"CurveGuide\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"Field\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"FORCE\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"Force\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"WIND\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"Wind\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"VORTEX\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"Vortex\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"MAGNET\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"Magnetic\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"HARMONIC\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"Harmonic\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"CHARGE\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"Charge\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"LENNARDJ\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"Lennard-Jones\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"TEXTURE\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"GUIDE\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"Curve Guide\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"BOID\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"Boid\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"TURBULENCE\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"Turbulence\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"DRAG\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"Drag\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"SMOKE\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"Smoke Flow\00", align 1
@.str.149 = private unnamed_addr constant [32 x i8] c"Cannot create editmode armature\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"Not an image\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"SoundTrack\00", align 1
@.str.152 = private unnamed_addr constant [36 x i8] c"make_object_duplilist_real dupli_gh\00", align 1
@.str.153 = private unnamed_addr constant [37 x i8] c"make_object_duplilist_real parent_gh\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@CD_MASK_MESH = external local_unnamed_addr constant i64, align 8
@.str.154 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.155 = private unnamed_addr constant [10 x i8] c"duplibase\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"CURVE\00", align 1
@.str.157 = private unnamed_addr constant [21 x i8] c"Curve from Mesh/Text\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"MESH\00", align 1
@.str.159 = private unnamed_addr constant [31 x i8] c"Mesh from Curve/Meta/Surf/Text\00", align 1
@.str.160 = private unnamed_addr constant [17 x i8] c"Object not found\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.161 = private unnamed_addr constant [31 x i8] c"Object could not be duplicated\00", align 1
@.str.162 = private unnamed_addr constant [48 x i8] c"This data does not support joining in edit mode\00", align 1
@.str.163 = private unnamed_addr constant [29 x i8] c"Cannot edit external libdata\00", align 1
@switch.table.object_lamp_add_exec.164 = private unnamed_addr constant [5 x ptr] [ptr @.str.1, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13], align 8

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_location_from_view(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %4, ptr noundef %3) #6
  %6 = load float, ptr %5, align 4, !tbaa !34
  store float %6, ptr %1, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %5, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %5, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = getelementptr inbounds float, ptr %1, i64 2
  store float %11, ptr %12, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_rotation_from_view(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  switch i8 %2, label %24 [
    i8 88, label %9
    i8 89, label %14
    i8 90, label %20
  ]

9:                                                ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 2, i64 1
  call void @axis_angle_to_quat(ptr noundef nonnull %5, ptr noundef nonnull %10, float noundef 0xBFF921FB60000000) #6
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %5) #6
  %12 = load float, ptr %4, align 16, !tbaa !34
  %13 = fneg float %12
  store float %13, ptr %4, align 16, !tbaa !34
  call void @quat_to_eul(ptr noundef %1, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br label %24

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 17
  call void @copy_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %15) #6
  %16 = load float, ptr %4, align 16, !tbaa !34
  %17 = fneg float %16
  store float %17, ptr %4, align 16, !tbaa !34
  call void @quat_to_eul(ptr noundef %1, ptr noundef nonnull %4) #6
  %18 = load float, ptr %1, align 4, !tbaa !34
  %19 = fadd float %18, 0xBFF921FB60000000
  store float %19, ptr %1, align 4, !tbaa !34
  br label %24

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 17
  call void @copy_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %21) #6
  %22 = load float, ptr %4, align 16, !tbaa !34
  %23 = fneg float %22
  store float %23, ptr %4, align 16, !tbaa !34
  call void @quat_to_eul(ptr noundef %1, ptr noundef nonnull %4) #6
  br label %24

24:                                               ; preds = %8, %20, %14, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %28

25:                                               ; preds = %3
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  %26 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %26, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %27, align 4, !tbaa !34
  br label %28

28:                                               ; preds = %25, %24
  ret void
}

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quat_to_eul(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_base_init_transform(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 33
  %13 = load float, ptr %2, align 4, !tbaa !34
  store float %13, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 33, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds float, ptr %2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 33, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  br label %20

20:                                               ; preds = %11, %9
  %21 = icmp eq ptr %3, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 39
  %24 = load float, ptr %3, align 4, !tbaa !34
  store float %24, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %3, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 39, i64 1
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %3, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 39, i64 2
  store float %29, ptr %30, align 4, !tbaa !34
  br label %31

31:                                               ; preds = %22, %20
  tail call void @BKE_object_where_is_calc(ptr noundef nonnull %7, ptr noundef %6) #6
  br label %32

32:                                               ; preds = %4, %31
  ret void
}

declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @ED_object_new_primitive_matrix(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %12 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #6
  tail call void @unit_m4(ptr noundef %4) #6
  call void @eul_to_mat3(ptr noundef nonnull %8, ptr noundef %3) #6
  %13 = call zeroext i8 @invert_m3(ptr noundef nonnull %8) #6
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %14) #6
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7) #6
  %15 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %10, ptr noundef nonnull %9) #6
  call void @copy_m4_m3(ptr noundef %4, ptr noundef nonnull %10) #6
  %16 = getelementptr inbounds [4 x float], ptr %4, i64 3
  %17 = load float, ptr %2, align 4, !tbaa !34
  store float %17, ptr %16, align 4, !tbaa !34
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 1
  store float %19, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds float, ptr %2, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds [4 x float], ptr %4, i64 3, i64 2
  store float %22, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %17, %25
  store float %26, ptr %16, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 3, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fsub float %19, %28
  store float %29, ptr %20, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 3, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fsub float %22, %31
  store float %32, ptr %23, align 4, !tbaa !34
  %33 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %10, ptr noundef nonnull %7) #6
  call void @mul_m3_v3(ptr noundef nonnull %10, ptr noundef nonnull %16) #6
  %34 = icmp eq ptr %12, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %6
  %36 = call float @ED_view3d_grid_scale(ptr noundef %11, ptr noundef nonnull %12, ptr noundef null) #6
  br label %39

37:                                               ; preds = %6
  %38 = call float @ED_scene_grid_scale(ptr noundef %11, ptr noundef null) #6
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi float [ %36, %35 ], [ %38, %37 ]
  %41 = icmp eq i8 %5, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = load float, ptr %4, align 4, !tbaa !34
  %44 = fmul float %40, %43
  store float %44, ptr %4, align 4, !tbaa !34
  %45 = getelementptr inbounds [4 x float], ptr %4, i64 1, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = fmul float %40, %46
  store float %47, ptr %45, align 4, !tbaa !34
  %48 = getelementptr inbounds [4 x float], ptr %4, i64 2, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = fmul float %40, %49
  store float %50, ptr %48, align 4, !tbaa !34
  br label %51

51:                                               ; preds = %42, %39
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #6
  ret float %40
}

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare void @eul_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @ED_view3d_grid_scale(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @ED_scene_grid_scale(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_add_unit_props(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = tail call ptr @RNA_def_float(ptr noundef %3, ptr noundef nonnull @.str.15, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #6
  tail call void @RNA_def_property_subtype(ptr noundef %4, i32 noundef 65554) #6
  ret void
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RNA_def_property_subtype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_add_generic_props(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = tail call ptr @RNA_def_boolean(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #6
  tail call void @RNA_def_property_update_runtime(ptr noundef %5, ptr noundef nonnull @view_align_update) #6
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !43
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #6
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268959744) #6
  br label %10

10:                                               ; preds = %7, %2
  %11 = load ptr, ptr %3, align 8, !tbaa !43
  %12 = tail call ptr @RNA_def_float_vector_xyz(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #6
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #6
  %13 = load ptr, ptr %3, align 8, !tbaa !43
  %14 = tail call ptr @RNA_def_float_rotation(ptr noundef %13, ptr noundef nonnull @.str.27, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, float noundef 0xC01921FB60000000, float noundef 0x401921FB60000000) #6
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #6
  %15 = load ptr, ptr %3, align 8, !tbaa !43
  %16 = tail call ptr @RNA_def_boolean_layer_member(ptr noundef %15, ptr noundef nonnull @.str.30, i32 noundef 20, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.17) #6
  tail call void @RNA_def_property_flag(ptr noundef %16, i32 noundef 268959744) #6
  ret void
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_update_runtime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @view_align_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = tail call zeroext i8 @RNA_struct_idprops_unset(ptr noundef %2, ptr noundef nonnull @.str.27) #6
  ret void
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_def_float_vector_xyz(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @RNA_def_float_rotation(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare ptr @RNA_def_boolean_layer_member(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [20 x i32], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = tail call ptr @RNA_struct_find_property(ptr noundef %14, ptr noundef nonnull @.str.21) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %8
  %18 = icmp eq ptr %5, null
  %19 = load ptr, ptr %13, align 8, !tbaa !47
  %20 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %19, ptr noundef nonnull @.str.21) #6
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %13, align 8, !tbaa !47
  %24 = tail call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.21) #6
  br i1 %18, label %36, label %25

25:                                               ; preds = %22
  %26 = trunc i32 %24 to i8
  store i8 %26, ptr %5, align 1, !tbaa !49
  br label %36

27:                                               ; preds = %17
  %28 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !50
  %29 = lshr i32 %28, 18
  br i1 %18, label %33, label %30

30:                                               ; preds = %27
  %31 = trunc i32 %29 to i8
  %32 = and i8 %31, 1
  store i8 %32, ptr %5, align 1, !tbaa !49
  br label %33

33:                                               ; preds = %27, %30
  %34 = load ptr, ptr %13, align 8, !tbaa !47
  %35 = and i32 %29, 1
  tail call void @RNA_boolean_set(ptr noundef %34, ptr noundef nonnull @.str.21, i32 noundef %35) #6
  br label %36

36:                                               ; preds = %33, %22, %25, %8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %9) #6
  %37 = icmp eq ptr %6, null
  %38 = load ptr, ptr %13, align 8, !tbaa !47
  %39 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %38, ptr noundef nonnull @.str.30) #6
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %13, align 8, !tbaa !47
  call void @RNA_boolean_get_array(ptr noundef %42, ptr noundef nonnull @.str.30, ptr noundef nonnull %9) #6
  br i1 %37, label %44, label %43

43:                                               ; preds = %41
  store i32 0, ptr %6, align 4, !tbaa !54
  br label %44

44:                                               ; preds = %41, %43
  br label %45

45:                                               ; preds = %44, %60
  %46 = phi i64 [ %62, %60 ], [ 0, %44 ]
  %47 = phi i32 [ %61, %60 ], [ 0, %44 ]
  %48 = getelementptr inbounds [20 x i32], ptr %9, i64 0, i64 %46
  %49 = load i32, ptr %48, align 4, !tbaa !54
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %45
  %52 = trunc i64 %46 to i32
  %53 = shl nuw nsw i32 1, %52
  br i1 %37, label %56, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %6, align 4, !tbaa !54
  br label %56

56:                                               ; preds = %51, %54
  %57 = phi i32 [ %47, %51 ], [ %55, %54 ]
  %58 = or i32 %57, %53
  br i1 %37, label %60, label %59

59:                                               ; preds = %56
  store i32 %58, ptr %6, align 4, !tbaa !54
  br label %60

60:                                               ; preds = %59, %56, %45
  %61 = phi i32 [ %47, %45 ], [ %47, %59 ], [ %58, %56 ]
  %62 = add nuw nsw i64 %46, 1
  %63 = icmp eq i64 %62, 20
  br i1 %63, label %83, label %45, !llvm.loop !55

64:                                               ; preds = %36
  %65 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %66 = tail call i32 @BKE_screen_view3d_layer_active_ex(ptr noundef %12, ptr noundef %65, i8 noundef zeroext 0) #6
  br i1 %37, label %68, label %67

67:                                               ; preds = %64
  store i32 %66, ptr %6, align 4, !tbaa !54
  br label %68

68:                                               ; preds = %64, %67
  br label %69

69:                                               ; preds = %68, %73
  %70 = phi i64 [ %79, %73 ], [ 0, %68 ]
  br i1 %37, label %73, label %71

71:                                               ; preds = %69
  %72 = load i32, ptr %6, align 4, !tbaa !54
  br label %73

73:                                               ; preds = %69, %71
  %74 = phi i32 [ %66, %69 ], [ %72, %71 ]
  %75 = trunc i64 %70 to i32
  %76 = shl nuw nsw i32 1, %75
  %77 = and i32 %74, %76
  %78 = getelementptr inbounds [20 x i32], ptr %9, i64 0, i64 %70
  store i32 %77, ptr %78, align 4, !tbaa !54
  %79 = add nuw nsw i64 %70, 1
  %80 = icmp eq i64 %79, 20
  br i1 %80, label %81, label %69, !llvm.loop !58

81:                                               ; preds = %73
  %82 = load ptr, ptr %13, align 8, !tbaa !47
  call void @RNA_boolean_set_array(ptr noundef %82, ptr noundef nonnull @.str.30, ptr noundef nonnull %9) #6
  br label %83

83:                                               ; preds = %60, %81
  %84 = phi i32 [ %66, %81 ], [ %61, %60 ]
  %85 = icmp eq ptr %12, null
  br i1 %85, label %99, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 20
  %88 = load ptr, ptr %87, align 8, !tbaa !59
  %89 = icmp eq ptr %88, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 22
  %92 = load i32, ptr %91, align 8, !tbaa !62
  br i1 %37, label %95, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %6, align 4, !tbaa !54
  br label %95

95:                                               ; preds = %90, %93
  %96 = phi i32 [ %84, %90 ], [ %94, %93 ]
  %97 = or i32 %96, %92
  br i1 %37, label %99, label %98

98:                                               ; preds = %95
  store i32 %97, ptr %6, align 4, !tbaa !54
  br label %99

99:                                               ; preds = %98, %95, %86, %83
  %100 = phi i32 [ %84, %83 ], [ %84, %86 ], [ %84, %98 ], [ %97, %95 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #6
  %101 = icmp eq ptr %3, null
  %102 = select i1 %101, ptr %10, ptr %3
  %103 = load ptr, ptr %13, align 8, !tbaa !47
  %104 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %103, ptr noundef nonnull @.str.24) #6
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %99
  %107 = load ptr, ptr %13, align 8, !tbaa !47
  call void @RNA_float_get_array(ptr noundef %107, ptr noundef nonnull @.str.24, ptr noundef nonnull %102) #6
  br label %122

108:                                              ; preds = %99
  %109 = call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %110 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %111 = call ptr @ED_view3d_cursor3d_get(ptr noundef %110, ptr noundef %109) #6
  %112 = load float, ptr %111, align 4, !tbaa !34
  store float %112, ptr %102, align 4, !tbaa !34
  %113 = getelementptr inbounds float, ptr %111, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !34
  %115 = select i1 %101, ptr %10, ptr %3
  %116 = getelementptr inbounds float, ptr %115, i64 1
  store float %114, ptr %116, align 4, !tbaa !34
  %117 = getelementptr inbounds float, ptr %111, i64 2
  %118 = load float, ptr %117, align 4, !tbaa !34
  %119 = select i1 %101, ptr %10, ptr %3
  %120 = getelementptr inbounds float, ptr %119, i64 2
  store float %118, ptr %120, align 4, !tbaa !34
  %121 = load ptr, ptr %13, align 8, !tbaa !47
  call void @RNA_float_set_array(ptr noundef %121, ptr noundef nonnull @.str.24, ptr noundef nonnull %102) #6
  br label %122

122:                                              ; preds = %108, %106
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #6
  %123 = icmp eq ptr %7, null
  %124 = icmp eq ptr %4, null
  %125 = select i1 %124, ptr %11, ptr %4
  %126 = load ptr, ptr %13, align 8, !tbaa !47
  %127 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %126, ptr noundef nonnull @.str.27) #6
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %122
  br i1 %123, label %149, label %130

130:                                              ; preds = %129
  store i8 0, ptr %7, align 1, !tbaa !49
  br label %149

131:                                              ; preds = %122
  %132 = load ptr, ptr %13, align 8, !tbaa !47
  %133 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %132, ptr noundef nonnull @.str.18) #6
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %13, align 8, !tbaa !47
  %137 = call i32 @RNA_boolean_get(ptr noundef %136, ptr noundef nonnull @.str.18) #6
  %138 = trunc i32 %137 to i8
  br i1 %123, label %149, label %139

139:                                              ; preds = %135
  store i8 %138, ptr %7, align 1, !tbaa !49
  br label %149

140:                                              ; preds = %131
  %141 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !50
  %142 = lshr i32 %141, 19
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  br i1 %123, label %146, label %145

145:                                              ; preds = %140
  store i8 %144, ptr %7, align 1, !tbaa !49
  br label %146

146:                                              ; preds = %140, %145
  %147 = load ptr, ptr %13, align 8, !tbaa !47
  %148 = and i32 %142, 1
  call void @RNA_boolean_set(ptr noundef %147, ptr noundef nonnull @.str.18, i32 noundef %148) #6
  br label %149

149:                                              ; preds = %139, %135, %130, %129, %146
  %150 = phi i8 [ %144, %146 ], [ 0, %129 ], [ 0, %130 ], [ %138, %135 ], [ %138, %139 ]
  br i1 %123, label %153, label %151

151:                                              ; preds = %149
  %152 = load i8, ptr %7, align 1, !tbaa !49
  br label %153

153:                                              ; preds = %149, %151
  %154 = phi i8 [ %150, %149 ], [ %152, %151 ]
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  call void @ED_object_rotation_from_view(ptr noundef %0, ptr noundef nonnull %125, i8 noundef zeroext %2)
  %157 = load ptr, ptr %13, align 8, !tbaa !47
  call void @RNA_float_set_array(ptr noundef %157, ptr noundef nonnull @.str.27, ptr noundef nonnull %125) #6
  br label %160

158:                                              ; preds = %153
  %159 = load ptr, ptr %13, align 8, !tbaa !47
  call void @RNA_float_get_array(ptr noundef %159, ptr noundef nonnull @.str.27, ptr noundef nonnull %125) #6
  br label %160

160:                                              ; preds = %158, %156
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #6
  br i1 %37, label %163, label %161

161:                                              ; preds = %160
  %162 = load i32, ptr %6, align 4, !tbaa !54
  br label %163

163:                                              ; preds = %160, %161
  %164 = phi i32 [ %100, %160 ], [ %162, %161 ]
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %168 = load ptr, ptr %167, align 8, !tbaa !63
  call void @BKE_report(ptr noundef %168, i32 noundef 32, ptr noundef nonnull @.str.32) #6
  br label %169

169:                                              ; preds = %163, %166
  %170 = phi i8 [ 0, %166 ], [ 1, %163 ]
  ret i8 %170
}

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_boolean_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_screen_view3d_layer_active_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @RNA_boolean_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_object_add_type(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 15) #6
  br label %12

12:                                               ; preds = %11, %6
  %13 = tail call ptr @BKE_object_add(ptr noundef %7, ptr noundef %8, i32 noundef %1) #6
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 52
  store i32 %5, ptr %14, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 2
  store i32 %5, ptr %17, align 8, !tbaa !87
  tail call void @ED_base_object_activate(ptr noundef %0, ptr noundef %16) #6
  %18 = load ptr, ptr %15, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.Base, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %12
  %24 = icmp eq ptr %2, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 33
  %27 = load float, ptr %2, align 4, !tbaa !34
  store float %27, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %2, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 33, i64 1
  store float %29, ptr %30, align 4, !tbaa !34
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 33, i64 2
  store float %32, ptr %33, align 4, !tbaa !34
  br label %34

34:                                               ; preds = %25, %23
  %35 = icmp eq ptr %3, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 39
  %38 = load float, ptr %3, align 4, !tbaa !34
  store float %38, ptr %37, align 4, !tbaa !34
  %39 = getelementptr inbounds float, ptr %3, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 39, i64 1
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds float, ptr %3, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 39, i64 2
  store float %43, ptr %44, align 4, !tbaa !34
  br label %45

45:                                               ; preds = %36, %34
  tail call void @BKE_object_where_is_calc(ptr noundef nonnull %21, ptr noundef %20) #6
  br label %46

46:                                               ; preds = %12, %45
  %47 = icmp eq i32 %1, 1
  br i1 %47, label %53, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 113
  store i8 0, ptr %49, align 8, !tbaa !88
  %50 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 99
  %51 = load i32, ptr %50, align 8, !tbaa !89
  %52 = and i32 %51, -6226946
  store i32 %52, ptr %50, align 8, !tbaa !89
  br label %53

53:                                               ; preds = %48, %46
  tail call void @DAG_id_type_tag(ptr noundef %7, i16 noundef signext 16975) #6
  tail call void @DAG_relations_tag_update(ptr noundef %7) #6
  %54 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !90
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @ED_render_id_flush_update(ptr noundef %7, ptr noundef nonnull %55) #6
  br label %58

58:                                               ; preds = %57, %53
  %59 = icmp eq i8 %4, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %58
  tail call void @ED_object_editmode_enter(ptr noundef %0, i32 noundef 16) #6
  br label %61

61:                                               ; preds = %60, %58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 73728000, ptr noundef %8) #6
  ret ptr %13
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_type_tag(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

declare void @ED_render_id_flush_update(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_object_editmode_enter(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_add_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.15, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #6
  tail call void @RNA_def_property_subtype(ptr noundef %9, i32 noundef 65554) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !43
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.36, ptr noundef nonnull @object_type_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.17) #6
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_add_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #6
  %7 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null), !range !97
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.15) #6
  %13 = load ptr, ptr %10, align 8, !tbaa !47
  %14 = call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.36) #6
  %15 = load i8, ptr %3, align 1, !tbaa !49
  %16 = load i32, ptr %4, align 4, !tbaa !54
  %17 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %15, i32 noundef %16)
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !98
  %20 = icmp eq i16 %19, 22
  br i1 %20, label %21, label %25

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 36
  store float %12, ptr %22, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 36, i64 1
  store float %12, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 36, i64 2
  store float %12, ptr %24, align 4, !tbaa !34
  br label %26

25:                                               ; preds = %9
  call void @BKE_object_obdata_size_init(ptr noundef %17, float noundef %12) #6
  br label %26

26:                                               ; preds = %21, %25, %2
  %27 = phi i32 [ 2, %2 ], [ 4, %25 ], [ 4, %21 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  ret i32 %27
}

declare i32 @ED_operator_objectmode(ptr noundef) #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_effector_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @effector_add_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef nonnull @field_type_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.17) #6
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !99
  %11 = load ptr, ptr %7, align 8, !tbaa !43
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.15, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #6
  tail call void @RNA_def_property_subtype(ptr noundef %12, i32 noundef 65554) #6
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @effector_add_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #6
  %8 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null), !range !97
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.36) #6
  %14 = load ptr, ptr %11, align 8, !tbaa !47
  %15 = call float @RNA_float_get(ptr noundef %14, ptr noundef nonnull @.str.15) #6
  %16 = icmp eq i32 %13, 5
  %17 = load i32, ptr %4, align 4, !tbaa !54
  br i1 %16, label %18, label %33

18:                                               ; preds = %10
  %19 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0, i32 noundef %17)
  call void @rename_id(ptr noundef %19, ptr noundef nonnull @.str.121) #6
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 23
  %23 = load i32, ptr %22, align 4, !tbaa !100
  %24 = or i32 %23, 9
  store i32 %24, ptr %22, align 4, !tbaa !100
  call void @ED_object_editmode_enter(ptr noundef %0, i32 noundef 0) #6
  %25 = call float @ED_object_new_primitive_matrix(ptr noundef %0, ptr noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0)
  %26 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !103
  %28 = fptosi float %15 to i32
  %29 = call ptr @add_nurbs_primitive(ptr noundef %0, ptr noundef %19, ptr noundef nonnull %7, i32 noundef 1796, i32 noundef %28) #6
  call void @BLI_addtail(ptr noundef %27, ptr noundef %29) #6
  %30 = load i8, ptr %3, align 1, !tbaa !49
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #6
  br label %37

33:                                               ; preds = %10
  %34 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0, i32 noundef %17)
  call void @BKE_object_obdata_size_init(ptr noundef %34, float noundef %15) #6
  call void @rename_id(ptr noundef %34, ptr noundef nonnull @.str.122) #6
  switch i32 %13, label %37 [
    i32 4, label %35
    i32 2, label %35
  ]

35:                                               ; preds = %33, %33
  %36 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 88
  store i8 4, ptr %36, align 1, !tbaa !104
  br label %37

37:                                               ; preds = %33, %18, %32, %35
  %38 = phi ptr [ %34, %35 ], [ %34, %33 ], [ %19, %32 ], [ %19, %18 ]
  %39 = call ptr @object_add_collision_fields(i32 noundef %13) #6
  %40 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 110
  store ptr %39, ptr %40, align 8, !tbaa !105
  %41 = call ptr @CTX_data_main(ptr noundef %0) #6
  call void @DAG_relations_tag_update(ptr noundef %41) #6
  br label %42

42:                                               ; preds = %2, %37
  %43 = phi i32 [ 4, %37 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_camera_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_camera_add_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1)
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = tail call ptr @RNA_struct_type_find_property(ptr noundef %8, ptr noundef nonnull @.str.18) #6
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 524288) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_camera_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  tail call void @RNA_boolean_set(ptr noundef %10, ptr noundef nonnull @.str.18, i32 noundef 1) #6
  %11 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null), !range !97
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %4, align 4, !tbaa !54
  %15 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 11, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0, i32 noundef %14)
  %16 = icmp eq ptr %7, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store ptr %15, ptr %18, align 8, !tbaa !106
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 26
  %24 = load i16, ptr %23, align 4, !tbaa !107
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !108
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store ptr %15, ptr %27, align 8, !tbaa !108
  br label %31

31:                                               ; preds = %22, %26, %30, %13
  %32 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !90
  br i1 %16, label %36, label %34

34:                                               ; preds = %31
  %35 = call float @ED_view3d_grid_scale(ptr noundef %8, ptr noundef nonnull %7, ptr noundef null) #6
  br label %38

36:                                               ; preds = %31
  %37 = call float @ED_scene_grid_scale(ptr noundef %8, ptr noundef null) #6
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi float [ %35, %34 ], [ %37, %36 ]
  %40 = getelementptr inbounds %struct.Camera, ptr %33, i64 0, i32 10
  store float %39, ptr %40, align 8, !tbaa !109
  br label %41

41:                                               ; preds = %2, %38
  %42 = phi i32 [ 4, %38 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  ret i32 %42
}

declare ptr @RNA_struct_type_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_metaball_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.44, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_metaball_add_exec, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.36, ptr noundef nonnull @metaelem_type_items, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.17) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !99
  %12 = load ptr, ptr %8, align 8, !tbaa !43
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.15, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #6
  tail call void @RNA_def_property_subtype(ptr noundef %13, i32 noundef 65554) #6
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1)
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_metaball_add_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #6
  %9 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null), !range !97
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %2
  %12 = icmp eq ptr %8, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !98
  %16 = icmp eq i16 %15, 5
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %11
  %18 = load i32, ptr %4, align 4, !tbaa !54
  %19 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1, i32 noundef %18)
  br label %21

20:                                               ; preds = %13
  call void @DAG_id_tag_update(ptr noundef nonnull %8, i16 noundef signext 2) #6
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi ptr [ %19, %17 ], [ %8, %20 ]
  %23 = phi i1 [ false, %17 ], [ true, %20 ]
  %24 = call float @ED_object_new_primitive_matrix(ptr noundef %0, ptr noundef %22, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0)
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = call float @RNA_float_get(ptr noundef %26, ptr noundef nonnull @.str.15) #6
  %28 = load ptr, ptr %25, align 8, !tbaa !47
  %29 = call i32 @RNA_enum_get(ptr noundef %28, ptr noundef nonnull @.str.36) #6
  %30 = call ptr @add_metaball_primitive(ptr noundef %0, ptr noundef %22, ptr noundef nonnull %7, float noundef %27, i32 noundef %29) #6
  %31 = load i8, ptr %3, align 1
  %32 = icmp ne i8 %31, 0
  %33 = select i1 %23, i1 true, i1 %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #6
  br label %35

35:                                               ; preds = %34, %21
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %22) #6
  br label %36

36:                                               ; preds = %2, %35
  %37 = phi i32 [ 4, %35 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  ret i32 %37
}

declare i32 @ED_operator_scene_editable(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_text_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_add_text_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.15, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #6
  tail call void @RNA_def_property_subtype(ptr noundef %9, i32 noundef 65554) #6
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_add_text_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #6
  %8 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null), !range !97
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %7, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !98
  %15 = icmp eq i16 %14, 4
  br i1 %15, label %23, label %16

16:                                               ; preds = %12, %10
  %17 = load i8, ptr %3, align 1, !tbaa !49
  %18 = load i32, ptr %4, align 4, !tbaa !54
  %19 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %17, i32 noundef %18)
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = call float @RNA_float_get(ptr noundef %21, ptr noundef nonnull @.str.15) #6
  call void @BKE_object_obdata_size_init(ptr noundef %19, float noundef %22) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %19) #6
  br label %23

23:                                               ; preds = %12, %2, %16
  %24 = phi i32 [ 4, %16 ], [ 2, %2 ], [ 2, %12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_armature_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_armature_add_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = tail call ptr @RNA_def_float(ptr noundef %8, ptr noundef nonnull @.str.15, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #6
  tail call void @RNA_def_property_subtype(ptr noundef %9, i32 noundef 65554) #6
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_armature_add_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %8 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  %9 = icmp ne ptr %8, null
  %10 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8
  %11 = and i32 %10, 524288
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %9, i1 %12, i1 false
  %14 = zext i1 %13 to i8
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #6
  %15 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null), !range !97
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %2
  %18 = icmp eq ptr %7, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !98
  %22 = icmp eq i16 %21, 25
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %17
  %24 = load i32, ptr %4, align 4, !tbaa !54
  %25 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 25, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1, i32 noundef %24)
  call void @ED_object_editmode_enter(ptr noundef %0, i32 noundef 0) #6
  br label %27

26:                                               ; preds = %19
  call void @DAG_id_tag_update(ptr noundef nonnull %7, i16 noundef signext 2) #6
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i1 [ false, %23 ], [ true, %26 ]
  %29 = phi ptr [ %25, %23 ], [ %7, %26 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !63
  call void @BKE_report(ptr noundef %33, i32 noundef 32, ptr noundef nonnull @.str.149) #6
  br label %44

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = call float @RNA_float_get(ptr noundef %36, ptr noundef nonnull @.str.15) #6
  %38 = call ptr @ED_armature_edit_bone_add_primitive(ptr noundef nonnull %29, float noundef %37, i8 noundef zeroext %14) #6
  %39 = load i8, ptr %3, align 1
  %40 = icmp ne i8 %39, 0
  %41 = select i1 %28, i1 true, i1 %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #6
  br label %43

43:                                               ; preds = %42, %34
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %29) #6
  br label %44

44:                                               ; preds = %2, %43, %31
  %45 = phi i32 [ 2, %31 ], [ 4, %43 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_empty_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_empty_add_exec, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.36, ptr noundef nonnull @object_empty_drawtype_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.17) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !99
  %12 = load ptr, ptr %8, align 8, !tbaa !43
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.15, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #6
  tail call void @RNA_def_property_subtype(ptr noundef %13, i32 noundef 65554) #6
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_empty_add_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.36) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #6
  %9 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %3, ptr noundef null), !range !97
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4, !tbaa !54
  %13 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef %12)
  call void @BKE_object_empty_draw_type_set(ptr noundef %13, i32 noundef %8) #6
  %14 = load ptr, ptr %6, align 8, !tbaa !47
  %15 = call float @RNA_float_get(ptr noundef %14, ptr noundef nonnull @.str.15) #6
  call void @BKE_object_obdata_size_init(ptr noundef %13, float noundef %15) #6
  br label %16

16:                                               ; preds = %2, %11
  %17 = phi i32 [ 4, %11 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_drop_named_image(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @empty_drop_named_image_invoke, ptr %4, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.60, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #6
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268959744) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !43
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #6
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268959744) #6
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @empty_drop_named_image_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca [3 x float], align 4
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %10, ptr noundef nonnull @.str.60) #6
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #6
  %14 = load ptr, ptr %9, align 8, !tbaa !47
  call void @RNA_string_get(ptr noundef %14, ptr noundef nonnull @.str.60, ptr noundef nonnull %4) #6
  %15 = call ptr @BKE_image_load_exists(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #6
  br label %23

16:                                               ; preds = %3
  %17 = load ptr, ptr %9, align 8, !tbaa !47
  %18 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %17, ptr noundef nonnull @.str.63) #6
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  %21 = load ptr, ptr %9, align 8, !tbaa !47
  call void @RNA_string_get(ptr noundef %21, ptr noundef nonnull @.str.63, ptr noundef nonnull %5) #6
  %22 = call ptr @BKE_libblock_find_name(i16 noundef signext 19785, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  br label %23

23:                                               ; preds = %16, %20, %13
  %24 = phi ptr [ %15, %13 ], [ %22, %20 ], [ null, %16 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  call void @BKE_report(ptr noundef %28, i32 noundef 32, ptr noundef nonnull @.str.150) #6
  br label %63

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %31 = call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %30) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Base, ptr %31, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !38
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 3
  %37 = load i16, ptr %36, align 8, !tbaa !98
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %8) #6
  br label %59

40:                                               ; preds = %33, %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  %41 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef null, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %6, ptr noundef null), !range !97
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %6, align 4, !tbaa !54
  %45 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %7, i8 noundef zeroext 0, i32 noundef %44)
  %46 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 33
  %47 = call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %48 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %49 = call ptr @ED_view3d_cursor3d_get(ptr noundef %48, ptr noundef %47) #6
  %50 = load float, ptr %49, align 4, !tbaa !34
  store float %50, ptr %46, align 4, !tbaa !34
  %51 = getelementptr inbounds float, ptr %49, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 33, i64 1
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = getelementptr inbounds float, ptr %49, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 33, i64 2
  store float %55, ptr %56, align 4, !tbaa !34
  call void @ED_view3d_cursor3d_position(ptr noundef %0, ptr noundef nonnull %46, ptr noundef nonnull %30) #6
  br label %57

57:                                               ; preds = %40, %43
  %58 = phi ptr [ %45, %43 ], [ null, %40 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br i1 %42, label %63, label %59

59:                                               ; preds = %57, %39
  %60 = phi ptr [ %35, %39 ], [ %58, %57 ]
  call void @BKE_object_empty_draw_type_set(ptr noundef %60, i32 noundef 8) #6
  %61 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !90
  call void @id_us_min(ptr noundef %62) #6
  store ptr %24, ptr %61, align 8, !tbaa !90
  call void @id_us_plus(ptr noundef nonnull %24) #6
  br label %63

63:                                               ; preds = %57, %59, %26
  %64 = phi i32 [ 2, %26 ], [ 4, %59 ], [ 2, %57 ]
  ret i32 %64
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_lamp_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.67, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.68, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_lamp_add_exec, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.36, ptr noundef nonnull @lamp_type_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.17) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !99
  tail call void @RNA_def_property_translation_context(ptr noundef %10, ptr noundef nonnull @.str.69) #6
  %12 = load ptr, ptr %8, align 8, !tbaa !43
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.15, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #6
  tail call void @RNA_def_property_subtype(ptr noundef %13, i32 noundef 65554) #6
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_lamp_add_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.36) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #6
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %3, ptr noundef null), !range !97
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %3, align 4, !tbaa !54
  %14 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef %13)
  %15 = load ptr, ptr %7, align 8, !tbaa !47
  %16 = call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.15) #6
  call void @BKE_object_obdata_size_init(ptr noundef %14, float noundef %16) #6
  %17 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !90
  %19 = trunc i32 %9 to i16
  %20 = getelementptr inbounds %struct.Lamp, ptr %18, i64 0, i32 2
  store i16 %19, ptr %20, align 8, !tbaa !112
  %21 = icmp ult i32 %9, 5
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = zext nneg i32 %9 to i64
  %24 = getelementptr inbounds [5 x ptr], ptr @switch.table.object_lamp_add_exec.164, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8
  br label %26

26:                                               ; preds = %12, %22
  %27 = phi ptr [ %25, %22 ], [ @.str.69, %12 ]
  call void @rename_id(ptr noundef %14, ptr noundef nonnull %27) #6
  %28 = icmp ult i32 %9, 5
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = zext nneg i32 %9 to i64
  %31 = getelementptr inbounds [5 x ptr], ptr @switch.table.object_lamp_add_exec.164, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8
  br label %33

33:                                               ; preds = %26, %29
  %34 = phi ptr [ %32, %29 ], [ @.str.69, %26 ]
  call void @rename_id(ptr noundef %18, ptr noundef nonnull %34) #6
  %35 = call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %6) #6
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  call void @ED_node_shader_default(ptr noundef %0, ptr noundef %18) #6
  %38 = getelementptr inbounds %struct.Lamp, ptr %18, i64 0, i32 71
  store i16 1, ptr %38, align 2, !tbaa !114
  br label %39

39:                                               ; preds = %33, %37, %2
  %40 = phi i32 [ 2, %2 ], [ 4, %37 ], [ 4, %33 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %40
}

declare void @RNA_def_property_translation_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_group_instance_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.70, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.71, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.72, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_enum_search_invoke, ptr %4, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_instance_add_exec, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.73, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.74) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !43
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.75, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.17) #6
  tail call void @RNA_def_enum_funcs(ptr noundef %12, ptr noundef nonnull @RNA_group_itemf) #6
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 536870912) #6
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !99
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 0)
  ret void
}

declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @group_instance_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.63) #6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  %12 = load ptr, ptr %7, align 8, !tbaa !47
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.63, ptr noundef nonnull %6) #6
  %13 = call ptr @BKE_libblock_find_name(i16 noundef signext 21063, ptr noundef nonnull %6) #6
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %14, ptr noundef nonnull @.str.24) #6
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = call ptr @CTX_wm_window(ptr noundef %0) #6
  %19 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 21
  %20 = load ptr, ptr %19, align 8, !tbaa !115
  %21 = call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %22 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %23 = call ptr @ED_view3d_cursor3d_get(ptr noundef %22, ptr noundef %21) #6
  %24 = load float, ptr %23, align 4, !tbaa !34
  store float %24, ptr %4, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %23, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds float, ptr %4, i64 1
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds float, ptr %23, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds float, ptr %4, i64 2
  store float %29, ptr %30, align 4, !tbaa !34
  %31 = getelementptr inbounds %struct.wmEvent, ptr %20, i64 0, i32 6
  call void @ED_view3d_cursor3d_position(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %31) #6
  %32 = load ptr, ptr %7, align 8, !tbaa !47
  call void @RNA_float_set_array(ptr noundef %32, ptr noundef nonnull @.str.24, ptr noundef nonnull %4) #6
  br label %33

33:                                               ; preds = %17, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  br label %40

34:                                               ; preds = %2
  %35 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %36 = getelementptr inbounds %struct.Main, ptr %35, i64 0, i32 32
  %37 = load ptr, ptr %7, align 8, !tbaa !47
  %38 = tail call i32 @RNA_enum_get(ptr noundef %37, ptr noundef nonnull @.str.75) #6
  %39 = tail call ptr @BLI_findlink(ptr noundef nonnull %36, i32 noundef %38) #6
  br label %40

40:                                               ; preds = %34, %33
  %41 = phi ptr [ %13, %33 ], [ %39, %34 ]
  %42 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %3, ptr noundef null), !range !97
  %43 = icmp eq i8 %42, 0
  %44 = icmp eq ptr %41, null
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %40
  %47 = call ptr @CTX_data_main(ptr noundef %0) #6
  %48 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %49 = load i32, ptr %3, align 4, !tbaa !54
  %50 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef %49)
  %51 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 4, i64 2
  call void @rename_id(ptr noundef %50, ptr noundef nonnull %51) #6
  %52 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 112
  store ptr %41, ptr %52, align 8, !tbaa !117
  %53 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 55
  %54 = load i16, ptr %53, align 8, !tbaa !118
  %55 = or i16 %54, 256
  store i16 %55, ptr %53, align 8, !tbaa !118
  call void @id_lib_extern(ptr noundef nonnull %41) #6
  call void @DAG_relations_tag_update(ptr noundef %47) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %48) #6
  br label %56

56:                                               ; preds = %40, %46
  %57 = phi i32 [ 4, %46 ], [ 2, %40 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %57
}

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_group_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_speaker_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.76, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.78, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_speaker_add_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_speaker_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %7 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %3, ptr noundef null), !range !97
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4, !tbaa !54
  %11 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef %10)
  %12 = call ptr @BKE_id_add_animdata(ptr noundef %11) #6
  %13 = call ptr @add_nlatrack(ptr noundef %12, ptr noundef null) #6
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = call ptr @add_nla_soundstrip(ptr noundef %6, ptr noundef %15) #6
  %17 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !119
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %16, i64 0, i32 10
  store float %19, ptr %20, align 8, !tbaa !120
  %21 = getelementptr inbounds %struct.NlaStrip, ptr %16, i64 0, i32 11
  %22 = load float, ptr %21, align 4, !tbaa !122
  %23 = fadd float %22, %19
  store float %23, ptr %21, align 4, !tbaa !122
  %24 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %13, ptr noundef %16) #6
  %25 = getelementptr inbounds %struct.NlaTrack, ptr %13, i64 0, i32 5
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef nonnull @.str.151, i64 noundef 64) #6
  call void @BKE_nlastrip_validate_name(ptr noundef %12, ptr noundef %16) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #6
  br label %27

27:                                               ; preds = %2, %9
  %28 = phi i32 [ 4, %9 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_base_object_free_and_unlink(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext 16975) #6
  tail call void @BKE_scene_base_unlink(ptr noundef %1, ptr noundef %2) #6
  %4 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !98
  %8 = icmp eq i16 %7, 10
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 125
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @GPU_lamp_free(ptr noundef %5) #6
  br label %14

14:                                               ; preds = %3, %9, %13
  %15 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @BKE_libblock_free_us(ptr noundef %0, ptr noundef %15) #6
  %16 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = icmp eq ptr %17, %2
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store ptr null, ptr %16, align 8, !tbaa !69
  br label %20

20:                                               ; preds = %19, %14
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !124
  tail call void %21(ptr noundef %2) #6
  ret void
}

declare void @BKE_scene_base_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_libblock_free_us(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.79, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.80, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_delete_exec, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.82, i32 noundef 0, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #6
  ret void
}

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.82) #6
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %106

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %13 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %14 = load ptr, ptr %3, align 8, !tbaa !124
  %15 = icmp eq ptr %14, null
  br i1 %15, label %105, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  %18 = and i32 %9, 255
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 11
  br label %21

21:                                               ; preds = %16, %82
  %22 = phi ptr [ %14, %16 ], [ %83, %82 ]
  %23 = getelementptr inbounds %struct.CollectionPointerLink, ptr %22, i64 0, i32 2, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !125
  %25 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 53
  %28 = load i16, ptr %27, align 4, !tbaa !129
  %29 = and i16 %28, -2
  store i16 %29, ptr %27, align 4, !tbaa !129
  call void @DAG_id_type_tag(ptr noundef %4, i16 noundef signext 16975) #6
  call void @BKE_scene_base_unlink(ptr noundef %5, ptr noundef %24) #6
  %30 = load ptr, ptr %25, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 3
  %32 = load i16, ptr %31, align 8, !tbaa !98
  %33 = icmp eq i16 %32, 10
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 125
  %36 = load ptr, ptr %35, align 8, !tbaa !123
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void @GPU_lamp_free(ptr noundef %30) #6
  br label %39

39:                                               ; preds = %38, %34, %21
  %40 = load ptr, ptr %25, align 8, !tbaa !38
  call void @BKE_libblock_free_us(ptr noundef %4, ptr noundef %40) #6
  %41 = load ptr, ptr %17, align 8, !tbaa !69
  %42 = icmp eq ptr %41, %24
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store ptr null, ptr %17, align 8, !tbaa !69
  br label %44

44:                                               ; preds = %39, %43
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !124
  call void %45(ptr noundef %24) #6
  br i1 %19, label %82, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %20, align 8, !tbaa !124
  %48 = icmp eq ptr %47, null
  br i1 %48, label %82, label %49

49:                                               ; preds = %46, %79
  %50 = phi ptr [ %80, %79 ], [ %47, %46 ]
  %51 = icmp eq ptr %50, %5
  br i1 %51, label %79, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.ID, ptr %50, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !130
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load ptr, ptr %25, align 8, !tbaa !38
  %58 = call ptr @BKE_scene_base_find(ptr noundef nonnull %50, ptr noundef %57) #6
  %59 = icmp eq ptr %58, null
  br i1 %59, label %79, label %60

60:                                               ; preds = %56
  call void @DAG_id_type_tag(ptr noundef %4, i16 noundef signext 16975) #6
  call void @BKE_scene_base_unlink(ptr noundef nonnull %50, ptr noundef nonnull %58) #6
  %61 = getelementptr inbounds %struct.Base, ptr %58, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !38
  %63 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 3
  %64 = load i16, ptr %63, align 8, !tbaa !98
  %65 = icmp eq i16 %64, 10
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 125
  %68 = load ptr, ptr %67, align 8, !tbaa !123
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void @GPU_lamp_free(ptr noundef %62) #6
  br label %71

71:                                               ; preds = %70, %66, %60
  %72 = load ptr, ptr %61, align 8, !tbaa !38
  call void @BKE_libblock_free_us(ptr noundef %4, ptr noundef %72) #6
  %73 = getelementptr inbounds %struct.Scene, ptr %50, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !69
  %75 = icmp eq ptr %74, %58
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store ptr null, ptr %73, align 8, !tbaa !69
  br label %77

77:                                               ; preds = %71, %76
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !124
  call void %78(ptr noundef nonnull %58) #6
  br label %79

79:                                               ; preds = %49, %52, %77, %56
  %80 = load ptr, ptr %50, align 8, !tbaa !124
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %49, !llvm.loop !131

82:                                               ; preds = %79, %46, %44
  %83 = load ptr, ptr %22, align 8, !tbaa !124
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %21, !llvm.loop !132

85:                                               ; preds = %82
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %86 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 11
  call void @BKE_main_id_flag_listbase(ptr noundef nonnull %86, i16 noundef signext 1024, i8 noundef zeroext 1) #6
  %87 = getelementptr inbounds %struct.wmWindowManager, ptr %6, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !124
  %89 = icmp eq ptr %88, null
  br i1 %89, label %106, label %90

90:                                               ; preds = %85, %102
  %91 = phi ptr [ %103, %102 ], [ %88, %85 ]
  %92 = getelementptr inbounds %struct.wmWindow, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !133
  %94 = getelementptr inbounds %struct.bScreen, ptr %93, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !134
  %96 = getelementptr inbounds %struct.ID, ptr %95, i64 0, i32 5
  %97 = load i16, ptr %96, align 2, !tbaa !136
  %98 = and i16 %97, 1024
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %90
  %101 = and i16 %97, -1025
  store i16 %101, ptr %96, align 2, !tbaa !136
  call void @DAG_relations_tag_update(ptr noundef %4) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %95) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 73728000, ptr noundef %95) #6
  br label %102

102:                                              ; preds = %90, %100
  %103 = load ptr, ptr %91, align 8, !tbaa !124
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %90, !llvm.loop !137

105:                                              ; preds = %12
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %106

106:                                              ; preds = %102, %85, %105, %2
  %107 = phi i32 [ 2, %2 ], [ 2, %105 ], [ 4, %85 ], [ 4, %102 ]
  ret i32 %107
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_duplicates_make_real(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.85, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.86, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.87, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_duplicates_make_real_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !43
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.91, i32 noundef 0, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_duplicates_make_real_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.88) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.91) #6
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %12 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %4) #6
  %13 = load ptr, ptr %4, align 8, !tbaa !124
  %14 = icmp eq ptr %13, null
  br i1 %14, label %220, label %15

15:                                               ; preds = %2
  %16 = trunc i32 %11 to i8
  %17 = trunc i32 %9 to i8
  %18 = or i8 %16, %17
  %19 = icmp eq i8 %18, 0
  %20 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 5
  %21 = icmp eq i8 %16, 0
  %22 = icmp eq i8 %17, 0
  %23 = icmp eq i8 %17, 0
  br label %24

24:                                               ; preds = %15, %216
  %25 = phi ptr [ %13, %15 ], [ %218, %216 ]
  %26 = getelementptr inbounds %struct.CollectionPointerLink, ptr %25, i64 0, i32 2, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !125
  %28 = call ptr @CTX_data_main(ptr noundef %0) #6
  %29 = getelementptr inbounds %struct.Base, ptr %27, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 55
  %32 = load i16, ptr %31, align 8, !tbaa !118
  %33 = and i16 %32, 2840
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %216, label %35

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.Main, ptr %28, i64 0, i32 46
  %37 = load ptr, ptr %36, align 8, !tbaa !138
  %38 = call ptr @object_duplilist(ptr noundef %37, ptr noundef %6, ptr noundef %30) #6
  br i1 %19, label %42, label %39

39:                                               ; preds = %35
  %40 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.152) #6
  %41 = call ptr @BLI_ghash_pair_new(ptr noundef nonnull @.str.153) #6
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi ptr [ %41, %39 ], [ null, %35 ]
  %44 = phi ptr [ %40, %39 ], [ null, %35 ]
  %45 = load ptr, ptr %38, align 8, !tbaa !124
  %46 = icmp eq ptr %45, null
  br i1 %46, label %96, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.Base, ptr %27, i64 0, i32 2
  %49 = icmp eq ptr %44, null
  %50 = icmp eq ptr %43, null
  br label %51

51:                                               ; preds = %47, %93
  %52 = phi ptr [ %45, %47 ], [ %94, %93 ]
  %53 = getelementptr inbounds %struct.DupliObject, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !140
  %55 = call ptr @BKE_object_copy(ptr noundef %54) #6
  %56 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 29
  %57 = load ptr, ptr %56, align 8, !tbaa !142
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 31
  store i32 0, ptr %60, align 8, !tbaa !143
  br label %61

61:                                               ; preds = %59, %51
  %62 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !124
  %63 = call ptr %62(ptr noundef %27) #6
  %64 = getelementptr inbounds %struct.Base, ptr %63, i64 0, i32 4
  %65 = load i32, ptr %64, align 8, !tbaa !144
  %66 = and i32 %65, -4609
  store i32 %66, ptr %64, align 8, !tbaa !144
  %67 = trunc i32 %66 to i16
  %68 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 53
  store i16 %67, ptr %68, align 4, !tbaa !129
  %69 = load i32, ptr %48, align 8, !tbaa !87
  %70 = getelementptr inbounds %struct.Base, ptr %63, i64 0, i32 2
  store i32 %69, ptr %70, align 8, !tbaa !87
  call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %63) #6
  %71 = getelementptr inbounds %struct.Base, ptr %63, i64 0, i32 7
  store ptr %55, ptr %71, align 8, !tbaa !38
  call void @BKE_free_animdata(ptr noundef %55) #6
  %72 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 1
  store ptr null, ptr %72, align 8, !tbaa !145
  %73 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 11
  %74 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 9
  store ptr null, ptr %74, align 8, !tbaa !146
  %75 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 106
  %76 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 118
  store ptr null, ptr %76, align 8, !tbaa !147
  %77 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %73, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  %78 = load i16, ptr %77, align 8, !tbaa !118
  %79 = and i16 %78, -2841
  store i16 %79, ptr %77, align 8, !tbaa !118
  %80 = load i32, ptr %48, align 8, !tbaa !87
  %81 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 52
  store i32 %80, ptr %81, align 8, !tbaa !64
  %82 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 47
  %83 = getelementptr inbounds %struct.DupliObject, ptr %52, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %82, ptr noundef nonnull %83) #6
  call void @BKE_object_apply_mat4(ptr noundef %55, ptr noundef nonnull %82, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  br i1 %49, label %85, label %84

84:                                               ; preds = %61
  call void @BLI_ghash_insert(ptr noundef nonnull %44, ptr noundef nonnull %52, ptr noundef %55) #6
  br label %85

85:                                               ; preds = %84, %61
  br i1 %50, label %93, label %86

86:                                               ; preds = %85
  %87 = load ptr, ptr %53, align 8, !tbaa !140
  %88 = getelementptr inbounds %struct.DupliObject, ptr %52, i64 0, i32 9
  %89 = load i32, ptr %88, align 8, !tbaa !54
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to ptr
  %92 = call ptr @BLI_ghashutil_pairalloc(ptr noundef %87, ptr noundef %91) #6
  call void @BLI_ghash_insert(ptr noundef nonnull %43, ptr noundef %92, ptr noundef %55) #6
  br label %93

93:                                               ; preds = %86, %85
  call void @DAG_id_tag_update(ptr noundef %55, i16 noundef signext 2) #6
  %94 = load ptr, ptr %52, align 8, !tbaa !124
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %51, !llvm.loop !148

96:                                               ; preds = %93, %42
  br i1 %21, label %153, label %97

97:                                               ; preds = %96
  %98 = load ptr, ptr %38, align 8, !tbaa !124
  %99 = icmp eq ptr %98, null
  br i1 %99, label %168, label %100

100:                                              ; preds = %97, %150
  %101 = phi ptr [ %151, %150 ], [ %98, %97 ]
  %102 = getelementptr inbounds %struct.DupliObject, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !140
  %104 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 9
  %105 = load ptr, ptr %104, align 8, !tbaa !146
  %106 = call ptr @BLI_ghash_lookup(ptr noundef %44, ptr noundef nonnull %101) #6
  %107 = icmp eq ptr %105, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.DupliObject, ptr %101, i64 0, i32 9
  %110 = load i32, ptr %109, align 8, !tbaa !54
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to ptr
  %113 = call ptr @BLI_ghashutil_pairalloc(ptr noundef nonnull %105, ptr noundef %112) #6
  %114 = call ptr @BLI_ghash_lookup(ptr noundef %43, ptr noundef %113) #6
  call void @BLI_ghashutil_pairfree(ptr noundef %113) #6
  br label %115

115:                                              ; preds = %108, %100
  %116 = phi ptr [ %114, %108 ], [ null, %100 ]
  %117 = icmp eq ptr %116, null
  br i1 %117, label %137, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 4
  %120 = load i16, ptr %119, align 2, !tbaa !149
  %121 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 4
  store i16 %120, ptr %121, align 2, !tbaa !149
  %122 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 8
  %123 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 8
  %124 = call ptr @BLI_strncpy(ptr noundef nonnull %122, ptr noundef nonnull %123, i64 noundef 64) #6
  %125 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 5
  %126 = load i32, ptr %125, align 4, !tbaa !150
  %127 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 5
  store i32 %126, ptr %127, align 4, !tbaa !150
  %128 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 6
  %129 = load i32, ptr %128, align 8, !tbaa !151
  %130 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 6
  store i32 %129, ptr %130, align 8, !tbaa !151
  %131 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 7
  %132 = load i32, ptr %131, align 4, !tbaa !152
  %133 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 7
  store i32 %132, ptr %133, align 4, !tbaa !152
  %134 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 48
  %135 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 48
  call void @copy_m4_m4(ptr noundef nonnull %134, ptr noundef nonnull %135) #6
  %136 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 9
  store ptr %116, ptr %136, align 8, !tbaa !146
  br label %142

137:                                              ; preds = %115
  br i1 %22, label %142, label %138

138:                                              ; preds = %137
  %139 = load ptr, ptr %29, align 8, !tbaa !38
  %140 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 9
  store ptr %139, ptr %140, align 8, !tbaa !146
  %141 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 4
  store i16 0, ptr %141, align 2, !tbaa !149
  br label %142

142:                                              ; preds = %138, %137, %118
  %143 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 9
  %144 = load ptr, ptr %143, align 8, !tbaa !146
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 48
  %148 = getelementptr inbounds %struct.DupliObject, ptr %101, i64 0, i32 3
  %149 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %147, ptr noundef nonnull %148) #6
  call void @BKE_object_apply_mat4(ptr noundef %106, ptr noundef nonnull %148, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @DAG_id_tag_update(ptr noundef %106, i16 noundef signext 1) #6
  br label %150

150:                                              ; preds = %146, %142
  %151 = load ptr, ptr %101, align 8, !tbaa !124
  %152 = icmp eq ptr %151, null
  br i1 %152, label %168, label %100, !llvm.loop !153

153:                                              ; preds = %96
  br i1 %23, label %168, label %154

154:                                              ; preds = %153
  %155 = load ptr, ptr %38, align 8, !tbaa !124
  %156 = icmp eq ptr %155, null
  br i1 %156, label %168, label %157

157:                                              ; preds = %154, %157
  %158 = phi ptr [ %166, %157 ], [ %155, %154 ]
  %159 = call ptr @BLI_ghash_lookup(ptr noundef %44, ptr noundef nonnull %158) #6
  %160 = load ptr, ptr %29, align 8, !tbaa !38
  %161 = getelementptr inbounds %struct.Object, ptr %159, i64 0, i32 9
  store ptr %160, ptr %161, align 8, !tbaa !146
  %162 = getelementptr inbounds %struct.Object, ptr %159, i64 0, i32 4
  store i16 0, ptr %162, align 2, !tbaa !149
  %163 = getelementptr inbounds %struct.Object, ptr %159, i64 0, i32 48
  %164 = getelementptr inbounds %struct.DupliObject, ptr %158, i64 0, i32 3
  %165 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %163, ptr noundef nonnull %164) #6
  call void @BKE_object_apply_mat4(ptr noundef %159, ptr noundef nonnull %164, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @DAG_id_tag_update(ptr noundef %159, i16 noundef signext 1) #6
  %166 = load ptr, ptr %158, align 8, !tbaa !124
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %157, !llvm.loop !154

168:                                              ; preds = %150, %157, %97, %154, %153
  %169 = load ptr, ptr %29, align 8, !tbaa !38
  %170 = getelementptr inbounds %struct.Object, ptr %169, i64 0, i32 55
  %171 = load i16, ptr %170, align 8, !tbaa !118
  %172 = and i16 %171, 256
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %194, label %174

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.Object, ptr %169, i64 0, i32 112
  %176 = load ptr, ptr %175, align 8, !tbaa !117
  %177 = icmp eq ptr %176, null
  br i1 %177, label %194, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.Main, ptr %28, i64 0, i32 13
  %180 = load ptr, ptr %179, align 8, !tbaa !124
  %181 = icmp eq ptr %180, null
  br i1 %181, label %194, label %182

182:                                              ; preds = %178, %191
  %183 = phi ptr [ %192, %191 ], [ %180, %178 ]
  %184 = getelementptr inbounds %struct.Object, ptr %183, i64 0, i32 12
  %185 = load ptr, ptr %184, align 8, !tbaa !155
  %186 = load ptr, ptr %29, align 8, !tbaa !38
  %187 = icmp eq ptr %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.Object, ptr %183, i64 0, i32 11
  store ptr null, ptr %189, align 8, !tbaa !156
  %190 = getelementptr inbounds %struct.Object, ptr %183, i64 0, i32 13
  store ptr null, ptr %190, align 8, !tbaa !157
  call void @DAG_id_tag_update(ptr noundef nonnull %183, i16 noundef signext 1) #6
  br label %191

191:                                              ; preds = %188, %182
  %192 = load ptr, ptr %183, align 8, !tbaa !124
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %182, !llvm.loop !158

194:                                              ; preds = %191, %178, %174, %168
  %195 = icmp eq ptr %44, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %194
  call void @BLI_ghash_free(ptr noundef nonnull %44, ptr noundef null, ptr noundef null) #6
  br label %197

197:                                              ; preds = %196, %194
  %198 = icmp eq ptr %43, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %197
  call void @BLI_ghash_free(ptr noundef nonnull %43, ptr noundef nonnull @BLI_ghashutil_pairfree, ptr noundef null) #6
  br label %200

200:                                              ; preds = %199, %197
  %201 = call ptr @CTX_data_main(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %202 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #6
  %203 = load ptr, ptr %3, align 8, !tbaa !124
  %204 = icmp eq ptr %203, null
  br i1 %204, label %211, label %205

205:                                              ; preds = %200, %205
  %206 = phi ptr [ %209, %205 ], [ %203, %200 ]
  %207 = getelementptr inbounds %struct.CollectionPointerLink, ptr %206, i64 0, i32 2, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !125
  call void @BKE_object_relink(ptr noundef %208) #6
  %209 = load ptr, ptr %206, align 8, !tbaa !124
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %205, !llvm.loop !159

211:                                              ; preds = %205, %200
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @set_sca_new_poins() #6
  call void @BKE_main_id_clear_newpoins(ptr noundef %201) #6
  call void @free_object_duplilist(ptr noundef nonnull %38) #6
  %212 = load ptr, ptr %29, align 8, !tbaa !38
  %213 = getelementptr inbounds %struct.Object, ptr %212, i64 0, i32 55
  %214 = load i16, ptr %213, align 8, !tbaa !118
  %215 = and i16 %214, -2841
  store i16 %215, ptr %213, align 8, !tbaa !118
  br label %216

216:                                              ; preds = %24, %211
  %217 = load ptr, ptr %29, align 8, !tbaa !38
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85786624, ptr noundef %217) #6
  %218 = load ptr, ptr %25, align 8, !tbaa !124
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %24, !llvm.loop !160

220:                                              ; preds = %216, %2
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  call void @DAG_relations_tag_update(ptr noundef %5) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108864, ptr noundef %6) #6
  call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef null) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_convert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.94, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.95, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.96, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @convert_exec, ptr %5, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @convert_poll, ptr %6, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.97, ptr noundef nonnull @convert_target_items, i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #6
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !99
  %12 = load ptr, ptr %8, align 8, !tbaa !43
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.100, i32 noundef 0, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @convert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.97) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !47
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.100) #6
  %13 = trunc i32 %12 to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %14 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %15 = load ptr, ptr %3, align 8, !tbaa !124
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %2, %33
  %18 = phi ptr [ %34, %33 ], [ %15, %2 ]
  %19 = getelementptr inbounds %struct.CollectionPointerLink, ptr %18, i64 0, i32 2, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !125
  %21 = getelementptr inbounds %struct.Base, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 53
  %24 = load i16, ptr %23, align 4, !tbaa !129
  %25 = and i16 %24, -1025
  store i16 %25, ptr %23, align 4, !tbaa !129
  %26 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !90
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 5
  %31 = load i16, ptr %30, align 2, !tbaa !161
  %32 = or i16 %31, 1024
  store i16 %32, ptr %30, align 2, !tbaa !161
  br label %33

33:                                               ; preds = %29, %17
  %34 = load ptr, ptr %18, align 8, !tbaa !124
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %17, !llvm.loop !162

36:                                               ; preds = %33, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %37 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %4) #6
  %38 = load ptr, ptr %4, align 8, !tbaa !124
  %39 = icmp eq ptr %38, null
  br i1 %39, label %453, label %40

40:                                               ; preds = %36
  %41 = shl i32 %10, 16
  %42 = icmp eq i32 %41, 131072
  %43 = icmp eq i8 %13, 0
  %44 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 5
  %45 = load i64, ptr @CD_MASK_MESH, align 8
  %46 = icmp eq i32 %41, 65536
  %47 = icmp eq i8 %13, 0
  %48 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 5
  %49 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 46
  %50 = icmp eq i8 %13, 0
  %51 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 5
  %52 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 13
  %53 = icmp eq i32 %41, 65536
  %54 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 46
  %55 = icmp eq i32 %41, 65536
  %56 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 5
  %57 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 46
  %58 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %59 = icmp eq i8 %13, 0
  %60 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 5
  %61 = shl i32 %10, 16
  %62 = ashr exact i32 %61, 16
  %63 = icmp eq i8 %13, 0
  br label %64

64:                                               ; preds = %40, %446
  %65 = phi ptr [ %38, %40 ], [ %449, %446 ]
  %66 = phi ptr [ null, %40 ], [ %448, %446 ]
  %67 = phi i32 [ 0, %40 ], [ %447, %446 ]
  %68 = getelementptr inbounds %struct.CollectionPointerLink, ptr %65, i64 0, i32 2, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !125
  %70 = getelementptr inbounds %struct.Base, ptr %69, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !38
  %72 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 53
  %73 = load i16, ptr %72, align 4, !tbaa !129
  %74 = and i16 %73, 1024
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 19
  %78 = load ptr, ptr %77, align 8, !tbaa !90
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ID, ptr %78, i64 0, i32 5
  %82 = load i16, ptr %81, align 2, !tbaa !161
  %83 = and i16 %82, 1024
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %80, %76, %64
  %86 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 3
  %87 = load i16, ptr %86, align 8, !tbaa !98
  %88 = sext i16 %87 to i32
  %89 = icmp eq i32 %62, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.Base, ptr %69, i64 0, i32 4
  %92 = load i32, ptr %91, align 8, !tbaa !144
  %93 = and i32 %92, -2
  store i32 %93, ptr %91, align 8, !tbaa !144
  %94 = and i16 %73, -2
  store i16 %94, ptr %72, align 4, !tbaa !129
  br label %95

95:                                               ; preds = %90, %85
  %96 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 19
  %97 = load ptr, ptr %96, align 8, !tbaa !90
  %98 = icmp eq ptr %97, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ID, ptr %97, i64 0, i32 5
  %101 = load i16, ptr %100, align 2, !tbaa !161
  %102 = and i16 %101, 1024
  %103 = icmp eq i16 %102, 0
  %104 = icmp eq i16 %87, 1
  %105 = and i1 %104, %103
  br i1 %105, label %108, label %428

106:                                              ; preds = %95
  %107 = icmp eq i16 %87, 1
  br i1 %107, label %108, label %428

108:                                              ; preds = %99, %106
  call void @BKE_object_free_modifiers(ptr noundef %71) #6
  br label %428

109:                                              ; preds = %80
  %110 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 3
  %111 = load i16, ptr %110, align 8, !tbaa !98
  %112 = icmp eq i16 %111, 1
  %113 = select i1 %112, i1 %42, i1 false
  br i1 %113, label %114, label %145

114:                                              ; preds = %109
  %115 = or disjoint i16 %73, 1024
  store i16 %115, ptr %72, align 4, !tbaa !129
  br i1 %59, label %138, label %116

116:                                              ; preds = %114
  %117 = call ptr @BKE_object_copy(ptr noundef %71) #6
  call void @DAG_id_tag_update(ptr noundef %71, i16 noundef signext 7) #6
  %118 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !124
  %119 = call ptr %118(i64 noundef 40, ptr noundef nonnull @.str.155) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %119, ptr noundef nonnull align 8 dereferenceable(40) %69, i64 40, i1 false), !tbaa.struct !163
  call void @BLI_addhead(ptr noundef nonnull %60, ptr noundef %119) #6
  %120 = getelementptr inbounds %struct.Base, ptr %119, i64 0, i32 7
  store ptr %117, ptr %120, align 8, !tbaa !38
  %121 = getelementptr inbounds %struct.Base, ptr %119, i64 0, i32 4
  %122 = load i32, ptr %121, align 8, !tbaa !144
  %123 = or i32 %122, 1
  store i32 %123, ptr %121, align 8, !tbaa !144
  %124 = getelementptr inbounds %struct.Object, ptr %117, i64 0, i32 53
  %125 = load i16, ptr %124, align 4, !tbaa !129
  %126 = or i16 %125, 1
  store i16 %126, ptr %124, align 4, !tbaa !129
  %127 = getelementptr inbounds %struct.Base, ptr %69, i64 0, i32 4
  %128 = load i32, ptr %127, align 8, !tbaa !144
  %129 = and i32 %128, -2
  store i32 %129, ptr %127, align 8, !tbaa !144
  %130 = load i16, ptr %72, align 4, !tbaa !129
  %131 = and i16 %130, -2
  store i16 %131, ptr %72, align 4, !tbaa !129
  %132 = getelementptr inbounds %struct.Object, ptr %117, i64 0, i32 19
  %133 = load ptr, ptr %132, align 8, !tbaa !90
  %134 = getelementptr inbounds %struct.ID, ptr %133, i64 0, i32 6
  %135 = load i32, ptr %134, align 4, !tbaa !165
  %136 = add nsw i32 %135, -1
  store i32 %136, ptr %134, align 4, !tbaa !165
  %137 = call ptr @BKE_mesh_copy(ptr noundef %133) #6
  store ptr %137, ptr %132, align 8, !tbaa !90
  br label %138

138:                                              ; preds = %114, %116
  %139 = phi ptr [ %117, %116 ], [ %71, %114 ]
  %140 = phi ptr [ %119, %116 ], [ null, %114 ]
  call void @BKE_mesh_to_curve(ptr noundef %6, ptr noundef %139) #6
  %141 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 3
  %142 = load i16, ptr %141, align 8, !tbaa !98
  %143 = icmp eq i16 %142, 2
  br i1 %143, label %144, label %428

144:                                              ; preds = %138
  call void @BKE_object_free_modifiers(ptr noundef %139) #6
  call void @ED_rigidbody_object_remove(ptr noundef %6, ptr noundef %139) #6
  br label %428

145:                                              ; preds = %109
  br i1 %112, label %146, label %183

146:                                              ; preds = %145
  %147 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 26
  %148 = load ptr, ptr %147, align 8, !tbaa !168
  %149 = icmp eq ptr %148, null
  br i1 %149, label %183, label %150

150:                                              ; preds = %146
  %151 = or disjoint i16 %73, 1024
  store i16 %151, ptr %72, align 4, !tbaa !129
  br i1 %43, label %174, label %152

152:                                              ; preds = %150
  %153 = call ptr @BKE_object_copy(ptr noundef %71) #6
  call void @DAG_id_tag_update(ptr noundef %71, i16 noundef signext 7) #6
  %154 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !124
  %155 = call ptr %154(i64 noundef 40, ptr noundef nonnull @.str.155) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %155, ptr noundef nonnull align 8 dereferenceable(40) %69, i64 40, i1 false), !tbaa.struct !163
  call void @BLI_addhead(ptr noundef nonnull %44, ptr noundef %155) #6
  %156 = getelementptr inbounds %struct.Base, ptr %155, i64 0, i32 7
  store ptr %153, ptr %156, align 8, !tbaa !38
  %157 = getelementptr inbounds %struct.Base, ptr %155, i64 0, i32 4
  %158 = load i32, ptr %157, align 8, !tbaa !144
  %159 = or i32 %158, 1
  store i32 %159, ptr %157, align 8, !tbaa !144
  %160 = getelementptr inbounds %struct.Object, ptr %153, i64 0, i32 53
  %161 = load i16, ptr %160, align 4, !tbaa !129
  %162 = or i16 %161, 1
  store i16 %162, ptr %160, align 4, !tbaa !129
  %163 = getelementptr inbounds %struct.Base, ptr %69, i64 0, i32 4
  %164 = load i32, ptr %163, align 8, !tbaa !144
  %165 = and i32 %164, -2
  store i32 %165, ptr %163, align 8, !tbaa !144
  %166 = load i16, ptr %72, align 4, !tbaa !129
  %167 = and i16 %166, -2
  store i16 %167, ptr %72, align 4, !tbaa !129
  %168 = getelementptr inbounds %struct.Object, ptr %153, i64 0, i32 19
  %169 = load ptr, ptr %168, align 8, !tbaa !90
  %170 = getelementptr inbounds %struct.ID, ptr %169, i64 0, i32 6
  %171 = load i32, ptr %170, align 4, !tbaa !165
  %172 = add nsw i32 %171, -1
  store i32 %172, ptr %170, align 4, !tbaa !165
  %173 = call ptr @BKE_mesh_copy(ptr noundef %169) #6
  store ptr %173, ptr %168, align 8, !tbaa !90
  br label %175

174:                                              ; preds = %150
  call void @DAG_id_tag_update(ptr noundef %71, i16 noundef signext 7) #6
  br label %175

175:                                              ; preds = %174, %152
  %176 = phi ptr [ %153, %152 ], [ %71, %174 ]
  %177 = phi ptr [ %155, %152 ], [ null, %174 ]
  %178 = call ptr @mesh_get_derived_final(ptr noundef %6, ptr noundef %176, i64 noundef %45) #6
  %179 = getelementptr inbounds %struct.Object, ptr %176, i64 0, i32 19
  %180 = load ptr, ptr %179, align 8, !tbaa !90
  call void @DM_to_mesh(ptr noundef %178, ptr noundef %180, ptr noundef %176, i64 noundef %45) #6
  %181 = getelementptr inbounds %struct.DerivedMesh, ptr %178, i64 0, i32 95
  %182 = load ptr, ptr %181, align 8, !tbaa !169
  call void %182(ptr noundef %178) #6
  call void @BKE_object_free_modifiers(ptr noundef %176) #6
  br label %428

183:                                              ; preds = %146, %145
  switch i16 %111, label %342 [
    i16 4, label %184
    i16 2, label %296
    i16 3, label %296
  ]

184:                                              ; preds = %183
  %185 = or disjoint i16 %73, 1024
  store i16 %185, ptr %72, align 4, !tbaa !129
  br i1 %50, label %209, label %186

186:                                              ; preds = %184
  %187 = call ptr @BKE_object_copy(ptr noundef %71) #6
  call void @DAG_id_tag_update(ptr noundef %71, i16 noundef signext 7) #6
  %188 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !124
  %189 = call ptr %188(i64 noundef 40, ptr noundef nonnull @.str.155) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %189, ptr noundef nonnull align 8 dereferenceable(40) %69, i64 40, i1 false), !tbaa.struct !163
  call void @BLI_addhead(ptr noundef nonnull %51, ptr noundef %189) #6
  %190 = getelementptr inbounds %struct.Base, ptr %189, i64 0, i32 7
  store ptr %187, ptr %190, align 8, !tbaa !38
  %191 = getelementptr inbounds %struct.Base, ptr %189, i64 0, i32 4
  %192 = load i32, ptr %191, align 8, !tbaa !144
  %193 = or i32 %192, 1
  store i32 %193, ptr %191, align 8, !tbaa !144
  %194 = getelementptr inbounds %struct.Object, ptr %187, i64 0, i32 53
  %195 = load i16, ptr %194, align 4, !tbaa !129
  %196 = or i16 %195, 1
  store i16 %196, ptr %194, align 4, !tbaa !129
  %197 = getelementptr inbounds %struct.Base, ptr %69, i64 0, i32 4
  %198 = load i32, ptr %197, align 8, !tbaa !144
  %199 = and i32 %198, -2
  store i32 %199, ptr %197, align 8, !tbaa !144
  %200 = load i16, ptr %72, align 4, !tbaa !129
  %201 = and i16 %200, -2
  store i16 %201, ptr %72, align 4, !tbaa !129
  %202 = getelementptr inbounds %struct.Object, ptr %187, i64 0, i32 19
  %203 = load ptr, ptr %202, align 8, !tbaa !90
  %204 = getelementptr inbounds %struct.ID, ptr %203, i64 0, i32 6
  %205 = load i32, ptr %204, align 4, !tbaa !171
  %206 = add nsw i32 %205, -1
  store i32 %206, ptr %204, align 4, !tbaa !171
  %207 = load ptr, ptr %77, align 8, !tbaa !90
  %208 = call ptr @BKE_curve_copy(ptr noundef %207) #6
  store ptr %208, ptr %202, align 8, !tbaa !90
  br label %209

209:                                              ; preds = %184, %186
  %210 = phi ptr [ %187, %186 ], [ %71, %184 ]
  %211 = phi ptr [ %189, %186 ], [ null, %184 ]
  %212 = getelementptr inbounds %struct.Object, ptr %210, i64 0, i32 19
  %213 = load ptr, ptr %212, align 8, !tbaa !90
  %214 = call zeroext i8 @BKE_vfont_to_curve(ptr noundef %5, ptr noundef %210, i32 noundef 0) #6
  %215 = getelementptr inbounds %struct.Object, ptr %210, i64 0, i32 3
  store i16 2, ptr %215, align 8, !tbaa !98
  %216 = getelementptr inbounds %struct.Curve, ptr %213, i64 0, i32 14
  store i16 2, ptr %216, align 4, !tbaa !172
  %217 = getelementptr inbounds %struct.Curve, ptr %213, i64 0, i32 55
  %218 = load ptr, ptr %217, align 8, !tbaa !173
  %219 = icmp eq ptr %218, null
  br i1 %219, label %224, label %220

220:                                              ; preds = %209
  %221 = getelementptr inbounds %struct.ID, ptr %218, i64 0, i32 6
  %222 = load i32, ptr %221, align 4, !tbaa !174
  %223 = add nsw i32 %222, -1
  store i32 %223, ptr %221, align 4, !tbaa !174
  store ptr null, ptr %217, align 8, !tbaa !173
  br label %224

224:                                              ; preds = %220, %209
  %225 = getelementptr inbounds %struct.Curve, ptr %213, i64 0, i32 56
  %226 = load ptr, ptr %225, align 8, !tbaa !176
  %227 = icmp eq ptr %226, null
  br i1 %227, label %232, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.ID, ptr %226, i64 0, i32 6
  %230 = load i32, ptr %229, align 4, !tbaa !174
  %231 = add nsw i32 %230, -1
  store i32 %231, ptr %229, align 4, !tbaa !174
  store ptr null, ptr %225, align 8, !tbaa !176
  br label %232

232:                                              ; preds = %228, %224
  %233 = getelementptr inbounds %struct.Curve, ptr %213, i64 0, i32 57
  %234 = load ptr, ptr %233, align 8, !tbaa !177
  %235 = icmp eq ptr %234, null
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.ID, ptr %234, i64 0, i32 6
  %238 = load i32, ptr %237, align 4, !tbaa !174
  %239 = add nsw i32 %238, -1
  store i32 %239, ptr %237, align 4, !tbaa !174
  store ptr null, ptr %233, align 8, !tbaa !177
  br label %240

240:                                              ; preds = %236, %232
  %241 = getelementptr inbounds %struct.Curve, ptr %213, i64 0, i32 58
  %242 = load ptr, ptr %241, align 8, !tbaa !178
  %243 = icmp eq ptr %242, null
  br i1 %243, label %248, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.ID, ptr %242, i64 0, i32 6
  %246 = load i32, ptr %245, align 4, !tbaa !174
  %247 = add nsw i32 %246, -1
  store i32 %247, ptr %245, align 4, !tbaa !174
  store ptr null, ptr %241, align 8, !tbaa !178
  br label %248

248:                                              ; preds = %244, %240
  br i1 %50, label %249, label %267

249:                                              ; preds = %248
  %250 = getelementptr inbounds %struct.ID, ptr %213, i64 0, i32 6
  %251 = load i32, ptr %250, align 4, !tbaa !171
  %252 = icmp sgt i32 %251, 1
  br i1 %252, label %253, label %267

253:                                              ; preds = %249
  %254 = load ptr, ptr %52, align 8, !tbaa !124
  %255 = icmp eq ptr %254, null
  br i1 %255, label %267, label %256

256:                                              ; preds = %253, %264
  %257 = phi ptr [ %265, %264 ], [ %254, %253 ]
  %258 = getelementptr inbounds %struct.Object, ptr %257, i64 0, i32 19
  %259 = load ptr, ptr %258, align 8, !tbaa !90
  %260 = load ptr, ptr %77, align 8, !tbaa !90
  %261 = icmp eq ptr %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.Object, ptr %257, i64 0, i32 3
  store i16 2, ptr %263, align 8, !tbaa !98
  call void @DAG_id_tag_update(ptr noundef nonnull %257, i16 noundef signext 7) #6
  br label %264

264:                                              ; preds = %256, %262
  %265 = load ptr, ptr %257, align 8, !tbaa !124
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %256, !llvm.loop !179

267:                                              ; preds = %264, %253, %249, %248
  %268 = getelementptr inbounds %struct.Curve, ptr %213, i64 0, i32 3
  %269 = load ptr, ptr %268, align 8, !tbaa !124
  %270 = icmp eq ptr %269, null
  br i1 %270, label %276, label %271

271:                                              ; preds = %267, %271
  %272 = phi ptr [ %274, %271 ], [ %269, %267 ]
  %273 = getelementptr inbounds %struct.Nurb, ptr %272, i64 0, i32 21
  store i32 0, ptr %273, align 4, !tbaa !180
  %274 = load ptr, ptr %272, align 8, !tbaa !124
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %271, !llvm.loop !182

276:                                              ; preds = %271, %267
  %277 = getelementptr inbounds %struct.Curve, ptr %213, i64 0, i32 23
  %278 = load i32, ptr %277, align 4, !tbaa !100
  %279 = and i32 %278, -2
  store i32 %279, ptr %277, align 4, !tbaa !100
  call void @BKE_curve_curve_dimension_update(ptr noundef %213) #6
  br i1 %53, label %280, label %428

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.Object, ptr %210, i64 0, i32 118
  %282 = load ptr, ptr %281, align 8, !tbaa !147
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %289

284:                                              ; preds = %280
  %285 = load i16, ptr %215, align 8, !tbaa !98
  switch i16 %285, label %289 [
    i16 3, label %286
    i16 2, label %286
    i16 4, label %286
    i16 5, label %287
  ]

286:                                              ; preds = %284, %284, %284
  call void @BKE_displist_make_curveTypes(ptr noundef %6, ptr noundef %210, i8 noundef zeroext 0) #6
  br label %289

287:                                              ; preds = %284
  %288 = load ptr, ptr %54, align 8, !tbaa !138
  call void @BKE_displist_make_mball(ptr noundef %288, ptr noundef %6, ptr noundef %210) #6
  br label %289

289:                                              ; preds = %287, %286, %284, %280
  call void @BKE_mesh_from_nurbs(ptr noundef %210) #6
  %290 = load i16, ptr %215, align 8, !tbaa !98
  %291 = icmp eq i16 %290, 1
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  call void @BKE_object_free_modifiers(ptr noundef %210) #6
  %293 = getelementptr inbounds %struct.Object, ptr %210, i64 0, i32 113
  store i8 1, ptr %293, align 8, !tbaa !88
  %294 = getelementptr inbounds %struct.Object, ptr %210, i64 0, i32 99
  store i32 81920, ptr %294, align 8, !tbaa !89
  br label %295

295:                                              ; preds = %289, %292
  call void @BKE_object_free_curve_cache(ptr noundef %210) #6
  br label %428

296:                                              ; preds = %183, %183
  %297 = or disjoint i16 %73, 1024
  store i16 %297, ptr %72, align 4, !tbaa !129
  br i1 %46, label %298, label %428

298:                                              ; preds = %296
  br i1 %47, label %322, label %299

299:                                              ; preds = %298
  %300 = call ptr @BKE_object_copy(ptr noundef %71) #6
  call void @DAG_id_tag_update(ptr noundef %71, i16 noundef signext 7) #6
  %301 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !124
  %302 = call ptr %301(i64 noundef 40, ptr noundef nonnull @.str.155) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %302, ptr noundef nonnull align 8 dereferenceable(40) %69, i64 40, i1 false), !tbaa.struct !163
  call void @BLI_addhead(ptr noundef nonnull %48, ptr noundef %302) #6
  %303 = getelementptr inbounds %struct.Base, ptr %302, i64 0, i32 7
  store ptr %300, ptr %303, align 8, !tbaa !38
  %304 = getelementptr inbounds %struct.Base, ptr %302, i64 0, i32 4
  %305 = load i32, ptr %304, align 8, !tbaa !144
  %306 = or i32 %305, 1
  store i32 %306, ptr %304, align 8, !tbaa !144
  %307 = getelementptr inbounds %struct.Object, ptr %300, i64 0, i32 53
  %308 = load i16, ptr %307, align 4, !tbaa !129
  %309 = or i16 %308, 1
  store i16 %309, ptr %307, align 4, !tbaa !129
  %310 = getelementptr inbounds %struct.Base, ptr %69, i64 0, i32 4
  %311 = load i32, ptr %310, align 8, !tbaa !144
  %312 = and i32 %311, -2
  store i32 %312, ptr %310, align 8, !tbaa !144
  %313 = load i16, ptr %72, align 4, !tbaa !129
  %314 = and i16 %313, -2
  store i16 %314, ptr %72, align 4, !tbaa !129
  %315 = getelementptr inbounds %struct.Object, ptr %300, i64 0, i32 19
  %316 = load ptr, ptr %315, align 8, !tbaa !90
  %317 = getelementptr inbounds %struct.ID, ptr %316, i64 0, i32 6
  %318 = load i32, ptr %317, align 4, !tbaa !171
  %319 = add nsw i32 %318, -1
  store i32 %319, ptr %317, align 4, !tbaa !171
  %320 = load ptr, ptr %77, align 8, !tbaa !90
  %321 = call ptr @BKE_curve_copy(ptr noundef %320) #6
  store ptr %321, ptr %315, align 8, !tbaa !90
  br label %322

322:                                              ; preds = %298, %299
  %323 = phi ptr [ %300, %299 ], [ %71, %298 ]
  %324 = phi ptr [ %302, %299 ], [ null, %298 ]
  %325 = getelementptr inbounds %struct.Object, ptr %323, i64 0, i32 118
  %326 = load ptr, ptr %325, align 8, !tbaa !147
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %334

328:                                              ; preds = %322
  %329 = getelementptr inbounds %struct.Object, ptr %323, i64 0, i32 3
  %330 = load i16, ptr %329, align 8, !tbaa !98
  switch i16 %330, label %334 [
    i16 3, label %331
    i16 2, label %331
    i16 4, label %331
    i16 5, label %332
  ]

331:                                              ; preds = %328, %328, %328
  call void @BKE_displist_make_curveTypes(ptr noundef %6, ptr noundef %323, i8 noundef zeroext 0) #6
  br label %334

332:                                              ; preds = %328
  %333 = load ptr, ptr %49, align 8, !tbaa !138
  call void @BKE_displist_make_mball(ptr noundef %333, ptr noundef %6, ptr noundef %323) #6
  br label %334

334:                                              ; preds = %332, %331, %328, %322
  call void @BKE_mesh_from_nurbs(ptr noundef %323) #6
  %335 = getelementptr inbounds %struct.Object, ptr %323, i64 0, i32 3
  %336 = load i16, ptr %335, align 8, !tbaa !98
  %337 = icmp eq i16 %336, 1
  br i1 %337, label %338, label %341

338:                                              ; preds = %334
  call void @BKE_object_free_modifiers(ptr noundef %323) #6
  %339 = getelementptr inbounds %struct.Object, ptr %323, i64 0, i32 113
  store i8 1, ptr %339, align 8, !tbaa !88
  %340 = getelementptr inbounds %struct.Object, ptr %323, i64 0, i32 99
  store i32 81920, ptr %340, align 8, !tbaa !89
  br label %341

341:                                              ; preds = %334, %338
  call void @BKE_object_free_curve_cache(ptr noundef %323) #6
  br label %428

342:                                              ; preds = %183
  %343 = icmp eq i16 %111, 5
  %344 = select i1 %343, i1 %55, i1 false
  br i1 %344, label %345, label %446

345:                                              ; preds = %342
  %346 = getelementptr inbounds %struct.Base, ptr %69, i64 0, i32 4
  %347 = load i32, ptr %346, align 8, !tbaa !144
  %348 = and i32 %347, -2
  store i32 %348, ptr %346, align 8, !tbaa !144
  %349 = and i16 %73, -1026
  store i16 %349, ptr %72, align 4, !tbaa !129
  %350 = call ptr @BKE_mball_basis_find(ptr noundef %6, ptr noundef %71) #6
  %351 = icmp eq ptr %71, %350
  br i1 %351, label %355, label %352

352:                                              ; preds = %345
  %353 = load i16, ptr %72, align 4, !tbaa !129
  %354 = or i16 %353, 1024
  store i16 %354, ptr %72, align 4, !tbaa !129
  br label %355

355:                                              ; preds = %352, %345
  %356 = getelementptr inbounds %struct.Object, ptr %350, i64 0, i32 53
  %357 = load i16, ptr %356, align 4, !tbaa !129
  %358 = and i16 %357, 1024
  %359 = icmp eq i16 %358, 0
  br i1 %359, label %360, label %428

360:                                              ; preds = %355
  %361 = or disjoint i16 %357, 1024
  store i16 %361, ptr %356, align 4, !tbaa !129
  %362 = icmp eq ptr %350, null
  br i1 %362, label %363, label %365

363:                                              ; preds = %360
  %364 = load ptr, ptr %70, align 8, !tbaa !38
  br label %365

365:                                              ; preds = %360, %363
  %366 = phi ptr [ %364, %363 ], [ %350, %360 ]
  %367 = call ptr @BKE_object_copy(ptr noundef %366) #6
  call void @DAG_id_tag_update(ptr noundef %366, i16 noundef signext 7) #6
  %368 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !124
  %369 = call ptr %368(i64 noundef 40, ptr noundef nonnull @.str.155) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %369, ptr noundef nonnull align 8 dereferenceable(40) %69, i64 40, i1 false), !tbaa.struct !163
  call void @BLI_addhead(ptr noundef nonnull %56, ptr noundef %369) #6
  %370 = getelementptr inbounds %struct.Base, ptr %369, i64 0, i32 7
  store ptr %367, ptr %370, align 8, !tbaa !38
  %371 = getelementptr inbounds %struct.Base, ptr %369, i64 0, i32 4
  %372 = load i32, ptr %371, align 8, !tbaa !144
  %373 = or i32 %372, 1
  store i32 %373, ptr %371, align 8, !tbaa !144
  %374 = getelementptr inbounds %struct.Object, ptr %367, i64 0, i32 53
  %375 = load i16, ptr %374, align 4, !tbaa !129
  %376 = or i16 %375, 1
  store i16 %376, ptr %374, align 4, !tbaa !129
  %377 = load i32, ptr %346, align 8, !tbaa !144
  %378 = and i32 %377, -2
  store i32 %378, ptr %346, align 8, !tbaa !144
  %379 = getelementptr inbounds %struct.Object, ptr %366, i64 0, i32 53
  %380 = load i16, ptr %379, align 4, !tbaa !129
  %381 = and i16 %380, -2
  store i16 %381, ptr %379, align 4, !tbaa !129
  %382 = getelementptr inbounds %struct.Object, ptr %367, i64 0, i32 19
  %383 = load ptr, ptr %382, align 8, !tbaa !90
  %384 = getelementptr inbounds %struct.ID, ptr %383, i64 0, i32 6
  %385 = load i32, ptr %384, align 4, !tbaa !183
  %386 = add nsw i32 %385, -1
  store i32 %386, ptr %384, align 4, !tbaa !183
  %387 = call ptr @BKE_mesh_add(ptr noundef %5, ptr noundef nonnull @.str.154) #6
  store ptr %387, ptr %382, align 8, !tbaa !90
  %388 = getelementptr inbounds %struct.Object, ptr %367, i64 0, i32 3
  store i16 1, ptr %388, align 8, !tbaa !98
  %389 = getelementptr inbounds %struct.MetaBall, ptr %383, i64 0, i32 9
  %390 = load i16, ptr %389, align 2, !tbaa !185
  %391 = getelementptr inbounds %struct.Mesh, ptr %387, i64 0, i32 47
  store i16 %390, ptr %391, align 2, !tbaa !186
  %392 = getelementptr inbounds %struct.Object, ptr %367, i64 0, i32 31
  %393 = load i32, ptr %392, align 8, !tbaa !143
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %412, label %395

395:                                              ; preds = %365
  %396 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !124
  %397 = getelementptr inbounds %struct.MetaBall, ptr %383, i64 0, i32 6
  %398 = load ptr, ptr %397, align 8, !tbaa !187
  %399 = call ptr %396(ptr noundef %398) #6
  %400 = getelementptr inbounds %struct.Mesh, ptr %387, i64 0, i32 5
  store ptr %399, ptr %400, align 8, !tbaa !188
  %401 = load i32, ptr %392, align 8, !tbaa !143
  %402 = icmp sgt i32 %401, 0
  br i1 %402, label %403, label %412

403:                                              ; preds = %395, %403
  %404 = phi i64 [ %408, %403 ], [ 0, %395 ]
  %405 = load ptr, ptr %400, align 8, !tbaa !188
  %406 = getelementptr inbounds ptr, ptr %405, i64 %404
  %407 = load ptr, ptr %406, align 8, !tbaa !124
  call void @id_us_plus(ptr noundef %407) #6
  %408 = add nuw nsw i64 %404, 1
  %409 = load i32, ptr %392, align 8, !tbaa !143
  %410 = sext i32 %409 to i64
  %411 = icmp slt i64 %408, %410
  br i1 %411, label %403, label %412, !llvm.loop !189

412:                                              ; preds = %403, %395, %365
  %413 = getelementptr inbounds %struct.Object, ptr %350, i64 0, i32 118
  %414 = load ptr, ptr %413, align 8, !tbaa !147
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %422

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.Object, ptr %350, i64 0, i32 3
  %418 = load i16, ptr %417, align 8, !tbaa !98
  switch i16 %418, label %422 [
    i16 3, label %419
    i16 2, label %419
    i16 4, label %419
    i16 5, label %420
  ]

419:                                              ; preds = %416, %416, %416
  call void @BKE_displist_make_curveTypes(ptr noundef %6, ptr noundef %350, i8 noundef zeroext 0) #6
  br label %422

420:                                              ; preds = %416
  %421 = load ptr, ptr %57, align 8, !tbaa !138
  call void @BKE_displist_make_mball(ptr noundef %421, ptr noundef %6, ptr noundef %350) #6
  br label %422

422:                                              ; preds = %412, %416, %419, %420
  %423 = load ptr, ptr %413, align 8, !tbaa !147
  %424 = load ptr, ptr %382, align 8, !tbaa !90
  call void @BKE_mesh_from_metaball(ptr noundef %423, ptr noundef %424) #6
  %425 = load i16, ptr %58, align 8, !tbaa !98
  %426 = icmp eq i16 %425, 5
  %427 = select i1 %426, ptr %369, ptr %66
  br label %428

428:                                              ; preds = %355, %422, %144, %138, %295, %276, %296, %341, %175, %99, %108, %106
  %429 = phi i32 [ %67, %99 ], [ %67, %108 ], [ %67, %106 ], [ %67, %144 ], [ %67, %138 ], [ %67, %175 ], [ %67, %295 ], [ %67, %276 ], [ %67, %341 ], [ %67, %296 ], [ %67, %355 ], [ 1, %422 ]
  %430 = phi ptr [ %66, %99 ], [ %66, %108 ], [ %66, %106 ], [ %66, %144 ], [ %66, %138 ], [ %66, %175 ], [ %66, %295 ], [ %66, %276 ], [ %66, %341 ], [ %66, %296 ], [ %66, %355 ], [ %427, %422 ]
  %431 = phi ptr [ null, %99 ], [ null, %108 ], [ null, %106 ], [ %140, %144 ], [ %140, %138 ], [ %177, %175 ], [ %211, %295 ], [ %211, %276 ], [ %324, %341 ], [ null, %296 ], [ null, %355 ], [ %369, %422 ]
  %432 = icmp eq ptr %431, null
  %433 = icmp eq ptr %71, %7
  %434 = select i1 %433, ptr %431, ptr %430
  %435 = select i1 %432, ptr %430, ptr %434
  br i1 %63, label %436, label %446

436:                                              ; preds = %428
  %437 = load i16, ptr %72, align 4, !tbaa !129
  %438 = and i16 %437, 1024
  %439 = icmp eq i16 %438, 0
  br i1 %439, label %446, label %440

440:                                              ; preds = %436
  call void @DAG_id_tag_update(ptr noundef %71, i16 noundef signext 2) #6
  %441 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 19
  %442 = load ptr, ptr %441, align 8, !tbaa !90
  %443 = getelementptr inbounds %struct.ID, ptr %442, i64 0, i32 5
  %444 = load i16, ptr %443, align 2, !tbaa !161
  %445 = and i16 %444, -1025
  store i16 %445, ptr %443, align 2, !tbaa !161
  br label %446

446:                                              ; preds = %428, %436, %440, %342
  %447 = phi i32 [ %67, %342 ], [ %429, %440 ], [ %429, %436 ], [ %429, %428 ]
  %448 = phi ptr [ %66, %342 ], [ %435, %440 ], [ %435, %436 ], [ %435, %428 ]
  %449 = load ptr, ptr %65, align 8, !tbaa !124
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %64, !llvm.loop !190

451:                                              ; preds = %446
  %452 = icmp eq i32 %447, 0
  br label %453

453:                                              ; preds = %451, %36
  %454 = phi i1 [ true, %36 ], [ %452, %451 ]
  %455 = phi ptr [ null, %36 ], [ %448, %451 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  %456 = icmp eq i8 %13, 0
  br i1 %456, label %457, label %492

457:                                              ; preds = %453
  br i1 %454, label %491, label %458

458:                                              ; preds = %457
  %459 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 5
  %460 = load ptr, ptr %459, align 8, !tbaa !191
  %461 = icmp eq ptr %460, null
  br i1 %461, label %491, label %462

462:                                              ; preds = %458
  %463 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  br label %464

464:                                              ; preds = %462, %489
  %465 = phi ptr [ %460, %462 ], [ %468, %489 ]
  %466 = getelementptr inbounds %struct.Base, ptr %465, i64 0, i32 7
  %467 = load ptr, ptr %466, align 8, !tbaa !38
  %468 = load ptr, ptr %465, align 8, !tbaa !192
  %469 = getelementptr inbounds %struct.Object, ptr %467, i64 0, i32 3
  %470 = load i16, ptr %469, align 8, !tbaa !98
  %471 = icmp eq i16 %470, 5
  br i1 %471, label %472, label %489

472:                                              ; preds = %464
  call void @DAG_id_type_tag(ptr noundef %5, i16 noundef signext 16975) #6
  call void @BKE_scene_base_unlink(ptr noundef %6, ptr noundef nonnull %465) #6
  %473 = load ptr, ptr %466, align 8, !tbaa !38
  %474 = getelementptr inbounds %struct.Object, ptr %473, i64 0, i32 3
  %475 = load i16, ptr %474, align 8, !tbaa !98
  %476 = icmp eq i16 %475, 10
  br i1 %476, label %477, label %482

477:                                              ; preds = %472
  %478 = getelementptr inbounds %struct.Object, ptr %473, i64 0, i32 125
  %479 = load ptr, ptr %478, align 8, !tbaa !123
  %480 = icmp eq ptr %479, null
  br i1 %480, label %482, label %481

481:                                              ; preds = %477
  call void @GPU_lamp_free(ptr noundef %473) #6
  br label %482

482:                                              ; preds = %481, %477, %472
  %483 = load ptr, ptr %466, align 8, !tbaa !38
  call void @BKE_libblock_free_us(ptr noundef %5, ptr noundef %483) #6
  %484 = load ptr, ptr %463, align 8, !tbaa !69
  %485 = icmp eq ptr %484, %465
  br i1 %485, label %486, label %487

486:                                              ; preds = %482
  store ptr null, ptr %463, align 8, !tbaa !69
  br label %487

487:                                              ; preds = %482, %486
  %488 = load ptr, ptr @MEM_freeN, align 8, !tbaa !124
  call void %488(ptr noundef nonnull %465) #6
  br label %489

489:                                              ; preds = %487, %464
  %490 = icmp eq ptr %468, null
  br i1 %490, label %491, label %464, !llvm.loop !193

491:                                              ; preds = %489, %458, %457
  call void @DAG_relations_tag_update(ptr noundef %5) #6
  br label %492

492:                                              ; preds = %491, %453
  %493 = icmp eq ptr %455, null
  br i1 %493, label %496, label %494

494:                                              ; preds = %492
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %455) #6
  %495 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  store ptr %455, ptr %495, align 8, !tbaa !69
  br label %509

496:                                              ; preds = %492
  %497 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %498 = load ptr, ptr %497, align 8, !tbaa !69
  %499 = getelementptr inbounds %struct.Base, ptr %498, i64 0, i32 7
  %500 = load ptr, ptr %499, align 8, !tbaa !38
  %501 = getelementptr inbounds %struct.Object, ptr %500, i64 0, i32 53
  %502 = load i16, ptr %501, align 4, !tbaa !129
  %503 = and i16 %502, 1024
  %504 = icmp eq i16 %503, 0
  br i1 %504, label %509, label %505

505:                                              ; preds = %496
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %500) #6
  %506 = load ptr, ptr %497, align 8, !tbaa !69
  %507 = getelementptr inbounds %struct.Base, ptr %506, i64 0, i32 7
  %508 = load ptr, ptr %507, align 8, !tbaa !38
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 89849856, ptr noundef %508) #6
  br label %509

509:                                              ; preds = %496, %505, %494
  call void @DAG_relations_tag_update(ptr noundef %5) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %6) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %6) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @convert_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = icmp eq ptr %5, null
  %7 = icmp ne ptr %2, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !194
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 53
  %15 = load i16, ptr %14, align 4, !tbaa !129
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !195
  %21 = icmp eq ptr %20, null
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %13, %9, %1
  %24 = phi i32 [ 0, %13 ], [ 0, %9 ], [ 0, %1 ], [ %22, %18 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ED_object_add_duplicate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %0) #6
  tail call void @clear_sca_new_poins() #6
  %5 = tail call fastcc ptr @object_add_duplicate_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  tail call void @BKE_object_relink(ptr noundef %9) #6
  tail call void @set_sca_new_poins_ob(ptr noundef %9) #6
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @ED_render_id_flush_update(ptr noundef %0, ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %7, %13, %4
  %15 = phi ptr [ null, %4 ], [ %5, %13 ], [ %5, %7 ]
  ret ptr %15
}

declare void @BKE_main_id_clear_newpoins(ptr noundef) local_unnamed_addr #2

declare void @clear_sca_new_poins() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @object_add_duplicate_internal(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 27
  %8 = load i32, ptr %7, align 8, !tbaa !196
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %345

11:                                               ; preds = %4
  %12 = tail call ptr @BKE_object_copy(ptr noundef %6) #6
  tail call void @DAG_id_tag_update(ptr noundef %12, i16 noundef signext 7) #6
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !124
  %14 = tail call ptr %13(i64 noundef 40, ptr noundef nonnull @.str.155) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !163
  %15 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  tail call void @BLI_addhead(ptr noundef nonnull %15, ptr noundef %14) #6
  %16 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  store ptr %12, ptr %16, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !144
  %19 = and i32 %18, 4096
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 128
  %23 = load ptr, ptr %22, align 8, !tbaa !197
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 129
  %27 = load ptr, ptr %26, align 8, !tbaa !198
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %25, %21, %11
  %30 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %31 = load ptr, ptr %30, align 8, !tbaa !124
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %29, %39
  %34 = phi ptr [ %40, %39 ], [ %31, %29 ]
  %35 = tail call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %34, ptr noundef %6) #6
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call zeroext i8 @BKE_group_object_add(ptr noundef nonnull %34, ptr noundef %12, ptr noundef %1, ptr noundef %14) #6
  br label %39

39:                                               ; preds = %33, %37
  %40 = load ptr, ptr %34, align 8, !tbaa !124
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %33, !llvm.loop !199

42:                                               ; preds = %39, %29, %25
  %43 = and i32 %3, 1024
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @BKE_copy_animdata_id_action(ptr noundef %12) #6
  br label %46

46:                                               ; preds = %45, %42
  %47 = and i32 %3, 128
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %89, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 31
  %51 = load i32, ptr %50, align 8, !tbaa !143
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 29
  br label %55

55:                                               ; preds = %53, %84
  %56 = phi i64 [ 0, %53 ], [ %85, %84 ]
  %57 = load ptr, ptr %54, align 8, !tbaa !142
  %58 = getelementptr inbounds ptr, ptr %57, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !124
  %60 = icmp eq ptr %59, null
  br i1 %60, label %84, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !200
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  store ptr %63, ptr %58, align 8, !tbaa !124
  %66 = load ptr, ptr %54, align 8, !tbaa !142
  %67 = getelementptr inbounds ptr, ptr %66, i64 %56
  %68 = load ptr, ptr %67, align 8, !tbaa !124
  %69 = getelementptr inbounds %struct.ID, ptr %68, i64 0, i32 6
  %70 = load i32, ptr %69, align 4, !tbaa !204
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 4, !tbaa !204
  br label %76

72:                                               ; preds = %61
  %73 = tail call ptr @BKE_material_copy(ptr noundef nonnull %59) #6
  %74 = load ptr, ptr %54, align 8, !tbaa !142
  %75 = getelementptr inbounds ptr, ptr %74, i64 %56
  store ptr %73, ptr %75, align 8, !tbaa !124
  br label %76

76:                                               ; preds = %72, %65
  %77 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 6
  %78 = load i32, ptr %77, align 4, !tbaa !205
  %79 = add nsw i32 %78, -1
  store i32 %79, ptr %77, align 4, !tbaa !205
  br i1 %44, label %84, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %54, align 8, !tbaa !142
  %82 = getelementptr inbounds ptr, ptr %81, i64 %56
  %83 = load ptr, ptr %82, align 8, !tbaa !124
  tail call void @BKE_copy_animdata_id_action(ptr noundef %83) #6
  br label %84

84:                                               ; preds = %55, %80, %76
  %85 = add nuw nsw i64 %56, 1
  %86 = load i32, ptr %50, align 8, !tbaa !143
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %55, label %89, !llvm.loop !206

89:                                               ; preds = %84, %49, %46
  %90 = and i32 %3, 2048
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %121, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 109
  %94 = load ptr, ptr %93, align 8, !tbaa !124
  %95 = icmp eq ptr %94, null
  br i1 %95, label %121, label %96

96:                                               ; preds = %92, %118
  %97 = phi ptr [ %119, %118 ], [ %94, %92 ]
  %98 = getelementptr inbounds %struct.ParticleSystem, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !207
  %100 = icmp eq ptr %99, null
  br i1 %100, label %118, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.ID, ptr %99, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !209
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  store ptr %103, ptr %98, align 8, !tbaa !207
  %106 = getelementptr inbounds %struct.ID, ptr %103, i64 0, i32 6
  %107 = load i32, ptr %106, align 4, !tbaa !211
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %106, align 4, !tbaa !211
  br label %111

109:                                              ; preds = %101
  %110 = tail call ptr @BKE_particlesettings_copy(ptr noundef nonnull %99) #6
  store ptr %110, ptr %98, align 8, !tbaa !207
  br label %111

111:                                              ; preds = %109, %105
  br i1 %44, label %114, label %112

112:                                              ; preds = %111
  %113 = load ptr, ptr %98, align 8, !tbaa !207
  tail call void @BKE_copy_animdata_id_action(ptr noundef %113) #6
  br label %114

114:                                              ; preds = %112, %111
  %115 = getelementptr inbounds %struct.ID, ptr %99, i64 0, i32 6
  %116 = load i32, ptr %115, align 4, !tbaa !205
  %117 = add nsw i32 %116, -1
  store i32 %117, ptr %115, align 4, !tbaa !205
  br label %118

118:                                              ; preds = %96, %114
  %119 = load ptr, ptr %97, align 8, !tbaa !124
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %96, !llvm.loop !212

121:                                              ; preds = %118, %92, %89
  %122 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %123 = load ptr, ptr %122, align 8, !tbaa !90
  %124 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 3
  %125 = load i16, ptr %124, align 8, !tbaa !98
  switch i16 %125, label %345 [
    i16 1, label %126
    i16 2, label %144
    i16 3, label %157
    i16 4, label %170
    i16 5, label %183
    i16 10, label %196
    i16 25, label %209
    i16 22, label %231
    i16 11, label %243
    i16 12, label %255
  ]

126:                                              ; preds = %121
  %127 = and i32 %3, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %345, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !213
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  store ptr %131, ptr %122, align 8, !tbaa !90
  %134 = getelementptr inbounds %struct.ID, ptr %131, i64 0, i32 6
  %135 = load i32, ptr %134, align 4, !tbaa !205
  %136 = add nsw i32 %135, 1
  store i32 %136, ptr %134, align 4, !tbaa !205
  br label %341

137:                                              ; preds = %129
  %138 = tail call ptr @BKE_mesh_copy(ptr noundef %123) #6
  store ptr %138, ptr %122, align 8, !tbaa !90
  %139 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 117
  %140 = load ptr, ptr %139, align 8, !tbaa !214
  %141 = icmp eq ptr %140, null
  br i1 %141, label %267, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.FluidsimSettings, ptr %140, i64 0, i32 25
  store ptr %138, ptr %143, align 8, !tbaa !215
  br label %267

144:                                              ; preds = %121
  %145 = and i32 %3, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %345, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !213
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  store ptr %149, ptr %122, align 8, !tbaa !90
  %152 = getelementptr inbounds %struct.ID, ptr %149, i64 0, i32 6
  %153 = load i32, ptr %152, align 4, !tbaa !205
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %152, align 4, !tbaa !205
  br label %341

155:                                              ; preds = %147
  %156 = tail call ptr @BKE_curve_copy(ptr noundef %123) #6
  store ptr %156, ptr %122, align 8, !tbaa !90
  br label %267

157:                                              ; preds = %121
  %158 = and i32 %3, 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %345, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !213
  %163 = icmp eq ptr %162, null
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  store ptr %162, ptr %122, align 8, !tbaa !90
  %165 = getelementptr inbounds %struct.ID, ptr %162, i64 0, i32 6
  %166 = load i32, ptr %165, align 4, !tbaa !205
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %165, align 4, !tbaa !205
  br label %341

168:                                              ; preds = %160
  %169 = tail call ptr @BKE_curve_copy(ptr noundef %123) #6
  store ptr %169, ptr %122, align 8, !tbaa !90
  br label %267

170:                                              ; preds = %121
  %171 = and i32 %3, 8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %345, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !213
  %176 = icmp eq ptr %175, null
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  store ptr %175, ptr %122, align 8, !tbaa !90
  %178 = getelementptr inbounds %struct.ID, ptr %175, i64 0, i32 6
  %179 = load i32, ptr %178, align 4, !tbaa !205
  %180 = add nsw i32 %179, 1
  store i32 %180, ptr %178, align 4, !tbaa !205
  br label %341

181:                                              ; preds = %173
  %182 = tail call ptr @BKE_curve_copy(ptr noundef %123) #6
  store ptr %182, ptr %122, align 8, !tbaa !90
  br label %267

183:                                              ; preds = %121
  %184 = and i32 %3, 16
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %345, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !213
  %189 = icmp eq ptr %188, null
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  store ptr %188, ptr %122, align 8, !tbaa !90
  %191 = getelementptr inbounds %struct.ID, ptr %188, i64 0, i32 6
  %192 = load i32, ptr %191, align 4, !tbaa !205
  %193 = add nsw i32 %192, 1
  store i32 %193, ptr %191, align 4, !tbaa !205
  br label %341

194:                                              ; preds = %186
  %195 = tail call ptr @BKE_mball_copy(ptr noundef %123) #6
  store ptr %195, ptr %122, align 8, !tbaa !90
  br label %267

196:                                              ; preds = %121
  %197 = and i32 %3, 32
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %345, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !213
  %202 = icmp eq ptr %201, null
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  store ptr %201, ptr %122, align 8, !tbaa !90
  %204 = getelementptr inbounds %struct.ID, ptr %201, i64 0, i32 6
  %205 = load i32, ptr %204, align 4, !tbaa !205
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr %204, align 4, !tbaa !205
  br label %341

207:                                              ; preds = %199
  %208 = tail call ptr @BKE_lamp_copy(ptr noundef %123) #6
  store ptr %208, ptr %122, align 8, !tbaa !90
  br label %267

209:                                              ; preds = %121
  tail call void @DAG_id_tag_update(ptr noundef %12, i16 noundef signext 2) #6
  %210 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 18
  %211 = load ptr, ptr %210, align 8, !tbaa !217
  %212 = icmp eq ptr %211, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.bPose, ptr %211, i64 0, i32 2
  %215 = load i16, ptr %214, align 8, !tbaa !218
  %216 = or i16 %215, 1
  store i16 %216, ptr %214, align 8, !tbaa !218
  br label %217

217:                                              ; preds = %213, %209
  %218 = and i32 %3, 512
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %345, label %220

220:                                              ; preds = %217
  %221 = load ptr, ptr %122, align 8, !tbaa !90
  %222 = getelementptr inbounds %struct.ID, ptr %221, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !213
  %224 = icmp eq ptr %223, null
  br i1 %224, label %229, label %225

225:                                              ; preds = %220
  store ptr %223, ptr %122, align 8, !tbaa !90
  %226 = getelementptr inbounds %struct.ID, ptr %223, i64 0, i32 6
  %227 = load i32, ptr %226, align 4, !tbaa !205
  %228 = add nsw i32 %227, 1
  store i32 %228, ptr %226, align 4, !tbaa !205
  br label %341

229:                                              ; preds = %220
  %230 = tail call ptr @BKE_armature_copy(ptr noundef %221) #6
  store ptr %230, ptr %122, align 8, !tbaa !90
  tail call void @BKE_pose_rebuild(ptr noundef %12, ptr noundef %230) #6
  br label %267

231:                                              ; preds = %121
  %232 = icmp eq i32 %3, 0
  br i1 %232, label %345, label %233

233:                                              ; preds = %231
  %234 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !213
  %236 = icmp eq ptr %235, null
  br i1 %236, label %241, label %237

237:                                              ; preds = %233
  store ptr %235, ptr %122, align 8, !tbaa !90
  %238 = getelementptr inbounds %struct.ID, ptr %235, i64 0, i32 6
  %239 = load i32, ptr %238, align 4, !tbaa !205
  %240 = add nsw i32 %239, 1
  store i32 %240, ptr %238, align 4, !tbaa !205
  br label %341

241:                                              ; preds = %233
  %242 = tail call ptr @BKE_lattice_copy(ptr noundef %123) #6
  store ptr %242, ptr %122, align 8, !tbaa !90
  br label %267

243:                                              ; preds = %121
  %244 = icmp eq i32 %3, 0
  br i1 %244, label %345, label %245

245:                                              ; preds = %243
  %246 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !213
  %248 = icmp eq ptr %247, null
  br i1 %248, label %253, label %249

249:                                              ; preds = %245
  store ptr %247, ptr %122, align 8, !tbaa !90
  %250 = getelementptr inbounds %struct.ID, ptr %247, i64 0, i32 6
  %251 = load i32, ptr %250, align 4, !tbaa !205
  %252 = add nsw i32 %251, 1
  store i32 %252, ptr %250, align 4, !tbaa !205
  br label %341

253:                                              ; preds = %245
  %254 = tail call ptr @BKE_camera_copy(ptr noundef %123) #6
  store ptr %254, ptr %122, align 8, !tbaa !90
  br label %267

255:                                              ; preds = %121
  %256 = icmp eq i32 %3, 0
  br i1 %256, label %345, label %257

257:                                              ; preds = %255
  %258 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !213
  %260 = icmp eq ptr %259, null
  br i1 %260, label %265, label %261

261:                                              ; preds = %257
  store ptr %259, ptr %122, align 8, !tbaa !90
  %262 = getelementptr inbounds %struct.ID, ptr %259, i64 0, i32 6
  %263 = load i32, ptr %262, align 4, !tbaa !205
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %262, align 4, !tbaa !205
  br label %341

265:                                              ; preds = %257
  %266 = tail call ptr @BKE_speaker_copy(ptr noundef %123) #6
  store ptr %266, ptr %122, align 8, !tbaa !90
  br label %267

267:                                              ; preds = %265, %253, %241, %229, %207, %194, %181, %168, %155, %142, %137
  %268 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 6
  %269 = load i32, ptr %268, align 4, !tbaa !205
  %270 = add nsw i32 %269, -1
  store i32 %270, ptr %268, align 4, !tbaa !205
  %271 = tail call ptr @BKE_key_from_object(ptr noundef %12) #6
  br i1 %44, label %303, label %272

272:                                              ; preds = %267
  %273 = load ptr, ptr %122, align 8, !tbaa !90
  tail call void @BKE_copy_animdata_id_action(ptr noundef %273) #6
  %274 = icmp eq ptr %271, null
  br i1 %274, label %276, label %275

275:                                              ; preds = %272
  tail call void @BKE_copy_animdata_id_action(ptr noundef nonnull %271) #6
  br label %276

276:                                              ; preds = %275, %272
  %277 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 94
  %278 = load ptr, ptr %277, align 8, !tbaa !124
  %279 = icmp eq ptr %278, null
  br i1 %279, label %303, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 1
  %282 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 1
  br label %283

283:                                              ; preds = %280, %300
  %284 = phi ptr [ %278, %280 ], [ %301, %300 ]
  %285 = getelementptr inbounds %struct.bActuator, ptr %284, i64 0, i32 3
  %286 = load i16, ptr %285, align 8, !tbaa !220
  %287 = icmp eq i16 %286, 15
  br i1 %287, label %288, label %300

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.bActuator, ptr %284, i64 0, i32 8
  %290 = load ptr, ptr %289, align 8, !tbaa !222
  %291 = load ptr, ptr %281, align 8, !tbaa !145
  %292 = icmp eq ptr %291, null
  br i1 %292, label %300, label %293

293:                                              ; preds = %288
  %294 = load ptr, ptr %290, align 8, !tbaa !223
  %295 = load ptr, ptr %291, align 8, !tbaa !225
  %296 = icmp eq ptr %294, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  %298 = load ptr, ptr %282, align 8, !tbaa !145
  %299 = load ptr, ptr %298, align 8, !tbaa !225
  store ptr %299, ptr %290, align 8, !tbaa !223
  br label %300

300:                                              ; preds = %288, %293, %297, %283
  %301 = load ptr, ptr %284, align 8, !tbaa !124
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %283, !llvm.loop !227

303:                                              ; preds = %300, %276, %267
  br i1 %48, label %345, label %304

304:                                              ; preds = %303
  %305 = tail call ptr @give_matarar(ptr noundef %12) #6
  %306 = icmp eq ptr %305, null
  br i1 %306, label %345, label %307

307:                                              ; preds = %304
  %308 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 31
  %309 = load i32, ptr %308, align 8, !tbaa !143
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %345

311:                                              ; preds = %307, %336
  %312 = phi i64 [ %337, %336 ], [ 0, %307 ]
  %313 = load ptr, ptr %305, align 8, !tbaa !124
  %314 = getelementptr inbounds ptr, ptr %313, i64 %312
  %315 = load ptr, ptr %314, align 8, !tbaa !124
  %316 = icmp eq ptr %315, null
  br i1 %316, label %336, label %317

317:                                              ; preds = %311
  %318 = getelementptr inbounds %struct.ID, ptr %315, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !200
  %320 = icmp eq ptr %319, null
  br i1 %320, label %328, label %321

321:                                              ; preds = %317
  store ptr %319, ptr %314, align 8, !tbaa !124
  %322 = load ptr, ptr %305, align 8, !tbaa !124
  %323 = getelementptr inbounds ptr, ptr %322, i64 %312
  %324 = load ptr, ptr %323, align 8, !tbaa !124
  %325 = getelementptr inbounds %struct.ID, ptr %324, i64 0, i32 6
  %326 = load i32, ptr %325, align 4, !tbaa !204
  %327 = add nsw i32 %326, 1
  store i32 %327, ptr %325, align 4, !tbaa !204
  br label %332

328:                                              ; preds = %317
  %329 = tail call ptr @BKE_material_copy(ptr noundef nonnull %315) #6
  %330 = load ptr, ptr %305, align 8, !tbaa !124
  %331 = getelementptr inbounds ptr, ptr %330, i64 %312
  store ptr %329, ptr %331, align 8, !tbaa !124
  br label %332

332:                                              ; preds = %328, %321
  %333 = getelementptr inbounds %struct.ID, ptr %315, i64 0, i32 6
  %334 = load i32, ptr %333, align 4, !tbaa !205
  %335 = add nsw i32 %334, -1
  store i32 %335, ptr %333, align 4, !tbaa !205
  br label %336

336:                                              ; preds = %311, %332
  %337 = add nuw nsw i64 %312, 1
  %338 = load i32, ptr %308, align 8, !tbaa !143
  %339 = sext i32 %338 to i64
  %340 = icmp slt i64 %337, %339
  br i1 %340, label %311, label %345, !llvm.loop !228

341:                                              ; preds = %261, %249, %237, %225, %203, %190, %177, %164, %151, %133
  %342 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 6
  %343 = load i32, ptr %342, align 4, !tbaa !205
  %344 = add nsw i32 %343, -1
  store i32 %344, ptr %342, align 4, !tbaa !205
  br label %345

345:                                              ; preds = %341, %121, %255, %243, %231, %217, %196, %183, %170, %157, %144, %126, %336, %307, %303, %304, %4
  %346 = phi ptr [ null, %4 ], [ %14, %304 ], [ %14, %303 ], [ %14, %307 ], [ %14, %336 ], [ %14, %126 ], [ %14, %144 ], [ %14, %157 ], [ %14, %170 ], [ %14, %183 ], [ %14, %196 ], [ %14, %217 ], [ %14, %231 ], [ %14, %243 ], [ %14, %255 ], [ %14, %121 ], [ %14, %341 ]
  ret ptr %346
}

declare void @BKE_object_relink(ptr noundef) local_unnamed_addr #2

declare void @set_sca_new_poins_ob(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_duplicate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.103, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.104, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.105, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @duplicate_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.106, i32 noundef 0, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !43
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.109, ptr noundef nonnull @transform_mode_types, i32 noundef 1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.17) #6
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 524288) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @duplicate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.106) #6
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 3), align 4
  %12 = select i1 %10, i32 %11, i32 0
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %4) #6
  tail call void @clear_sca_new_poins() #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %13 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %3) #6
  %14 = load ptr, ptr %3, align 8, !tbaa !124
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  br label %18

18:                                               ; preds = %16, %35
  %19 = phi ptr [ %14, %16 ], [ %36, %35 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !125
  %22 = call fastcc ptr @object_add_duplicate_internal(ptr noundef %4, ptr noundef %5, ptr noundef %21, i32 noundef %12)
  call void @ED_base_object_select(ptr noundef %21, i16 noundef signext 0) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %17, align 8, !tbaa !69
  %26 = icmp eq ptr %25, %21
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %22) #6
  br label %28

28:                                               ; preds = %27, %24
  %29 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !90
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  call void @DAG_id_tag_update(ptr noundef nonnull %32, i16 noundef signext 0) #6
  br label %35

35:                                               ; preds = %28, %34, %18
  %36 = load ptr, ptr %19, align 8, !tbaa !124
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %18, !llvm.loop !229

38:                                               ; preds = %35, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  call fastcc void @copy_object_set_idnew(ptr noundef %0, i32 noundef %12)
  call void @DAG_relations_tag_update(ptr noundef %4) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %5) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_add_named(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.111, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.112, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.113, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_named_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.106, i32 noundef 0, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !43
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.114) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_named_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [2 x i32], align 4
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  %12 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %13 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.106) #6
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 3), align 4
  %21 = select i1 %19, i32 %20, i32 0
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %22 = load ptr, ptr %15, align 8, !tbaa !47
  call void @RNA_string_get(ptr noundef %22, ptr noundef nonnull @.str.63, ptr noundef nonnull %3) #6
  %23 = call ptr @BKE_libblock_find_name(i16 noundef signext 16975, ptr noundef nonnull %3) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  call void @BKE_report(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.160) #6
  br label %81

28:                                               ; preds = %10
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !124
  %30 = call ptr %29(i64 noundef 40, ptr noundef nonnull @.str.155) #6
  %31 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 7
  store ptr %23, ptr %31, align 8, !tbaa !38
  %32 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 53
  %33 = load i16, ptr %32, align 4, !tbaa !129
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 4
  store i32 %34, ptr %35, align 8, !tbaa !144
  call void @BKE_main_id_clear_newpoins(ptr noundef %12) #6
  call void @clear_sca_new_poins() #6
  %36 = call fastcc ptr @object_add_duplicate_internal(ptr noundef %12, ptr noundef %14, ptr noundef %30, i32 noundef %21)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !124
  call void %39(ptr noundef %30) #6
  %40 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !63
  call void @BKE_report(ptr noundef %41, i32 noundef 32, ptr noundef nonnull @.str.161) #6
  br label %81

42:                                               ; preds = %28
  %43 = call i32 @BKE_screen_view3d_layer_active(ptr noundef %13, ptr noundef %14) #6
  %44 = getelementptr inbounds %struct.Base, ptr %36, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 52
  store i32 %43, ptr %46, align 8, !tbaa !64
  %47 = getelementptr inbounds %struct.Base, ptr %36, i64 0, i32 2
  store i32 %43, ptr %47, align 8, !tbaa !87
  %48 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 102
  %49 = load i8, ptr %48, align 8, !tbaa !230
  %50 = and i8 %49, -2
  store i8 %50, ptr %48, align 8, !tbaa !230
  %51 = icmp eq ptr %11, null
  br i1 %51, label %79, label %52

52:                                               ; preds = %42
  %53 = call ptr @CTX_wm_region(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %54 = getelementptr inbounds %struct.wmEvent, ptr %11, i64 0, i32 4
  %55 = load i32, ptr %54, align 4, !tbaa !231
  %56 = getelementptr inbounds %struct.ARegion, ptr %53, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !234
  %58 = sub nsw i32 %55, %57
  store i32 %58, ptr %4, align 4, !tbaa !54
  %59 = getelementptr inbounds i32, ptr %4, i64 1
  %60 = getelementptr inbounds %struct.wmEvent, ptr %11, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !237
  %62 = getelementptr inbounds %struct.ARegion, ptr %53, i64 0, i32 3, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !238
  %64 = sub nsw i32 %61, %63
  store i32 %64, ptr %59, align 4, !tbaa !54
  %65 = load ptr, ptr %44, align 8, !tbaa !38
  %66 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 33
  %67 = call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %68 = call ptr @CTX_data_scene(ptr noundef %0) #6
  %69 = call ptr @ED_view3d_cursor3d_get(ptr noundef %68, ptr noundef %67) #6
  %70 = load float, ptr %69, align 4, !tbaa !34
  store float %70, ptr %66, align 4, !tbaa !34
  %71 = getelementptr inbounds float, ptr %69, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 33, i64 1
  store float %72, ptr %73, align 4, !tbaa !34
  %74 = getelementptr inbounds float, ptr %69, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 33, i64 2
  store float %75, ptr %76, align 4, !tbaa !34
  %77 = load ptr, ptr %44, align 8, !tbaa !38
  %78 = getelementptr inbounds %struct.Object, ptr %77, i64 0, i32 33
  call void @ED_view3d_cursor3d_position(ptr noundef %0, ptr noundef nonnull %78, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  br label %79

79:                                               ; preds = %52, %42
  call void @ED_base_object_select(ptr noundef nonnull %36, i16 noundef signext 1) #6
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %36) #6
  call fastcc void @copy_object_set_idnew(ptr noundef %0, i32 noundef %21)
  call void @DAG_relations_tag_update(ptr noundef %12) #6
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !124
  call void %80(ptr noundef %30) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %14) #6
  br label %81

81:                                               ; preds = %79, %38, %25
  %82 = phi i32 [ 2, %25 ], [ 2, %38 ], [ 4, %79 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret i32 %82
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_join(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.115, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.116, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.117, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @join_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @join_poll, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @join_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  tail call void @BKE_report(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.162) #6
  br label %26

11:                                               ; preds = %2
  %12 = tail call zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef %4) #6
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.163) #6
  br label %26

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !98
  switch i16 %19, label %26 [
    i16 1, label %20
    i16 2, label %22
    i16 3, label %22
    i16 25, label %24
  ]

20:                                               ; preds = %17
  %21 = tail call i32 @join_mesh_exec(ptr noundef %0, ptr noundef %1) #6
  br label %26

22:                                               ; preds = %17, %17
  %23 = tail call i32 @join_curve_exec(ptr noundef %0, ptr noundef %1) #6
  br label %26

24:                                               ; preds = %17
  %25 = tail call i32 @join_armature_exec(ptr noundef %0, ptr noundef %1) #6
  br label %26

26:                                               ; preds = %17, %24, %22, %20, %14, %8
  %27 = phi i32 [ 2, %8 ], [ 2, %14 ], [ %21, %20 ], [ %23, %22 ], [ %25, %24 ], [ 2, %17 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @join_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !98
  switch i16 %10, label %13 [
    i16 1, label %11
    i16 2, label %11
    i16 3, label %11
    i16 25, label %11
  ]

11:                                               ; preds = %8, %8, %8, %8
  %12 = tail call i32 @ED_operator_screenactive(ptr noundef %0) #6
  br label %13

13:                                               ; preds = %8, %1, %4, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %4 ], [ 0, %1 ], [ 0, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_join_shapes(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.118, ptr %0, align 8, !tbaa !91
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.119, ptr %2, align 8, !tbaa !92
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.120, ptr %3, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @join_shapes_exec, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @join_shapes_poll, ptr %5, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !96
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @join_shapes_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  tail call void @BKE_report(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.162) #6
  br label %23

11:                                               ; preds = %2
  %12 = tail call zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef %4) #6
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.163) #6
  br label %23

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !98
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @join_mesh_shapes_exec(ptr noundef %0, ptr noundef %1) #6
  br label %23

23:                                               ; preds = %17, %21, %14, %8
  %24 = phi i32 [ 2, %8 ], [ 2, %14 ], [ %22, %21 ], [ 2, %17 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @join_shapes_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !98
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 @ED_operator_screenactive(ptr noundef %0) #6
  br label %14

14:                                               ; preds = %8, %1, %4, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %4 ], [ 0, %1 ], [ 0, %8 ]
  ret i32 %15
}

declare zeroext i8 @RNA_struct_idprops_unset(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_operator_view3d_unit_defaults(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_obdata_size_init(ptr noundef, float noundef) local_unnamed_addr #2

declare void @rename_id(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @add_nurbs_primitive(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @object_add_collision_fields(i32 noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @add_metaball_primitive(ptr noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ED_armature_edit_bone_add_primitive(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_object_empty_draw_type_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_load_exists(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_give_base_under_cursor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_cursor3d_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @id_us_min(ptr noundef) local_unnamed_addr #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

declare void @ED_node_shader_default(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #2

declare ptr @add_nlatrack(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @add_nla_soundstrip(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_nlatrack_add_strip(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BKE_nlastrip_validate_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_lamp_free(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @BKE_main_id_flag_listbase(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_pair_new(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_object_copy(ptr noundef) local_unnamed_addr #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghashutil_pairalloc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashutil_pairfree(ptr noundef) #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_object_set_idnew(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #6
  %6 = load ptr, ptr %3, align 8, !tbaa !124
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %12, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !125
  call void @BKE_object_relink(ptr noundef %11) #6
  %12 = load ptr, ptr %9, align 8, !tbaa !124
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8, !llvm.loop !159

14:                                               ; preds = %8, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %15 = and i32 %1, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %64, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !124
  %20 = icmp eq ptr %19, null
  br i1 %20, label %64, label %21

21:                                               ; preds = %17
  %22 = and i32 %1, 256
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %21, %61
  %25 = phi ptr [ %19, %21 ], [ %62, %61 ]
  %26 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !200
  %28 = icmp eq ptr %27, null
  %29 = or i1 %23, %28
  br i1 %29, label %61, label %30

30:                                               ; preds = %24, %58
  %31 = phi i64 [ %59, %58 ], [ 0, %24 ]
  %32 = getelementptr inbounds %struct.Material, ptr %27, i64 0, i32 102, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !124
  %34 = icmp eq ptr %33, null
  br i1 %34, label %58, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.MTex, ptr %33, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !239
  %38 = icmp eq ptr %37, null
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ID, ptr %37, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !241
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  store ptr %41, ptr %36, align 8, !tbaa !239
  %44 = load ptr, ptr %32, align 8, !tbaa !124
  %45 = getelementptr inbounds %struct.MTex, ptr %44, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !239
  %47 = getelementptr inbounds %struct.ID, ptr %46, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !244
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %47, align 4, !tbaa !244
  br label %54

50:                                               ; preds = %39
  %51 = call ptr @BKE_texture_copy(ptr noundef nonnull %37) #6
  %52 = load ptr, ptr %32, align 8, !tbaa !124
  %53 = getelementptr inbounds %struct.MTex, ptr %52, i64 0, i32 5
  store ptr %51, ptr %53, align 8, !tbaa !239
  br label %54

54:                                               ; preds = %50, %43
  %55 = getelementptr inbounds %struct.ID, ptr %37, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !205
  %57 = add nsw i32 %56, -1
  store i32 %57, ptr %55, align 4, !tbaa !205
  br label %58

58:                                               ; preds = %30, %54, %35
  %59 = add nuw nsw i64 %31, 1
  %60 = icmp eq i64 %59, 18
  br i1 %60, label %61, label %30, !llvm.loop !245

61:                                               ; preds = %58, %24
  %62 = load ptr, ptr %25, align 8, !tbaa !124
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %24, !llvm.loop !246

64:                                               ; preds = %61, %17, %14
  call void @set_sca_new_poins() #6
  call void @BKE_main_id_clear_newpoins(ptr noundef %4) #6
  ret void
}

declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_texture_copy(ptr noundef) local_unnamed_addr #2

declare void @set_sca_new_poins() local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @BKE_object_free_modifiers(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mesh_copy(ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_to_curve(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_rigidbody_object_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @DM_to_mesh(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BKE_curve_copy(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_vfont_to_curve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_curve_curve_dimension_update(ptr noundef) local_unnamed_addr #2

declare void @BKE_object_free_curve_cache(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mball_basis_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mesh_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_from_metaball(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @BKE_mesh_from_nurbs(ptr noundef) local_unnamed_addr #2

declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_displist_make_mball(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_group_object_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_group_object_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_copy_animdata_id_action(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_material_copy(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_particlesettings_copy(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mball_copy(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_lamp_copy(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_armature_copy(ptr noundef) local_unnamed_addr #2

declare void @BKE_pose_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_lattice_copy(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_camera_copy(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_speaker_copy(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

declare ptr @give_matarar(ptr noundef) local_unnamed_addr #2

declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare i32 @BKE_screen_view3d_layer_active(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef) local_unnamed_addr #2

declare i32 @join_mesh_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @join_curve_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @join_armature_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ED_operator_screenactive(ptr noundef) local_unnamed_addr #2

declare i32 @join_mesh_shapes_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 32}
!39 = !{!"Base", !40, i64 0, !40, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !42, i64 28, !42, i64 30, !40, i64 32}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!44, !40, i64 88}
!44 = !{!"wmOperatorType", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !45, i64 112, !40, i64 128, !40, i64 136, !40, i64 144, !46, i64 152, !42, i64 184}
!45 = !{!"ListBase", !40, i64 0, !40, i64 8}
!46 = !{!"ExtensionRNA", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!47 = !{!48, !40, i64 112}
!48 = !{!"wmOperator", !40, i64 0, !40, i64 8, !36, i64 16, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !45, i64 128, !40, i64 144, !40, i64 152, !42, i64 160, !36, i64 162}
!49 = !{!36, !36, i64 0}
!50 = !{!51, !41, i64 8}
!51 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !41, i64 8468, !42, i64 8472, !42, i64 8474, !42, i64 8476, !42, i64 8478, !42, i64 8480, !42, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !42, i64 8496, !42, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !42, i64 8528, !42, i64 8530, !42, i64 8532, !42, i64 8534, !45, i64 8536, !45, i64 8552, !45, i64 8568, !45, i64 8584, !45, i64 8600, !45, i64 8616, !45, i64 8632, !36, i64 8648, !42, i64 8712, !42, i64 8714, !42, i64 8716, !42, i64 8718, !42, i64 8720, !42, i64 8722, !42, i64 8724, !42, i64 8726, !36, i64 8728, !42, i64 8896, !42, i64 8898, !42, i64 8900, !42, i64 8902, !42, i64 8904, !42, i64 8906, !42, i64 8908, !42, i64 8910, !41, i64 8912, !41, i64 8916, !42, i64 8920, !42, i64 8922, !42, i64 8924, !42, i64 8926, !42, i64 8928, !42, i64 8930, !42, i64 8932, !42, i64 8934, !42, i64 8936, !42, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !42, i64 8944, !42, i64 8946, !42, i64 8948, !42, i64 8950, !42, i64 8952, !42, i64 8954, !35, i64 8956, !35, i64 8960, !41, i64 8964, !42, i64 8968, !42, i64 8970, !35, i64 8972, !42, i64 8976, !42, i64 8978, !42, i64 8980, !42, i64 8982, !52, i64 8984, !36, i64 9760, !36, i64 9772, !42, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !41, i64 10896, !41, i64 10900, !35, i64 10904, !35, i64 10908, !41, i64 10912, !42, i64 10916, !42, i64 10918, !42, i64 10920, !42, i64 10922, !42, i64 10924, !42, i64 10926, !53, i64 10928}
!52 = !{!"ColorBand", !42, i64 0, !42, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!53 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !42, i64 24, !36, i64 26}
!54 = !{!41, !41, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !56, !57}
!59 = !{!60, !40, i64 152}
!60 = !{!"View3D", !40, i64 0, !40, i64 8, !45, i64 16, !41, i64 32, !35, i64 36, !36, i64 40, !36, i64 56, !35, i64 72, !35, i64 76, !36, i64 80, !36, i64 81, !41, i64 84, !41, i64 88, !42, i64 92, !42, i64 94, !40, i64 96, !40, i64 104, !61, i64 112, !45, i64 128, !40, i64 144, !40, i64 152, !36, i64 160, !41, i64 224, !41, i64 228, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !42, i64 240, !42, i64 242, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !36, i64 260, !36, i64 272, !42, i64 284, !42, i64 286, !42, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !45, i64 296, !45, i64 312, !45, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !40, i64 352, !40, i64 360, !40, i64 368}
!61 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!62 = !{!60, !41, i64 224}
!63 = !{!48, !40, i64 120}
!64 = !{!65, !41, i64 944}
!65 = !{!"Object", !66, i64 0, !40, i64 120, !40, i64 128, !42, i64 136, !42, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !67, i64 312, !40, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !41, i64 432, !41, i64 436, !40, i64 440, !40, i64 448, !41, i64 456, !41, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !41, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !35, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !41, i64 1144, !41, i64 1148, !40, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !40, i64 1240, !40, i64 1248, !40, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !35, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !68, i64 1304, !68, i64 1312, !41, i64 1320, !41, i64 1324, !45, i64 1328, !45, i64 1344, !40, i64 1360, !40, i64 1368, !40, i64 1376, !36, i64 1384, !40, i64 1392, !45, i64 1400, !40, i64 1416}
!66 = !{!"ID", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !40, i64 112}
!67 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!68 = !{!"long", !36, i64 0}
!69 = !{!70, !40, i64 168}
!70 = !{!"Scene", !66, i64 0, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !45, i64 152, !40, i64 168, !40, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !42, i64 244, !36, i64 246, !36, i64 247, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !71, i64 280, !79, i64 4264, !45, i64 4296, !45, i64 4312, !40, i64 4328, !40, i64 4336, !40, i64 4344, !40, i64 4352, !40, i64 4360, !40, i64 4368, !42, i64 4376, !42, i64 4378, !41, i64 4380, !45, i64 4384, !80, i64 4400, !81, i64 4416, !84, i64 4600, !40, i64 4608, !85, i64 4616, !40, i64 4640, !68, i64 4648, !68, i64 4656, !73, i64 4664, !74, i64 4824, !86, i64 4888, !40, i64 4952}
!71 = !{!"RenderData", !72, i64 0, !40, i64 248, !40, i64 256, !75, i64 264, !76, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !35, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !42, i64 432, !42, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !41, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !41, i64 484, !41, i64 488, !42, i64 492, !42, i64 494, !41, i64 496, !41, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !36, i64 514, !36, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !61, i64 544, !61, i64 560, !77, i64 576, !45, i64 592, !42, i64 608, !42, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !41, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !35, i64 660, !35, i64 664, !42, i64 668, !42, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !41, i64 1704, !42, i64 1708, !42, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !41, i64 2520, !42, i64 2524, !42, i64 2526, !35, i64 2528, !35, i64 2532, !42, i64 2536, !42, i64 2538, !35, i64 2540, !42, i64 2544, !42, i64 2546, !41, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !35, i64 2560, !35, i64 2564, !40, i64 2568, !41, i64 2576, !35, i64 2580, !36, i64 2584, !78, i64 2616, !41, i64 3976, !41, i64 3980}
!72 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !42, i64 8, !42, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !73, i64 24, !74, i64 184}
!73 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !40, i64 144, !40, i64 152}
!74 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!75 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !42, i64 48, !42, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!76 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !35, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !40, i64 64}
!77 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!78 = !{!"BakeData", !72, i64 0, !36, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!79 = !{!"AudioData", !41, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !41, i64 16, !42, i64 20, !42, i64 22, !35, i64 24, !35, i64 28}
!80 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!81 = !{!"GameData", !80, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !36, i64 34, !82, i64 40, !42, i64 64, !42, i64 66, !35, i64 68, !83, i64 72, !35, i64 128, !35, i64 132, !41, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!82 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !35, i64 8, !35, i64 12, !40, i64 16}
!83 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !41, i64 40, !35, i64 44, !35, i64 48, !42, i64 52, !42, i64 54}
!84 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !42, i64 6}
!85 = !{!"PhysicsSettings", !36, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!86 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!87 = !{!39, !41, i64 16}
!88 = !{!65, !36, i64 1264}
!89 = !{!65, !41, i64 1144}
!90 = !{!65, !40, i64 296}
!91 = !{!44, !40, i64 0}
!92 = !{!44, !40, i64 24}
!93 = !{!44, !40, i64 8}
!94 = !{!44, !40, i64 32}
!95 = !{!44, !40, i64 72}
!96 = !{!44, !42, i64 184}
!97 = !{i8 0, i8 2}
!98 = !{!65, !42, i64 136}
!99 = !{!44, !40, i64 104}
!100 = !{!101, !41, i64 268}
!101 = !{!"Curve", !66, i64 0, !40, i64 120, !40, i64 128, !45, i64 136, !40, i64 152, !40, i64 160, !40, i64 168, !40, i64 176, !40, i64 184, !40, i64 192, !40, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !42, i64 244, !42, i64 246, !42, i64 248, !42, i64 250, !35, i64 252, !35, i64 256, !41, i64 260, !42, i64 264, !42, i64 266, !41, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !42, i64 284, !42, i64 286, !42, i64 288, !42, i64 290, !41, i64 292, !41, i64 296, !36, i64 300, !42, i64 304, !36, i64 306, !36, i64 307, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !35, i64 324, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !40, i64 368, !40, i64 376, !36, i64 384, !40, i64 448, !40, i64 456, !40, i64 464, !40, i64 472, !40, i64 480, !41, i64 488, !41, i64 492, !40, i64 496, !102, i64 504, !35, i64 512, !35, i64 516, !35, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!102 = !{!"CharInfo", !42, i64 0, !42, i64 2, !36, i64 4, !36, i64 5, !42, i64 6}
!103 = !{!101, !40, i64 152}
!104 = !{!65, !36, i64 1047}
!105 = !{!65, !40, i64 1240}
!106 = !{!60, !40, i64 96}
!107 = !{!60, !42, i64 236}
!108 = !{!70, !40, i64 128}
!109 = !{!110, !35, i64 152}
!110 = !{!"Camera", !66, i64 0, !40, i64 120, !36, i64 128, !36, i64 129, !42, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !40, i64 176, !40, i64 184, !36, i64 192, !36, i64 193}
!111 = !{!44, !40, i64 48}
!112 = !{!113, !42, i64 128}
!113 = !{!"Lamp", !66, i64 0, !40, i64 120, !42, i64 128, !42, i64 130, !41, i64 132, !42, i64 136, !42, i64 138, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !40, i64 200, !42, i64 208, !42, i64 210, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !42, i64 240, !42, i64 242, !42, i64 244, !42, i64 246, !36, i64 248, !36, i64 249, !42, i64 250, !42, i64 252, !42, i64 254, !42, i64 256, !42, i64 258, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !42, i64 276, !42, i64 278, !42, i64 280, !42, i64 282, !42, i64 284, !42, i64 286, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !35, i64 324, !35, i64 328, !35, i64 332, !35, i64 336, !42, i64 340, !36, i64 342, !40, i64 344, !36, i64 352, !42, i64 496, !42, i64 498, !36, i64 500, !40, i64 504, !40, i64 512}
!114 = !{!113, !42, i64 498}
!115 = !{!116, !40, i64 136}
!116 = !{!"wmWindow", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !36, i64 40, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !41, i64 128, !42, i64 132, !42, i64 134, !40, i64 136, !40, i64 144, !40, i64 152, !41, i64 160, !41, i64 164, !40, i64 168, !45, i64 176, !45, i64 192, !45, i64 208, !45, i64 224, !45, i64 240}
!117 = !{!65, !40, i64 1256}
!118 = !{!65, !42, i64 952}
!119 = !{!70, !41, i64 680}
!120 = !{!121, !35, i64 152}
!121 = !{!"NlaStrip", !40, i64 0, !40, i64 8, !45, i64 16, !40, i64 32, !40, i64 40, !45, i64 48, !45, i64 64, !36, i64 80, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !42, i64 184, !42, i64 186, !42, i64 188, !42, i64 190, !40, i64 192, !41, i64 200, !41, i64 204}
!122 = !{!121, !35, i64 156}
!123 = !{!65, !40, i64 1328}
!124 = !{!40, !40, i64 0}
!125 = !{!126, !40, i64 32}
!126 = !{!"CollectionPointerLink", !40, i64 0, !40, i64 8, !127, i64 16}
!127 = !{!"PointerRNA", !128, i64 0, !40, i64 8, !40, i64 16}
!128 = !{!"", !40, i64 0}
!129 = !{!65, !42, i64 948}
!130 = !{!70, !40, i64 24}
!131 = distinct !{!131, !56, !57}
!132 = distinct !{!132, !56, !57}
!133 = !{!116, !40, i64 24}
!134 = !{!135, !40, i64 184}
!135 = !{!"bScreen", !66, i64 0, !45, i64 120, !45, i64 136, !45, i64 152, !45, i64 168, !40, i64 184, !40, i64 192, !41, i64 200, !41, i64 204, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !40, i64 232, !40, i64 240}
!136 = !{!70, !42, i64 98}
!137 = distinct !{!137, !56, !57}
!138 = !{!139, !40, i64 1888}
!139 = !{!"Main", !40, i64 0, !40, i64 8, !36, i64 16, !42, i64 1040, !42, i64 1042, !42, i64 1044, !42, i64 1046, !68, i64 1048, !36, i64 1056, !42, i64 1072, !40, i64 1080, !45, i64 1088, !45, i64 1104, !45, i64 1120, !45, i64 1136, !45, i64 1152, !45, i64 1168, !45, i64 1184, !45, i64 1200, !45, i64 1216, !45, i64 1232, !45, i64 1248, !45, i64 1264, !45, i64 1280, !45, i64 1296, !45, i64 1312, !45, i64 1328, !45, i64 1344, !45, i64 1360, !45, i64 1376, !45, i64 1392, !45, i64 1408, !45, i64 1424, !45, i64 1440, !45, i64 1456, !45, i64 1472, !45, i64 1488, !45, i64 1504, !45, i64 1520, !45, i64 1536, !45, i64 1552, !45, i64 1568, !45, i64 1584, !45, i64 1600, !45, i64 1616, !36, i64 1632, !40, i64 1888, !40, i64 1896}
!140 = !{!141, !40, i64 16}
!141 = !{!"DupliObject", !40, i64 0, !40, i64 8, !40, i64 16, !36, i64 24, !36, i64 88, !36, i64 100, !42, i64 108, !36, i64 110, !36, i64 111, !36, i64 112, !40, i64 144}
!142 = !{!65, !40, i64 440}
!143 = !{!65, !41, i64 456}
!144 = !{!39, !41, i64 24}
!145 = !{!65, !40, i64 120}
!146 = !{!65, !40, i64 216}
!147 = !{!65, !40, i64 1280}
!148 = distinct !{!148, !56, !57}
!149 = !{!65, !42, i64 138}
!150 = !{!65, !41, i64 140}
!151 = !{!65, !41, i64 144}
!152 = !{!65, !41, i64 148}
!153 = distinct !{!153, !56, !57}
!154 = distinct !{!154, !56, !57}
!155 = !{!65, !40, i64 240}
!156 = !{!65, !40, i64 232}
!157 = !{!65, !40, i64 248}
!158 = distinct !{!158, !56, !57}
!159 = distinct !{!159, !56, !57}
!160 = distinct !{!160, !56, !57}
!161 = !{!66, !42, i64 98}
!162 = distinct !{!162, !56, !57}
!163 = !{i64 0, i64 8, !124, i64 8, i64 8, !124, i64 16, i64 4, !54, i64 20, i64 4, !54, i64 24, i64 4, !54, i64 28, i64 2, !164, i64 30, i64 2, !164, i64 32, i64 8, !124}
!164 = !{!42, !42, i64 0}
!165 = !{!166, !41, i64 100}
!166 = !{!"Mesh", !66, i64 0, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !40, i64 160, !40, i64 168, !40, i64 176, !40, i64 184, !40, i64 192, !40, i64 200, !40, i64 208, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !167, i64 280, !167, i64 480, !167, i64 680, !167, i64 880, !167, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !41, i64 1344, !42, i64 1348, !42, i64 1350, !35, i64 1352, !41, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !42, i64 1366, !40, i64 1368}
!167 = !{!"CustomData", !40, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 192}
!168 = !{!65, !40, i64 416}
!169 = !{!170, !40, i64 1680}
!170 = !{!"DerivedMesh", !167, i64 0, !167, i64 200, !167, i64 400, !167, i64 600, !167, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !40, i64 1032, !40, i64 1040, !41, i64 1048, !35, i64 1052, !41, i64 1056, !41, i64 1060, !40, i64 1064, !36, i64 1072, !40, i64 1080, !40, i64 1088, !40, i64 1096, !40, i64 1104, !40, i64 1112, !40, i64 1120, !40, i64 1128, !40, i64 1136, !40, i64 1144, !40, i64 1152, !40, i64 1160, !40, i64 1168, !40, i64 1176, !40, i64 1184, !40, i64 1192, !40, i64 1200, !40, i64 1208, !40, i64 1216, !40, i64 1224, !40, i64 1232, !40, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !40, i64 1304, !40, i64 1312, !40, i64 1320, !40, i64 1328, !40, i64 1336, !40, i64 1344, !40, i64 1352, !40, i64 1360, !40, i64 1368, !40, i64 1376, !40, i64 1384, !40, i64 1392, !40, i64 1400, !40, i64 1408, !40, i64 1416, !40, i64 1424, !40, i64 1432, !40, i64 1440, !40, i64 1448, !40, i64 1456, !40, i64 1464, !40, i64 1472, !40, i64 1480, !40, i64 1488, !40, i64 1496, !40, i64 1504, !40, i64 1512, !40, i64 1520, !40, i64 1528, !40, i64 1536, !40, i64 1544, !40, i64 1552, !40, i64 1560, !40, i64 1568, !40, i64 1576, !40, i64 1584, !40, i64 1592, !40, i64 1600, !40, i64 1608, !40, i64 1616, !40, i64 1624, !40, i64 1632, !40, i64 1640, !40, i64 1648, !40, i64 1656, !40, i64 1664, !40, i64 1672, !40, i64 1680}
!171 = !{!101, !41, i64 100}
!172 = !{!101, !42, i64 244}
!173 = !{!101, !40, i64 448}
!174 = !{!175, !41, i64 100}
!175 = !{!"VFont", !66, i64 0, !36, i64 120, !40, i64 1144, !40, i64 1152, !40, i64 1160}
!176 = !{!101, !40, i64 456}
!177 = !{!101, !40, i64 464}
!178 = !{!101, !40, i64 472}
!179 = distinct !{!179, !56, !57}
!180 = !{!181, !41, i64 84}
!181 = !{!"Nurb", !40, i64 0, !40, i64 8, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !41, i64 24, !41, i64 28, !36, i64 32, !42, i64 36, !42, i64 38, !42, i64 40, !42, i64 42, !42, i64 44, !42, i64 46, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !42, i64 80, !42, i64 82, !41, i64 84}
!182 = distinct !{!182, !56, !57}
!183 = !{!184, !41, i64 100}
!184 = !{!"MetaBall", !66, i64 0, !40, i64 120, !45, i64 128, !45, i64 144, !40, i64 160, !40, i64 168, !40, i64 176, !36, i64 184, !36, i64 185, !42, i64 186, !42, i64 188, !42, i64 190, !36, i64 192, !36, i64 204, !36, i64 216, !35, i64 228, !35, i64 232, !35, i64 236, !40, i64 240}
!185 = !{!184, !42, i64 186}
!186 = !{!166, !42, i64 1366}
!187 = !{!184, !40, i64 176}
!188 = !{!166, !40, i64 152}
!189 = distinct !{!189, !56, !57}
!190 = distinct !{!190, !56, !57}
!191 = !{!70, !40, i64 152}
!192 = !{!39, !40, i64 0}
!193 = distinct !{!193, !56, !57}
!194 = !{!70, !40, i64 176}
!195 = !{!65, !40, i64 24}
!196 = !{!65, !41, i64 432}
!197 = !{!65, !40, i64 1368}
!198 = !{!65, !40, i64 1376}
!199 = distinct !{!199, !56, !57}
!200 = !{!201, !40, i64 16}
!201 = !{!"Material", !66, i64 0, !40, i64 120, !42, i64 128, !42, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !202, i64 224, !203, i64 312, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !35, i64 348, !35, i64 352, !42, i64 356, !42, i64 358, !42, i64 360, !36, i64 362, !36, i64 363, !35, i64 364, !35, i64 368, !42, i64 372, !42, i64 374, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !42, i64 392, !42, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !42, i64 414, !42, i64 416, !42, i64 418, !35, i64 420, !35, i64 424, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !35, i64 456, !36, i64 460, !35, i64 524, !35, i64 528, !35, i64 532, !41, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !42, i64 544, !42, i64 546, !42, i64 548, !36, i64 550, !36, i64 551, !42, i64 552, !42, i64 554, !35, i64 556, !35, i64 560, !36, i64 564, !35, i64 580, !35, i64 584, !42, i64 588, !42, i64 590, !40, i64 592, !40, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !42, i64 612, !42, i64 614, !35, i64 616, !35, i64 620, !36, i64 624, !40, i64 768, !40, i64 776, !40, i64 784, !40, i64 792, !35, i64 800, !35, i64 804, !35, i64 808, !35, i64 812, !35, i64 816, !42, i64 820, !42, i64 822, !36, i64 824, !36, i64 836, !35, i64 848, !35, i64 852, !35, i64 856, !35, i64 860, !35, i64 864, !35, i64 868, !35, i64 872, !42, i64 876, !42, i64 878, !41, i64 880, !42, i64 884, !42, i64 886, !36, i64 888, !42, i64 904, !42, i64 906, !42, i64 908, !42, i64 910, !42, i64 912, !36, i64 914, !40, i64 920, !45, i64 928}
!202 = !{!"VolumeSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !35, i64 52, !35, i64 56, !35, i64 60, !42, i64 64, !42, i64 66, !42, i64 68, !42, i64 70, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84}
!203 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!204 = !{!201, !41, i64 100}
!205 = !{!66, !41, i64 100}
!206 = distinct !{!206, !56, !57}
!207 = !{!208, !40, i64 16}
!208 = !{!"ParticleSystem", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !45, i64 72, !45, i64 88, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !45, i64 152, !36, i64 168, !36, i64 232, !35, i64 296, !35, i64 300, !35, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !42, i64 340, !42, i64 342, !42, i64 344, !42, i64 346, !36, i64 348, !36, i64 540, !42, i64 564, !42, i64 566, !40, i64 568, !40, i64 576, !45, i64 584, !40, i64 600, !40, i64 608, !41, i64 616, !41, i64 620, !40, i64 624, !40, i64 632, !40, i64 640, !35, i64 648, !35, i64 652}
!209 = !{!210, !40, i64 16}
!210 = !{!"ParticleSettings", !66, i64 0, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !41, i64 152, !41, i64 156, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !41, i64 176, !41, i64 180, !42, i64 184, !42, i64 186, !42, i64 188, !42, i64 190, !42, i64 192, !42, i64 194, !42, i64 196, !42, i64 198, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !35, i64 232, !35, i64 236, !36, i64 240, !36, i64 248, !35, i64 256, !35, i64 260, !35, i64 264, !42, i64 268, !42, i64 270, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !36, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !42, i64 340, !36, i64 342, !35, i64 348, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !36, i64 376, !35, i64 388, !35, i64 392, !35, i64 396, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !36, i64 416, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !41, i64 444, !41, i64 448, !35, i64 452, !35, i64 456, !35, i64 460, !35, i64 464, !35, i64 468, !35, i64 472, !35, i64 476, !35, i64 480, !35, i64 484, !35, i64 488, !35, i64 492, !35, i64 496, !35, i64 500, !35, i64 504, !35, i64 508, !35, i64 512, !35, i64 516, !35, i64 520, !35, i64 524, !35, i64 528, !35, i64 532, !35, i64 536, !35, i64 540, !35, i64 544, !35, i64 548, !36, i64 552, !35, i64 560, !35, i64 564, !41, i64 568, !41, i64 572, !36, i64 576, !40, i64 720, !45, i64 728, !40, i64 744, !40, i64 752, !40, i64 760, !40, i64 768, !40, i64 776, !40, i64 784, !42, i64 792, !36, i64 794}
!211 = !{!210, !41, i64 100}
!212 = distinct !{!212, !56, !57}
!213 = !{!66, !40, i64 16}
!214 = !{!65, !40, i64 1272}
!215 = !{!216, !40, i64 96}
!216 = !{!"FluidsimSettings", !40, i64 0, !41, i64 8, !41, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !35, i64 24, !42, i64 28, !42, i64 30, !35, i64 32, !42, i64 36, !42, i64 38, !36, i64 40, !35, i64 52, !35, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !35, i64 76, !41, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !40, i64 96, !40, i64 104, !36, i64 112, !36, i64 1136, !36, i64 1148, !40, i64 1160, !42, i64 1168, !36, i64 1170, !36, i64 1171, !35, i64 1172, !41, i64 1176, !35, i64 1180, !35, i64 1184, !41, i64 1188, !41, i64 1192, !35, i64 1196, !35, i64 1200, !35, i64 1204, !40, i64 1208, !41, i64 1216, !35, i64 1220, !35, i64 1224, !35, i64 1228, !35, i64 1232, !35, i64 1236, !35, i64 1240, !35, i64 1244, !41, i64 1248, !35, i64 1252}
!217 = !{!65, !40, i64 288}
!218 = !{!219, !42, i64 24}
!219 = !{!"bPose", !45, i64 0, !40, i64 16, !42, i64 24, !42, i64 26, !41, i64 28, !41, i64 32, !35, i64 36, !36, i64 40, !36, i64 52, !45, i64 64, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 96, !67, i64 104, !36, i64 152}
!220 = !{!221, !42, i64 24}
!221 = !{!"bActuator", !40, i64 0, !40, i64 8, !40, i64 16, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !36, i64 32, !40, i64 96, !40, i64 104}
!222 = !{!221, !40, i64 96}
!223 = !{!224, !40, i64 0}
!224 = !{!"bActionActuator", !40, i64 0, !42, i64 8, !42, i64 10, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 84, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !35, i64 160, !35, i64 164}
!225 = !{!226, !40, i64 0}
!226 = !{!"AnimData", !40, i64 0, !40, i64 8, !40, i64 16, !45, i64 24, !40, i64 40, !45, i64 48, !45, i64 64, !41, i64 80, !41, i64 84, !42, i64 88, !42, i64 90, !35, i64 92}
!227 = distinct !{!227, !56, !57}
!228 = distinct !{!228, !56, !57}
!229 = distinct !{!229, !56, !57}
!230 = !{!65, !36, i64 1160}
!231 = !{!232, !41, i64 20}
!232 = !{!"wmEvent", !40, i64 0, !40, i64 8, !42, i64 16, !42, i64 18, !41, i64 20, !41, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !42, i64 44, !42, i64 46, !41, i64 48, !41, i64 52, !233, i64 56, !41, i64 64, !41, i64 68, !42, i64 72, !42, i64 74, !42, i64 76, !42, i64 78, !42, i64 80, !42, i64 82, !40, i64 88, !40, i64 96, !42, i64 104, !42, i64 106, !41, i64 108, !40, i64 112}
!233 = !{!"double", !36, i64 0}
!234 = !{!235, !41, i64 176}
!235 = !{!"ARegion", !40, i64 0, !40, i64 8, !236, i64 16, !77, i64 176, !77, i64 192, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !35, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !40, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !40, i64 360, !40, i64 368, !40, i64 376}
!236 = !{!"View2D", !61, i64 0, !61, i64 16, !77, i64 32, !77, i64 48, !77, i64 64, !36, i64 80, !36, i64 88, !35, i64 96, !35, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !40, i64 128, !41, i64 136, !41, i64 140, !40, i64 144, !40, i64 152}
!237 = !{!232, !41, i64 24}
!238 = !{!235, !41, i64 184}
!239 = !{!240, !40, i64 16}
!240 = !{!"MTex", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !40, i64 8, !40, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !35, i64 116, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !42, i64 128, !42, i64 130, !36, i64 132, !36, i64 133, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308}
!241 = !{!242, !40, i64 16}
!242 = !{!"Tex", !66, i64 0, !40, i64 120, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !41, i64 252, !41, i64 256, !42, i64 260, !42, i64 262, !42, i64 264, !42, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !243, i64 296, !40, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !40, i64 368, !40, i64 376, !40, i64 384, !40, i64 392, !40, i64 400, !36, i64 408, !36, i64 409}
!243 = !{!"ImageUser", !40, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !41, i64 36}
!244 = !{!242, !41, i64 100}
!245 = distinct !{!245, !56, !57}
!246 = distinct !{!246, !56, !57}
