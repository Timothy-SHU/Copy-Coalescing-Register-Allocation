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
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
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
@reltable.get_lamp_defname = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.1 to i64), i64 ptrtoint (ptr @reltable.get_lamp_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable.get_lamp_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable.get_lamp_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.10 to i64), i64 ptrtoint (ptr @reltable.get_lamp_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable.get_lamp_defname to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_location_from_view(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %4, ptr noundef %3) #9
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %5) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !34 {
  %3 = load float, ptr %1, align 4, !tbaa !35
  store float %3, ptr %0, align 4, !tbaa !35
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !35
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !35
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !35
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_rotation_from_view(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  switch i8 %2, label %24 [
    i8 88, label %9
    i8 89, label %14
    i8 90, label %20
  ]

9:                                                ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %10 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 2, i64 1
  call void @axis_angle_to_quat(ptr noundef nonnull %5, ptr noundef nonnull %10, float noundef 0xBFF921FB60000000) #9
  %11 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 17
  call void @mul_qt_qtqt(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %5) #9
  %12 = load float, ptr %4, align 16, !tbaa !35
  %13 = fneg float %12
  store float %13, ptr %4, align 16, !tbaa !35
  call void @quat_to_eul(ptr noundef %1, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %24

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 17
  call void @copy_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %15) #9
  %16 = load float, ptr %4, align 16, !tbaa !35
  %17 = fneg float %16
  store float %17, ptr %4, align 16, !tbaa !35
  call void @quat_to_eul(ptr noundef %1, ptr noundef nonnull %4) #9
  %18 = load float, ptr %1, align 4, !tbaa !35
  %19 = fadd float %18, 0xBFF921FB60000000
  store float %19, ptr %1, align 4, !tbaa !35
  br label %24

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 17
  call void @copy_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %21) #9
  %22 = load float, ptr %4, align 16, !tbaa !35
  %23 = fneg float %22
  store float %23, ptr %4, align 16, !tbaa !35
  call void @quat_to_eul(ptr noundef %1, ptr noundef nonnull %4) #9
  br label %24

24:                                               ; preds = %8, %20, %14, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %26

25:                                               ; preds = %3
  tail call fastcc void @zero_v3(ptr noundef %1) #10
  br label %26

26:                                               ; preds = %25, %24
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @quat_to_eul(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !39 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !35
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_base_init_transform(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 33
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %2) #10
  br label %13

13:                                               ; preds = %11, %9
  %14 = icmp eq ptr %3, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 39
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %3) #10
  br label %17

17:                                               ; preds = %15, %13
  tail call void @BKE_object_where_is_calc(ptr noundef nonnull %7, ptr noundef %6) #9
  br label %18

18:                                               ; preds = %4, %17
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @ED_object_new_primitive_matrix(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %12 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #11
  tail call void @unit_m4(ptr noundef %4) #9
  call void @eul_to_mat3(ptr noundef nonnull %8, ptr noundef %3) #9
  %13 = call zeroext i8 @invert_m3(ptr noundef nonnull %8) #9
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %14) #9
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7) #9
  %15 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %10, ptr noundef nonnull %9) #9
  call void @copy_m4_m3(ptr noundef %4, ptr noundef nonnull %10) #9
  %16 = getelementptr inbounds [4 x float], ptr %4, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef %2) #10
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %16, ptr noundef nonnull %16, ptr noundef nonnull %17) #10
  %18 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %10, ptr noundef nonnull %7) #9
  call void @mul_m3_v3(ptr noundef nonnull %10, ptr noundef nonnull %16) #9
  %19 = icmp eq ptr %12, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %6
  %21 = call float @ED_view3d_grid_scale(ptr noundef %11, ptr noundef nonnull %12, ptr noundef null) #9
  br label %24

22:                                               ; preds = %6
  %23 = call float @ED_scene_grid_scale(ptr noundef %11, ptr noundef null) #9
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi float [ %21, %20 ], [ %23, %22 ]
  %26 = icmp eq i8 %5, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load float, ptr %4, align 4, !tbaa !35
  %29 = fmul float %25, %28
  store float %29, ptr %4, align 4, !tbaa !35
  %30 = getelementptr inbounds [4 x float], ptr %4, i64 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !35
  %32 = fmul float %25, %31
  store float %32, ptr %30, align 4, !tbaa !35
  %33 = getelementptr inbounds [4 x float], ptr %4, i64 2, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !35
  %35 = fmul float %25, %34
  store float %35, ptr %33, align 4, !tbaa !35
  br label %36

36:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #11
  ret float %25
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @eul_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !45 {
  %4 = load float, ptr %1, align 4, !tbaa !35
  %5 = load float, ptr %2, align 4, !tbaa !35
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !35
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !35
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !35
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !35
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !35
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !35
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ED_view3d_grid_scale(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ED_scene_grid_scale(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_add_unit_props(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = tail call ptr @RNA_def_float(ptr noundef %3, ptr noundef nonnull @.str.15, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #9
  tail call void @RNA_def_property_subtype(ptr noundef %4, i32 noundef 65554) #9
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_subtype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_add_generic_props(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call ptr @RNA_def_boolean(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #9
  tail call void @RNA_def_property_update_runtime(ptr noundef %5, ptr noundef nonnull @view_align_update) #9
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !46
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #9
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268959744) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = load ptr, ptr %3, align 8, !tbaa !46
  %12 = tail call ptr @RNA_def_float_vector_xyz(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #9
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 268435456) #9
  %13 = load ptr, ptr %3, align 8, !tbaa !46
  %14 = tail call ptr @RNA_def_float_rotation(ptr noundef %13, ptr noundef nonnull @.str.27, i32 noundef 3, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, float noundef 0xC01921FB60000000, float noundef 0x401921FB60000000) #9
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #9
  %15 = load ptr, ptr %3, align 8, !tbaa !46
  %16 = tail call ptr @RNA_def_boolean_layer_member(ptr noundef %15, ptr noundef nonnull @.str.30, i32 noundef 20, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.17) #9
  tail call void @RNA_def_property_flag(ptr noundef %16, i32 noundef 268959744) #9
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_update_runtime(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view_align_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !50 {
  %4 = tail call zeroext i8 @RNA_struct_idprops_unset(ptr noundef %2, ptr noundef nonnull @.str.27) #9
  ret void
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float_vector_xyz(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_float_rotation(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean_layer_member(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [20 x i32], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = tail call ptr @RNA_struct_find_property(ptr noundef %14, ptr noundef nonnull @.str.21) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %8
  %18 = icmp eq ptr %5, null
  %19 = load ptr, ptr %13, align 8, !tbaa !51
  %20 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %19, ptr noundef nonnull @.str.21) #9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %13, align 8, !tbaa !51
  %24 = tail call i32 @RNA_boolean_get(ptr noundef %23, ptr noundef nonnull @.str.21) #9
  br i1 %18, label %36, label %25

25:                                               ; preds = %22
  %26 = trunc i32 %24 to i8
  store i8 %26, ptr %5, align 1, !tbaa !53
  br label %36

27:                                               ; preds = %17
  %28 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !54
  %29 = lshr i32 %28, 18
  br i1 %18, label %33, label %30

30:                                               ; preds = %27
  %31 = trunc i32 %29 to i8
  %32 = and i8 %31, 1
  store i8 %32, ptr %5, align 1, !tbaa !53
  br label %33

33:                                               ; preds = %27, %30
  %34 = load ptr, ptr %13, align 8, !tbaa !51
  %35 = and i32 %29, 1
  tail call void @RNA_boolean_set(ptr noundef %34, ptr noundef nonnull @.str.21, i32 noundef %35) #9
  br label %36

36:                                               ; preds = %33, %22, %25, %8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %9) #11
  %37 = icmp eq ptr %6, null
  %38 = load ptr, ptr %13, align 8, !tbaa !51
  %39 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %38, ptr noundef nonnull @.str.30) #9
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %63, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %13, align 8, !tbaa !51
  call void @RNA_boolean_get_array(ptr noundef %42, ptr noundef nonnull @.str.30, ptr noundef nonnull %9) #9
  br i1 %37, label %44, label %43

43:                                               ; preds = %41
  store i32 0, ptr %6, align 4, !tbaa !58
  br label %44

44:                                               ; preds = %41, %43
  br label %45

45:                                               ; preds = %44, %59
  %46 = phi i64 [ %61, %59 ], [ 0, %44 ]
  %47 = phi i32 [ %60, %59 ], [ 0, %44 ]
  %48 = getelementptr inbounds [20 x i32], ptr %9, i64 0, i64 %46
  %49 = load i32, ptr %48, align 4, !tbaa !58
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %45
  %52 = trunc i64 %46 to i32
  %53 = shl nuw nsw i32 1, %52
  br i1 %37, label %54, label %56

54:                                               ; preds = %51
  %55 = or i32 %53, %47
  br label %59

56:                                               ; preds = %51
  %57 = load i32, ptr %6, align 4, !tbaa !58
  %58 = or i32 %57, %53
  store i32 %58, ptr %6, align 4, !tbaa !58
  br label %59

59:                                               ; preds = %54, %56, %45
  %60 = phi i32 [ %47, %45 ], [ %55, %54 ], [ %47, %56 ]
  %61 = add nuw nsw i64 %46, 1
  %62 = icmp eq i64 %61, 20
  br i1 %62, label %82, label %45, !llvm.loop !59

63:                                               ; preds = %36
  %64 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %65 = tail call i32 @BKE_screen_view3d_layer_active_ex(ptr noundef %12, ptr noundef %64, i8 noundef zeroext 0) #9
  br i1 %37, label %67, label %66

66:                                               ; preds = %63
  store i32 %65, ptr %6, align 4, !tbaa !58
  br label %67

67:                                               ; preds = %63, %66
  br label %68

68:                                               ; preds = %67, %72
  %69 = phi i64 [ %78, %72 ], [ 0, %67 ]
  br i1 %37, label %72, label %70

70:                                               ; preds = %68
  %71 = load i32, ptr %6, align 4, !tbaa !58
  br label %72

72:                                               ; preds = %68, %70
  %73 = phi i32 [ %65, %68 ], [ %71, %70 ]
  %74 = trunc i64 %69 to i32
  %75 = shl nuw nsw i32 1, %74
  %76 = and i32 %73, %75
  %77 = getelementptr inbounds [20 x i32], ptr %9, i64 0, i64 %69
  store i32 %76, ptr %77, align 4, !tbaa !58
  %78 = add nuw nsw i64 %69, 1
  %79 = icmp eq i64 %78, 20
  br i1 %79, label %80, label %68, !llvm.loop !61

80:                                               ; preds = %72
  %81 = load ptr, ptr %13, align 8, !tbaa !51
  call void @RNA_boolean_set_array(ptr noundef %81, ptr noundef nonnull @.str.30, ptr noundef nonnull %9) #9
  br label %82

82:                                               ; preds = %59, %80
  %83 = phi i32 [ %65, %80 ], [ %60, %59 ]
  %84 = icmp eq ptr %12, null
  br i1 %84, label %97, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 20
  %87 = load ptr, ptr %86, align 8, !tbaa !62
  %88 = icmp eq ptr %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 22
  %91 = load i32, ptr %90, align 8, !tbaa !65
  br i1 %37, label %92, label %94

92:                                               ; preds = %89
  %93 = or i32 %91, %83
  br label %97

94:                                               ; preds = %89
  %95 = load i32, ptr %6, align 4, !tbaa !58
  %96 = or i32 %95, %91
  store i32 %96, ptr %6, align 4, !tbaa !58
  br label %97

97:                                               ; preds = %92, %94, %85, %82
  %98 = phi i32 [ %83, %82 ], [ %83, %85 ], [ %93, %92 ], [ %83, %94 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %99 = icmp eq ptr %3, null
  %100 = select i1 %99, ptr %10, ptr %3
  %101 = load ptr, ptr %13, align 8, !tbaa !51
  %102 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %101, ptr noundef nonnull @.str.24) #9
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %97
  %105 = load ptr, ptr %13, align 8, !tbaa !51
  call void @RNA_float_get_array(ptr noundef %105, ptr noundef nonnull @.str.24, ptr noundef nonnull %100) #9
  br label %108

106:                                              ; preds = %97
  call void @ED_object_location_from_view(ptr noundef %0, ptr noundef nonnull %100) #10
  %107 = load ptr, ptr %13, align 8, !tbaa !51
  call void @RNA_float_set_array(ptr noundef %107, ptr noundef nonnull @.str.24, ptr noundef nonnull %100) #9
  br label %108

108:                                              ; preds = %106, %104
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %109 = icmp eq ptr %7, null
  %110 = icmp eq ptr %4, null
  %111 = select i1 %110, ptr %11, ptr %4
  %112 = load ptr, ptr %13, align 8, !tbaa !51
  %113 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %112, ptr noundef nonnull @.str.27) #9
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %108
  br i1 %109, label %143, label %116

116:                                              ; preds = %115
  store i8 0, ptr %7, align 1, !tbaa !53
  br label %143

117:                                              ; preds = %108
  %118 = load ptr, ptr %13, align 8, !tbaa !51
  %119 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %118, ptr noundef nonnull @.str.18) #9
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %13, align 8, !tbaa !51
  %123 = call i32 @RNA_boolean_get(ptr noundef %122, ptr noundef nonnull @.str.18) #9
  %124 = trunc i32 %123 to i8
  br i1 %109, label %138, label %125

125:                                              ; preds = %121
  store i8 %124, ptr %7, align 1, !tbaa !53
  br label %138

126:                                              ; preds = %117
  %127 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !54
  %128 = lshr i32 %127, 19
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  br i1 %109, label %131, label %134

131:                                              ; preds = %126
  %132 = load ptr, ptr %13, align 8, !tbaa !51
  %133 = and i32 %128, 1
  call void @RNA_boolean_set(ptr noundef %132, ptr noundef nonnull @.str.18, i32 noundef %133) #9
  br label %138

134:                                              ; preds = %126
  store i8 %130, ptr %7, align 1, !tbaa !53
  %135 = load ptr, ptr %13, align 8, !tbaa !51
  %136 = and i32 %128, 1
  call void @RNA_boolean_set(ptr noundef %135, ptr noundef nonnull @.str.18, i32 noundef %136) #9
  %137 = load i8, ptr %7, align 1, !tbaa !53
  br label %138

138:                                              ; preds = %134, %125, %121, %131
  %139 = phi i8 [ %130, %131 ], [ %124, %121 ], [ %124, %125 ], [ %137, %134 ]
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  call void @ED_object_rotation_from_view(ptr noundef %0, ptr noundef nonnull %111, i8 noundef zeroext %2) #10
  %142 = load ptr, ptr %13, align 8, !tbaa !51
  call void @RNA_float_set_array(ptr noundef %142, ptr noundef nonnull @.str.27, ptr noundef nonnull %111) #9
  br label %145

143:                                              ; preds = %116, %115, %138
  %144 = load ptr, ptr %13, align 8, !tbaa !51
  call void @RNA_float_get_array(ptr noundef %144, ptr noundef nonnull @.str.27, ptr noundef nonnull %111) #9
  br label %145

145:                                              ; preds = %143, %141
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  br i1 %37, label %148, label %146

146:                                              ; preds = %145
  %147 = load i32, ptr %6, align 4, !tbaa !58
  br label %148

148:                                              ; preds = %145, %146
  %149 = phi i32 [ %98, %145 ], [ %147, %146 ]
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %153 = load ptr, ptr %152, align 8, !tbaa !66
  call void @BKE_report(ptr noundef %153, i32 noundef 32, ptr noundef nonnull @.str.32) #9
  br label %154

154:                                              ; preds = %148, %151
  %155 = phi i8 [ 0, %151 ], [ 1, %148 ]
  ret i8 %155
}

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_screen_view3d_layer_active_ex(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_object_add_type(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 15) #9
  br label %12

12:                                               ; preds = %11, %6
  %13 = tail call ptr @BKE_object_add(ptr noundef %7, ptr noundef %8, i32 noundef %1) #9
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 52
  store i32 %5, ptr %14, align 8, !tbaa !67
  %15 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 2
  store i32 %5, ptr %17, align 8, !tbaa !90
  tail call void @ED_base_object_activate(ptr noundef %0, ptr noundef %16) #9
  %18 = load ptr, ptr %15, align 8, !tbaa !72
  tail call void @ED_object_base_init_transform(ptr noundef %0, ptr noundef %18, ptr noundef %2, ptr noundef %3) #10
  %19 = icmp eq i32 %1, 1
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 113
  store i8 0, ptr %21, align 8, !tbaa !91
  %22 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 99
  %23 = load i32, ptr %22, align 8, !tbaa !92
  %24 = and i32 %23, -6226946
  store i32 %24, ptr %22, align 8, !tbaa !92
  br label %25

25:                                               ; preds = %20, %12
  tail call void @DAG_id_type_tag(ptr noundef %7, i16 noundef signext 16975) #9
  tail call void @DAG_relations_tag_update(ptr noundef %7) #9
  %26 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !93
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @ED_render_id_flush_update(ptr noundef %7, ptr noundef nonnull %27) #9
  br label %30

30:                                               ; preds = %29, %25
  %31 = icmp eq i8 %4, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  tail call void @ED_object_editmode_enter(ptr noundef %0, i32 noundef 16) #9
  br label %33

33:                                               ; preds = %32, %30
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 73728000, ptr noundef nonnull %8) #9
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_base_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_type_tag(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_render_id_flush_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_object_editmode_enter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_add_exec, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !99
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #10
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef nonnull @object_type_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.17) #9
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_add_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !100 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #9
  %7 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #10, !range !101
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = call float @RNA_float_get(ptr noundef %11, ptr noundef nonnull @.str.15) #9
  %13 = load ptr, ptr %10, align 8, !tbaa !51
  %14 = call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.36) #9
  %15 = load i8, ptr %3, align 1, !tbaa !53
  %16 = load i32, ptr %4, align 4, !tbaa !58
  %17 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %15, i32 noundef %16) #10
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !102
  %20 = icmp eq i16 %19, 22
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 36
  call fastcc void @copy_v3_fl(ptr noundef nonnull %22, float noundef %12) #10
  br label %24

23:                                               ; preds = %9
  call void @BKE_object_obdata_size_init(ptr noundef nonnull %17, float noundef %12) #9
  br label %24

24:                                               ; preds = %21, %23, %2
  %25 = phi i32 [ 2, %2 ], [ 4, %23 ], [ 4, %21 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret i32 %25
}

; Function Attrs: optsize
declare i32 @ED_operator_objectmode(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_effector_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @effector_add_exec, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef nonnull @field_type_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.17) #9
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !103
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #10
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @effector_add_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !104 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #9
  %8 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #10, !range !101
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.36) #9
  %14 = load ptr, ptr %11, align 8, !tbaa !51
  %15 = call float @RNA_float_get(ptr noundef %14, ptr noundef nonnull @.str.15) #9
  %16 = icmp eq i32 %13, 5
  %17 = load i32, ptr %4, align 4, !tbaa !58
  br i1 %16, label %18, label %33

18:                                               ; preds = %10
  %19 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0, i32 noundef %17) #10
  call void @rename_id(ptr noundef %19, ptr noundef nonnull @.str.121) #9
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !93
  %22 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 23
  %23 = load i32, ptr %22, align 4, !tbaa !105
  %24 = or i32 %23, 9
  store i32 %24, ptr %22, align 4, !tbaa !105
  call void @ED_object_editmode_enter(ptr noundef %0, i32 noundef 0) #9
  %25 = call float @ED_object_new_primitive_matrix(ptr noundef %0, ptr noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #10
  %26 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !108
  %28 = fptosi float %15 to i32
  %29 = call ptr @add_nurbs_primitive(ptr noundef %0, ptr noundef %19, ptr noundef nonnull %7, i32 noundef 1796, i32 noundef %28) #9
  call void @BLI_addtail(ptr noundef %27, ptr noundef %29) #9
  %30 = load i8, ptr %3, align 1, !tbaa !53
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #9
  br label %37

33:                                               ; preds = %10
  %34 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0, i32 noundef %17) #10
  call void @BKE_object_obdata_size_init(ptr noundef %34, float noundef %15) #9
  call void @rename_id(ptr noundef %34, ptr noundef nonnull @.str.122) #9
  switch i32 %13, label %37 [
    i32 4, label %35
    i32 2, label %35
  ]

35:                                               ; preds = %33, %33
  %36 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 88
  store i8 4, ptr %36, align 1, !tbaa !109
  br label %37

37:                                               ; preds = %33, %18, %32, %35
  %38 = phi ptr [ %34, %35 ], [ %34, %33 ], [ %19, %32 ], [ %19, %18 ]
  %39 = call ptr @object_add_collision_fields(i32 noundef %13) #9
  %40 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 110
  store ptr %39, ptr %40, align 8, !tbaa !110
  %41 = call ptr @CTX_data_main(ptr noundef %0) #9
  call void @DAG_relations_tag_update(ptr noundef %41) #9
  br label %42

42:                                               ; preds = %2, %37
  %43 = phi i32 [ 4, %37 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_camera_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_camera_add_exec, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !99
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call ptr @RNA_struct_type_find_property(ptr noundef %8, ptr noundef nonnull @.str.18) #9
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 524288) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_camera_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !111 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  tail call void @RNA_boolean_set(ptr noundef %10, ptr noundef nonnull @.str.18, i32 noundef 1) #9
  %11 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #10, !range !101
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %4, align 4, !tbaa !58
  %15 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 11, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0, i32 noundef %14) #10
  %16 = icmp eq ptr %7, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store ptr %15, ptr %18, align 8, !tbaa !112
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.View3D, ptr %7, i64 0, i32 26
  %24 = load i16, ptr %23, align 4, !tbaa !113
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !114
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store ptr %15, ptr %27, align 8, !tbaa !114
  br label %31

