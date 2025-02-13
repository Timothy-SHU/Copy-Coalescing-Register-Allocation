; ModuleID = 'blender/source/blender/editors/space_outliner/outliner_tree.c'
source_filename = "blender/source/blender/editors/space_outliner/outliner_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.TreeElement = type { ptr, ptr, ptr, %struct.ListBase, i32, i32, ptr, i16, i16, i16, i16, ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.SpaceOops = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, %struct.ListBase, ptr, [32 x i8], %struct.TreeStoreElem, i16, i16, i16, i16, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.BLI_mempool_iter = type { ptr, ptr, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.IdAdtTemplate = type { %struct.ID, ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.tTreeSort = type { ptr, ptr, ptr, i16 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Speaker = type { %struct.ID, ptr, ptr, float, float, float, float, float, float, float, float, float, float, i16, [3 x i16] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.HookModifierData = type { %struct.ModifierData, ptr, [64 x i8], [4 x [4 x float]], [3 x float], float, ptr, i32, float, [64 x i8] }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"Current File\00", align 1
@RNA_UserPreferences = external global %struct.StructRNA, align 1
@U = external global %struct.UserDef, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"tree elem\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Animation\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Drivers\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"NLA Tracks\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Strip None\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"(empty)\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"OutlinerRNAArrayName\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"  %c\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"  %d\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Modal map, not yet\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Pose\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Constraints\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Bone Groups\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Modifiers\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Vertex Groups\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"RenderLayers\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Combined\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Vector\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"UV\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Mist\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Index Object\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Index Material\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Diffuse\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"Specular\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Shadow\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"AO\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"Reflection\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Refraction\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"Indirect\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"Environment\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Emit\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [16 x i8] c"tree sort array\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"*%s*\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @outliner_free_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1, %15
  %5 = phi ptr [ %17, %15 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 3
  tail call void @outliner_free_tree(ptr noundef nonnull %6) #15
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %5) #16
  %7 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 7
  %8 = load i16, ptr %7, align 8, !tbaa !39
  %9 = and i16 %8, 8
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  tail call void %12(ptr noundef %14) #16
  br label %15

15:                                               ; preds = %11, %4
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %16(ptr noundef nonnull %5) #16
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !47

19:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @outliner_cleanup_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 7
  tail call void @outliner_free_tree(ptr noundef nonnull %2) #15
  tail call fastcc void @outliner_storage_cleanup(ptr noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_storage_cleanup(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !49 {
  %2 = alloca %struct.BLI_mempool_iter, align 8
  %3 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %65, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @BLI_mempool_iternew(ptr noundef nonnull %4, ptr noundef nonnull %2) #16
  %7 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.TreeStoreElem, ptr %10, i64 0, i32 3
  store i16 0, ptr %11, align 2, !tbaa !57
  %12 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !58

14:                                               ; preds = %9, %6
  %15 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 13
  %16 = load i16, ptr %15, align 4, !tbaa !59
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %14
  call void @BLI_mempool_iternew(ptr noundef nonnull %4, ptr noundef nonnull %2) #16
  %20 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %64, label %22

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %30, %22 ], [ %20, %19 ]
  %24 = phi i32 [ %29, %22 ], [ 0, %19 ]
  %25 = getelementptr inbounds %struct.TreeStoreElem, ptr %23, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  %27 = icmp eq ptr %26, null
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %24, %28
  %30 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %22, !llvm.loop !61

32:                                               ; preds = %22
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %32
  %35 = call i32 @BLI_mempool_count(ptr noundef nonnull %4) #16
  %36 = icmp eq i32 %35, %29
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  call void @BLI_mempool_destroy(ptr noundef nonnull %4) #16
  store ptr null, ptr %3, align 8, !tbaa !50
  %38 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 15
  %39 = load ptr, ptr %38, align 8, !tbaa !62
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %41

41:                                               ; preds = %37
  call void @BKE_treehash_free(ptr noundef nonnull %39) #16
  store ptr null, ptr %38, align 8, !tbaa !62
  br label %64

42:                                               ; preds = %34
  %43 = call i32 @BLI_mempool_count(ptr noundef nonnull %4) #16
  %44 = sub nsw i32 %43, %29
  %45 = call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef %44, i32 noundef 512, i32 noundef 1) #16
  call void @BLI_mempool_iternew(ptr noundef nonnull %4, ptr noundef nonnull %2) #16
  %46 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %42, %55
  %49 = phi ptr [ %56, %55 ], [ %46, %42 ]
  %50 = getelementptr inbounds %struct.TreeStoreElem, ptr %49, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !60
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = call ptr @BLI_mempool_alloc(ptr noundef %45) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(16) %49, i64 16, i1 false), !tbaa.struct !63
  br label %55

55:                                               ; preds = %53, %48
  %56 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #16
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %48, !llvm.loop !65

58:                                               ; preds = %55, %42
  call void @BLI_mempool_destroy(ptr noundef nonnull %4) #16
  store ptr %45, ptr %3, align 8, !tbaa !50
  %59 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 15
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call ptr @BKE_treehash_rebuild_from_treestore(ptr noundef nonnull %60, ptr noundef %45) #16
  br label %64

64:                                               ; preds = %19, %58, %62, %32, %37, %41, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %65

65:                                               ; preds = %64, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @outliner_find_tse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = load i16, ptr %1, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.TreeStoreElem, ptr %1, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !67
  %12 = tail call ptr @BKE_treehash_lookup_any(ptr noundef %8, i16 noundef signext %9, i16 noundef signext %11, ptr noundef nonnull %4) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 7
  %16 = tail call fastcc ptr @outliner_find_tree_element(ptr noundef nonnull %15, ptr noundef nonnull %12) #15
  br label %17

17:                                               ; preds = %6, %2, %14
  %18 = phi ptr [ %16, %14 ], [ null, %2 ], [ null, %6 ]
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @BKE_treehash_lookup_any(ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @outliner_find_tree_element(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 !PGOFuncName !68 {
  br label %3

3:                                                ; preds = %11, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %11 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 3
  %13 = tail call fastcc ptr @outliner_find_tree_element(ptr noundef nonnull %12, ptr noundef %1) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %3, label %15, !llvm.loop !70

15:                                               ; preds = %3, %11, %7
  %16 = phi ptr [ %5, %7 ], [ %13, %11 ], [ null, %3 ]
  ret ptr %16
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @outliner_find_id(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 12
  br label %8

8:                                                ; preds = %6, %30
  %9 = phi ptr [ %4, %6 ], [ %31, %30 ]
  %10 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = load i16, ptr %11, align 8, !tbaa !66
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.TreeStoreElem, ptr %11, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 9
  %20 = load i16, ptr %19, align 4, !tbaa !71
  switch i16 %20, label %21 [
    i16 16975, label %26
    i16 17235, label %26
  ]

21:                                               ; preds = %18
  %22 = load i16, ptr %7, align 2, !tbaa !72
  %23 = icmp eq i16 %22, 6
  %24 = icmp eq i16 %20, 21063
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %18, %18
  %27 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 3
  %28 = tail call ptr @outliner_find_id(ptr noundef %0, ptr noundef nonnull %27, ptr noundef %2) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %8, %26, %21
  %31 = load ptr, ptr %9, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !llvm.loop !73

33:                                               ; preds = %14, %26, %30, %3
  %34 = phi ptr [ null, %3 ], [ null, %30 ], [ %28, %26 ], [ %9, %14 ]
  ret ptr %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @outliner_search_back(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3, %20
  %8 = phi ptr [ %22, %20 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.TreeElement, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = load i16, ptr %10, align 8, !tbaa !66
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.TreeElement, ptr %8, i64 0, i32 9
  %15 = load i16, ptr %14, align 4, !tbaa !71
  %16 = icmp eq i16 %15, %2
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TreeStoreElem, ptr %10, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  br label %24

20:                                               ; preds = %13, %7
  %21 = getelementptr inbounds %struct.TreeElement, ptr %8, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !74
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %7, !llvm.loop !75

24:                                               ; preds = %20, %3, %17
  %25 = phi ptr [ %19, %17 ], [ null, %3 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @outliner_build_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @BLI_mempool_count(ptr noundef nonnull %7) #16
  %11 = icmp eq i32 %10, 0
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i1 [ true, %3 ], [ %11, %9 ]
  %14 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 9
  %15 = load i8, ptr %14, align 8, !tbaa !76
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 12
  %19 = load i16, ptr %18, align 2, !tbaa !72
  %20 = icmp eq i16 %19, 11
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 14
  %23 = load i16, ptr %22, align 2, !tbaa !77
  %24 = or i16 %23, 4
  store i16 %24, ptr %22, align 2, !tbaa !77
  br label %29

25:                                               ; preds = %17, %12
  %26 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 14
  %27 = load i16, ptr %26, align 2, !tbaa !77
  %28 = and i16 %27, -5
  store i16 %28, ptr %26, align 2, !tbaa !77
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !78
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 13
  %35 = load i16, ptr %34, align 4, !tbaa !59
  %36 = and i16 %35, 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %329

38:                                               ; preds = %33, %29
  tail call void @outliner_free_tree(ptr noundef nonnull %30) #15
  tail call fastcc void @outliner_storage_cleanup(ptr noundef nonnull %2) #15
  %39 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %40 = load ptr, ptr %39, align 8, !tbaa !45
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38, %42
  %43 = phi ptr [ %45, %42 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 2
  store ptr null, ptr %44, align 8, !tbaa !79
  %45 = load ptr, ptr %43, align 8, !tbaa !45
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %42, !llvm.loop !84

47:                                               ; preds = %42, %38
  %48 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 12
  %49 = load i16, ptr %48, align 2, !tbaa !72
  switch i16 %49, label %313 [
    i16 7, label %50
    i16 0, label %104
    i16 1, label %147
    i16 2, label %160
    i16 6, label %181
    i16 5, label %218
    i16 3, label %247
    i16 10, label %278
    i16 11, label %295
    i16 12, label %304
  ]

50:                                               ; preds = %47
  %51 = tail call fastcc ptr @outliner_add_element(ptr noundef nonnull %2, ptr noundef nonnull %30, ptr noundef %0, ptr noundef null, i16 noundef signext 36, i16 noundef signext 0) #15
  %52 = getelementptr inbounds %struct.TreeElement, ptr %51, i64 0, i32 11
  store ptr @.str, ptr %52, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.TreeElement, ptr %51, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !69
  %55 = getelementptr inbounds %struct.TreeStoreElem, ptr %54, i64 0, i32 3
  %56 = load i16, ptr %55, align 2, !tbaa !57
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.TreeStoreElem, ptr %54, i64 0, i32 2
  %60 = load i16, ptr %59, align 4, !tbaa !85
  %61 = and i16 %60, -2
  store i16 %61, ptr %59, align 4, !tbaa !85
  br label %62

62:                                               ; preds = %58, %50
  tail call fastcc void @outliner_add_library_contents(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %51, ptr noundef null) #15
  %63 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 12
  %64 = load ptr, ptr %63, align 8, !tbaa !45
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62, %66
  %67 = phi ptr [ %70, %66 ], [ %64, %62 ]
  %68 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %67, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0) #15
  %69 = getelementptr inbounds %struct.ID, ptr %67, i64 0, i32 2
  store ptr %68, ptr %69, align 8, !tbaa !86
  tail call fastcc void @outliner_add_library_contents(ptr noundef %0, ptr noundef %2, ptr noundef %68, ptr noundef nonnull %67) #15
  %70 = load ptr, ptr %67, align 8, !tbaa !45
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %66, !llvm.loop !88

72:                                               ; preds = %66, %62
  %73 = load ptr, ptr %30, align 8, !tbaa !78
  %74 = load ptr, ptr %73, align 8, !tbaa !89
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %97, %72
  %77 = load ptr, ptr %63, align 8, !tbaa !45
  %78 = icmp eq ptr %77, null
  br i1 %78, label %327, label %99

79:                                               ; preds = %72, %97
  %80 = phi ptr [ %81, %97 ], [ %74, %72 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !89
  %82 = getelementptr inbounds %struct.TreeElement, ptr %80, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !69
  %84 = getelementptr inbounds %struct.TreeStoreElem, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !60
  %86 = icmp eq ptr %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.Library, ptr %85, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !90
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  tail call void @BLI_remlink(ptr noundef nonnull %30, ptr noundef nonnull %80) #16
  %92 = load ptr, ptr %88, align 8, !tbaa !90
  %93 = getelementptr inbounds %struct.ID, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !86
  %95 = getelementptr inbounds %struct.TreeElement, ptr %94, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %95, ptr noundef nonnull %80) #16
  %96 = getelementptr inbounds %struct.TreeElement, ptr %80, i64 0, i32 2
  store ptr %94, ptr %96, align 8, !tbaa !74
  br label %97

97:                                               ; preds = %91, %87, %79
  %98 = icmp eq ptr %81, null
  br i1 %98, label %76, label %79, !llvm.loop !91

99:                                               ; preds = %76, %99
  %100 = phi ptr [ %102, %99 ], [ %77, %76 ]
  %101 = getelementptr inbounds %struct.ID, ptr %100, i64 0, i32 2
  store ptr null, ptr %101, align 8, !tbaa !86
  %102 = load ptr, ptr %100, align 8, !tbaa !45
  %103 = icmp eq ptr %102, null
  br i1 %103, label %327, label %99, !llvm.loop !92

104:                                              ; preds = %47
  %105 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %106 = load ptr, ptr %105, align 8, !tbaa !45
  %107 = icmp eq ptr %106, null
  br i1 %107, label %327, label %111

108:                                              ; preds = %140, %136
  %109 = load ptr, ptr %112, align 8, !tbaa !45
  %110 = icmp eq ptr %109, null
  br i1 %110, label %327, label %111, !llvm.loop !93

111:                                              ; preds = %104, %108
  %112 = phi ptr [ %109, %108 ], [ %106, %104 ]
  %113 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %112, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0) #15
  %114 = icmp eq ptr %112, %1
  %115 = select i1 %114, i1 %13, i1 false
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.TreeElement, ptr %113, i64 0, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !69
  %119 = getelementptr inbounds %struct.TreeStoreElem, ptr %118, i64 0, i32 2
  %120 = load i16, ptr %119, align 4, !tbaa !85
  %121 = and i16 %120, -2
  store i16 %121, ptr %119, align 4, !tbaa !85
  br label %122

122:                                              ; preds = %116, %111
  %123 = getelementptr inbounds %struct.Scene, ptr %112, i64 0, i32 5
  %124 = load ptr, ptr %123, align 8, !tbaa !45
  %125 = icmp eq ptr %124, null
  br i1 %125, label %136, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.TreeElement, ptr %113, i64 0, i32 3
  br label %128

128:                                              ; preds = %126, %128
  %129 = phi ptr [ %124, %126 ], [ %134, %128 ]
  %130 = getelementptr inbounds %struct.Base, ptr %129, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !94
  %132 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %127, ptr noundef %131, ptr noundef %113, i16 noundef signext 0, i16 noundef signext 0) #15
  %133 = getelementptr inbounds %struct.TreeElement, ptr %132, i64 0, i32 12
  store ptr %129, ptr %133, align 8, !tbaa !96
  %134 = load ptr, ptr %129, align 8, !tbaa !45
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %128, !llvm.loop !97

136:                                              ; preds = %128, %122
  %137 = getelementptr inbounds %struct.TreeElement, ptr %113, i64 0, i32 3
  tail call fastcc void @outliner_make_hierarchy(ptr noundef nonnull %137) #15
  %138 = load ptr, ptr %123, align 8, !tbaa !45
  %139 = icmp eq ptr %138, null
  br i1 %139, label %108, label %140

140:                                              ; preds = %136, %140
  %141 = phi ptr [ %145, %140 ], [ %138, %136 ]
  %142 = getelementptr inbounds %struct.Base, ptr %141, i64 0, i32 7
  %143 = load ptr, ptr %142, align 8, !tbaa !94
  %144 = getelementptr inbounds %struct.ID, ptr %143, i64 0, i32 2
  store ptr null, ptr %144, align 8, !tbaa !79
  %145 = load ptr, ptr %141, align 8, !tbaa !45
  %146 = icmp eq ptr %145, null
  br i1 %146, label %108, label %140, !llvm.loop !98

147:                                              ; preds = %47
  tail call fastcc void @outliner_add_scene_contents(ptr noundef nonnull %2, ptr noundef nonnull %30, ptr noundef %1, ptr noundef null) #15
  %148 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %149 = load ptr, ptr %148, align 8, !tbaa !45
  %150 = icmp eq ptr %149, null
  br i1 %150, label %159, label %151

151:                                              ; preds = %147, %151
  %152 = phi ptr [ %157, %151 ], [ %149, %147 ]
  %153 = getelementptr inbounds %struct.Base, ptr %152, i64 0, i32 7
  %154 = load ptr, ptr %153, align 8, !tbaa !94
  %155 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef %154, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0) #15
  %156 = getelementptr inbounds %struct.TreeElement, ptr %155, i64 0, i32 12
  store ptr %152, ptr %156, align 8, !tbaa !96
  %157 = load ptr, ptr %152, align 8, !tbaa !45
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %151, !llvm.loop !99

159:                                              ; preds = %151, %147
  tail call fastcc void @outliner_make_hierarchy(ptr noundef nonnull %30) #15
  br label %327

160:                                              ; preds = %47
  %161 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %162 = load ptr, ptr %161, align 8, !tbaa !45
  %163 = icmp eq ptr %162, null
  br i1 %163, label %180, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  br label %166

166:                                              ; preds = %164, %177
  %167 = phi ptr [ %162, %164 ], [ %178, %177 ]
  %168 = getelementptr inbounds %struct.Base, ptr %167, i64 0, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !100
  %170 = load i32, ptr %165, align 8, !tbaa !101
  %171 = and i32 %170, %169
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.Base, ptr %167, i64 0, i32 7
  %175 = load ptr, ptr %174, align 8, !tbaa !94
  %176 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef %175, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0) #15
  br label %177

177:                                              ; preds = %166, %173
  %178 = load ptr, ptr %167, align 8, !tbaa !45
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %166, !llvm.loop !118

180:                                              ; preds = %177, %160
  tail call fastcc void @outliner_make_hierarchy(ptr noundef nonnull %30) #15
  br label %327

181:                                              ; preds = %47
  %182 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %183 = load ptr, ptr %182, align 8, !tbaa !45
  %184 = icmp eq ptr %183, null
  br i1 %184, label %327, label %185

185:                                              ; preds = %181, %215
  %186 = phi ptr [ %216, %215 ], [ %183, %181 ]
  %187 = getelementptr inbounds %struct.Group, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !119
  %189 = icmp eq ptr %188, null
  br i1 %189, label %215, label %190

190:                                              ; preds = %185
  %191 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %186, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0) #15
  %192 = load ptr, ptr %187, align 8, !tbaa !45
  %193 = icmp eq ptr %192, null
  br i1 %193, label %204, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.TreeElement, ptr %191, i64 0, i32 3
  br label %196

196:                                              ; preds = %194, %196
  %197 = phi ptr [ %192, %194 ], [ %202, %196 ]
  %198 = getelementptr inbounds %struct.GroupObject, ptr %197, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !121
  %200 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %195, ptr noundef %199, ptr noundef %191, i16 noundef signext 0, i16 noundef signext 0) #15
  %201 = getelementptr inbounds %struct.TreeElement, ptr %200, i64 0, i32 12
  store ptr null, ptr %201, align 8, !tbaa !96
  %202 = load ptr, ptr %197, align 8, !tbaa !45
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %196, !llvm.loop !123

204:                                              ; preds = %196, %190
  %205 = getelementptr inbounds %struct.TreeElement, ptr %191, i64 0, i32 3
  tail call fastcc void @outliner_make_hierarchy(ptr noundef nonnull %205) #15
  %206 = load ptr, ptr %187, align 8, !tbaa !45
  %207 = icmp eq ptr %206, null
  br i1 %207, label %215, label %208

208:                                              ; preds = %204, %208
  %209 = phi ptr [ %213, %208 ], [ %206, %204 ]
  %210 = getelementptr inbounds %struct.GroupObject, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !121
  %212 = getelementptr inbounds %struct.ID, ptr %211, i64 0, i32 2
  store ptr null, ptr %212, align 8, !tbaa !79
  %213 = load ptr, ptr %209, align 8, !tbaa !45
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %208, !llvm.loop !124

215:                                              ; preds = %208, %204, %185
  %216 = load ptr, ptr %186, align 8, !tbaa !45
  %217 = icmp eq ptr %216, null
  br i1 %217, label %327, label %185, !llvm.loop !125

218:                                              ; preds = %47
  %219 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %220 = load ptr, ptr %219, align 8, !tbaa !126
  %221 = icmp eq ptr %220, null
  br i1 %221, label %327, label %222

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.Base, ptr %220, i64 0, i32 7
  %224 = load ptr, ptr %223, align 8, !tbaa !94
  %225 = icmp eq ptr %224, null
  br i1 %225, label %327, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %228 = load ptr, ptr %227, align 8, !tbaa !45
  %229 = icmp eq ptr %228, null
  br i1 %229, label %246, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.Object, ptr %224, i64 0, i32 3
  br label %232

232:                                              ; preds = %230, %243
  %233 = phi ptr [ %228, %230 ], [ %244, %243 ]
  %234 = getelementptr inbounds %struct.Base, ptr %233, i64 0, i32 7
  %235 = load ptr, ptr %234, align 8, !tbaa !94
  %236 = getelementptr inbounds %struct.Object, ptr %235, i64 0, i32 3
  %237 = load i16, ptr %236, align 8, !tbaa !127
  %238 = load i16, ptr %231, align 8, !tbaa !127
  %239 = icmp eq i16 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %232
  %241 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %235, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0) #15
  %242 = getelementptr inbounds %struct.TreeElement, ptr %241, i64 0, i32 12
  store ptr %233, ptr %242, align 8, !tbaa !96
  br label %243

