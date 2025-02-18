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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
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
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.IdAdtTemplate = type { %struct.ID, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.tTreeSort = type { ptr, ptr, ptr, i16 }
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

; Function Attrs: nounwind uwtable
define dso_local void @outliner_free_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1, %15
  %5 = phi ptr [ %17, %15 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 3
  tail call void @outliner_free_tree(ptr noundef nonnull %6)
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %5) #12
  %7 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 7
  %8 = load i16, ptr %7, align 8, !tbaa !39
  %9 = and i16 %8, 8
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  tail call void %12(ptr noundef %14) #12
  br label %15

15:                                               ; preds = %11, %4
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %16(ptr noundef nonnull %5) #12
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !47

19:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @outliner_cleanup_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 7
  tail call void @outliner_free_tree(ptr noundef nonnull %2)
  tail call fastcc void @outliner_storage_cleanup(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_storage_cleanup(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.BLI_mempool_iter, align 8
  %3 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %66, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @BLI_mempool_iternew(ptr noundef nonnull %4, ptr noundef nonnull %2) #12
  %7 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.TreeStoreElem, ptr %10, i64 0, i32 3
  store i16 0, ptr %11, align 2, !tbaa !57
  %12 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !58

14:                                               ; preds = %9, %6
  %15 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 13
  %16 = load i16, ptr %15, align 4, !tbaa !59
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %65, label %19

19:                                               ; preds = %14
  call void @BLI_mempool_iternew(ptr noundef nonnull %4, ptr noundef nonnull %2) #12
  %20 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %30, %22 ], [ %20, %19 ]
  %24 = phi i32 [ %29, %22 ], [ 0, %19 ]
  %25 = getelementptr inbounds %struct.TreeStoreElem, ptr %23, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  %27 = icmp eq ptr %26, null
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %24, %28
  %30 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %22, !llvm.loop !61

32:                                               ; preds = %22, %19
  %33 = phi i32 [ 0, %19 ], [ %29, %22 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %32
  %36 = call i32 @BLI_mempool_count(ptr noundef nonnull %4) #12
  %37 = icmp eq i32 %36, %33
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  call void @BLI_mempool_destroy(ptr noundef nonnull %4) #12
  store ptr null, ptr %3, align 8, !tbaa !50
  %39 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 15
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = icmp eq ptr %40, null
  br i1 %41, label %65, label %42

42:                                               ; preds = %38
  call void @BKE_treehash_free(ptr noundef nonnull %40) #12
  store ptr null, ptr %39, align 8, !tbaa !62
  br label %65

43:                                               ; preds = %35
  %44 = call i32 @BLI_mempool_count(ptr noundef nonnull %4) #12
  %45 = sub nsw i32 %44, %33
  %46 = call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef %45, i32 noundef 512, i32 noundef 1) #12
  call void @BLI_mempool_iternew(ptr noundef nonnull %4, ptr noundef nonnull %2) #12
  %47 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %43, %56
  %50 = phi ptr [ %57, %56 ], [ %47, %43 ]
  %51 = getelementptr inbounds %struct.TreeStoreElem, ptr %50, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !60
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = call ptr @BLI_mempool_alloc(ptr noundef %46) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(16) %50, i64 16, i1 false), !tbaa.struct !63
  br label %56

56:                                               ; preds = %54, %49
  %57 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %2) #12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %49, !llvm.loop !65

59:                                               ; preds = %56, %43
  call void @BLI_mempool_destroy(ptr noundef nonnull %4) #12
  store ptr %46, ptr %3, align 8, !tbaa !50
  %60 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 15
  %61 = load ptr, ptr %60, align 8, !tbaa !62
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call ptr @BKE_treehash_rebuild_from_treestore(ptr noundef nonnull %61, ptr noundef %46) #12
  br label %65

65:                                               ; preds = %59, %63, %32, %38, %42, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  br label %66

66:                                               ; preds = %65, %1
  ret void
}

; Function Attrs: nounwind uwtable
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
  %12 = tail call ptr @BKE_treehash_lookup_any(ptr noundef %8, i16 noundef signext %9, i16 noundef signext %11, ptr noundef nonnull %4) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 7
  %16 = tail call fastcc ptr @outliner_find_tree_element(ptr noundef nonnull %15, ptr noundef nonnull %12)
  br label %17

17:                                               ; preds = %6, %2, %14
  %18 = phi ptr [ %16, %14 ], [ null, %2 ], [ null, %6 ]
  ret ptr %18
}

declare ptr @BKE_treehash_lookup_any(ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @outliner_find_tree_element(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #3 {
  br label %3

3:                                                ; preds = %11, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %11 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 3
  %13 = tail call fastcc ptr @outliner_find_tree_element(ptr noundef nonnull %12, ptr noundef %1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %3, label %15, !llvm.loop !69

15:                                               ; preds = %3, %11, %7
  %16 = phi ptr [ %5, %7 ], [ %13, %11 ], [ null, %3 ]
  ret ptr %16
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
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
  %11 = load ptr, ptr %10, align 8, !tbaa !68
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
  %20 = load i16, ptr %19, align 4, !tbaa !70
  switch i16 %20, label %21 [
    i16 16975, label %26
    i16 17235, label %26
  ]

21:                                               ; preds = %18
  %22 = load i16, ptr %7, align 2, !tbaa !71
  %23 = icmp eq i16 %22, 6
  %24 = icmp eq i16 %20, 21063
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %18, %18
  %27 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 3
  %28 = tail call ptr @outliner_find_id(ptr noundef %0, ptr noundef nonnull %27, ptr noundef %2)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %8, %26, %21
  %31 = load ptr, ptr %9, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !llvm.loop !72

33:                                               ; preds = %14, %26, %30, %3
  %34 = phi ptr [ null, %3 ], [ %9, %14 ], [ %28, %26 ], [ null, %30 ]
  ret ptr %34
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @outliner_search_back(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.TreeElement, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3, %20
  %8 = phi ptr [ %22, %20 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.TreeElement, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = load i16, ptr %10, align 8, !tbaa !66
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.TreeElement, ptr %8, i64 0, i32 9
  %15 = load i16, ptr %14, align 4, !tbaa !70
  %16 = icmp eq i16 %15, %2
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.TreeStoreElem, ptr %10, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  br label %24

20:                                               ; preds = %13, %7
  %21 = getelementptr inbounds %struct.TreeElement, ptr %8, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %7, !llvm.loop !74

24:                                               ; preds = %20, %3, %17
  %25 = phi ptr [ %19, %17 ], [ null, %3 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define dso_local void @outliner_build_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @BLI_mempool_count(ptr noundef nonnull %7) #12
  %11 = icmp eq i32 %10, 0
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i1 [ true, %3 ], [ %11, %9 ]
  %14 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 9
  %15 = load i8, ptr %14, align 8, !tbaa !75
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 12
  %19 = load i16, ptr %18, align 2, !tbaa !71
  %20 = icmp eq i16 %19, 11
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 14
  %23 = load i16, ptr %22, align 2, !tbaa !76
  %24 = or i16 %23, 4
  store i16 %24, ptr %22, align 2, !tbaa !76
  br label %29

25:                                               ; preds = %17, %12
  %26 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 14
  %27 = load i16, ptr %26, align 2, !tbaa !76
  %28 = and i16 %27, -5
  store i16 %28, ptr %26, align 2, !tbaa !76
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !77
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 13
  %35 = load i16, ptr %34, align 4, !tbaa !59
  %36 = and i16 %35, 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %625

38:                                               ; preds = %33, %29
  tail call void @outliner_free_tree(ptr noundef nonnull %30)
  tail call fastcc void @outliner_storage_cleanup(ptr noundef %2)
  %39 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %40 = load ptr, ptr %39, align 8, !tbaa !45
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38, %42
  %43 = phi ptr [ %45, %42 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 2
  store ptr null, ptr %44, align 8, !tbaa !78
  %45 = load ptr, ptr %43, align 8, !tbaa !45
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %42, !llvm.loop !83

47:                                               ; preds = %42, %38
  %48 = getelementptr inbounds %struct.SpaceOops, ptr %2, i64 0, i32 12
  %49 = load i16, ptr %48, align 2, !tbaa !71
  switch i16 %49, label %609 [
    i16 7, label %50
    i16 0, label %104
    i16 1, label %185
    i16 2, label %235
    i16 6, label %293
    i16 5, label %368
    i16 3, label %436
    i16 10, label %504
    i16 11, label %591
    i16 12, label %600
  ]

50:                                               ; preds = %47
  %51 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef %0, ptr noundef null, i16 noundef signext 36, i16 noundef signext 0)
  %52 = getelementptr inbounds %struct.TreeElement, ptr %51, i64 0, i32 11
  store ptr @.str, ptr %52, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.TreeElement, ptr %51, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !68
  %55 = getelementptr inbounds %struct.TreeStoreElem, ptr %54, i64 0, i32 3
  %56 = load i16, ptr %55, align 2, !tbaa !57
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.TreeStoreElem, ptr %54, i64 0, i32 2
  %60 = load i16, ptr %59, align 4, !tbaa !84
  %61 = and i16 %60, -2
  store i16 %61, ptr %59, align 4, !tbaa !84
  br label %62

62:                                               ; preds = %58, %50
  tail call fastcc void @outliner_add_library_contents(ptr noundef %0, ptr noundef %2, ptr noundef %51, ptr noundef null)
  %63 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 12
  %64 = load ptr, ptr %63, align 8, !tbaa !45
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %62, %66
  %67 = phi ptr [ %70, %66 ], [ %64, %62 ]
  %68 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %67, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0)
  %69 = getelementptr inbounds %struct.ID, ptr %67, i64 0, i32 2
  store ptr %68, ptr %69, align 8, !tbaa !85
  tail call fastcc void @outliner_add_library_contents(ptr noundef %0, ptr noundef %2, ptr noundef %68, ptr noundef nonnull %67)
  %70 = load ptr, ptr %67, align 8, !tbaa !45
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %66, !llvm.loop !87

72:                                               ; preds = %66, %62
  %73 = load ptr, ptr %30, align 8, !tbaa !77
  %74 = load ptr, ptr %73, align 8, !tbaa !88
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %97, %72
  %77 = load ptr, ptr %63, align 8, !tbaa !45
  %78 = icmp eq ptr %77, null
  br i1 %78, label %623, label %99

79:                                               ; preds = %72, %97
  %80 = phi ptr [ %81, %97 ], [ %74, %72 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !88
  %82 = getelementptr inbounds %struct.TreeElement, ptr %80, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !68
  %84 = getelementptr inbounds %struct.TreeStoreElem, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !60
  %86 = icmp eq ptr %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.Library, ptr %85, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !89
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  tail call void @BLI_remlink(ptr noundef nonnull %30, ptr noundef nonnull %80) #12
  %92 = load ptr, ptr %88, align 8, !tbaa !89
  %93 = getelementptr inbounds %struct.ID, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !85
  %95 = getelementptr inbounds %struct.TreeElement, ptr %94, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %95, ptr noundef nonnull %80) #12
  %96 = getelementptr inbounds %struct.TreeElement, ptr %80, i64 0, i32 2
  store ptr %94, ptr %96, align 8, !tbaa !73
  br label %97

97:                                               ; preds = %91, %87, %79
  %98 = icmp eq ptr %81, null
  br i1 %98, label %76, label %79, !llvm.loop !90

99:                                               ; preds = %76, %99
  %100 = phi ptr [ %102, %99 ], [ %77, %76 ]
  %101 = getelementptr inbounds %struct.ID, ptr %100, i64 0, i32 2
  store ptr null, ptr %101, align 8, !tbaa !85
  %102 = load ptr, ptr %100, align 8, !tbaa !45
  %103 = icmp eq ptr %102, null
  br i1 %103, label %623, label %99, !llvm.loop !91

104:                                              ; preds = %47
  %105 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %106 = load ptr, ptr %105, align 8, !tbaa !45
  %107 = icmp eq ptr %106, null
  br i1 %107, label %623, label %111

108:                                              ; preds = %178, %175
  %109 = load ptr, ptr %112, align 8, !tbaa !45
  %110 = icmp eq ptr %109, null
  br i1 %110, label %623, label %111, !llvm.loop !92

111:                                              ; preds = %104, %108
  %112 = phi ptr [ %109, %108 ], [ %106, %104 ]
  %113 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %112, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0)
  %114 = icmp eq ptr %112, %1
  %115 = select i1 %114, i1 %13, i1 false
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.TreeElement, ptr %113, i64 0, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !68
  %119 = getelementptr inbounds %struct.TreeStoreElem, ptr %118, i64 0, i32 2
  %120 = load i16, ptr %119, align 4, !tbaa !84
  %121 = and i16 %120, -2
  store i16 %121, ptr %119, align 4, !tbaa !84
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
  %131 = load ptr, ptr %130, align 8, !tbaa !93
  %132 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %127, ptr noundef %131, ptr noundef %113, i16 noundef signext 0, i16 noundef signext 0)
  %133 = getelementptr inbounds %struct.TreeElement, ptr %132, i64 0, i32 12
  store ptr %129, ptr %133, align 8, !tbaa !95
  %134 = load ptr, ptr %129, align 8, !tbaa !45
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %128, !llvm.loop !96

136:                                              ; preds = %128, %122
  %137 = getelementptr inbounds %struct.TreeElement, ptr %113, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !34
  %139 = icmp eq ptr %138, null
  br i1 %139, label %175, label %140

140:                                              ; preds = %136, %173
  %141 = phi ptr [ %142, %173 ], [ %138, %136 ]
  %142 = load ptr, ptr %141, align 8, !tbaa !88
  %143 = getelementptr inbounds %struct.TreeElement, ptr %141, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !68
  %145 = load i16, ptr %144, align 8, !tbaa !66
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.TreeElement, ptr %141, i64 0, i32 9
  %149 = load i16, ptr %148, align 4, !tbaa !70
  %150 = icmp eq i16 %149, 16975
  br i1 %150, label %151, label %173

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.TreeStoreElem, ptr %144, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !60
  %154 = getelementptr inbounds %struct.Object, ptr %153, i64 0, i32 9
  %155 = load ptr, ptr %154, align 8, !tbaa !97
  %156 = icmp eq ptr %155, null
  br i1 %156, label %173, label %157

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.ID, ptr %155, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !78
  %160 = icmp eq ptr %159, null
  br i1 %160, label %173, label %161

161:                                              ; preds = %157
  tail call void @BLI_remlink(ptr noundef nonnull %137, ptr noundef nonnull %141) #12
  %162 = load ptr, ptr %154, align 8, !tbaa !97
  %163 = getelementptr inbounds %struct.ID, ptr %162, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !78
  %165 = getelementptr inbounds %struct.TreeElement, ptr %164, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %165, ptr noundef nonnull %141) #12
  %166 = load ptr, ptr %165, align 8, !tbaa !45
  %167 = icmp eq ptr %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %161, %168
  %169 = phi ptr [ %171, %168 ], [ %166, %161 ]
  %170 = getelementptr inbounds %struct.TreeElement, ptr %169, i64 0, i32 2
  store ptr %164, ptr %170, align 8, !tbaa !73
  %171 = load ptr, ptr %169, align 8, !tbaa !45
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %168, !llvm.loop !98

173:                                              ; preds = %168, %161, %157, %151, %147, %140
  %174 = icmp eq ptr %142, null
  br i1 %174, label %175, label %140, !llvm.loop !99

175:                                              ; preds = %173, %136
  %176 = load ptr, ptr %123, align 8, !tbaa !45
  %177 = icmp eq ptr %176, null
  br i1 %177, label %108, label %178

178:                                              ; preds = %175, %178
  %179 = phi ptr [ %183, %178 ], [ %176, %175 ]
  %180 = getelementptr inbounds %struct.Base, ptr %179, i64 0, i32 7
  %181 = load ptr, ptr %180, align 8, !tbaa !93
  %182 = getelementptr inbounds %struct.ID, ptr %181, i64 0, i32 2
  store ptr null, ptr %182, align 8, !tbaa !78
  %183 = load ptr, ptr %179, align 8, !tbaa !45
  %184 = icmp eq ptr %183, null
  br i1 %184, label %108, label %178, !llvm.loop !100

185:                                              ; preds = %47
  tail call fastcc void @outliner_add_scene_contents(ptr noundef %2, ptr noundef nonnull %30, ptr noundef %1, ptr noundef null)
  %186 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %187 = load ptr, ptr %186, align 8, !tbaa !45
  %188 = icmp eq ptr %187, null
  br i1 %188, label %197, label %189

189:                                              ; preds = %185, %189
  %190 = phi ptr [ %195, %189 ], [ %187, %185 ]
  %191 = getelementptr inbounds %struct.Base, ptr %190, i64 0, i32 7
  %192 = load ptr, ptr %191, align 8, !tbaa !93
  %193 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef %192, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0)
  %194 = getelementptr inbounds %struct.TreeElement, ptr %193, i64 0, i32 12
  store ptr %190, ptr %194, align 8, !tbaa !95
  %195 = load ptr, ptr %190, align 8, !tbaa !45
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %189, !llvm.loop !101

197:                                              ; preds = %189, %185
  %198 = load ptr, ptr %30, align 8, !tbaa !34
  %199 = icmp eq ptr %198, null
  br i1 %199, label %623, label %200

200:                                              ; preds = %197, %233
  %201 = phi ptr [ %202, %233 ], [ %198, %197 ]
  %202 = load ptr, ptr %201, align 8, !tbaa !88
  %203 = getelementptr inbounds %struct.TreeElement, ptr %201, i64 0, i32 6
  %204 = load ptr, ptr %203, align 8, !tbaa !68
  %205 = load i16, ptr %204, align 8, !tbaa !66
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %207, label %233

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.TreeElement, ptr %201, i64 0, i32 9
  %209 = load i16, ptr %208, align 4, !tbaa !70
  %210 = icmp eq i16 %209, 16975
  br i1 %210, label %211, label %233

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.TreeStoreElem, ptr %204, i64 0, i32 4
  %213 = load ptr, ptr %212, align 8, !tbaa !60
  %214 = getelementptr inbounds %struct.Object, ptr %213, i64 0, i32 9
  %215 = load ptr, ptr %214, align 8, !tbaa !97
  %216 = icmp eq ptr %215, null
  br i1 %216, label %233, label %217

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.ID, ptr %215, i64 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !78
  %220 = icmp eq ptr %219, null
  br i1 %220, label %233, label %221

221:                                              ; preds = %217
  tail call void @BLI_remlink(ptr noundef nonnull %30, ptr noundef nonnull %201) #12
  %222 = load ptr, ptr %214, align 8, !tbaa !97
  %223 = getelementptr inbounds %struct.ID, ptr %222, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !78
  %225 = getelementptr inbounds %struct.TreeElement, ptr %224, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %225, ptr noundef nonnull %201) #12
  %226 = load ptr, ptr %225, align 8, !tbaa !45
  %227 = icmp eq ptr %226, null
  br i1 %227, label %233, label %228

228:                                              ; preds = %221, %228
  %229 = phi ptr [ %231, %228 ], [ %226, %221 ]
  %230 = getelementptr inbounds %struct.TreeElement, ptr %229, i64 0, i32 2
  store ptr %224, ptr %230, align 8, !tbaa !73
  %231 = load ptr, ptr %229, align 8, !tbaa !45
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %228, !llvm.loop !98

233:                                              ; preds = %228, %221, %217, %211, %207, %200
  %234 = icmp eq ptr %202, null
  br i1 %234, label %623, label %200, !llvm.loop !99

235:                                              ; preds = %47
  %236 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %237 = load ptr, ptr %236, align 8, !tbaa !45
  %238 = icmp eq ptr %237, null
  br i1 %238, label %255, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  br label %241

241:                                              ; preds = %239, %252
  %242 = phi ptr [ %237, %239 ], [ %253, %252 ]
  %243 = getelementptr inbounds %struct.Base, ptr %242, i64 0, i32 2
  %244 = load i32, ptr %243, align 8, !tbaa !102
  %245 = load i32, ptr %240, align 8, !tbaa !103
  %246 = and i32 %245, %244
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %241
  %249 = getelementptr inbounds %struct.Base, ptr %242, i64 0, i32 7
  %250 = load ptr, ptr %249, align 8, !tbaa !93
  %251 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef %250, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0)
  br label %252

252:                                              ; preds = %241, %248
  %253 = load ptr, ptr %242, align 8, !tbaa !45
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %241, !llvm.loop !120

255:                                              ; preds = %252, %235
  %256 = load ptr, ptr %30, align 8, !tbaa !34
  %257 = icmp eq ptr %256, null
  br i1 %257, label %623, label %258

258:                                              ; preds = %255, %291
  %259 = phi ptr [ %260, %291 ], [ %256, %255 ]
  %260 = load ptr, ptr %259, align 8, !tbaa !88
  %261 = getelementptr inbounds %struct.TreeElement, ptr %259, i64 0, i32 6
  %262 = load ptr, ptr %261, align 8, !tbaa !68
  %263 = load i16, ptr %262, align 8, !tbaa !66
  %264 = icmp eq i16 %263, 0
  br i1 %264, label %265, label %291

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.TreeElement, ptr %259, i64 0, i32 9
  %267 = load i16, ptr %266, align 4, !tbaa !70
  %268 = icmp eq i16 %267, 16975
  br i1 %268, label %269, label %291

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.TreeStoreElem, ptr %262, i64 0, i32 4
  %271 = load ptr, ptr %270, align 8, !tbaa !60
  %272 = getelementptr inbounds %struct.Object, ptr %271, i64 0, i32 9
  %273 = load ptr, ptr %272, align 8, !tbaa !97
  %274 = icmp eq ptr %273, null
  br i1 %274, label %291, label %275

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.ID, ptr %273, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !78
  %278 = icmp eq ptr %277, null
  br i1 %278, label %291, label %279