31:                                               ; preds = %22, %26, %30
  %32 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !93
  %34 = call float @ED_view3d_grid_scale(ptr noundef %8, ptr noundef nonnull %7, ptr noundef null) #9
  br label %39

35:                                               ; preds = %13
  %36 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !93
  %38 = call float @ED_scene_grid_scale(ptr noundef %8, ptr noundef null) #9
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi ptr [ %33, %31 ], [ %37, %35 ]
  %41 = phi float [ %34, %31 ], [ %38, %35 ]
  %42 = getelementptr inbounds %struct.Camera, ptr %40, i64 0, i32 10
  store float %41, ptr %42, align 8, !tbaa !115
  br label %43

43:                                               ; preds = %2, %39
  %44 = phi i32 [ 4, %39 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret i32 %44
}

; Function Attrs: optsize
declare ptr @RNA_struct_type_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_metaball_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.44, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_metaball_add_exec, ptr %5, align 8, !tbaa !97
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %6, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !99
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.36, ptr noundef nonnull @metaelem_type_items, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.17) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !103
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #10
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_metaball_add_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !118 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #9
  %9 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #10, !range !101
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %2
  %12 = icmp eq ptr %8, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !102
  %16 = icmp eq i16 %15, 5
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %11
  %18 = load i32, ptr %4, align 4, !tbaa !58
  %19 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1, i32 noundef %18) #10
  br label %21

20:                                               ; preds = %13
  call void @DAG_id_tag_update(ptr noundef nonnull %8, i16 noundef signext 2) #9
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi ptr [ %19, %17 ], [ %8, %20 ]
  %23 = phi i1 [ false, %17 ], [ true, %20 ]
  %24 = call float @ED_object_new_primitive_matrix(ptr noundef %0, ptr noundef %22, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #10
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = call float @RNA_float_get(ptr noundef %26, ptr noundef nonnull @.str.15) #9
  %28 = load ptr, ptr %25, align 8, !tbaa !51
  %29 = call i32 @RNA_enum_get(ptr noundef %28, ptr noundef nonnull @.str.36) #9
  %30 = call ptr @add_metaball_primitive(ptr noundef %0, ptr noundef %22, ptr noundef nonnull %7, float noundef %27, i32 noundef %29) #9
  %31 = load i8, ptr %3, align 1
  %32 = icmp ne i8 %31, 0
  %33 = select i1 %23, i1 true, i1 %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #9
  br label %35

35:                                               ; preds = %34, %21
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %22) #9
  br label %36

36:                                               ; preds = %2, %35
  %37 = phi i32 [ 4, %35 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret i32 %37
}

; Function Attrs: optsize
declare i32 @ED_operator_scene_editable(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_text_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_add_text_exec, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !99
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #10
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_add_text_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !119 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #9
  %8 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #10, !range !101
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %7, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !102
  %15 = icmp eq i16 %14, 4
  br i1 %15, label %23, label %16

16:                                               ; preds = %12, %10
  %17 = load i8, ptr %3, align 1, !tbaa !53
  %18 = load i32, ptr %4, align 4, !tbaa !58
  %19 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext %17, i32 noundef %18) #10
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = call float @RNA_float_get(ptr noundef %21, ptr noundef nonnull @.str.15) #9
  call void @BKE_object_obdata_size_init(ptr noundef %19, float noundef %22) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %19) #9
  br label %23

23:                                               ; preds = %12, %2, %16
  %24 = phi i32 [ 4, %16 ], [ 2, %2 ], [ 2, %12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_armature_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_armature_add_exec, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !99
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #10
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_armature_add_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !120 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %8 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %9 = icmp ne ptr %8, null
  %10 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8
  %11 = and i32 %10, 524288
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %9, i1 %12, i1 false
  %14 = zext i1 %13 to i8
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #9
  %15 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #10, !range !101
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %2
  %18 = icmp eq ptr %7, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = icmp eq i16 %21, 25
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  call void @DAG_id_tag_update(ptr noundef nonnull %7, i16 noundef signext 2) #9
  br label %31

24:                                               ; preds = %17, %19
  %25 = load i32, ptr %4, align 4, !tbaa !58
  %26 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 25, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1, i32 noundef %25) #10
  call void @ED_object_editmode_enter(ptr noundef %0, i32 noundef 0) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !66
  call void @BKE_report(ptr noundef %30, i32 noundef 32, ptr noundef nonnull @.str.149) #9
  br label %43

31:                                               ; preds = %23, %24
  %32 = phi ptr [ %7, %23 ], [ %26, %24 ]
  %33 = phi i1 [ true, %23 ], [ false, %24 ]
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  %36 = call float @RNA_float_get(ptr noundef %35, ptr noundef nonnull @.str.15) #9
  %37 = call ptr @ED_armature_edit_bone_add_primitive(ptr noundef nonnull %32, float noundef %36, i8 noundef zeroext %14) #9
  %38 = load i8, ptr %3, align 1
  %39 = icmp ne i8 %38, 0
  %40 = select i1 %33, i1 true, i1 %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #9
  br label %42

42:                                               ; preds = %41, %31
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %32) #9
  br label %43

43:                                               ; preds = %2, %42, %28
  %44 = phi i32 [ 2, %28 ], [ 4, %42 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_empty_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_empty_add_exec, ptr %5, align 8, !tbaa !97
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !99
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.36, ptr noundef nonnull @object_empty_drawtype_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.17) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !103
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #10
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_empty_add_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !121 {
  %3 = alloca i32, align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.36) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #9
  %9 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #10, !range !101
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4, !tbaa !58
  %13 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef %12) #10
  call void @BKE_object_empty_draw_type_set(ptr noundef %13, i32 noundef %8) #9
  %14 = load ptr, ptr %6, align 8, !tbaa !51
  %15 = call float @RNA_float_get(ptr noundef %14, ptr noundef nonnull @.str.15) #9
  call void @BKE_object_obdata_size_init(ptr noundef %13, float noundef %15) #9
  br label %16

16:                                               ; preds = %2, %11
  %17 = phi i32 [ 4, %11 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_drop_named_image(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @empty_drop_named_image_invoke, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.60, ptr noundef null, i32 noundef 1024, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #9
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268959744) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #9
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 268959744) #9
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @empty_drop_named_image_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !122 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca [3 x float], align 4
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %10, ptr noundef nonnull @.str.60) #9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #11
  %14 = load ptr, ptr %9, align 8, !tbaa !51
  call void @RNA_string_get(ptr noundef %14, ptr noundef nonnull @.str.60, ptr noundef nonnull %4) #9
  %15 = call ptr @BKE_image_load_exists(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #11
  br label %23

16:                                               ; preds = %3
  %17 = load ptr, ptr %9, align 8, !tbaa !51
  %18 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %17, ptr noundef nonnull @.str.63) #9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %21 = load ptr, ptr %9, align 8, !tbaa !51
  call void @RNA_string_get(ptr noundef %21, ptr noundef nonnull @.str.63, ptr noundef nonnull %5) #9
  %22 = call ptr @BKE_libblock_find_name(i16 noundef signext 19785, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi ptr [ %15, %13 ], [ %22, %20 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %16, %23
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !66
  call void @BKE_report(ptr noundef %28, i32 noundef 32, ptr noundef nonnull @.str.150) #9
  br label %52

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %31 = call ptr @ED_view3d_give_base_under_cursor(ptr noundef %0, ptr noundef nonnull %30) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Base, ptr %31, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !40
  %36 = getelementptr inbounds %struct.Object, ptr %35, i64 0, i32 3
  %37 = load i16, ptr %36, align 8, !tbaa !102
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %8) #9
  br label %48

40:                                               ; preds = %33, %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %41 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 90, ptr noundef null, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %6, ptr noundef null) #10, !range !101
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %52

44:                                               ; preds = %40
  %45 = load i32, ptr %6, align 4, !tbaa !58
  %46 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %7, i8 noundef zeroext 0, i32 noundef %45) #10
  %47 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 33
  call void @ED_object_location_from_view(ptr noundef %0, ptr noundef nonnull %47) #10
  call void @ED_view3d_cursor3d_position(ptr noundef %0, ptr noundef nonnull %47, ptr noundef nonnull %30) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %48

48:                                               ; preds = %44, %39
  %49 = phi ptr [ %35, %39 ], [ %46, %44 ]
  call void @BKE_object_empty_draw_type_set(ptr noundef %49, i32 noundef 8) #9
  %50 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !93
  call void @id_us_min(ptr noundef %51) #9
  store ptr %24, ptr %50, align 8, !tbaa !93
  call void @id_us_plus(ptr noundef nonnull %24) #9
  br label %52

52:                                               ; preds = %43, %48, %26
  %53 = phi i32 [ 2, %26 ], [ 4, %48 ], [ 2, %43 ]
  ret i32 %53
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_lamp_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.67, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.68, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_lamp_add_exec, ptr %5, align 8, !tbaa !97
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !99
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.36, ptr noundef nonnull @lamp_type_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.17) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !103
  tail call void @RNA_def_property_translation_context(ptr noundef %10, ptr noundef nonnull @.str.69) #9
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #10
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_lamp_add_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !123 {
  %3 = alloca i32, align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.36) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #9
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #10, !range !101
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %3, align 4, !tbaa !58
  %14 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef %13) #10
  %15 = load ptr, ptr %7, align 8, !tbaa !51
  %16 = call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.15) #9
  call void @BKE_object_obdata_size_init(ptr noundef %14, float noundef %16) #9
  %17 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = trunc i32 %9 to i16
  %20 = getelementptr inbounds %struct.Lamp, ptr %18, i64 0, i32 2
  store i16 %19, ptr %20, align 8, !tbaa !124
  %21 = call fastcc ptr @get_lamp_defname(i32 noundef %9) #10
  call void @rename_id(ptr noundef %14, ptr noundef nonnull %21) #9
  call void @rename_id(ptr noundef %18, ptr noundef nonnull %21) #9
  %22 = call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %6) #9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %12
  call void @ED_node_shader_default(ptr noundef %0, ptr noundef nonnull %18) #9
  %25 = getelementptr inbounds %struct.Lamp, ptr %18, i64 0, i32 71
  store i16 1, ptr %25, align 2, !tbaa !126
  br label %26

26:                                               ; preds = %12, %24, %2
  %27 = phi i32 [ 2, %2 ], [ 4, %24 ], [ 4, %12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %27
}

; Function Attrs: optsize
declare void @RNA_def_property_translation_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_group_instance_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.70, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.71, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.72, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_enum_search_invoke, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @group_instance_add_exec, ptr %5, align 8, !tbaa !97
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !99
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.73, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.74) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !46
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.75, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.17) #9
  tail call void @RNA_def_enum_funcs(ptr noundef %12, ptr noundef nonnull @RNA_group_itemf) #9
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 536870912) #9
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !103
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: optsize
declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @group_instance_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !127 {
  %3 = alloca i32, align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.63) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !51
  call void @RNA_string_get(ptr noundef %12, ptr noundef nonnull @.str.63, ptr noundef nonnull %6) #9
  %13 = call ptr @BKE_libblock_find_name(i16 noundef signext 21063, ptr noundef nonnull %6) #9
  %14 = load ptr, ptr %7, align 8, !tbaa !51
  %15 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %14, ptr noundef nonnull @.str.24) #9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = call ptr @CTX_wm_window(ptr noundef %0) #9
  %19 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 21
  %20 = load ptr, ptr %19, align 8, !tbaa !128
  call void @ED_object_location_from_view(ptr noundef %0, ptr noundef nonnull %4) #10
  %21 = getelementptr inbounds %struct.wmEvent, ptr %20, i64 0, i32 6
  call void @ED_view3d_cursor3d_position(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %21) #9
  %22 = load ptr, ptr %7, align 8, !tbaa !51
  call void @RNA_float_set_array(ptr noundef %22, ptr noundef nonnull @.str.24, ptr noundef nonnull %4) #9
  br label %23

23:                                               ; preds = %17, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  br label %30

24:                                               ; preds = %2
  %25 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %26 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 32
  %27 = load ptr, ptr %7, align 8, !tbaa !51
  %28 = tail call i32 @RNA_enum_get(ptr noundef %27, ptr noundef nonnull @.str.75) #9
  %29 = tail call ptr @BLI_findlink(ptr noundef nonnull %26, i32 noundef %28) #9
  br label %30

30:                                               ; preds = %24, %23
  %31 = phi ptr [ %13, %23 ], [ %29, %24 ]
  %32 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 90, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #10, !range !101
  %33 = icmp eq i8 %32, 0
  %34 = icmp eq ptr %31, null
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %30
  %37 = call ptr @CTX_data_main(ptr noundef %0) #9
  %38 = call ptr @CTX_data_scene(ptr noundef %0) #9
  %39 = load i32, ptr %3, align 4, !tbaa !58
  %40 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef %39) #10
  %41 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 4, i64 2
  call void @rename_id(ptr noundef %40, ptr noundef nonnull %41) #9
  %42 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 112
  store ptr %31, ptr %42, align 8, !tbaa !130
  %43 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 55
  %44 = load i16, ptr %43, align 8, !tbaa !131
  %45 = or i16 %44, 256
  store i16 %45, ptr %43, align 8, !tbaa !131
  call void @id_lib_extern(ptr noundef nonnull %31) #9
  call void @DAG_relations_tag_update(ptr noundef %37) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %38) #9
  br label %46

46:                                               ; preds = %30, %36
  %47 = phi i32 [ 4, %36 ], [ 2, %30 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %47
}

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_group_itemf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_speaker_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.76, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.78, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_speaker_add_exec, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !99
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_speaker_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !132 {
  %3 = alloca i32, align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %7 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %3, ptr noundef null) #10, !range !101
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4, !tbaa !58
  %11 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %4, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef %10) #10
  %12 = call ptr @BKE_id_add_animdata(ptr noundef %11) #9
  %13 = call ptr @add_nlatrack(ptr noundef %12, ptr noundef null) #9
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = call ptr @add_nla_soundstrip(ptr noundef %6, ptr noundef %15) #9
  %17 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !133
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %16, i64 0, i32 10
  store float %19, ptr %20, align 8, !tbaa !134
  %21 = getelementptr inbounds %struct.NlaStrip, ptr %16, i64 0, i32 11
  %22 = load float, ptr %21, align 4, !tbaa !136
  %23 = fadd float %22, %19
  store float %23, ptr %21, align 4, !tbaa !136
  %24 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %13, ptr noundef %16) #9
  %25 = getelementptr inbounds %struct.NlaTrack, ptr %13, i64 0, i32 5
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef nonnull @.str.151, i64 noundef 64) #9
  call void @BKE_nlastrip_validate_name(ptr noundef %12, ptr noundef %16) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239665153, ptr noundef null) #9
  br label %27

27:                                               ; preds = %2, %9
  %28 = phi i32 [ 4, %9 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_base_object_free_and_unlink(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext 16975) #9
  tail call void @BKE_scene_base_unlink(ptr noundef %1, ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  tail call fastcc void @object_delete_check_glsl_update(ptr noundef %5) #10
  %6 = load ptr, ptr %4, align 8, !tbaa !40
  tail call void @BKE_libblock_free_us(ptr noundef %0, ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store ptr null, ptr %7, align 8, !tbaa !72
  br label %11

11:                                               ; preds = %10, %3
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !137
  tail call void %12(ptr noundef nonnull %2) #9
  ret void
}

; Function Attrs: optsize
declare void @BKE_scene_base_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @object_delete_check_glsl_update(ptr noundef %0) unnamed_addr #0 !PGOFuncName !138 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !102
  %4 = icmp eq i16 %3, 10
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 125
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @GPU_lamp_free(ptr noundef nonnull %0) #9
  br label %10

10:                                               ; preds = %5, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_libblock_free_us(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.79, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.80, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_delete_exec, ptr %5, align 8, !tbaa !97
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %6, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !99
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.82, i32 noundef 0, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #9
  ret void
}

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !140 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.82) #9
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %70

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %13 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %3) #9
  %14 = load ptr, ptr %3, align 8, !tbaa !137
  %15 = icmp eq ptr %14, null
  br i1 %15, label %69, label %16

16:                                               ; preds = %12
  %17 = and i32 %9, 255
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 11
  br label %20

20:                                               ; preds = %16, %47
  %21 = phi ptr [ %14, %16 ], [ %48, %47 ]
  %22 = getelementptr inbounds %struct.CollectionPointerLink, ptr %21, i64 0, i32 2, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !141
  %24 = getelementptr inbounds %struct.Base, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !40
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 53
  %27 = load i16, ptr %26, align 4, !tbaa !145
  %28 = and i16 %27, -2
  store i16 %28, ptr %26, align 4, !tbaa !145
  call void @ED_base_object_free_and_unlink(ptr noundef %4, ptr noundef %5, ptr noundef %23) #10
  br i1 %18, label %47, label %29