243:                                              ; preds = %232, %240
  %244 = load ptr, ptr %233, align 8, !tbaa !45
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %232, !llvm.loop !128

246:                                              ; preds = %243, %226
  tail call fastcc void @outliner_make_hierarchy(ptr noundef nonnull %30) #15
  br label %327

247:                                              ; preds = %47
  %248 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %249 = load ptr, ptr %248, align 8, !tbaa !45
  %250 = icmp eq ptr %249, null
  br i1 %250, label %277, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  %253 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  br label %254

254:                                              ; preds = %251, %274
  %255 = phi ptr [ %249, %251 ], [ %275, %274 ]
  %256 = getelementptr inbounds %struct.Base, ptr %255, i64 0, i32 2
  %257 = load i32, ptr %256, align 8, !tbaa !100
  %258 = load i32, ptr %252, align 8, !tbaa !101
  %259 = and i32 %258, %257
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %274, label %261

261:                                              ; preds = %254
  %262 = load ptr, ptr %253, align 8, !tbaa !126
  %263 = icmp eq ptr %255, %262
  br i1 %263, label %269, label %264

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.Base, ptr %255, i64 0, i32 4
  %266 = load i32, ptr %265, align 8, !tbaa !129
  %267 = and i32 %266, 1
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %264, %261
  %270 = getelementptr inbounds %struct.Base, ptr %255, i64 0, i32 7
  %271 = load ptr, ptr %270, align 8, !tbaa !94
  %272 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef %271, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0) #15
  %273 = getelementptr inbounds %struct.TreeElement, ptr %272, i64 0, i32 12
  store ptr %255, ptr %273, align 8, !tbaa !96
  br label %274

274:                                              ; preds = %254, %269, %264
  %275 = load ptr, ptr %255, align 8, !tbaa !45
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %254, !llvm.loop !130

277:                                              ; preds = %274, %247
  tail call fastcc void @outliner_make_hierarchy(ptr noundef nonnull %30) #15
  br label %327

278:                                              ; preds = %47
  %279 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %1, i8 noundef zeroext 0) #16
  %280 = icmp eq ptr %279, null
  br i1 %280, label %329, label %281

281:                                              ; preds = %278
  %282 = load ptr, ptr %279, align 8, !tbaa !131
  %283 = load ptr, ptr %282, align 8, !tbaa !34
  %284 = icmp eq ptr %283, null
  br i1 %284, label %329, label %285

285:                                              ; preds = %281, %292
  %286 = phi ptr [ %293, %292 ], [ %283, %281 ]
  %287 = tail call fastcc i32 @need_add_seq_dup(ptr noundef nonnull %286) #15, !range !133
  switch i32 %287, label %292 [
    i32 1, label %288
    i32 0, label %290
  ]

288:                                              ; preds = %285
  %289 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %286, ptr noundef null, i16 noundef signext 26, i16 noundef signext 0) #15
  br label %292

290:                                              ; preds = %285
  %291 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %286, ptr noundef null, i16 noundef signext 28, i16 noundef signext 0) #15
  tail call fastcc void @outliner_add_seq_dup(ptr noundef %2, ptr noundef nonnull %286, ptr noundef %291) #15
  br label %292

292:                                              ; preds = %285, %290, %288
  %293 = load ptr, ptr %286, align 8, !tbaa !134
  %294 = icmp eq ptr %293, null
  br i1 %294, label %327, label %285, !llvm.loop !136

295:                                              ; preds = %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @RNA_main_pointer_create(ptr noundef %0, ptr noundef nonnull %4) #16
  %296 = call fastcc ptr @outliner_add_element(ptr noundef nonnull %2, ptr noundef nonnull %30, ptr noundef nonnull %4, ptr noundef null, i16 noundef signext 30, i16 noundef signext -1) #15
  br i1 %13, label %297, label %303

297:                                              ; preds = %295
  %298 = getelementptr inbounds %struct.TreeElement, ptr %296, i64 0, i32 6
  %299 = load ptr, ptr %298, align 8, !tbaa !69
  %300 = getelementptr inbounds %struct.TreeStoreElem, ptr %299, i64 0, i32 2
  %301 = load i16, ptr %300, align 4, !tbaa !85
  %302 = and i16 %301, -2
  store i16 %302, ptr %300, align 4, !tbaa !85
  br label %303

303:                                              ; preds = %297, %295
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br label %327

304:                                              ; preds = %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_UserPreferences, ptr noundef nonnull @U, ptr noundef nonnull %5) #16
  %305 = call fastcc ptr @outliner_add_element(ptr noundef nonnull %2, ptr noundef nonnull %30, ptr noundef nonnull %5, ptr noundef null, i16 noundef signext 30, i16 noundef signext -1) #15
  br i1 %13, label %306, label %312

306:                                              ; preds = %304
  %307 = getelementptr inbounds %struct.TreeElement, ptr %305, i64 0, i32 6
  %308 = load ptr, ptr %307, align 8, !tbaa !69
  %309 = getelementptr inbounds %struct.TreeStoreElem, ptr %308, i64 0, i32 2
  %310 = load i16, ptr %309, align 4, !tbaa !85
  %311 = and i16 %310, -2
  store i16 %311, ptr %309, align 4, !tbaa !85
  br label %312

312:                                              ; preds = %306, %304
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %327

313:                                              ; preds = %47
  %314 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %315 = load ptr, ptr %314, align 8, !tbaa !126
  %316 = icmp eq ptr %315, null
  br i1 %316, label %320, label %317

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.Base, ptr %315, i64 0, i32 7
  %319 = load ptr, ptr %318, align 8, !tbaa !94
  br label %320

320:                                              ; preds = %313, %317
  %321 = phi ptr [ %319, %317 ], [ null, %313 ]
  %322 = tail call fastcc ptr @outliner_add_element(ptr noundef nonnull %2, ptr noundef nonnull %30, ptr noundef %321, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0) #15
  %323 = icmp eq ptr %322, null
  br i1 %323, label %327, label %324

324:                                              ; preds = %320
  %325 = load ptr, ptr %314, align 8, !tbaa !126
  %326 = getelementptr inbounds %struct.TreeElement, ptr %322, i64 0, i32 12
  store ptr %325, ptr %326, align 8, !tbaa !96
  br label %327

327:                                              ; preds = %292, %215, %108, %99, %181, %104, %76, %218, %222, %246, %180, %312, %324, %320, %303, %277, %159
  call fastcc void @outliner_sort(ptr noundef nonnull %30) #15
  %328 = call fastcc i32 @outliner_filter_tree(ptr noundef %2, ptr noundef nonnull %30) #15, !range !137
  br label %329

329:                                              ; preds = %278, %281, %33, %327
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_mempool_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @outliner_add_element(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, i16 noundef signext %5) unnamed_addr #0 !PGOFuncName !138 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca [64 x i8], align 16
  %10 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %11

11:                                               ; preds = %186, %6
  %12 = phi ptr [ %1, %6 ], [ %187, %186 ]
  %13 = phi ptr [ %2, %6 ], [ %189, %186 ]
  %14 = phi ptr [ %3, %6 ], [ %34, %186 ]
  %15 = phi i16 [ %4, %6 ], [ 27, %186 ]
  %16 = phi ptr [ poison, %6 ], [ %190, %186 ]
  %17 = phi i1 [ false, %6 ], [ true, %186 ]
  %18 = add i16 %15, -30
  %19 = icmp ult i16 %18, 3
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load ptr, ptr %13, align 8, !tbaa !139
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.PointerRNA, ptr %13, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !140
  br label %26

26:                                               ; preds = %11, %23
  %27 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %28 = icmp ne i16 %15, 36
  %29 = icmp eq ptr %27, null
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %486, label %31

31:                                               ; preds = %20, %26
  %32 = phi ptr [ %27, %26 ], [ %21, %20 ]
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %34 = tail call ptr %33(i64 noundef 104, ptr noundef nonnull @.str.1) #16
  tail call void @BLI_addtail(ptr noundef %12, ptr noundef %34) #16
  tail call fastcc void @check_persistent(ptr noundef %0, ptr noundef %34, ptr noundef %32, i16 noundef signext %15, i16 noundef signext %5) #15
  %35 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !69
  %37 = load i16, ptr %10, align 2, !tbaa !77
  %38 = and i16 %37, 4
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.TreeStoreElem, ptr %36, i64 0, i32 2
  %42 = load i16, ptr %41, align 4, !tbaa !85
  %43 = or i16 %42, 8
  store i16 %43, ptr %41, align 4, !tbaa !85
  br label %44

44:                                               ; preds = %40, %31
  %45 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 2
  store ptr %14, ptr %45, align 8, !tbaa !74
  %46 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 8
  store i16 %5, ptr %46, align 2, !tbaa !141
  switch i16 %15, label %47 [
    i16 26, label %164
    i16 27, label %191
    i16 28, label %198
    i16 15, label %66
    i16 32, label %209
    i16 31, label %209
    i16 30, label %209
    i16 36, label %486
  ]

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 4
  %49 = load i16, ptr %48, align 8, !tbaa !64
  %50 = icmp eq i16 %49, 18764
  %51 = getelementptr inbounds %struct.Library, ptr %32, i64 0, i32 3
  %52 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 4, i64 2
  %53 = select i1 %50, ptr %51, ptr %52
  %54 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 9
  store i16 %49, ptr %55, align 4, !tbaa !71
  switch i16 %15, label %486 [
    i16 0, label %56
    i16 34, label %424
  ]

56:                                               ; preds = %47
  %57 = icmp eq ptr %14, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !69
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i16, ptr %60, align 8, !tbaa !66
  %64 = icmp eq i16 %63, 36
  br i1 %64, label %486, label %65

65:                                               ; preds = %56, %62, %58
  tail call fastcc void @outliner_add_id_contents(ptr noundef nonnull %0, ptr noundef nonnull %34, ptr noundef nonnull %32) #15
  br label %486

66:                                               ; preds = %44
  %67 = getelementptr inbounds %struct.IdAdtTemplate, ptr %13, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !142
  %69 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr @.str.2, ptr %69, align 8, !tbaa !46
  %70 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %68, ptr %70, align 8, !tbaa !96
  %71 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %72 = load ptr, ptr %68, align 8, !tbaa !144
  %73 = tail call fastcc ptr @outliner_add_element(ptr noundef nonnull %0, ptr noundef nonnull %71, ptr noundef %72, ptr noundef nonnull %34, i16 noundef signext 0, i16 noundef signext 0) #15
  %74 = getelementptr inbounds %struct.AnimData, ptr %68, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !146
  %76 = icmp eq ptr %75, null
  br i1 %76, label %127, label %77

77:                                               ; preds = %66
  %78 = tail call fastcc ptr @outliner_add_element(ptr noundef nonnull %0, ptr noundef nonnull %71, ptr noundef nonnull %68, ptr noundef nonnull %34, i16 noundef signext 16, i16 noundef signext 0) #15
  %79 = getelementptr inbounds %struct.TreeElement, ptr %78, i64 0, i32 11
  store ptr @.str.3, ptr %79, align 8, !tbaa !46
  %80 = load ptr, ptr %74, align 8, !tbaa !45
  %81 = icmp eq ptr %80, null
  br i1 %81, label %127, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.TreeElement, ptr %78, i64 0, i32 3
  br label %84

84:                                               ; preds = %82, %123
  %85 = phi ptr [ %80, %82 ], [ %125, %123 ]
  %86 = phi ptr [ null, %82 ], [ %124, %123 ]
  %87 = getelementptr inbounds %struct.FCurve, ptr %85, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !147
  %89 = icmp eq ptr %88, null
  br i1 %89, label %123, label %90

90:                                               ; preds = %84
  %91 = load ptr, ptr %88, align 8, !tbaa !149
  %92 = icmp eq ptr %91, null
  br i1 %92, label %123, label %93

93:                                               ; preds = %90, %119
  %94 = phi ptr [ %120, %119 ], [ %86, %90 ]
  %95 = phi ptr [ %121, %119 ], [ %91, %90 ]
  %96 = getelementptr inbounds %struct.DriverVar, ptr %95, i64 0, i32 4
  %97 = load i16, ptr %96, align 8, !tbaa !151
  %98 = icmp sgt i16 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.DriverVar, ptr %95, i64 0, i32 3
  br label %101

101:                                              ; preds = %99, %112
  %102 = phi i16 [ %113, %112 ], [ %97, %99 ]
  %103 = phi ptr [ %114, %112 ], [ %94, %99 ]
  %104 = phi ptr [ %116, %112 ], [ %100, %99 ]
  %105 = phi i32 [ %115, %112 ], [ 0, %99 ]
  %106 = load ptr, ptr %104, align 8, !tbaa !153
  %107 = icmp eq ptr %103, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %101
  %109 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %83, ptr noundef %106, ptr noundef %78, i16 noundef signext 11, i16 noundef signext 0) #15
  %110 = load ptr, ptr %104, align 8, !tbaa !153
  %111 = load i16, ptr %96, align 8, !tbaa !151
  br label %112

112:                                              ; preds = %101, %108
  %113 = phi i16 [ %111, %108 ], [ %102, %101 ]
  %114 = phi ptr [ %110, %108 ], [ %103, %101 ]
  %115 = add nuw nsw i32 %105, 1
  %116 = getelementptr inbounds %struct.DriverTarget, ptr %104, i64 1
  %117 = sext i16 %113 to i32
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %101, label %119, !llvm.loop !155

119:                                              ; preds = %112, %93
  %120 = phi ptr [ %94, %93 ], [ %114, %112 ]
  %121 = load ptr, ptr %95, align 8, !tbaa !156
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %93, !llvm.loop !157