279:                                              ; preds = %275
  tail call void @BLI_remlink(ptr noundef nonnull %30, ptr noundef nonnull %259) #12
  %280 = load ptr, ptr %272, align 8, !tbaa !97
  %281 = getelementptr inbounds %struct.ID, ptr %280, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !78
  %283 = getelementptr inbounds %struct.TreeElement, ptr %282, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %283, ptr noundef nonnull %259) #12
  %284 = load ptr, ptr %283, align 8, !tbaa !45
  %285 = icmp eq ptr %284, null
  br i1 %285, label %291, label %286

286:                                              ; preds = %279, %286
  %287 = phi ptr [ %289, %286 ], [ %284, %279 ]
  %288 = getelementptr inbounds %struct.TreeElement, ptr %287, i64 0, i32 2
  store ptr %282, ptr %288, align 8, !tbaa !73
  %289 = load ptr, ptr %287, align 8, !tbaa !45
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %286, !llvm.loop !98

291:                                              ; preds = %286, %279, %275, %269, %265, %258
  %292 = icmp eq ptr %260, null
  br i1 %292, label %623, label %258, !llvm.loop !99

293:                                              ; preds = %47
  %294 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %295 = load ptr, ptr %294, align 8, !tbaa !45
  %296 = icmp eq ptr %295, null
  br i1 %296, label %623, label %297

297:                                              ; preds = %293, %365
  %298 = phi ptr [ %366, %365 ], [ %295, %293 ]
  %299 = getelementptr inbounds %struct.Group, ptr %298, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !121
  %301 = icmp eq ptr %300, null
  br i1 %301, label %365, label %302

302:                                              ; preds = %297
  %303 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %298, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0)
  %304 = load ptr, ptr %299, align 8, !tbaa !45
  %305 = icmp eq ptr %304, null
  br i1 %305, label %316, label %306

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.TreeElement, ptr %303, i64 0, i32 3
  br label %308

308:                                              ; preds = %306, %308
  %309 = phi ptr [ %304, %306 ], [ %314, %308 ]
  %310 = getelementptr inbounds %struct.GroupObject, ptr %309, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !123
  %312 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %307, ptr noundef %311, ptr noundef %303, i16 noundef signext 0, i16 noundef signext 0)
  %313 = getelementptr inbounds %struct.TreeElement, ptr %312, i64 0, i32 12
  store ptr null, ptr %313, align 8, !tbaa !95
  %314 = load ptr, ptr %309, align 8, !tbaa !45
  %315 = icmp eq ptr %314, null
  br i1 %315, label %316, label %308, !llvm.loop !125

316:                                              ; preds = %308, %302
  %317 = getelementptr inbounds %struct.TreeElement, ptr %303, i64 0, i32 3
  %318 = load ptr, ptr %317, align 8, !tbaa !34
  %319 = icmp eq ptr %318, null
  br i1 %319, label %355, label %320

320:                                              ; preds = %316, %353
  %321 = phi ptr [ %322, %353 ], [ %318, %316 ]
  %322 = load ptr, ptr %321, align 8, !tbaa !88
  %323 = getelementptr inbounds %struct.TreeElement, ptr %321, i64 0, i32 6
  %324 = load ptr, ptr %323, align 8, !tbaa !68
  %325 = load i16, ptr %324, align 8, !tbaa !66
  %326 = icmp eq i16 %325, 0
  br i1 %326, label %327, label %353

327:                                              ; preds = %320
  %328 = getelementptr inbounds %struct.TreeElement, ptr %321, i64 0, i32 9
  %329 = load i16, ptr %328, align 4, !tbaa !70
  %330 = icmp eq i16 %329, 16975
  br i1 %330, label %331, label %353

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.TreeStoreElem, ptr %324, i64 0, i32 4
  %333 = load ptr, ptr %332, align 8, !tbaa !60
  %334 = getelementptr inbounds %struct.Object, ptr %333, i64 0, i32 9
  %335 = load ptr, ptr %334, align 8, !tbaa !97
  %336 = icmp eq ptr %335, null
  br i1 %336, label %353, label %337

337:                                              ; preds = %331
  %338 = getelementptr inbounds %struct.ID, ptr %335, i64 0, i32 2
  %339 = load ptr, ptr %338, align 8, !tbaa !78
  %340 = icmp eq ptr %339, null
  br i1 %340, label %353, label %341

341:                                              ; preds = %337
  tail call void @BLI_remlink(ptr noundef nonnull %317, ptr noundef nonnull %321) #12
  %342 = load ptr, ptr %334, align 8, !tbaa !97
  %343 = getelementptr inbounds %struct.ID, ptr %342, i64 0, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !78
  %345 = getelementptr inbounds %struct.TreeElement, ptr %344, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %345, ptr noundef nonnull %321) #12
  %346 = load ptr, ptr %345, align 8, !tbaa !45
  %347 = icmp eq ptr %346, null
  br i1 %347, label %353, label %348

348:                                              ; preds = %341, %348
  %349 = phi ptr [ %351, %348 ], [ %346, %341 ]
  %350 = getelementptr inbounds %struct.TreeElement, ptr %349, i64 0, i32 2
  store ptr %344, ptr %350, align 8, !tbaa !73
  %351 = load ptr, ptr %349, align 8, !tbaa !45
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %348, !llvm.loop !98

353:                                              ; preds = %348, %341, %337, %331, %327, %320
  %354 = icmp eq ptr %322, null
  br i1 %354, label %355, label %320, !llvm.loop !99

355:                                              ; preds = %353, %316
  %356 = load ptr, ptr %299, align 8, !tbaa !45
  %357 = icmp eq ptr %356, null
  br i1 %357, label %365, label %358

358:                                              ; preds = %355, %358
  %359 = phi ptr [ %363, %358 ], [ %356, %355 ]
  %360 = getelementptr inbounds %struct.GroupObject, ptr %359, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !123
  %362 = getelementptr inbounds %struct.ID, ptr %361, i64 0, i32 2
  store ptr null, ptr %362, align 8, !tbaa !78
  %363 = load ptr, ptr %359, align 8, !tbaa !45
  %364 = icmp eq ptr %363, null
  br i1 %364, label %365, label %358, !llvm.loop !126

365:                                              ; preds = %358, %355, %297
  %366 = load ptr, ptr %298, align 8, !tbaa !45
  %367 = icmp eq ptr %366, null
  br i1 %367, label %623, label %297, !llvm.loop !127

368:                                              ; preds = %47
  %369 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %370 = load ptr, ptr %369, align 8, !tbaa !128
  %371 = icmp eq ptr %370, null
  br i1 %371, label %375, label %372

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.Base, ptr %370, i64 0, i32 7
  %374 = load ptr, ptr %373, align 8, !tbaa !93
  br label %375

375:                                              ; preds = %368, %372
  %376 = phi ptr [ %374, %372 ], [ null, %368 ]
  %377 = icmp eq ptr %376, null
  br i1 %377, label %623, label %378

378:                                              ; preds = %375
  %379 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %380 = load ptr, ptr %379, align 8, !tbaa !45
  %381 = icmp eq ptr %380, null
  br i1 %381, label %398, label %382

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.Object, ptr %376, i64 0, i32 3
  br label %384

384:                                              ; preds = %382, %395
  %385 = phi ptr [ %380, %382 ], [ %396, %395 ]
  %386 = getelementptr inbounds %struct.Base, ptr %385, i64 0, i32 7
  %387 = load ptr, ptr %386, align 8, !tbaa !93
  %388 = getelementptr inbounds %struct.Object, ptr %387, i64 0, i32 3
  %389 = load i16, ptr %388, align 8, !tbaa !129
  %390 = load i16, ptr %383, align 8, !tbaa !129
  %391 = icmp eq i16 %389, %390
  br i1 %391, label %392, label %395

392:                                              ; preds = %384
  %393 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef %387, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0)
  %394 = getelementptr inbounds %struct.TreeElement, ptr %393, i64 0, i32 12
  store ptr %385, ptr %394, align 8, !tbaa !95
  br label %395

395:                                              ; preds = %384, %392
  %396 = load ptr, ptr %385, align 8, !tbaa !45
  %397 = icmp eq ptr %396, null
  br i1 %397, label %398, label %384, !llvm.loop !130

398:                                              ; preds = %395, %378
  %399 = load ptr, ptr %30, align 8, !tbaa !34
  %400 = icmp eq ptr %399, null
  br i1 %400, label %623, label %401

401:                                              ; preds = %398, %434
  %402 = phi ptr [ %403, %434 ], [ %399, %398 ]
  %403 = load ptr, ptr %402, align 8, !tbaa !88
  %404 = getelementptr inbounds %struct.TreeElement, ptr %402, i64 0, i32 6
  %405 = load ptr, ptr %404, align 8, !tbaa !68
  %406 = load i16, ptr %405, align 8, !tbaa !66
  %407 = icmp eq i16 %406, 0
  br i1 %407, label %408, label %434

408:                                              ; preds = %401
  %409 = getelementptr inbounds %struct.TreeElement, ptr %402, i64 0, i32 9
  %410 = load i16, ptr %409, align 4, !tbaa !70
  %411 = icmp eq i16 %410, 16975
  br i1 %411, label %412, label %434

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.TreeStoreElem, ptr %405, i64 0, i32 4
  %414 = load ptr, ptr %413, align 8, !tbaa !60
  %415 = getelementptr inbounds %struct.Object, ptr %414, i64 0, i32 9
  %416 = load ptr, ptr %415, align 8, !tbaa !97
  %417 = icmp eq ptr %416, null
  br i1 %417, label %434, label %418

418:                                              ; preds = %412
  %419 = getelementptr inbounds %struct.ID, ptr %416, i64 0, i32 2
  %420 = load ptr, ptr %419, align 8, !tbaa !78
  %421 = icmp eq ptr %420, null
  br i1 %421, label %434, label %422

422:                                              ; preds = %418
  tail call void @BLI_remlink(ptr noundef nonnull %30, ptr noundef nonnull %402) #12
  %423 = load ptr, ptr %415, align 8, !tbaa !97
  %424 = getelementptr inbounds %struct.ID, ptr %423, i64 0, i32 2
  %425 = load ptr, ptr %424, align 8, !tbaa !78
  %426 = getelementptr inbounds %struct.TreeElement, ptr %425, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %426, ptr noundef nonnull %402) #12
  %427 = load ptr, ptr %426, align 8, !tbaa !45
  %428 = icmp eq ptr %427, null
  br i1 %428, label %434, label %429

429:                                              ; preds = %422, %429
  %430 = phi ptr [ %432, %429 ], [ %427, %422 ]
  %431 = getelementptr inbounds %struct.TreeElement, ptr %430, i64 0, i32 2
  store ptr %425, ptr %431, align 8, !tbaa !73
  %432 = load ptr, ptr %430, align 8, !tbaa !45
  %433 = icmp eq ptr %432, null
  br i1 %433, label %434, label %429, !llvm.loop !98

434:                                              ; preds = %429, %422, %418, %412, %408, %401
  %435 = icmp eq ptr %403, null
  br i1 %435, label %623, label %401, !llvm.loop !99

436:                                              ; preds = %47
  %437 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %438 = load ptr, ptr %437, align 8, !tbaa !45
  %439 = icmp eq ptr %438, null
  br i1 %439, label %466, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  %442 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  br label %443

443:                                              ; preds = %440, %463
  %444 = phi ptr [ %438, %440 ], [ %464, %463 ]
  %445 = getelementptr inbounds %struct.Base, ptr %444, i64 0, i32 2
  %446 = load i32, ptr %445, align 8, !tbaa !102
  %447 = load i32, ptr %441, align 8, !tbaa !103
  %448 = and i32 %447, %446
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %463, label %450

450:                                              ; preds = %443
  %451 = load ptr, ptr %442, align 8, !tbaa !128
  %452 = icmp eq ptr %444, %451
  br i1 %452, label %458, label %453

453:                                              ; preds = %450
  %454 = getelementptr inbounds %struct.Base, ptr %444, i64 0, i32 4
  %455 = load i32, ptr %454, align 8, !tbaa !131
  %456 = and i32 %455, 1
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %463, label %458

458:                                              ; preds = %453, %450
  %459 = getelementptr inbounds %struct.Base, ptr %444, i64 0, i32 7
  %460 = load ptr, ptr %459, align 8, !tbaa !93
  %461 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef %460, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0)
  %462 = getelementptr inbounds %struct.TreeElement, ptr %461, i64 0, i32 12
  store ptr %444, ptr %462, align 8, !tbaa !95
  br label %463

463:                                              ; preds = %443, %458, %453
  %464 = load ptr, ptr %444, align 8, !tbaa !45
  %465 = icmp eq ptr %464, null
  br i1 %465, label %466, label %443, !llvm.loop !132

466:                                              ; preds = %463, %436
  %467 = load ptr, ptr %30, align 8, !tbaa !34
  %468 = icmp eq ptr %467, null
  br i1 %468, label %623, label %469

469:                                              ; preds = %466, %502
  %470 = phi ptr [ %471, %502 ], [ %467, %466 ]
  %471 = load ptr, ptr %470, align 8, !tbaa !88
  %472 = getelementptr inbounds %struct.TreeElement, ptr %470, i64 0, i32 6
  %473 = load ptr, ptr %472, align 8, !tbaa !68
  %474 = load i16, ptr %473, align 8, !tbaa !66
  %475 = icmp eq i16 %474, 0
  br i1 %475, label %476, label %502

476:                                              ; preds = %469
  %477 = getelementptr inbounds %struct.TreeElement, ptr %470, i64 0, i32 9
  %478 = load i16, ptr %477, align 4, !tbaa !70
  %479 = icmp eq i16 %478, 16975
  br i1 %479, label %480, label %502

480:                                              ; preds = %476
  %481 = getelementptr inbounds %struct.TreeStoreElem, ptr %473, i64 0, i32 4
  %482 = load ptr, ptr %481, align 8, !tbaa !60
  %483 = getelementptr inbounds %struct.Object, ptr %482, i64 0, i32 9
  %484 = load ptr, ptr %483, align 8, !tbaa !97
  %485 = icmp eq ptr %484, null
  br i1 %485, label %502, label %486

486:                                              ; preds = %480
  %487 = getelementptr inbounds %struct.ID, ptr %484, i64 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !78
  %489 = icmp eq ptr %488, null
  br i1 %489, label %502, label %490

490:                                              ; preds = %486
  tail call void @BLI_remlink(ptr noundef nonnull %30, ptr noundef nonnull %470) #12
  %491 = load ptr, ptr %483, align 8, !tbaa !97
  %492 = getelementptr inbounds %struct.ID, ptr %491, i64 0, i32 2
  %493 = load ptr, ptr %492, align 8, !tbaa !78
  %494 = getelementptr inbounds %struct.TreeElement, ptr %493, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %494, ptr noundef nonnull %470) #12
  %495 = load ptr, ptr %494, align 8, !tbaa !45
  %496 = icmp eq ptr %495, null
  br i1 %496, label %502, label %497

497:                                              ; preds = %490, %497
  %498 = phi ptr [ %500, %497 ], [ %495, %490 ]
  %499 = getelementptr inbounds %struct.TreeElement, ptr %498, i64 0, i32 2
  store ptr %493, ptr %499, align 8, !tbaa !73
  %500 = load ptr, ptr %498, align 8, !tbaa !45
  %501 = icmp eq ptr %500, null
  br i1 %501, label %502, label %497, !llvm.loop !98

502:                                              ; preds = %497, %490, %486, %480, %476, %469
  %503 = icmp eq ptr %471, null
  br i1 %503, label %623, label %469, !llvm.loop !99

504:                                              ; preds = %47
  %505 = tail call ptr @BKE_sequencer_editing_get(ptr noundef %1, i8 noundef zeroext 0) #12
  %506 = icmp eq ptr %505, null
  br i1 %506, label %625, label %507

507:                                              ; preds = %504
  %508 = load ptr, ptr %505, align 8, !tbaa !133
  %509 = load ptr, ptr %508, align 8, !tbaa !34
  %510 = icmp eq ptr %509, null
  br i1 %510, label %625, label %511

511:                                              ; preds = %507, %588
  %512 = phi ptr [ %589, %588 ], [ %509, %507 ]
  %513 = getelementptr inbounds %struct.Sequence, ptr %512, i64 0, i32 24
  %514 = load ptr, ptr %513, align 8, !tbaa !135
  %515 = icmp eq ptr %514, null
  br i1 %515, label %558, label %516

516:                                              ; preds = %511
  %517 = getelementptr inbounds %struct.Strip, ptr %514, i64 0, i32 6
  %518 = load ptr, ptr %517, align 8, !tbaa !137
  %519 = icmp eq ptr %518, null
  br i1 %519, label %558, label %520

520:                                              ; preds = %516
  %521 = getelementptr inbounds %struct.Sequence, ptr %512, i64 0, i32 1
  %522 = load ptr, ptr %521, align 8, !tbaa !139
  %523 = icmp eq ptr %522, null
  br i1 %523, label %524, label %527

524:                                              ; preds = %536, %520
  %525 = load ptr, ptr %512, align 8, !tbaa !140
  %526 = icmp eq ptr %525, null
  br i1 %526, label %558, label %543

527:                                              ; preds = %520, %536
  %528 = phi ptr [ %538, %536 ], [ %522, %520 ]
  %529 = getelementptr inbounds %struct.Sequence, ptr %528, i64 0, i32 24
  %530 = load ptr, ptr %529, align 8, !tbaa !135
  %531 = icmp eq ptr %530, null
  br i1 %531, label %536, label %532

532:                                              ; preds = %527
  %533 = getelementptr inbounds %struct.Strip, ptr %530, i64 0, i32 6
  %534 = load ptr, ptr %533, align 8, !tbaa !137
  %535 = icmp eq ptr %534, null
  br i1 %535, label %536, label %540

536:                                              ; preds = %540, %527, %532
  %537 = getelementptr inbounds %struct.Sequence, ptr %528, i64 0, i32 1
  %538 = load ptr, ptr %537, align 8, !tbaa !139
  %539 = icmp eq ptr %538, null
  br i1 %539, label %524, label %527, !llvm.loop !141

540:                                              ; preds = %532
  %541 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %534, ptr noundef nonnull dereferenceable(1) %518) #13
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %558, label %536

543:                                              ; preds = %524, %552
  %544 = phi ptr [ %553, %552 ], [ %525, %524 ]
  %545 = getelementptr inbounds %struct.Sequence, ptr %544, i64 0, i32 24
  %546 = load ptr, ptr %545, align 8, !tbaa !135
  %547 = icmp eq ptr %546, null
  br i1 %547, label %552, label %548

548:                                              ; preds = %543
  %549 = getelementptr inbounds %struct.Strip, ptr %546, i64 0, i32 6
  %550 = load ptr, ptr %549, align 8, !tbaa !137
  %551 = icmp eq ptr %550, null
  br i1 %551, label %552, label %555

552:                                              ; preds = %543, %548, %555
  %553 = load ptr, ptr %544, align 8, !tbaa !140
  %554 = icmp eq ptr %553, null
  br i1 %554, label %558, label %543, !llvm.loop !142

555:                                              ; preds = %548
  %556 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %550, ptr noundef nonnull dereferenceable(1) %518) #13
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %552

558:                                              ; preds = %540, %555, %552, %524, %511, %516
  %559 = phi i32 [ 1, %516 ], [ 1, %511 ], [ 1, %524 ], [ 1, %552 ], [ 0, %555 ], [ 2, %540 ]
  switch i32 %559, label %588 [
    i32 1, label %560
    i32 0, label %562
  ]

560:                                              ; preds = %558
  %561 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %512, ptr noundef null, i16 noundef signext 26, i16 noundef signext 0)
  br label %588

562:                                              ; preds = %558
  %563 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %512, ptr noundef null, i16 noundef signext 28, i16 noundef signext 0)
  %564 = getelementptr inbounds %struct.TreeElement, ptr %563, i64 0, i32 3
  br label %565

565:                                              ; preds = %562, %577
  %566 = phi ptr [ %512, %562 ], [ %578, %577 ]
  %567 = getelementptr inbounds %struct.Sequence, ptr %566, i64 0, i32 24
  %568 = load ptr, ptr %567, align 8, !tbaa !135
  %569 = icmp eq ptr %568, null
  br i1 %569, label %577, label %570

570:                                              ; preds = %565
  %571 = getelementptr inbounds %struct.Strip, ptr %568, i64 0, i32 6
  %572 = load ptr, ptr %571, align 8, !tbaa !137
  %573 = icmp eq ptr %572, null
  br i1 %573, label %577, label %574

574:                                              ; preds = %570
  %575 = load i8, ptr %572, align 4, !tbaa !75
  %576 = icmp eq i8 %575, 0
  br i1 %576, label %577, label %580

577:                                              ; preds = %580, %586, %565, %570, %574
  %578 = load ptr, ptr %566, align 8, !tbaa !140
  %579 = icmp eq ptr %578, null
  br i1 %579, label %588, label %565, !llvm.loop !143

580:                                              ; preds = %574
  %581 = load ptr, ptr %513, align 8, !tbaa !135
  %582 = getelementptr inbounds %struct.Strip, ptr %581, i64 0, i32 6
  %583 = load ptr, ptr %582, align 8, !tbaa !137
  %584 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %572, ptr noundef nonnull dereferenceable(1) %583) #13
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %577

586:                                              ; preds = %580
  %587 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %564, ptr noundef nonnull %566, ptr noundef %563, i16 noundef signext 26, i16 noundef signext 0)
  br label %577

588:                                              ; preds = %577, %558, %560
  %589 = load ptr, ptr %512, align 8, !tbaa !140
  %590 = icmp eq ptr %589, null
  br i1 %590, label %623, label %511, !llvm.loop !144

591:                                              ; preds = %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @RNA_main_pointer_create(ptr noundef %0, ptr noundef nonnull %4) #12
  %592 = call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %4, ptr noundef null, i16 noundef signext 30, i16 noundef signext -1)
  br i1 %13, label %593, label %599