29:                                               ; preds = %20
  %30 = load ptr, ptr %19, align 8, !tbaa !137
  %31 = icmp eq ptr %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %29, %44
  %33 = phi ptr [ %45, %44 ], [ %30, %29 ]
  %34 = icmp eq ptr %33, %5
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !146
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load ptr, ptr %24, align 8, !tbaa !40
  %41 = call ptr @BKE_scene_base_find(ptr noundef nonnull %33, ptr noundef %40) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call void @ED_base_object_free_and_unlink(ptr noundef %4, ptr noundef nonnull %33, ptr noundef nonnull %41) #10
  br label %44

44:                                               ; preds = %32, %35, %43, %39
  %45 = load ptr, ptr %33, align 8, !tbaa !137
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %32, !llvm.loop !147

47:                                               ; preds = %44, %29, %20
  %48 = load ptr, ptr %21, align 8, !tbaa !137
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %20, !llvm.loop !148

50:                                               ; preds = %47
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @BKE_main_id_flag_listbase(ptr noundef nonnull %19, i16 noundef signext 1024, i8 noundef zeroext 1) #9
  %51 = getelementptr inbounds %struct.wmWindowManager, ptr %6, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !137
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %50, %66
  %55 = phi ptr [ %67, %66 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.wmWindow, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !149
  %58 = getelementptr inbounds %struct.bScreen, ptr %57, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !150
  %60 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 5
  %61 = load i16, ptr %60, align 2, !tbaa !152
  %62 = and i16 %61, 1024
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %54
  %65 = and i16 %61, -1025
  store i16 %65, ptr %60, align 2, !tbaa !152
  call void @DAG_relations_tag_update(ptr noundef %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef nonnull %59) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 73728000, ptr noundef nonnull %59) #9
  br label %66

66:                                               ; preds = %54, %64
  %67 = load ptr, ptr %55, align 8, !tbaa !137
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %54, !llvm.loop !153

69:                                               ; preds = %12
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %70

70:                                               ; preds = %66, %50, %69, %2
  %71 = phi i32 [ 2, %2 ], [ 2, %69 ], [ 4, %50 ], [ 4, %66 ]
  ret i32 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_duplicates_make_real(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.85, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.86, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.87, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_duplicates_make_real_exec, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.91, i32 noundef 0, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_duplicates_make_real_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !154 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.88) #9
  %9 = trunc i32 %8 to i8
  %10 = load ptr, ptr %6, align 8, !tbaa !51
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.91) #9
  %12 = trunc i32 %11 to i8
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %4) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %13 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #9
  %14 = load ptr, ptr %3, align 8, !tbaa !137
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %2, %16
  %17 = phi ptr [ %22, %16 ], [ %14, %2 ]
  %18 = getelementptr inbounds %struct.CollectionPointerLink, ptr %17, i64 0, i32 2, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !141
  call fastcc void @make_object_duplilist_real(ptr noundef %0, ptr noundef %5, ptr noundef %19, i8 noundef zeroext %9, i8 noundef zeroext %12) #10
  %20 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85786624, ptr noundef %21) #9
  %22 = load ptr, ptr %17, align 8, !tbaa !137
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16, !llvm.loop !155

24:                                               ; preds = %16, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @DAG_relations_tag_update(ptr noundef %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67108864, ptr noundef %5) #9
  call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef null) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_convert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.94, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.95, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.96, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @convert_exec, ptr %5, align 8, !tbaa !97
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @convert_poll, ptr %6, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !99
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.97, ptr noundef nonnull @convert_target_items, i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99) #9
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !103
  %12 = load ptr, ptr %8, align 8, !tbaa !46
  %13 = tail call ptr @RNA_def_boolean(ptr noundef %12, ptr noundef nonnull @.str.100, i32 noundef 0, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @convert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !156 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.97) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !51
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.100) #9
  %13 = trunc i32 %12 to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %14 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %3) #9
  %15 = load ptr, ptr %3, align 8, !tbaa !137
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %2, %33
  %18 = phi ptr [ %34, %33 ], [ %15, %2 ]
  %19 = getelementptr inbounds %struct.CollectionPointerLink, ptr %18, i64 0, i32 2, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !141
  %21 = getelementptr inbounds %struct.Base, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 53
  %24 = load i16, ptr %23, align 4, !tbaa !145
  %25 = and i16 %24, -1025
  store i16 %25, ptr %23, align 4, !tbaa !145
  %26 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !93
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 5
  %31 = load i16, ptr %30, align 2, !tbaa !157
  %32 = or i16 %31, 1024
  store i16 %32, ptr %30, align 2, !tbaa !157
  br label %33

33:                                               ; preds = %29, %17
  %34 = load ptr, ptr %18, align 8, !tbaa !137
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %17, !llvm.loop !158

36:                                               ; preds = %33, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %37 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %4) #9
  %38 = load ptr, ptr %4, align 8, !tbaa !137
  %39 = icmp eq ptr %38, null
  br i1 %39, label %331, label %40

40:                                               ; preds = %36
  %41 = shl i32 %10, 16
  %42 = icmp eq i32 %41, 131072
  %43 = icmp eq i32 %41, 65536
  %44 = icmp eq i8 %13, 0
  %45 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 13
  %46 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %47 = load i64, ptr @CD_MASK_MESH, align 8
  %48 = ashr exact i32 %41, 16
  br label %49

49:                                               ; preds = %40, %324
  %50 = phi ptr [ %38, %40 ], [ %327, %324 ]
  %51 = phi ptr [ null, %40 ], [ %326, %324 ]
  %52 = phi i32 [ 0, %40 ], [ %325, %324 ]
  %53 = getelementptr inbounds %struct.CollectionPointerLink, ptr %50, i64 0, i32 2, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !141
  %55 = getelementptr inbounds %struct.Base, ptr %54, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !40
  %57 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 53
  %58 = load i16, ptr %57, align 4, !tbaa !145
  %59 = and i16 %58, 1024
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !93
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ID, ptr %63, i64 0, i32 5
  %67 = load i16, ptr %66, align 2, !tbaa !157
  %68 = and i16 %67, 1024
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %65, %61, %49
  %71 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 3
  %72 = load i16, ptr %71, align 8, !tbaa !102
  %73 = sext i16 %72 to i32
  %74 = icmp eq i32 %48, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.Base, ptr %54, i64 0, i32 4
  %77 = load i32, ptr %76, align 8, !tbaa !159
  %78 = and i32 %77, -2
  store i32 %78, ptr %76, align 8, !tbaa !159
  %79 = and i16 %58, -2
  store i16 %79, ptr %57, align 4, !tbaa !145
  br label %80

80:                                               ; preds = %75, %70
  %81 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 19
  %82 = load ptr, ptr %81, align 8, !tbaa !93
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ID, ptr %82, i64 0, i32 5
  %86 = load i16, ptr %85, align 2, !tbaa !157
  %87 = and i16 %86, 1024
  %88 = icmp eq i16 %87, 0
  %89 = icmp eq i16 %72, 1
  %90 = and i1 %89, %88
  br i1 %90, label %93, label %306

91:                                               ; preds = %80
  %92 = icmp eq i16 %72, 1
  br i1 %92, label %93, label %306

93:                                               ; preds = %84, %91
  call void @BKE_object_free_modifiers(ptr noundef nonnull %56) #9
  br label %306

94:                                               ; preds = %65
  %95 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 3
  %96 = load i16, ptr %95, align 8, !tbaa !102
  %97 = icmp eq i16 %96, 1
  %98 = select i1 %97, i1 %42, i1 false
  br i1 %98, label %99, label %118

99:                                               ; preds = %94
  %100 = or disjoint i16 %58, 1024
  store i16 %100, ptr %57, align 4, !tbaa !145
  br i1 %44, label %111, label %101

101:                                              ; preds = %99
  %102 = call fastcc ptr @duplibase_for_convert(ptr noundef %6, ptr noundef nonnull %54, ptr noundef null) #10
  %103 = getelementptr inbounds %struct.Base, ptr %102, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !40
  %105 = getelementptr inbounds %struct.Object, ptr %104, i64 0, i32 19
  %106 = load ptr, ptr %105, align 8, !tbaa !93
  %107 = getelementptr inbounds %struct.ID, ptr %106, i64 0, i32 6
  %108 = load i32, ptr %107, align 4, !tbaa !160
  %109 = add nsw i32 %108, -1
  store i32 %109, ptr %107, align 4, !tbaa !160
  %110 = call ptr @BKE_mesh_copy(ptr noundef %106) #9
  store ptr %110, ptr %105, align 8, !tbaa !93
  br label %111

111:                                              ; preds = %99, %101
  %112 = phi ptr [ %104, %101 ], [ %56, %99 ]
  %113 = phi ptr [ %102, %101 ], [ null, %99 ]
  call void @BKE_mesh_to_curve(ptr noundef %6, ptr noundef nonnull %112) #9
  %114 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 3
  %115 = load i16, ptr %114, align 8, !tbaa !102
  %116 = icmp eq i16 %115, 2
  br i1 %116, label %117, label %306

117:                                              ; preds = %111
  call void @BKE_object_free_modifiers(ptr noundef nonnull %112) #9
  call void @ED_rigidbody_object_remove(ptr noundef %6, ptr noundef nonnull %112) #9
  br label %306

118:                                              ; preds = %94
  br i1 %97, label %119, label %144

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 26
  %121 = load ptr, ptr %120, align 8, !tbaa !163
  %122 = icmp eq ptr %121, null
  br i1 %122, label %324, label %123

123:                                              ; preds = %119
  %124 = or disjoint i16 %58, 1024
  store i16 %124, ptr %57, align 4, !tbaa !145
  br i1 %44, label %135, label %125

125:                                              ; preds = %123
  %126 = call fastcc ptr @duplibase_for_convert(ptr noundef %6, ptr noundef nonnull %54, ptr noundef null) #10
  %127 = getelementptr inbounds %struct.Base, ptr %126, i64 0, i32 7
  %128 = load ptr, ptr %127, align 8, !tbaa !40
  %129 = getelementptr inbounds %struct.Object, ptr %128, i64 0, i32 19
  %130 = load ptr, ptr %129, align 8, !tbaa !93
  %131 = getelementptr inbounds %struct.ID, ptr %130, i64 0, i32 6
  %132 = load i32, ptr %131, align 4, !tbaa !160
  %133 = add nsw i32 %132, -1
  store i32 %133, ptr %131, align 4, !tbaa !160
  %134 = call ptr @BKE_mesh_copy(ptr noundef %130) #9
  store ptr %134, ptr %129, align 8, !tbaa !93
  br label %136

135:                                              ; preds = %123
  call void @DAG_id_tag_update(ptr noundef nonnull %56, i16 noundef signext 7) #9
  br label %136

136:                                              ; preds = %135, %125
  %137 = phi ptr [ %128, %125 ], [ %56, %135 ]
  %138 = phi ptr [ %126, %125 ], [ null, %135 ]
  %139 = call ptr @mesh_get_derived_final(ptr noundef %6, ptr noundef nonnull %137, i64 noundef %47) #9
  %140 = getelementptr inbounds %struct.Object, ptr %137, i64 0, i32 19
  %141 = load ptr, ptr %140, align 8, !tbaa !93
  call void @DM_to_mesh(ptr noundef %139, ptr noundef %141, ptr noundef nonnull %137, i64 noundef %47) #9
  %142 = getelementptr inbounds %struct.DerivedMesh, ptr %139, i64 0, i32 95
  %143 = load ptr, ptr %142, align 8, !tbaa !164
  call void %143(ptr noundef %139) #9
  call void @BKE_object_free_modifiers(ptr noundef nonnull %137) #9
  br label %306

144:                                              ; preds = %118
  switch i16 %96, label %246 [
    i16 4, label %145
    i16 2, label %229
    i16 3, label %229
  ]

145:                                              ; preds = %144
  %146 = or disjoint i16 %58, 1024
  store i16 %146, ptr %57, align 4, !tbaa !145
  br i1 %44, label %158, label %147

147:                                              ; preds = %145
  %148 = call fastcc ptr @duplibase_for_convert(ptr noundef %6, ptr noundef nonnull %54, ptr noundef null) #10
  %149 = getelementptr inbounds %struct.Base, ptr %148, i64 0, i32 7
  %150 = load ptr, ptr %149, align 8, !tbaa !40
  %151 = getelementptr inbounds %struct.Object, ptr %150, i64 0, i32 19
  %152 = load ptr, ptr %151, align 8, !tbaa !93
  %153 = getelementptr inbounds %struct.ID, ptr %152, i64 0, i32 6
  %154 = load i32, ptr %153, align 4, !tbaa !166
  %155 = add nsw i32 %154, -1
  store i32 %155, ptr %153, align 4, !tbaa !166
  %156 = load ptr, ptr %62, align 8, !tbaa !93
  %157 = call ptr @BKE_curve_copy(ptr noundef %156) #9
  store ptr %157, ptr %151, align 8, !tbaa !93
  br label %158

158:                                              ; preds = %145, %147
  %159 = phi ptr [ %157, %147 ], [ %63, %145 ]
  %160 = phi ptr [ %150, %147 ], [ %56, %145 ]
  %161 = phi ptr [ %148, %147 ], [ null, %145 ]
  %162 = call zeroext i8 @BKE_vfont_to_curve(ptr noundef %5, ptr noundef nonnull %160, i32 noundef 0) #9
  %163 = getelementptr inbounds %struct.Object, ptr %160, i64 0, i32 3
  store i16 2, ptr %163, align 8, !tbaa !102
  %164 = getelementptr inbounds %struct.Curve, ptr %159, i64 0, i32 14
  store i16 2, ptr %164, align 4, !tbaa !167
  %165 = getelementptr inbounds %struct.Curve, ptr %159, i64 0, i32 55
  %166 = load ptr, ptr %165, align 8, !tbaa !168
  %167 = icmp eq ptr %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %158
  %169 = getelementptr inbounds %struct.ID, ptr %166, i64 0, i32 6
  %170 = load i32, ptr %169, align 4, !tbaa !169
  %171 = add nsw i32 %170, -1
  store i32 %171, ptr %169, align 4, !tbaa !169
  store ptr null, ptr %165, align 8, !tbaa !168
  br label %172

172:                                              ; preds = %168, %158
  %173 = getelementptr inbounds %struct.Curve, ptr %159, i64 0, i32 56
  %174 = load ptr, ptr %173, align 8, !tbaa !171
  %175 = icmp eq ptr %174, null
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.ID, ptr %174, i64 0, i32 6
  %178 = load i32, ptr %177, align 4, !tbaa !169
  %179 = add nsw i32 %178, -1
  store i32 %179, ptr %177, align 4, !tbaa !169
  store ptr null, ptr %173, align 8, !tbaa !171
  br label %180

180:                                              ; preds = %176, %172
  %181 = getelementptr inbounds %struct.Curve, ptr %159, i64 0, i32 57
  %182 = load ptr, ptr %181, align 8, !tbaa !172
  %183 = icmp eq ptr %182, null
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.ID, ptr %182, i64 0, i32 6
  %186 = load i32, ptr %185, align 4, !tbaa !169
  %187 = add nsw i32 %186, -1
  store i32 %187, ptr %185, align 4, !tbaa !169
  store ptr null, ptr %181, align 8, !tbaa !172
  br label %188

188:                                              ; preds = %184, %180
  %189 = getelementptr inbounds %struct.Curve, ptr %159, i64 0, i32 58
  %190 = load ptr, ptr %189, align 8, !tbaa !173
  %191 = icmp eq ptr %190, null
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.ID, ptr %190, i64 0, i32 6
  %194 = load i32, ptr %193, align 4, !tbaa !169
  %195 = add nsw i32 %194, -1
  store i32 %195, ptr %193, align 4, !tbaa !169
  store ptr null, ptr %189, align 8, !tbaa !173
  br label %196

196:                                              ; preds = %192, %188
  br i1 %44, label %197, label %215

197:                                              ; preds = %196
  %198 = getelementptr inbounds %struct.ID, ptr %159, i64 0, i32 6
  %199 = load i32, ptr %198, align 4, !tbaa !166
  %200 = icmp sgt i32 %199, 1
  br i1 %200, label %201, label %215

201:                                              ; preds = %197
  %202 = load ptr, ptr %45, align 8, !tbaa !137
  %203 = icmp eq ptr %202, null
  br i1 %203, label %215, label %204

204:                                              ; preds = %201, %212
  %205 = phi ptr [ %213, %212 ], [ %202, %201 ]
  %206 = getelementptr inbounds %struct.Object, ptr %205, i64 0, i32 19
  %207 = load ptr, ptr %206, align 8, !tbaa !93
  %208 = load ptr, ptr %62, align 8, !tbaa !93
  %209 = icmp eq ptr %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.Object, ptr %205, i64 0, i32 3
  store i16 2, ptr %211, align 8, !tbaa !102
  call void @DAG_id_tag_update(ptr noundef nonnull %205, i16 noundef signext 7) #9
  br label %212

212:                                              ; preds = %204, %210
  %213 = load ptr, ptr %205, align 8, !tbaa !137
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %204, !llvm.loop !174

215:                                              ; preds = %212, %201, %197, %196
  %216 = getelementptr inbounds %struct.Curve, ptr %159, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !137
  %218 = icmp eq ptr %217, null
  br i1 %218, label %224, label %219

219:                                              ; preds = %215, %219
  %220 = phi ptr [ %222, %219 ], [ %217, %215 ]
  %221 = getelementptr inbounds %struct.Nurb, ptr %220, i64 0, i32 21
  store i32 0, ptr %221, align 4, !tbaa !175
  %222 = load ptr, ptr %220, align 8, !tbaa !137
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %219, !llvm.loop !177

224:                                              ; preds = %219, %215
  %225 = getelementptr inbounds %struct.Curve, ptr %159, i64 0, i32 23
  %226 = load i32, ptr %225, align 4, !tbaa !105
  %227 = and i32 %226, -2
  store i32 %227, ptr %225, align 4, !tbaa !105
  call void @BKE_curve_curve_dimension_update(ptr noundef %159) #9
  br i1 %43, label %228, label %306

228:                                              ; preds = %224
  call fastcc void @curvetomesh(ptr noundef %5, ptr noundef %6, ptr noundef %160) #10
  call void @BKE_object_free_curve_cache(ptr noundef %160) #9
  br label %306

229:                                              ; preds = %144, %144
  %230 = or disjoint i16 %58, 1024
  store i16 %230, ptr %57, align 4, !tbaa !145
  br i1 %43, label %231, label %306

231:                                              ; preds = %229
  br i1 %44, label %243, label %232

232:                                              ; preds = %231
  %233 = call fastcc ptr @duplibase_for_convert(ptr noundef %6, ptr noundef nonnull %54, ptr noundef null) #10
  %234 = getelementptr inbounds %struct.Base, ptr %233, i64 0, i32 7
  %235 = load ptr, ptr %234, align 8, !tbaa !40
  %236 = getelementptr inbounds %struct.Object, ptr %235, i64 0, i32 19
  %237 = load ptr, ptr %236, align 8, !tbaa !93
  %238 = getelementptr inbounds %struct.ID, ptr %237, i64 0, i32 6
  %239 = load i32, ptr %238, align 4, !tbaa !166
  %240 = add nsw i32 %239, -1
  store i32 %240, ptr %238, align 4, !tbaa !166
  %241 = load ptr, ptr %62, align 8, !tbaa !93
  %242 = call ptr @BKE_curve_copy(ptr noundef %241) #9
  store ptr %242, ptr %236, align 8, !tbaa !93
  br label %243