123:                                              ; preds = %119, %84, %90
  %124 = phi ptr [ %86, %90 ], [ %86, %84 ], [ %120, %119 ]
  %125 = load ptr, ptr %85, align 8, !tbaa !45
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %84, !llvm.loop !158

127:                                              ; preds = %123, %77, %66
  %128 = getelementptr inbounds %struct.AnimData, ptr %68, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !159
  %130 = icmp eq ptr %129, null
  br i1 %130, label %486, label %131

131:                                              ; preds = %127
  %132 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %71, ptr noundef nonnull %68, ptr noundef %34, i16 noundef signext 1, i16 noundef signext 0) #15
  %133 = getelementptr inbounds %struct.TreeElement, ptr %132, i64 0, i32 11
  store ptr @.str.4, ptr %133, align 8, !tbaa !46
  %134 = load ptr, ptr %128, align 8, !tbaa !45
  %135 = icmp eq ptr %134, null
  br i1 %135, label %486, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.TreeElement, ptr %132, i64 0, i32 3
  br label %141

138:                                              ; preds = %160, %141
  %139 = load ptr, ptr %142, align 8, !tbaa !45
  %140 = icmp eq ptr %139, null
  br i1 %140, label %486, label %141, !llvm.loop !160

141:                                              ; preds = %136, %138
  %142 = phi ptr [ %134, %136 ], [ %139, %138 ]
  %143 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %137, ptr noundef nonnull %142, ptr noundef %132, i16 noundef signext 33, i16 noundef signext 0) #15
  %144 = getelementptr inbounds %struct.NlaTrack, ptr %142, i64 0, i32 5
  %145 = getelementptr inbounds %struct.TreeElement, ptr %143, i64 0, i32 11
  store ptr %144, ptr %145, align 8, !tbaa !46
  %146 = getelementptr inbounds %struct.NlaTrack, ptr %142, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !45
  %148 = icmp eq ptr %147, null
  br i1 %148, label %138, label %149

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.TreeElement, ptr %143, i64 0, i32 3
  br label %151

151:                                              ; preds = %149, %160
  %152 = phi ptr [ %147, %149 ], [ %162, %160 ]
  %153 = phi i16 [ 0, %149 ], [ %161, %160 ]
  %154 = getelementptr inbounds %struct.NlaStrip, ptr %152, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !161
  %156 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %150, ptr noundef %155, ptr noundef %143, i16 noundef signext 2, i16 noundef signext %153) #15
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.TreeElement, ptr %156, i64 0, i32 12
  store ptr %152, ptr %159, align 8, !tbaa !96
  br label %160

160:                                              ; preds = %151, %158
  %161 = add i16 %153, 1
  %162 = load ptr, ptr %152, align 8, !tbaa !45
  %163 = icmp eq ptr %162, null
  br i1 %163, label %138, label %151, !llvm.loop !163

164:                                              ; preds = %44
  %165 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 6
  %166 = load i32, ptr %165, align 4, !tbaa !164
  %167 = trunc i32 %166 to i16
  %168 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 9
  store i16 %167, ptr %168, align 4, !tbaa !71
  %169 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %13, ptr %169, align 8, !tbaa !96
  %170 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 4, i64 2
  %171 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %170, ptr %171, align 8, !tbaa !46
  %172 = icmp slt i32 %166, 8
  br i1 %172, label %173, label %486

173:                                              ; preds = %164
  %174 = icmp eq i32 %166, 1
  br i1 %174, label %175, label %186

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 36
  %177 = load ptr, ptr %176, align 8, !tbaa !45
  %178 = icmp eq ptr %177, null
  br i1 %178, label %486, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %181

181:                                              ; preds = %179, %181
  %182 = phi ptr [ %177, %179 ], [ %184, %181 ]
  %183 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %180, ptr noundef nonnull %182, ptr noundef %34, i16 noundef signext 26, i16 noundef signext %5) #15
  %184 = load ptr, ptr %182, align 8, !tbaa !45
  %185 = icmp eq ptr %184, null
  br i1 %185, label %486, label %181, !llvm.loop !165

186:                                              ; preds = %173
  %187 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %188 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 24
  %189 = load ptr, ptr %188, align 8, !tbaa !166
  %190 = select i1 %17, ptr %16, ptr %34
  br label %11

191:                                              ; preds = %44
  %192 = getelementptr inbounds %struct.Strip, ptr %13, i64 0, i32 7
  %193 = load i8, ptr %192, align 8, !tbaa !76
  %194 = icmp eq i8 %193, 0
  %195 = select i1 %194, ptr @.str.5, ptr %192
  %196 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %195, ptr %196, align 8
  %197 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %13, ptr %197, align 8, !tbaa !96
  br label %486

198:                                              ; preds = %44
  %199 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 6
  %200 = load i32, ptr %199, align 4, !tbaa !164
  %201 = trunc i32 %200 to i16
  %202 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 9
  store i16 %201, ptr %202, align 4, !tbaa !71
  %203 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %13, ptr %203, align 8, !tbaa !96
  %204 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 24
  %205 = load ptr, ptr %204, align 8, !tbaa !166
  %206 = getelementptr inbounds %struct.Strip, ptr %205, i64 0, i32 6
  %207 = load ptr, ptr %206, align 8, !tbaa !167
  %208 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %207, ptr %208, align 8, !tbaa !46
  br label %486

209:                                              ; preds = %44, %44, %44
  %210 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #17
  %211 = getelementptr inbounds %struct.PointerRNA, ptr %13, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !140
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr @.str.6, ptr %215, align 8, !tbaa !46
  br label %423

216:                                              ; preds = %209
  switch i16 %15, label %423 [
    i16 30, label %217
    i16 31, label %291
    i16 32, label %402
  ]

217:                                              ; preds = %216
  %218 = tail call ptr @RNA_struct_name_get_alloc(ptr noundef nonnull %13, ptr noundef null, i32 noundef 0, ptr noundef null) #16
  %219 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %218, ptr %219, align 8, !tbaa !46
  %220 = icmp eq ptr %218, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %223 = load i16, ptr %222, align 8, !tbaa !39
  %224 = or i16 %223, 8
  store i16 %224, ptr %222, align 8, !tbaa !39
  br label %229

225:                                              ; preds = %217
  %226 = getelementptr inbounds %struct.PointerRNA, ptr %13, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !169
  %228 = tail call ptr @RNA_struct_ui_name(ptr noundef %227) #16
  store ptr %228, ptr %219, align 8, !tbaa !46
  br label %229

229:                                              ; preds = %225, %221
  %230 = phi ptr [ %228, %225 ], [ %218, %221 ]
  %231 = load i16, ptr %10, align 2, !tbaa !77
  %232 = and i16 %231, 4
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %241, label %234

234:                                              ; preds = %229
  %235 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull @.str.7, ptr noundef %230) #16
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.TreeStoreElem, ptr %36, i64 0, i32 2
  %239 = load i16, ptr %238, align 4, !tbaa !85
  %240 = and i16 %239, -9
  store i16 %240, ptr %238, align 4, !tbaa !85
  br label %241

241:                                              ; preds = %237, %234, %229
  %242 = getelementptr inbounds %struct.PointerRNA, ptr %13, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !169
  %244 = tail call ptr @RNA_struct_iterator_property(ptr noundef %243) #16
  %245 = tail call i32 @RNA_property_collection_length(ptr noundef nonnull %13, ptr noundef %244) #16
  %246 = icmp eq ptr %14, null
  br i1 %246, label %252, label %247

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 12
  %249 = load ptr, ptr %248, align 8, !tbaa !96
  %250 = tail call i32 @RNA_property_type(ptr noundef %249) #16
  %251 = icmp eq i32 %250, 5
  br i1 %251, label %252, label %260

252:                                              ; preds = %247, %241
  %253 = getelementptr inbounds %struct.TreeStoreElem, ptr %36, i64 0, i32 3
  %254 = load i16, ptr %253, align 2, !tbaa !57
  %255 = icmp eq i16 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.TreeStoreElem, ptr %36, i64 0, i32 2
  %258 = load i16, ptr %257, align 4, !tbaa !85
  %259 = and i16 %258, -2
  store i16 %259, ptr %257, align 4, !tbaa !85
  br label %260

260:                                              ; preds = %252, %256, %247
  %261 = getelementptr inbounds %struct.TreeStoreElem, ptr %36, i64 0, i32 2
  %262 = load i16, ptr %261, align 4, !tbaa !85
  %263 = zext i16 %262 to i32
  %264 = and i32 %263, 1
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %273, label %266

266:                                              ; preds = %260
  %267 = load i16, ptr %10, align 2, !tbaa !77
  %268 = and i16 %267, 4
  %269 = icmp eq i16 %268, 0
  %270 = and i32 %263, 8
  %271 = icmp eq i32 %270, 0
  %272 = or i1 %271, %269
  br i1 %272, label %283, label %273

273:                                              ; preds = %266, %260
  %274 = icmp sgt i32 %245, 0
  br i1 %274, label %275, label %289

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %277

277:                                              ; preds = %275, %277
  %278 = phi i32 [ 0, %275 ], [ %281, %277 ]
  %279 = trunc i32 %278 to i16
  %280 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %276, ptr noundef %13, ptr noundef %34, i16 noundef signext 31, i16 noundef signext %279) #15
  %281 = add nuw nsw i32 %278, 1
  %282 = icmp eq i32 %281, %245
  br i1 %282, label %289, label %277, !llvm.loop !170

283:                                              ; preds = %266
  %284 = icmp eq i32 %245, 0
  br i1 %284, label %289, label %285

285:                                              ; preds = %283
  %286 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %287 = load i16, ptr %286, align 8, !tbaa !39
  %288 = or i16 %287, 4
  store i16 %288, ptr %286, align 8, !tbaa !39
  br label %289

289:                                              ; preds = %277, %273, %283, %285
  %290 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %290, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !171
  br label %423

291:                                              ; preds = %216
  %292 = getelementptr inbounds %struct.PointerRNA, ptr %13, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !169
  %294 = tail call ptr @RNA_struct_iterator_property(ptr noundef %293) #16
  %295 = sext i16 %5 to i32
  %296 = call i32 @RNA_property_collection_lookup_int(ptr noundef nonnull %13, ptr noundef %294, i32 noundef %295, ptr noundef nonnull %8) #16
  %297 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !140
  %299 = call i32 @RNA_property_type(ptr noundef %298) #16
  %300 = call ptr @RNA_property_ui_name(ptr noundef %298) #16
  %301 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %300, ptr %301, align 8, !tbaa !46
  %302 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %298, ptr %302, align 8, !tbaa !96
  %303 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %303, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !171
  %304 = load i16, ptr %10, align 2, !tbaa !77
  %305 = and i16 %304, 4
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %314, label %307

307:                                              ; preds = %291
  %308 = call i32 @BLI_strcasecmp(ptr noundef nonnull @.str.7, ptr noundef %300) #16
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %307
  %311 = getelementptr inbounds %struct.TreeStoreElem, ptr %36, i64 0, i32 2
  %312 = load i16, ptr %311, align 4, !tbaa !85
  %313 = and i16 %312, -9
  store i16 %313, ptr %311, align 4, !tbaa !85
  br label %314

314:                                              ; preds = %310, %307, %291
  switch i32 %299, label %370 [
    i32 5, label %315
    i32 6, label %339
  ]

315:                                              ; preds = %314
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef nonnull %13, ptr noundef %298) #16
  %316 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !140
  %318 = icmp eq ptr %317, null
  br i1 %318, label %423, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.TreeStoreElem, ptr %36, i64 0, i32 2
  %321 = load i16, ptr %320, align 4, !tbaa !85
  %322 = zext i16 %321 to i32
  %323 = and i32 %322, 1
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %319
  %326 = load i16, ptr %10, align 2, !tbaa !77
  %327 = and i16 %326, 4
  %328 = icmp eq i16 %327, 0
  %329 = and i32 %322, 8
  %330 = icmp eq i32 %329, 0
  %331 = or i1 %330, %328
  br i1 %331, label %335, label %332

332:                                              ; preds = %325, %319
  %333 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %334 = call fastcc ptr @outliner_add_element(ptr noundef nonnull %0, ptr noundef nonnull %333, ptr noundef nonnull %7, ptr noundef nonnull %34, i16 noundef signext 30, i16 noundef signext -1) #15
  br label %423

335:                                              ; preds = %325
  %336 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %337 = load i16, ptr %336, align 8, !tbaa !39
  %338 = or i16 %337, 4
  store i16 %338, ptr %336, align 8, !tbaa !39
  br label %423

339:                                              ; preds = %314
  %340 = call i32 @RNA_property_collection_length(ptr noundef nonnull %13, ptr noundef %298) #16
  %341 = getelementptr inbounds %struct.TreeStoreElem, ptr %36, i64 0, i32 2
  %342 = load i16, ptr %341, align 4, !tbaa !85
  %343 = zext i16 %342 to i32
  %344 = and i32 %343, 1
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %353, label %346

346:                                              ; preds = %339
  %347 = load i16, ptr %10, align 2, !tbaa !77
  %348 = and i16 %347, 4
  %349 = icmp eq i16 %348, 0
  %350 = and i32 %343, 8
  %351 = icmp eq i32 %350, 0
  %352 = or i1 %351, %349
  br i1 %352, label %364, label %353

353:                                              ; preds = %346, %339
  %354 = icmp sgt i32 %340, 0
  br i1 %354, label %355, label %423

355:                                              ; preds = %353
  %356 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %357

357:                                              ; preds = %355, %357
  %358 = phi i32 [ 0, %355 ], [ %362, %357 ]
  %359 = call i32 @RNA_property_collection_lookup_int(ptr noundef %13, ptr noundef %298, i32 noundef %358, ptr noundef nonnull %7) #16
  %360 = trunc i32 %358 to i16
  %361 = call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %356, ptr noundef nonnull %7, ptr noundef %34, i16 noundef signext 30, i16 noundef signext %360) #15
  %362 = add nuw nsw i32 %358, 1
  %363 = icmp eq i32 %362, %340
  br i1 %363, label %423, label %357, !llvm.loop !172

364:                                              ; preds = %346
  %365 = icmp eq i32 %340, 0
  br i1 %365, label %423, label %366

366:                                              ; preds = %364
  %367 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %368 = load i16, ptr %367, align 8, !tbaa !39
  %369 = or i16 %368, 4
  store i16 %369, ptr %367, align 8, !tbaa !39
  br label %423

370:                                              ; preds = %314
  %371 = icmp ult i32 %299, 3
  br i1 %371, label %372, label %423

372:                                              ; preds = %370
  %373 = call i32 @RNA_property_array_length(ptr noundef nonnull %13, ptr noundef %298) #16
  %374 = getelementptr inbounds %struct.TreeStoreElem, ptr %36, i64 0, i32 2
  %375 = load i16, ptr %374, align 4, !tbaa !85
  %376 = zext i16 %375 to i32
  %377 = and i32 %376, 1
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %386, label %379

379:                                              ; preds = %372
  %380 = load i16, ptr %10, align 2, !tbaa !77
  %381 = and i16 %380, 4
  %382 = icmp eq i16 %381, 0
  %383 = and i32 %376, 8
  %384 = icmp eq i32 %383, 0
  %385 = or i1 %384, %382
  br i1 %385, label %396, label %386

386:                                              ; preds = %379, %372
  %387 = icmp sgt i32 %373, 0
  br i1 %387, label %388, label %423

388:                                              ; preds = %386
  %389 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %390

390:                                              ; preds = %388, %390
  %391 = phi i32 [ 0, %388 ], [ %394, %390 ]
  %392 = trunc i32 %391 to i16
  %393 = call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %389, ptr noundef %13, ptr noundef %34, i16 noundef signext 32, i16 noundef signext %392) #15
  %394 = add nuw nsw i32 %391, 1
  %395 = icmp eq i32 %394, %373
  br i1 %395, label %423, label %390, !llvm.loop !173

396:                                              ; preds = %379
  %397 = icmp eq i32 %373, 0
  br i1 %397, label %423, label %398

398:                                              ; preds = %396
  %399 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %400 = load i16, ptr %399, align 8, !tbaa !39
  %401 = or i16 %400, 4
  store i16 %401, ptr %399, align 8, !tbaa !39
  br label %423

402:                                              ; preds = %216
  %403 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 12
  %404 = load ptr, ptr %403, align 8, !tbaa !96
  %405 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %404, ptr %405, align 8, !tbaa !96
  %406 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %406, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !171
  store i16 %5, ptr %210, align 2, !tbaa !141
  %407 = sext i16 %5 to i32
  %408 = tail call zeroext i8 @RNA_property_array_item_char(ptr noundef %404, i32 noundef %407) #16
  %409 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %410 = tail call ptr %409(i64 noundef 20, ptr noundef nonnull @.str.8) #16
  %411 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %410, ptr %411, align 8, !tbaa !46
  %412 = icmp eq i8 %408, 0
  br i1 %412, label %416, label %413

413:                                              ; preds = %402
  %414 = zext i8 %408 to i32
  %415 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %410, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %414) #16
  br label %419

416:                                              ; preds = %402
  %417 = add nsw i32 %407, 1
  %418 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %410, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %417) #16
  br label %419

419:                                              ; preds = %416, %413
  %420 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %421 = load i16, ptr %420, align 8, !tbaa !39
  %422 = or i16 %421, 8
  store i16 %422, ptr %420, align 8, !tbaa !39
  br label %423

423:                                              ; preds = %357, %390, %353, %386, %216, %289, %419, %332, %335, %315, %370, %396, %398, %366, %364, %214
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #17
  br label %486

424:                                              ; preds = %47
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #17
  %425 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %13, ptr %425, align 8, !tbaa !96
  %426 = getelementptr inbounds %struct.wmKeyMap, ptr %13, i64 0, i32 4
  store ptr %426, ptr %54, align 8, !tbaa !46
  %427 = getelementptr inbounds %struct.TreeStoreElem, ptr %36, i64 0, i32 2
  %428 = load i16, ptr %427, align 4, !tbaa !85
  %429 = zext i16 %428 to i32
  %430 = and i32 %429, 1
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %436, label %432