593:                                              ; preds = %591
  %594 = getelementptr inbounds %struct.TreeElement, ptr %592, i64 0, i32 6
  %595 = load ptr, ptr %594, align 8, !tbaa !68
  %596 = getelementptr inbounds %struct.TreeStoreElem, ptr %595, i64 0, i32 2
  %597 = load i16, ptr %596, align 4, !tbaa !84
  %598 = and i16 %597, -2
  store i16 %598, ptr %596, align 4, !tbaa !84
  br label %599

599:                                              ; preds = %593, %591
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  br label %623

600:                                              ; preds = %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_UserPreferences, ptr noundef nonnull @U, ptr noundef nonnull %5) #12
  %601 = call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef nonnull %5, ptr noundef null, i16 noundef signext 30, i16 noundef signext -1)
  br i1 %13, label %602, label %608

602:                                              ; preds = %600
  %603 = getelementptr inbounds %struct.TreeElement, ptr %601, i64 0, i32 6
  %604 = load ptr, ptr %603, align 8, !tbaa !68
  %605 = getelementptr inbounds %struct.TreeStoreElem, ptr %604, i64 0, i32 2
  %606 = load i16, ptr %605, align 4, !tbaa !84
  %607 = and i16 %606, -2
  store i16 %607, ptr %605, align 4, !tbaa !84
  br label %608

608:                                              ; preds = %602, %600
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %623

609:                                              ; preds = %47
  %610 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %611 = load ptr, ptr %610, align 8, !tbaa !128
  %612 = icmp eq ptr %611, null
  br i1 %612, label %616, label %613

613:                                              ; preds = %609
  %614 = getelementptr inbounds %struct.Base, ptr %611, i64 0, i32 7
  %615 = load ptr, ptr %614, align 8, !tbaa !93
  br label %616

616:                                              ; preds = %609, %613
  %617 = phi ptr [ %615, %613 ], [ null, %609 ]
  %618 = tail call fastcc ptr @outliner_add_element(ptr noundef %2, ptr noundef nonnull %30, ptr noundef %617, ptr noundef null, i16 noundef signext 0, i16 noundef signext 0)
  %619 = icmp eq ptr %618, null
  br i1 %619, label %623, label %620

620:                                              ; preds = %616
  %621 = load ptr, ptr %610, align 8, !tbaa !128
  %622 = getelementptr inbounds %struct.TreeElement, ptr %618, i64 0, i32 12
  store ptr %621, ptr %622, align 8, !tbaa !95
  br label %623

623:                                              ; preds = %588, %502, %434, %365, %291, %233, %108, %99, %293, %104, %76, %466, %398, %255, %197, %375, %608, %620, %616, %599
  call fastcc void @outliner_sort(ptr noundef nonnull %30)
  %624 = call fastcc i32 @outliner_filter_tree(ptr noundef %2, ptr noundef nonnull %30), !range !145
  br label %625

625:                                              ; preds = %504, %507, %33, %623
  ret void
}

declare i32 @BLI_mempool_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @outliner_add_element(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, i16 noundef signext %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca [64 x i8], align 16
  br label %11

11:                                               ; preds = %910, %661, %610, %559, %539, %375, %6
  %12 = phi ptr [ %1, %6 ], [ %130, %375 ], [ %540, %539 ], [ %560, %559 ], [ %611, %610 ], [ %662, %661 ], [ %911, %910 ]
  %13 = phi ptr [ %2, %6 ], [ %373, %375 ], [ %542, %539 ], [ %28, %559 ], [ %28, %610 ], [ %28, %661 ], [ %913, %910 ]
  %14 = phi ptr [ %3, %6 ], [ %34, %375 ], [ %34, %539 ], [ %34, %559 ], [ %34, %610 ], [ %34, %661 ], [ %34, %910 ]
  %15 = phi i16 [ %4, %6 ], [ 0, %375 ], [ 0, %539 ], [ 15, %559 ], [ 15, %610 ], [ 15, %661 ], [ 27, %910 ]
  %16 = phi i16 [ %5, %6 ], [ 0, %375 ], [ 0, %539 ], [ 0, %559 ], [ 0, %610 ], [ 0, %661 ], [ %16, %910 ]
  %17 = phi ptr [ poison, %6 ], [ %376, %375 ], [ %543, %539 ], [ %561, %559 ], [ %612, %610 ], [ %663, %661 ], [ %914, %910 ]
  %18 = phi i1 [ false, %6 ], [ true, %375 ], [ true, %539 ], [ true, %559 ], [ true, %610 ], [ true, %661 ], [ true, %910 ]
  %19 = add i16 %15, -30
  %20 = icmp ult i16 %19, 3
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load ptr, ptr %13, align 8, !tbaa !146
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.PointerRNA, ptr %13, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !147
  br label %27

27:                                               ; preds = %11, %21, %24
  %28 = phi ptr [ %22, %21 ], [ %26, %24 ], [ %13, %11 ]
  %29 = icmp ne i16 %15, 36
  %30 = icmp eq ptr %28, null
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %1212, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %34 = tail call ptr %33(i64 noundef 104, ptr noundef nonnull @.str.1) #12
  tail call void @BLI_addtail(ptr noundef %12, ptr noundef %34) #12
  %35 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 1, i32 noundef 512, i32 noundef 1) #12
  store ptr %39, ptr %35, align 8, !tbaa !50
  br label %40

40:                                               ; preds = %38, %32
  %41 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 15
  %42 = load ptr, ptr %41, align 8, !tbaa !62
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load ptr, ptr %35, align 8, !tbaa !50
  %46 = tail call ptr @BKE_treehash_create_from_treestore(ptr noundef %45) #12
  store ptr %46, ptr %41, align 8, !tbaa !62
  br label %47

47:                                               ; preds = %44, %40
  %48 = load ptr, ptr %41, align 8, !tbaa !62
  %49 = tail call ptr @BKE_treehash_lookup_unused(ptr noundef %48, i16 noundef signext %15, i16 noundef signext %16, ptr noundef %28) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 6
  store ptr %49, ptr %52, align 8, !tbaa !68
  %53 = getelementptr inbounds %struct.TreeStoreElem, ptr %49, i64 0, i32 3
  store i16 1, ptr %53, align 2, !tbaa !57
  br label %65

54:                                               ; preds = %47
  %55 = load ptr, ptr %35, align 8, !tbaa !50
  %56 = tail call ptr @BLI_mempool_alloc(ptr noundef %55) #12
  store i16 %15, ptr %56, align 8, !tbaa !66
  %57 = icmp eq i16 %15, 0
  %58 = select i1 %57, i16 0, i16 %16
  %59 = getelementptr inbounds %struct.TreeStoreElem, ptr %56, i64 0, i32 1
  store i16 %58, ptr %59, align 2, !tbaa !67
  %60 = getelementptr inbounds %struct.TreeStoreElem, ptr %56, i64 0, i32 4
  store ptr %28, ptr %60, align 8, !tbaa !60
  %61 = getelementptr inbounds %struct.TreeStoreElem, ptr %56, i64 0, i32 3
  store i16 0, ptr %61, align 2, !tbaa !57
  %62 = getelementptr inbounds %struct.TreeStoreElem, ptr %56, i64 0, i32 2
  store i16 1, ptr %62, align 4, !tbaa !84
  %63 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 6
  store ptr %56, ptr %63, align 8, !tbaa !68
  %64 = load ptr, ptr %41, align 8, !tbaa !62
  tail call void @BKE_treehash_add_element(ptr noundef %64, ptr noundef nonnull %56) #12
  br label %65

65:                                               ; preds = %51, %54
  %66 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !68
  %68 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  %69 = load i16, ptr %68, align 2, !tbaa !76
  %70 = and i16 %69, 4
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.TreeStoreElem, ptr %67, i64 0, i32 2
  %74 = load i16, ptr %73, align 4, !tbaa !84
  %75 = or i16 %74, 8
  store i16 %75, ptr %73, align 4, !tbaa !84
  br label %76

76:                                               ; preds = %72, %65
  %77 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 2
  store ptr %14, ptr %77, align 8, !tbaa !73
  %78 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 8
  store i16 %16, ptr %78, align 2, !tbaa !148
  switch i16 %15, label %79 [
    i16 26, label %888
    i16 27, label %915
    i16 28, label %922
    i16 15, label %791
    i16 32, label %933
    i16 31, label %933
    i16 30, label %933
    i16 36, label %1212
  ]

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 4
  %81 = load i16, ptr %80, align 8, !tbaa !64
  %82 = icmp eq i16 %81, 18764
  %83 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  %84 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 4, i64 2
  %85 = getelementptr inbounds %struct.Library, ptr %28, i64 0, i32 3
  %86 = select i1 %82, ptr %85, ptr %84
  store ptr %86, ptr %83, align 8, !tbaa !46
  %87 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 9
  store i16 %81, ptr %87, align 4, !tbaa !70
  switch i16 %15, label %1212 [
    i16 0, label %88
    i16 34, label %1147
  ]

88:                                               ; preds = %79
  %89 = icmp eq ptr %14, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !68
  br label %93

93:                                               ; preds = %88, %90
  %94 = phi ptr [ %92, %90 ], [ null, %88 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i16, ptr %94, align 8, !tbaa !66
  %98 = icmp eq i16 %97, 36
  br i1 %98, label %1212, label %99

99:                                               ; preds = %96, %93
  %100 = load i16, ptr %80, align 8, !tbaa !64
  switch i16 %100, label %1212 [
    i16 16975, label %101
    i16 18764, label %106
    i16 17235, label %109
    i16 17741, label %377
    i16 21827, label %416
    i16 16973, label %452
    i16 16717, label %488
    i16 17748, label %521
    i16 16707, label %544
    i16 16716, label %562
    i16 19283, label %595
    i16 20311, label %613
    i16 17739, label %646
    i16 21324, label %758
    i16 21057, label %664
  ]

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 2
  store ptr %34, ptr %102, align 8, !tbaa !149
  %103 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !150
  %105 = icmp eq ptr %104, null
  br i1 %105, label %123, label %111

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.Library, ptr %28, i64 0, i32 3
  %108 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %107, ptr %108, align 8, !tbaa !46
  br label %1212

109:                                              ; preds = %99
  %110 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  tail call fastcc void @outliner_add_scene_contents(ptr noundef %0, ptr noundef nonnull %110, ptr noundef %28, ptr noundef %34)
  br label %1212

111:                                              ; preds = %101
  %112 = load ptr, ptr %104, align 8, !tbaa !151
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.AnimData, ptr %104, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !153
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.AnimData, ptr %104, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !154
  %121 = icmp ne ptr %120, null
  %122 = zext i1 %121 to i8
  br label %123

123:                                              ; preds = %118, %114, %111, %101
  %124 = phi i8 [ 1, %114 ], [ 1, %111 ], [ %122, %118 ], [ 0, %101 ]
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %128 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %127, ptr noundef %28, ptr noundef %34, i16 noundef signext 15, i16 noundef signext 0)
  br label %129

129:                                              ; preds = %126, %123
  %130 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %131 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 17
  %132 = load ptr, ptr %131, align 8, !tbaa !155
  %133 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %130, ptr noundef %132, ptr noundef %34, i16 noundef signext 0, i16 noundef signext 0)
  %134 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 11
  %135 = load ptr, ptr %134, align 8, !tbaa !156
  %136 = icmp eq ptr %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !157
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %130, ptr noundef nonnull %135, ptr noundef %34, i16 noundef signext 18, i16 noundef signext 0)
  br label %143

143:                                              ; preds = %141, %137, %129
  %144 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 19
  %145 = load ptr, ptr %144, align 8, !tbaa !158
  %146 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %130, ptr noundef %145, ptr noundef %34, i16 noundef signext 0, i16 noundef signext 0)
  %147 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 18
  %148 = load ptr, ptr %147, align 8, !tbaa !159
  %149 = icmp eq ptr %148, null
  br i1 %149, label %255, label %150

150:                                              ; preds = %143
  %151 = load ptr, ptr %144, align 8, !tbaa !158
  %152 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %130, ptr noundef %28, ptr noundef %34, i16 noundef signext 13, i16 noundef signext 0)
  %153 = getelementptr inbounds %struct.TreeElement, ptr %152, i64 0, i32 11
  store ptr @.str.12, ptr %153, align 8, !tbaa !46
  %154 = getelementptr inbounds %struct.bArmature, ptr %151, i64 0, i32 4
  %155 = load ptr, ptr %154, align 8, !tbaa !160
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %230

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 27
  %159 = load i32, ptr %158, align 8, !tbaa !162
  %160 = and i32 %159, 64
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %230, label %162

162:                                              ; preds = %157
  %163 = load ptr, ptr %147, align 8, !tbaa !159
  %164 = load ptr, ptr %163, align 8, !tbaa !45
  %165 = icmp eq ptr %164, null
  br i1 %165, label %205, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.TreeElement, ptr %152, i64 0, i32 3
  br label %168

168:                                              ; preds = %166, %200
  %169 = phi ptr [ %164, %166 ], [ %203, %200 ]
  %170 = phi i32 [ 0, %166 ], [ %202, %200 ]
  %171 = phi i32 [ 1000, %166 ], [ %201, %200 ]
  %172 = trunc i32 %170 to i16
  %173 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %167, ptr noundef %28, ptr noundef %152, i16 noundef signext 14, i16 noundef signext %172)
  %174 = getelementptr inbounds %struct.bPoseChannel, ptr %169, i64 0, i32 4
  %175 = getelementptr inbounds %struct.TreeElement, ptr %173, i64 0, i32 11
  store ptr %174, ptr %175, align 8, !tbaa !46
  %176 = getelementptr inbounds %struct.TreeElement, ptr %173, i64 0, i32 12
  store ptr %169, ptr %176, align 8, !tbaa !95
  %177 = getelementptr inbounds %struct.bPoseChannel, ptr %169, i64 0, i32 39
  store ptr %173, ptr %177, align 8, !tbaa !163
  %178 = getelementptr inbounds %struct.bPoseChannel, ptr %169, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !165
  %180 = icmp eq ptr %179, null
  br i1 %180, label %200, label %181

181:                                              ; preds = %168
  %182 = getelementptr inbounds %struct.TreeElement, ptr %173, i64 0, i32 3
  %183 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %182, ptr noundef %28, ptr noundef %173, i16 noundef signext 7, i16 noundef signext 0)
  %184 = getelementptr inbounds %struct.TreeElement, ptr %183, i64 0, i32 11
  store ptr @.str.13, ptr %184, align 8, !tbaa !46
  %185 = load ptr, ptr %178, align 8, !tbaa !45
  %186 = icmp eq ptr %185, null
  br i1 %186, label %200, label %187

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.TreeElement, ptr %183, i64 0, i32 3
  br label %189

189:                                              ; preds = %187, %189
  %190 = phi ptr [ %185, %187 ], [ %198, %189 ]
  %191 = phi i32 [ %171, %187 ], [ %197, %189 ]
  %192 = trunc i32 %191 to i16
  %193 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %188, ptr noundef %28, ptr noundef %183, i16 noundef signext 8, i16 noundef signext %192)
  %194 = getelementptr inbounds %struct.bConstraint, ptr %190, i64 0, i32 7
  %195 = getelementptr inbounds %struct.TreeElement, ptr %193, i64 0, i32 11
  store ptr %194, ptr %195, align 8, !tbaa !46
  %196 = getelementptr inbounds %struct.TreeElement, ptr %193, i64 0, i32 12
  store ptr %190, ptr %196, align 8, !tbaa !95
  %197 = add nsw i32 %191, 1
  %198 = load ptr, ptr %190, align 8, !tbaa !45
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %189, !llvm.loop !166

200:                                              ; preds = %189, %181, %168
  %201 = phi i32 [ %171, %168 ], [ %171, %181 ], [ %197, %189 ]
  %202 = add nuw nsw i32 %170, 1
  %203 = load ptr, ptr %169, align 8, !tbaa !45
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %168, !llvm.loop !167

205:                                              ; preds = %200, %162
  %206 = getelementptr inbounds %struct.TreeElement, ptr %152, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !168
  %208 = icmp eq ptr %207, null
  br i1 %208, label %230, label %209

209:                                              ; preds = %205, %228
  %210 = phi ptr [ %211, %228 ], [ %207, %205 ]
  %211 = load ptr, ptr %210, align 8, !tbaa !88
  %212 = getelementptr inbounds %struct.TreeElement, ptr %210, i64 0, i32 6
  %213 = load ptr, ptr %212, align 8, !tbaa !68
  %214 = load i16, ptr %213, align 8, !tbaa !66
  %215 = icmp eq i16 %214, 14
  br i1 %215, label %216, label %228

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.TreeElement, ptr %210, i64 0, i32 12
  %218 = load ptr, ptr %217, align 8, !tbaa !95
  %219 = getelementptr inbounds %struct.bPoseChannel, ptr %218, i64 0, i32 13
  %220 = load ptr, ptr %219, align 8, !tbaa !169
  %221 = icmp eq ptr %220, null
  br i1 %221, label %228, label %222

222:                                              ; preds = %216
  tail call void @BLI_remlink(ptr noundef nonnull %206, ptr noundef nonnull %210) #12
  %223 = load ptr, ptr %219, align 8, !tbaa !169
  %224 = getelementptr inbounds %struct.bPoseChannel, ptr %223, i64 0, i32 39
  %225 = load ptr, ptr %224, align 8, !tbaa !163
  %226 = getelementptr inbounds %struct.TreeElement, ptr %225, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %226, ptr noundef nonnull %210) #12
  %227 = getelementptr inbounds %struct.TreeElement, ptr %210, i64 0, i32 2
  store ptr %225, ptr %227, align 8, !tbaa !73
  br label %228

228:                                              ; preds = %222, %216, %209
  %229 = icmp eq ptr %211, null
  br i1 %229, label %230, label %209, !llvm.loop !170

230:                                              ; preds = %228, %205, %157, %150
  %231 = load ptr, ptr %147, align 8, !tbaa !159
  %232 = getelementptr inbounds %struct.bPose, ptr %231, i64 0, i32 9
  %233 = load ptr, ptr %232, align 8, !tbaa !171
  %234 = icmp eq ptr %233, null
  br i1 %234, label %255, label %235

235:                                              ; preds = %230
  %236 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %130, ptr noundef %28, ptr noundef %34, i16 noundef signext 24, i16 noundef signext 0)
  %237 = getelementptr inbounds %struct.TreeElement, ptr %236, i64 0, i32 11
  store ptr @.str.14, ptr %237, align 8, !tbaa !46
  %238 = load ptr, ptr %147, align 8, !tbaa !159
  %239 = getelementptr inbounds %struct.bPose, ptr %238, i64 0, i32 9
  %240 = load ptr, ptr %239, align 8, !tbaa !45
  %241 = icmp eq ptr %240, null
  br i1 %241, label %255, label %242

242:                                              ; preds = %235
  %243 = getelementptr inbounds %struct.TreeElement, ptr %236, i64 0, i32 3
  br label %244

244:                                              ; preds = %242, %244
  %245 = phi ptr [ %240, %242 ], [ %253, %244 ]
  %246 = phi i32 [ 0, %242 ], [ %252, %244 ]
  %247 = trunc i32 %246 to i16
  %248 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %243, ptr noundef %28, ptr noundef %236, i16 noundef signext 25, i16 noundef signext %247)
  %249 = getelementptr inbounds %struct.bActionGroup, ptr %245, i64 0, i32 5
  %250 = getelementptr inbounds %struct.TreeElement, ptr %248, i64 0, i32 11
  store ptr %249, ptr %250, align 8, !tbaa !46
  %251 = getelementptr inbounds %struct.TreeElement, ptr %248, i64 0, i32 12
  store ptr %245, ptr %251, align 8, !tbaa !95
  %252 = add nuw nsw i32 %246, 1
  %253 = load ptr, ptr %245, align 8, !tbaa !45
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %244, !llvm.loop !173

255:                                              ; preds = %244, %235, %230, %143
  %256 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 31
  %257 = load i32, ptr %256, align 8, !tbaa !174
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 29
  br label %261

261:                                              ; preds = %259, %261
  %262 = phi i64 [ 0, %259 ], [ %268, %261 ]
  %263 = load ptr, ptr %260, align 8, !tbaa !175
  %264 = getelementptr inbounds ptr, ptr %263, i64 %262
  %265 = load ptr, ptr %264, align 8, !tbaa !45
  %266 = trunc i64 %262 to i16
  %267 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %130, ptr noundef %265, ptr noundef %34, i16 noundef signext 0, i16 noundef signext %266)
  %268 = add nuw nsw i64 %262, 1
  %269 = load i32, ptr %256, align 8, !tbaa !174
  %270 = sext i32 %269 to i64
  %271 = icmp slt i64 %268, %270
  br i1 %271, label %261, label %272, !llvm.loop !176

272:                                              ; preds = %261, %255
  %273 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 106
  %274 = load ptr, ptr %273, align 8, !tbaa !177
  %275 = icmp eq ptr %274, null
  br i1 %275, label %294, label %276

276:                                              ; preds = %272
  %277 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %130, ptr noundef %28, ptr noundef %34, i16 noundef signext 7, i16 noundef signext 0)
  %278 = getelementptr inbounds %struct.TreeElement, ptr %277, i64 0, i32 11
  store ptr @.str.13, ptr %278, align 8, !tbaa !46
  %279 = load ptr, ptr %273, align 8, !tbaa !45
  %280 = icmp eq ptr %279, null
  br i1 %280, label %294, label %281

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.TreeElement, ptr %277, i64 0, i32 3
  br label %283

283:                                              ; preds = %281, %283
  %284 = phi ptr [ %279, %281 ], [ %292, %283 ]
  %285 = phi i32 [ 0, %281 ], [ %291, %283 ]
  %286 = trunc i32 %285 to i16
  %287 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %282, ptr noundef %28, ptr noundef %277, i16 noundef signext 8, i16 noundef signext %286)
  %288 = getelementptr inbounds %struct.bConstraint, ptr %284, i64 0, i32 7
  %289 = getelementptr inbounds %struct.TreeElement, ptr %287, i64 0, i32 11
  store ptr %288, ptr %289, align 8, !tbaa !46
  %290 = getelementptr inbounds %struct.TreeElement, ptr %287, i64 0, i32 12
  store ptr %284, ptr %290, align 8, !tbaa !95
  %291 = add nuw nsw i32 %285, 1
  %292 = load ptr, ptr %284, align 8, !tbaa !45
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %283, !llvm.loop !178