243:                                              ; preds = %231, %232
  %244 = phi ptr [ %235, %232 ], [ %56, %231 ]
  %245 = phi ptr [ %233, %232 ], [ null, %231 ]
  call fastcc void @curvetomesh(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %244) #10
  call void @BKE_object_free_curve_cache(ptr noundef nonnull %244) #9
  br label %306

246:                                              ; preds = %144
  %247 = icmp eq i16 %96, 5
  %248 = select i1 %247, i1 %43, i1 false
  br i1 %248, label %249, label %324

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.Base, ptr %54, i64 0, i32 4
  %251 = load i32, ptr %250, align 8, !tbaa !159
  %252 = and i32 %251, -2
  store i32 %252, ptr %250, align 8, !tbaa !159
  %253 = and i16 %58, -1026
  store i16 %253, ptr %57, align 4, !tbaa !145
  %254 = call ptr @BKE_mball_basis_find(ptr noundef %6, ptr noundef nonnull %56) #9
  %255 = icmp eq ptr %56, %254
  br i1 %255, label %259, label %256

256:                                              ; preds = %249
  %257 = load i16, ptr %57, align 4, !tbaa !145
  %258 = or i16 %257, 1024
  store i16 %258, ptr %57, align 4, !tbaa !145
  br label %259

259:                                              ; preds = %256, %249
  %260 = getelementptr inbounds %struct.Object, ptr %254, i64 0, i32 53
  %261 = load i16, ptr %260, align 4, !tbaa !145
  %262 = and i16 %261, 1024
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %264, label %306

264:                                              ; preds = %259
  %265 = or disjoint i16 %261, 1024
  store i16 %265, ptr %260, align 4, !tbaa !145
  %266 = call fastcc ptr @duplibase_for_convert(ptr noundef %6, ptr noundef nonnull %54, ptr noundef nonnull %254) #10
  %267 = getelementptr inbounds %struct.Base, ptr %266, i64 0, i32 7
  %268 = load ptr, ptr %267, align 8, !tbaa !40
  %269 = getelementptr inbounds %struct.Object, ptr %268, i64 0, i32 19
  %270 = load ptr, ptr %269, align 8, !tbaa !93
  %271 = getelementptr inbounds %struct.ID, ptr %270, i64 0, i32 6
  %272 = load i32, ptr %271, align 4, !tbaa !178
  %273 = add nsw i32 %272, -1
  store i32 %273, ptr %271, align 4, !tbaa !178
  %274 = call ptr @BKE_mesh_add(ptr noundef %5, ptr noundef nonnull @.str.154) #9
  store ptr %274, ptr %269, align 8, !tbaa !93
  %275 = getelementptr inbounds %struct.Object, ptr %268, i64 0, i32 3
  store i16 1, ptr %275, align 8, !tbaa !102
  %276 = getelementptr inbounds %struct.MetaBall, ptr %270, i64 0, i32 9
  %277 = load i16, ptr %276, align 2, !tbaa !180
  %278 = getelementptr inbounds %struct.Mesh, ptr %274, i64 0, i32 47
  store i16 %277, ptr %278, align 2, !tbaa !181
  %279 = getelementptr inbounds %struct.Object, ptr %268, i64 0, i32 31
  %280 = load i32, ptr %279, align 8, !tbaa !182
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %299, label %282

282:                                              ; preds = %264
  %283 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !137
  %284 = getelementptr inbounds %struct.MetaBall, ptr %270, i64 0, i32 6
  %285 = load ptr, ptr %284, align 8, !tbaa !183
  %286 = call ptr %283(ptr noundef %285) #9
  %287 = getelementptr inbounds %struct.Mesh, ptr %274, i64 0, i32 5
  store ptr %286, ptr %287, align 8, !tbaa !184
  %288 = load i32, ptr %279, align 8, !tbaa !182
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %282, %290
  %291 = phi i64 [ %295, %290 ], [ 0, %282 ]
  %292 = load ptr, ptr %287, align 8, !tbaa !184
  %293 = getelementptr inbounds ptr, ptr %292, i64 %291
  %294 = load ptr, ptr %293, align 8, !tbaa !137
  call void @id_us_plus(ptr noundef %294) #9
  %295 = add nuw nsw i64 %291, 1
  %296 = load i32, ptr %279, align 8, !tbaa !182
  %297 = sext i32 %296 to i64
  %298 = icmp slt i64 %295, %297
  br i1 %298, label %290, label %299, !llvm.loop !185

299:                                              ; preds = %290, %282, %264
  call fastcc void @convert_ensure_curve_cache(ptr noundef %5, ptr noundef %6, ptr noundef %254) #10
  %300 = getelementptr inbounds %struct.Object, ptr %254, i64 0, i32 118
  %301 = load ptr, ptr %300, align 8, !tbaa !186
  %302 = load ptr, ptr %269, align 8, !tbaa !93
  call void @BKE_mesh_from_metaball(ptr noundef %301, ptr noundef %302) #9
  %303 = load i16, ptr %46, align 8, !tbaa !102
  %304 = icmp eq i16 %303, 5
  %305 = select i1 %304, ptr %266, ptr %51
  br label %306

306:                                              ; preds = %259, %299, %117, %111, %228, %224, %229, %243, %136, %84, %93, %91
  %307 = phi i32 [ %52, %84 ], [ %52, %93 ], [ %52, %91 ], [ %52, %117 ], [ %52, %111 ], [ %52, %136 ], [ %52, %228 ], [ %52, %224 ], [ %52, %243 ], [ %52, %229 ], [ %52, %259 ], [ 1, %299 ]
  %308 = phi ptr [ %51, %84 ], [ %51, %93 ], [ %51, %91 ], [ %51, %117 ], [ %51, %111 ], [ %51, %136 ], [ %51, %228 ], [ %51, %224 ], [ %51, %243 ], [ %51, %229 ], [ %51, %259 ], [ %305, %299 ]
  %309 = phi ptr [ null, %84 ], [ null, %93 ], [ null, %91 ], [ %113, %117 ], [ %113, %111 ], [ %138, %136 ], [ %161, %228 ], [ %161, %224 ], [ %245, %243 ], [ null, %229 ], [ null, %259 ], [ %266, %299 ]
  %310 = icmp eq ptr %309, null
  %311 = icmp eq ptr %56, %7
  %312 = select i1 %311, ptr %309, ptr %308
  %313 = select i1 %310, ptr %308, ptr %312
  br i1 %44, label %314, label %324

314:                                              ; preds = %306
  %315 = load i16, ptr %57, align 4, !tbaa !145
  %316 = and i16 %315, 1024
  %317 = icmp eq i16 %316, 0
  br i1 %317, label %324, label %318

318:                                              ; preds = %314
  call void @DAG_id_tag_update(ptr noundef nonnull %56, i16 noundef signext 2) #9
  %319 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 19
  %320 = load ptr, ptr %319, align 8, !tbaa !93
  %321 = getelementptr inbounds %struct.ID, ptr %320, i64 0, i32 5
  %322 = load i16, ptr %321, align 2, !tbaa !157
  %323 = and i16 %322, -1025
  store i16 %323, ptr %321, align 2, !tbaa !157
  br label %324

324:                                              ; preds = %119, %306, %314, %318, %246
  %325 = phi i32 [ %52, %246 ], [ %307, %318 ], [ %307, %314 ], [ %307, %306 ], [ %52, %119 ]
  %326 = phi ptr [ %51, %246 ], [ %313, %318 ], [ %313, %314 ], [ %313, %306 ], [ %51, %119 ]
  %327 = load ptr, ptr %50, align 8, !tbaa !137
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %49, !llvm.loop !187

329:                                              ; preds = %324
  call void @BLI_freelistN(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %330 = icmp eq i8 %13, 0
  br i1 %330, label %333, label %352

331:                                              ; preds = %36
  call void @BLI_freelistN(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %332 = icmp eq i8 %13, 0
  br i1 %332, label %350, label %357

333:                                              ; preds = %329
  %334 = icmp eq i32 %325, 0
  br i1 %334, label %350, label %335

335:                                              ; preds = %333
  %336 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 5
  %337 = load ptr, ptr %336, align 8, !tbaa !188
  %338 = icmp eq ptr %337, null
  br i1 %338, label %350, label %339

339:                                              ; preds = %335, %348
  %340 = phi ptr [ %343, %348 ], [ %337, %335 ]
  %341 = getelementptr inbounds %struct.Base, ptr %340, i64 0, i32 7
  %342 = load ptr, ptr %341, align 8, !tbaa !40
  %343 = load ptr, ptr %340, align 8, !tbaa !189
  %344 = getelementptr inbounds %struct.Object, ptr %342, i64 0, i32 3
  %345 = load i16, ptr %344, align 8, !tbaa !102
  %346 = icmp eq i16 %345, 5
  br i1 %346, label %347, label %348

347:                                              ; preds = %339
  call void @ED_base_object_free_and_unlink(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %340) #10
  br label %348

348:                                              ; preds = %347, %339
  %349 = icmp eq ptr %343, null
  br i1 %349, label %350, label %339, !llvm.loop !190

350:                                              ; preds = %348, %331, %335, %333
  %351 = phi ptr [ %326, %335 ], [ %326, %333 ], [ null, %331 ], [ %326, %348 ]
  call void @DAG_relations_tag_update(ptr noundef %5) #9
  br label %352

352:                                              ; preds = %350, %329
  %353 = phi ptr [ %351, %350 ], [ %326, %329 ]
  %354 = icmp eq ptr %353, null
  br i1 %354, label %357, label %355

355:                                              ; preds = %352
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %353) #9
  %356 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  store ptr %353, ptr %356, align 8, !tbaa !72
  br label %370

357:                                              ; preds = %331, %352
  %358 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %359 = load ptr, ptr %358, align 8, !tbaa !72
  %360 = getelementptr inbounds %struct.Base, ptr %359, i64 0, i32 7
  %361 = load ptr, ptr %360, align 8, !tbaa !40
  %362 = getelementptr inbounds %struct.Object, ptr %361, i64 0, i32 53
  %363 = load i16, ptr %362, align 4, !tbaa !145
  %364 = and i16 %363, 1024
  %365 = icmp eq i16 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %357
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef nonnull %361) #9
  %367 = load ptr, ptr %358, align 8, !tbaa !72
  %368 = getelementptr inbounds %struct.Base, ptr %367, i64 0, i32 7
  %369 = load ptr, ptr %368, align 8, !tbaa !40
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 89849856, ptr noundef %369) #9
  br label %370

370:                                              ; preds = %357, %366, %355
  call void @DAG_relations_tag_update(ptr noundef %5) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %6) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef nonnull %6) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @convert_poll(ptr noundef %0) #0 !PGOFuncName !191 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !146
  %6 = icmp eq ptr %5, null
  %7 = icmp ne ptr %2, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !192
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 53
  %15 = load i16, ptr %14, align 4, !tbaa !145
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !193
  %21 = icmp eq ptr %20, null
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %13, %9, %1
  %24 = phi i32 [ 0, %13 ], [ 0, %9 ], [ 0, %1 ], [ %22, %18 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @ED_object_add_duplicate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %0) #9
  tail call void @clear_sca_new_poins() #9
  %5 = tail call fastcc ptr @object_add_duplicate_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  tail call void @BKE_object_relink(ptr noundef %9) #9
  tail call void @set_sca_new_poins_ob(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @ED_render_id_flush_update(ptr noundef %0, ptr noundef nonnull %11) #9
  br label %14

14:                                               ; preds = %7, %13, %4
  ret ptr %5
}