432:                                              ; preds = %424
  %433 = and i32 %429, 8
  %434 = icmp eq i32 %433, 0
  %435 = or i1 %39, %434
  br i1 %435, label %481, label %436

436:                                              ; preds = %432, %424
  %437 = getelementptr inbounds %struct.wmKeyMap, ptr %13, i64 0, i32 2
  %438 = load ptr, ptr %437, align 8, !tbaa !45
  %439 = icmp eq ptr %438, null
  br i1 %439, label %485, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %442

442:                                              ; preds = %440, %477
  %443 = phi ptr [ %438, %440 ], [ %479, %477 ]
  %444 = phi i16 [ 0, %440 ], [ %478, %477 ]
  %445 = getelementptr inbounds %struct.wmKeyMapItem, ptr %443, i64 0, i32 6
  %446 = load i16, ptr %445, align 2, !tbaa !174
  %447 = call ptr @WM_key_event_string(i16 noundef signext %446) #16
  %448 = load i8, ptr %447, align 1, !tbaa !76
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %477, label %450

450:                                              ; preds = %442
  %451 = getelementptr inbounds %struct.wmKeyMapItem, ptr %443, i64 0, i32 5
  %452 = load i16, ptr %451, align 8, !tbaa !176
  %453 = icmp eq i16 %452, 0
  br i1 %453, label %454, label %461

454:                                              ; preds = %450
  %455 = getelementptr inbounds %struct.wmKeyMapItem, ptr %443, i64 0, i32 2
  %456 = call ptr @WM_operatortype_find(ptr noundef nonnull %455, i8 noundef zeroext 0) #16
  %457 = icmp eq ptr %456, null
  br i1 %457, label %458, label %461

458:                                              ; preds = %454
  %459 = load i16, ptr %451, align 8, !tbaa !176
  %460 = icmp eq i16 %459, 0
  br i1 %460, label %477, label %461

461:                                              ; preds = %450, %458, %454
  %462 = phi ptr [ null, %458 ], [ %456, %454 ], [ null, %450 ]
  %463 = call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %441, ptr noundef nonnull %443, ptr noundef %34, i16 noundef signext 35, i16 noundef signext %444) #15
  %464 = getelementptr inbounds %struct.TreeElement, ptr %463, i64 0, i32 12
  store ptr %443, ptr %464, align 8, !tbaa !96
  %465 = load i16, ptr %451, align 8, !tbaa !176
  %466 = icmp eq i16 %465, 0
  br i1 %466, label %469, label %467

467:                                              ; preds = %461
  %468 = getelementptr inbounds %struct.TreeElement, ptr %463, i64 0, i32 11
  store ptr @.str.11, ptr %468, align 8, !tbaa !46
  br label %477

469:                                              ; preds = %461
  %470 = getelementptr inbounds %struct.wmOperatorType, ptr %462, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !177
  call void @WM_operator_py_idname(ptr noundef nonnull %9, ptr noundef %471) #16
  %472 = call ptr @BLI_strdup(ptr noundef nonnull %9) #16
  %473 = getelementptr inbounds %struct.TreeElement, ptr %463, i64 0, i32 11
  store ptr %472, ptr %473, align 8, !tbaa !46
  %474 = getelementptr inbounds %struct.TreeElement, ptr %463, i64 0, i32 7
  %475 = load i16, ptr %474, align 8, !tbaa !39
  %476 = or i16 %475, 8
  store i16 %476, ptr %474, align 8, !tbaa !39
  br label %477

477:                                              ; preds = %458, %469, %467, %442
  %478 = add i16 %444, 1
  %479 = load ptr, ptr %443, align 8, !tbaa !45
  %480 = icmp eq ptr %479, null
  br i1 %480, label %485, label %442, !llvm.loop !180

481:                                              ; preds = %432
  %482 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %483 = load i16, ptr %482, align 8, !tbaa !39
  %484 = or i16 %483, 4
  store i16 %484, ptr %482, align 8, !tbaa !39
  br label %485

485:                                              ; preds = %477, %436, %481
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #17
  br label %486

486:                                              ; preds = %44, %164, %26, %138, %181, %175, %131, %47, %198, %485, %423, %191, %65, %62, %127
  %487 = phi ptr [ %34, %127 ], [ %34, %62 ], [ %34, %65 ], [ %34, %191 ], [ %34, %423 ], [ %34, %485 ], [ %34, %198 ], [ %34, %47 ], [ %34, %131 ], [ %34, %175 ], [ %34, %181 ], [ %34, %138 ], [ %34, %44 ], [ %34, %164 ], [ null, %26 ]
  %488 = select i1 %17, ptr %16, ptr %487
  ret ptr %488
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_add_library_contents(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef readnone %3) unnamed_addr #0 !PGOFuncName !181 {
  %5 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %5) #17
  %6 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %5) #16
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 3
  %10 = zext nneg i32 %6 to i64
  br label %11

11:                                               ; preds = %8, %51
  %12 = phi i64 [ 0, %8 ], [ %52, %51 ]
  %13 = getelementptr inbounds [35 x ptr], ptr %5, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %11, %22
  %18 = phi ptr [ %23, %22 ], [ %15, %11 ]
  %19 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !182
  %21 = icmp eq ptr %20, %3
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %18, align 8, !tbaa !183
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %17, !llvm.loop !184

25:                                               ; preds = %17
  %26 = call fastcc ptr @outliner_add_element(ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %14, ptr noundef null, i16 noundef signext 36, i16 noundef signext 0) #15
  %27 = load ptr, ptr %13, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.TreeElement, ptr %26, i64 0, i32 12
  store ptr %27, ptr %28, align 8, !tbaa !96
  %29 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4
  %30 = load i16, ptr %29, align 8, !tbaa !64
  %31 = sext i16 %30 to i32
  %32 = call ptr @BKE_idcode_to_name_plural(i32 noundef %31) #16
  %33 = getelementptr inbounds %struct.TreeElement, ptr %26, i64 0, i32 11
  %34 = icmp eq ptr %32, null
  %35 = select i1 %34, ptr @.str.17, ptr %32
  store ptr %35, ptr %33, align 8, !tbaa !46
  %36 = load ptr, ptr %13, align 8, !tbaa !45
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.TreeElement, ptr %26, i64 0, i32 3
  br label %41

41:                                               ; preds = %39, %48
  %42 = phi ptr [ %37, %39 ], [ %49, %48 ]
  %43 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !182
  %45 = icmp eq ptr %44, %3
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call fastcc ptr @outliner_add_element(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull %42, ptr noundef %26, i16 noundef signext 0, i16 noundef signext 0) #15
  br label %48

48:                                               ; preds = %41, %46
  %49 = load ptr, ptr %42, align 8, !tbaa !45
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %41, !llvm.loop !185

51:                                               ; preds = %22, %48, %25, %11
  %52 = add nuw nsw i64 %12, 1
  %53 = icmp eq i64 %52, %10
  br i1 %53, label %54, label %11, !llvm.loop !186

54:                                               ; preds = %51, %4
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %5) #17
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_make_hierarchy(ptr noundef %0) unnamed_addr #0 !PGOFuncName !187 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1, %37
  %5 = phi ptr [ %6, %37 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = load i16, ptr %8, align 8, !tbaa !66
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 9
  %13 = load i16, ptr %12, align 4, !tbaa !71
  %14 = icmp eq i16 %13, 16975
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.TreeStoreElem, ptr %8, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !188
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %5) #16
  %26 = load ptr, ptr %18, align 8, !tbaa !188
  %27 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = getelementptr inbounds %struct.TreeElement, ptr %28, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %29, ptr noundef nonnull %5) #16
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %25, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %25 ]
  %34 = getelementptr inbounds %struct.TreeElement, ptr %33, i64 0, i32 2
  store ptr %28, ptr %34, align 8, !tbaa !74
  %35 = load ptr, ptr %33, align 8, !tbaa !45
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %32, !llvm.loop !189

37:                                               ; preds = %32, %25, %15, %21, %11, %4
  %38 = icmp eq ptr %6, null
  br i1 %38, label %39, label %4, !llvm.loop !190

39:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_add_scene_contents(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !191 {
  %5 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext 19, i16 noundef signext 0) #15
  %6 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 11
  store ptr @.str.18, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 60
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 3
  br label %12

12:                                               ; preds = %10, %33
  %13 = phi ptr [ %8, %10 ], [ %35, %33 ]
  %14 = phi i16 [ 0, %10 ], [ %34, %33 ]
  %15 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, i16 noundef signext 20, i16 noundef signext %14) #15
  %16 = getelementptr inbounds %struct.SceneRenderLayer, ptr %13, i64 0, i32 2
  %17 = getelementptr inbounds %struct.TreeElement, ptr %15, i64 0, i32 11
  store ptr %16, ptr %17, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.SceneRenderLayer, ptr %13, i64 0, i32 8
  %19 = getelementptr inbounds %struct.TreeElement, ptr %15, i64 0, i32 12
  store ptr %18, ptr %19, align 8, !tbaa !96
  %20 = getelementptr inbounds %struct.SceneRenderLayer, ptr %13, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !192
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.TreeElement, ptr %15, i64 0, i32 3
  %25 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %24, ptr noundef nonnull %21, ptr noundef nonnull %15, i16 noundef signext 23, i16 noundef signext 0) #15
  br label %26

26:                                               ; preds = %23, %12
  %27 = getelementptr inbounds %struct.SceneRenderLayer, ptr %13, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !195
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.TreeElement, ptr %15, i64 0, i32 3
  %32 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %31, ptr noundef nonnull %28, ptr noundef nonnull %15, i16 noundef signext 22, i16 noundef signext 0) #15
  br label %33

33:                                               ; preds = %30, %26
  tail call fastcc void @outliner_add_passes(ptr noundef %0, ptr noundef nonnull %15, ptr noundef %2, ptr noundef nonnull %13) #15
  %34 = add i16 %14, 1
  %35 = load ptr, ptr %13, align 8, !tbaa !45
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %12, !llvm.loop !196

37:                                               ; preds = %33, %4
  %38 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !197
  %40 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %39) #15, !range !198
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %44

44:                                               ; preds = %42, %37
  %45 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !199
  %47 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef %1, ptr noundef %46, ptr noundef %3, i16 noundef signext 0, i16 noundef signext 0) #15
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @need_add_seq_dup(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !200 {
  %2 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Strip, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !167
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Sequence, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !201
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %25, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !134
  %15 = icmp eq ptr %14, null
  br i1 %15, label %47, label %32

16:                                               ; preds = %9, %25
  %17 = phi ptr [ %27, %25 ], [ %11, %9 ]
  %18 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !166
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.Strip, ptr %19, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !167
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %29, %16, %21
  %26 = getelementptr inbounds %struct.Sequence, ptr %17, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !201
  %28 = icmp eq ptr %27, null
  br i1 %28, label %13, label %16, !llvm.loop !202

29:                                               ; preds = %21
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %7) #18
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %25

32:                                               ; preds = %13, %41
  %33 = phi ptr [ %42, %41 ], [ %14, %13 ]
  %34 = getelementptr inbounds %struct.Sequence, ptr %33, i64 0, i32 24
  %35 = load ptr, ptr %34, align 8, !tbaa !166
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.Strip, ptr %35, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !167
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %32, %37, %44
  %42 = load ptr, ptr %33, align 8, !tbaa !134
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %32, !llvm.loop !203

44:                                               ; preds = %37
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %7) #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %41

47:                                               ; preds = %29, %44, %41, %13, %1, %5
  %48 = phi i32 [ 1, %5 ], [ 1, %1 ], [ 1, %13 ], [ 0, %44 ], [ 1, %41 ], [ 2, %29 ]
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_add_seq_dup(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !204 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Sequence, ptr %1, i64 0, i32 24
  %7 = getelementptr inbounds %struct.TreeElement, ptr %2, i64 0, i32 3
  br label %8

8:                                                ; preds = %5, %20
  %9 = phi ptr [ %1, %5 ], [ %21, %20 ]
  %10 = getelementptr inbounds %struct.Sequence, ptr %9, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !166
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Strip, ptr %11, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !167
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i8, ptr %15, align 4, !tbaa !76
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %23, %29, %8, %13, %17
  %21 = load ptr, ptr %9, align 8, !tbaa !134
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %8, !llvm.loop !205

23:                                               ; preds = %17
  %24 = load ptr, ptr %6, align 8, !tbaa !166
  %25 = getelementptr inbounds %struct.Strip, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !167
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %26) #18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %20

29:                                               ; preds = %23
  %30 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %2, i16 noundef signext 26, i16 noundef signext 0) #15
  br label %20

31:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: optsize
declare void @RNA_main_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_sort(ptr noundef %0) unnamed_addr #0 !PGOFuncName !206 {
  %2 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !207
  %4 = icmp eq ptr %3, null
  br i1 %4, label %91, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = load i16, ptr %7, align 8, !tbaa !66
  switch i16 %8, label %83 [
    i16 4, label %13
    i16 36, label %13
    i16 0, label %9
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 9
  %11 = load i16, ptr %10, align 4, !tbaa !71
  %12 = icmp eq i16 %11, 16975
  br i1 %12, label %13, label %83

13:                                               ; preds = %5, %5, %9
  br label %14

14:                                               ; preds = %13, %14
  %15 = phi i32 [ %19, %14 ], [ 0, %13 ]
  %16 = phi ptr [ %17, %14 ], [ %0, %13 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = icmp eq ptr %17, null
  %19 = add nuw nsw i32 %15, 1
  br i1 %18, label %20, label %14, !llvm.loop !208

20:                                               ; preds = %14
  %21 = icmp ugt i32 %15, 1
  br i1 %21, label %22, label %83

22:                                               ; preds = %20
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %24 = zext nneg i32 %15 to i64
  %25 = shl nuw nsw i64 %24, 5
  %26 = tail call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.37) #16
  %27 = load ptr, ptr %0, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %51, label %29

29:                                               ; preds = %22, %44
  %30 = phi ptr [ %49, %44 ], [ %27, %22 ]
  %31 = phi ptr [ %48, %44 ], [ %26, %22 ]
  %32 = getelementptr inbounds %struct.TreeElement, ptr %30, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !69
  store ptr %30, ptr %31, align 8, !tbaa !209
  %34 = getelementptr inbounds %struct.TreeElement, ptr %30, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.tTreeSort, ptr %31, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !211
  %37 = getelementptr inbounds %struct.TreeElement, ptr %30, i64 0, i32 9
  %38 = load i16, ptr %37, align 4, !tbaa !71
  %39 = getelementptr inbounds %struct.tTreeSort, ptr %31, i64 0, i32 3
  store i16 %38, ptr %39, align 8, !tbaa !212
  %40 = load i16, ptr %33, align 8, !tbaa !66
  switch i16 %40, label %41 [
    i16 0, label %44
    i16 4, label %44
  ]

41:                                               ; preds = %29
  %42 = icmp eq i16 %40, 36
  %43 = zext i1 %42 to i16
  store i16 %43, ptr %39, align 8
  br label %44

44:                                               ; preds = %41, %29, %29
  %45 = getelementptr inbounds %struct.TreeStoreElem, ptr %33, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = getelementptr inbounds %struct.tTreeSort, ptr %31, i64 0, i32 1
  store ptr %46, ptr %47, align 8, !tbaa !213
  %48 = getelementptr inbounds %struct.tTreeSort, ptr %31, i64 1
  %49 = load ptr, ptr %30, align 8, !tbaa !45
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %29, !llvm.loop !214

51:                                               ; preds = %44, %22
  %52 = getelementptr inbounds %struct.tTreeSort, ptr %26, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !212
  %54 = icmp eq i16 %53, 1
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  br label %58

57:                                               ; preds = %51
  tail call void @qsort(ptr noundef nonnull %26, i64 noundef %24, i64 noundef 32, ptr noundef nonnull @treesort_alpha) #16
  br label %73

58:                                               ; preds = %55, %64
  %59 = phi i32 [ %65, %64 ], [ 0, %55 ]
  %60 = phi ptr [ %66, %64 ], [ %26, %55 ]
  %61 = getelementptr inbounds %struct.tTreeSort, ptr %60, i64 0, i32 3
  %62 = load i16, ptr %61, align 8, !tbaa !212
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = add nuw nsw i32 %59, 1
  %66 = getelementptr inbounds %struct.tTreeSort, ptr %60, i64 1
  %67 = icmp eq i32 %65, %56
  br i1 %67, label %73, label %58, !llvm.loop !215

68:                                               ; preds = %58
  %69 = zext nneg i32 %59 to i64
  %70 = getelementptr inbounds %struct.tTreeSort, ptr %26, i64 %69
  %71 = sub nsw i32 %15, %59
  %72 = sext i32 %71 to i64
  tail call void @qsort(ptr noundef %70, i64 noundef %72, i64 noundef 32, ptr noundef nonnull @treesort_alpha_ob) #16
  br label %73

73:                                               ; preds = %64, %68, %57
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #15
  br label %74

74:                                               ; preds = %73, %74
  %75 = phi ptr [ %26, %73 ], [ %79, %74 ]
  %76 = phi i32 [ %15, %73 ], [ %77, %74 ]
  %77 = add nsw i32 %76, -1
  %78 = load ptr, ptr %75, align 8, !tbaa !209
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %78) #16
  %79 = getelementptr inbounds %struct.tTreeSort, ptr %75, i64 1
  %80 = icmp eq i32 %77, 0
  br i1 %80, label %81, label %74, !llvm.loop !216

81:                                               ; preds = %74
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %82(ptr noundef %26) #16
  br label %83