294:                                              ; preds = %283, %276, %272
  %295 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 26
  %296 = load ptr, ptr %295, align 8, !tbaa !179
  %297 = icmp eq ptr %296, null
  br i1 %297, label %349, label %298

298:                                              ; preds = %294
  %299 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %130, ptr noundef %28, ptr noundef %34, i16 noundef signext 9, i16 noundef signext 0)
  %300 = getelementptr inbounds %struct.TreeElement, ptr %299, i64 0, i32 11
  store ptr @.str.15, ptr %300, align 8, !tbaa !46
  %301 = load ptr, ptr %295, align 8, !tbaa !45
  %302 = icmp eq ptr %301, null
  br i1 %302, label %349, label %303

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.TreeElement, ptr %299, i64 0, i32 3
  br label %305

305:                                              ; preds = %303, %345
  %306 = phi ptr [ %301, %303 ], [ %347, %345 ]
  %307 = phi i32 [ 0, %303 ], [ %346, %345 ]
  %308 = trunc i32 %307 to i16
  %309 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %304, ptr noundef %28, ptr noundef %299, i16 noundef signext 10, i16 noundef signext %308)
  %310 = getelementptr inbounds %struct.ModifierData, ptr %306, i64 0, i32 6
  %311 = getelementptr inbounds %struct.TreeElement, ptr %309, i64 0, i32 11
  store ptr %310, ptr %311, align 8, !tbaa !46
  %312 = getelementptr inbounds %struct.TreeElement, ptr %309, i64 0, i32 12
  store ptr %306, ptr %312, align 8, !tbaa !95
  %313 = getelementptr inbounds %struct.ModifierData, ptr %306, i64 0, i32 2
  %314 = load i32, ptr %313, align 8, !tbaa !180
  switch i32 %314, label %345 [
    i32 2, label %315
    i32 3, label %320
    i32 8, label %325
    i32 9, label %330
    i32 19, label %335
  ]

315:                                              ; preds = %305
  %316 = getelementptr inbounds %struct.TreeElement, ptr %309, i64 0, i32 3
  %317 = getelementptr inbounds %struct.LatticeModifierData, ptr %306, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !182
  %319 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %316, ptr noundef %318, ptr noundef %309, i16 noundef signext 11, i16 noundef signext 0)
  br label %345

320:                                              ; preds = %305
  %321 = getelementptr inbounds %struct.TreeElement, ptr %309, i64 0, i32 3
  %322 = getelementptr inbounds %struct.CurveModifierData, ptr %306, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !184
  %324 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %321, ptr noundef %323, ptr noundef %309, i16 noundef signext 11, i16 noundef signext 0)
  br label %345

325:                                              ; preds = %305
  %326 = getelementptr inbounds %struct.TreeElement, ptr %309, i64 0, i32 3
  %327 = getelementptr inbounds %struct.ArmatureModifierData, ptr %306, i64 0, i32 4
  %328 = load ptr, ptr %327, align 8, !tbaa !186
  %329 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %326, ptr noundef %328, ptr noundef %309, i16 noundef signext 11, i16 noundef signext 0)
  br label %345

330:                                              ; preds = %305
  %331 = getelementptr inbounds %struct.TreeElement, ptr %309, i64 0, i32 3
  %332 = getelementptr inbounds %struct.HookModifierData, ptr %306, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !188
  %334 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %331, ptr noundef %333, ptr noundef %309, i16 noundef signext 11, i16 noundef signext 0)
  br label %345

335:                                              ; preds = %305
  %336 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %306, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !190
  %338 = getelementptr inbounds %struct.TreeElement, ptr %309, i64 0, i32 3
  %339 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %338, ptr noundef %28, ptr noundef %309, i16 noundef signext 29, i16 noundef signext 0)
  %340 = getelementptr inbounds %struct.TreeElement, ptr %339, i64 0, i32 12
  store ptr %337, ptr %340, align 8, !tbaa !95
  %341 = getelementptr inbounds %struct.ParticleSystem, ptr %337, i64 0, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !192
  %343 = getelementptr inbounds %struct.ID, ptr %342, i64 0, i32 4, i64 2
  %344 = getelementptr inbounds %struct.TreeElement, ptr %339, i64 0, i32 11
  store ptr %343, ptr %344, align 8, !tbaa !46
  br label %345

345:                                              ; preds = %335, %330, %325, %320, %315, %305
  %346 = add nuw nsw i32 %307, 1
  %347 = load ptr, ptr %306, align 8, !tbaa !45
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %305, !llvm.loop !194

349:                                              ; preds = %345, %298, %294
  %350 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 25
  %351 = load ptr, ptr %350, align 8, !tbaa !195
  %352 = icmp eq ptr %351, null
  br i1 %352, label %371, label %353

353:                                              ; preds = %349
  %354 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %130, ptr noundef %28, ptr noundef %34, i16 noundef signext 3, i16 noundef signext 0)
  %355 = getelementptr inbounds %struct.TreeElement, ptr %354, i64 0, i32 11
  store ptr @.str.16, ptr %355, align 8, !tbaa !46
  %356 = load ptr, ptr %350, align 8, !tbaa !45
  %357 = icmp eq ptr %356, null
  br i1 %357, label %371, label %358

358:                                              ; preds = %353
  %359 = getelementptr inbounds %struct.TreeElement, ptr %354, i64 0, i32 3
  br label %360

360:                                              ; preds = %358, %360
  %361 = phi ptr [ %356, %358 ], [ %369, %360 ]
  %362 = phi i32 [ 0, %358 ], [ %368, %360 ]
  %363 = trunc i32 %362 to i16
  %364 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %359, ptr noundef %28, ptr noundef %354, i16 noundef signext 4, i16 noundef signext %363)
  %365 = getelementptr inbounds %struct.bDeformGroup, ptr %361, i64 0, i32 2
  %366 = getelementptr inbounds %struct.TreeElement, ptr %364, i64 0, i32 11
  store ptr %365, ptr %366, align 8, !tbaa !46
  %367 = getelementptr inbounds %struct.TreeElement, ptr %364, i64 0, i32 12
  store ptr %361, ptr %367, align 8, !tbaa !95
  %368 = add nuw nsw i32 %362, 1
  %369 = load ptr, ptr %361, align 8, !tbaa !45
  %370 = icmp eq ptr %369, null
  br i1 %370, label %371, label %360, !llvm.loop !196

371:                                              ; preds = %360, %353, %349
  %372 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 112
  %373 = load ptr, ptr %372, align 8, !tbaa !197
  %374 = icmp eq ptr %373, null
  br i1 %374, label %1212, label %375

375:                                              ; preds = %371
  %376 = select i1 %18, ptr %17, ptr %34
  br label %11

377:                                              ; preds = %99
  %378 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !198
  %380 = icmp eq ptr %379, null
  br i1 %380, label %395, label %381

381:                                              ; preds = %377
  %382 = load ptr, ptr %379, align 8, !tbaa !151
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %392

384:                                              ; preds = %381
  %385 = getelementptr inbounds %struct.AnimData, ptr %379, i64 0, i32 5
  %386 = load ptr, ptr %385, align 8, !tbaa !153
  %387 = icmp eq ptr %386, null
  br i1 %387, label %388, label %392

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.AnimData, ptr %379, i64 0, i32 3
  %390 = load ptr, ptr %389, align 8, !tbaa !154
  %391 = icmp eq ptr %390, null
  br i1 %391, label %395, label %392

392:                                              ; preds = %388, %384, %381
  %393 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %394 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %393, ptr noundef %28, ptr noundef %34, i16 noundef signext 15, i16 noundef signext 0)
  br label %395

395:                                              ; preds = %392, %388, %377
  %396 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %397 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 4
  %398 = load ptr, ptr %397, align 8, !tbaa !201
  %399 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %396, ptr noundef %398, ptr noundef %34, i16 noundef signext 0, i16 noundef signext 0)
  %400 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 47
  %401 = load i16, ptr %400, align 2, !tbaa !202
  %402 = icmp sgt i16 %401, 0
  br i1 %402, label %403, label %1212

403:                                              ; preds = %395
  %404 = getelementptr inbounds %struct.Mesh, ptr %28, i64 0, i32 5
  br label %405

405:                                              ; preds = %403, %405
  %406 = phi i64 [ 0, %403 ], [ %412, %405 ]
  %407 = load ptr, ptr %404, align 8, !tbaa !203
  %408 = getelementptr inbounds ptr, ptr %407, i64 %406
  %409 = load ptr, ptr %408, align 8, !tbaa !45
  %410 = trunc i64 %406 to i16
  %411 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %396, ptr noundef %409, ptr noundef %34, i16 noundef signext 0, i16 noundef signext %410)
  %412 = add nuw nsw i64 %406, 1
  %413 = load i16, ptr %400, align 2, !tbaa !202
  %414 = sext i16 %413 to i64
  %415 = icmp slt i64 %412, %414
  br i1 %415, label %405, label %1212, !llvm.loop !204

416:                                              ; preds = %99
  %417 = getelementptr inbounds %struct.Curve, ptr %28, i64 0, i32 1
  %418 = load ptr, ptr %417, align 8, !tbaa !205
  %419 = icmp eq ptr %418, null
  br i1 %419, label %434, label %420

420:                                              ; preds = %416
  %421 = load ptr, ptr %418, align 8, !tbaa !151
  %422 = icmp eq ptr %421, null
  br i1 %422, label %423, label %431

423:                                              ; preds = %420
  %424 = getelementptr inbounds %struct.AnimData, ptr %418, i64 0, i32 5
  %425 = load ptr, ptr %424, align 8, !tbaa !153
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %431

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.AnimData, ptr %418, i64 0, i32 3
  %429 = load ptr, ptr %428, align 8, !tbaa !154
  %430 = icmp eq ptr %429, null
  br i1 %430, label %434, label %431

431:                                              ; preds = %427, %423, %420
  %432 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %433 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %432, ptr noundef %28, ptr noundef %34, i16 noundef signext 15, i16 noundef signext 0)
  br label %434

434:                                              ; preds = %431, %427, %416
  %435 = getelementptr inbounds %struct.Curve, ptr %28, i64 0, i32 22
  %436 = load i16, ptr %435, align 2, !tbaa !208
  %437 = icmp sgt i16 %436, 0
  br i1 %437, label %438, label %1212

438:                                              ; preds = %434
  %439 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %440 = getelementptr inbounds %struct.Curve, ptr %28, i64 0, i32 10
  br label %441

441:                                              ; preds = %438, %441
  %442 = phi i64 [ 0, %438 ], [ %448, %441 ]
  %443 = load ptr, ptr %440, align 8, !tbaa !209
  %444 = getelementptr inbounds ptr, ptr %443, i64 %442
  %445 = load ptr, ptr %444, align 8, !tbaa !45
  %446 = trunc i64 %442 to i16
  %447 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %439, ptr noundef %445, ptr noundef %34, i16 noundef signext 0, i16 noundef signext %446)
  %448 = add nuw nsw i64 %442, 1
  %449 = load i16, ptr %435, align 2, !tbaa !208
  %450 = sext i16 %449 to i64
  %451 = icmp slt i64 %448, %450
  br i1 %451, label %441, label %1212, !llvm.loop !210

452:                                              ; preds = %99
  %453 = getelementptr inbounds %struct.MetaBall, ptr %28, i64 0, i32 1
  %454 = load ptr, ptr %453, align 8, !tbaa !211
  %455 = icmp eq ptr %454, null
  br i1 %455, label %470, label %456

456:                                              ; preds = %452
  %457 = load ptr, ptr %454, align 8, !tbaa !151
  %458 = icmp eq ptr %457, null
  br i1 %458, label %459, label %467

459:                                              ; preds = %456
  %460 = getelementptr inbounds %struct.AnimData, ptr %454, i64 0, i32 5
  %461 = load ptr, ptr %460, align 8, !tbaa !153
  %462 = icmp eq ptr %461, null
  br i1 %462, label %463, label %467

463:                                              ; preds = %459
  %464 = getelementptr inbounds %struct.AnimData, ptr %454, i64 0, i32 3
  %465 = load ptr, ptr %464, align 8, !tbaa !154
  %466 = icmp eq ptr %465, null
  br i1 %466, label %470, label %467

467:                                              ; preds = %463, %459, %456
  %468 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %469 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %468, ptr noundef %28, ptr noundef %34, i16 noundef signext 15, i16 noundef signext 0)
  br label %470

470:                                              ; preds = %467, %463, %452
  %471 = getelementptr inbounds %struct.MetaBall, ptr %28, i64 0, i32 9
  %472 = load i16, ptr %471, align 2, !tbaa !213
  %473 = icmp sgt i16 %472, 0
  br i1 %473, label %474, label %1212

474:                                              ; preds = %470
  %475 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %476 = getelementptr inbounds %struct.MetaBall, ptr %28, i64 0, i32 6
  br label %477

477:                                              ; preds = %474, %477
  %478 = phi i64 [ 0, %474 ], [ %484, %477 ]
  %479 = load ptr, ptr %476, align 8, !tbaa !214
  %480 = getelementptr inbounds ptr, ptr %479, i64 %478
  %481 = load ptr, ptr %480, align 8, !tbaa !45
  %482 = trunc i64 %478 to i16
  %483 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %475, ptr noundef %481, ptr noundef %34, i16 noundef signext 0, i16 noundef signext %482)
  %484 = add nuw nsw i64 %478, 1
  %485 = load i16, ptr %471, align 2, !tbaa !213
  %486 = sext i16 %485 to i64
  %487 = icmp slt i64 %484, %486
  br i1 %487, label %477, label %1212, !llvm.loop !215

488:                                              ; preds = %99
  %489 = getelementptr inbounds %struct.Material, ptr %28, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !216
  %491 = icmp eq ptr %490, null
  br i1 %491, label %506, label %492

492:                                              ; preds = %488
  %493 = load ptr, ptr %490, align 8, !tbaa !151
  %494 = icmp eq ptr %493, null
  br i1 %494, label %495, label %503

495:                                              ; preds = %492
  %496 = getelementptr inbounds %struct.AnimData, ptr %490, i64 0, i32 5
  %497 = load ptr, ptr %496, align 8, !tbaa !153
  %498 = icmp eq ptr %497, null
  br i1 %498, label %499, label %503

499:                                              ; preds = %495
  %500 = getelementptr inbounds %struct.AnimData, ptr %490, i64 0, i32 3
  %501 = load ptr, ptr %500, align 8, !tbaa !154
  %502 = icmp eq ptr %501, null
  br i1 %502, label %506, label %503

503:                                              ; preds = %499, %495, %492
  %504 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %505 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %504, ptr noundef %28, ptr noundef %34, i16 noundef signext 15, i16 noundef signext 0)
  br label %506

506:                                              ; preds = %503, %499, %488
  %507 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %508

508:                                              ; preds = %506, %518
  %509 = phi i64 [ 0, %506 ], [ %519, %518 ]
  %510 = getelementptr inbounds %struct.Material, ptr %28, i64 0, i32 102, i64 %509
  %511 = load ptr, ptr %510, align 8, !tbaa !45
  %512 = icmp eq ptr %511, null
  br i1 %512, label %518, label %513

513:                                              ; preds = %508
  %514 = getelementptr inbounds %struct.MTex, ptr %511, i64 0, i32 5
  %515 = load ptr, ptr %514, align 8, !tbaa !220
  %516 = trunc i64 %509 to i16
  %517 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %507, ptr noundef %515, ptr noundef %34, i16 noundef signext 0, i16 noundef signext %516)
  br label %518

518:                                              ; preds = %513, %508
  %519 = add nuw nsw i64 %509, 1
  %520 = icmp eq i64 %519, 18
  br i1 %520, label %1212, label %508, !llvm.loop !222

521:                                              ; preds = %99
  %522 = getelementptr inbounds %struct.Tex, ptr %28, i64 0, i32 1
  %523 = load ptr, ptr %522, align 8, !tbaa !223
  %524 = icmp eq ptr %523, null
  br i1 %524, label %539, label %525

525:                                              ; preds = %521
  %526 = load ptr, ptr %523, align 8, !tbaa !151
  %527 = icmp eq ptr %526, null
  br i1 %527, label %528, label %536

528:                                              ; preds = %525
  %529 = getelementptr inbounds %struct.AnimData, ptr %523, i64 0, i32 5
  %530 = load ptr, ptr %529, align 8, !tbaa !153
  %531 = icmp eq ptr %530, null
  br i1 %531, label %532, label %536

532:                                              ; preds = %528
  %533 = getelementptr inbounds %struct.AnimData, ptr %523, i64 0, i32 3
  %534 = load ptr, ptr %533, align 8, !tbaa !154
  %535 = icmp eq ptr %534, null
  br i1 %535, label %539, label %536

536:                                              ; preds = %532, %528, %525
  %537 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %538 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %537, ptr noundef %28, ptr noundef %34, i16 noundef signext 15, i16 noundef signext 0)
  br label %539

539:                                              ; preds = %536, %532, %521
  %540 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %541 = getelementptr inbounds %struct.Tex, ptr %28, i64 0, i32 54
  %542 = load ptr, ptr %541, align 8, !tbaa !226
  %543 = select i1 %18, ptr %17, ptr %34
  br label %11

544:                                              ; preds = %99
  %545 = getelementptr inbounds %struct.Camera, ptr %28, i64 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !227
  %547 = icmp eq ptr %546, null
  br i1 %547, label %1212, label %548

548:                                              ; preds = %544
  %549 = load ptr, ptr %546, align 8, !tbaa !151
  %550 = icmp eq ptr %549, null
  br i1 %550, label %551, label %559

551:                                              ; preds = %548
  %552 = getelementptr inbounds %struct.AnimData, ptr %546, i64 0, i32 5
  %553 = load ptr, ptr %552, align 8, !tbaa !153
  %554 = icmp eq ptr %553, null
  br i1 %554, label %555, label %559

555:                                              ; preds = %551
  %556 = getelementptr inbounds %struct.AnimData, ptr %546, i64 0, i32 3
  %557 = load ptr, ptr %556, align 8, !tbaa !154
  %558 = icmp eq ptr %557, null
  br i1 %558, label %1212, label %559

559:                                              ; preds = %555, %551, %548
  %560 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %561 = select i1 %18, ptr %17, ptr %34
  br label %11

562:                                              ; preds = %99
  %563 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 1
  %564 = load ptr, ptr %563, align 8, !tbaa !229
  %565 = icmp eq ptr %564, null
  br i1 %565, label %580, label %566

566:                                              ; preds = %562
  %567 = load ptr, ptr %564, align 8, !tbaa !151
  %568 = icmp eq ptr %567, null
  br i1 %568, label %569, label %577

569:                                              ; preds = %566
  %570 = getelementptr inbounds %struct.AnimData, ptr %564, i64 0, i32 5
  %571 = load ptr, ptr %570, align 8, !tbaa !153
  %572 = icmp eq ptr %571, null
  br i1 %572, label %573, label %577

573:                                              ; preds = %569
  %574 = getelementptr inbounds %struct.AnimData, ptr %564, i64 0, i32 3
  %575 = load ptr, ptr %574, align 8, !tbaa !154
  %576 = icmp eq ptr %575, null
  br i1 %576, label %580, label %577

577:                                              ; preds = %573, %569, %566
  %578 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %579 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %578, ptr noundef %28, ptr noundef %34, i16 noundef signext 15, i16 noundef signext 0)
  br label %580

580:                                              ; preds = %577, %573, %562
  %581 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %582

582:                                              ; preds = %580, %592
  %583 = phi i64 [ 0, %580 ], [ %593, %592 ]
  %584 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 69, i64 %583
  %585 = load ptr, ptr %584, align 8, !tbaa !45
  %586 = icmp eq ptr %585, null
  br i1 %586, label %592, label %587

587:                                              ; preds = %582
  %588 = getelementptr inbounds %struct.MTex, ptr %585, i64 0, i32 5
  %589 = load ptr, ptr %588, align 8, !tbaa !220
  %590 = trunc i64 %583 to i16
  %591 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %581, ptr noundef %589, ptr noundef %34, i16 noundef signext 0, i16 noundef signext %590)
  br label %592

592:                                              ; preds = %587, %582
  %593 = add nuw nsw i64 %583, 1
  %594 = icmp eq i64 %593, 18
  br i1 %594, label %1212, label %582, !llvm.loop !231

595:                                              ; preds = %99
  %596 = getelementptr inbounds %struct.Speaker, ptr %28, i64 0, i32 1
  %597 = load ptr, ptr %596, align 8, !tbaa !232
  %598 = icmp eq ptr %597, null
  br i1 %598, label %1212, label %599

599:                                              ; preds = %595
  %600 = load ptr, ptr %597, align 8, !tbaa !151
  %601 = icmp eq ptr %600, null
  br i1 %601, label %602, label %610

602:                                              ; preds = %599
  %603 = getelementptr inbounds %struct.AnimData, ptr %597, i64 0, i32 5
  %604 = load ptr, ptr %603, align 8, !tbaa !153
  %605 = icmp eq ptr %604, null
  br i1 %605, label %606, label %610

606:                                              ; preds = %602
  %607 = getelementptr inbounds %struct.AnimData, ptr %597, i64 0, i32 3
  %608 = load ptr, ptr %607, align 8, !tbaa !154
  %609 = icmp eq ptr %608, null
  br i1 %609, label %1212, label %610

610:                                              ; preds = %606, %602, %599
  %611 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %612 = select i1 %18, ptr %17, ptr %34
  br label %11

613:                                              ; preds = %99
  %614 = getelementptr inbounds %struct.World, ptr %28, i64 0, i32 1
  %615 = load ptr, ptr %614, align 8, !tbaa !234
  %616 = icmp eq ptr %615, null
  br i1 %616, label %631, label %617