; Function Attrs: optsize
declare void @BKE_main_id_clear_newpoins(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clear_sca_new_poins() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @object_add_duplicate_internal(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !194 {
  %5 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 27
  %8 = load i32, ptr %7, align 8, !tbaa !195
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %373

11:                                               ; preds = %4
  %12 = tail call ptr @BKE_object_copy(ptr noundef nonnull %6) #9
  tail call void @DAG_id_tag_update(ptr noundef %12, i16 noundef signext 7) #9
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !137
  %14 = tail call ptr %13(i64 noundef 40, ptr noundef nonnull @.str.155) #9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !196
  %15 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  tail call void @BLI_addhead(ptr noundef nonnull %15, ptr noundef %14) #9
  %16 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  store ptr %12, ptr %16, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !159
  %19 = and i32 %18, 4096
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 128
  %23 = load ptr, ptr %22, align 8, !tbaa !198
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 129
  %27 = load ptr, ptr %26, align 8, !tbaa !199
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %25, %21, %11
  %30 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %31 = load ptr, ptr %30, align 8, !tbaa !137
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %29, %39
  %34 = phi ptr [ %40, %39 ], [ %31, %29 ]
  %35 = tail call zeroext i8 @BKE_group_object_exists(ptr noundef nonnull %34, ptr noundef %6) #9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call zeroext i8 @BKE_group_object_add(ptr noundef nonnull %34, ptr noundef %12, ptr noundef %1, ptr noundef %14) #9
  br label %39

39:                                               ; preds = %33, %37
  %40 = load ptr, ptr %34, align 8, !tbaa !137
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %33, !llvm.loop !200

42:                                               ; preds = %39, %29, %25
  %43 = and i32 %3, 1024
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @BKE_copy_animdata_id_action(ptr noundef %12) #9
  br label %46

46:                                               ; preds = %45, %42
  %47 = and i32 %3, 128
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %89, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 31
  %51 = load i32, ptr %50, align 8, !tbaa !182
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 29
  br label %55

55:                                               ; preds = %53, %84
  %56 = phi i64 [ 0, %53 ], [ %85, %84 ]
  %57 = load ptr, ptr %54, align 8, !tbaa !201
  %58 = getelementptr inbounds ptr, ptr %57, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !137
  %60 = icmp eq ptr %59, null
  br i1 %60, label %84, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !202
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  store ptr %63, ptr %58, align 8, !tbaa !137
  %66 = load ptr, ptr %54, align 8, !tbaa !201
  %67 = getelementptr inbounds ptr, ptr %66, i64 %56
  %68 = load ptr, ptr %67, align 8, !tbaa !137
  %69 = getelementptr inbounds %struct.ID, ptr %68, i64 0, i32 6
  %70 = load i32, ptr %69, align 4, !tbaa !206
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 4, !tbaa !206
  br label %76

72:                                               ; preds = %61
  %73 = tail call ptr @BKE_material_copy(ptr noundef nonnull %59) #9
  %74 = load ptr, ptr %54, align 8, !tbaa !201
  %75 = getelementptr inbounds ptr, ptr %74, i64 %56
  store ptr %73, ptr %75, align 8, !tbaa !137
  br label %76

76:                                               ; preds = %72, %65
  %77 = getelementptr inbounds %struct.ID, ptr %59, i64 0, i32 6
  %78 = load i32, ptr %77, align 4, !tbaa !207
  %79 = add nsw i32 %78, -1
  store i32 %79, ptr %77, align 4, !tbaa !207
  br i1 %44, label %84, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %54, align 8, !tbaa !201
  %82 = getelementptr inbounds ptr, ptr %81, i64 %56
  %83 = load ptr, ptr %82, align 8, !tbaa !137
  tail call void @BKE_copy_animdata_id_action(ptr noundef %83) #9
  br label %84

84:                                               ; preds = %55, %80, %76
  %85 = add nuw nsw i64 %56, 1
  %86 = load i32, ptr %50, align 8, !tbaa !182
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %55, label %89, !llvm.loop !208

89:                                               ; preds = %84, %49, %46
  %90 = and i32 %3, 2048
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %121, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 109
  %94 = load ptr, ptr %93, align 8, !tbaa !137
  %95 = icmp eq ptr %94, null
  br i1 %95, label %121, label %96

96:                                               ; preds = %92, %118
  %97 = phi ptr [ %119, %118 ], [ %94, %92 ]
  %98 = getelementptr inbounds %struct.ParticleSystem, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !209
  %100 = icmp eq ptr %99, null
  br i1 %100, label %118, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.ID, ptr %99, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !211
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.ID, ptr %103, i64 0, i32 6
  %107 = load i32, ptr %106, align 4, !tbaa !213
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %106, align 4, !tbaa !213
  br label %111

109:                                              ; preds = %101
  %110 = tail call ptr @BKE_particlesettings_copy(ptr noundef nonnull %99) #9
  br label %111

111:                                              ; preds = %109, %105
  %112 = phi ptr [ %110, %109 ], [ %103, %105 ]
  store ptr %112, ptr %98, align 8
  br i1 %44, label %114, label %113

113:                                              ; preds = %111
  tail call void @BKE_copy_animdata_id_action(ptr noundef %112) #9
  br label %114

114:                                              ; preds = %113, %111
  %115 = getelementptr inbounds %struct.ID, ptr %99, i64 0, i32 6
  %116 = load i32, ptr %115, align 4, !tbaa !207
  %117 = add nsw i32 %116, -1
  store i32 %117, ptr %115, align 4, !tbaa !207
  br label %118

118:                                              ; preds = %96, %114
  %119 = load ptr, ptr %97, align 8, !tbaa !137
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %96, !llvm.loop !214

121:                                              ; preds = %118, %92, %89
  %122 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %123 = load ptr, ptr %122, align 8, !tbaa !93
  %124 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 3
  %125 = load i16, ptr %124, align 8, !tbaa !102
  switch i16 %125, label %373 [
    i16 1, label %126
    i16 2, label %144
    i16 3, label %160
    i16 4, label %176
    i16 5, label %192
    i16 10, label %208
    i16 25, label %224
    i16 22, label %246
    i16 11, label %261
    i16 12, label %276
  ]

126:                                              ; preds = %121
  %127 = and i32 %3, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %373, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !215
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  store ptr %131, ptr %122, align 8, !tbaa !93
  %134 = getelementptr inbounds %struct.ID, ptr %131, i64 0, i32 6
  %135 = load i32, ptr %134, align 4, !tbaa !207
  %136 = add nsw i32 %135, 1
  store i32 %136, ptr %134, align 4, !tbaa !207
  br label %291

137:                                              ; preds = %129
  %138 = tail call ptr @BKE_mesh_copy(ptr noundef nonnull %123) #9
  store ptr %138, ptr %122, align 8, !tbaa !93
  %139 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 117
  %140 = load ptr, ptr %139, align 8, !tbaa !216
  %141 = icmp eq ptr %140, null
  br i1 %141, label %291, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.FluidsimSettings, ptr %140, i64 0, i32 25
  store ptr %138, ptr %143, align 8, !tbaa !217
  br label %291

144:                                              ; preds = %121
  %145 = and i32 %3, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %373, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !215
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.ID, ptr %149, i64 0, i32 6
  %153 = load i32, ptr %152, align 4, !tbaa !207
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %152, align 4, !tbaa !207
  br label %157

155:                                              ; preds = %147
  %156 = tail call ptr @BKE_curve_copy(ptr noundef nonnull %123) #9
  br label %157

157:                                              ; preds = %155, %151
  %158 = phi ptr [ %156, %155 ], [ %149, %151 ]
  %159 = phi i32 [ 1, %155 ], [ 0, %151 ]
  store ptr %158, ptr %122, align 8
  br label %291

160:                                              ; preds = %121
  %161 = and i32 %3, 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %373, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !215
  %166 = icmp eq ptr %165, null
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.ID, ptr %165, i64 0, i32 6
  %169 = load i32, ptr %168, align 4, !tbaa !207
  %170 = add nsw i32 %169, 1
  store i32 %170, ptr %168, align 4, !tbaa !207
  br label %173

171:                                              ; preds = %163
  %172 = tail call ptr @BKE_curve_copy(ptr noundef nonnull %123) #9
  br label %173

173:                                              ; preds = %171, %167
  %174 = phi ptr [ %172, %171 ], [ %165, %167 ]
  %175 = phi i32 [ 1, %171 ], [ 0, %167 ]
  store ptr %174, ptr %122, align 8
  br label %291

176:                                              ; preds = %121
  %177 = and i32 %3, 8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %373, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !215
  %182 = icmp eq ptr %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.ID, ptr %181, i64 0, i32 6
  %185 = load i32, ptr %184, align 4, !tbaa !207
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %184, align 4, !tbaa !207
  br label %189

187:                                              ; preds = %179
  %188 = tail call ptr @BKE_curve_copy(ptr noundef nonnull %123) #9
  br label %189

189:                                              ; preds = %187, %183
  %190 = phi ptr [ %188, %187 ], [ %181, %183 ]
  %191 = phi i32 [ 1, %187 ], [ 0, %183 ]
  store ptr %190, ptr %122, align 8
  br label %291

192:                                              ; preds = %121
  %193 = and i32 %3, 16
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %373, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !215
  %198 = icmp eq ptr %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.ID, ptr %197, i64 0, i32 6
  %201 = load i32, ptr %200, align 4, !tbaa !207
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %200, align 4, !tbaa !207
  br label %205

203:                                              ; preds = %195
  %204 = tail call ptr @BKE_mball_copy(ptr noundef nonnull %123) #9
  br label %205

205:                                              ; preds = %203, %199
  %206 = phi ptr [ %204, %203 ], [ %197, %199 ]
  %207 = phi i32 [ 1, %203 ], [ 0, %199 ]
  store ptr %206, ptr %122, align 8
  br label %291

208:                                              ; preds = %121
  %209 = and i32 %3, 32
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %373, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !215
  %214 = icmp eq ptr %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.ID, ptr %213, i64 0, i32 6
  %217 = load i32, ptr %216, align 4, !tbaa !207
  %218 = add nsw i32 %217, 1
  store i32 %218, ptr %216, align 4, !tbaa !207
  br label %221

219:                                              ; preds = %211
  %220 = tail call ptr @BKE_lamp_copy(ptr noundef nonnull %123) #9
  br label %221

221:                                              ; preds = %219, %215
  %222 = phi ptr [ %220, %219 ], [ %213, %215 ]
  %223 = phi i32 [ 1, %219 ], [ 0, %215 ]
  store ptr %222, ptr %122, align 8
  br label %291

224:                                              ; preds = %121
  tail call void @DAG_id_tag_update(ptr noundef nonnull %12, i16 noundef signext 2) #9
  %225 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 18
  %226 = load ptr, ptr %225, align 8, !tbaa !219
  %227 = icmp eq ptr %226, null
  br i1 %227, label %232, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.bPose, ptr %226, i64 0, i32 2
  %230 = load i16, ptr %229, align 8, !tbaa !220
  %231 = or i16 %230, 1
  store i16 %231, ptr %229, align 8, !tbaa !220
  br label %232

232:                                              ; preds = %228, %224
  %233 = and i32 %3, 512
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %373, label %235

235:                                              ; preds = %232
  %236 = load ptr, ptr %122, align 8, !tbaa !93
  %237 = getelementptr inbounds %struct.ID, ptr %236, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !215
  %239 = icmp eq ptr %238, null
  br i1 %239, label %244, label %240

240:                                              ; preds = %235
  store ptr %238, ptr %122, align 8, !tbaa !93
  %241 = getelementptr inbounds %struct.ID, ptr %238, i64 0, i32 6
  %242 = load i32, ptr %241, align 4, !tbaa !207
  %243 = add nsw i32 %242, 1
  store i32 %243, ptr %241, align 4, !tbaa !207
  br label %291

244:                                              ; preds = %235
  %245 = tail call ptr @BKE_armature_copy(ptr noundef nonnull %236) #9
  store ptr %245, ptr %122, align 8, !tbaa !93
  tail call void @BKE_pose_rebuild(ptr noundef nonnull %12, ptr noundef %245) #9
  br label %291

246:                                              ; preds = %121
  %247 = icmp eq i32 %3, 0
  br i1 %247, label %373, label %248

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !215
  %251 = icmp eq ptr %250, null
  br i1 %251, label %256, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.ID, ptr %250, i64 0, i32 6
  %254 = load i32, ptr %253, align 4, !tbaa !207
  %255 = add nsw i32 %254, 1
  store i32 %255, ptr %253, align 4, !tbaa !207
  br label %258

256:                                              ; preds = %248
  %257 = tail call ptr @BKE_lattice_copy(ptr noundef nonnull %123) #9
  br label %258

258:                                              ; preds = %256, %252
  %259 = phi ptr [ %257, %256 ], [ %250, %252 ]
  %260 = phi i32 [ 1, %256 ], [ 0, %252 ]
  store ptr %259, ptr %122, align 8
  br label %291

261:                                              ; preds = %121
  %262 = icmp eq i32 %3, 0
  br i1 %262, label %373, label %263

263:                                              ; preds = %261
  %264 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !215
  %266 = icmp eq ptr %265, null
  br i1 %266, label %271, label %267

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.ID, ptr %265, i64 0, i32 6
  %269 = load i32, ptr %268, align 4, !tbaa !207
  %270 = add nsw i32 %269, 1
  store i32 %270, ptr %268, align 4, !tbaa !207
  br label %273

271:                                              ; preds = %263
  %272 = tail call ptr @BKE_camera_copy(ptr noundef nonnull %123) #9
  br label %273

273:                                              ; preds = %271, %267
  %274 = phi ptr [ %272, %271 ], [ %265, %267 ]
  %275 = phi i32 [ 1, %271 ], [ 0, %267 ]
  store ptr %274, ptr %122, align 8
  br label %291

276:                                              ; preds = %121
  %277 = icmp eq i32 %3, 0
  br i1 %277, label %373, label %278

278:                                              ; preds = %276
  %279 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !215
  %281 = icmp eq ptr %280, null
  br i1 %281, label %286, label %282

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.ID, ptr %280, i64 0, i32 6
  %284 = load i32, ptr %283, align 4, !tbaa !207
  %285 = add nsw i32 %284, 1
  store i32 %285, ptr %283, align 4, !tbaa !207
  br label %288

286:                                              ; preds = %278
  %287 = tail call ptr @BKE_speaker_copy(ptr noundef nonnull %123) #9
  br label %288

288:                                              ; preds = %286, %282
  %289 = phi ptr [ %287, %286 ], [ %280, %282 ]
  %290 = phi i32 [ 1, %286 ], [ 0, %282 ]
  store ptr %289, ptr %122, align 8
  br label %291

291:                                              ; preds = %240, %244, %133, %142, %137, %288, %273, %258, %221, %205, %189, %173, %157
  %292 = phi i32 [ %290, %288 ], [ %275, %273 ], [ %260, %258 ], [ %223, %221 ], [ %207, %205 ], [ %191, %189 ], [ %175, %173 ], [ %159, %157 ], [ 0, %133 ], [ 1, %142 ], [ 1, %137 ], [ 0, %240 ], [ 1, %244 ]
  %293 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 6
  %294 = load i32, ptr %293, align 4, !tbaa !207
  %295 = add nsw i32 %294, -1
  store i32 %295, ptr %293, align 4, !tbaa !207
  %296 = icmp eq i32 %292, 0
  br i1 %296, label %373, label %297

297:                                              ; preds = %291
  %298 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %12) #9
  br i1 %44, label %330, label %299

299:                                              ; preds = %297
  %300 = load ptr, ptr %122, align 8, !tbaa !93
  tail call void @BKE_copy_animdata_id_action(ptr noundef %300) #9
  %301 = icmp eq ptr %298, null
  br i1 %301, label %303, label %302

302:                                              ; preds = %299
  tail call void @BKE_copy_animdata_id_action(ptr noundef nonnull %298) #9
  br label %303

303:                                              ; preds = %302, %299
  %304 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 94
  %305 = load ptr, ptr %304, align 8, !tbaa !137
  %306 = icmp eq ptr %305, null
  br i1 %306, label %330, label %307

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 1
  %309 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 1
  br label %310

310:                                              ; preds = %307, %327
  %311 = phi ptr [ %305, %307 ], [ %328, %327 ]
  %312 = getelementptr inbounds %struct.bActuator, ptr %311, i64 0, i32 3
  %313 = load i16, ptr %312, align 8, !tbaa !222
  %314 = icmp eq i16 %313, 15
  br i1 %314, label %315, label %327

315:                                              ; preds = %310
  %316 = getelementptr inbounds %struct.bActuator, ptr %311, i64 0, i32 8
  %317 = load ptr, ptr %316, align 8, !tbaa !224
  %318 = load ptr, ptr %308, align 8, !tbaa !225
  %319 = icmp eq ptr %318, null
  br i1 %319, label %327, label %320

320:                                              ; preds = %315
  %321 = load ptr, ptr %317, align 8, !tbaa !226
  %322 = load ptr, ptr %318, align 8, !tbaa !228
  %323 = icmp eq ptr %321, %322
  br i1 %323, label %324, label %327

324:                                              ; preds = %320
  %325 = load ptr, ptr %309, align 8, !tbaa !225
  %326 = load ptr, ptr %325, align 8, !tbaa !228
  store ptr %326, ptr %317, align 8, !tbaa !226
  br label %327

327:                                              ; preds = %315, %320, %324, %310
  %328 = load ptr, ptr %311, align 8, !tbaa !137
  %329 = icmp eq ptr %328, null
  br i1 %329, label %330, label %310, !llvm.loop !230

330:                                              ; preds = %327, %303, %297
  br i1 %48, label %373, label %331

331:                                              ; preds = %330
  %332 = tail call ptr @give_matarar(ptr noundef %12) #9
  %333 = icmp eq ptr %332, null
  br i1 %333, label %373, label %334

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 31
  %336 = load i32, ptr %335, align 8, !tbaa !182
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %338, label %373

338:                                              ; preds = %334, %367
  %339 = phi i32 [ %368, %367 ], [ %336, %334 ]
  %340 = phi i32 [ %369, %367 ], [ %336, %334 ]
  %341 = phi i64 [ %370, %367 ], [ 0, %334 ]
  %342 = load ptr, ptr %332, align 8, !tbaa !137
  %343 = getelementptr inbounds ptr, ptr %342, i64 %341
  %344 = load ptr, ptr %343, align 8, !tbaa !137
  %345 = icmp eq ptr %344, null
  br i1 %345, label %367, label %346

346:                                              ; preds = %338
  %347 = getelementptr inbounds %struct.ID, ptr %344, i64 0, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !202
  %349 = icmp eq ptr %348, null
  br i1 %349, label %357, label %350

350:                                              ; preds = %346
  store ptr %348, ptr %343, align 8, !tbaa !137
  %351 = load ptr, ptr %332, align 8, !tbaa !137
  %352 = getelementptr inbounds ptr, ptr %351, i64 %341
  %353 = load ptr, ptr %352, align 8, !tbaa !137
  %354 = getelementptr inbounds %struct.ID, ptr %353, i64 0, i32 6
  %355 = load i32, ptr %354, align 4, !tbaa !206
  %356 = add nsw i32 %355, 1
  store i32 %356, ptr %354, align 4, !tbaa !206
  br label %362

357:                                              ; preds = %346
  %358 = tail call ptr @BKE_material_copy(ptr noundef nonnull %344) #9
  %359 = load ptr, ptr %332, align 8, !tbaa !137
  %360 = getelementptr inbounds ptr, ptr %359, i64 %341
  store ptr %358, ptr %360, align 8, !tbaa !137
  %361 = load i32, ptr %335, align 8, !tbaa !182
  br label %362

362:                                              ; preds = %357, %350
  %363 = phi i32 [ %361, %357 ], [ %339, %350 ]
  %364 = getelementptr inbounds %struct.ID, ptr %344, i64 0, i32 6
  %365 = load i32, ptr %364, align 4, !tbaa !207
  %366 = add nsw i32 %365, -1
  store i32 %366, ptr %364, align 4, !tbaa !207
  br label %367

367:                                              ; preds = %338, %362
  %368 = phi i32 [ %339, %338 ], [ %363, %362 ]
  %369 = phi i32 [ %340, %338 ], [ %363, %362 ]
  %370 = add nuw nsw i64 %341, 1
  %371 = sext i32 %369 to i64
  %372 = icmp slt i64 %370, %371
  br i1 %372, label %338, label %373, !llvm.loop !231

373:                                              ; preds = %367, %334, %126, %144, %160, %176, %192, %208, %232, %246, %261, %276, %121, %330, %331, %291, %4
  %374 = phi ptr [ null, %4 ], [ %14, %291 ], [ %14, %331 ], [ %14, %330 ], [ %14, %121 ], [ %14, %276 ], [ %14, %261 ], [ %14, %246 ], [ %14, %232 ], [ %14, %208 ], [ %14, %192 ], [ %14, %176 ], [ %14, %160 ], [ %14, %144 ], [ %14, %126 ], [ %14, %334 ], [ %14, %367 ]
  ret ptr %374
}

; Function Attrs: optsize
declare void @BKE_object_relink(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_sca_new_poins_ob(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_duplicate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.103, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.104, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.105, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @duplicate_exec, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.106, i32 noundef 0, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.109, ptr noundef nonnull @transform_mode_types, i32 noundef 1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.17) #9
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 524288) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @duplicate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !232 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.106) #9
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 3), align 4
  %12 = select i1 %10, i32 %11, i32 0
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %4) #9
  tail call void @clear_sca_new_poins() #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %13 = call i32 @CTX_data_selected_bases(ptr noundef %0, ptr noundef nonnull %3) #9
  %14 = load ptr, ptr %3, align 8, !tbaa !137
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  br label %18

18:                                               ; preds = %16, %35
  %19 = phi ptr [ %14, %16 ], [ %36, %35 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !141
  %22 = call fastcc ptr @object_add_duplicate_internal(ptr noundef %4, ptr noundef %5, ptr noundef %21, i32 noundef %12) #10
  call void @ED_base_object_select(ptr noundef %21, i16 noundef signext 0) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %17, align 8, !tbaa !72
  %26 = icmp eq ptr %25, %21
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %22) #9
  br label %28

28:                                               ; preds = %27, %24
  %29 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !40
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !93
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  call void @DAG_id_tag_update(ptr noundef nonnull %32, i16 noundef signext 0) #9
  br label %35

35:                                               ; preds = %28, %34, %18
  %36 = load ptr, ptr %19, align 8, !tbaa !137
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %18, !llvm.loop !233

38:                                               ; preds = %35, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call fastcc void @copy_object_set_idnew(ptr noundef %0, i32 noundef %12) #10
  call void @DAG_relations_tag_update(ptr noundef %4) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %5) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_add_named(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.111, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.112, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.113, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_named_exec, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_objectmode, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.106, i32 noundef 0, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.114) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_named_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !234 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [2 x i32], align 4
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  %12 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %13 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #9
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.106) #9
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 3), align 4
  %21 = select i1 %19, i32 %20, i32 0
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  %22 = load ptr, ptr %15, align 8, !tbaa !51
  call void @RNA_string_get(ptr noundef %22, ptr noundef nonnull @.str.63, ptr noundef nonnull %3) #9
  %23 = call ptr @BKE_libblock_find_name(i16 noundef signext 16975, ptr noundef nonnull %3) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !66
  call void @BKE_report(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.160) #9
  br label %71

28:                                               ; preds = %10
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !137
  %30 = call ptr %29(i64 noundef 40, ptr noundef nonnull @.str.155) #9
  %31 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 7
  store ptr %23, ptr %31, align 8, !tbaa !40
  %32 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 53
  %33 = load i16, ptr %32, align 4, !tbaa !145
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds %struct.Base, ptr %30, i64 0, i32 4
  store i32 %34, ptr %35, align 8, !tbaa !159
  call void @BKE_main_id_clear_newpoins(ptr noundef %12) #9
  call void @clear_sca_new_poins() #9
  %36 = call fastcc ptr @object_add_duplicate_internal(ptr noundef %12, ptr noundef %14, ptr noundef %30, i32 noundef %21) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !137
  call void %39(ptr noundef nonnull %30) #9
  %40 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !66
  call void @BKE_report(ptr noundef %41, i32 noundef 32, ptr noundef nonnull @.str.161) #9
  br label %71

42:                                               ; preds = %28
  %43 = call i32 @BKE_screen_view3d_layer_active(ptr noundef %13, ptr noundef %14) #9
  %44 = getelementptr inbounds %struct.Base, ptr %36, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !40
  %46 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 52
  store i32 %43, ptr %46, align 8, !tbaa !67
  %47 = getelementptr inbounds %struct.Base, ptr %36, i64 0, i32 2
  store i32 %43, ptr %47, align 8, !tbaa !90
  %48 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 102
  %49 = load i8, ptr %48, align 8, !tbaa !235
  %50 = and i8 %49, -2
  store i8 %50, ptr %48, align 8, !tbaa !235
  %51 = icmp eq ptr %11, null
  br i1 %51, label %69, label %52

52:                                               ; preds = %42
  %53 = call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %54 = getelementptr inbounds %struct.wmEvent, ptr %11, i64 0, i32 4
  %55 = load i32, ptr %54, align 4, !tbaa !236
  %56 = getelementptr inbounds %struct.ARegion, ptr %53, i64 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !239
  %58 = sub nsw i32 %55, %57
  store i32 %58, ptr %4, align 4, !tbaa !58
  %59 = getelementptr inbounds i32, ptr %4, i64 1
  %60 = getelementptr inbounds %struct.wmEvent, ptr %11, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !242
  %62 = getelementptr inbounds %struct.ARegion, ptr %53, i64 0, i32 3, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !243
  %64 = sub nsw i32 %61, %63
  store i32 %64, ptr %59, align 4, !tbaa !58
  %65 = load ptr, ptr %44, align 8, !tbaa !40
  %66 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 33
  call void @ED_object_location_from_view(ptr noundef %0, ptr noundef nonnull %66) #10
  %67 = load ptr, ptr %44, align 8, !tbaa !40
  %68 = getelementptr inbounds %struct.Object, ptr %67, i64 0, i32 33
  call void @ED_view3d_cursor3d_position(ptr noundef %0, ptr noundef nonnull %68, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %69

69:                                               ; preds = %52, %42
  call void @ED_base_object_select(ptr noundef nonnull %36, i16 noundef signext 1) #9
  call void @ED_base_object_activate(ptr noundef %0, ptr noundef nonnull %36) #9
  call fastcc void @copy_object_set_idnew(ptr noundef %0, i32 noundef %21) #10
  call void @DAG_relations_tag_update(ptr noundef %12) #9
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !137
  call void %70(ptr noundef nonnull %30) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %14) #9
  br label %71