83:                                               ; preds = %5, %20, %81, %9
  %84 = load ptr, ptr %0, align 8, !tbaa !45
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83, %86
  %87 = phi ptr [ %89, %86 ], [ %84, %83 ]
  %88 = getelementptr inbounds %struct.TreeElement, ptr %87, i64 0, i32 3
  tail call fastcc void @outliner_sort(ptr noundef nonnull %88) #15
  %89 = load ptr, ptr %87, align 8, !tbaa !45
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %86, !llvm.loop !217

91:                                               ; preds = %86, %83, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @outliner_filter_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !218 {
  %3 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 9
  %4 = load i8, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %60, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %56, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %11

11:                                               ; preds = %9, %54
  %12 = phi ptr [ %7, %9 ], [ %13, %54 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = load i16, ptr %10, align 2, !tbaa !77
  %15 = sext i16 %14 to i32
  %16 = tail call fastcc i32 @outliner_filter_has_name(ptr noundef nonnull %12, ptr noundef nonnull %3, i32 noundef %15) #15, !range !137
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct.TreeStoreElem, ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 4, !tbaa !85
  br i1 %17, label %22, label %50

22:                                               ; preds = %11
  %23 = and i16 %21, -17
  store i16 %23, ptr %20, align 4, !tbaa !85
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load i16, ptr %10, align 2, !tbaa !77
  %29 = and i16 %28, 4
  %30 = icmp eq i16 %29, 0
  %31 = and i32 %24, 8
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %32, %30
  br i1 %33, label %38, label %34

34:                                               ; preds = %27, %22
  %35 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 3
  %36 = tail call fastcc i32 @outliner_filter_tree(ptr noundef nonnull %0, ptr noundef nonnull %35) #15, !range !137
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %34, %27
  %39 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 3
  tail call void @outliner_free_tree(ptr noundef nonnull %39) #15
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %12) #16
  %40 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 7
  %41 = load i16, ptr %40, align 8, !tbaa !39
  %42 = and i16 %41, 8
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %46 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 11
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  tail call void %45(ptr noundef %47) #16
  br label %48

48:                                               ; preds = %44, %38
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %49(ptr noundef nonnull %12) #16
  br label %54

50:                                               ; preds = %11
  %51 = or i16 %21, 16
  store i16 %51, ptr %20, align 4, !tbaa !85
  %52 = getelementptr inbounds %struct.TreeElement, ptr %12, i64 0, i32 3
  %53 = tail call fastcc i32 @outliner_filter_tree(ptr noundef nonnull %0, ptr noundef nonnull %52) #15, !range !137
  br label %54

54:                                               ; preds = %50, %48, %34
  %55 = icmp eq ptr %13, null
  br i1 %55, label %56, label %11, !llvm.loop !219

56:                                               ; preds = %54, %6
  %57 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %1) #15, !range !198
  %58 = xor i8 %57, 1
  %59 = zext nneg i8 %58 to i32
  br label %60

60:                                               ; preds = %2, %56
  %61 = phi i32 [ %59, %56 ], [ 1, %2 ]
  ret i32 %61
}

; Function Attrs: optsize
declare void @BLI_mempool_iternew(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_iterstep(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_treehash_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @BKE_treehash_rebuild_from_treestore(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_persistent(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) unnamed_addr #0 !PGOFuncName !220 {
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 1, i32 noundef 512, i32 noundef 1) #16
  store ptr %10, ptr %6, align 8, !tbaa !50
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %7, %5 ]
  %13 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call ptr @BKE_treehash_create_from_treestore(ptr noundef %12) #16
  store ptr %17, ptr %13, align 8, !tbaa !62
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %17, %16 ], [ %14, %11 ]
  %20 = tail call ptr @BKE_treehash_lookup_unused(ptr noundef %19, i16 noundef signext %3, i16 noundef signext %4, ptr noundef %2) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 6
  store ptr %20, ptr %23, align 8, !tbaa !69
  %24 = getelementptr inbounds %struct.TreeStoreElem, ptr %20, i64 0, i32 3
  store i16 1, ptr %24, align 2, !tbaa !57
  br label %36

25:                                               ; preds = %18
  %26 = load ptr, ptr %6, align 8, !tbaa !50
  %27 = tail call ptr @BLI_mempool_alloc(ptr noundef %26) #16
  store i16 %3, ptr %27, align 8, !tbaa !66
  %28 = icmp eq i16 %3, 0
  %29 = select i1 %28, i16 0, i16 %4
  %30 = getelementptr inbounds %struct.TreeStoreElem, ptr %27, i64 0, i32 1
  store i16 %29, ptr %30, align 2, !tbaa !67
  %31 = getelementptr inbounds %struct.TreeStoreElem, ptr %27, i64 0, i32 4
  store ptr %2, ptr %31, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct.TreeStoreElem, ptr %27, i64 0, i32 3
  store i16 0, ptr %32, align 2, !tbaa !57
  %33 = getelementptr inbounds %struct.TreeStoreElem, ptr %27, i64 0, i32 2
  store i16 1, ptr %33, align 4, !tbaa !85
  %34 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 6
  store ptr %27, ptr %34, align 8, !tbaa !69
  %35 = load ptr, ptr %13, align 8, !tbaa !62
  tail call void @BKE_treehash_add_element(ptr noundef %35, ptr noundef nonnull %27) #16
  br label %36

36:                                               ; preds = %25, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_add_id_contents(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !221 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %6 = load i16, ptr %5, align 8, !tbaa !64
  switch i16 %6, label %305 [
    i16 16975, label %7
    i16 18764, label %9
    i16 17235, label %12
    i16 21057, label %201
    i16 17741, label %14
    i16 21827, label %43
    i16 16973, label %69
    i16 16717, label %95
    i16 17748, label %118
    i16 16707, label %131
    i16 16716, label %139
    i16 19283, label %162
    i16 20311, label %170
    i16 17739, label %193
    i16 21324, label %282
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !222
  tail call fastcc void @outliner_add_object_contents(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #15
  br label %305

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Library, ptr %2, i64 0, i32 3
  %11 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 11
  store ptr %10, ptr %11, align 8, !tbaa !46
  br label %305

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  tail call fastcc void @outliner_add_scene_contents(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %2, ptr noundef %1) #15
  br label %305

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !223
  %17 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %16) #15, !range !198
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %21 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %22

22:                                               ; preds = %19, %14
  %23 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %24 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !226
  %26 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %23, ptr noundef %25, ptr noundef %1, i16 noundef signext 0, i16 noundef signext 0) #15
  %27 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 47
  %28 = load i16, ptr %27, align 2, !tbaa !227
  %29 = icmp sgt i16 %28, 0
  br i1 %29, label %30, label %305

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 5
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ 0, %30 ], [ %39, %32 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !228
  %35 = getelementptr inbounds ptr, ptr %34, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = trunc i64 %33 to i16
  %38 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %23, ptr noundef %36, ptr noundef %1, i16 noundef signext 0, i16 noundef signext %37) #15
  %39 = add nuw nsw i64 %33, 1
  %40 = load i16, ptr %27, align 2, !tbaa !227
  %41 = sext i16 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %32, label %305, !llvm.loop !229

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !230
  %46 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %45) #15, !range !198
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %50 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %49, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %51

51:                                               ; preds = %48, %43
  %52 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 22
  %53 = load i16, ptr %52, align 2, !tbaa !233
  %54 = icmp sgt i16 %53, 0
  br i1 %54, label %55, label %305

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %57 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 10
  br label %58

58:                                               ; preds = %55, %58
  %59 = phi i64 [ 0, %55 ], [ %65, %58 ]
  %60 = load ptr, ptr %57, align 8, !tbaa !234
  %61 = getelementptr inbounds ptr, ptr %60, i64 %59
  %62 = load ptr, ptr %61, align 8, !tbaa !45
  %63 = trunc i64 %59 to i16
  %64 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %56, ptr noundef %62, ptr noundef %1, i16 noundef signext 0, i16 noundef signext %63) #15
  %65 = add nuw nsw i64 %59, 1
  %66 = load i16, ptr %52, align 2, !tbaa !233
  %67 = sext i16 %66 to i64
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %58, label %305, !llvm.loop !235

69:                                               ; preds = %3
  %70 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !236
  %72 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %71) #15, !range !198
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %76 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %75, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %77

77:                                               ; preds = %74, %69
  %78 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 9
  %79 = load i16, ptr %78, align 2, !tbaa !238
  %80 = icmp sgt i16 %79, 0
  br i1 %80, label %81, label %305

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %83 = getelementptr inbounds %struct.MetaBall, ptr %2, i64 0, i32 6
  br label %84

84:                                               ; preds = %81, %84
  %85 = phi i64 [ 0, %81 ], [ %91, %84 ]
  %86 = load ptr, ptr %83, align 8, !tbaa !239
  %87 = getelementptr inbounds ptr, ptr %86, i64 %85
  %88 = load ptr, ptr %87, align 8, !tbaa !45
  %89 = trunc i64 %85 to i16
  %90 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %82, ptr noundef %88, ptr noundef %1, i16 noundef signext 0, i16 noundef signext %89) #15
  %91 = add nuw nsw i64 %85, 1
  %92 = load i16, ptr %78, align 2, !tbaa !238
  %93 = sext i16 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %84, label %305, !llvm.loop !240

95:                                               ; preds = %3
  %96 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !241
  %98 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %97) #15, !range !198
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %102 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %101, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %103

103:                                              ; preds = %100, %95
  %104 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  br label %105

105:                                              ; preds = %103, %115
  %106 = phi i64 [ 0, %103 ], [ %116, %115 ]
  %107 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 102, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !45
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.MTex, ptr %108, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !245
  %113 = trunc i64 %106 to i16
  %114 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %104, ptr noundef %112, ptr noundef %1, i16 noundef signext 0, i16 noundef signext %113) #15
  br label %115

115:                                              ; preds = %105, %110
  %116 = add nuw nsw i64 %106, 1
  %117 = icmp eq i64 %116, 18
  br i1 %117, label %305, label %105, !llvm.loop !247

118:                                              ; preds = %3
  %119 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !248
  %121 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %120) #15, !range !198
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %125 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %124, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %126

126:                                              ; preds = %123, %118
  %127 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %128 = getelementptr inbounds %struct.Tex, ptr %2, i64 0, i32 54
  %129 = load ptr, ptr %128, align 8, !tbaa !251
  %130 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %127, ptr noundef %129, ptr noundef %1, i16 noundef signext 0, i16 noundef signext 0) #15
  br label %305

131:                                              ; preds = %3
  %132 = getelementptr inbounds %struct.Camera, ptr %2, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !252
  %134 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %133) #15, !range !198
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %305, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %138 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %137, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %305

139:                                              ; preds = %3
  %140 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !254
  %142 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %141) #15, !range !198
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %146 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %145, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %147

147:                                              ; preds = %144, %139
  %148 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  br label %149

149:                                              ; preds = %147, %159
  %150 = phi i64 [ 0, %147 ], [ %160, %159 ]
  %151 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 69, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !45
  %153 = icmp eq ptr %152, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.MTex, ptr %152, i64 0, i32 5
  %156 = load ptr, ptr %155, align 8, !tbaa !245
  %157 = trunc i64 %150 to i16
  %158 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %148, ptr noundef %156, ptr noundef %1, i16 noundef signext 0, i16 noundef signext %157) #15
  br label %159

159:                                              ; preds = %149, %154
  %160 = add nuw nsw i64 %150, 1
  %161 = icmp eq i64 %160, 18
  br i1 %161, label %305, label %149, !llvm.loop !256

162:                                              ; preds = %3
  %163 = getelementptr inbounds %struct.Speaker, ptr %2, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !257
  %165 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %164) #15, !range !198
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %305, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %169 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %168, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %305

170:                                              ; preds = %3
  %171 = getelementptr inbounds %struct.World, ptr %2, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !259
  %173 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %172) #15, !range !198
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %177 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %176, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %178

178:                                              ; preds = %175, %170
  %179 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  br label %180

180:                                              ; preds = %178, %190
  %181 = phi i64 [ 0, %178 ], [ %191, %190 ]
  %182 = getelementptr inbounds %struct.World, ptr %2, i64 0, i32 70, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !45
  %184 = icmp eq ptr %183, null
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.MTex, ptr %183, i64 0, i32 5
  %187 = load ptr, ptr %186, align 8, !tbaa !245
  %188 = trunc i64 %181 to i16
  %189 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %179, ptr noundef %187, ptr noundef %1, i16 noundef signext 0, i16 noundef signext %188) #15
  br label %190

190:                                              ; preds = %180, %185
  %191 = add nuw nsw i64 %181, 1
  %192 = icmp eq i64 %191, 18
  br i1 %192, label %305, label %180, !llvm.loop !261

193:                                              ; preds = %3
  %194 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !262
  %196 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %195) #15, !range !198
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %305, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %200 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %199, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %305

201:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !tbaa !264
  %202 = getelementptr inbounds %struct.bArmature, ptr %2, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !265
  %204 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %203) #15, !range !198
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %208 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %207, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %209

209:                                              ; preds = %206, %201
  %210 = getelementptr inbounds %struct.bArmature, ptr %2, i64 0, i32 4
  %211 = load ptr, ptr %210, align 8, !tbaa !267
  %212 = icmp eq ptr %211, null
  br i1 %212, label %256, label %213

213:                                              ; preds = %209
  %214 = load ptr, ptr %211, align 8, !tbaa !34
  %215 = icmp eq ptr %214, null
  br i1 %215, label %281, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  br label %218

218:                                              ; preds = %216, %218
  %219 = phi ptr [ %214, %216 ], [ %227, %218 ]
  %220 = phi i32 [ 0, %216 ], [ %228, %218 ]
  %221 = trunc i32 %220 to i16
  %222 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %217, ptr noundef %2, ptr noundef %1, i16 noundef signext 6, i16 noundef signext %221) #15
  %223 = getelementptr inbounds %struct.TreeElement, ptr %222, i64 0, i32 12
  store ptr %219, ptr %223, align 8, !tbaa !96
  %224 = getelementptr inbounds %struct.EditBone, ptr %219, i64 0, i32 5
  %225 = getelementptr inbounds %struct.TreeElement, ptr %222, i64 0, i32 11
  store ptr %224, ptr %225, align 8, !tbaa !46
  %226 = getelementptr inbounds %struct.EditBone, ptr %219, i64 0, i32 4
  store ptr %222, ptr %226, align 8, !tbaa !268
  %227 = load ptr, ptr %219, align 8, !tbaa !270
  %228 = add nuw nsw i32 %220, 1
  %229 = icmp eq ptr %227, null
  br i1 %229, label %230, label %218, !llvm.loop !271

230:                                              ; preds = %218
  %231 = load ptr, ptr %210, align 8, !tbaa !267
  %232 = load ptr, ptr %231, align 8, !tbaa !34
  %233 = icmp eq ptr %232, null
  br i1 %233, label %281, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.EditBone, ptr %232, i64 0, i32 4
  %236 = load ptr, ptr %235, align 8, !tbaa !268
  %237 = icmp eq ptr %236, null
  br i1 %237, label %281, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  br label %240

240:                                              ; preds = %238, %254
  %241 = phi ptr [ %236, %238 ], [ %242, %254 ]
  %242 = load ptr, ptr %241, align 8, !tbaa !89
  %243 = getelementptr inbounds %struct.TreeElement, ptr %241, i64 0, i32 12
  %244 = load ptr, ptr %243, align 8, !tbaa !96
  %245 = getelementptr inbounds %struct.EditBone, ptr %244, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !272
  %247 = icmp eq ptr %246, null
  br i1 %247, label %254, label %248

248:                                              ; preds = %240
  tail call void @BLI_remlink(ptr noundef nonnull %239, ptr noundef nonnull %241) #16
  %249 = load ptr, ptr %245, align 8, !tbaa !272
  %250 = getelementptr inbounds %struct.EditBone, ptr %249, i64 0, i32 4
  %251 = load ptr, ptr %250, align 8, !tbaa !268
  %252 = getelementptr inbounds %struct.TreeElement, ptr %251, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %252, ptr noundef nonnull %241) #16
  %253 = getelementptr inbounds %struct.TreeElement, ptr %241, i64 0, i32 2
  store ptr %251, ptr %253, align 8, !tbaa !74
  br label %254

254:                                              ; preds = %248, %240
  %255 = icmp eq ptr %242, null
  br i1 %255, label %281, label %240, !llvm.loop !273

256:                                              ; preds = %209
  %257 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !74
  %259 = getelementptr inbounds %struct.TreeElement, ptr %258, i64 0, i32 6
  %260 = load ptr, ptr %259, align 8, !tbaa !69
  %261 = getelementptr inbounds %struct.TreeStoreElem, ptr %260, i64 0, i32 4
  %262 = load ptr, ptr %261, align 8, !tbaa !60
  %263 = getelementptr inbounds %struct.ID, ptr %262, i64 0, i32 4
  %264 = load i16, ptr %263, align 8, !tbaa !64
  %265 = icmp eq i16 %264, 16975
  br i1 %265, label %266, label %271

266:                                              ; preds = %256
  %267 = getelementptr inbounds %struct.Object, ptr %262, i64 0, i32 27
  %268 = load i32, ptr %267, align 8, !tbaa !274
  %269 = and i32 %268, 64
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %281

271:                                              ; preds = %266, %256
  %272 = getelementptr inbounds %struct.bArmature, ptr %2, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !45
  %274 = icmp eq ptr %273, null
  br i1 %274, label %281, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  br label %277

277:                                              ; preds = %275, %277
  %278 = phi ptr [ %273, %275 ], [ %279, %277 ]
  call fastcc void @outliner_add_bone(ptr noundef %0, ptr noundef nonnull %276, ptr noundef %2, ptr noundef nonnull %278, ptr noundef %1, ptr noundef nonnull %4) #15
  %279 = load ptr, ptr %278, align 8, !tbaa !45
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %277, !llvm.loop !275