617:                                              ; preds = %613
  %618 = load ptr, ptr %615, align 8, !tbaa !151
  %619 = icmp eq ptr %618, null
  br i1 %619, label %620, label %628

620:                                              ; preds = %617
  %621 = getelementptr inbounds %struct.AnimData, ptr %615, i64 0, i32 5
  %622 = load ptr, ptr %621, align 8, !tbaa !153
  %623 = icmp eq ptr %622, null
  br i1 %623, label %624, label %628

624:                                              ; preds = %620
  %625 = getelementptr inbounds %struct.AnimData, ptr %615, i64 0, i32 3
  %626 = load ptr, ptr %625, align 8, !tbaa !154
  %627 = icmp eq ptr %626, null
  br i1 %627, label %631, label %628

628:                                              ; preds = %624, %620, %617
  %629 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %630 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %629, ptr noundef %28, ptr noundef %34, i16 noundef signext 15, i16 noundef signext 0)
  br label %631

631:                                              ; preds = %628, %624, %613
  %632 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %633

633:                                              ; preds = %631, %643
  %634 = phi i64 [ 0, %631 ], [ %644, %643 ]
  %635 = getelementptr inbounds %struct.World, ptr %28, i64 0, i32 70, i64 %634
  %636 = load ptr, ptr %635, align 8, !tbaa !45
  %637 = icmp eq ptr %636, null
  br i1 %637, label %643, label %638

638:                                              ; preds = %633
  %639 = getelementptr inbounds %struct.MTex, ptr %636, i64 0, i32 5
  %640 = load ptr, ptr %639, align 8, !tbaa !220
  %641 = trunc i64 %634 to i16
  %642 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %632, ptr noundef %640, ptr noundef %34, i16 noundef signext 0, i16 noundef signext %641)
  br label %643

643:                                              ; preds = %638, %633
  %644 = add nuw nsw i64 %634, 1
  %645 = icmp eq i64 %644, 18
  br i1 %645, label %1212, label %633, !llvm.loop !236

646:                                              ; preds = %99
  %647 = getelementptr inbounds %struct.Key, ptr %28, i64 0, i32 1
  %648 = load ptr, ptr %647, align 8, !tbaa !237
  %649 = icmp eq ptr %648, null
  br i1 %649, label %1212, label %650

650:                                              ; preds = %646
  %651 = load ptr, ptr %648, align 8, !tbaa !151
  %652 = icmp eq ptr %651, null
  br i1 %652, label %653, label %661

653:                                              ; preds = %650
  %654 = getelementptr inbounds %struct.AnimData, ptr %648, i64 0, i32 5
  %655 = load ptr, ptr %654, align 8, !tbaa !153
  %656 = icmp eq ptr %655, null
  br i1 %656, label %657, label %661

657:                                              ; preds = %653
  %658 = getelementptr inbounds %struct.AnimData, ptr %648, i64 0, i32 3
  %659 = load ptr, ptr %658, align 8, !tbaa !154
  %660 = icmp eq ptr %659, null
  br i1 %660, label %1212, label %661

661:                                              ; preds = %657, %653, %650
  %662 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %663 = select i1 %18, ptr %17, ptr %34
  br label %11

664:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !tbaa !239
  %665 = getelementptr inbounds %struct.bArmature, ptr %28, i64 0, i32 1
  %666 = load ptr, ptr %665, align 8, !tbaa !240
  %667 = icmp eq ptr %666, null
  br i1 %667, label %682, label %668

668:                                              ; preds = %664
  %669 = load ptr, ptr %666, align 8, !tbaa !151
  %670 = icmp eq ptr %669, null
  br i1 %670, label %671, label %679

671:                                              ; preds = %668
  %672 = getelementptr inbounds %struct.AnimData, ptr %666, i64 0, i32 5
  %673 = load ptr, ptr %672, align 8, !tbaa !153
  %674 = icmp eq ptr %673, null
  br i1 %674, label %675, label %679

675:                                              ; preds = %671
  %676 = getelementptr inbounds %struct.AnimData, ptr %666, i64 0, i32 3
  %677 = load ptr, ptr %676, align 8, !tbaa !154
  %678 = icmp eq ptr %677, null
  br i1 %678, label %682, label %679

679:                                              ; preds = %675, %671, %668
  %680 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %681 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %680, ptr noundef %28, ptr noundef %34, i16 noundef signext 15, i16 noundef signext 0)
  br label %682

682:                                              ; preds = %679, %675, %664
  %683 = getelementptr inbounds %struct.bArmature, ptr %28, i64 0, i32 4
  %684 = load ptr, ptr %683, align 8, !tbaa !160
  %685 = icmp eq ptr %684, null
  br i1 %685, label %733, label %686

686:                                              ; preds = %682
  %687 = load ptr, ptr %684, align 8, !tbaa !34
  %688 = load i32, ptr %7, align 4, !tbaa !239
  %689 = icmp eq ptr %687, null
  br i1 %689, label %704, label %690

690:                                              ; preds = %686
  %691 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %692

692:                                              ; preds = %690, %692
  %693 = phi ptr [ %687, %690 ], [ %701, %692 ]
  %694 = phi i32 [ %688, %690 ], [ %702, %692 ]
  %695 = trunc i32 %694 to i16
  %696 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %691, ptr noundef %28, ptr noundef %34, i16 noundef signext 6, i16 noundef signext %695)
  %697 = getelementptr inbounds %struct.TreeElement, ptr %696, i64 0, i32 12
  store ptr %693, ptr %697, align 8, !tbaa !95
  %698 = getelementptr inbounds %struct.EditBone, ptr %693, i64 0, i32 5
  %699 = getelementptr inbounds %struct.TreeElement, ptr %696, i64 0, i32 11
  store ptr %698, ptr %699, align 8, !tbaa !46
  %700 = getelementptr inbounds %struct.EditBone, ptr %693, i64 0, i32 4
  store ptr %696, ptr %700, align 8, !tbaa !241
  %701 = load ptr, ptr %693, align 8, !tbaa !243
  %702 = add nsw i32 %694, 1
  %703 = icmp eq ptr %701, null
  br i1 %703, label %704, label %692, !llvm.loop !244

704:                                              ; preds = %692, %686
  %705 = phi i32 [ %688, %686 ], [ %702, %692 ]
  store i32 %705, ptr %7, align 4, !tbaa !239
  %706 = load ptr, ptr %683, align 8, !tbaa !160
  %707 = load ptr, ptr %706, align 8, !tbaa !34
  %708 = icmp eq ptr %707, null
  br i1 %708, label %712, label %709

709:                                              ; preds = %704
  %710 = getelementptr inbounds %struct.EditBone, ptr %707, i64 0, i32 4
  %711 = load ptr, ptr %710, align 8, !tbaa !241
  br label %712

712:                                              ; preds = %709, %704
  %713 = phi ptr [ %711, %709 ], [ null, %704 ]
  %714 = icmp eq ptr %713, null
  br i1 %714, label %757, label %715

715:                                              ; preds = %712
  %716 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %717

717:                                              ; preds = %715, %731
  %718 = phi ptr [ %713, %715 ], [ %719, %731 ]
  %719 = load ptr, ptr %718, align 8, !tbaa !88
  %720 = getelementptr inbounds %struct.TreeElement, ptr %718, i64 0, i32 12
  %721 = load ptr, ptr %720, align 8, !tbaa !95
  %722 = getelementptr inbounds %struct.EditBone, ptr %721, i64 0, i32 3
  %723 = load ptr, ptr %722, align 8, !tbaa !245
  %724 = icmp eq ptr %723, null
  br i1 %724, label %731, label %725

725:                                              ; preds = %717
  tail call void @BLI_remlink(ptr noundef nonnull %716, ptr noundef nonnull %718) #12
  %726 = load ptr, ptr %722, align 8, !tbaa !245
  %727 = getelementptr inbounds %struct.EditBone, ptr %726, i64 0, i32 4
  %728 = load ptr, ptr %727, align 8, !tbaa !241
  %729 = getelementptr inbounds %struct.TreeElement, ptr %728, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %729, ptr noundef nonnull %718) #12
  %730 = getelementptr inbounds %struct.TreeElement, ptr %718, i64 0, i32 2
  store ptr %728, ptr %730, align 8, !tbaa !73
  br label %731

731:                                              ; preds = %725, %717
  %732 = icmp eq ptr %719, null
  br i1 %732, label %757, label %717, !llvm.loop !246

733:                                              ; preds = %682
  %734 = load ptr, ptr %77, align 8, !tbaa !73
  %735 = getelementptr inbounds %struct.TreeElement, ptr %734, i64 0, i32 6
  %736 = load ptr, ptr %735, align 8, !tbaa !68
  %737 = getelementptr inbounds %struct.TreeStoreElem, ptr %736, i64 0, i32 4
  %738 = load ptr, ptr %737, align 8, !tbaa !60
  %739 = getelementptr inbounds %struct.ID, ptr %738, i64 0, i32 4
  %740 = load i16, ptr %739, align 8, !tbaa !64
  %741 = icmp eq i16 %740, 16975
  br i1 %741, label %742, label %747

742:                                              ; preds = %733
  %743 = getelementptr inbounds %struct.Object, ptr %738, i64 0, i32 27
  %744 = load i32, ptr %743, align 8, !tbaa !162
  %745 = and i32 %744, 64
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %747, label %757

747:                                              ; preds = %742, %733
  %748 = getelementptr inbounds %struct.bArmature, ptr %28, i64 0, i32 2
  %749 = load ptr, ptr %748, align 8, !tbaa !45
  %750 = icmp eq ptr %749, null
  br i1 %750, label %757, label %751

751:                                              ; preds = %747
  %752 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %753

753:                                              ; preds = %751, %753
  %754 = phi ptr [ %749, %751 ], [ %755, %753 ]
  call fastcc void @outliner_add_bone(ptr noundef %0, ptr noundef nonnull %752, ptr noundef %28, ptr noundef nonnull %754, ptr noundef %34, ptr noundef nonnull %7)
  %755 = load ptr, ptr %754, align 8, !tbaa !45
  %756 = icmp eq ptr %755, null
  br i1 %756, label %757, label %753, !llvm.loop !247

757:                                              ; preds = %731, %753, %712, %747, %742
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %1212

758:                                              ; preds = %99
  %759 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %28, i64 0, i32 1
  %760 = load ptr, ptr %759, align 8, !tbaa !248
  %761 = icmp eq ptr %760, null
  br i1 %761, label %776, label %762

762:                                              ; preds = %758
  %763 = load ptr, ptr %760, align 8, !tbaa !151
  %764 = icmp eq ptr %763, null
  br i1 %764, label %765, label %773

765:                                              ; preds = %762
  %766 = getelementptr inbounds %struct.AnimData, ptr %760, i64 0, i32 5
  %767 = load ptr, ptr %766, align 8, !tbaa !153
  %768 = icmp eq ptr %767, null
  br i1 %768, label %769, label %773

769:                                              ; preds = %765
  %770 = getelementptr inbounds %struct.AnimData, ptr %760, i64 0, i32 3
  %771 = load ptr, ptr %770, align 8, !tbaa !154
  %772 = icmp eq ptr %771, null
  br i1 %772, label %776, label %773

773:                                              ; preds = %769, %765, %762
  %774 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %775 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %774, ptr noundef %28, ptr noundef %34, i16 noundef signext 15, i16 noundef signext 0)
  br label %776

776:                                              ; preds = %773, %769, %758
  %777 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %778

778:                                              ; preds = %776, %788
  %779 = phi i64 [ 0, %776 ], [ %789, %788 ]
  %780 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %28, i64 0, i32 39, i64 %779
  %781 = load ptr, ptr %780, align 8, !tbaa !45
  %782 = icmp eq ptr %781, null
  br i1 %782, label %788, label %783

783:                                              ; preds = %778
  %784 = getelementptr inbounds %struct.MTex, ptr %781, i64 0, i32 5
  %785 = load ptr, ptr %784, align 8, !tbaa !220
  %786 = trunc i64 %779 to i16
  %787 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %777, ptr noundef %785, ptr noundef %34, i16 noundef signext 0, i16 noundef signext %786)
  br label %788

788:                                              ; preds = %783, %778
  %789 = add nuw nsw i64 %779, 1
  %790 = icmp eq i64 %789, 18
  br i1 %790, label %1212, label %778, !llvm.loop !250

791:                                              ; preds = %76
  %792 = getelementptr inbounds %struct.IdAdtTemplate, ptr %13, i64 0, i32 1
  %793 = load ptr, ptr %792, align 8, !tbaa !251
  %794 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr @.str.2, ptr %794, align 8, !tbaa !46
  %795 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %793, ptr %795, align 8, !tbaa !95
  %796 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %797 = load ptr, ptr %793, align 8, !tbaa !151
  %798 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %796, ptr noundef %797, ptr noundef %34, i16 noundef signext 0, i16 noundef signext 0)
  %799 = getelementptr inbounds %struct.AnimData, ptr %793, i64 0, i32 5
  %800 = load ptr, ptr %799, align 8, !tbaa !153
  %801 = icmp eq ptr %800, null
  br i1 %801, label %850, label %802

802:                                              ; preds = %791
  %803 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %796, ptr noundef nonnull %793, ptr noundef %34, i16 noundef signext 16, i16 noundef signext 0)
  %804 = getelementptr inbounds %struct.TreeElement, ptr %803, i64 0, i32 11
  store ptr @.str.3, ptr %804, align 8, !tbaa !46
  %805 = load ptr, ptr %799, align 8, !tbaa !45
  %806 = icmp eq ptr %805, null
  br i1 %806, label %850, label %807

807:                                              ; preds = %802
  %808 = getelementptr inbounds %struct.TreeElement, ptr %803, i64 0, i32 3
  br label %809

809:                                              ; preds = %807, %846
  %810 = phi ptr [ %805, %807 ], [ %848, %846 ]
  %811 = phi ptr [ null, %807 ], [ %847, %846 ]
  %812 = getelementptr inbounds %struct.FCurve, ptr %810, i64 0, i32 3
  %813 = load ptr, ptr %812, align 8, !tbaa !253
  %814 = icmp eq ptr %813, null
  br i1 %814, label %846, label %815

815:                                              ; preds = %809
  %816 = load ptr, ptr %813, align 8, !tbaa !255
  %817 = icmp eq ptr %816, null
  br i1 %817, label %846, label %818

818:                                              ; preds = %815, %842
  %819 = phi ptr [ %843, %842 ], [ %811, %815 ]
  %820 = phi ptr [ %844, %842 ], [ %816, %815 ]
  %821 = getelementptr inbounds %struct.DriverVar, ptr %820, i64 0, i32 4
  %822 = load i16, ptr %821, align 8, !tbaa !257
  %823 = icmp sgt i16 %822, 0
  br i1 %823, label %824, label %842

824:                                              ; preds = %818
  %825 = getelementptr inbounds %struct.DriverVar, ptr %820, i64 0, i32 3
  br label %826

826:                                              ; preds = %824, %835
  %827 = phi ptr [ %836, %835 ], [ %819, %824 ]
  %828 = phi ptr [ %838, %835 ], [ %825, %824 ]
  %829 = phi i32 [ %837, %835 ], [ 0, %824 ]
  %830 = load ptr, ptr %828, align 8, !tbaa !259
  %831 = icmp eq ptr %827, %830
  br i1 %831, label %835, label %832

832:                                              ; preds = %826
  %833 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %808, ptr noundef %830, ptr noundef %803, i16 noundef signext 11, i16 noundef signext 0)
  %834 = load ptr, ptr %828, align 8, !tbaa !259
  br label %835

835:                                              ; preds = %826, %832
  %836 = phi ptr [ %834, %832 ], [ %827, %826 ]
  %837 = add nuw nsw i32 %829, 1
  %838 = getelementptr inbounds %struct.DriverTarget, ptr %828, i64 1
  %839 = load i16, ptr %821, align 8, !tbaa !257
  %840 = sext i16 %839 to i32
  %841 = icmp slt i32 %837, %840
  br i1 %841, label %826, label %842, !llvm.loop !261

842:                                              ; preds = %835, %818
  %843 = phi ptr [ %819, %818 ], [ %836, %835 ]
  %844 = load ptr, ptr %820, align 8, !tbaa !262
  %845 = icmp eq ptr %844, null
  br i1 %845, label %846, label %818, !llvm.loop !263

846:                                              ; preds = %842, %809, %815
  %847 = phi ptr [ %811, %815 ], [ %811, %809 ], [ %843, %842 ]
  %848 = load ptr, ptr %810, align 8, !tbaa !45
  %849 = icmp eq ptr %848, null
  br i1 %849, label %850, label %809, !llvm.loop !264

850:                                              ; preds = %846, %802, %791
  %851 = getelementptr inbounds %struct.AnimData, ptr %793, i64 0, i32 3
  %852 = load ptr, ptr %851, align 8, !tbaa !154
  %853 = icmp eq ptr %852, null
  br i1 %853, label %1212, label %854

854:                                              ; preds = %850
  %855 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %796, ptr noundef nonnull %793, ptr noundef %34, i16 noundef signext 1, i16 noundef signext 0)
  %856 = getelementptr inbounds %struct.TreeElement, ptr %855, i64 0, i32 11
  store ptr @.str.4, ptr %856, align 8, !tbaa !46
  %857 = load ptr, ptr %851, align 8, !tbaa !45
  %858 = icmp eq ptr %857, null
  br i1 %858, label %1212, label %859

859:                                              ; preds = %854
  %860 = getelementptr inbounds %struct.TreeElement, ptr %855, i64 0, i32 3
  br label %864

861:                                              ; preds = %884, %864
  %862 = load ptr, ptr %865, align 8, !tbaa !45
  %863 = icmp eq ptr %862, null
  br i1 %863, label %1212, label %864, !llvm.loop !265

864:                                              ; preds = %859, %861
  %865 = phi ptr [ %857, %859 ], [ %862, %861 ]
  %866 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %860, ptr noundef nonnull %865, ptr noundef %855, i16 noundef signext 33, i16 noundef signext 0)
  %867 = getelementptr inbounds %struct.NlaTrack, ptr %865, i64 0, i32 5
  %868 = getelementptr inbounds %struct.TreeElement, ptr %866, i64 0, i32 11
  store ptr %867, ptr %868, align 8, !tbaa !46
  %869 = getelementptr inbounds %struct.NlaTrack, ptr %865, i64 0, i32 2
  %870 = load ptr, ptr %869, align 8, !tbaa !45
  %871 = icmp eq ptr %870, null
  br i1 %871, label %861, label %872

872:                                              ; preds = %864
  %873 = getelementptr inbounds %struct.TreeElement, ptr %866, i64 0, i32 3
  br label %874

874:                                              ; preds = %872, %884
  %875 = phi ptr [ %870, %872 ], [ %886, %884 ]
  %876 = phi i32 [ 0, %872 ], [ %885, %884 ]
  %877 = getelementptr inbounds %struct.NlaStrip, ptr %875, i64 0, i32 3
  %878 = load ptr, ptr %877, align 8, !tbaa !266
  %879 = trunc i32 %876 to i16
  %880 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %873, ptr noundef %878, ptr noundef %866, i16 noundef signext 2, i16 noundef signext %879)
  %881 = icmp eq ptr %880, null
  br i1 %881, label %884, label %882

882:                                              ; preds = %874
  %883 = getelementptr inbounds %struct.TreeElement, ptr %880, i64 0, i32 12
  store ptr %875, ptr %883, align 8, !tbaa !95
  br label %884

884:                                              ; preds = %874, %882
  %885 = add nuw nsw i32 %876, 1
  %886 = load ptr, ptr %875, align 8, !tbaa !45
  %887 = icmp eq ptr %886, null
  br i1 %887, label %861, label %874, !llvm.loop !268

888:                                              ; preds = %76
  %889 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 6
  %890 = load i32, ptr %889, align 4, !tbaa !269
  %891 = trunc i32 %890 to i16
  %892 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 9
  store i16 %891, ptr %892, align 4, !tbaa !70
  %893 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %13, ptr %893, align 8, !tbaa !95
  %894 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 4, i64 2
  %895 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %894, ptr %895, align 8, !tbaa !46
  %896 = icmp slt i32 %890, 8
  br i1 %896, label %897, label %1212

897:                                              ; preds = %888
  %898 = icmp eq i32 %890, 1
  br i1 %898, label %899, label %910

899:                                              ; preds = %897
  %900 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 36
  %901 = load ptr, ptr %900, align 8, !tbaa !45
  %902 = icmp eq ptr %901, null
  br i1 %902, label %1212, label %903

903:                                              ; preds = %899
  %904 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %905

905:                                              ; preds = %903, %905
  %906 = phi ptr [ %901, %903 ], [ %908, %905 ]
  %907 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %904, ptr noundef nonnull %906, ptr noundef %34, i16 noundef signext 26, i16 noundef signext %16)
  %908 = load ptr, ptr %906, align 8, !tbaa !45
  %909 = icmp eq ptr %908, null
  br i1 %909, label %1212, label %905, !llvm.loop !270

910:                                              ; preds = %897
  %911 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %912 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 24
  %913 = load ptr, ptr %912, align 8, !tbaa !135
  %914 = select i1 %18, ptr %17, ptr %34
  br label %11

915:                                              ; preds = %76
  %916 = getelementptr inbounds %struct.Strip, ptr %13, i64 0, i32 7
  %917 = load i8, ptr %916, align 8, !tbaa !75
  %918 = icmp eq i8 %917, 0
  %919 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  %920 = select i1 %918, ptr @.str.5, ptr %916
  store ptr %920, ptr %919, align 8, !tbaa !46
  %921 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %13, ptr %921, align 8, !tbaa !95
  br label %1212