71:                                               ; preds = %69, %38, %25
  %72 = phi i32 [ 2, %25 ], [ 2, %38 ], [ 4, %69 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 %72
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_join(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.115, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.116, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.117, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @join_exec, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @join_poll, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !99
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @join_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !244 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  tail call void @BKE_report(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.162) #9
  br label %26

11:                                               ; preds = %2
  %12 = tail call zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef %4) #9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.163) #9
  br label %26

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !102
  switch i16 %19, label %26 [
    i16 1, label %20
    i16 2, label %22
    i16 3, label %22
    i16 25, label %24
  ]

20:                                               ; preds = %17
  %21 = tail call i32 @join_mesh_exec(ptr noundef %0, ptr noundef %1) #9
  br label %26

22:                                               ; preds = %17, %17
  %23 = tail call i32 @join_curve_exec(ptr noundef %0, ptr noundef %1) #9
  br label %26

24:                                               ; preds = %17
  %25 = tail call i32 @join_armature_exec(ptr noundef %0, ptr noundef %1) #9
  br label %26

26:                                               ; preds = %17, %24, %22, %20, %14, %8
  %27 = phi i32 [ 2, %8 ], [ 2, %14 ], [ %21, %20 ], [ %23, %22 ], [ %25, %24 ], [ 2, %17 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @join_poll(ptr noundef %0) #0 !PGOFuncName !245 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !193
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !102
  switch i16 %10, label %13 [
    i16 1, label %11
    i16 2, label %11
    i16 3, label %11
    i16 25, label %11
  ]

11:                                               ; preds = %8, %8, %8, %8
  %12 = tail call i32 @ED_operator_screenactive(ptr noundef %0) #9
  br label %13

13:                                               ; preds = %8, %1, %4, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %4 ], [ 0, %1 ], [ 0, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_join_shapes(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.118, ptr %0, align 8, !tbaa !94
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.119, ptr %2, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.120, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @join_shapes_exec, ptr %4, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @join_shapes_poll, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !99
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @join_shapes_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !246 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  tail call void @BKE_report(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.162) #9
  br label %23

11:                                               ; preds = %2
  %12 = tail call zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef %4) #9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  tail call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.163) #9
  br label %23

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !102
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @join_mesh_shapes_exec(ptr noundef %0, ptr noundef %1) #9
  br label %23

23:                                               ; preds = %17, %21, %14, %8
  %24 = phi i32 [ 2, %8 ], [ 2, %14 ], [ %22, %21 ], [ 2, %17 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @join_shapes_poll(ptr noundef %0) #0 !PGOFuncName !247 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !193
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !102
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 @ED_operator_screenactive(ptr noundef %0) #9
  br label %14

14:                                               ; preds = %8, %1, %4, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %4 ], [ 0, %1 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_idprops_unset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_view3d_unit_defaults(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl(ptr nocapture noundef writeonly %0, float noundef %1) unnamed_addr #4 !PGOFuncName !248 {
  store float %1, ptr %0, align 4, !tbaa !35
  %3 = getelementptr inbounds float, ptr %0, i64 1
  store float %1, ptr %3, align 4, !tbaa !35
  %4 = getelementptr inbounds float, ptr %0, i64 2
  store float %1, ptr %4, align 4, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_obdata_size_init(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rename_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_nurbs_primitive(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @object_add_collision_fields(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_metaball_primitive(ptr noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_armature_edit_bone_add_primitive(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_empty_draw_type_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_load_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_give_base_under_cursor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_cursor3d_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @get_lamp_defname(i32 noundef %0) unnamed_addr #5 !PGOFuncName !249 {
  %2 = icmp ult i32 %0, 5
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl i64 %4, 2
  %6 = call ptr @llvm.load.relative.i64(ptr @reltable.get_lamp_defname, i64 %5)
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @.str.69, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_node_shader_default(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_nlatrack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_nla_soundstrip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_nlatrack_add_strip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nlastrip_validate_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_lamp_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_main_id_flag_listbase(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_object_duplilist_real(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !250 {
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 55
  %10 = load i16, ptr %9, align 8, !tbaa !131
  %11 = and i16 %10, 2840
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %187, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 46
  %15 = load ptr, ptr %14, align 8, !tbaa !251
  %16 = tail call ptr @object_duplilist(ptr noundef %15, ptr noundef %1, ptr noundef nonnull %8) #9
  %17 = or i8 %4, %3
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.152) #9
  %21 = tail call ptr @BLI_ghash_pair_new(ptr noundef nonnull @.str.153) #9
  br label %22

22:                                               ; preds = %13, %19
  %23 = phi ptr [ %21, %19 ], [ null, %13 ]
  %24 = phi ptr [ %20, %19 ], [ null, %13 ]
  %25 = load ptr, ptr %16, align 8, !tbaa !137
  %26 = icmp eq ptr %25, null
  br i1 %26, label %77, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 2
  %29 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %30 = icmp eq ptr %24, null
  %31 = icmp eq ptr %23, null
  br label %32

32:                                               ; preds = %27, %74
  %33 = phi ptr [ %25, %27 ], [ %75, %74 ]
  %34 = getelementptr inbounds %struct.DupliObject, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !253
  %36 = tail call ptr @BKE_object_copy(ptr noundef %35) #9
  %37 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 29
  %38 = load ptr, ptr %37, align 8, !tbaa !201
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 31
  store i32 0, ptr %41, align 8, !tbaa !182
  br label %42

42:                                               ; preds = %40, %32
  %43 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !137
  %44 = tail call ptr %43(ptr noundef nonnull %2) #9
  %45 = getelementptr inbounds %struct.Base, ptr %44, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !159
  %47 = and i32 %46, -4609
  store i32 %47, ptr %45, align 8, !tbaa !159
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 53
  store i16 %48, ptr %49, align 4, !tbaa !145
  %50 = load i32, ptr %28, align 8, !tbaa !90
  %51 = getelementptr inbounds %struct.Base, ptr %44, i64 0, i32 2
  store i32 %50, ptr %51, align 8, !tbaa !90
  tail call void @BLI_addhead(ptr noundef nonnull %29, ptr noundef %44) #9
  %52 = getelementptr inbounds %struct.Base, ptr %44, i64 0, i32 7
  store ptr %36, ptr %52, align 8, !tbaa !40
  tail call void @BKE_free_animdata(ptr noundef nonnull %36) #9
  %53 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 1
  store ptr null, ptr %53, align 8, !tbaa !225
  %54 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 11
  %55 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 9
  store ptr null, ptr %55, align 8, !tbaa !255
  %56 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 106
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %56) #10
  %57 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 118
  store ptr null, ptr %57, align 8, !tbaa !186
  %58 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 55
  %59 = load i16, ptr %58, align 8, !tbaa !131
  %60 = and i16 %59, -2841
  store i16 %60, ptr %58, align 8, !tbaa !131
  %61 = load i32, ptr %28, align 8, !tbaa !90
  %62 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 52
  store i32 %61, ptr %62, align 8, !tbaa !67
  %63 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 47
  %64 = getelementptr inbounds %struct.DupliObject, ptr %33, i64 0, i32 3
  tail call void @copy_m4_m4(ptr noundef nonnull %63, ptr noundef nonnull %64) #9
  tail call void @BKE_object_apply_mat4(ptr noundef nonnull %36, ptr noundef nonnull %63, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br i1 %30, label %66, label %65

65:                                               ; preds = %42
  tail call void @BLI_ghash_insert(ptr noundef nonnull %24, ptr noundef nonnull %33, ptr noundef nonnull %36) #9
  br label %66

66:                                               ; preds = %65, %42
  br i1 %31, label %74, label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr %34, align 8, !tbaa !253
  %69 = getelementptr inbounds %struct.DupliObject, ptr %33, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !58
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to ptr
  %73 = tail call ptr @BLI_ghashutil_pairalloc(ptr noundef %68, ptr noundef %72) #9
  tail call void @BLI_ghash_insert(ptr noundef nonnull %23, ptr noundef %73, ptr noundef nonnull %36) #9
  br label %74

74:                                               ; preds = %67, %66
  tail call void @DAG_id_tag_update(ptr noundef nonnull %36, i16 noundef signext 2) #9
  %75 = load ptr, ptr %33, align 8, !tbaa !137
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %32, !llvm.loop !256

77:                                               ; preds = %74, %22
  %78 = icmp eq i8 %4, 0
  br i1 %78, label %134, label %79

79:                                               ; preds = %77
  %80 = load ptr, ptr %16, align 8, !tbaa !137
  %81 = icmp eq ptr %80, null
  br i1 %81, label %150, label %82

82:                                               ; preds = %79
  %83 = icmp eq i8 %3, 0
  br label %84

84:                                               ; preds = %82, %131
  %85 = phi ptr [ %80, %82 ], [ %132, %131 ]
  %86 = getelementptr inbounds %struct.DupliObject, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !253
  %88 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 9
  %89 = load ptr, ptr %88, align 8, !tbaa !255
  %90 = tail call ptr @BLI_ghash_lookup(ptr noundef %24, ptr noundef nonnull %85) #9
  %91 = icmp eq ptr %89, null
  br i1 %91, label %116, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.DupliObject, ptr %85, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !58
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to ptr
  %97 = tail call ptr @BLI_ghashutil_pairalloc(ptr noundef nonnull %89, ptr noundef %96) #9
  %98 = tail call ptr @BLI_ghash_lookup(ptr noundef %23, ptr noundef %97) #9
  tail call void @BLI_ghashutil_pairfree(ptr noundef %97) #9
  %99 = icmp eq ptr %98, null
  br i1 %99, label %116, label %100

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 4
  %102 = load i16, ptr %101, align 2, !tbaa !257
  %103 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 4
  store i16 %102, ptr %103, align 2, !tbaa !257
  %104 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 8
  %105 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 8
  %106 = tail call ptr @BLI_strncpy(ptr noundef nonnull %104, ptr noundef nonnull %105, i64 noundef 64) #9
  %107 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 5
  %108 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 5
  %109 = load <2 x i32>, ptr %107, align 4, !tbaa !58
  store <2 x i32> %109, ptr %108, align 4, !tbaa !58
  %110 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 7
  %111 = load i32, ptr %110, align 4, !tbaa !258
  %112 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 7
  store i32 %111, ptr %112, align 4, !tbaa !258
  %113 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 48
  %114 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 48
  tail call void @copy_m4_m4(ptr noundef nonnull %113, ptr noundef nonnull %114) #9
  %115 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 9
  store ptr %98, ptr %115, align 8, !tbaa !255
  br label %127

116:                                              ; preds = %84, %92
  br i1 %83, label %117, label %120

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 9
  %119 = load ptr, ptr %118, align 8, !tbaa !255
  br label %124

120:                                              ; preds = %116
  %121 = load ptr, ptr %7, align 8, !tbaa !40
  %122 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 9
  store ptr %121, ptr %122, align 8, !tbaa !255
  %123 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 4
  store i16 0, ptr %123, align 2, !tbaa !257
  br label %124

124:                                              ; preds = %117, %120
  %125 = phi ptr [ %119, %117 ], [ %121, %120 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %100, %124
  %128 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 48
  %129 = getelementptr inbounds %struct.DupliObject, ptr %85, i64 0, i32 3
  %130 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %128, ptr noundef nonnull %129) #9
  tail call void @BKE_object_apply_mat4(ptr noundef nonnull %90, ptr noundef nonnull %129, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  tail call void @DAG_id_tag_update(ptr noundef nonnull %90, i16 noundef signext 1) #9
  br label %131

131:                                              ; preds = %127, %124
  %132 = load ptr, ptr %85, align 8, !tbaa !137
  %133 = icmp eq ptr %132, null
  br i1 %133, label %150, label %84, !llvm.loop !259

134:                                              ; preds = %77
  %135 = icmp eq i8 %3, 0
  br i1 %135, label %150, label %136

136:                                              ; preds = %134
  %137 = load ptr, ptr %16, align 8, !tbaa !137
  %138 = icmp eq ptr %137, null
  br i1 %138, label %150, label %139

139:                                              ; preds = %136, %139
  %140 = phi ptr [ %148, %139 ], [ %137, %136 ]
  %141 = tail call ptr @BLI_ghash_lookup(ptr noundef %24, ptr noundef nonnull %140) #9
  %142 = load ptr, ptr %7, align 8, !tbaa !40
  %143 = getelementptr inbounds %struct.Object, ptr %141, i64 0, i32 9
  store ptr %142, ptr %143, align 8, !tbaa !255
  %144 = getelementptr inbounds %struct.Object, ptr %141, i64 0, i32 4
  store i16 0, ptr %144, align 2, !tbaa !257
  %145 = getelementptr inbounds %struct.Object, ptr %141, i64 0, i32 48
  %146 = getelementptr inbounds %struct.DupliObject, ptr %140, i64 0, i32 3
  %147 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %145, ptr noundef nonnull %146) #9
  tail call void @BKE_object_apply_mat4(ptr noundef %141, ptr noundef nonnull %146, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  tail call void @DAG_id_tag_update(ptr noundef %141, i16 noundef signext 1) #9
  %148 = load ptr, ptr %140, align 8, !tbaa !137
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %139, !llvm.loop !260

150:                                              ; preds = %131, %139, %79, %136, %134
  %151 = load ptr, ptr %7, align 8, !tbaa !40
  %152 = getelementptr inbounds %struct.Object, ptr %151, i64 0, i32 55
  %153 = load i16, ptr %152, align 8, !tbaa !131
  %154 = and i16 %153, 256
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %176, label %156

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.Object, ptr %151, i64 0, i32 112
  %158 = load ptr, ptr %157, align 8, !tbaa !130
  %159 = icmp eq ptr %158, null
  br i1 %159, label %176, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 13
  %162 = load ptr, ptr %161, align 8, !tbaa !137
  %163 = icmp eq ptr %162, null
  br i1 %163, label %176, label %164

164:                                              ; preds = %160, %173
  %165 = phi ptr [ %174, %173 ], [ %162, %160 ]
  %166 = getelementptr inbounds %struct.Object, ptr %165, i64 0, i32 12
  %167 = load ptr, ptr %166, align 8, !tbaa !261
  %168 = load ptr, ptr %7, align 8, !tbaa !40
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.Object, ptr %165, i64 0, i32 11
  store ptr null, ptr %171, align 8, !tbaa !262
  %172 = getelementptr inbounds %struct.Object, ptr %165, i64 0, i32 13
  store ptr null, ptr %172, align 8, !tbaa !263
  tail call void @DAG_id_tag_update(ptr noundef nonnull %165, i16 noundef signext 1) #9
  br label %173

173:                                              ; preds = %164, %170
  %174 = load ptr, ptr %165, align 8, !tbaa !137
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %164, !llvm.loop !264

176:                                              ; preds = %173, %160, %156, %150
  %177 = icmp eq ptr %24, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %176
  tail call void @BLI_ghash_free(ptr noundef nonnull %24, ptr noundef null, ptr noundef null) #9
  br label %179

179:                                              ; preds = %178, %176
  %180 = icmp eq ptr %23, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %179
  tail call void @BLI_ghash_free(ptr noundef nonnull %23, ptr noundef nonnull @BLI_ghashutil_pairfree, ptr noundef null) #9
  br label %182

182:                                              ; preds = %181, %179
  tail call fastcc void @copy_object_set_idnew(ptr noundef %0, i32 noundef 0) #10
  tail call void @free_object_duplilist(ptr noundef nonnull %16) #9
  %183 = load ptr, ptr %7, align 8, !tbaa !40
  %184 = getelementptr inbounds %struct.Object, ptr %183, i64 0, i32 55
  %185 = load i16, ptr %184, align 8, !tbaa !131
  %186 = and i16 %185, -2841
  store i16 %186, ptr %184, align 8, !tbaa !131
  br label %187

187:                                              ; preds = %5, %182
  ret void
}

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_pair_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_object_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !265 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghashutil_pairalloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashutil_pairfree(ptr noundef) #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_object_set_idnew(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !266 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #9
  %6 = load ptr, ptr %3, align 8, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %12, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  call void @BKE_object_relink(ptr noundef %11) #9
  %12 = load ptr, ptr %9, align 8, !tbaa !137
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8, !llvm.loop !267

14:                                               ; preds = %8, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %15 = and i32 %1, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %64, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !137
  %20 = icmp eq ptr %19, null
  br i1 %20, label %64, label %21

21:                                               ; preds = %17
  %22 = and i32 %1, 256
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %21, %61
  %25 = phi ptr [ %19, %21 ], [ %62, %61 ]
  %26 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !202
  %28 = icmp eq ptr %27, null
  %29 = or i1 %23, %28
  br i1 %29, label %61, label %30

30:                                               ; preds = %24, %58
  %31 = phi i64 [ %59, %58 ], [ 0, %24 ]
  %32 = getelementptr inbounds %struct.Material, ptr %27, i64 0, i32 102, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !137
  %34 = icmp eq ptr %33, null
  br i1 %34, label %58, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.MTex, ptr %33, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !268
  %38 = icmp eq ptr %37, null
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ID, ptr %37, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !270
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  store ptr %41, ptr %36, align 8, !tbaa !268
  %44 = load ptr, ptr %32, align 8, !tbaa !137
  %45 = getelementptr inbounds %struct.MTex, ptr %44, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !268
  %47 = getelementptr inbounds %struct.ID, ptr %46, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !273
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %47, align 4, !tbaa !273
  br label %54

50:                                               ; preds = %39
  %51 = call ptr @BKE_texture_copy(ptr noundef nonnull %37) #9
  %52 = load ptr, ptr %32, align 8, !tbaa !137
  %53 = getelementptr inbounds %struct.MTex, ptr %52, i64 0, i32 5
  store ptr %51, ptr %53, align 8, !tbaa !268
  br label %54

54:                                               ; preds = %50, %43
  %55 = getelementptr inbounds %struct.ID, ptr %37, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !207
  %57 = add nsw i32 %56, -1
  store i32 %57, ptr %55, align 4, !tbaa !207
  br label %58

58:                                               ; preds = %30, %54, %35
  %59 = add nuw nsw i64 %31, 1
  %60 = icmp eq i64 %59, 18
  br i1 %60, label %61, label %30, !llvm.loop !274

61:                                               ; preds = %58, %24
  %62 = load ptr, ptr %25, align 8, !tbaa !137
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %24, !llvm.loop !275

64:                                               ; preds = %61, %17, %14
  call void @set_sca_new_poins() #9
  call void @BKE_main_id_clear_newpoins(ptr noundef %4) #9
  ret void
}

; Function Attrs: optsize
declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_texture_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_sca_new_poins() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_free_modifiers(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @duplibase_for_convert(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !276 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %7, %5 ], [ %2, %3 ]
  %10 = tail call ptr @BKE_object_copy(ptr noundef %9) #9
  tail call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 7) #9
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !137
  %12 = tail call ptr %11(i64 noundef 40, ptr noundef nonnull @.str.155) #9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !196
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  tail call void @BLI_addhead(ptr noundef nonnull %13, ptr noundef %12) #9
  %14 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  store ptr %10, ptr %14, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !159
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !159
  %18 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 53
  %19 = load i16, ptr %18, align 4, !tbaa !145
  %20 = or i16 %19, 1
  store i16 %20, ptr %18, align 4, !tbaa !145
  %21 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !159
  %23 = and i32 %22, -2
  store i32 %23, ptr %21, align 8, !tbaa !159
  %24 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 53
  %25 = load i16, ptr %24, align 4, !tbaa !145
  %26 = and i16 %25, -2
  store i16 %26, ptr %24, align 4, !tbaa !145
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @BKE_mesh_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_to_curve(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_rigidbody_object_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_to_mesh(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_curve_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_vfont_to_curve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_curve_curve_dimension_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curvetomesh(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !277 {
  tail call fastcc void @convert_ensure_curve_cache(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  tail call void @BKE_mesh_from_nurbs(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !102
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  tail call void @BKE_object_free_modifiers(ptr noundef nonnull %2) #9
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 113
  store i8 1, ptr %8, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 99
  store i32 81920, ptr %9, align 8, !tbaa !92
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_free_curve_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mball_basis_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mesh_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_ensure_curve_cache(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !278 {
  %4 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 118
  %5 = load ptr, ptr %4, align 8, !tbaa !186
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !102
  switch i16 %9, label %14 [
    i16 3, label %10
    i16 2, label %10
    i16 4, label %10
    i16 5, label %11
  ]

10:                                               ; preds = %7, %7, %7
  tail call void @BKE_displist_make_curveTypes(ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext 0) #9
  br label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 46
  %13 = load ptr, ptr %12, align 8, !tbaa !251
  tail call void @BKE_displist_make_mball(ptr noundef %13, ptr noundef %1, ptr noundef nonnull %2) #9
  br label %14

14:                                               ; preds = %7, %10, %11, %3
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_from_metaball(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @BKE_mesh_from_nurbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_displist_make_mball(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_copy_animdata_id_action(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_material_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_particlesettings_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mball_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_lamp_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_armature_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_lattice_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_camera_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_speaker_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_matarar(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_base_object_select(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_screen_view3d_layer_active(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @join_mesh_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @join_curve_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @join_armature_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_operator_screenactive(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @join_mesh_shapes_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

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
!34 = !{!"object_add.c:copy_v3_v3"}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"object_add.c:zero_v3"}
!40 = !{!41, !42, i64 32}
!41 = !{!"Base", !42, i64 0, !42, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !44, i64 28, !44, i64 30, !42, i64 32}
!42 = !{!"any pointer", !37, i64 0}
!43 = !{!"int", !37, i64 0}
!44 = !{!"short", !37, i64 0}
!45 = !{!"object_add.c:sub_v3_v3v3"}
!46 = !{!47, !42, i64 88}
!47 = !{!"wmOperatorType", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !48, i64 112, !42, i64 128, !42, i64 136, !42, i64 144, !49, i64 152, !44, i64 184}
!48 = !{!"ListBase", !42, i64 0, !42, i64 8}
!49 = !{!"ExtensionRNA", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!50 = !{!"object_add.c:view_align_update"}
!51 = !{!52, !42, i64 112}
!52 = !{!"wmOperator", !42, i64 0, !42, i64 8, !37, i64 16, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !48, i64 128, !42, i64 144, !42, i64 152, !44, i64 160, !37, i64 162}
!53 = !{!37, !37, i64 0}
!54 = !{!55, !43, i64 8}
!55 = !{!"UserDef", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !43, i64 8468, !44, i64 8472, !44, i64 8474, !44, i64 8476, !44, i64 8478, !44, i64 8480, !44, i64 8482, !43, i64 8484, !43, i64 8488, !43, i64 8492, !44, i64 8496, !44, i64 8498, !43, i64 8500, !43, i64 8504, !43, i64 8508, !43, i64 8512, !43, i64 8516, !43, i64 8520, !43, i64 8524, !44, i64 8528, !44, i64 8530, !44, i64 8532, !44, i64 8534, !48, i64 8536, !48, i64 8552, !48, i64 8568, !48, i64 8584, !48, i64 8600, !48, i64 8616, !48, i64 8632, !37, i64 8648, !44, i64 8712, !44, i64 8714, !44, i64 8716, !44, i64 8718, !44, i64 8720, !44, i64 8722, !44, i64 8724, !44, i64 8726, !37, i64 8728, !44, i64 8896, !44, i64 8898, !44, i64 8900, !44, i64 8902, !44, i64 8904, !44, i64 8906, !44, i64 8908, !44, i64 8910, !43, i64 8912, !43, i64 8916, !44, i64 8920, !44, i64 8922, !44, i64 8924, !44, i64 8926, !44, i64 8928, !44, i64 8930, !44, i64 8932, !44, i64 8934, !44, i64 8936, !44, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !44, i64 8944, !44, i64 8946, !44, i64 8948, !44, i64 8950, !44, i64 8952, !44, i64 8954, !36, i64 8956, !36, i64 8960, !43, i64 8964, !44, i64 8968, !44, i64 8970, !36, i64 8972, !44, i64 8976, !44, i64 8978, !44, i64 8980, !44, i64 8982, !56, i64 8984, !37, i64 9760, !37, i64 9772, !44, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !43, i64 10896, !43, i64 10900, !36, i64 10904, !36, i64 10908, !43, i64 10912, !44, i64 10916, !44, i64 10918, !44, i64 10920, !44, i64 10922, !44, i64 10924, !44, i64 10926, !57, i64 10928}
!56 = !{!"ColorBand", !44, i64 0, !44, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!57 = !{!"WalkNavigation", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !44, i64 24, !37, i64 26}
!58 = !{!43, !43, i64 0}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = distinct !{!61, !60}
!62 = !{!63, !42, i64 152}
!63 = !{!"View3D", !42, i64 0, !42, i64 8, !48, i64 16, !43, i64 32, !36, i64 36, !37, i64 40, !37, i64 56, !36, i64 72, !36, i64 76, !37, i64 80, !37, i64 81, !43, i64 84, !43, i64 88, !44, i64 92, !44, i64 94, !42, i64 96, !42, i64 104, !64, i64 112, !48, i64 128, !42, i64 144, !42, i64 152, !37, i64 160, !43, i64 224, !43, i64 228, !44, i64 232, !44, i64 234, !44, i64 236, !44, i64 238, !44, i64 240, !44, i64 242, !36, i64 244, !36, i64 248, !36, i64 252, !36, i64 256, !37, i64 260, !37, i64 272, !44, i64 284, !44, i64 286, !44, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !48, i64 296, !48, i64 312, !48, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !42, i64 352, !42, i64 360, !42, i64 368}
!64 = !{!"rctf", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!65 = !{!63, !43, i64 224}
!66 = !{!52, !42, i64 120}
!67 = !{!68, !43, i64 944}
!68 = !{!"Object", !69, i64 0, !42, i64 120, !42, i64 128, !44, i64 136, !44, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !37, i64 152, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !42, i64 304, !70, i64 312, !42, i64 360, !48, i64 368, !48, i64 384, !48, i64 400, !48, i64 416, !43, i64 432, !43, i64 436, !42, i64 440, !42, i64 448, !43, i64 456, !43, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !36, i64 616, !36, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !43, i64 944, !44, i64 948, !44, i64 950, !44, i64 952, !44, i64 954, !44, i64 956, !44, i64 958, !44, i64 960, !44, i64 962, !44, i64 964, !37, i64 966, !37, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !36, i64 988, !36, i64 992, !36, i64 996, !36, i64 1000, !36, i64 1004, !36, i64 1008, !36, i64 1012, !36, i64 1016, !36, i64 1020, !36, i64 1024, !36, i64 1028, !36, i64 1032, !44, i64 1036, !44, i64 1038, !44, i64 1040, !37, i64 1042, !37, i64 1043, !44, i64 1044, !37, i64 1046, !37, i64 1047, !36, i64 1048, !36, i64 1052, !48, i64 1056, !48, i64 1072, !48, i64 1088, !48, i64 1104, !36, i64 1120, !44, i64 1124, !44, i64 1126, !37, i64 1128, !43, i64 1144, !43, i64 1148, !42, i64 1152, !37, i64 1160, !37, i64 1161, !44, i64 1162, !37, i64 1164, !48, i64 1176, !48, i64 1192, !48, i64 1208, !48, i64 1224, !42, i64 1240, !42, i64 1248, !42, i64 1256, !37, i64 1264, !37, i64 1265, !44, i64 1266, !36, i64 1268, !42, i64 1272, !42, i64 1280, !42, i64 1288, !42, i64 1296, !71, i64 1304, !71, i64 1312, !43, i64 1320, !43, i64 1324, !48, i64 1328, !48, i64 1344, !42, i64 1360, !42, i64 1368, !42, i64 1376, !37, i64 1384, !42, i64 1392, !48, i64 1400, !42, i64 1416}
!69 = !{!"ID", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !37, i64 32, !44, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !42, i64 112}
!70 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!71 = !{!"long", !37, i64 0}
!72 = !{!73, !42, i64 168}
!73 = !{!"Scene", !69, i64 0, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !48, i64 152, !42, i64 168, !42, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !44, i64 244, !37, i64 246, !37, i64 247, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !74, i64 280, !82, i64 4264, !48, i64 4296, !48, i64 4312, !42, i64 4328, !42, i64 4336, !42, i64 4344, !42, i64 4352, !42, i64 4360, !42, i64 4368, !44, i64 4376, !44, i64 4378, !43, i64 4380, !48, i64 4384, !83, i64 4400, !84, i64 4416, !87, i64 4600, !42, i64 4608, !88, i64 4616, !42, i64 4640, !71, i64 4648, !71, i64 4656, !76, i64 4664, !77, i64 4824, !89, i64 4888, !42, i64 4952}
!74 = !{!"RenderData", !75, i64 0, !42, i64 248, !42, i64 256, !78, i64 264, !79, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !36, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !44, i64 432, !44, i64 434, !36, i64 436, !36, i64 440, !36, i64 444, !36, i64 448, !36, i64 452, !44, i64 456, !44, i64 458, !44, i64 460, !44, i64 462, !44, i64 464, !44, i64 466, !43, i64 468, !44, i64 472, !44, i64 474, !44, i64 476, !44, i64 478, !44, i64 480, !44, i64 482, !43, i64 484, !43, i64 488, !44, i64 492, !44, i64 494, !43, i64 496, !43, i64 500, !44, i64 504, !44, i64 506, !44, i64 508, !44, i64 510, !44, i64 512, !37, i64 514, !37, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !44, i64 528, !44, i64 530, !44, i64 532, !44, i64 534, !44, i64 536, !44, i64 538, !44, i64 540, !44, i64 542, !64, i64 544, !64, i64 560, !80, i64 576, !48, i64 592, !44, i64 608, !44, i64 610, !36, i64 612, !36, i64 616, !36, i64 620, !36, i64 624, !43, i64 628, !36, i64 632, !36, i64 636, !36, i64 640, !36, i64 644, !44, i64 648, !44, i64 650, !44, i64 652, !44, i64 654, !44, i64 656, !44, i64 658, !36, i64 660, !36, i64 664, !44, i64 668, !44, i64 670, !36, i64 672, !36, i64 676, !37, i64 680, !43, i64 1704, !44, i64 1708, !44, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !43, i64 2520, !44, i64 2524, !44, i64 2526, !36, i64 2528, !36, i64 2532, !44, i64 2536, !44, i64 2538, !36, i64 2540, !44, i64 2544, !44, i64 2546, !43, i64 2548, !44, i64 2552, !44, i64 2554, !44, i64 2556, !44, i64 2558, !36, i64 2560, !36, i64 2564, !42, i64 2568, !43, i64 2576, !36, i64 2580, !37, i64 2584, !81, i64 2616, !43, i64 3976, !43, i64 3980}
!75 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !44, i64 8, !44, i64 10, !36, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !76, i64 24, !77, i64 184}
!76 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !37, i64 8, !37, i64 72, !36, i64 136, !36, i64 140, !42, i64 144, !42, i64 152}
!77 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!78 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !44, i64 48, !44, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!79 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !36, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !42, i64 64}
!80 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!81 = !{!"BakeData", !75, i64 0, !37, i64 248, !44, i64 1272, !44, i64 1274, !44, i64 1276, !44, i64 1278, !36, i64 1280, !36, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!82 = !{!"AudioData", !43, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !43, i64 16, !44, i64 20, !44, i64 22, !36, i64 24, !36, i64 28}
!83 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!84 = !{!"GameData", !83, i64 0, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !44, i64 32, !37, i64 34, !85, i64 40, !44, i64 64, !44, i64 66, !36, i64 68, !86, i64 72, !36, i64 128, !36, i64 132, !43, i64 136, !44, i64 140, !44, i64 142, !44, i64 144, !44, i64 146, !44, i64 148, !44, i64 150, !44, i64 152, !44, i64 154, !44, i64 156, !44, i64 158, !44, i64 160, !44, i64 162, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180}
!85 = !{!"GameDome", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !36, i64 8, !36, i64 12, !42, i64 16}
!86 = !{!"RecastData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !43, i64 40, !36, i64 44, !36, i64 48, !44, i64 52, !44, i64 54}
!87 = !{!"UnitSettings", !36, i64 0, !37, i64 4, !37, i64 5, !44, i64 6}
!88 = !{!"PhysicsSettings", !37, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!89 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!90 = !{!41, !43, i64 16}
!91 = !{!68, !37, i64 1264}
!92 = !{!68, !43, i64 1144}
!93 = !{!68, !42, i64 296}
!94 = !{!47, !42, i64 0}
!95 = !{!47, !42, i64 24}
!96 = !{!47, !42, i64 8}
!97 = !{!47, !42, i64 32}
!98 = !{!47, !42, i64 72}
!99 = !{!47, !44, i64 184}
!100 = !{!"object_add.c:object_add_exec"}
!101 = !{i8 0, i8 2}
!102 = !{!68, !44, i64 136}
!103 = !{!47, !42, i64 104}
!104 = !{!"object_add.c:effector_add_exec"}
!105 = !{!106, !43, i64 268}
!106 = !{!"Curve", !69, i64 0, !42, i64 120, !42, i64 128, !48, i64 136, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !44, i64 244, !44, i64 246, !44, i64 248, !44, i64 250, !36, i64 252, !36, i64 256, !43, i64 260, !44, i64 264, !44, i64 266, !43, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !44, i64 284, !44, i64 286, !44, i64 288, !44, i64 290, !43, i64 292, !43, i64 296, !37, i64 300, !44, i64 304, !37, i64 306, !37, i64 307, !36, i64 308, !36, i64 312, !36, i64 316, !36, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !36, i64 336, !36, i64 340, !36, i64 344, !43, i64 348, !43, i64 352, !43, i64 356, !43, i64 360, !43, i64 364, !42, i64 368, !42, i64 376, !37, i64 384, !42, i64 448, !42, i64 456, !42, i64 464, !42, i64 472, !42, i64 480, !43, i64 488, !43, i64 492, !42, i64 496, !107, i64 504, !36, i64 512, !36, i64 516, !36, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!107 = !{!"CharInfo", !44, i64 0, !44, i64 2, !37, i64 4, !37, i64 5, !44, i64 6}
!108 = !{!106, !42, i64 152}
!109 = !{!68, !37, i64 1047}
!110 = !{!68, !42, i64 1240}
!111 = !{!"object_add.c:object_camera_add_exec"}
!112 = !{!63, !42, i64 96}
!113 = !{!63, !44, i64 236}
!114 = !{!73, !42, i64 128}
!115 = !{!116, !36, i64 152}
!116 = !{!"Camera", !69, i64 0, !42, i64 120, !37, i64 128, !37, i64 129, !44, i64 130, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !42, i64 176, !42, i64 184, !37, i64 192, !37, i64 193}
!117 = !{!47, !42, i64 48}
!118 = !{!"object_add.c:object_metaball_add_exec"}
!119 = !{!"object_add.c:object_add_text_exec"}
!120 = !{!"object_add.c:object_armature_add_exec"}
!121 = !{!"object_add.c:object_empty_add_exec"}
!122 = !{!"object_add.c:empty_drop_named_image_invoke"}
!123 = !{!"object_add.c:object_lamp_add_exec"}
!124 = !{!125, !44, i64 128}
!125 = !{!"Lamp", !69, i64 0, !42, i64 120, !44, i64 128, !44, i64 130, !43, i64 132, !44, i64 136, !44, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !42, i64 200, !44, i64 208, !44, i64 210, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !44, i64 240, !44, i64 242, !44, i64 244, !44, i64 246, !37, i64 248, !37, i64 249, !44, i64 250, !44, i64 252, !44, i64 254, !44, i64 256, !44, i64 258, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !44, i64 276, !44, i64 278, !44, i64 280, !44, i64 282, !44, i64 284, !44, i64 286, !36, i64 288, !36, i64 292, !36, i64 296, !36, i64 300, !36, i64 304, !36, i64 308, !36, i64 312, !36, i64 316, !36, i64 320, !36, i64 324, !36, i64 328, !36, i64 332, !36, i64 336, !44, i64 340, !37, i64 342, !42, i64 344, !37, i64 352, !44, i64 496, !44, i64 498, !37, i64 500, !42, i64 504, !42, i64 512}
!126 = !{!125, !44, i64 498}
!127 = !{!"object_add.c:group_instance_add_exec"}
!128 = !{!129, !42, i64 136}
!129 = !{!"wmWindow", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !37, i64 40, !44, i64 104, !44, i64 106, !44, i64 108, !44, i64 110, !44, i64 112, !44, i64 114, !44, i64 116, !44, i64 118, !44, i64 120, !44, i64 122, !44, i64 124, !44, i64 126, !43, i64 128, !44, i64 132, !44, i64 134, !42, i64 136, !42, i64 144, !42, i64 152, !43, i64 160, !43, i64 164, !42, i64 168, !48, i64 176, !48, i64 192, !48, i64 208, !48, i64 224, !48, i64 240}
!130 = !{!68, !42, i64 1256}
!131 = !{!68, !44, i64 952}
!132 = !{!"object_add.c:object_speaker_add_exec"}
!133 = !{!73, !43, i64 680}
!134 = !{!135, !36, i64 152}
!135 = !{!"NlaStrip", !42, i64 0, !42, i64 8, !48, i64 16, !42, i64 32, !42, i64 40, !48, i64 48, !48, i64 64, !37, i64 80, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !44, i64 184, !44, i64 186, !44, i64 188, !44, i64 190, !42, i64 192, !43, i64 200, !43, i64 204}
!136 = !{!135, !36, i64 156}
!137 = !{!42, !42, i64 0}
!138 = !{!"object_add.c:object_delete_check_glsl_update"}
!139 = !{!68, !42, i64 1328}
!140 = !{!"object_add.c:object_delete_exec"}
!141 = !{!142, !42, i64 32}
!142 = !{!"CollectionPointerLink", !42, i64 0, !42, i64 8, !143, i64 16}
!143 = !{!"PointerRNA", !144, i64 0, !42, i64 8, !42, i64 16}
!144 = !{!"", !42, i64 0}
!145 = !{!68, !44, i64 948}
!146 = !{!73, !42, i64 24}
!147 = distinct !{!147, !60}
!148 = distinct !{!148, !60}
!149 = !{!129, !42, i64 24}
!150 = !{!151, !42, i64 184}
!151 = !{!"bScreen", !69, i64 0, !48, i64 120, !48, i64 136, !48, i64 152, !48, i64 168, !42, i64 184, !42, i64 192, !43, i64 200, !43, i64 204, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !44, i64 220, !44, i64 222, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !42, i64 232, !42, i64 240}
!152 = !{!73, !44, i64 98}
!153 = distinct !{!153, !60}
!154 = !{!"object_add.c:object_duplicates_make_real_exec"}
!155 = distinct !{!155, !60}
!156 = !{!"object_add.c:convert_exec"}
!157 = !{!69, !44, i64 98}
!158 = distinct !{!158, !60}
!159 = !{!41, !43, i64 24}
!160 = !{!161, !43, i64 100}
!161 = !{!"Mesh", !69, i64 0, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !162, i64 280, !162, i64 480, !162, i64 680, !162, i64 880, !162, i64 1080, !43, i64 1280, !43, i64 1284, !43, i64 1288, !43, i64 1292, !43, i64 1296, !43, i64 1300, !43, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !43, i64 1344, !44, i64 1348, !44, i64 1350, !36, i64 1352, !43, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !44, i64 1366, !42, i64 1368}
!162 = !{!"CustomData", !42, i64 0, !37, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !42, i64 184, !42, i64 192}
!163 = !{!68, !42, i64 416}
!164 = !{!165, !42, i64 1680}
!165 = !{!"DerivedMesh", !162, i64 0, !162, i64 200, !162, i64 400, !162, i64 600, !162, i64 800, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !42, i64 1032, !42, i64 1040, !43, i64 1048, !36, i64 1052, !43, i64 1056, !43, i64 1060, !42, i64 1064, !37, i64 1072, !42, i64 1080, !42, i64 1088, !42, i64 1096, !42, i64 1104, !42, i64 1112, !42, i64 1120, !42, i64 1128, !42, i64 1136, !42, i64 1144, !42, i64 1152, !42, i64 1160, !42, i64 1168, !42, i64 1176, !42, i64 1184, !42, i64 1192, !42, i64 1200, !42, i64 1208, !42, i64 1216, !42, i64 1224, !42, i64 1232, !42, i64 1240, !42, i64 1248, !42, i64 1256, !42, i64 1264, !42, i64 1272, !42, i64 1280, !42, i64 1288, !42, i64 1296, !42, i64 1304, !42, i64 1312, !42, i64 1320, !42, i64 1328, !42, i64 1336, !42, i64 1344, !42, i64 1352, !42, i64 1360, !42, i64 1368, !42, i64 1376, !42, i64 1384, !42, i64 1392, !42, i64 1400, !42, i64 1408, !42, i64 1416, !42, i64 1424, !42, i64 1432, !42, i64 1440, !42, i64 1448, !42, i64 1456, !42, i64 1464, !42, i64 1472, !42, i64 1480, !42, i64 1488, !42, i64 1496, !42, i64 1504, !42, i64 1512, !42, i64 1520, !42, i64 1528, !42, i64 1536, !42, i64 1544, !42, i64 1552, !42, i64 1560, !42, i64 1568, !42, i64 1576, !42, i64 1584, !42, i64 1592, !42, i64 1600, !42, i64 1608, !42, i64 1616, !42, i64 1624, !42, i64 1632, !42, i64 1640, !42, i64 1648, !42, i64 1656, !42, i64 1664, !42, i64 1672, !42, i64 1680}
!166 = !{!106, !43, i64 100}
!167 = !{!106, !44, i64 244}
!168 = !{!106, !42, i64 448}
!169 = !{!170, !43, i64 100}
!170 = !{!"VFont", !69, i64 0, !37, i64 120, !42, i64 1144, !42, i64 1152, !42, i64 1160}
!171 = !{!106, !42, i64 456}
!172 = !{!106, !42, i64 464}
!173 = !{!106, !42, i64 472}
!174 = distinct !{!174, !60}
!175 = !{!176, !43, i64 84}
!176 = !{!"Nurb", !42, i64 0, !42, i64 8, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !43, i64 24, !43, i64 28, !37, i64 32, !44, i64 36, !44, i64 38, !44, i64 40, !44, i64 42, !44, i64 44, !44, i64 46, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !44, i64 80, !44, i64 82, !43, i64 84}
!177 = distinct !{!177, !60}
!178 = !{!179, !43, i64 100}
!179 = !{!"MetaBall", !69, i64 0, !42, i64 120, !48, i64 128, !48, i64 144, !42, i64 160, !42, i64 168, !42, i64 176, !37, i64 184, !37, i64 185, !44, i64 186, !44, i64 188, !44, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !36, i64 228, !36, i64 232, !36, i64 236, !42, i64 240}
!180 = !{!179, !44, i64 186}
!181 = !{!161, !44, i64 1366}
!182 = !{!68, !43, i64 456}
!183 = !{!179, !42, i64 176}
!184 = !{!161, !42, i64 152}
!185 = distinct !{!185, !60}
!186 = !{!68, !42, i64 1280}
!187 = distinct !{!187, !60}
!188 = !{!73, !42, i64 152}
!189 = !{!41, !42, i64 0}
!190 = distinct !{!190, !60}
!191 = !{!"object_add.c:convert_poll"}
!192 = !{!73, !42, i64 176}
!193 = !{!68, !42, i64 24}
!194 = !{!"object_add.c:object_add_duplicate_internal"}
!195 = !{!68, !43, i64 432}
!196 = !{i64 0, i64 8, !137, i64 8, i64 8, !137, i64 16, i64 4, !58, i64 20, i64 4, !58, i64 24, i64 4, !58, i64 28, i64 2, !197, i64 30, i64 2, !197, i64 32, i64 8, !137}
!197 = !{!44, !44, i64 0}
!198 = !{!68, !42, i64 1368}
!199 = !{!68, !42, i64 1376}
!200 = distinct !{!200, !60}
!201 = !{!68, !42, i64 440}
!202 = !{!203, !42, i64 16}
!203 = !{!"Material", !69, i64 0, !42, i64 120, !44, i64 128, !44, i64 130, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !204, i64 224, !205, i64 312, !36, i64 328, !36, i64 332, !36, i64 336, !36, i64 340, !36, i64 344, !36, i64 348, !36, i64 352, !44, i64 356, !44, i64 358, !44, i64 360, !37, i64 362, !37, i64 363, !36, i64 364, !36, i64 368, !44, i64 372, !44, i64 374, !36, i64 376, !36, i64 380, !36, i64 384, !36, i64 388, !44, i64 392, !44, i64 394, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408, !44, i64 412, !44, i64 414, !44, i64 416, !44, i64 418, !36, i64 420, !36, i64 424, !36, i64 428, !36, i64 432, !36, i64 436, !36, i64 440, !36, i64 444, !36, i64 448, !36, i64 452, !36, i64 456, !37, i64 460, !36, i64 524, !36, i64 528, !36, i64 532, !43, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !44, i64 544, !44, i64 546, !44, i64 548, !37, i64 550, !37, i64 551, !44, i64 552, !44, i64 554, !36, i64 556, !36, i64 560, !37, i64 564, !36, i64 580, !36, i64 584, !44, i64 588, !44, i64 590, !42, i64 592, !42, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !44, i64 612, !44, i64 614, !36, i64 616, !36, i64 620, !37, i64 624, !42, i64 768, !42, i64 776, !42, i64 784, !42, i64 792, !36, i64 800, !36, i64 804, !36, i64 808, !36, i64 812, !36, i64 816, !44, i64 820, !44, i64 822, !37, i64 824, !37, i64 836, !36, i64 848, !36, i64 852, !36, i64 856, !36, i64 860, !36, i64 864, !36, i64 868, !36, i64 872, !44, i64 876, !44, i64 878, !43, i64 880, !44, i64 884, !44, i64 886, !37, i64 888, !44, i64 904, !44, i64 906, !44, i64 908, !44, i64 910, !44, i64 912, !37, i64 914, !42, i64 920, !48, i64 928}
!204 = !{!"VolumeSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !36, i64 52, !36, i64 56, !36, i64 60, !44, i64 64, !44, i64 66, !44, i64 68, !44, i64 70, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84}
!205 = !{!"GameSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!206 = !{!203, !43, i64 100}
!207 = !{!69, !43, i64 100}
!208 = distinct !{!208, !60}
!209 = !{!210, !42, i64 16}
!210 = !{!"ParticleSystem", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !48, i64 72, !48, i64 88, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !48, i64 152, !37, i64 168, !37, i64 232, !36, i64 296, !36, i64 300, !36, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !44, i64 340, !44, i64 342, !44, i64 344, !44, i64 346, !37, i64 348, !37, i64 540, !44, i64 564, !44, i64 566, !42, i64 568, !42, i64 576, !48, i64 584, !42, i64 600, !42, i64 608, !43, i64 616, !43, i64 620, !42, i64 624, !42, i64 632, !42, i64 640, !36, i64 648, !36, i64 652}
!211 = !{!212, !42, i64 16}
!212 = !{!"ParticleSettings", !69, i64 0, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !43, i64 152, !43, i64 156, !44, i64 160, !44, i64 162, !44, i64 164, !44, i64 166, !44, i64 168, !44, i64 170, !44, i64 172, !44, i64 174, !43, i64 176, !43, i64 180, !44, i64 184, !44, i64 186, !44, i64 188, !44, i64 190, !44, i64 192, !44, i64 194, !44, i64 196, !44, i64 198, !44, i64 200, !44, i64 202, !44, i64 204, !44, i64 206, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !44, i64 220, !44, i64 222, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !36, i64 232, !36, i64 236, !37, i64 240, !37, i64 248, !36, i64 256, !36, i64 260, !36, i64 264, !44, i64 268, !44, i64 270, !36, i64 272, !36, i64 276, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !36, i64 300, !36, i64 304, !36, i64 308, !36, i64 312, !36, i64 316, !37, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !44, i64 340, !37, i64 342, !36, i64 348, !36, i64 352, !36, i64 356, !36, i64 360, !36, i64 364, !36, i64 368, !36, i64 372, !37, i64 376, !36, i64 388, !36, i64 392, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !37, i64 416, !36, i64 428, !36, i64 432, !36, i64 436, !36, i64 440, !43, i64 444, !43, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !36, i64 464, !36, i64 468, !36, i64 472, !36, i64 476, !36, i64 480, !36, i64 484, !36, i64 488, !36, i64 492, !36, i64 496, !36, i64 500, !36, i64 504, !36, i64 508, !36, i64 512, !36, i64 516, !36, i64 520, !36, i64 524, !36, i64 528, !36, i64 532, !36, i64 536, !36, i64 540, !36, i64 544, !36, i64 548, !37, i64 552, !36, i64 560, !36, i64 564, !43, i64 568, !43, i64 572, !37, i64 576, !42, i64 720, !48, i64 728, !42, i64 744, !42, i64 752, !42, i64 760, !42, i64 768, !42, i64 776, !42, i64 784, !44, i64 792, !37, i64 794}
!213 = !{!212, !43, i64 100}
!214 = distinct !{!214, !60}
!215 = !{!69, !42, i64 16}
!216 = !{!68, !42, i64 1272}
!217 = !{!218, !42, i64 96}
!218 = !{!"FluidsimSettings", !42, i64 0, !43, i64 8, !43, i64 12, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !36, i64 24, !44, i64 28, !44, i64 30, !36, i64 32, !44, i64 36, !44, i64 38, !37, i64 40, !36, i64 52, !36, i64 56, !43, i64 60, !43, i64 64, !43, i64 68, !43, i64 72, !36, i64 76, !43, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !42, i64 96, !42, i64 104, !37, i64 112, !37, i64 1136, !37, i64 1148, !42, i64 1160, !44, i64 1168, !37, i64 1170, !37, i64 1171, !36, i64 1172, !43, i64 1176, !36, i64 1180, !36, i64 1184, !43, i64 1188, !43, i64 1192, !36, i64 1196, !36, i64 1200, !36, i64 1204, !42, i64 1208, !43, i64 1216, !36, i64 1220, !36, i64 1224, !36, i64 1228, !36, i64 1232, !36, i64 1236, !36, i64 1240, !36, i64 1244, !43, i64 1248, !36, i64 1252}
!219 = !{!68, !42, i64 288}
!220 = !{!221, !44, i64 24}
!221 = !{!"bPose", !48, i64 0, !42, i64 16, !44, i64 24, !44, i64 26, !43, i64 28, !43, i64 32, !36, i64 36, !37, i64 40, !37, i64 52, !48, i64 64, !43, i64 80, !43, i64 84, !42, i64 88, !42, i64 96, !70, i64 104, !37, i64 152}
!222 = !{!223, !44, i64 24}
!223 = !{!"bActuator", !42, i64 0, !42, i64 8, !42, i64 16, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !37, i64 32, !42, i64 96, !42, i64 104}
!224 = !{!223, !42, i64 96}
!225 = !{!68, !42, i64 120}
!226 = !{!227, !42, i64 0}
!227 = !{!"bActionActuator", !42, i64 0, !44, i64 8, !44, i64 10, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 84, !44, i64 148, !44, i64 150, !44, i64 152, !44, i64 154, !44, i64 156, !44, i64 158, !36, i64 160, !36, i64 164}
!228 = !{!229, !42, i64 0}
!229 = !{!"AnimData", !42, i64 0, !42, i64 8, !42, i64 16, !48, i64 24, !42, i64 40, !48, i64 48, !48, i64 64, !43, i64 80, !43, i64 84, !44, i64 88, !44, i64 90, !36, i64 92}
!230 = distinct !{!230, !60}
!231 = distinct !{!231, !60}
!232 = !{!"object_add.c:duplicate_exec"}
!233 = distinct !{!233, !60}
!234 = !{!"object_add.c:add_named_exec"}
!235 = !{!68, !37, i64 1160}
!236 = !{!237, !43, i64 20}
!237 = !{!"wmEvent", !42, i64 0, !42, i64 8, !44, i64 16, !44, i64 18, !43, i64 20, !43, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !44, i64 44, !44, i64 46, !43, i64 48, !43, i64 52, !238, i64 56, !43, i64 64, !43, i64 68, !44, i64 72, !44, i64 74, !44, i64 76, !44, i64 78, !44, i64 80, !44, i64 82, !42, i64 88, !42, i64 96, !44, i64 104, !44, i64 106, !43, i64 108, !42, i64 112}
!238 = !{!"double", !37, i64 0}
!239 = !{!240, !43, i64 176}
!240 = !{!"ARegion", !42, i64 0, !42, i64 8, !241, i64 16, !80, i64 176, !80, i64 192, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !36, i64 220, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !44, i64 232, !44, i64 234, !44, i64 236, !44, i64 238, !42, i64 240, !48, i64 248, !48, i64 264, !48, i64 280, !48, i64 296, !48, i64 312, !48, i64 328, !48, i64 344, !42, i64 360, !42, i64 368, !42, i64 376}
!241 = !{!"View2D", !64, i64 0, !64, i64 16, !80, i64 32, !80, i64 48, !80, i64 64, !37, i64 80, !37, i64 88, !36, i64 96, !36, i64 100, !44, i64 104, !44, i64 106, !44, i64 108, !44, i64 110, !44, i64 112, !44, i64 114, !44, i64 116, !44, i64 118, !44, i64 120, !44, i64 122, !44, i64 124, !44, i64 126, !42, i64 128, !43, i64 136, !43, i64 140, !42, i64 144, !42, i64 152}
!242 = !{!237, !43, i64 24}
!243 = !{!240, !43, i64 184}
!244 = !{!"object_add.c:join_exec"}
!245 = !{!"object_add.c:join_poll"}
!246 = !{!"object_add.c:join_shapes_exec"}
!247 = !{!"object_add.c:join_shapes_poll"}
!248 = !{!"object_add.c:copy_v3_fl"}
!249 = !{!"object_add.c:get_lamp_defname"}
!250 = !{!"object_add.c:make_object_duplilist_real"}
!251 = !{!252, !42, i64 1888}
!252 = !{!"Main", !42, i64 0, !42, i64 8, !37, i64 16, !44, i64 1040, !44, i64 1042, !44, i64 1044, !44, i64 1046, !71, i64 1048, !37, i64 1056, !44, i64 1072, !42, i64 1080, !48, i64 1088, !48, i64 1104, !48, i64 1120, !48, i64 1136, !48, i64 1152, !48, i64 1168, !48, i64 1184, !48, i64 1200, !48, i64 1216, !48, i64 1232, !48, i64 1248, !48, i64 1264, !48, i64 1280, !48, i64 1296, !48, i64 1312, !48, i64 1328, !48, i64 1344, !48, i64 1360, !48, i64 1376, !48, i64 1392, !48, i64 1408, !48, i64 1424, !48, i64 1440, !48, i64 1456, !48, i64 1472, !48, i64 1488, !48, i64 1504, !48, i64 1520, !48, i64 1536, !48, i64 1552, !48, i64 1568, !48, i64 1584, !48, i64 1600, !48, i64 1616, !37, i64 1632, !42, i64 1888, !42, i64 1896}
!253 = !{!254, !42, i64 16}
!254 = !{!"DupliObject", !42, i64 0, !42, i64 8, !42, i64 16, !37, i64 24, !37, i64 88, !37, i64 100, !44, i64 108, !37, i64 110, !37, i64 111, !37, i64 112, !42, i64 144}
!255 = !{!68, !42, i64 216}
!256 = distinct !{!256, !60}
!257 = !{!68, !44, i64 138}
!258 = !{!68, !43, i64 148}
!259 = distinct !{!259, !60}
!260 = distinct !{!260, !60}
!261 = !{!68, !42, i64 240}
!262 = !{!68, !42, i64 232}
!263 = !{!68, !42, i64 248}
!264 = distinct !{!264, !60}
!265 = !{!"object_add.c:BLI_listbase_clear"}
!266 = !{!"object_add.c:copy_object_set_idnew"}
!267 = distinct !{!267, !60}
!268 = !{!269, !42, i64 16}
!269 = !{!"MTex", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !42, i64 8, !42, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !36, i64 116, !44, i64 120, !44, i64 122, !44, i64 124, !44, i64 126, !44, i64 128, !44, i64 130, !37, i64 132, !37, i64 133, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252, !36, i64 256, !36, i64 260, !36, i64 264, !36, i64 268, !36, i64 272, !36, i64 276, !36, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !36, i64 296, !36, i64 300, !36, i64 304, !36, i64 308}
!270 = !{!271, !42, i64 16}
!271 = !{!"Tex", !69, i64 0, !42, i64 120, !36, i64 128, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !44, i64 216, !44, i64 218, !44, i64 220, !44, i64 222, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !44, i64 232, !44, i64 234, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !43, i64 252, !43, i64 256, !44, i64 260, !44, i64 262, !44, i64 264, !44, i64 266, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !272, i64 296, !42, i64 336, !42, i64 344, !42, i64 352, !42, i64 360, !42, i64 368, !42, i64 376, !42, i64 384, !42, i64 392, !42, i64 400, !37, i64 408, !37, i64 409}
!272 = !{!"ImageUser", !42, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !44, i64 28, !44, i64 30, !44, i64 32, !44, i64 34, !43, i64 36}
!273 = !{!271, !43, i64 100}
!274 = distinct !{!274, !60}
!275 = distinct !{!275, !60}
!276 = !{!"object_add.c:duplibase_for_convert"}
!277 = !{!"object_add.c:curvetomesh"}
!278 = !{!"object_add.c:convert_ensure_curve_cache"}