281:                                              ; preds = %254, %277, %213, %230, %234, %271, %266
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %305

282:                                              ; preds = %3
  %283 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %2, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !276
  %285 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %284) #15, !range !198
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %289 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %288, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %290

290:                                              ; preds = %287, %282
  %291 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  br label %292

292:                                              ; preds = %290, %302
  %293 = phi i64 [ 0, %290 ], [ %303, %302 ]
  %294 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %2, i64 0, i32 39, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !45
  %296 = icmp eq ptr %295, null
  br i1 %296, label %302, label %297

297:                                              ; preds = %292
  %298 = getelementptr inbounds %struct.MTex, ptr %295, i64 0, i32 5
  %299 = load ptr, ptr %298, align 8, !tbaa !245
  %300 = trunc i64 %293 to i16
  %301 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %291, ptr noundef %299, ptr noundef %1, i16 noundef signext 0, i16 noundef signext %300) #15
  br label %302

302:                                              ; preds = %292, %297
  %303 = add nuw nsw i64 %293, 1
  %304 = icmp eq i64 %303, 18
  br i1 %304, label %305, label %292, !llvm.loop !278

305:                                              ; preds = %302, %190, %159, %115, %84, %58, %32, %77, %51, %22, %3, %193, %198, %162, %167, %131, %136, %281, %126, %7, %12, %9
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_struct_name_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_collection_lookup_int(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_property_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_item_char(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @WM_key_event_string(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_py_idname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_treehash_create_from_treestore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_treehash_lookup_unused(ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_treehash_add_element(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_add_object_contents(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !279 {
  %4 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !280
  %6 = tail call fastcc zeroext i8 @outliner_animdata_test(ptr noundef %5) #15, !range !198
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %10 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 15, i16 noundef signext 0) #15
  br label %11

11:                                               ; preds = %8, %3
  %12 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %13 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !281
  %15 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %1, i16 noundef signext 0, i16 noundef signext 0) #15
  %16 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !282
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !283
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %17, ptr noundef %1, i16 noundef signext 18, i16 noundef signext 0) #15
  br label %25

25:                                               ; preds = %23, %19, %11
  %26 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !284
  %28 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %27, ptr noundef %1, i16 noundef signext 0, i16 noundef signext 0) #15
  %29 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !285
  %31 = icmp eq ptr %30, null
  br i1 %31, label %134, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr %26, align 8, !tbaa !284
  %34 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 13, i16 noundef signext 0) #15
  %35 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr @.str.12, ptr %35, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.bArmature, ptr %33, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !267
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %110

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %41 = load i32, ptr %40, align 8, !tbaa !274
  %42 = and i32 %41, 64
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %110, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %29, align 8, !tbaa !285
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = icmp eq ptr %46, null
  br i1 %47, label %85, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %50

50:                                               ; preds = %48, %80
  %51 = phi ptr [ %46, %48 ], [ %83, %80 ]
  %52 = phi i16 [ 0, %48 ], [ %82, %80 ]
  %53 = phi i16 [ 1000, %48 ], [ %81, %80 ]
  %54 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %49, ptr noundef %2, ptr noundef %34, i16 noundef signext 14, i16 noundef signext %52) #15
  %55 = getelementptr inbounds %struct.bPoseChannel, ptr %51, i64 0, i32 4
  %56 = getelementptr inbounds %struct.TreeElement, ptr %54, i64 0, i32 11
  store ptr %55, ptr %56, align 8, !tbaa !46
  %57 = getelementptr inbounds %struct.TreeElement, ptr %54, i64 0, i32 12
  store ptr %51, ptr %57, align 8, !tbaa !96
  %58 = getelementptr inbounds %struct.bPoseChannel, ptr %51, i64 0, i32 39
  store ptr %54, ptr %58, align 8, !tbaa !286
  %59 = getelementptr inbounds %struct.bPoseChannel, ptr %51, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !288
  %61 = icmp eq ptr %60, null
  br i1 %61, label %80, label %62

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.TreeElement, ptr %54, i64 0, i32 3
  %64 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %63, ptr noundef %2, ptr noundef nonnull %54, i16 noundef signext 7, i16 noundef signext 0) #15
  %65 = getelementptr inbounds %struct.TreeElement, ptr %64, i64 0, i32 11
  store ptr @.str.13, ptr %65, align 8, !tbaa !46
  %66 = load ptr, ptr %59, align 8, !tbaa !45
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.TreeElement, ptr %64, i64 0, i32 3
  br label %70

70:                                               ; preds = %68, %70
  %71 = phi ptr [ %66, %68 ], [ %78, %70 ]
  %72 = phi i16 [ %53, %68 ], [ %77, %70 ]
  %73 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %69, ptr noundef %2, ptr noundef %64, i16 noundef signext 8, i16 noundef signext %72) #15
  %74 = getelementptr inbounds %struct.bConstraint, ptr %71, i64 0, i32 7
  %75 = getelementptr inbounds %struct.TreeElement, ptr %73, i64 0, i32 11
  store ptr %74, ptr %75, align 8, !tbaa !46
  %76 = getelementptr inbounds %struct.TreeElement, ptr %73, i64 0, i32 12
  store ptr %71, ptr %76, align 8, !tbaa !96
  %77 = add i16 %72, 1
  %78 = load ptr, ptr %71, align 8, !tbaa !45
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %70, !llvm.loop !289

80:                                               ; preds = %70, %62, %50
  %81 = phi i16 [ %53, %50 ], [ %53, %62 ], [ %77, %70 ]
  %82 = add i16 %52, 1
  %83 = load ptr, ptr %51, align 8, !tbaa !45
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %50, !llvm.loop !290

85:                                               ; preds = %80, %44
  %86 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !291
  %88 = icmp eq ptr %87, null
  br i1 %88, label %110, label %89

89:                                               ; preds = %85, %108
  %90 = phi ptr [ %91, %108 ], [ %87, %85 ]
  %91 = load ptr, ptr %90, align 8, !tbaa !89
  %92 = getelementptr inbounds %struct.TreeElement, ptr %90, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !69
  %94 = load i16, ptr %93, align 8, !tbaa !66
  %95 = icmp eq i16 %94, 14
  br i1 %95, label %96, label %108

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.TreeElement, ptr %90, i64 0, i32 12
  %98 = load ptr, ptr %97, align 8, !tbaa !96
  %99 = getelementptr inbounds %struct.bPoseChannel, ptr %98, i64 0, i32 13
  %100 = load ptr, ptr %99, align 8, !tbaa !292
  %101 = icmp eq ptr %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  tail call void @BLI_remlink(ptr noundef nonnull %86, ptr noundef nonnull %90) #16
  %103 = load ptr, ptr %99, align 8, !tbaa !292
  %104 = getelementptr inbounds %struct.bPoseChannel, ptr %103, i64 0, i32 39
  %105 = load ptr, ptr %104, align 8, !tbaa !286
  %106 = getelementptr inbounds %struct.TreeElement, ptr %105, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %106, ptr noundef nonnull %90) #16
  %107 = getelementptr inbounds %struct.TreeElement, ptr %90, i64 0, i32 2
  store ptr %105, ptr %107, align 8, !tbaa !74
  br label %108

108:                                              ; preds = %96, %102, %89
  %109 = icmp eq ptr %91, null
  br i1 %109, label %110, label %89, !llvm.loop !293

110:                                              ; preds = %108, %85, %39, %32
  %111 = load ptr, ptr %29, align 8, !tbaa !285
  %112 = getelementptr inbounds %struct.bPose, ptr %111, i64 0, i32 9
  %113 = load ptr, ptr %112, align 8, !tbaa !294
  %114 = icmp eq ptr %113, null
  br i1 %114, label %134, label %115

115:                                              ; preds = %110
  %116 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 24, i16 noundef signext 0) #15
  %117 = getelementptr inbounds %struct.TreeElement, ptr %116, i64 0, i32 11
  store ptr @.str.14, ptr %117, align 8, !tbaa !46
  %118 = load ptr, ptr %29, align 8, !tbaa !285
  %119 = getelementptr inbounds %struct.bPose, ptr %118, i64 0, i32 9
  %120 = load ptr, ptr %119, align 8, !tbaa !45
  %121 = icmp eq ptr %120, null
  br i1 %121, label %134, label %122

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.TreeElement, ptr %116, i64 0, i32 3
  br label %124

124:                                              ; preds = %122, %124
  %125 = phi ptr [ %120, %122 ], [ %132, %124 ]
  %126 = phi i16 [ 0, %122 ], [ %131, %124 ]
  %127 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %123, ptr noundef %2, ptr noundef %116, i16 noundef signext 25, i16 noundef signext %126) #15
  %128 = getelementptr inbounds %struct.bActionGroup, ptr %125, i64 0, i32 5
  %129 = getelementptr inbounds %struct.TreeElement, ptr %127, i64 0, i32 11
  store ptr %128, ptr %129, align 8, !tbaa !46
  %130 = getelementptr inbounds %struct.TreeElement, ptr %127, i64 0, i32 12
  store ptr %125, ptr %130, align 8, !tbaa !96
  %131 = add i16 %126, 1
  %132 = load ptr, ptr %125, align 8, !tbaa !45
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %124, !llvm.loop !296

134:                                              ; preds = %124, %115, %110, %25
  %135 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 31
  %136 = load i32, ptr %135, align 8, !tbaa !297
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 29
  br label %140

140:                                              ; preds = %138, %140
  %141 = phi i64 [ 0, %138 ], [ %147, %140 ]
  %142 = load ptr, ptr %139, align 8, !tbaa !298
  %143 = getelementptr inbounds ptr, ptr %142, i64 %141
  %144 = load ptr, ptr %143, align 8, !tbaa !45
  %145 = trunc i64 %141 to i16
  %146 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %144, ptr noundef %1, i16 noundef signext 0, i16 noundef signext %145) #15
  %147 = add nuw nsw i64 %141, 1
  %148 = load i32, ptr %135, align 8, !tbaa !297
  %149 = sext i32 %148 to i64
  %150 = icmp slt i64 %147, %149
  br i1 %150, label %140, label %151, !llvm.loop !299

151:                                              ; preds = %140, %134
  %152 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 106
  %153 = load ptr, ptr %152, align 8, !tbaa !300
  %154 = icmp eq ptr %153, null
  br i1 %154, label %172, label %155

155:                                              ; preds = %151
  %156 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 7, i16 noundef signext 0) #15
  %157 = getelementptr inbounds %struct.TreeElement, ptr %156, i64 0, i32 11
  store ptr @.str.13, ptr %157, align 8, !tbaa !46
  %158 = load ptr, ptr %152, align 8, !tbaa !45
  %159 = icmp eq ptr %158, null
  br i1 %159, label %172, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.TreeElement, ptr %156, i64 0, i32 3
  br label %162

162:                                              ; preds = %160, %162
  %163 = phi ptr [ %158, %160 ], [ %170, %162 ]
  %164 = phi i16 [ 0, %160 ], [ %169, %162 ]
  %165 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %161, ptr noundef %2, ptr noundef %156, i16 noundef signext 8, i16 noundef signext %164) #15
  %166 = getelementptr inbounds %struct.bConstraint, ptr %163, i64 0, i32 7
  %167 = getelementptr inbounds %struct.TreeElement, ptr %165, i64 0, i32 11
  store ptr %166, ptr %167, align 8, !tbaa !46
  %168 = getelementptr inbounds %struct.TreeElement, ptr %165, i64 0, i32 12
  store ptr %163, ptr %168, align 8, !tbaa !96
  %169 = add i16 %164, 1
  %170 = load ptr, ptr %163, align 8, !tbaa !45
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %162, !llvm.loop !301

172:                                              ; preds = %162, %155, %151
  %173 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 26
  %174 = load ptr, ptr %173, align 8, !tbaa !302
  %175 = icmp eq ptr %174, null
  br i1 %175, label %226, label %176

176:                                              ; preds = %172
  %177 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 9, i16 noundef signext 0) #15
  %178 = getelementptr inbounds %struct.TreeElement, ptr %177, i64 0, i32 11
  store ptr @.str.15, ptr %178, align 8, !tbaa !46
  %179 = load ptr, ptr %173, align 8, !tbaa !45
  %180 = icmp eq ptr %179, null
  br i1 %180, label %226, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.TreeElement, ptr %177, i64 0, i32 3
  br label %183

183:                                              ; preds = %181, %222
  %184 = phi ptr [ %179, %181 ], [ %224, %222 ]
  %185 = phi i16 [ 0, %181 ], [ %223, %222 ]
  %186 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %182, ptr noundef %2, ptr noundef %177, i16 noundef signext 10, i16 noundef signext %185) #15
  %187 = getelementptr inbounds %struct.ModifierData, ptr %184, i64 0, i32 6
  %188 = getelementptr inbounds %struct.TreeElement, ptr %186, i64 0, i32 11
  store ptr %187, ptr %188, align 8, !tbaa !46
  %189 = getelementptr inbounds %struct.TreeElement, ptr %186, i64 0, i32 12
  store ptr %184, ptr %189, align 8, !tbaa !96
  %190 = getelementptr inbounds %struct.ModifierData, ptr %184, i64 0, i32 2
  %191 = load i32, ptr %190, align 8, !tbaa !303
  switch i32 %191, label %222 [
    i32 2, label %192
    i32 3, label %197
    i32 8, label %202
    i32 9, label %207
    i32 19, label %212
  ]

192:                                              ; preds = %183
  %193 = getelementptr inbounds %struct.TreeElement, ptr %186, i64 0, i32 3
  %194 = getelementptr inbounds %struct.LatticeModifierData, ptr %184, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !305
  %196 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %193, ptr noundef %195, ptr noundef nonnull %186, i16 noundef signext 11, i16 noundef signext 0) #15
  br label %222

197:                                              ; preds = %183
  %198 = getelementptr inbounds %struct.TreeElement, ptr %186, i64 0, i32 3
  %199 = getelementptr inbounds %struct.CurveModifierData, ptr %184, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !307
  %201 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %198, ptr noundef %200, ptr noundef nonnull %186, i16 noundef signext 11, i16 noundef signext 0) #15
  br label %222

202:                                              ; preds = %183
  %203 = getelementptr inbounds %struct.TreeElement, ptr %186, i64 0, i32 3
  %204 = getelementptr inbounds %struct.ArmatureModifierData, ptr %184, i64 0, i32 4
  %205 = load ptr, ptr %204, align 8, !tbaa !309
  %206 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %203, ptr noundef %205, ptr noundef nonnull %186, i16 noundef signext 11, i16 noundef signext 0) #15
  br label %222

207:                                              ; preds = %183
  %208 = getelementptr inbounds %struct.TreeElement, ptr %186, i64 0, i32 3
  %209 = getelementptr inbounds %struct.HookModifierData, ptr %184, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !311
  %211 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %208, ptr noundef %210, ptr noundef nonnull %186, i16 noundef signext 11, i16 noundef signext 0) #15
  br label %222

212:                                              ; preds = %183
  %213 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %184, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !313
  %215 = getelementptr inbounds %struct.TreeElement, ptr %186, i64 0, i32 3
  %216 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %215, ptr noundef %2, ptr noundef nonnull %186, i16 noundef signext 29, i16 noundef signext 0) #15
  %217 = getelementptr inbounds %struct.TreeElement, ptr %216, i64 0, i32 12
  store ptr %214, ptr %217, align 8, !tbaa !96
  %218 = getelementptr inbounds %struct.ParticleSystem, ptr %214, i64 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !315
  %220 = getelementptr inbounds %struct.ID, ptr %219, i64 0, i32 4, i64 2
  %221 = getelementptr inbounds %struct.TreeElement, ptr %216, i64 0, i32 11
  store ptr %220, ptr %221, align 8, !tbaa !46
  br label %222

222:                                              ; preds = %183, %197, %207, %212, %202, %192
  %223 = add i16 %185, 1
  %224 = load ptr, ptr %184, align 8, !tbaa !45
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %183, !llvm.loop !317

226:                                              ; preds = %222, %176, %172
  %227 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 25
  %228 = load ptr, ptr %227, align 8, !tbaa !318
  %229 = icmp eq ptr %228, null
  br i1 %229, label %247, label %230

230:                                              ; preds = %226
  %231 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %2, ptr noundef %1, i16 noundef signext 3, i16 noundef signext 0) #15
  %232 = getelementptr inbounds %struct.TreeElement, ptr %231, i64 0, i32 11
  store ptr @.str.16, ptr %232, align 8, !tbaa !46
  %233 = load ptr, ptr %227, align 8, !tbaa !45
  %234 = icmp eq ptr %233, null
  br i1 %234, label %247, label %235

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.TreeElement, ptr %231, i64 0, i32 3
  br label %237

237:                                              ; preds = %235, %237
  %238 = phi ptr [ %233, %235 ], [ %245, %237 ]
  %239 = phi i16 [ 0, %235 ], [ %244, %237 ]
  %240 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %236, ptr noundef %2, ptr noundef %231, i16 noundef signext 4, i16 noundef signext %239) #15
  %241 = getelementptr inbounds %struct.bDeformGroup, ptr %238, i64 0, i32 2
  %242 = getelementptr inbounds %struct.TreeElement, ptr %240, i64 0, i32 11
  store ptr %241, ptr %242, align 8, !tbaa !46
  %243 = getelementptr inbounds %struct.TreeElement, ptr %240, i64 0, i32 12
  store ptr %238, ptr %243, align 8, !tbaa !96
  %244 = add i16 %239, 1
  %245 = load ptr, ptr %238, align 8, !tbaa !45
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %237, !llvm.loop !319

247:                                              ; preds = %237, %230, %226
  %248 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 112
  %249 = load ptr, ptr %248, align 8, !tbaa !320
  %250 = icmp eq ptr %249, null
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %249, ptr noundef %1, i16 noundef signext 0, i16 noundef signext 0) #15
  br label %253