922:                                              ; preds = %76
  %923 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 6
  %924 = load i32, ptr %923, align 4, !tbaa !269
  %925 = trunc i32 %924 to i16
  %926 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 9
  store i16 %925, ptr %926, align 4, !tbaa !70
  %927 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %13, ptr %927, align 8, !tbaa !95
  %928 = getelementptr inbounds %struct.Sequence, ptr %13, i64 0, i32 24
  %929 = load ptr, ptr %928, align 8, !tbaa !135
  %930 = getelementptr inbounds %struct.Strip, ptr %929, i64 0, i32 6
  %931 = load ptr, ptr %930, align 8, !tbaa !137
  %932 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %931, ptr %932, align 8, !tbaa !46
  br label %1212

933:                                              ; preds = %76, %76, %76
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #12
  %934 = getelementptr inbounds %struct.PointerRNA, ptr %13, i64 0, i32 2
  %935 = load ptr, ptr %934, align 8, !tbaa !147
  %936 = icmp eq ptr %935, null
  br i1 %936, label %937, label %939

937:                                              ; preds = %933
  %938 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr @.str.6, ptr %938, align 8, !tbaa !46
  br label %1146

939:                                              ; preds = %933
  switch i16 %15, label %1146 [
    i16 30, label %940
    i16 31, label %1014
    i16 32, label %1125
  ]

940:                                              ; preds = %939
  %941 = tail call ptr @RNA_struct_name_get_alloc(ptr noundef %13, ptr noundef null, i32 noundef 0, ptr noundef null) #12
  %942 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %941, ptr %942, align 8, !tbaa !46
  %943 = icmp eq ptr %941, null
  br i1 %943, label %948, label %944

944:                                              ; preds = %940
  %945 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %946 = load i16, ptr %945, align 8, !tbaa !39
  %947 = or i16 %946, 8
  store i16 %947, ptr %945, align 8, !tbaa !39
  br label %952

948:                                              ; preds = %940
  %949 = getelementptr inbounds %struct.PointerRNA, ptr %13, i64 0, i32 1
  %950 = load ptr, ptr %949, align 8, !tbaa !271
  %951 = tail call ptr @RNA_struct_ui_name(ptr noundef %950) #12
  store ptr %951, ptr %942, align 8, !tbaa !46
  br label %952

952:                                              ; preds = %948, %944
  %953 = load i16, ptr %68, align 2, !tbaa !76
  %954 = and i16 %953, 4
  %955 = icmp eq i16 %954, 0
  br i1 %955, label %964, label %956

956:                                              ; preds = %952
  %957 = load ptr, ptr %942, align 8, !tbaa !46
  %958 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull @.str.7, ptr noundef %957) #12
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %960, label %964

960:                                              ; preds = %956
  %961 = getelementptr inbounds %struct.TreeStoreElem, ptr %67, i64 0, i32 2
  %962 = load i16, ptr %961, align 4, !tbaa !84
  %963 = and i16 %962, -9
  store i16 %963, ptr %961, align 4, !tbaa !84
  br label %964

964:                                              ; preds = %960, %956, %952
  %965 = getelementptr inbounds %struct.PointerRNA, ptr %13, i64 0, i32 1
  %966 = load ptr, ptr %965, align 8, !tbaa !271
  %967 = tail call ptr @RNA_struct_iterator_property(ptr noundef %966) #12
  %968 = tail call i32 @RNA_property_collection_length(ptr noundef %13, ptr noundef %967) #12
  %969 = icmp eq ptr %14, null
  br i1 %969, label %975, label %970

970:                                              ; preds = %964
  %971 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 12
  %972 = load ptr, ptr %971, align 8, !tbaa !95
  %973 = tail call i32 @RNA_property_type(ptr noundef %972) #12
  %974 = icmp eq i32 %973, 5
  br i1 %974, label %975, label %983

975:                                              ; preds = %970, %964
  %976 = getelementptr inbounds %struct.TreeStoreElem, ptr %67, i64 0, i32 3
  %977 = load i16, ptr %976, align 2, !tbaa !57
  %978 = icmp eq i16 %977, 0
  br i1 %978, label %979, label %983

979:                                              ; preds = %975
  %980 = getelementptr inbounds %struct.TreeStoreElem, ptr %67, i64 0, i32 2
  %981 = load i16, ptr %980, align 4, !tbaa !84
  %982 = and i16 %981, -2
  store i16 %982, ptr %980, align 4, !tbaa !84
  br label %983

983:                                              ; preds = %975, %979, %970
  %984 = getelementptr inbounds %struct.TreeStoreElem, ptr %67, i64 0, i32 2
  %985 = load i16, ptr %984, align 4, !tbaa !84
  %986 = zext i16 %985 to i32
  %987 = and i32 %986, 1
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %996, label %989

989:                                              ; preds = %983
  %990 = load i16, ptr %68, align 2, !tbaa !76
  %991 = and i16 %990, 4
  %992 = icmp eq i16 %991, 0
  %993 = and i32 %986, 8
  %994 = icmp eq i32 %993, 0
  %995 = or i1 %994, %992
  br i1 %995, label %1006, label %996

996:                                              ; preds = %989, %983
  %997 = icmp sgt i32 %968, 0
  br i1 %997, label %998, label %1012

998:                                              ; preds = %996
  %999 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %1000

1000:                                             ; preds = %998, %1000
  %1001 = phi i32 [ 0, %998 ], [ %1004, %1000 ]
  %1002 = trunc i32 %1001 to i16
  %1003 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %999, ptr noundef %13, ptr noundef %34, i16 noundef signext 31, i16 noundef signext %1002)
  %1004 = add nuw nsw i32 %1001, 1
  %1005 = icmp eq i32 %1004, %968
  br i1 %1005, label %1012, label %1000, !llvm.loop !272

1006:                                             ; preds = %989
  %1007 = icmp eq i32 %968, 0
  br i1 %1007, label %1012, label %1008

1008:                                             ; preds = %1006
  %1009 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %1010 = load i16, ptr %1009, align 8, !tbaa !39
  %1011 = or i16 %1010, 4
  store i16 %1011, ptr %1009, align 8, !tbaa !39
  br label %1012

1012:                                             ; preds = %1000, %996, %1006, %1008
  %1013 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1013, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !273
  br label %1146

1014:                                             ; preds = %939
  %1015 = getelementptr inbounds %struct.PointerRNA, ptr %13, i64 0, i32 1
  %1016 = load ptr, ptr %1015, align 8, !tbaa !271
  %1017 = tail call ptr @RNA_struct_iterator_property(ptr noundef %1016) #12
  %1018 = sext i16 %16 to i32
  %1019 = call i32 @RNA_property_collection_lookup_int(ptr noundef %13, ptr noundef %1017, i32 noundef %1018, ptr noundef nonnull %9) #12
  %1020 = getelementptr inbounds %struct.PointerRNA, ptr %9, i64 0, i32 2
  %1021 = load ptr, ptr %1020, align 8, !tbaa !147
  %1022 = call i32 @RNA_property_type(ptr noundef %1021) #12
  %1023 = call ptr @RNA_property_ui_name(ptr noundef %1021) #12
  %1024 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %1023, ptr %1024, align 8, !tbaa !46
  %1025 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %1021, ptr %1025, align 8, !tbaa !95
  %1026 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1026, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !273
  %1027 = load i16, ptr %68, align 2, !tbaa !76
  %1028 = and i16 %1027, 4
  %1029 = icmp eq i16 %1028, 0
  br i1 %1029, label %1037, label %1030

1030:                                             ; preds = %1014
  %1031 = call i32 @BLI_strcasecmp(ptr noundef nonnull @.str.7, ptr noundef %1023) #12
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1033, label %1037

1033:                                             ; preds = %1030
  %1034 = getelementptr inbounds %struct.TreeStoreElem, ptr %67, i64 0, i32 2
  %1035 = load i16, ptr %1034, align 4, !tbaa !84
  %1036 = and i16 %1035, -9
  store i16 %1036, ptr %1034, align 4, !tbaa !84
  br label %1037

1037:                                             ; preds = %1033, %1030, %1014
  switch i32 %1022, label %1093 [
    i32 5, label %1038
    i32 6, label %1062
  ]

1038:                                             ; preds = %1037
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %13, ptr noundef %1021) #12
  %1039 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %1040 = load ptr, ptr %1039, align 8, !tbaa !147
  %1041 = icmp eq ptr %1040, null
  br i1 %1041, label %1146, label %1042

1042:                                             ; preds = %1038
  %1043 = getelementptr inbounds %struct.TreeStoreElem, ptr %67, i64 0, i32 2
  %1044 = load i16, ptr %1043, align 4, !tbaa !84
  %1045 = zext i16 %1044 to i32
  %1046 = and i32 %1045, 1
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1055, label %1048

1048:                                             ; preds = %1042
  %1049 = load i16, ptr %68, align 2, !tbaa !76
  %1050 = and i16 %1049, 4
  %1051 = icmp eq i16 %1050, 0
  %1052 = and i32 %1045, 8
  %1053 = icmp eq i32 %1052, 0
  %1054 = or i1 %1053, %1051
  br i1 %1054, label %1058, label %1055

1055:                                             ; preds = %1048, %1042
  %1056 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  %1057 = call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %1056, ptr noundef nonnull %8, ptr noundef %34, i16 noundef signext 30, i16 noundef signext -1)
  br label %1146

1058:                                             ; preds = %1048
  %1059 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %1060 = load i16, ptr %1059, align 8, !tbaa !39
  %1061 = or i16 %1060, 4
  store i16 %1061, ptr %1059, align 8, !tbaa !39
  br label %1146

1062:                                             ; preds = %1037
  %1063 = call i32 @RNA_property_collection_length(ptr noundef %13, ptr noundef %1021) #12
  %1064 = getelementptr inbounds %struct.TreeStoreElem, ptr %67, i64 0, i32 2
  %1065 = load i16, ptr %1064, align 4, !tbaa !84
  %1066 = zext i16 %1065 to i32
  %1067 = and i32 %1066, 1
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1076, label %1069

1069:                                             ; preds = %1062
  %1070 = load i16, ptr %68, align 2, !tbaa !76
  %1071 = and i16 %1070, 4
  %1072 = icmp eq i16 %1071, 0
  %1073 = and i32 %1066, 8
  %1074 = icmp eq i32 %1073, 0
  %1075 = or i1 %1074, %1072
  br i1 %1075, label %1087, label %1076

1076:                                             ; preds = %1069, %1062
  %1077 = icmp sgt i32 %1063, 0
  br i1 %1077, label %1078, label %1146

1078:                                             ; preds = %1076
  %1079 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %1080

1080:                                             ; preds = %1078, %1080
  %1081 = phi i32 [ 0, %1078 ], [ %1085, %1080 ]
  %1082 = call i32 @RNA_property_collection_lookup_int(ptr noundef %13, ptr noundef %1021, i32 noundef %1081, ptr noundef nonnull %8) #12
  %1083 = trunc i32 %1081 to i16
  %1084 = call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %1079, ptr noundef nonnull %8, ptr noundef %34, i16 noundef signext 30, i16 noundef signext %1083)
  %1085 = add nuw nsw i32 %1081, 1
  %1086 = icmp eq i32 %1085, %1063
  br i1 %1086, label %1146, label %1080, !llvm.loop !274

1087:                                             ; preds = %1069
  %1088 = icmp eq i32 %1063, 0
  br i1 %1088, label %1146, label %1089

1089:                                             ; preds = %1087
  %1090 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %1091 = load i16, ptr %1090, align 8, !tbaa !39
  %1092 = or i16 %1091, 4
  store i16 %1092, ptr %1090, align 8, !tbaa !39
  br label %1146

1093:                                             ; preds = %1037
  %1094 = icmp ult i32 %1022, 3
  br i1 %1094, label %1095, label %1146

1095:                                             ; preds = %1093
  %1096 = call i32 @RNA_property_array_length(ptr noundef %13, ptr noundef %1021) #12
  %1097 = getelementptr inbounds %struct.TreeStoreElem, ptr %67, i64 0, i32 2
  %1098 = load i16, ptr %1097, align 4, !tbaa !84
  %1099 = zext i16 %1098 to i32
  %1100 = and i32 %1099, 1
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1109, label %1102

1102:                                             ; preds = %1095
  %1103 = load i16, ptr %68, align 2, !tbaa !76
  %1104 = and i16 %1103, 4
  %1105 = icmp eq i16 %1104, 0
  %1106 = and i32 %1099, 8
  %1107 = icmp eq i32 %1106, 0
  %1108 = or i1 %1107, %1105
  br i1 %1108, label %1119, label %1109

1109:                                             ; preds = %1102, %1095
  %1110 = icmp sgt i32 %1096, 0
  br i1 %1110, label %1111, label %1146

1111:                                             ; preds = %1109
  %1112 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %1113

1113:                                             ; preds = %1111, %1113
  %1114 = phi i32 [ 0, %1111 ], [ %1117, %1113 ]
  %1115 = trunc i32 %1114 to i16
  %1116 = call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %1112, ptr noundef %13, ptr noundef %34, i16 noundef signext 32, i16 noundef signext %1115)
  %1117 = add nuw nsw i32 %1114, 1
  %1118 = icmp eq i32 %1117, %1096
  br i1 %1118, label %1146, label %1113, !llvm.loop !275

1119:                                             ; preds = %1102
  %1120 = icmp eq i32 %1096, 0
  br i1 %1120, label %1146, label %1121

1121:                                             ; preds = %1119
  %1122 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %1123 = load i16, ptr %1122, align 8, !tbaa !39
  %1124 = or i16 %1123, 4
  store i16 %1124, ptr %1122, align 8, !tbaa !39
  br label %1146

1125:                                             ; preds = %939
  %1126 = getelementptr inbounds %struct.TreeElement, ptr %14, i64 0, i32 12
  %1127 = load ptr, ptr %1126, align 8, !tbaa !95
  %1128 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %1127, ptr %1128, align 8, !tbaa !95
  %1129 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1129, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !273
  store i16 %16, ptr %78, align 2, !tbaa !148
  %1130 = sext i16 %16 to i32
  %1131 = tail call zeroext i8 @RNA_property_array_item_char(ptr noundef %1127, i32 noundef %1130) #12
  %1132 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %1133 = tail call ptr %1132(i64 noundef 20, ptr noundef nonnull @.str.8) #12
  %1134 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %1133, ptr %1134, align 8, !tbaa !46
  %1135 = icmp eq i8 %1131, 0
  br i1 %1135, label %1139, label %1136

1136:                                             ; preds = %1125
  %1137 = zext i8 %1131 to i32
  %1138 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1133, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %1137) #12
  br label %1142

1139:                                             ; preds = %1125
  %1140 = add nsw i32 %1130, 1
  %1141 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1133, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %1140) #12
  br label %1142

1142:                                             ; preds = %1139, %1136
  %1143 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %1144 = load i16, ptr %1143, align 8, !tbaa !39
  %1145 = or i16 %1144, 8
  store i16 %1145, ptr %1143, align 8, !tbaa !39
  br label %1146

1146:                                             ; preds = %1080, %1113, %1076, %1109, %939, %1012, %1142, %1055, %1058, %1038, %1093, %1119, %1121, %1089, %1087, %937
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  br label %1212

1147:                                             ; preds = %79
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #12
  %1148 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 12
  store ptr %13, ptr %1148, align 8, !tbaa !95
  %1149 = getelementptr inbounds %struct.wmKeyMap, ptr %13, i64 0, i32 4
  %1150 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 11
  store ptr %1149, ptr %1150, align 8, !tbaa !46
  %1151 = getelementptr inbounds %struct.TreeStoreElem, ptr %67, i64 0, i32 2
  %1152 = load i16, ptr %1151, align 4, !tbaa !84
  %1153 = zext i16 %1152 to i32
  %1154 = and i32 %1153, 1
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1160, label %1156

1156:                                             ; preds = %1147
  %1157 = and i32 %1153, 8
  %1158 = icmp eq i32 %1157, 0
  %1159 = or i1 %71, %1158
  br i1 %1159, label %1207, label %1160

1160:                                             ; preds = %1156, %1147
  %1161 = getelementptr inbounds %struct.wmKeyMap, ptr %13, i64 0, i32 2
  %1162 = load ptr, ptr %1161, align 8, !tbaa !45
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1211, label %1164

1164:                                             ; preds = %1160
  %1165 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 3
  br label %1166

1166:                                             ; preds = %1164, %1203
  %1167 = phi ptr [ %1162, %1164 ], [ %1205, %1203 ]
  %1168 = phi i32 [ 0, %1164 ], [ %1204, %1203 ]
  %1169 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1167, i64 0, i32 6
  %1170 = load i16, ptr %1169, align 2, !tbaa !276
  %1171 = call ptr @WM_key_event_string(i16 noundef signext %1170) #12
  %1172 = load i8, ptr %1171, align 1, !tbaa !75
  %1173 = icmp eq i8 %1172, 0
  br i1 %1173, label %1203, label %1174

1174:                                             ; preds = %1166
  %1175 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1167, i64 0, i32 5
  %1176 = load i16, ptr %1175, align 8, !tbaa !278
  %1177 = icmp eq i16 %1176, 0
  br i1 %1177, label %1178, label %1181

1178:                                             ; preds = %1174
  %1179 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1167, i64 0, i32 2
  %1180 = call ptr @WM_operatortype_find(ptr noundef nonnull %1179, i8 noundef zeroext 0) #12
  br label %1181

1181:                                             ; preds = %1174, %1178
  %1182 = phi ptr [ null, %1174 ], [ %1180, %1178 ]
  %1183 = icmp eq ptr %1182, null
  br i1 %1183, label %1184, label %1187

1184:                                             ; preds = %1181
  %1185 = load i16, ptr %1175, align 8, !tbaa !278
  %1186 = icmp eq i16 %1185, 0
  br i1 %1186, label %1203, label %1187

1187:                                             ; preds = %1184, %1181
  %1188 = trunc i32 %1168 to i16
  %1189 = call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %1165, ptr noundef nonnull %1167, ptr noundef %34, i16 noundef signext 35, i16 noundef signext %1188)
  %1190 = getelementptr inbounds %struct.TreeElement, ptr %1189, i64 0, i32 12
  store ptr %1167, ptr %1190, align 8, !tbaa !95
  %1191 = load i16, ptr %1175, align 8, !tbaa !278
  %1192 = icmp eq i16 %1191, 0
  br i1 %1192, label %1195, label %1193

1193:                                             ; preds = %1187
  %1194 = getelementptr inbounds %struct.TreeElement, ptr %1189, i64 0, i32 11
  store ptr @.str.11, ptr %1194, align 8, !tbaa !46
  br label %1203

1195:                                             ; preds = %1187
  %1196 = getelementptr inbounds %struct.wmOperatorType, ptr %1182, i64 0, i32 1
  %1197 = load ptr, ptr %1196, align 8, !tbaa !279
  call void @WM_operator_py_idname(ptr noundef nonnull %10, ptr noundef %1197) #12
  %1198 = call ptr @BLI_strdup(ptr noundef nonnull %10) #12
  %1199 = getelementptr inbounds %struct.TreeElement, ptr %1189, i64 0, i32 11
  store ptr %1198, ptr %1199, align 8, !tbaa !46
  %1200 = getelementptr inbounds %struct.TreeElement, ptr %1189, i64 0, i32 7
  %1201 = load i16, ptr %1200, align 8, !tbaa !39
  %1202 = or i16 %1201, 8
  store i16 %1202, ptr %1200, align 8, !tbaa !39
  br label %1203

1203:                                             ; preds = %1184, %1195, %1193, %1166
  %1204 = add nuw nsw i32 %1168, 1
  %1205 = load ptr, ptr %1167, align 8, !tbaa !45
  %1206 = icmp eq ptr %1205, null
  br i1 %1206, label %1211, label %1166, !llvm.loop !282

1207:                                             ; preds = %1156
  %1208 = getelementptr inbounds %struct.TreeElement, ptr %34, i64 0, i32 7
  %1209 = load i16, ptr %1208, align 8, !tbaa !39
  %1210 = or i16 %1209, 4
  store i16 %1210, ptr %1208, align 8, !tbaa !39
  br label %1211

1211:                                             ; preds = %1203, %1160, %1207
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #12
  br label %1212

1212:                                             ; preds = %861, %905, %788, %643, %592, %518, %477, %441, %405, %899, %854, %470, %434, %395, %757, %657, %646, %606, %595, %555, %544, %371, %109, %106, %99, %76, %79, %922, %1211, %1146, %915, %96, %850, %888, %27
  %1213 = phi ptr [ null, %27 ], [ %34, %888 ], [ %34, %850 ], [ %34, %96 ], [ %34, %915 ], [ %34, %1146 ], [ %34, %1211 ], [ %34, %922 ], [ %34, %79 ], [ %34, %76 ], [ %34, %99 ], [ %34, %106 ], [ %34, %109 ], [ %34, %371 ], [ %34, %544 ], [ %34, %555 ], [ %34, %595 ], [ %34, %606 ], [ %34, %646 ], [ %34, %657 ], [ %34, %757 ], [ %34, %395 ], [ %34, %434 ], [ %34, %470 ], [ %34, %854 ], [ %34, %899 ], [ %34, %405 ], [ %34, %441 ], [ %34, %477 ], [ %34, %518 ], [ %34, %592 ], [ %34, %643 ], [ %34, %788 ], [ %34, %905 ], [ %34, %861 ]
  %1214 = select i1 %18, ptr %17, ptr %1213
  ret ptr %1214
}

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_add_library_contents(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef readnone %3) unnamed_addr #0 {
  %5 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %5) #12
  %6 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %5) #12
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
  %20 = load ptr, ptr %19, align 8, !tbaa !283
  %21 = icmp eq ptr %20, %3
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %18, align 8, !tbaa !284
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %17, !llvm.loop !285

25:                                               ; preds = %17
  %26 = call fastcc ptr @outliner_add_element(ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %14, ptr noundef null, i16 noundef signext 36, i16 noundef signext 0)
  %27 = load ptr, ptr %13, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.TreeElement, ptr %26, i64 0, i32 12
  store ptr %27, ptr %28, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4
  %30 = load i16, ptr %29, align 8, !tbaa !64
  %31 = sext i16 %30 to i32
  %32 = call ptr @BKE_idcode_to_name_plural(i32 noundef %31) #12
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
  %44 = load ptr, ptr %43, align 8, !tbaa !283
  %45 = icmp eq ptr %44, %3
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call fastcc ptr @outliner_add_element(ptr noundef %1, ptr noundef nonnull %40, ptr noundef nonnull %42, ptr noundef %26, i16 noundef signext 0, i16 noundef signext 0)
  br label %48