253:                                              ; preds = %251, %247
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @outliner_animdata_test(ptr noundef readonly %0) unnamed_addr #8 !PGOFuncName !321 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !144
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !146
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %1, %3, %6, %10
  %16 = phi i8 [ 1, %6 ], [ 1, %3 ], [ %14, %10 ], [ 0, %1 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_add_bone(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #0 !PGOFuncName !322 {
  %7 = load i32, ptr %5, align 4, !tbaa !264
  %8 = trunc i32 %7 to i16
  %9 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, i16 noundef signext 5, i16 noundef signext %8) #15
  %10 = load i32, ptr %5, align 4, !tbaa !264
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %5, align 4, !tbaa !264
  %12 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 5
  %13 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 11
  store ptr %12, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 12
  store ptr %3, ptr %14, align 8, !tbaa !96
  %15 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 3
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi ptr [ %16, %18 ], [ %22, %20 ]
  tail call fastcc void @outliner_add_bone(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %2, ptr noundef nonnull %21, ptr noundef %9, ptr noundef nonnull %5) #15
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %20, !llvm.loop !323

24:                                               ; preds = %20, %6
  ret void
}

; Function Attrs: optsize
declare i32 @set_listbasepointers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_idcode_to_name_plural(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @outliner_add_passes(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !324 {
  %5 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 3
  %6 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %1, i16 noundef signext 21, i16 noundef signext 0) #15
  %7 = getelementptr inbounds %struct.TreeElement, ptr %6, i64 0, i32 11
  store ptr @.str.19, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.SceneRenderLayer, ptr %3, i64 0, i32 9
  %9 = getelementptr inbounds %struct.TreeElement, ptr %6, i64 0, i32 12
  store ptr %8, ptr %9, align 8, !tbaa !96
  %10 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = getelementptr inbounds %struct.TreeStoreElem, ptr %11, i64 0, i32 2
  %13 = load i16, ptr %12, align 4, !tbaa !85
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %68

16:                                               ; preds = %4
  %17 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 1) #15
  %18 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 11
  store ptr @.str.20, ptr %18, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.TreeElement, ptr %17, i64 0, i32 12
  store ptr %8, ptr %19, align 8, !tbaa !96
  %20 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 9) #15
  %21 = getelementptr inbounds %struct.TreeElement, ptr %20, i64 0, i32 11
  store ptr @.str.21, ptr %21, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.TreeElement, ptr %20, i64 0, i32 12
  store ptr %8, ptr %22, align 8, !tbaa !96
  %23 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 8) #15
  %24 = getelementptr inbounds %struct.TreeElement, ptr %23, i64 0, i32 11
  store ptr @.str.22, ptr %24, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.TreeElement, ptr %23, i64 0, i32 12
  store ptr %8, ptr %25, align 8, !tbaa !96
  %26 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 12) #15
  %27 = getelementptr inbounds %struct.TreeElement, ptr %26, i64 0, i32 11
  store ptr @.str.23, ptr %27, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.TreeElement, ptr %26, i64 0, i32 12
  store ptr %8, ptr %28, align 8, !tbaa !96
  %29 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 14) #15
  %30 = getelementptr inbounds %struct.TreeElement, ptr %29, i64 0, i32 11
  store ptr @.str.24, ptr %30, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.TreeElement, ptr %29, i64 0, i32 12
  store ptr %8, ptr %31, align 8, !tbaa !96
  %32 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 11) #15
  %33 = getelementptr inbounds %struct.TreeElement, ptr %32, i64 0, i32 11
  store ptr @.str.25, ptr %33, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.TreeElement, ptr %32, i64 0, i32 12
  store ptr %8, ptr %34, align 8, !tbaa !96
  %35 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 18) #15
  %36 = getelementptr inbounds %struct.TreeElement, ptr %35, i64 0, i32 11
  store ptr @.str.26, ptr %36, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.TreeElement, ptr %35, i64 0, i32 12
  store ptr %8, ptr %37, align 8, !tbaa !96
  %38 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 2) #15
  %39 = getelementptr inbounds %struct.TreeElement, ptr %38, i64 0, i32 11
  store ptr @.str.27, ptr %39, align 8, !tbaa !46
  %40 = getelementptr inbounds %struct.TreeElement, ptr %38, i64 0, i32 12
  store ptr %8, ptr %40, align 8, !tbaa !96
  %41 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 3) #15
  %42 = getelementptr inbounds %struct.TreeElement, ptr %41, i64 0, i32 11
  store ptr @.str.28, ptr %42, align 8, !tbaa !46
  %43 = getelementptr inbounds %struct.TreeElement, ptr %41, i64 0, i32 12
  store ptr %8, ptr %43, align 8, !tbaa !96
  %44 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 4) #15
  %45 = getelementptr inbounds %struct.TreeElement, ptr %44, i64 0, i32 11
  store ptr @.str.29, ptr %45, align 8, !tbaa !46
  %46 = getelementptr inbounds %struct.TreeElement, ptr %44, i64 0, i32 12
  store ptr %8, ptr %46, align 8, !tbaa !96
  %47 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 5) #15
  %48 = getelementptr inbounds %struct.TreeElement, ptr %47, i64 0, i32 11
  store ptr @.str.30, ptr %48, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.TreeElement, ptr %47, i64 0, i32 12
  store ptr %8, ptr %49, align 8, !tbaa !96
  %50 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 6) #15
  %51 = getelementptr inbounds %struct.TreeElement, ptr %50, i64 0, i32 11
  store ptr @.str.31, ptr %51, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.TreeElement, ptr %50, i64 0, i32 12
  store ptr %8, ptr %52, align 8, !tbaa !96
  %53 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 7) #15
  %54 = getelementptr inbounds %struct.TreeElement, ptr %53, i64 0, i32 11
  store ptr @.str.32, ptr %54, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.TreeElement, ptr %53, i64 0, i32 12
  store ptr %8, ptr %55, align 8, !tbaa !96
  %56 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 10) #15
  %57 = getelementptr inbounds %struct.TreeElement, ptr %56, i64 0, i32 11
  store ptr @.str.33, ptr %57, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.TreeElement, ptr %56, i64 0, i32 12
  store ptr %8, ptr %58, align 8, !tbaa !96
  %59 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 13) #15
  %60 = getelementptr inbounds %struct.TreeElement, ptr %59, i64 0, i32 11
  store ptr @.str.34, ptr %60, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.TreeElement, ptr %59, i64 0, i32 12
  store ptr %8, ptr %61, align 8, !tbaa !96
  %62 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 17) #15
  %63 = getelementptr inbounds %struct.TreeElement, ptr %62, i64 0, i32 11
  store ptr @.str.35, ptr %63, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.TreeElement, ptr %62, i64 0, i32 12
  store ptr %8, ptr %64, align 8, !tbaa !96
  %65 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %1, i16 noundef signext 21, i16 noundef signext 16) #15
  %66 = getelementptr inbounds %struct.TreeElement, ptr %65, i64 0, i32 11
  store ptr @.str.36, ptr %66, align 8, !tbaa !46
  %67 = getelementptr inbounds %struct.TreeElement, ptr %65, i64 0, i32 12
  store ptr %8, ptr %67, align 8, !tbaa !96
  br label %68