48:                                               ; preds = %41, %46
  %49 = load ptr, ptr %42, align 8, !tbaa !45
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %41, !llvm.loop !286

51:                                               ; preds = %22, %48, %25, %11
  %52 = add nuw nsw i64 %12, 1
  %53 = icmp eq i64 %52, %10
  br i1 %53, label %54, label %11, !llvm.loop !287

54:                                               ; preds = %51, %4
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %5) #12
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_add_scene_contents(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext 19, i16 noundef signext 0)
  %6 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 11
  store ptr @.str.18, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 60
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %102, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.TreeElement, ptr %5, i64 0, i32 3
  br label %12

12:                                               ; preds = %10, %98
  %13 = phi ptr [ %8, %10 ], [ %100, %98 ]
  %14 = phi i32 [ 0, %10 ], [ %99, %98 ]
  %15 = trunc i32 %14 to i16
  %16 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, i16 noundef signext 20, i16 noundef signext %15)
  %17 = getelementptr inbounds %struct.SceneRenderLayer, ptr %13, i64 0, i32 2
  %18 = getelementptr inbounds %struct.TreeElement, ptr %16, i64 0, i32 11
  store ptr %17, ptr %18, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.SceneRenderLayer, ptr %13, i64 0, i32 8
  %20 = getelementptr inbounds %struct.TreeElement, ptr %16, i64 0, i32 12
  store ptr %19, ptr %20, align 8, !tbaa !95
  %21 = getelementptr inbounds %struct.SceneRenderLayer, ptr %13, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !288
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.TreeElement, ptr %16, i64 0, i32 3
  %26 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull %22, ptr noundef %16, i16 noundef signext 23, i16 noundef signext 0)
  br label %27

27:                                               ; preds = %24, %12
  %28 = getelementptr inbounds %struct.SceneRenderLayer, ptr %13, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !291
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TreeElement, ptr %16, i64 0, i32 3
  %33 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %32, ptr noundef nonnull %29, ptr noundef %16, i16 noundef signext 22, i16 noundef signext 0)
  br label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.TreeElement, ptr %16, i64 0, i32 3
  %36 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 0)
  %37 = getelementptr inbounds %struct.TreeElement, ptr %36, i64 0, i32 11
  store ptr @.str.19, ptr %37, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.SceneRenderLayer, ptr %13, i64 0, i32 9
  %39 = getelementptr inbounds %struct.TreeElement, ptr %36, i64 0, i32 12
  store ptr %38, ptr %39, align 8, !tbaa !95
  %40 = getelementptr inbounds %struct.TreeElement, ptr %16, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !68
  %42 = getelementptr inbounds %struct.TreeStoreElem, ptr %41, i64 0, i32 2
  %43 = load i16, ptr %42, align 4, !tbaa !84
  %44 = and i16 %43, 1
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %34
  %47 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 1)
  %48 = getelementptr inbounds %struct.TreeElement, ptr %47, i64 0, i32 11
  store ptr @.str.20, ptr %48, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.TreeElement, ptr %47, i64 0, i32 12
  store ptr %38, ptr %49, align 8, !tbaa !95
  %50 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 9)
  %51 = getelementptr inbounds %struct.TreeElement, ptr %50, i64 0, i32 11
  store ptr @.str.21, ptr %51, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.TreeElement, ptr %50, i64 0, i32 12
  store ptr %38, ptr %52, align 8, !tbaa !95
  %53 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 8)
  %54 = getelementptr inbounds %struct.TreeElement, ptr %53, i64 0, i32 11
  store ptr @.str.22, ptr %54, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.TreeElement, ptr %53, i64 0, i32 12
  store ptr %38, ptr %55, align 8, !tbaa !95
  %56 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 12)
  %57 = getelementptr inbounds %struct.TreeElement, ptr %56, i64 0, i32 11
  store ptr @.str.23, ptr %57, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.TreeElement, ptr %56, i64 0, i32 12
  store ptr %38, ptr %58, align 8, !tbaa !95
  %59 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 14)
  %60 = getelementptr inbounds %struct.TreeElement, ptr %59, i64 0, i32 11
  store ptr @.str.24, ptr %60, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.TreeElement, ptr %59, i64 0, i32 12
  store ptr %38, ptr %61, align 8, !tbaa !95
  %62 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 11)
  %63 = getelementptr inbounds %struct.TreeElement, ptr %62, i64 0, i32 11
  store ptr @.str.25, ptr %63, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.TreeElement, ptr %62, i64 0, i32 12
  store ptr %38, ptr %64, align 8, !tbaa !95
  %65 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 18)
  %66 = getelementptr inbounds %struct.TreeElement, ptr %65, i64 0, i32 11
  store ptr @.str.26, ptr %66, align 8, !tbaa !46
  %67 = getelementptr inbounds %struct.TreeElement, ptr %65, i64 0, i32 12
  store ptr %38, ptr %67, align 8, !tbaa !95
  %68 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 2)
  %69 = getelementptr inbounds %struct.TreeElement, ptr %68, i64 0, i32 11
  store ptr @.str.27, ptr %69, align 8, !tbaa !46
  %70 = getelementptr inbounds %struct.TreeElement, ptr %68, i64 0, i32 12
  store ptr %38, ptr %70, align 8, !tbaa !95
  %71 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 3)
  %72 = getelementptr inbounds %struct.TreeElement, ptr %71, i64 0, i32 11
  store ptr @.str.28, ptr %72, align 8, !tbaa !46
  %73 = getelementptr inbounds %struct.TreeElement, ptr %71, i64 0, i32 12
  store ptr %38, ptr %73, align 8, !tbaa !95
  %74 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 4)
  %75 = getelementptr inbounds %struct.TreeElement, ptr %74, i64 0, i32 11
  store ptr @.str.29, ptr %75, align 8, !tbaa !46
  %76 = getelementptr inbounds %struct.TreeElement, ptr %74, i64 0, i32 12
  store ptr %38, ptr %76, align 8, !tbaa !95
  %77 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 5)
  %78 = getelementptr inbounds %struct.TreeElement, ptr %77, i64 0, i32 11
  store ptr @.str.30, ptr %78, align 8, !tbaa !46
  %79 = getelementptr inbounds %struct.TreeElement, ptr %77, i64 0, i32 12
  store ptr %38, ptr %79, align 8, !tbaa !95
  %80 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 6)
  %81 = getelementptr inbounds %struct.TreeElement, ptr %80, i64 0, i32 11
  store ptr @.str.31, ptr %81, align 8, !tbaa !46
  %82 = getelementptr inbounds %struct.TreeElement, ptr %80, i64 0, i32 12
  store ptr %38, ptr %82, align 8, !tbaa !95
  %83 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 7)
  %84 = getelementptr inbounds %struct.TreeElement, ptr %83, i64 0, i32 11
  store ptr @.str.32, ptr %84, align 8, !tbaa !46
  %85 = getelementptr inbounds %struct.TreeElement, ptr %83, i64 0, i32 12
  store ptr %38, ptr %85, align 8, !tbaa !95
  %86 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 10)
  %87 = getelementptr inbounds %struct.TreeElement, ptr %86, i64 0, i32 11
  store ptr @.str.33, ptr %87, align 8, !tbaa !46
  %88 = getelementptr inbounds %struct.TreeElement, ptr %86, i64 0, i32 12
  store ptr %38, ptr %88, align 8, !tbaa !95
  %89 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 13)
  %90 = getelementptr inbounds %struct.TreeElement, ptr %89, i64 0, i32 11
  store ptr @.str.34, ptr %90, align 8, !tbaa !46
  %91 = getelementptr inbounds %struct.TreeElement, ptr %89, i64 0, i32 12
  store ptr %38, ptr %91, align 8, !tbaa !95
  %92 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 17)
  %93 = getelementptr inbounds %struct.TreeElement, ptr %92, i64 0, i32 11
  store ptr @.str.35, ptr %93, align 8, !tbaa !46
  %94 = getelementptr inbounds %struct.TreeElement, ptr %92, i64 0, i32 12
  store ptr %38, ptr %94, align 8, !tbaa !95
  %95 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef nonnull %35, ptr noundef %2, ptr noundef %16, i16 noundef signext 21, i16 noundef signext 16)
  %96 = getelementptr inbounds %struct.TreeElement, ptr %95, i64 0, i32 11
  store ptr @.str.36, ptr %96, align 8, !tbaa !46
  %97 = getelementptr inbounds %struct.TreeElement, ptr %95, i64 0, i32 12
  store ptr %38, ptr %97, align 8, !tbaa !95
  br label %98

98:                                               ; preds = %34, %46
  %99 = add nuw nsw i32 %14, 1
  %100 = load ptr, ptr %13, align 8, !tbaa !45
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %12, !llvm.loop !292

102:                                              ; preds = %98, %4
  %103 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !293
  %105 = icmp eq ptr %104, null
  br i1 %105, label %119, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %104, align 8, !tbaa !151
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.AnimData, ptr %104, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !153
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.AnimData, ptr %104, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !154
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %109, %106, %113
  %118 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext 15, i16 noundef signext 0)
  br label %119

119:                                              ; preds = %102, %117, %113
  %120 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !294
  %122 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef %1, ptr noundef %121, ptr noundef %3, i16 noundef signext 0, i16 noundef signext 0)
  ret void
}

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @RNA_main_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_sort(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !295
  %4 = icmp eq ptr %3, null
  br i1 %4, label %91, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = load i16, ptr %7, align 8, !tbaa !66
  switch i16 %8, label %83 [
    i16 4, label %13
    i16 36, label %13
    i16 0, label %9
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TreeElement, ptr %3, i64 0, i32 9
  %11 = load i16, ptr %10, align 4, !tbaa !70
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
  br i1 %18, label %20, label %14, !llvm.loop !296

20:                                               ; preds = %14
  %21 = icmp ugt i32 %15, 1
  br i1 %21, label %22, label %83

22:                                               ; preds = %20
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %24 = zext nneg i32 %15 to i64
  %25 = shl nuw nsw i64 %24, 5
  %26 = tail call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.37) #12
  %27 = load ptr, ptr %0, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %51, label %29

29:                                               ; preds = %22, %44
  %30 = phi ptr [ %49, %44 ], [ %27, %22 ]
  %31 = phi ptr [ %48, %44 ], [ %26, %22 ]
  %32 = getelementptr inbounds %struct.TreeElement, ptr %30, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !68
  store ptr %30, ptr %31, align 8, !tbaa !297
  %34 = getelementptr inbounds %struct.TreeElement, ptr %30, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.tTreeSort, ptr %31, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !299
  %37 = getelementptr inbounds %struct.TreeElement, ptr %30, i64 0, i32 9
  %38 = load i16, ptr %37, align 4, !tbaa !70
  %39 = getelementptr inbounds %struct.tTreeSort, ptr %31, i64 0, i32 3
  store i16 %38, ptr %39, align 8, !tbaa !300
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
  store ptr %46, ptr %47, align 8, !tbaa !301
  %48 = getelementptr inbounds %struct.tTreeSort, ptr %31, i64 1
  %49 = load ptr, ptr %30, align 8, !tbaa !45
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %29, !llvm.loop !302

51:                                               ; preds = %44, %22
  %52 = getelementptr inbounds %struct.tTreeSort, ptr %26, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !300
  %54 = icmp eq i16 %53, 1
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  br label %58

57:                                               ; preds = %51
  tail call void @qsort(ptr noundef %26, i64 noundef %24, i64 noundef 32, ptr noundef nonnull @treesort_alpha) #12
  br label %73

58:                                               ; preds = %55, %64
  %59 = phi i32 [ %65, %64 ], [ 0, %55 ]
  %60 = phi ptr [ %66, %64 ], [ %26, %55 ]
  %61 = getelementptr inbounds %struct.tTreeSort, ptr %60, i64 0, i32 3
  %62 = load i16, ptr %61, align 8, !tbaa !300
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = add nuw nsw i32 %59, 1
  %66 = getelementptr inbounds %struct.tTreeSort, ptr %60, i64 1
  %67 = icmp eq i32 %65, %56
  br i1 %67, label %73, label %58, !llvm.loop !303

68:                                               ; preds = %58
  %69 = zext nneg i32 %59 to i64
  %70 = getelementptr inbounds %struct.tTreeSort, ptr %26, i64 %69
  %71 = sub nsw i32 %15, %59
  %72 = sext i32 %71 to i64
  tail call void @qsort(ptr noundef %70, i64 noundef %72, i64 noundef 32, ptr noundef nonnull @treesort_alpha_ob) #12
  br label %73

73:                                               ; preds = %64, %68, %57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %74

74:                                               ; preds = %73, %74
  %75 = phi ptr [ %26, %73 ], [ %79, %74 ]
  %76 = phi i32 [ %15, %73 ], [ %77, %74 ]
  %77 = add nsw i32 %76, -1
  %78 = load ptr, ptr %75, align 8, !tbaa !297
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %78) #12
  %79 = getelementptr inbounds %struct.tTreeSort, ptr %75, i64 1
  %80 = icmp eq i32 %77, 0
  br i1 %80, label %81, label %74, !llvm.loop !304

81:                                               ; preds = %74
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %82(ptr noundef %26) #12
  br label %83

83:                                               ; preds = %5, %20, %81, %9
  %84 = load ptr, ptr %0, align 8, !tbaa !45
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83, %86
  %87 = phi ptr [ %89, %86 ], [ %84, %83 ]
  %88 = getelementptr inbounds %struct.TreeElement, ptr %87, i64 0, i32 3
  tail call fastcc void @outliner_sort(ptr noundef nonnull %88)
  %89 = load ptr, ptr %87, align 8, !tbaa !45
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %86, !llvm.loop !305

91:                                               ; preds = %86, %83, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @outliner_filter_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [34 x i8], align 16
  %4 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 9
  %5 = load i8, ptr %4, align 8, !tbaa !75
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %76, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %72, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.SpaceOops, ptr %0, i64 0, i32 14
  br label %12

12:                                               ; preds = %10, %70
  %13 = phi ptr [ %8, %10 ], [ %14, %70 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = load i16, ptr %11, align 2, !tbaa !76
  %16 = sext i16 %15 to i32
  %17 = shl nsw i32 %16, 4
  %18 = and i32 %17, 16
  %19 = xor i32 %18, 16
  %20 = and i32 %16, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = call i32 @fnmatch(ptr noundef nonnull %4, ptr noundef %24, i32 noundef %19) #12
  br label %31

26:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #12
  %27 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 34, ptr noundef nonnull @.str.38, ptr noundef nonnull %4) #12
  %28 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = call i32 @fnmatch(ptr noundef nonnull %3, ptr noundef %29, i32 noundef %19) #12
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #12
  br label %31

31:                                               ; preds = %22, %26
  %32 = phi i32 [ %25, %22 ], [ %30, %26 ]
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !68
  %36 = getelementptr inbounds %struct.TreeStoreElem, ptr %35, i64 0, i32 2
  %37 = load i16, ptr %36, align 4, !tbaa !84
  br i1 %33, label %66, label %38

38:                                               ; preds = %31
  %39 = and i16 %37, -17
  store i16 %39, ptr %36, align 4, !tbaa !84
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load i16, ptr %11, align 2, !tbaa !76
  %45 = and i16 %44, 4
  %46 = icmp eq i16 %45, 0
  %47 = and i32 %40, 8
  %48 = icmp eq i32 %47, 0
  %49 = or i1 %48, %46
  br i1 %49, label %54, label %50

50:                                               ; preds = %43, %38
  %51 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 3
  %52 = call fastcc i32 @outliner_filter_tree(ptr noundef %0, ptr noundef nonnull %51), !range !145
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %50, %43
  %55 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 3
  call void @outliner_free_tree(ptr noundef nonnull %55)
  call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %13) #12
  %56 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 7
  %57 = load i16, ptr %56, align 8, !tbaa !39
  %58 = and i16 %57, 8
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %62 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 11
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  call void %61(ptr noundef %63) #12
  br label %64

64:                                               ; preds = %60, %54
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %65(ptr noundef nonnull %13) #12
  br label %70

66:                                               ; preds = %31
  %67 = or i16 %37, 16
  store i16 %67, ptr %36, align 4, !tbaa !84
  %68 = getelementptr inbounds %struct.TreeElement, ptr %13, i64 0, i32 3
  %69 = call fastcc i32 @outliner_filter_tree(ptr noundef %0, ptr noundef nonnull %68), !range !145
  br label %70

70:                                               ; preds = %66, %64, %50
  %71 = icmp eq ptr %14, null
  br i1 %71, label %72, label %12, !llvm.loop !306

72:                                               ; preds = %70, %7
  %73 = load ptr, ptr %1, align 8, !tbaa !34
  %74 = icmp ne ptr %73, null
  %75 = zext i1 %74 to i32
  br label %76

76:                                               ; preds = %2, %72
  %77 = phi i32 [ %75, %72 ], [ 1, %2 ]
  ret i32 %77
}

declare void @BLI_mempool_iternew(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_iterstep(ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare void @BKE_treehash_free(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @BKE_treehash_rebuild_from_treestore(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_name_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_collection_lookup_int(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_property_ui_name(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_array_item_char(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare ptr @WM_key_event_string(i16 noundef signext) local_unnamed_addr #2

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_operator_py_idname(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_treehash_create_from_treestore(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_treehash_lookup_unused(ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @BKE_treehash_add_element(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @outliner_add_bone(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = load i32, ptr %5, align 4, !tbaa !239
  %8 = trunc i32 %7 to i16
  %9 = tail call fastcc ptr @outliner_add_element(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, i16 noundef signext 5, i16 noundef signext %8)
  %10 = load i32, ptr %5, align 4, !tbaa !239
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %5, align 4, !tbaa !239
  %12 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 5
  %13 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 11
  store ptr %12, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 12
  store ptr %3, ptr %14, align 8, !tbaa !95
  %15 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.TreeElement, ptr %9, i64 0, i32 3
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi ptr [ %16, %18 ], [ %22, %20 ]
  tail call fastcc void @outliner_add_bone(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %2, ptr noundef nonnull %21, ptr noundef %9, ptr noundef nonnull %5)
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %20, !llvm.loop !307

24:                                               ; preds = %20, %6
  ret void
}

declare i32 @set_listbasepointers(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_idcode_to_name_plural(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @treesort_alpha(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.tTreeSort, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !299
  %5 = getelementptr inbounds %struct.tTreeSort, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !299
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6) #13
  %8 = ashr i32 %7, 31
  %9 = icmp slt i32 %7, 1
  %10 = select i1 %9, i32 %8, i32 1
  ret i32 %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @treesort_alpha_ob(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.tTreeSort, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !300
  %5 = icmp eq i16 %4, 16975
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.tTreeSort, ptr %1, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !300
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
  %15 = load ptr, ptr %14, align 8, !tbaa !299
  %16 = getelementptr inbounds %struct.tTreeSort, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !299
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %17) #13
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

declare i32 @fnmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!51, !36, i64 232}
!51 = !{!"SpaceOops", !36, i64 0, !36, i64 8, !35, i64 16, !41, i64 32, !52, i64 36, !37, i64 40, !53, i64 56, !35, i64 216, !36, i64 232, !37, i64 240, !56, i64 272, !42, i64 288, !42, i64 290, !42, i64 292, !42, i64 294, !36, i64 296}
!52 = !{!"float", !37, i64 0}
!53 = !{!"View2D", !54, i64 0, !54, i64 16, !55, i64 32, !55, i64 48, !55, i64 64, !37, i64 80, !37, i64 88, !52, i64 96, !52, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !36, i64 128, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!54 = !{!"rctf", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!55 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!56 = !{!"TreeStoreElem", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !36, i64 8}
!57 = !{!56, !42, i64 6}
!58 = distinct !{!58, !48, !49}
!59 = !{!51, !42, i64 292}
!60 = !{!56, !36, i64 8}
!61 = distinct !{!61, !48, !49}
!62 = !{!51, !36, i64 296}
!63 = !{i64 0, i64 2, !64, i64 2, i64 2, !64, i64 4, i64 2, !64, i64 6, i64 2, !64, i64 8, i64 8, !45}
!64 = !{!42, !42, i64 0}
!65 = distinct !{!65, !48, !49}
!66 = !{!56, !42, i64 0}
!67 = !{!56, !42, i64 2}
!68 = !{!40, !36, i64 48}
!69 = distinct !{!69, !48, !49}
!70 = !{!40, !42, i64 60}
!71 = !{!51, !42, i64 290}
!72 = distinct !{!72, !48, !49}
!73 = !{!40, !36, i64 16}
!74 = distinct !{!74, !48, !49}
!75 = !{!37, !37, i64 0}
!76 = !{!51, !42, i64 294}
!77 = !{!51, !36, i64 216}
!78 = !{!79, !36, i64 16}
!79 = !{!"Object", !80, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !42, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !81, i64 312, !36, i64 360, !35, i64 368, !35, i64 384, !35, i64 400, !35, i64 416, !41, i64 432, !41, i64 436, !36, i64 440, !36, i64 448, !41, i64 456, !41, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !52, i64 616, !52, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !41, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !37, i64 966, !37, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !52, i64 988, !52, i64 992, !52, i64 996, !52, i64 1000, !52, i64 1004, !52, i64 1008, !52, i64 1012, !52, i64 1016, !52, i64 1020, !52, i64 1024, !52, i64 1028, !52, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !37, i64 1042, !37, i64 1043, !42, i64 1044, !37, i64 1046, !37, i64 1047, !52, i64 1048, !52, i64 1052, !35, i64 1056, !35, i64 1072, !35, i64 1088, !35, i64 1104, !52, i64 1120, !42, i64 1124, !42, i64 1126, !37, i64 1128, !41, i64 1144, !41, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !42, i64 1162, !37, i64 1164, !35, i64 1176, !35, i64 1192, !35, i64 1208, !35, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !42, i64 1266, !52, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !82, i64 1304, !82, i64 1312, !41, i64 1320, !41, i64 1324, !35, i64 1328, !35, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !35, i64 1400, !36, i64 1416}
!80 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!81 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!82 = !{!"long", !37, i64 0}
!83 = distinct !{!83, !48, !49}
!84 = !{!56, !42, i64 4}
!85 = !{!86, !36, i64 16}
!86 = !{!"Library", !80, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !37, i64 1160, !36, i64 2184, !36, i64 2192}
!87 = distinct !{!87, !48, !49}
!88 = !{!40, !36, i64 0}
!89 = !{!86, !36, i64 2184}
!90 = distinct !{!90, !48, !49}
!91 = distinct !{!91, !48, !49}
!92 = distinct !{!92, !48, !49}
!93 = !{!94, !36, i64 32}
!94 = !{!"Base", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !42, i64 28, !42, i64 30, !36, i64 32}
!95 = !{!40, !36, i64 72}
!96 = distinct !{!96, !48, !49}
!97 = !{!79, !36, i64 216}
!98 = distinct !{!98, !48, !49}
!99 = distinct !{!99, !48, !49}
!100 = distinct !{!100, !48, !49}
!101 = distinct !{!101, !48, !49}
!102 = !{!94, !41, i64 16}
!103 = !{!104, !41, i64 232}
!104 = !{!"Scene", !80, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !35, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !42, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !105, i64 280, !112, i64 4264, !35, i64 4296, !35, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !42, i64 4376, !42, i64 4378, !41, i64 4380, !35, i64 4384, !113, i64 4400, !114, i64 4416, !117, i64 4600, !36, i64 4608, !118, i64 4616, !36, i64 4640, !82, i64 4648, !82, i64 4656, !107, i64 4664, !108, i64 4824, !119, i64 4888, !36, i64 4952}
!105 = !{!"RenderData", !106, i64 0, !36, i64 248, !36, i64 256, !109, i64 264, !110, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !52, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !42, i64 432, !42, i64 434, !52, i64 436, !52, i64 440, !52, i64 444, !52, i64 448, !52, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !41, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !41, i64 484, !41, i64 488, !42, i64 492, !42, i64 494, !41, i64 496, !41, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !54, i64 544, !54, i64 560, !55, i64 576, !35, i64 592, !42, i64 608, !42, i64 610, !52, i64 612, !52, i64 616, !52, i64 620, !52, i64 624, !41, i64 628, !52, i64 632, !52, i64 636, !52, i64 640, !52, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !52, i64 660, !52, i64 664, !42, i64 668, !42, i64 670, !52, i64 672, !52, i64 676, !37, i64 680, !41, i64 1704, !42, i64 1708, !42, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !42, i64 2524, !42, i64 2526, !52, i64 2528, !52, i64 2532, !42, i64 2536, !42, i64 2538, !52, i64 2540, !42, i64 2544, !42, i64 2546, !41, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !52, i64 2560, !52, i64 2564, !36, i64 2568, !41, i64 2576, !52, i64 2580, !37, i64 2584, !111, i64 2616, !41, i64 3976, !41, i64 3980}
!106 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !42, i64 8, !42, i64 10, !52, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !107, i64 24, !108, i64 184}
!107 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!108 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!109 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !42, i64 48, !42, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!110 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !52, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!111 = !{!"BakeData", !106, i64 0, !37, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !52, i64 1280, !52, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!112 = !{!"AudioData", !41, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !41, i64 16, !42, i64 20, !42, i64 22, !52, i64 24, !52, i64 28}
!113 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!114 = !{!"GameData", !113, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !37, i64 34, !115, i64 40, !42, i64 64, !42, i64 66, !52, i64 68, !116, i64 72, !52, i64 128, !52, i64 132, !41, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180}
!115 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !52, i64 8, !52, i64 12, !36, i64 16}
!116 = !{!"RecastData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !41, i64 40, !52, i64 44, !52, i64 48, !42, i64 52, !42, i64 54}
!117 = !{!"UnitSettings", !52, i64 0, !37, i64 4, !37, i64 5, !42, i64 6}
!118 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!119 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!120 = distinct !{!120, !48, !49}
!121 = !{!122, !36, i64 120}
!122 = !{!"Group", !80, i64 0, !35, i64 120, !41, i64 136, !37, i64 140}
!123 = !{!124, !36, i64 16}
!124 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !37, i64 34}
!125 = distinct !{!125, !48, !49}
!126 = distinct !{!126, !48, !49}
!127 = distinct !{!127, !48, !49}
!128 = !{!104, !36, i64 168}
!129 = !{!79, !42, i64 136}
!130 = distinct !{!130, !48, !49}
!131 = !{!94, !41, i64 24}
!132 = distinct !{!132, !48, !49}
!133 = !{!134, !36, i64 0}
!134 = !{!"Editing", !36, i64 0, !35, i64 8, !35, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !41, i64 2096, !41, i64 2100, !41, i64 2104, !41, i64 2108, !54, i64 2112}
!135 = !{!136, !36, i64 168}
!136 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !42, i64 156, !42, i64 158, !41, i64 160, !41, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !52, i64 224, !52, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !35, i64 256, !36, i64 272, !36, i64 280, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !36, i64 304, !41, i64 312, !41, i64 316, !41, i64 320, !52, i64 324, !41, i64 328, !37, i64 332, !37, i64 333, !35, i64 336}
!137 = !{!138, !36, i64 32}
!138 = !{!"Strip", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !119, i64 840}
!139 = !{!136, !36, i64 8}
!140 = !{!136, !36, i64 0}
!141 = distinct !{!141, !48, !49}
!142 = distinct !{!142, !48, !49}
!143 = distinct !{!143, !48, !49}
!144 = distinct !{!144, !48, !49}
!145 = !{i32 0, i32 2}
!146 = !{!43, !36, i64 0}
!147 = !{!43, !36, i64 16}
!148 = !{!40, !42, i64 58}
!149 = !{!80, !36, i64 16}
!150 = !{!79, !36, i64 120}
!151 = !{!152, !36, i64 0}
!152 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !35, i64 24, !36, i64 40, !35, i64 48, !35, i64 64, !41, i64 80, !41, i64 84, !42, i64 88, !42, i64 90, !52, i64 92}
!153 = !{!152, !36, i64 48}
!154 = !{!152, !36, i64 24}
!155 = !{!79, !36, i64 280}
!156 = !{!79, !36, i64 232}
!157 = !{!79, !36, i64 24}
!158 = !{!79, !36, i64 296}
!159 = !{!79, !36, i64 288}
!160 = !{!161, !36, i64 160}
!161 = !{!"bArmature", !80, i64 0, !36, i64 120, !35, i64 128, !35, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !42, i64 208, !42, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!162 = !{!79, !41, i64 432}
!163 = !{!164, !36, i64 536}
!164 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !35, i64 24, !37, i64 40, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !35, i64 144, !35, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !52, i64 264, !42, i64 268, !42, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !52, i64 524, !52, i64 528, !52, i64 532, !36, i64 536}
!165 = !{!164, !36, i64 24}
!166 = distinct !{!166, !48, !49}
!167 = distinct !{!167, !48, !49}
!168 = !{!40, !36, i64 24}
!169 = !{!164, !36, i64 128}
!170 = distinct !{!170, !48, !49}
!171 = !{!172, !36, i64 64}
!172 = !{!"bPose", !35, i64 0, !36, i64 16, !42, i64 24, !42, i64 26, !41, i64 28, !41, i64 32, !52, i64 36, !37, i64 40, !37, i64 52, !35, i64 64, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 96, !81, i64 104, !37, i64 152}
!173 = distinct !{!173, !48, !49}
!174 = !{!79, !41, i64 456}
!175 = !{!79, !36, i64 440}
!176 = distinct !{!176, !48, !49}
!177 = !{!79, !36, i64 1176}
!178 = distinct !{!178, !48, !49}
!179 = !{!79, !36, i64 416}
!180 = !{!181, !41, i64 16}
!181 = !{!"ModifierData", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!182 = !{!183, !36, i64 112}
!183 = !{!"LatticeModifierData", !181, i64 0, !36, i64 112, !37, i64 120, !52, i64 184, !37, i64 188}
!184 = !{!185, !36, i64 112}
!185 = !{!"CurveModifierData", !181, i64 0, !36, i64 112, !37, i64 120, !42, i64 184, !37, i64 186}
!186 = !{!187, !36, i64 120}
!187 = !{!"ArmatureModifierData", !181, i64 0, !42, i64 112, !42, i64 114, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136}
!188 = !{!189, !36, i64 112}
!189 = !{!"HookModifierData", !181, i64 0, !36, i64 112, !37, i64 120, !37, i64 184, !37, i64 248, !52, i64 260, !36, i64 264, !41, i64 272, !52, i64 276, !37, i64 280}
!190 = !{!191, !36, i64 112}
!191 = !{!"ParticleSystemModifierData", !181, i64 0, !36, i64 112, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !42, i64 140, !42, i64 142}
!192 = !{!193, !36, i64 16}
!193 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !35, i64 72, !35, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !35, i64 152, !37, i64 168, !37, i64 232, !52, i64 296, !52, i64 300, !52, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !42, i64 340, !42, i64 342, !42, i64 344, !42, i64 346, !37, i64 348, !37, i64 540, !42, i64 564, !42, i64 566, !36, i64 568, !36, i64 576, !35, i64 584, !36, i64 600, !36, i64 608, !41, i64 616, !41, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !52, i64 648, !52, i64 652}
!194 = distinct !{!194, !48, !49}
!195 = !{!79, !36, i64 400}
!196 = distinct !{!196, !48, !49}
!197 = !{!79, !36, i64 1256}
!198 = !{!199, !36, i64 120}
!199 = !{!"Mesh", !80, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !200, i64 280, !200, i64 480, !200, i64 680, !200, i64 880, !200, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !41, i64 1344, !42, i64 1348, !42, i64 1350, !52, i64 1352, !41, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !42, i64 1366, !36, i64 1368}
!200 = !{!"CustomData", !36, i64 0, !37, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !36, i64 184, !36, i64 192}
!201 = !{!199, !36, i64 144}
!202 = !{!199, !42, i64 1366}
!203 = !{!199, !36, i64 152}
!204 = distinct !{!204, !48, !49}
!205 = !{!206, !36, i64 120}
!206 = !{!"Curve", !80, i64 0, !36, i64 120, !36, i64 128, !35, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !42, i64 244, !42, i64 246, !42, i64 248, !42, i64 250, !52, i64 252, !52, i64 256, !41, i64 260, !42, i64 264, !42, i64 266, !41, i64 268, !52, i64 272, !52, i64 276, !52, i64 280, !42, i64 284, !42, i64 286, !42, i64 288, !42, i64 290, !41, i64 292, !41, i64 296, !37, i64 300, !42, i64 304, !37, i64 306, !37, i64 307, !52, i64 308, !52, i64 312, !52, i64 316, !52, i64 320, !52, i64 324, !52, i64 328, !52, i64 332, !52, i64 336, !52, i64 340, !52, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !41, i64 488, !41, i64 492, !36, i64 496, !207, i64 504, !52, i64 512, !52, i64 516, !52, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!207 = !{!"CharInfo", !42, i64 0, !42, i64 2, !37, i64 4, !37, i64 5, !42, i64 6}
!208 = !{!206, !42, i64 266}
!209 = !{!206, !36, i64 200}
!210 = distinct !{!210, !48, !49}
!211 = !{!212, !36, i64 120}
!212 = !{!"MetaBall", !80, i64 0, !36, i64 120, !35, i64 128, !35, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !42, i64 186, !42, i64 188, !42, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !52, i64 228, !52, i64 232, !52, i64 236, !36, i64 240}
!213 = !{!212, !42, i64 186}
!214 = !{!212, !36, i64 176}
!215 = distinct !{!215, !48, !49}
!216 = !{!217, !36, i64 120}
!217 = !{!"Material", !80, i64 0, !36, i64 120, !42, i64 128, !42, i64 130, !52, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !52, i64 208, !52, i64 212, !52, i64 216, !52, i64 220, !218, i64 224, !219, i64 312, !52, i64 328, !52, i64 332, !52, i64 336, !52, i64 340, !52, i64 344, !52, i64 348, !52, i64 352, !42, i64 356, !42, i64 358, !42, i64 360, !37, i64 362, !37, i64 363, !52, i64 364, !52, i64 368, !42, i64 372, !42, i64 374, !52, i64 376, !52, i64 380, !52, i64 384, !52, i64 388, !42, i64 392, !42, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !42, i64 414, !42, i64 416, !42, i64 418, !52, i64 420, !52, i64 424, !52, i64 428, !52, i64 432, !52, i64 436, !52, i64 440, !52, i64 444, !52, i64 448, !52, i64 452, !52, i64 456, !37, i64 460, !52, i64 524, !52, i64 528, !52, i64 532, !41, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !42, i64 544, !42, i64 546, !42, i64 548, !37, i64 550, !37, i64 551, !42, i64 552, !42, i64 554, !52, i64 556, !52, i64 560, !37, i64 564, !52, i64 580, !52, i64 584, !42, i64 588, !42, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !42, i64 612, !42, i64 614, !52, i64 616, !52, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !52, i64 800, !52, i64 804, !52, i64 808, !52, i64 812, !52, i64 816, !42, i64 820, !42, i64 822, !37, i64 824, !37, i64 836, !52, i64 848, !52, i64 852, !52, i64 856, !52, i64 860, !52, i64 864, !52, i64 868, !52, i64 872, !42, i64 876, !42, i64 878, !41, i64 880, !42, i64 884, !42, i64 886, !37, i64 888, !42, i64 904, !42, i64 906, !42, i64 908, !42, i64 910, !42, i64 912, !37, i64 914, !36, i64 920, !35, i64 928}
!218 = !{!"VolumeSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !52, i64 52, !52, i64 56, !52, i64 60, !42, i64 64, !42, i64 66, !42, i64 68, !42, i64 70, !52, i64 72, !52, i64 76, !52, i64 80, !52, i64 84}
!219 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!220 = !{!221, !36, i64 16}
!221 = !{!"MTex", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !52, i64 116, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !42, i64 128, !42, i64 130, !37, i64 132, !37, i64 133, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !52, i64 208, !52, i64 212, !52, i64 216, !52, i64 220, !52, i64 224, !52, i64 228, !52, i64 232, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !52, i64 252, !52, i64 256, !52, i64 260, !52, i64 264, !52, i64 268, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308}
!222 = distinct !{!222, !48, !49}
!223 = !{!224, !36, i64 120}
!224 = !{!"Tex", !80, i64 0, !36, i64 120, !52, i64 128, !52, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !52, i64 208, !52, i64 212, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !41, i64 252, !41, i64 256, !42, i64 260, !42, i64 262, !42, i64 264, !42, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !225, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!225 = !{!"ImageUser", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !41, i64 36}
!226 = !{!224, !36, i64 352}
!227 = !{!228, !36, i64 120}
!228 = !{!"Camera", !80, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !42, i64 130, !52, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!229 = !{!230, !36, i64 120}
!230 = !{!"Lamp", !80, i64 0, !36, i64 120, !42, i64 128, !42, i64 130, !41, i64 132, !42, i64 136, !42, i64 138, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !36, i64 200, !42, i64 208, !42, i64 210, !52, i64 212, !52, i64 216, !52, i64 220, !52, i64 224, !52, i64 228, !52, i64 232, !52, i64 236, !42, i64 240, !42, i64 242, !42, i64 244, !42, i64 246, !37, i64 248, !37, i64 249, !42, i64 250, !42, i64 252, !42, i64 254, !42, i64 256, !42, i64 258, !52, i64 260, !52, i64 264, !52, i64 268, !52, i64 272, !42, i64 276, !42, i64 278, !42, i64 280, !42, i64 282, !42, i64 284, !42, i64 286, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308, !52, i64 312, !52, i64 316, !52, i64 320, !52, i64 324, !52, i64 328, !52, i64 332, !52, i64 336, !42, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !42, i64 496, !42, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!231 = distinct !{!231, !48, !49}
!232 = !{!233, !36, i64 120}
!233 = !{!"Speaker", !80, i64 0, !36, i64 120, !36, i64 128, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !42, i64 176, !37, i64 178}
!234 = !{!235, !36, i64 120}
!235 = !{!"World", !80, i64 0, !36, i64 120, !42, i64 128, !42, i64 130, !42, i64 132, !42, i64 134, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !52, i64 216, !52, i64 220, !52, i64 224, !52, i64 228, !52, i64 232, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !52, i64 252, !52, i64 256, !52, i64 260, !42, i64 264, !42, i64 266, !42, i64 268, !42, i64 270, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !42, i64 288, !42, i64 290, !42, i64 292, !42, i64 294, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308, !52, i64 312, !52, i64 316, !52, i64 320, !42, i64 324, !42, i64 326, !42, i64 328, !42, i64 330, !42, i64 332, !42, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !42, i64 504, !42, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!236 = distinct !{!236, !48, !49}
!237 = !{!238, !36, i64 120}
!238 = !{!"Key", !80, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !41, i64 168, !41, i64 172, !35, i64 176, !36, i64 192, !36, i64 200, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !52, i64 216, !41, i64 220}
!239 = !{!41, !41, i64 0}
!240 = !{!161, !36, i64 120}
!241 = !{!242, !36, i64 32}
!242 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !52, i64 104, !37, i64 108, !37, i64 120, !41, i64 132, !41, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !42, i64 180}
!243 = !{!242, !36, i64 0}
!244 = distinct !{!244, !48, !49}
!245 = !{!242, !36, i64 24}
!246 = distinct !{!246, !48, !49}
!247 = distinct !{!247, !48, !49}
!248 = !{!249, !36, i64 120}
!249 = !{!"FreestyleLineStyle", !80, i64 0, !36, i64 120, !52, i64 128, !52, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !41, i64 148, !52, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !52, i64 184, !52, i64 188, !41, i64 192, !42, i64 196, !42, i64 198, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !41, i64 208, !41, i64 212, !52, i64 216, !42, i64 220, !42, i64 222, !42, i64 224, !37, i64 226, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !42, i64 240, !42, i64 242, !41, i64 244, !37, i64 248, !36, i64 392, !35, i64 400, !35, i64 416, !35, i64 432, !35, i64 448}
!250 = distinct !{!250, !48, !49}
!251 = !{!252, !36, i64 120}
!252 = !{!"IdAdtTemplate", !80, i64 0, !36, i64 120}
!253 = !{!254, !36, i64 24}
!254 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !35, i64 32, !36, i64 48, !36, i64 56, !41, i64 64, !52, i64 68, !42, i64 72, !42, i64 74, !41, i64 76, !36, i64 80, !41, i64 88, !37, i64 92, !52, i64 104, !52, i64 108}
!255 = !{!256, !36, i64 0}
!256 = !{!"ChannelDriver", !35, i64 0, !37, i64 16, !36, i64 272, !52, i64 280, !52, i64 284, !41, i64 288, !41, i64 292}
!257 = !{!258, !42, i64 528}
!258 = !{!"DriverVar", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !42, i64 528, !42, i64 530, !52, i64 532}
!259 = !{!260, !36, i64 0}
!260 = !{!"DriverTarget", !36, i64 0, !36, i64 8, !37, i64 16, !42, i64 48, !42, i64 50, !41, i64 52}
!261 = distinct !{!261, !48, !49}
!262 = !{!258, !36, i64 0}
!263 = distinct !{!263, !48, !49}
!264 = distinct !{!264, !48, !49}
!265 = distinct !{!265, !48, !49}
!266 = !{!267, !36, i64 32}
!267 = !{!"NlaStrip", !36, i64 0, !36, i64 8, !35, i64 16, !36, i64 32, !36, i64 40, !35, i64 48, !35, i64 64, !37, i64 80, !52, i64 144, !52, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180, !42, i64 184, !42, i64 186, !42, i64 188, !42, i64 190, !36, i64 192, !41, i64 200, !41, i64 204}
!268 = distinct !{!268, !48, !49}
!269 = !{!136, !41, i64 100}
!270 = distinct !{!270, !48, !49}
!271 = !{!43, !36, i64 8}
!272 = distinct !{!272, !48, !49}
!273 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45}
!274 = distinct !{!274, !48, !49}
!275 = distinct !{!275, !48, !49}
!276 = !{!277, !42, i64 154}
!277 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !36, i64 176}
!278 = !{!277, !42, i64 152}
!279 = !{!280, !36, i64 8}
!280 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !35, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !281, i64 152, !42, i64 184}
!281 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!282 = distinct !{!282, !48, !49}
!283 = !{!80, !36, i64 24}
!284 = !{!80, !36, i64 0}
!285 = distinct !{!285, !48, !49}
!286 = distinct !{!286, !48, !49}
!287 = distinct !{!287, !48, !49}
!288 = !{!289, !36, i64 88}
!289 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !52, i64 124, !290, i64 128}
!290 = !{!"FreestyleConfig", !35, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !35, i64 40}
!291 = !{!289, !36, i64 80}
!292 = distinct !{!292, !48, !49}
!293 = !{!104, !36, i64 120}
!294 = !{!104, !36, i64 136}
!295 = !{!35, !36, i64 8}
!296 = distinct !{!296, !48, !49}
!297 = !{!298, !36, i64 0}
!298 = !{!"tTreeSort", !36, i64 0, !36, i64 8, !36, i64 16, !42, i64 24}
!299 = !{!298, !36, i64 16}
!300 = !{!298, !42, i64 24}
!301 = !{!298, !36, i64 8}
!302 = distinct !{!302, !48, !49}
!303 = distinct !{!303, !48, !49}
!304 = distinct !{!304, !48, !49}
!305 = distinct !{!305, !48, !49}
!306 = distinct !{!306, !48, !49}
!307 = distinct !{!307, !48, !49}