68:                                               ; preds = %4, %16
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @treesort_alpha(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !PGOFuncName !325 {
  %3 = getelementptr inbounds %struct.tTreeSort, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !211
  %5 = getelementptr inbounds %struct.tTreeSort, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !211
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = ashr i32 %7, 31
  %9 = icmp slt i32 %7, 1
  %10 = select i1 %9, i32 %8, i32 1
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @treesort_alpha_ob(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 !PGOFuncName !326 {
  %3 = getelementptr inbounds %struct.tTreeSort, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !212
  %5 = icmp eq i16 %4, 16975
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.tTreeSort, ptr %1, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !212
  %9 = icmp eq i16 %8, 16975
  %10 = select i1 %5, i32 3, i32 2
  %11 = select i1 %9, i32 %10, i32 %6
  switch i32 %11, label %23 [
    i32 1, label %24
    i32 2, label %12
    i32 3, label %13
  ]

12:                                               ; preds = %2
  br label %24

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tTreeSort, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !211
  %16 = getelementptr inbounds %struct.tTreeSort, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !211
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %17) #18
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = icmp ne i32 %18, 0
  %22 = sext i1 %21 to i32
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %20, %13, %2, %23, %12
  %25 = phi i32 [ -1, %12 ], [ 0, %23 ], [ %11, %2 ], [ 1, %13 ], [ %22, %20 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !327 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @outliner_filter_has_name(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !328 {
  %4 = alloca [34 x i8], align 16
  %5 = shl i32 %2, 4
  %6 = and i32 %5, 16
  %7 = xor i32 %6, 16
  %8 = and i32 %2, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = tail call i32 @fnmatch(ptr noundef %1, ptr noundef %12, i32 noundef %7) #16
  br label %19

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #17
  %15 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 34, ptr noundef nonnull @.str.38, ptr noundef %1) #16
  %16 = getelementptr inbounds %struct.TreeElement, ptr %0, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = call i32 @fnmatch(ptr noundef nonnull %4, ptr noundef %17, i32 noundef %7) #16
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #17
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i32 [ %13, %10 ], [ %18, %14 ]
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !329 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @fnmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"ListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !42, i64 56}
!40 = !{!"TreeElement", !36, i64 0, !36, i64 8, !36, i64 16, !35, i64 24, !41, i64 40, !41, i64 44, !36, i64 48, !42, i64 56, !42, i64 58, !42, i64 60, !42, i64 62, !36, i64 64, !36, i64 72, !43, i64 80}
!41 = !{!"int", !37, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!"PointerRNA", !44, i64 0, !36, i64 8, !36, i64 16}
!44 = !{!"", !36, i64 0}
!45 = !{!36, !36, i64 0}
!46 = !{!40, !36, i64 64}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"outliner_tree.c:outliner_storage_cleanup"}
!50 = !{!51, !36, i64 232}
!51 = !{!"SpaceOops", !36, i64 0, !36, i64 8, !35, i64 16, !41, i64 32, !52, i64 36, !37, i64 40, !53, i64 56, !35, i64 216, !36, i64 232, !37, i64 240, !56, i64 272, !42, i64 288, !42, i64 290, !42, i64 292, !42, i64 294, !36, i64 296}
!52 = !{!"float", !37, i64 0}
!53 = !{!"View2D", !54, i64 0, !54, i64 16, !55, i64 32, !55, i64 48, !55, i64 64, !37, i64 80, !37, i64 88, !52, i64 96, !52, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !36, i64 128, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!54 = !{!"rctf", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!55 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!56 = !{!"TreeStoreElem", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !36, i64 8}
!57 = !{!56, !42, i64 6}
!58 = distinct !{!58, !48}
!59 = !{!51, !42, i64 292}
!60 = !{!56, !36, i64 8}
!61 = distinct !{!61, !48}
!62 = !{!51, !36, i64 296}
!63 = !{i64 0, i64 2, !64, i64 2, i64 2, !64, i64 4, i64 2, !64, i64 6, i64 2, !64, i64 8, i64 8, !45}
!64 = !{!42, !42, i64 0}
!65 = distinct !{!65, !48}
!66 = !{!56, !42, i64 0}
!67 = !{!56, !42, i64 2}
!68 = !{!"outliner_tree.c:outliner_find_tree_element"}
!69 = !{!40, !36, i64 48}
!70 = distinct !{!70, !48}
!71 = !{!40, !42, i64 60}
!72 = !{!51, !42, i64 290}
!73 = distinct !{!73, !48}
!74 = !{!40, !36, i64 16}
!75 = distinct !{!75, !48}
!76 = !{!37, !37, i64 0}
!77 = !{!51, !42, i64 294}
!78 = !{!51, !36, i64 216}
!79 = !{!80, !36, i64 16}
!80 = !{!"Object", !81, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !42, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !82, i64 312, !36, i64 360, !35, i64 368, !35, i64 384, !35, i64 400, !35, i64 416, !41, i64 432, !41, i64 436, !36, i64 440, !36, i64 448, !41, i64 456, !41, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !52, i64 616, !52, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !41, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !37, i64 966, !37, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !52, i64 988, !52, i64 992, !52, i64 996, !52, i64 1000, !52, i64 1004, !52, i64 1008, !52, i64 1012, !52, i64 1016, !52, i64 1020, !52, i64 1024, !52, i64 1028, !52, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !37, i64 1042, !37, i64 1043, !42, i64 1044, !37, i64 1046, !37, i64 1047, !52, i64 1048, !52, i64 1052, !35, i64 1056, !35, i64 1072, !35, i64 1088, !35, i64 1104, !52, i64 1120, !42, i64 1124, !42, i64 1126, !37, i64 1128, !41, i64 1144, !41, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !42, i64 1162, !37, i64 1164, !35, i64 1176, !35, i64 1192, !35, i64 1208, !35, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !42, i64 1266, !52, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !83, i64 1304, !83, i64 1312, !41, i64 1320, !41, i64 1324, !35, i64 1328, !35, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !35, i64 1400, !36, i64 1416}
!81 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!82 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!83 = !{!"long", !37, i64 0}
!84 = distinct !{!84, !48}
!85 = !{!56, !42, i64 4}
!86 = !{!87, !36, i64 16}
!87 = !{!"Library", !81, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !37, i64 1160, !36, i64 2184, !36, i64 2192}
!88 = distinct !{!88, !48}
!89 = !{!40, !36, i64 0}
!90 = !{!87, !36, i64 2184}
!91 = distinct !{!91, !48}
!92 = distinct !{!92, !48}
!93 = distinct !{!93, !48}
!94 = !{!95, !36, i64 32}
!95 = !{!"Base", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !42, i64 28, !42, i64 30, !36, i64 32}
!96 = !{!40, !36, i64 72}
!97 = distinct !{!97, !48}
!98 = distinct !{!98, !48}
!99 = distinct !{!99, !48}
!100 = !{!95, !41, i64 16}
!101 = !{!102, !41, i64 232}
!102 = !{!"Scene", !81, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !35, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !42, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !103, i64 280, !110, i64 4264, !35, i64 4296, !35, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !42, i64 4376, !42, i64 4378, !41, i64 4380, !35, i64 4384, !111, i64 4400, !112, i64 4416, !115, i64 4600, !36, i64 4608, !116, i64 4616, !36, i64 4640, !83, i64 4648, !83, i64 4656, !105, i64 4664, !106, i64 4824, !117, i64 4888, !36, i64 4952}
!103 = !{!"RenderData", !104, i64 0, !36, i64 248, !36, i64 256, !107, i64 264, !108, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !52, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !42, i64 432, !42, i64 434, !52, i64 436, !52, i64 440, !52, i64 444, !52, i64 448, !52, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !41, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !41, i64 484, !41, i64 488, !42, i64 492, !42, i64 494, !41, i64 496, !41, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !54, i64 544, !54, i64 560, !55, i64 576, !35, i64 592, !42, i64 608, !42, i64 610, !52, i64 612, !52, i64 616, !52, i64 620, !52, i64 624, !41, i64 628, !52, i64 632, !52, i64 636, !52, i64 640, !52, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !52, i64 660, !52, i64 664, !42, i64 668, !42, i64 670, !52, i64 672, !52, i64 676, !37, i64 680, !41, i64 1704, !42, i64 1708, !42, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !42, i64 2524, !42, i64 2526, !52, i64 2528, !52, i64 2532, !42, i64 2536, !42, i64 2538, !52, i64 2540, !42, i64 2544, !42, i64 2546, !41, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !52, i64 2560, !52, i64 2564, !36, i64 2568, !41, i64 2576, !52, i64 2580, !37, i64 2584, !109, i64 2616, !41, i64 3976, !41, i64 3980}
!104 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !42, i64 8, !42, i64 10, !52, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !105, i64 24, !106, i64 184}
!105 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!106 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!107 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !42, i64 48, !42, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!108 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !52, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!109 = !{!"BakeData", !104, i64 0, !37, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !52, i64 1280, !52, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!110 = !{!"AudioData", !41, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !41, i64 16, !42, i64 20, !42, i64 22, !52, i64 24, !52, i64 28}
!111 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!112 = !{!"GameData", !111, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !37, i64 34, !113, i64 40, !42, i64 64, !42, i64 66, !52, i64 68, !114, i64 72, !52, i64 128, !52, i64 132, !41, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180}
!113 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !52, i64 8, !52, i64 12, !36, i64 16}
!114 = !{!"RecastData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !41, i64 40, !52, i64 44, !52, i64 48, !42, i64 52, !42, i64 54}
!115 = !{!"UnitSettings", !52, i64 0, !37, i64 4, !37, i64 5, !42, i64 6}
!116 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!117 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!118 = distinct !{!118, !48}
!119 = !{!120, !36, i64 120}
!120 = !{!"Group", !81, i64 0, !35, i64 120, !41, i64 136, !37, i64 140}
!121 = !{!122, !36, i64 16}
!122 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !37, i64 34}
!123 = distinct !{!123, !48}
!124 = distinct !{!124, !48}
!125 = distinct !{!125, !48}
!126 = !{!102, !36, i64 168}
!127 = !{!80, !42, i64 136}
!128 = distinct !{!128, !48}
!129 = !{!95, !41, i64 24}
!130 = distinct !{!130, !48}
!131 = !{!132, !36, i64 0}
!132 = !{!"Editing", !36, i64 0, !35, i64 8, !35, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !41, i64 2096, !41, i64 2100, !41, i64 2104, !41, i64 2108, !54, i64 2112}
!133 = !{i32 0, i32 3}
!134 = !{!135, !36, i64 0}
!135 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !42, i64 156, !42, i64 158, !41, i64 160, !41, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !52, i64 224, !52, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !35, i64 256, !36, i64 272, !36, i64 280, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !36, i64 304, !41, i64 312, !41, i64 316, !41, i64 320, !52, i64 324, !41, i64 328, !37, i64 332, !37, i64 333, !35, i64 336}
!136 = distinct !{!136, !48}
!137 = !{i32 0, i32 2}
!138 = !{!"outliner_tree.c:outliner_add_element"}
!139 = !{!43, !36, i64 0}
!140 = !{!43, !36, i64 16}
!141 = !{!40, !42, i64 58}
!142 = !{!143, !36, i64 120}
!143 = !{!"IdAdtTemplate", !81, i64 0, !36, i64 120}
!144 = !{!145, !36, i64 0}
!145 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !35, i64 24, !36, i64 40, !35, i64 48, !35, i64 64, !41, i64 80, !41, i64 84, !42, i64 88, !42, i64 90, !52, i64 92}
!146 = !{!145, !36, i64 48}
!147 = !{!148, !36, i64 24}
!148 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !35, i64 32, !36, i64 48, !36, i64 56, !41, i64 64, !52, i64 68, !42, i64 72, !42, i64 74, !41, i64 76, !36, i64 80, !41, i64 88, !37, i64 92, !52, i64 104, !52, i64 108}
!149 = !{!150, !36, i64 0}
!150 = !{!"ChannelDriver", !35, i64 0, !37, i64 16, !36, i64 272, !52, i64 280, !52, i64 284, !41, i64 288, !41, i64 292}
!151 = !{!152, !42, i64 528}
!152 = !{!"DriverVar", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !42, i64 528, !42, i64 530, !52, i64 532}
!153 = !{!154, !36, i64 0}
!154 = !{!"DriverTarget", !36, i64 0, !36, i64 8, !37, i64 16, !42, i64 48, !42, i64 50, !41, i64 52}
!155 = distinct !{!155, !48}
!156 = !{!152, !36, i64 0}
!157 = distinct !{!157, !48}
!158 = distinct !{!158, !48}
!159 = !{!145, !36, i64 24}
!160 = distinct !{!160, !48}
!161 = !{!162, !36, i64 32}
!162 = !{!"NlaStrip", !36, i64 0, !36, i64 8, !35, i64 16, !36, i64 32, !36, i64 40, !35, i64 48, !35, i64 64, !37, i64 80, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !42, i64 184, !42, i64 186, !42, i64 188, !42, i64 190, !36, i64 192, !41, i64 200, !41, i64 204}
!163 = distinct !{!163, !48}
!164 = !{!135, !41, i64 100}
!165 = distinct !{!165, !48}
!166 = !{!135, !36, i64 168}
!167 = !{!168, !36, i64 32}
!168 = !{!"Strip", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !117, i64 840}
!169 = !{!43, !36, i64 8}
!170 = distinct !{!170, !48}
!171 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45}
!172 = distinct !{!172, !48}
!173 = distinct !{!173, !48}
!174 = !{!175, !42, i64 154}
!175 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !36, i64 176}
!176 = !{!175, !42, i64 152}
!177 = !{!178, !36, i64 8}
!178 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !35, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !179, i64 152, !42, i64 184}
!179 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!180 = distinct !{!180, !48}
!181 = !{!"outliner_tree.c:outliner_add_library_contents"}
!182 = !{!81, !36, i64 24}
!183 = !{!81, !36, i64 0}
!184 = distinct !{!184, !48}
!185 = distinct !{!185, !48}
!186 = distinct !{!186, !48}
!187 = !{!"outliner_tree.c:outliner_make_hierarchy"}
!188 = !{!80, !36, i64 216}
!189 = distinct !{!189, !48}
!190 = distinct !{!190, !48}
!191 = !{!"outliner_tree.c:outliner_add_scene_contents"}
!192 = !{!193, !36, i64 88}
!193 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !52, i64 124, !194, i64 128}
!194 = !{!"FreestyleConfig", !35, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !35, i64 40}
!195 = !{!193, !36, i64 80}
!196 = distinct !{!196, !48}
!197 = !{!102, !36, i64 120}
!198 = !{i8 0, i8 2}
!199 = !{!102, !36, i64 136}
!200 = !{!"outliner_tree.c:need_add_seq_dup"}
!201 = !{!135, !36, i64 8}
!202 = distinct !{!202, !48}
!203 = distinct !{!203, !48}
!204 = !{!"outliner_tree.c:outliner_add_seq_dup"}
!205 = distinct !{!205, !48}
!206 = !{!"outliner_tree.c:outliner_sort"}
!207 = !{!35, !36, i64 8}
!208 = distinct !{!208, !48}
!209 = !{!210, !36, i64 0}
!210 = !{!"tTreeSort", !36, i64 0, !36, i64 8, !36, i64 16, !42, i64 24}
!211 = !{!210, !36, i64 16}
!212 = !{!210, !42, i64 24}
!213 = !{!210, !36, i64 8}
!214 = distinct !{!214, !48}
!215 = distinct !{!215, !48}
!216 = distinct !{!216, !48}
!217 = distinct !{!217, !48}
!218 = !{!"outliner_tree.c:outliner_filter_tree"}
!219 = distinct !{!219, !48}
!220 = !{!"outliner_tree.c:check_persistent"}
!221 = !{!"outliner_tree.c:outliner_add_id_contents"}
!222 = !{!81, !36, i64 16}
!223 = !{!224, !36, i64 120}
!224 = !{!"Mesh", !81, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !225, i64 280, !225, i64 480, !225, i64 680, !225, i64 880, !225, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !41, i64 1344, !42, i64 1348, !42, i64 1350, !52, i64 1352, !41, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !42, i64 1366, !36, i64 1368}
!225 = !{!"CustomData", !36, i64 0, !37, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !36, i64 184, !36, i64 192}
!226 = !{!224, !36, i64 144}
!227 = !{!224, !42, i64 1366}
!228 = !{!224, !36, i64 152}
!229 = distinct !{!229, !48}
!230 = !{!231, !36, i64 120}
!231 = !{!"Curve", !81, i64 0, !36, i64 120, !36, i64 128, !35, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !42, i64 244, !42, i64 246, !42, i64 248, !42, i64 250, !52, i64 252, !52, i64 256, !41, i64 260, !42, i64 264, !42, i64 266, !41, i64 268, !52, i64 272, !52, i64 276, !52, i64 280, !42, i64 284, !42, i64 286, !42, i64 288, !42, i64 290, !41, i64 292, !41, i64 296, !37, i64 300, !42, i64 304, !37, i64 306, !37, i64 307, !52, i64 308, !52, i64 312, !52, i64 316, !52, i64 320, !52, i64 324, !52, i64 328, !52, i64 332, !52, i64 336, !52, i64 340, !52, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !41, i64 488, !41, i64 492, !36, i64 496, !232, i64 504, !52, i64 512, !52, i64 516, !52, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!232 = !{!"CharInfo", !42, i64 0, !42, i64 2, !37, i64 4, !37, i64 5, !42, i64 6}
!233 = !{!231, !42, i64 266}
!234 = !{!231, !36, i64 200}
!235 = distinct !{!235, !48}
!236 = !{!237, !36, i64 120}
!237 = !{!"MetaBall", !81, i64 0, !36, i64 120, !35, i64 128, !35, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !42, i64 186, !42, i64 188, !42, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !52, i64 228, !52, i64 232, !52, i64 236, !36, i64 240}
!238 = !{!237, !42, i64 186}
!239 = !{!237, !36, i64 176}
!240 = distinct !{!240, !48}
!241 = !{!242, !36, i64 120}
!242 = !{!"Material", !81, i64 0, !36, i64 120, !42, i64 128, !42, i64 130, !52, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !52, i64 208, !52, i64 212, !52, i64 216, !52, i64 220, !243, i64 224, !244, i64 312, !52, i64 328, !52, i64 332, !52, i64 336, !52, i64 340, !52, i64 344, !52, i64 348, !52, i64 352, !42, i64 356, !42, i64 358, !42, i64 360, !37, i64 362, !37, i64 363, !52, i64 364, !52, i64 368, !42, i64 372, !42, i64 374, !52, i64 376, !52, i64 380, !52, i64 384, !52, i64 388, !42, i64 392, !42, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !42, i64 414, !42, i64 416, !42, i64 418, !52, i64 420, !52, i64 424, !52, i64 428, !52, i64 432, !52, i64 436, !52, i64 440, !52, i64 444, !52, i64 448, !52, i64 452, !52, i64 456, !37, i64 460, !52, i64 524, !52, i64 528, !52, i64 532, !41, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !42, i64 544, !42, i64 546, !42, i64 548, !37, i64 550, !37, i64 551, !42, i64 552, !42, i64 554, !52, i64 556, !52, i64 560, !37, i64 564, !52, i64 580, !52, i64 584, !42, i64 588, !42, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !42, i64 612, !42, i64 614, !52, i64 616, !52, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !52, i64 800, !52, i64 804, !52, i64 808, !52, i64 812, !52, i64 816, !42, i64 820, !42, i64 822, !37, i64 824, !37, i64 836, !52, i64 848, !52, i64 852, !52, i64 856, !52, i64 860, !52, i64 864, !52, i64 868, !52, i64 872, !42, i64 876, !42, i64 878, !41, i64 880, !42, i64 884, !42, i64 886, !37, i64 888, !42, i64 904, !42, i64 906, !42, i64 908, !42, i64 910, !42, i64 912, !37, i64 914, !36, i64 920, !35, i64 928}
!243 = !{!"VolumeSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !52, i64 52, !52, i64 56, !52, i64 60, !42, i64 64, !42, i64 66, !42, i64 68, !42, i64 70, !52, i64 72, !52, i64 76, !52, i64 80, !52, i64 84}
!244 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!245 = !{!246, !36, i64 16}
!246 = !{!"MTex", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !52, i64 116, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !42, i64 128, !42, i64 130, !37, i64 132, !37, i64 133, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !52, i64 208, !52, i64 212, !52, i64 216, !52, i64 220, !52, i64 224, !52, i64 228, !52, i64 232, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !52, i64 252, !52, i64 256, !52, i64 260, !52, i64 264, !52, i64 268, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308}
!247 = distinct !{!247, !48}
!248 = !{!249, !36, i64 120}
!249 = !{!"Tex", !81, i64 0, !36, i64 120, !52, i64 128, !52, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !52, i64 208, !52, i64 212, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !41, i64 252, !41, i64 256, !42, i64 260, !42, i64 262, !42, i64 264, !42, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !250, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!250 = !{!"ImageUser", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !41, i64 36}
!251 = !{!249, !36, i64 352}
!252 = !{!253, !36, i64 120}
!253 = !{!"Camera", !81, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !42, i64 130, !52, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!254 = !{!255, !36, i64 120}
!255 = !{!"Lamp", !81, i64 0, !36, i64 120, !42, i64 128, !42, i64 130, !41, i64 132, !42, i64 136, !42, i64 138, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !36, i64 200, !42, i64 208, !42, i64 210, !52, i64 212, !52, i64 216, !52, i64 220, !52, i64 224, !52, i64 228, !52, i64 232, !52, i64 236, !42, i64 240, !42, i64 242, !42, i64 244, !42, i64 246, !37, i64 248, !37, i64 249, !42, i64 250, !42, i64 252, !42, i64 254, !42, i64 256, !42, i64 258, !52, i64 260, !52, i64 264, !52, i64 268, !52, i64 272, !42, i64 276, !42, i64 278, !42, i64 280, !42, i64 282, !42, i64 284, !42, i64 286, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308, !52, i64 312, !52, i64 316, !52, i64 320, !52, i64 324, !52, i64 328, !52, i64 332, !52, i64 336, !42, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !42, i64 496, !42, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!256 = distinct !{!256, !48}
!257 = !{!258, !36, i64 120}
!258 = !{!"Speaker", !81, i64 0, !36, i64 120, !36, i64 128, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !42, i64 176, !37, i64 178}
!259 = !{!260, !36, i64 120}
!260 = !{!"World", !81, i64 0, !36, i64 120, !42, i64 128, !42, i64 130, !42, i64 132, !42, i64 134, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !52, i64 216, !52, i64 220, !52, i64 224, !52, i64 228, !52, i64 232, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !52, i64 252, !52, i64 256, !52, i64 260, !42, i64 264, !42, i64 266, !42, i64 268, !42, i64 270, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !42, i64 288, !42, i64 290, !42, i64 292, !42, i64 294, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308, !52, i64 312, !52, i64 316, !52, i64 320, !42, i64 324, !42, i64 326, !42, i64 328, !42, i64 330, !42, i64 332, !42, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !42, i64 504, !42, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!261 = distinct !{!261, !48}
!262 = !{!263, !36, i64 120}
!263 = !{!"Key", !81, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !41, i64 168, !41, i64 172, !35, i64 176, !36, i64 192, !36, i64 200, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !52, i64 216, !41, i64 220}
!264 = !{!41, !41, i64 0}
!265 = !{!266, !36, i64 120}
!266 = !{!"bArmature", !81, i64 0, !36, i64 120, !35, i64 128, !35, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !42, i64 208, !42, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!267 = !{!266, !36, i64 160}
!268 = !{!269, !36, i64 32}
!269 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !52, i64 104, !37, i64 108, !37, i64 120, !41, i64 132, !41, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !42, i64 180}
!270 = !{!269, !36, i64 0}
!271 = distinct !{!271, !48}
!272 = !{!269, !36, i64 24}
!273 = distinct !{!273, !48}
!274 = !{!80, !41, i64 432}
!275 = distinct !{!275, !48}
!276 = !{!277, !36, i64 120}
!277 = !{!"FreestyleLineStyle", !81, i64 0, !36, i64 120, !52, i64 128, !52, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !41, i64 148, !52, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !41, i64 192, !42, i64 196, !42, i64 198, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !41, i64 208, !41, i64 212, !52, i64 216, !42, i64 220, !42, i64 222, !42, i64 224, !37, i64 226, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !42, i64 240, !42, i64 242, !41, i64 244, !37, i64 248, !36, i64 392, !35, i64 400, !35, i64 416, !35, i64 432, !35, i64 448}
!278 = distinct !{!278, !48}
!279 = !{!"outliner_tree.c:outliner_add_object_contents"}
!280 = !{!80, !36, i64 120}
!281 = !{!80, !36, i64 280}
!282 = !{!80, !36, i64 232}
!283 = !{!80, !36, i64 24}
!284 = !{!80, !36, i64 296}
!285 = !{!80, !36, i64 288}
!286 = !{!287, !36, i64 536}
!287 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !35, i64 24, !37, i64 40, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !35, i64 144, !35, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !52, i64 264, !42, i64 268, !42, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !52, i64 524, !52, i64 528, !52, i64 532, !36, i64 536}
!288 = !{!287, !36, i64 24}
!289 = distinct !{!289, !48}
!290 = distinct !{!290, !48}
!291 = !{!40, !36, i64 24}
!292 = !{!287, !36, i64 128}
!293 = distinct !{!293, !48}
!294 = !{!295, !36, i64 64}
!295 = !{!"bPose", !35, i64 0, !36, i64 16, !42, i64 24, !42, i64 26, !41, i64 28, !41, i64 32, !52, i64 36, !37, i64 40, !37, i64 52, !35, i64 64, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 96, !82, i64 104, !37, i64 152}
!296 = distinct !{!296, !48}
!297 = !{!80, !41, i64 456}
!298 = !{!80, !36, i64 440}
!299 = distinct !{!299, !48}
!300 = !{!80, !36, i64 1176}
!301 = distinct !{!301, !48}
!302 = !{!80, !36, i64 416}
!303 = !{!304, !41, i64 16}
!304 = !{!"ModifierData", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!305 = !{!306, !36, i64 112}
!306 = !{!"LatticeModifierData", !304, i64 0, !36, i64 112, !37, i64 120, !52, i64 184, !37, i64 188}
!307 = !{!308, !36, i64 112}
!308 = !{!"CurveModifierData", !304, i64 0, !36, i64 112, !37, i64 120, !42, i64 184, !37, i64 186}
!309 = !{!310, !36, i64 120}
!310 = !{!"ArmatureModifierData", !304, i64 0, !42, i64 112, !42, i64 114, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136}
!311 = !{!312, !36, i64 112}
!312 = !{!"HookModifierData", !304, i64 0, !36, i64 112, !37, i64 120, !37, i64 184, !37, i64 248, !52, i64 260, !36, i64 264, !41, i64 272, !52, i64 276, !37, i64 280}
!313 = !{!314, !36, i64 112}
!314 = !{!"ParticleSystemModifierData", !304, i64 0, !36, i64 112, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !42, i64 140, !42, i64 142}
!315 = !{!316, !36, i64 16}
!316 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !35, i64 72, !35, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !35, i64 152, !37, i64 168, !37, i64 232, !52, i64 296, !52, i64 300, !52, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !42, i64 340, !42, i64 342, !42, i64 344, !42, i64 346, !37, i64 348, !37, i64 540, !42, i64 564, !42, i64 566, !36, i64 568, !36, i64 576, !35, i64 584, !36, i64 600, !36, i64 608, !41, i64 616, !41, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !52, i64 648, !52, i64 652}
!317 = distinct !{!317, !48}
!318 = !{!80, !36, i64 400}
!319 = distinct !{!319, !48}
!320 = !{!80, !36, i64 1256}
!321 = !{!"outliner_tree.c:outliner_animdata_test"}
!322 = !{!"outliner_tree.c:outliner_add_bone"}
!323 = distinct !{!323, !48}
!324 = !{!"outliner_tree.c:outliner_add_passes"}
!325 = !{!"outliner_tree.c:treesort_alpha"}
!326 = !{!"outliner_tree.c:treesort_alpha_ob"}
!327 = !{!"outliner_tree.c:BLI_listbase_clear"}
!328 = !{!"outliner_tree.c:outliner_filter_has_name"}
!329 = !{!"outliner_tree.c:BLI_listbase_is_empty"}
