; ModuleID = 'blender/source/blender/blenkernel/intern/depsgraph.c'
source_filename = "blender/source/blender/blenkernel/intern/depsgraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.DagNodeQueue = type { ptr, ptr, i32, i32, ptr }
%struct.DagNodeQueueElem = type { ptr, ptr }
%struct.DagForest = type { %struct.ListBase, ptr, i32, i8, i32, i8 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.DagNode = type { i32, i16, float, float, float, ptr, ptr, i32, i32, i32, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i16 }
%struct.DagAdjList = type { ptr, i16, i32, i32, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleTarget = type { ptr, ptr, ptr, i32, i16, i16, float, float }
%struct.EffectorCache = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x float], [3 x float], float, [3 x float], float, i32 }
%struct.BoidSettings = type { i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.ListBase }
%struct.BoidState = type { ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, [32 x i8], i32, i32, i32, float, i32, i32, float, float }
%struct.BoidRule = type { ptr, ptr, i32, i32, [32 x i8] }
%struct.BoidRuleGoalAvoid = type { %struct.BoidRule, ptr, i32, float, i32, i32 }
%struct.BoidRuleFollowLeader = type { %struct.BoidRule, ptr, [3 x float], [3 x float], float, float, i32, i32 }
%struct.bFollowTrackConstraint = type { ptr, [64 x i8], i32, i32, [64 x i8], ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.DagSceneLayer = type { ptr, ptr, ptr, i32 }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.anon = type { ptr, i8 }
%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.bKinematicConstraint = type { ptr, i16, i16, i16, i16, [64 x i8], ptr, [64 x i8], float, float, float, [3 x float], i16, i16, float }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.anon.0 = type { ptr, i8 }

@threaded_update_lock = internal global i32 0, align 4
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"DAG queue\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"DAG queue elem3\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"DAG queue elem4\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"pushing null node\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"DAG queue elem1\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"DAG queue elem2\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"return null\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"DAG root\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"DAG node\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"dag_add_node gh\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"DAG adj list\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"** %s %i %i-%i \00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"** %25s %2.2i-%2.2i \00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"node : %s col: %i\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"-- %s \00", align 1
@EditorsUpdateIDCb = internal unnamed_addr global ptr null, align 8
@EditorsUpdateSceneCb = internal unnamed_addr global ptr null, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"%s: id=%s flag=%d\0A\00", align 1
@__func__.DAG_id_tag_update_ex = private unnamed_addr constant [21 x i8] c"DAG_id_tag_update_ex\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Parent Relation\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Pose Constraint\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"IK Constraint\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Root Bone Relation\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"cyclic %s\0A\00", align 1
@dag_print_dependencies = internal unnamed_addr global i1 false, align 4
@.str.23 = private unnamed_addr constant [31 x i8] c"\0ADEPENDENCY RELATIONS for %s\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"Object-Data Relation\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"Vertex Parent\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"Bone Parent\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"Lattice Parent\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"Curve Parent\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"Duplivert\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Proxy\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"Dupligroup\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Camera DoF\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"Metaball\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"Curve Bevel\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Curve Taper\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Object Font\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Texture On Curve\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"Particle-Object Relation\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"Particle Targets\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"Particle Object Visualization\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"Particle Group Visualization\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Particle Field\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"Boid Rule\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"Scene Relation\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"modifiers[\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"pose.bones[\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"Driver\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"data.\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"Field Collision\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"dag scene layer\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"%s depends on:\0A\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"  %s through %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"  %s depends on %s through %s.\0A\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@str = private unnamed_addr constant [9 x i8] c"\0Aordered\00", align 1
@str.59 = private unnamed_addr constant [35 x i8] c"DAG zero... not allowed to happen!\00", align 1
@str.60 = private unnamed_addr constant [27 x i8] c"Dependency cycle detected:\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @DAG_init() local_unnamed_addr #0 {
  tail call void @BLI_spin_init(ptr noundef nonnull @threaded_update_lock) #17
  ret void
}

declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DAG_exit() local_unnamed_addr #0 {
  tail call void @BLI_spin_end(ptr noundef nonnull @threaded_update_lock) #17
  ret void
}

declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @queue_create(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 32, ptr noundef nonnull @.str) #17
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 32, ptr noundef nonnull @.str) #17
  %6 = getelementptr inbounds %struct.DagNodeQueue, ptr %3, i64 0, i32 4
  store ptr %5, ptr %6, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 16, ptr noundef nonnull @.str.1) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.DagNodeQueue, ptr %9, i64 0, i32 1
  store ptr %8, ptr %10, align 8, !tbaa !41
  store ptr %8, ptr %9, align 8, !tbaa !42
  %11 = icmp sgt i32 %0, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %1, %12
  %13 = phi i32 [ %20, %12 ], [ 1, %1 ]
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %15 = tail call ptr %14(i64 noundef 16, ptr noundef nonnull @.str.2) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %16 = load ptr, ptr %6, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.DagNodeQueue, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %18, i64 0, i32 1
  store ptr %15, ptr %19, align 8, !tbaa !43
  store ptr %15, ptr %17, align 8, !tbaa !41
  %20 = add nuw nsw i32 %13, 1
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %22, label %12, !llvm.loop !45

22:                                               ; preds = %12, %1
  %23 = load ptr, ptr %6, align 8, !tbaa !38
  %24 = getelementptr inbounds %struct.DagNodeQueue, ptr %23, i64 0, i32 2
  store i32 %0, ptr %24, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @queue_raz(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.DagNodeQueue, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %6, i64 0, i32 1
  br label %11

10:                                               ; preds = %1
  store ptr %2, ptr %5, align 8, !tbaa !41
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi ptr [ %4, %10 ], [ %9, %8 ]
  store ptr %2, ptr %12, align 8, !tbaa !34
  store ptr null, ptr %2, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.DagNodeQueue, ptr %4, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !48
  %15 = add nsw i32 %14, 1
  %16 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %11, %19
  %20 = phi ptr [ %24, %19 ], [ %17, %11 ]
  %21 = phi i32 [ %22, %19 ], [ %15, %11 ]
  store ptr null, ptr %20, align 8, !tbaa !49
  %22 = add nsw i32 %21, 1
  %23 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %19, !llvm.loop !50

26:                                               ; preds = %19, %11
  %27 = phi i32 [ %15, %11 ], [ %22, %19 ]
  %28 = phi ptr [ %2, %11 ], [ %20, %19 ]
  store i32 %27, ptr %13, align 8, !tbaa !48
  store ptr %28, ptr %5, align 8, !tbaa !41
  %29 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 2
  store i32 0, ptr %29, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @queue_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef nonnull %5) #17
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %4, !llvm.loop !51

10:                                               ; preds = %4, %1
  %11 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %16) #17
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %15, !llvm.loop !52

21:                                               ; preds = %15, %10
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %23 = load ptr, ptr %11, align 8, !tbaa !38
  tail call void %22(ptr noundef %23) #17
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %24(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @push_queue(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 18, i64 1, ptr %5) #18
  br label %60

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  store ptr %14, ptr %9, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.DagNodeQueue, ptr %9, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %19

19:                                               ; preds = %18, %12
  %20 = getelementptr inbounds %struct.DagNodeQueue, ptr %9, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !48
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 8, !tbaa !48
  br label %44

23:                                               ; preds = %7
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %25 = tail call ptr %24(i64 noundef 16, ptr noundef nonnull @.str.4) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %26 = load ptr, ptr %8, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.DagNodeQueue, ptr %26, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !41
  store ptr %25, ptr %26, align 8, !tbaa !42
  br label %28

28:                                               ; preds = %23, %28
  %29 = phi i32 [ 1, %23 ], [ %36, %28 ]
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %31 = tail call ptr %30(i64 noundef 16, ptr noundef nonnull @.str.5) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %32 = load ptr, ptr %8, align 8, !tbaa !38
  %33 = getelementptr inbounds %struct.DagNodeQueue, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %34, i64 0, i32 1
  store ptr %31, ptr %35, align 8, !tbaa !43
  store ptr %31, ptr %33, align 8, !tbaa !41
  %36 = add nuw nsw i32 %29, 1
  %37 = icmp eq i32 %36, 50
  br i1 %37, label %38, label %28, !llvm.loop !53

38:                                               ; preds = %28
  %39 = load ptr, ptr %8, align 8, !tbaa !38
  %40 = getelementptr inbounds %struct.DagNodeQueue, ptr %39, i64 0, i32 2
  store i32 50, ptr %40, align 8, !tbaa !48
  %41 = load ptr, ptr %39, align 8, !tbaa !42
  %42 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  store ptr %43, ptr %39, align 8, !tbaa !42
  br label %44

44:                                               ; preds = %38, %19
  %45 = phi ptr [ %10, %19 ], [ %41, %38 ]
  %46 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %45, i64 0, i32 1
  store ptr null, ptr %46, align 8, !tbaa !43
  store ptr %1, ptr %45, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !41
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %48, i64 0, i32 1
  store ptr %45, ptr %51, align 8, !tbaa !43
  br label %52

52:                                               ; preds = %50, %44
  store ptr %45, ptr %47, align 8, !tbaa !41
  %53 = load ptr, ptr %0, align 8, !tbaa !42
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store ptr %45, ptr %0, align 8, !tbaa !42
  br label %56

56:                                               ; preds = %55, %52
  %57 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !48
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %57, align 8, !tbaa !48
  br label %60

60:                                               ; preds = %56, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @push_stack(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  store ptr %9, ptr %4, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.DagNodeQueue, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.DagNodeQueue, ptr %4, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !48
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 8, !tbaa !48
  br label %39

18:                                               ; preds = %2
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %20 = tail call ptr %19(i64 noundef 16, ptr noundef nonnull @.str.4) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %21 = load ptr, ptr %3, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.DagNodeQueue, ptr %21, i64 0, i32 1
  store ptr %20, ptr %22, align 8, !tbaa !41
  store ptr %20, ptr %21, align 8, !tbaa !42
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i32 [ 1, %18 ], [ %31, %23 ]
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %26 = tail call ptr %25(i64 noundef 16, ptr noundef nonnull @.str.5) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %27 = load ptr, ptr %3, align 8, !tbaa !38
  %28 = getelementptr inbounds %struct.DagNodeQueue, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %29, i64 0, i32 1
  store ptr %26, ptr %30, align 8, !tbaa !43
  store ptr %26, ptr %28, align 8, !tbaa !41
  %31 = add nuw nsw i32 %24, 1
  %32 = icmp eq i32 %31, 50
  br i1 %32, label %33, label %23, !llvm.loop !54

33:                                               ; preds = %23
  %34 = load ptr, ptr %3, align 8, !tbaa !38
  %35 = getelementptr inbounds %struct.DagNodeQueue, ptr %34, i64 0, i32 2
  store i32 50, ptr %35, align 8, !tbaa !48
  %36 = load ptr, ptr %34, align 8, !tbaa !42
  %37 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  store ptr %38, ptr %34, align 8, !tbaa !42
  br label %39

39:                                               ; preds = %33, %14
  %40 = phi ptr [ %5, %14 ], [ %36, %33 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !42
  %42 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %40, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !43
  store ptr %1, ptr %40, align 8, !tbaa !49
  store ptr %40, ptr %0, align 8, !tbaa !42
  %43 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store ptr %40, ptr %43, align 8, !tbaa !41
  br label %47

47:                                               ; preds = %46, %39
  %48 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !48
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %48, align 8, !tbaa !48
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @pop_queue(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  store ptr %6, ptr %0, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !48
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %12, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.DagNodeQueue, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %18, i64 0, i32 1
  store ptr %2, ptr %21, align 8, !tbaa !43
  br label %22

22:                                               ; preds = %20, %11
  store ptr %2, ptr %17, align 8, !tbaa !41
  %23 = load ptr, ptr %16, align 8, !tbaa !42
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store ptr %2, ptr %16, align 8, !tbaa !42
  br label %26

26:                                               ; preds = %25, %22
  %27 = load ptr, ptr %2, align 8, !tbaa !49
  %28 = getelementptr inbounds %struct.DagNodeQueue, ptr %16, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %29 = load i32, ptr %28, align 8, !tbaa !48
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !48
  br label %34

31:                                               ; preds = %1
  %32 = load ptr, ptr @stderr, align 8, !tbaa !34
  %33 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 12, i64 1, ptr %32) #18
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi ptr [ %27, %26 ], [ null, %31 ]
  ret ptr %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_top_node_queue(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @dag_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 40, ptr noundef nonnull @.str.7) #17
  %3 = getelementptr inbounds %struct.DagForest, ptr %2, i64 0, i32 5
  store i8 1, ptr %3, align 4, !tbaa !55
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @build_dag(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 31
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !81
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %7, %31
  %11 = phi ptr [ %33, %31 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.DagNode, ptr %11, i64 0, i32 16
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.DagAdjList, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !84
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %16) #17
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %15, !llvm.loop !86

21:                                               ; preds = %15, %10
  %22 = getelementptr inbounds %struct.DagNode, ptr %11, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %28, %25 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.DagAdjList, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %29(ptr noundef nonnull %26) #17
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %25, !llvm.loop !88

31:                                               ; preds = %25, %21
  %32 = getelementptr inbounds %struct.DagNode, ptr %11, i64 0, i32 18
  %33 = load ptr, ptr %32, align 8, !tbaa !89
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %34(ptr noundef nonnull %11) #17
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %10, !llvm.loop !90

36:                                               ; preds = %31, %7
  %37 = getelementptr inbounds %struct.DagForest, ptr %5, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  tail call void @BLI_ghash_free(ptr noundef %38, ptr noundef null, ptr noundef null) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  br label %43

39:                                               ; preds = %3
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %41 = tail call ptr %40(i64 noundef 40, ptr noundef nonnull @.str.7) #17
  %42 = getelementptr inbounds %struct.DagForest, ptr %41, i64 0, i32 5
  store i8 1, ptr %42, align 4, !tbaa !55
  store ptr %41, ptr %4, align 8, !tbaa !58
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi ptr [ %5, %36 ], [ %41, %39 ]
  tail call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 16717, i8 noundef zeroext 0) #17
  tail call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 16716, i8 noundef zeroext 0) #17
  tail call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 21063, i8 noundef zeroext 0) #17
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %46 = tail call ptr %45(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %76, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.DagNode, ptr %46, i64 0, i32 5
  store ptr %1, ptr %49, align 8, !tbaa !92
  store i32 0, ptr %46, align 8, !tbaa !93
  %50 = getelementptr inbounds %struct.DagForest, ptr %44, i64 0, i32 5
  %51 = load i8, ptr %50, align 4, !tbaa !55
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %55 = load i16, ptr %54, align 8, !tbaa !94
  %56 = getelementptr inbounds %struct.DagNode, ptr %46, i64 0, i32 1
  store i16 %55, ptr %56, align 4, !tbaa !95
  br label %57

57:                                               ; preds = %53, %48
  %58 = getelementptr inbounds %struct.DagForest, ptr %44, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !96
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct.ListBase, ptr %44, i64 0, i32 1
  br i1 %60, label %66, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %61, align 8, !tbaa !97
  %64 = getelementptr inbounds %struct.DagNode, ptr %63, i64 0, i32 18
  store ptr %46, ptr %64, align 8, !tbaa !89
  store ptr %46, ptr %61, align 8, !tbaa !97
  %65 = add nsw i32 %59, 1
  br label %67

66:                                               ; preds = %57
  store ptr %46, ptr %61, align 8, !tbaa !97
  store ptr %46, ptr %44, align 8, !tbaa !81
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ 1, %66 ], [ %65, %62 ]
  store i32 %68, ptr %58, align 8, !tbaa !96
  %69 = getelementptr inbounds %struct.DagForest, ptr %44, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !91
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %73, ptr %69, align 8, !tbaa !91
  br label %74

74:                                               ; preds = %72, %67
  %75 = load ptr, ptr %69, align 8, !tbaa !91
  tail call void @BLI_ghash_insert(ptr noundef %75, ptr noundef %1, ptr noundef nonnull %46) #17
  br label %76

76:                                               ; preds = %43, %74
  %77 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %98, label %80

80:                                               ; preds = %76
  %81 = sext i16 %2 to i32
  br label %82

82:                                               ; preds = %80, %95
  %83 = phi ptr [ %78, %80 ], [ %96, %95 ]
  %84 = getelementptr inbounds %struct.Base, ptr %83, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !98
  tail call fastcc void @build_dag_object(ptr noundef %44, ptr noundef %46, ptr noundef %1, ptr noundef %85, i32 noundef %81)
  %86 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 11
  %87 = load ptr, ptr %86, align 8, !tbaa !100
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  tail call fastcc void @build_dag_object(ptr noundef %44, ptr noundef %46, ptr noundef %1, ptr noundef nonnull %87, i32 noundef %81)
  br label %90

90:                                               ; preds = %89, %82
  %91 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 112
  %92 = load ptr, ptr %91, align 8, !tbaa !103
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call fastcc void @build_dag_group(ptr noundef %44, ptr noundef %46, ptr noundef %1, ptr noundef nonnull %92, i16 noundef signext %2)
  br label %95

95:                                               ; preds = %90, %94
  %96 = load ptr, ptr %83, align 8, !tbaa !34
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %82, !llvm.loop !104

98:                                               ; preds = %95, %76
  tail call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 21063, i8 noundef zeroext 0) #17
  %99 = load ptr, ptr %4, align 8, !tbaa !58
  %100 = load ptr, ptr %99, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %136, %98
  %103 = load ptr, ptr %99, align 8, !tbaa !34
  %104 = icmp eq ptr %103, null
  br i1 %104, label %169, label %140

105:                                              ; preds = %98, %136
  %106 = phi ptr [ %138, %136 ], [ %100, %98 ]
  %107 = getelementptr inbounds %struct.DagNode, ptr %106, i64 0, i32 1
  %108 = load i16, ptr %107, align 4, !tbaa !95
  %109 = icmp eq i16 %108, 16975
  br i1 %109, label %110, label %136

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.DagNode, ptr %106, i64 0, i32 16
  %112 = load ptr, ptr %111, align 8, !tbaa !34
  %113 = icmp eq ptr %112, null
  br i1 %113, label %130, label %114

114:                                              ; preds = %110, %126
  %115 = phi ptr [ %128, %126 ], [ %112, %110 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !105
  %117 = getelementptr inbounds %struct.DagNode, ptr %116, i64 0, i32 1
  %118 = load i16, ptr %117, align 4, !tbaa !95
  %119 = icmp eq i16 %118, 16975
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.DagAdjList, ptr %115, i64 0, i32 1
  %122 = load i16, ptr %121, align 8, !tbaa !106
  %123 = sext i16 %122 to i32
  %124 = load i32, ptr %116, align 8, !tbaa !93
  %125 = or i32 %124, %123
  store i32 %125, ptr %116, align 8, !tbaa !93
  br label %126

126:                                              ; preds = %114, %120
  %127 = getelementptr inbounds %struct.DagAdjList, ptr %115, i64 0, i32 5
  %128 = load ptr, ptr %127, align 8, !tbaa !34
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %114, !llvm.loop !107

130:                                              ; preds = %126, %110
  %131 = getelementptr inbounds %struct.DagNode, ptr %106, i64 0, i32 10
  %132 = load i64, ptr %131, align 8, !tbaa !108
  %133 = getelementptr inbounds %struct.DagNode, ptr %106, i64 0, i32 5
  %134 = load ptr, ptr %133, align 8, !tbaa !92
  %135 = getelementptr inbounds %struct.Object, ptr %134, i64 0, i32 122
  store i64 %132, ptr %135, align 8, !tbaa !109
  br label %136

136:                                              ; preds = %105, %130
  %137 = getelementptr inbounds %struct.DagNode, ptr %106, i64 0, i32 18
  %138 = load ptr, ptr %137, align 8, !tbaa !34
  %139 = icmp eq ptr %138, null
  br i1 %139, label %102, label %105, !llvm.loop !110

140:                                              ; preds = %102, %165
  %141 = phi ptr [ %167, %165 ], [ %103, %102 ]
  %142 = getelementptr inbounds %struct.DagNode, ptr %141, i64 0, i32 1
  %143 = load i16, ptr %142, align 4, !tbaa !95
  %144 = icmp eq i16 %143, 16975
  br i1 %144, label %145, label %165

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.DagNode, ptr %141, i64 0, i32 16
  %147 = load ptr, ptr %146, align 8, !tbaa !34
  %148 = icmp eq ptr %147, null
  br i1 %148, label %165, label %149

149:                                              ; preds = %145, %161
  %150 = phi ptr [ %163, %161 ], [ %147, %145 ]
  %151 = load ptr, ptr %150, align 8, !tbaa !105
  %152 = getelementptr inbounds %struct.DagNode, ptr %151, i64 0, i32 1
  %153 = load i16, ptr %152, align 4, !tbaa !95
  %154 = icmp eq i16 %153, 16975
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load i32, ptr %151, align 8, !tbaa !93
  %157 = getelementptr inbounds %struct.DagAdjList, ptr %150, i64 0, i32 1
  %158 = load i16, ptr %157, align 8, !tbaa !106
  %159 = trunc i32 %156 to i16
  %160 = or i16 %158, %159
  store i16 %160, ptr %157, align 8, !tbaa !106
  br label %161

161:                                              ; preds = %149, %155
  %162 = getelementptr inbounds %struct.DagAdjList, ptr %150, i64 0, i32 5
  %163 = load ptr, ptr %162, align 8, !tbaa !34
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %149, !llvm.loop !111

165:                                              ; preds = %161, %145, %140
  %166 = getelementptr inbounds %struct.DagNode, ptr %141, i64 0, i32 18
  %167 = load ptr, ptr %166, align 8, !tbaa !34
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %140, !llvm.loop !112

169:                                              ; preds = %165, %102
  ret ptr %44
}

; Function Attrs: nounwind uwtable
define dso_local void @free_forest(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1, %25
  %5 = phi ptr [ %27, %25 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %4 ]
  %11 = getelementptr inbounds %struct.DagAdjList, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !84
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %10) #17
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %9, !llvm.loop !86

15:                                               ; preds = %9, %4
  %16 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %22, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.DagAdjList, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef nonnull %20) #17
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %19, !llvm.loop !88

25:                                               ; preds = %19, %15
  %26 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !89
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %5) #17
  %29 = icmp eq ptr %27, null
  br i1 %29, label %30, label %4, !llvm.loop !90

30:                                               ; preds = %25, %1
  %31 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  tail call void @BLI_ghash_free(ptr noundef %32, ptr noundef null, ptr noundef null) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  ret void
}

declare void @BKE_main_id_tag_idcode(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @dag_add_node(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DagNode, ptr %4, i64 0, i32 5
  store ptr %1, ptr %7, align 8, !tbaa !92
  store i32 0, ptr %4, align 8, !tbaa !93
  %8 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 4, !tbaa !55
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.DagNode, ptr %4, i64 0, i32 1
  store i16 %13, ptr %14, align 4, !tbaa !95
  br label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !96
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %18, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %19, align 8, !tbaa !97
  %22 = getelementptr inbounds %struct.DagNode, ptr %21, i64 0, i32 18
  store ptr %4, ptr %22, align 8, !tbaa !89
  store ptr %4, ptr %19, align 8, !tbaa !97
  %23 = add nsw i32 %17, 1
  br label %25

24:                                               ; preds = %15
  store ptr %4, ptr %19, align 8, !tbaa !97
  store ptr %4, ptr %0, align 8, !tbaa !81
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ 1, %24 ], [ %23, %20 ]
  store i32 %26, ptr %16, align 8, !tbaa !96
  %27 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %31, ptr %27, align 8, !tbaa !91
  br label %32

32:                                               ; preds = %30, %25
  %33 = load ptr, ptr %27, align 8, !tbaa !91
  tail call void @BLI_ghash_insert(ptr noundef %33, ptr noundef %1, ptr noundef nonnull %4) #17
  br label %34

34:                                               ; preds = %32, %2
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_dag_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %10, ptr noundef %3) #17
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi ptr [ %13, %12 ], [ null, %5 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %19 = tail call ptr %18(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %48, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.DagNode, ptr %19, i64 0, i32 5
  store ptr %3, ptr %22, align 8, !tbaa !92
  store i32 0, ptr %19, align 8, !tbaa !93
  %23 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %24 = load i8, ptr %23, align 4, !tbaa !55
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %28 = load i16, ptr %27, align 8, !tbaa !94
  %29 = getelementptr inbounds %struct.DagNode, ptr %19, i64 0, i32 1
  store i16 %28, ptr %29, align 4, !tbaa !95
  br label %30

30:                                               ; preds = %26, %21
  %31 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !96
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %33, label %39, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %34, align 8, !tbaa !97
  %37 = getelementptr inbounds %struct.DagNode, ptr %36, i64 0, i32 18
  store ptr %19, ptr %37, align 8, !tbaa !89
  store ptr %19, ptr %34, align 8, !tbaa !97
  %38 = add nsw i32 %32, 1
  br label %40

39:                                               ; preds = %30
  store ptr %19, ptr %34, align 8, !tbaa !97
  store ptr %19, ptr %0, align 8, !tbaa !81
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ 1, %39 ], [ %38, %35 ]
  store i32 %41, ptr %31, align 8, !tbaa !96
  %42 = load ptr, ptr %9, align 8, !tbaa !91
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %45, ptr %9, align 8, !tbaa !91
  br label %46

46:                                               ; preds = %44, %40
  %47 = load ptr, ptr %9, align 8, !tbaa !91
  tail call void @BLI_ghash_insert(ptr noundef %47, ptr noundef %3, ptr noundef nonnull %19) #17
  br label %48

48:                                               ; preds = %46, %17, %14
  %49 = phi ptr [ %15, %14 ], [ %19, %17 ], [ %19, %46 ]
  %50 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !113
  %52 = icmp eq ptr %51, null
  %53 = and i32 %4, 2
  %54 = icmp eq i32 %53, 0
  %55 = or i1 %54, %52
  br i1 %55, label %155, label %56

56:                                               ; preds = %48
  %57 = load ptr, ptr %9, align 8, !tbaa !91
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %57, ptr noundef %51) #17
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi ptr [ %60, %59 ], [ null, %56 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %95

64:                                               ; preds = %61
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %66 = tail call ptr %65(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %67 = icmp eq ptr %66, null
  br i1 %67, label %95, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.DagNode, ptr %66, i64 0, i32 5
  store ptr %51, ptr %69, align 8, !tbaa !92
  store i32 0, ptr %66, align 8, !tbaa !93
  %70 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %71 = load i8, ptr %70, align 4, !tbaa !55
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.ID, ptr %51, i64 0, i32 4
  %75 = load i16, ptr %74, align 8, !tbaa !94
  %76 = getelementptr inbounds %struct.DagNode, ptr %66, i64 0, i32 1
  store i16 %75, ptr %76, align 4, !tbaa !95
  br label %77

77:                                               ; preds = %73, %68
  %78 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !96
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %80, label %86, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %81, align 8, !tbaa !97
  %84 = getelementptr inbounds %struct.DagNode, ptr %83, i64 0, i32 18
  store ptr %66, ptr %84, align 8, !tbaa !89
  store ptr %66, ptr %81, align 8, !tbaa !97
  %85 = add nsw i32 %79, 1
  br label %87

86:                                               ; preds = %77
  store ptr %66, ptr %81, align 8, !tbaa !97
  store ptr %66, ptr %0, align 8, !tbaa !81
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i32 [ 1, %86 ], [ %85, %82 ]
  store i32 %88, ptr %78, align 8, !tbaa !96
  %89 = load ptr, ptr %9, align 8, !tbaa !91
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %92, ptr %9, align 8, !tbaa !91
  br label %93

93:                                               ; preds = %91, %87
  %94 = load ptr, ptr %9, align 8, !tbaa !91
  tail call void @BLI_ghash_insert(ptr noundef %94, ptr noundef %51, ptr noundef nonnull %66) #17
  br label %95

95:                                               ; preds = %93, %64, %61
  %96 = phi ptr [ %62, %61 ], [ %66, %64 ], [ %66, %93 ]
  %97 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 16
  %98 = load ptr, ptr %97, align 8, !tbaa !82
  %99 = getelementptr inbounds %struct.DagNode, ptr %96, i64 0, i32 17
  %100 = load ptr, ptr %99, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %117, label %102

102:                                              ; preds = %95, %113
  %103 = phi ptr [ %115, %113 ], [ %100, %95 ]
  %104 = load ptr, ptr %103, align 8, !tbaa !105
  %105 = icmp eq ptr %104, %49
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.DagAdjList, ptr %103, i64 0, i32 1
  %108 = load i16, ptr %107, align 8, !tbaa !106
  %109 = or i16 %108, 2
  store i16 %109, ptr %107, align 8, !tbaa !106
  %110 = getelementptr inbounds %struct.DagAdjList, ptr %103, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !114
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %110, align 4, !tbaa !114
  br label %125

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.DagAdjList, ptr %103, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !34
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %102, !llvm.loop !115

117:                                              ; preds = %113, %95
  %118 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %119 = tail call ptr %118(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %119, align 8, !tbaa !105
  %120 = getelementptr inbounds %struct.DagAdjList, ptr %119, i64 0, i32 1
  store i16 2, ptr %120, align 8, !tbaa !106
  %121 = getelementptr inbounds %struct.DagAdjList, ptr %119, i64 0, i32 2
  store i32 1, ptr %121, align 4, !tbaa !114
  %122 = load ptr, ptr %99, align 8, !tbaa !87
  %123 = getelementptr inbounds %struct.DagAdjList, ptr %119, i64 0, i32 5
  store ptr %122, ptr %123, align 8, !tbaa !84
  %124 = getelementptr inbounds %struct.DagAdjList, ptr %119, i64 0, i32 4
  store ptr @.str.24, ptr %124, align 8, !tbaa !116
  store ptr %119, ptr %99, align 8, !tbaa !87
  br label %125

125:                                              ; preds = %117, %106
  %126 = icmp eq ptr %98, null
  br i1 %126, label %142, label %127

127:                                              ; preds = %125, %138
  %128 = phi ptr [ %140, %138 ], [ %98, %125 ]
  %129 = load ptr, ptr %128, align 8, !tbaa !105
  %130 = icmp eq ptr %129, %96
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.DagAdjList, ptr %128, i64 0, i32 1
  %133 = load i16, ptr %132, align 8, !tbaa !106
  %134 = or i16 %133, 2
  store i16 %134, ptr %132, align 8, !tbaa !106
  %135 = getelementptr inbounds %struct.DagAdjList, ptr %128, i64 0, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !114
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %135, align 4, !tbaa !114
  br label %150

138:                                              ; preds = %127
  %139 = getelementptr inbounds %struct.DagAdjList, ptr %128, i64 0, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !84
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %127, !llvm.loop !117

142:                                              ; preds = %138, %125
  %143 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %144 = tail call ptr %143(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %96, ptr %144, align 8, !tbaa !105
  %145 = getelementptr inbounds %struct.DagAdjList, ptr %144, i64 0, i32 1
  store i16 2, ptr %145, align 8, !tbaa !106
  %146 = getelementptr inbounds %struct.DagAdjList, ptr %144, i64 0, i32 2
  store i32 1, ptr %146, align 4, !tbaa !114
  %147 = load ptr, ptr %97, align 8, !tbaa !82
  %148 = getelementptr inbounds %struct.DagAdjList, ptr %144, i64 0, i32 5
  store ptr %147, ptr %148, align 8, !tbaa !84
  %149 = getelementptr inbounds %struct.DagAdjList, ptr %144, i64 0, i32 4
  store ptr @.str.24, ptr %149, align 8, !tbaa !116
  store ptr %144, ptr %97, align 8, !tbaa !82
  br label %150

150:                                              ; preds = %131, %142
  %151 = getelementptr inbounds %struct.DagNode, ptr %96, i64 0, i32 6
  store ptr %3, ptr %151, align 8, !tbaa !118
  %152 = getelementptr inbounds %struct.DagNode, ptr %96, i64 0, i32 7
  %153 = load i32, ptr %152, align 8, !tbaa !119
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %152, align 8, !tbaa !119
  br label %155

155:                                              ; preds = %150, %48
  %156 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 10
  store i64 0, ptr %156, align 8, !tbaa !108
  %157 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %158 = load i16, ptr %157, align 8, !tbaa !120
  %159 = icmp eq i16 %158, 25
  br i1 %159, label %160, label %429

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %162 = load ptr, ptr %161, align 8, !tbaa !121
  %163 = icmp eq ptr %162, null
  br i1 %163, label %429, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %162, align 8, !tbaa !34
  %166 = icmp eq ptr %165, null
  br i1 %166, label %429, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %169 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %170 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %171 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %172 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %173 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %174 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  br label %178

175:                                              ; preds = %426, %178
  %176 = load ptr, ptr %179, align 8, !tbaa !34
  %177 = icmp eq ptr %176, null
  br i1 %177, label %429, label %178, !llvm.loop !122

178:                                              ; preds = %167, %175
  %179 = phi ptr [ %165, %167 ], [ %176, %175 ]
  %180 = getelementptr inbounds %struct.bPoseChannel, ptr %179, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !34
  %182 = icmp eq ptr %181, null
  br i1 %182, label %175, label %183

183:                                              ; preds = %178, %426
  %184 = phi ptr [ %427, %426 ], [ %181, %178 ]
  %185 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %184) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %186 = icmp eq ptr %185, null
  br i1 %186, label %426, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %185, i64 0, i32 8
  %189 = load ptr, ptr %188, align 8, !tbaa !123
  %190 = icmp eq ptr %189, null
  br i1 %190, label %426, label %191

191:                                              ; preds = %187
  %192 = call i32 %189(ptr noundef nonnull %184, ptr noundef nonnull %6) #17
  %193 = load ptr, ptr %6, align 8, !tbaa !34
  %194 = icmp eq ptr %193, null
  br i1 %194, label %421, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %185, i64 0, i32 2
  %197 = getelementptr inbounds %struct.bConstraint, ptr %184, i64 0, i32 3
  %198 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %185, i64 0, i32 2
  %199 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %185, i64 0, i32 2
  br label %200

200:                                              ; preds = %195, %418
  %201 = phi ptr [ %193, %195 ], [ %419, %418 ]
  %202 = getelementptr inbounds %struct.bConstraintTarget, ptr %201, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !125
  %204 = icmp eq ptr %203, null
  %205 = icmp eq ptr %203, %3
  %206 = or i1 %204, %205
  br i1 %206, label %418, label %207

207:                                              ; preds = %200
  %208 = load ptr, ptr %9, align 8, !tbaa !91
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %207
  %211 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %208, ptr noundef %203) #17
  br label %212

212:                                              ; preds = %210, %207
  %213 = phi ptr [ %211, %210 ], [ null, %207 ]
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %243

215:                                              ; preds = %212
  %216 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %217 = call ptr %216(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %218 = icmp eq ptr %217, null
  br i1 %218, label %243, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.DagNode, ptr %217, i64 0, i32 5
  store ptr %203, ptr %220, align 8, !tbaa !92
  store i32 0, ptr %217, align 8, !tbaa !93
  %221 = load i8, ptr %168, align 4, !tbaa !55
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.ID, ptr %203, i64 0, i32 4
  %225 = load i16, ptr %224, align 8, !tbaa !94
  %226 = getelementptr inbounds %struct.DagNode, ptr %217, i64 0, i32 1
  store i16 %225, ptr %226, align 4, !tbaa !95
  br label %227

227:                                              ; preds = %223, %219
  %228 = load i32, ptr %169, align 8, !tbaa !96
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %227
  %231 = load ptr, ptr %170, align 8, !tbaa !97
  %232 = getelementptr inbounds %struct.DagNode, ptr %231, i64 0, i32 18
  store ptr %217, ptr %232, align 8, !tbaa !89
  store ptr %217, ptr %170, align 8, !tbaa !97
  %233 = add nsw i32 %228, 1
  br label %235

234:                                              ; preds = %227
  store ptr %217, ptr %171, align 8, !tbaa !97
  store ptr %217, ptr %0, align 8, !tbaa !81
  br label %235

235:                                              ; preds = %234, %230
  %236 = phi i32 [ 1, %234 ], [ %233, %230 ]
  store i32 %236, ptr %169, align 8, !tbaa !96
  %237 = load ptr, ptr %9, align 8, !tbaa !91
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %240, ptr %9, align 8, !tbaa !91
  br label %241

241:                                              ; preds = %239, %235
  %242 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %242, ptr noundef %203, ptr noundef nonnull %217) #17
  br label %243

243:                                              ; preds = %241, %215, %212
  %244 = phi ptr [ %213, %212 ], [ %217, %215 ], [ %217, %241 ]
  %245 = getelementptr inbounds %struct.bConstraintTarget, ptr %201, i64 0, i32 3
  %246 = load i8, ptr %245, align 8, !tbaa !127
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %310, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.DagNode, ptr %244, i64 0, i32 16
  %250 = load ptr, ptr %249, align 8, !tbaa !82
  %251 = load ptr, ptr %172, align 8, !tbaa !34
  %252 = icmp eq ptr %251, null
  br i1 %252, label %268, label %253

253:                                              ; preds = %248, %264
  %254 = phi ptr [ %266, %264 ], [ %251, %248 ]
  %255 = load ptr, ptr %254, align 8, !tbaa !105
  %256 = icmp eq ptr %255, %244
  br i1 %256, label %257, label %264

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.DagAdjList, ptr %254, i64 0, i32 1
  %259 = load i16, ptr %258, align 8, !tbaa !106
  %260 = or i16 %259, 40
  store i16 %260, ptr %258, align 8, !tbaa !106
  %261 = getelementptr inbounds %struct.DagAdjList, ptr %254, i64 0, i32 2
  %262 = load i32, ptr %261, align 4, !tbaa !114
  %263 = add nsw i32 %262, 1
  store i32 %263, ptr %261, align 4, !tbaa !114
  br label %276

264:                                              ; preds = %253
  %265 = getelementptr inbounds %struct.DagAdjList, ptr %254, i64 0, i32 5
  %266 = load ptr, ptr %265, align 8, !tbaa !34
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %253, !llvm.loop !115

268:                                              ; preds = %264, %248
  %269 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %270 = call ptr %269(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %244, ptr %270, align 8, !tbaa !105
  %271 = getelementptr inbounds %struct.DagAdjList, ptr %270, i64 0, i32 1
  store i16 40, ptr %271, align 8, !tbaa !106
  %272 = getelementptr inbounds %struct.DagAdjList, ptr %270, i64 0, i32 2
  store i32 1, ptr %272, align 4, !tbaa !114
  %273 = load ptr, ptr %172, align 8, !tbaa !87
  %274 = getelementptr inbounds %struct.DagAdjList, ptr %270, i64 0, i32 5
  store ptr %273, ptr %274, align 8, !tbaa !84
  %275 = getelementptr inbounds %struct.DagAdjList, ptr %270, i64 0, i32 4
  store ptr %196, ptr %275, align 8, !tbaa !116
  store ptr %270, ptr %172, align 8, !tbaa !87
  br label %276

276:                                              ; preds = %268, %257
  %277 = icmp eq ptr %250, null
  br i1 %277, label %293, label %278

278:                                              ; preds = %276, %289
  %279 = phi ptr [ %291, %289 ], [ %250, %276 ]
  %280 = load ptr, ptr %279, align 8, !tbaa !105
  %281 = icmp eq ptr %280, %49
  br i1 %281, label %282, label %289

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.DagAdjList, ptr %279, i64 0, i32 1
  %284 = load i16, ptr %283, align 8, !tbaa !106
  %285 = or i16 %284, 40
  store i16 %285, ptr %283, align 8, !tbaa !106
  %286 = getelementptr inbounds %struct.DagAdjList, ptr %279, i64 0, i32 2
  %287 = load i32, ptr %286, align 4, !tbaa !114
  %288 = add nsw i32 %287, 1
  store i32 %288, ptr %286, align 4, !tbaa !114
  br label %301

289:                                              ; preds = %278
  %290 = getelementptr inbounds %struct.DagAdjList, ptr %279, i64 0, i32 5
  %291 = load ptr, ptr %290, align 8, !tbaa !84
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %278, !llvm.loop !117

293:                                              ; preds = %289, %276
  %294 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %295 = call ptr %294(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %295, align 8, !tbaa !105
  %296 = getelementptr inbounds %struct.DagAdjList, ptr %295, i64 0, i32 1
  store i16 40, ptr %296, align 8, !tbaa !106
  %297 = getelementptr inbounds %struct.DagAdjList, ptr %295, i64 0, i32 2
  store i32 1, ptr %297, align 4, !tbaa !114
  %298 = load ptr, ptr %249, align 8, !tbaa !82
  %299 = getelementptr inbounds %struct.DagAdjList, ptr %295, i64 0, i32 5
  store ptr %298, ptr %299, align 8, !tbaa !84
  %300 = getelementptr inbounds %struct.DagAdjList, ptr %295, i64 0, i32 4
  store ptr %196, ptr %300, align 8, !tbaa !116
  store ptr %295, ptr %249, align 8, !tbaa !82
  br label %301

301:                                              ; preds = %282, %293
  %302 = load ptr, ptr %202, align 8, !tbaa !125
  %303 = getelementptr inbounds %struct.Object, ptr %302, i64 0, i32 3
  %304 = load i16, ptr %303, align 8, !tbaa !120
  %305 = icmp eq i16 %304, 1
  br i1 %305, label %306, label %418

306:                                              ; preds = %301
  %307 = getelementptr inbounds %struct.DagNode, ptr %244, i64 0, i32 10
  %308 = load i64, ptr %307, align 8, !tbaa !108
  %309 = or i64 %308, 4
  store i64 %309, ptr %307, align 8, !tbaa !108
  br label %418

310:                                              ; preds = %243
  %311 = load i16, ptr %197, align 8, !tbaa !128
  switch i16 %311, label %365 [
    i16 4, label %312
    i16 18, label %312
    i16 22, label %312
  ]

312:                                              ; preds = %310, %310, %310
  %313 = getelementptr inbounds %struct.DagNode, ptr %244, i64 0, i32 16
  %314 = load ptr, ptr %313, align 8, !tbaa !82
  %315 = load ptr, ptr %173, align 8, !tbaa !34
  %316 = icmp eq ptr %315, null
  br i1 %316, label %332, label %317

317:                                              ; preds = %312, %328
  %318 = phi ptr [ %330, %328 ], [ %315, %312 ]
  %319 = load ptr, ptr %318, align 8, !tbaa !105
  %320 = icmp eq ptr %319, %244
  br i1 %320, label %321, label %328

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.DagAdjList, ptr %318, i64 0, i32 1
  %323 = load i16, ptr %322, align 8, !tbaa !106
  %324 = or i16 %323, 40
  store i16 %324, ptr %322, align 8, !tbaa !106
  %325 = getelementptr inbounds %struct.DagAdjList, ptr %318, i64 0, i32 2
  %326 = load i32, ptr %325, align 4, !tbaa !114
  %327 = add nsw i32 %326, 1
  store i32 %327, ptr %325, align 4, !tbaa !114
  br label %340

328:                                              ; preds = %317
  %329 = getelementptr inbounds %struct.DagAdjList, ptr %318, i64 0, i32 5
  %330 = load ptr, ptr %329, align 8, !tbaa !34
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %317, !llvm.loop !115

332:                                              ; preds = %328, %312
  %333 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %334 = call ptr %333(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %244, ptr %334, align 8, !tbaa !105
  %335 = getelementptr inbounds %struct.DagAdjList, ptr %334, i64 0, i32 1
  store i16 40, ptr %335, align 8, !tbaa !106
  %336 = getelementptr inbounds %struct.DagAdjList, ptr %334, i64 0, i32 2
  store i32 1, ptr %336, align 4, !tbaa !114
  %337 = load ptr, ptr %173, align 8, !tbaa !87
  %338 = getelementptr inbounds %struct.DagAdjList, ptr %334, i64 0, i32 5
  store ptr %337, ptr %338, align 8, !tbaa !84
  %339 = getelementptr inbounds %struct.DagAdjList, ptr %334, i64 0, i32 4
  store ptr %198, ptr %339, align 8, !tbaa !116
  store ptr %334, ptr %173, align 8, !tbaa !87
  br label %340

340:                                              ; preds = %332, %321
  %341 = icmp eq ptr %314, null
  br i1 %341, label %357, label %342

342:                                              ; preds = %340, %353
  %343 = phi ptr [ %355, %353 ], [ %314, %340 ]
  %344 = load ptr, ptr %343, align 8, !tbaa !105
  %345 = icmp eq ptr %344, %49
  br i1 %345, label %346, label %353

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.DagAdjList, ptr %343, i64 0, i32 1
  %348 = load i16, ptr %347, align 8, !tbaa !106
  %349 = or i16 %348, 40
  store i16 %349, ptr %347, align 8, !tbaa !106
  %350 = getelementptr inbounds %struct.DagAdjList, ptr %343, i64 0, i32 2
  %351 = load i32, ptr %350, align 4, !tbaa !114
  %352 = add nsw i32 %351, 1
  store i32 %352, ptr %350, align 4, !tbaa !114
  br label %418

353:                                              ; preds = %342
  %354 = getelementptr inbounds %struct.DagAdjList, ptr %343, i64 0, i32 5
  %355 = load ptr, ptr %354, align 8, !tbaa !84
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %342, !llvm.loop !117

357:                                              ; preds = %353, %340
  %358 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %359 = call ptr %358(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %359, align 8, !tbaa !105
  %360 = getelementptr inbounds %struct.DagAdjList, ptr %359, i64 0, i32 1
  store i16 40, ptr %360, align 8, !tbaa !106
  %361 = getelementptr inbounds %struct.DagAdjList, ptr %359, i64 0, i32 2
  store i32 1, ptr %361, align 4, !tbaa !114
  %362 = load ptr, ptr %313, align 8, !tbaa !82
  %363 = getelementptr inbounds %struct.DagAdjList, ptr %359, i64 0, i32 5
  store ptr %362, ptr %363, align 8, !tbaa !84
  %364 = getelementptr inbounds %struct.DagAdjList, ptr %359, i64 0, i32 4
  store ptr %198, ptr %364, align 8, !tbaa !116
  store ptr %359, ptr %313, align 8, !tbaa !82
  br label %418

365:                                              ; preds = %310
  %366 = getelementptr inbounds %struct.DagNode, ptr %244, i64 0, i32 16
  %367 = load ptr, ptr %366, align 8, !tbaa !82
  %368 = load ptr, ptr %174, align 8, !tbaa !34
  %369 = icmp eq ptr %368, null
  br i1 %369, label %385, label %370

370:                                              ; preds = %365, %381
  %371 = phi ptr [ %383, %381 ], [ %368, %365 ]
  %372 = load ptr, ptr %371, align 8, !tbaa !105
  %373 = icmp eq ptr %372, %244
  br i1 %373, label %374, label %381

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.DagAdjList, ptr %371, i64 0, i32 1
  %376 = load i16, ptr %375, align 8, !tbaa !106
  %377 = or i16 %376, 8
  store i16 %377, ptr %375, align 8, !tbaa !106
  %378 = getelementptr inbounds %struct.DagAdjList, ptr %371, i64 0, i32 2
  %379 = load i32, ptr %378, align 4, !tbaa !114
  %380 = add nsw i32 %379, 1
  store i32 %380, ptr %378, align 4, !tbaa !114
  br label %393

381:                                              ; preds = %370
  %382 = getelementptr inbounds %struct.DagAdjList, ptr %371, i64 0, i32 5
  %383 = load ptr, ptr %382, align 8, !tbaa !34
  %384 = icmp eq ptr %383, null
  br i1 %384, label %385, label %370, !llvm.loop !115

385:                                              ; preds = %381, %365
  %386 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %387 = call ptr %386(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %244, ptr %387, align 8, !tbaa !105
  %388 = getelementptr inbounds %struct.DagAdjList, ptr %387, i64 0, i32 1
  store i16 8, ptr %388, align 8, !tbaa !106
  %389 = getelementptr inbounds %struct.DagAdjList, ptr %387, i64 0, i32 2
  store i32 1, ptr %389, align 4, !tbaa !114
  %390 = load ptr, ptr %174, align 8, !tbaa !87
  %391 = getelementptr inbounds %struct.DagAdjList, ptr %387, i64 0, i32 5
  store ptr %390, ptr %391, align 8, !tbaa !84
  %392 = getelementptr inbounds %struct.DagAdjList, ptr %387, i64 0, i32 4
  store ptr %199, ptr %392, align 8, !tbaa !116
  store ptr %387, ptr %174, align 8, !tbaa !87
  br label %393

393:                                              ; preds = %385, %374
  %394 = icmp eq ptr %367, null
  br i1 %394, label %410, label %395

395:                                              ; preds = %393, %406
  %396 = phi ptr [ %408, %406 ], [ %367, %393 ]
  %397 = load ptr, ptr %396, align 8, !tbaa !105
  %398 = icmp eq ptr %397, %49
  br i1 %398, label %399, label %406

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct.DagAdjList, ptr %396, i64 0, i32 1
  %401 = load i16, ptr %400, align 8, !tbaa !106
  %402 = or i16 %401, 8
  store i16 %402, ptr %400, align 8, !tbaa !106
  %403 = getelementptr inbounds %struct.DagAdjList, ptr %396, i64 0, i32 2
  %404 = load i32, ptr %403, align 4, !tbaa !114
  %405 = add nsw i32 %404, 1
  store i32 %405, ptr %403, align 4, !tbaa !114
  br label %418

406:                                              ; preds = %395
  %407 = getelementptr inbounds %struct.DagAdjList, ptr %396, i64 0, i32 5
  %408 = load ptr, ptr %407, align 8, !tbaa !84
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %395, !llvm.loop !117

410:                                              ; preds = %406, %393
  %411 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %412 = call ptr %411(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %412, align 8, !tbaa !105
  %413 = getelementptr inbounds %struct.DagAdjList, ptr %412, i64 0, i32 1
  store i16 8, ptr %413, align 8, !tbaa !106
  %414 = getelementptr inbounds %struct.DagAdjList, ptr %412, i64 0, i32 2
  store i32 1, ptr %414, align 4, !tbaa !114
  %415 = load ptr, ptr %366, align 8, !tbaa !82
  %416 = getelementptr inbounds %struct.DagAdjList, ptr %412, i64 0, i32 5
  store ptr %415, ptr %416, align 8, !tbaa !84
  %417 = getelementptr inbounds %struct.DagAdjList, ptr %412, i64 0, i32 4
  store ptr %199, ptr %417, align 8, !tbaa !116
  store ptr %412, ptr %366, align 8, !tbaa !82
  br label %418

418:                                              ; preds = %410, %399, %357, %346, %200, %301, %306
  %419 = load ptr, ptr %201, align 8, !tbaa !34
  %420 = icmp eq ptr %419, null
  br i1 %420, label %421, label %200, !llvm.loop !130

421:                                              ; preds = %418, %191
  %422 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %185, i64 0, i32 9
  %423 = load ptr, ptr %422, align 8, !tbaa !131
  %424 = icmp eq ptr %423, null
  br i1 %424, label %426, label %425

425:                                              ; preds = %421
  call void %423(ptr noundef nonnull %184, ptr noundef nonnull %6, i8 noundef zeroext 1) #17
  br label %426

426:                                              ; preds = %421, %425, %187, %183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  %427 = load ptr, ptr %184, align 8, !tbaa !34
  %428 = icmp eq ptr %427, null
  br i1 %428, label %175, label %183, !llvm.loop !132

429:                                              ; preds = %175, %164, %160, %155
  %430 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !133
  %432 = icmp eq ptr %431, null
  br i1 %432, label %437, label %433

433:                                              ; preds = %429
  %434 = load i16, ptr %157, align 8, !tbaa !120
  %435 = icmp eq i16 %434, 25
  %436 = zext i1 %435 to i32
  call fastcc void @dag_add_driver_relation(ptr noundef nonnull %431, ptr noundef %0, ptr noundef %49, i32 noundef %436)
  br label %437

437:                                              ; preds = %433, %429
  %438 = call ptr @BKE_key_from_object(ptr noundef %3) #17
  %439 = icmp eq ptr %438, null
  br i1 %439, label %445, label %440

440:                                              ; preds = %437
  %441 = getelementptr inbounds %struct.Key, ptr %438, i64 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !134
  %443 = icmp eq ptr %442, null
  br i1 %443, label %445, label %444

444:                                              ; preds = %440
  call fastcc void @dag_add_driver_relation(ptr noundef nonnull %442, ptr noundef %0, ptr noundef %49, i32 noundef 1)
  br label %445

445:                                              ; preds = %444, %440, %437
  %446 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 26
  %447 = load ptr, ptr %446, align 8, !tbaa !136
  %448 = icmp eq ptr %447, null
  br i1 %448, label %461, label %449

449:                                              ; preds = %445, %458
  %450 = phi ptr [ %459, %458 ], [ %447, %445 ]
  %451 = getelementptr inbounds %struct.ModifierData, ptr %450, i64 0, i32 2
  %452 = load i32, ptr %451, align 8, !tbaa !137
  %453 = call ptr @modifierType_getInfo(i32 noundef %452) #17
  %454 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %453, i64 0, i32 16
  %455 = load ptr, ptr %454, align 8, !tbaa !139
  %456 = icmp eq ptr %455, null
  br i1 %456, label %458, label %457

457:                                              ; preds = %449
  call void %455(ptr noundef nonnull %450, ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %49) #17
  br label %458

458:                                              ; preds = %457, %449
  %459 = load ptr, ptr %450, align 8, !tbaa !141
  %460 = icmp eq ptr %459, null
  br i1 %460, label %461, label %449, !llvm.loop !142

461:                                              ; preds = %458, %445
  %462 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 9
  %463 = load ptr, ptr %462, align 8, !tbaa !143
  %464 = icmp eq ptr %463, null
  br i1 %464, label %959, label %465

465:                                              ; preds = %461
  %466 = load ptr, ptr %9, align 8, !tbaa !91
  %467 = icmp eq ptr %466, null
  br i1 %467, label %470, label %468

468:                                              ; preds = %465
  %469 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %466, ptr noundef nonnull %463) #17
  br label %470

470:                                              ; preds = %468, %465
  %471 = phi ptr [ %469, %468 ], [ null, %465 ]
  %472 = icmp eq ptr %471, null
  br i1 %472, label %473, label %504

473:                                              ; preds = %470
  %474 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %475 = call ptr %474(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %476 = icmp eq ptr %475, null
  br i1 %476, label %504, label %477

477:                                              ; preds = %473
  %478 = getelementptr inbounds %struct.DagNode, ptr %475, i64 0, i32 5
  store ptr %463, ptr %478, align 8, !tbaa !92
  store i32 0, ptr %475, align 8, !tbaa !93
  %479 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %480 = load i8, ptr %479, align 4, !tbaa !55
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %486, label %482

482:                                              ; preds = %477
  %483 = getelementptr inbounds %struct.ID, ptr %463, i64 0, i32 4
  %484 = load i16, ptr %483, align 8, !tbaa !94
  %485 = getelementptr inbounds %struct.DagNode, ptr %475, i64 0, i32 1
  store i16 %484, ptr %485, align 4, !tbaa !95
  br label %486

486:                                              ; preds = %482, %477
  %487 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %488 = load i32, ptr %487, align 8, !tbaa !96
  %489 = icmp eq i32 %488, 0
  %490 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %489, label %495, label %491

491:                                              ; preds = %486
  %492 = load ptr, ptr %490, align 8, !tbaa !97
  %493 = getelementptr inbounds %struct.DagNode, ptr %492, i64 0, i32 18
  store ptr %475, ptr %493, align 8, !tbaa !89
  store ptr %475, ptr %490, align 8, !tbaa !97
  %494 = add nsw i32 %488, 1
  br label %496

495:                                              ; preds = %486
  store ptr %475, ptr %490, align 8, !tbaa !97
  store ptr %475, ptr %0, align 8, !tbaa !81
  br label %496

496:                                              ; preds = %495, %491
  %497 = phi i32 [ 1, %495 ], [ %494, %491 ]
  store i32 %497, ptr %487, align 8, !tbaa !96
  %498 = load ptr, ptr %9, align 8, !tbaa !91
  %499 = icmp eq ptr %498, null
  br i1 %499, label %500, label %502

500:                                              ; preds = %496
  %501 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %501, ptr %9, align 8, !tbaa !91
  br label %502

502:                                              ; preds = %500, %496
  %503 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %503, ptr noundef nonnull %463, ptr noundef nonnull %475) #17
  br label %504

504:                                              ; preds = %502, %473, %470
  %505 = phi ptr [ %471, %470 ], [ %475, %473 ], [ %475, %502 ]
  %506 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  %507 = load i16, ptr %506, align 2, !tbaa !144
  switch i16 %507, label %674 [
    i16 4, label %508
    i16 5, label %562
    i16 6, label %562
    i16 7, label %620
  ]

508:                                              ; preds = %504
  %509 = getelementptr inbounds %struct.DagNode, ptr %505, i64 0, i32 16
  %510 = load ptr, ptr %509, align 8, !tbaa !82
  %511 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %512 = load ptr, ptr %511, align 8, !tbaa !34
  %513 = icmp eq ptr %512, null
  br i1 %513, label %529, label %514

514:                                              ; preds = %508, %525
  %515 = phi ptr [ %527, %525 ], [ %512, %508 ]
  %516 = load ptr, ptr %515, align 8, !tbaa !105
  %517 = icmp eq ptr %516, %505
  br i1 %517, label %518, label %525

518:                                              ; preds = %514
  %519 = getelementptr inbounds %struct.DagAdjList, ptr %515, i64 0, i32 1
  %520 = load i16, ptr %519, align 8, !tbaa !106
  %521 = or i16 %520, 36
  store i16 %521, ptr %519, align 8, !tbaa !106
  %522 = getelementptr inbounds %struct.DagAdjList, ptr %515, i64 0, i32 2
  %523 = load i32, ptr %522, align 4, !tbaa !114
  %524 = add nsw i32 %523, 1
  store i32 %524, ptr %522, align 4, !tbaa !114
  br label %537

525:                                              ; preds = %514
  %526 = getelementptr inbounds %struct.DagAdjList, ptr %515, i64 0, i32 5
  %527 = load ptr, ptr %526, align 8, !tbaa !34
  %528 = icmp eq ptr %527, null
  br i1 %528, label %529, label %514, !llvm.loop !115

529:                                              ; preds = %525, %508
  %530 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %531 = call ptr %530(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %505, ptr %531, align 8, !tbaa !105
  %532 = getelementptr inbounds %struct.DagAdjList, ptr %531, i64 0, i32 1
  store i16 36, ptr %532, align 8, !tbaa !106
  %533 = getelementptr inbounds %struct.DagAdjList, ptr %531, i64 0, i32 2
  store i32 1, ptr %533, align 4, !tbaa !114
  %534 = load ptr, ptr %511, align 8, !tbaa !87
  %535 = getelementptr inbounds %struct.DagAdjList, ptr %531, i64 0, i32 5
  store ptr %534, ptr %535, align 8, !tbaa !84
  %536 = getelementptr inbounds %struct.DagAdjList, ptr %531, i64 0, i32 4
  store ptr @.str.25, ptr %536, align 8, !tbaa !116
  store ptr %531, ptr %511, align 8, !tbaa !87
  br label %537

537:                                              ; preds = %529, %518
  %538 = icmp eq ptr %510, null
  br i1 %538, label %554, label %539

539:                                              ; preds = %537, %550
  %540 = phi ptr [ %552, %550 ], [ %510, %537 ]
  %541 = load ptr, ptr %540, align 8, !tbaa !105
  %542 = icmp eq ptr %541, %49
  br i1 %542, label %543, label %550

543:                                              ; preds = %539
  %544 = getelementptr inbounds %struct.DagAdjList, ptr %540, i64 0, i32 1
  %545 = load i16, ptr %544, align 8, !tbaa !106
  %546 = or i16 %545, 36
  store i16 %546, ptr %544, align 8, !tbaa !106
  %547 = getelementptr inbounds %struct.DagAdjList, ptr %540, i64 0, i32 2
  %548 = load i32, ptr %547, align 4, !tbaa !114
  %549 = add nsw i32 %548, 1
  store i32 %549, ptr %547, align 4, !tbaa !114
  br label %896

550:                                              ; preds = %539
  %551 = getelementptr inbounds %struct.DagAdjList, ptr %540, i64 0, i32 5
  %552 = load ptr, ptr %551, align 8, !tbaa !84
  %553 = icmp eq ptr %552, null
  br i1 %553, label %554, label %539, !llvm.loop !117

554:                                              ; preds = %550, %537
  %555 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %556 = call ptr %555(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %556, align 8, !tbaa !105
  %557 = getelementptr inbounds %struct.DagAdjList, ptr %556, i64 0, i32 1
  store i16 36, ptr %557, align 8, !tbaa !106
  %558 = getelementptr inbounds %struct.DagAdjList, ptr %556, i64 0, i32 2
  store i32 1, ptr %558, align 4, !tbaa !114
  %559 = load ptr, ptr %509, align 8, !tbaa !82
  %560 = getelementptr inbounds %struct.DagAdjList, ptr %556, i64 0, i32 5
  store ptr %559, ptr %560, align 8, !tbaa !84
  %561 = getelementptr inbounds %struct.DagAdjList, ptr %556, i64 0, i32 4
  store ptr @.str.25, ptr %561, align 8, !tbaa !116
  store ptr %556, ptr %509, align 8, !tbaa !82
  br label %896

562:                                              ; preds = %504, %504
  %563 = getelementptr inbounds %struct.DagNode, ptr %505, i64 0, i32 16
  %564 = load ptr, ptr %563, align 8, !tbaa !82
  %565 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %566 = load ptr, ptr %565, align 8, !tbaa !34
  %567 = icmp eq ptr %566, null
  br i1 %567, label %583, label %568

568:                                              ; preds = %562, %579
  %569 = phi ptr [ %581, %579 ], [ %566, %562 ]
  %570 = load ptr, ptr %569, align 8, !tbaa !105
  %571 = icmp eq ptr %570, %505
  br i1 %571, label %572, label %579

572:                                              ; preds = %568
  %573 = getelementptr inbounds %struct.DagAdjList, ptr %569, i64 0, i32 1
  %574 = load i16, ptr %573, align 8, !tbaa !106
  %575 = or i16 %574, 20
  store i16 %575, ptr %573, align 8, !tbaa !106
  %576 = getelementptr inbounds %struct.DagAdjList, ptr %569, i64 0, i32 2
  %577 = load i32, ptr %576, align 4, !tbaa !114
  %578 = add nsw i32 %577, 1
  store i32 %578, ptr %576, align 4, !tbaa !114
  br label %591

579:                                              ; preds = %568
  %580 = getelementptr inbounds %struct.DagAdjList, ptr %569, i64 0, i32 5
  %581 = load ptr, ptr %580, align 8, !tbaa !34
  %582 = icmp eq ptr %581, null
  br i1 %582, label %583, label %568, !llvm.loop !115

583:                                              ; preds = %579, %562
  %584 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %585 = call ptr %584(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %505, ptr %585, align 8, !tbaa !105
  %586 = getelementptr inbounds %struct.DagAdjList, ptr %585, i64 0, i32 1
  store i16 20, ptr %586, align 8, !tbaa !106
  %587 = getelementptr inbounds %struct.DagAdjList, ptr %585, i64 0, i32 2
  store i32 1, ptr %587, align 4, !tbaa !114
  %588 = load ptr, ptr %565, align 8, !tbaa !87
  %589 = getelementptr inbounds %struct.DagAdjList, ptr %585, i64 0, i32 5
  store ptr %588, ptr %589, align 8, !tbaa !84
  %590 = getelementptr inbounds %struct.DagAdjList, ptr %585, i64 0, i32 4
  store ptr @.str.26, ptr %590, align 8, !tbaa !116
  store ptr %585, ptr %565, align 8, !tbaa !87
  br label %591

591:                                              ; preds = %583, %572
  %592 = icmp eq ptr %564, null
  br i1 %592, label %608, label %593

593:                                              ; preds = %591, %604
  %594 = phi ptr [ %606, %604 ], [ %564, %591 ]
  %595 = load ptr, ptr %594, align 8, !tbaa !105
  %596 = icmp eq ptr %595, %49
  br i1 %596, label %597, label %604

597:                                              ; preds = %593
  %598 = getelementptr inbounds %struct.DagAdjList, ptr %594, i64 0, i32 1
  %599 = load i16, ptr %598, align 8, !tbaa !106
  %600 = or i16 %599, 20
  store i16 %600, ptr %598, align 8, !tbaa !106
  %601 = getelementptr inbounds %struct.DagAdjList, ptr %594, i64 0, i32 2
  %602 = load i32, ptr %601, align 4, !tbaa !114
  %603 = add nsw i32 %602, 1
  store i32 %603, ptr %601, align 4, !tbaa !114
  br label %616

604:                                              ; preds = %593
  %605 = getelementptr inbounds %struct.DagAdjList, ptr %594, i64 0, i32 5
  %606 = load ptr, ptr %605, align 8, !tbaa !84
  %607 = icmp eq ptr %606, null
  br i1 %607, label %608, label %593, !llvm.loop !117

608:                                              ; preds = %604, %591
  %609 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %610 = call ptr %609(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %610, align 8, !tbaa !105
  %611 = getelementptr inbounds %struct.DagAdjList, ptr %610, i64 0, i32 1
  store i16 20, ptr %611, align 8, !tbaa !106
  %612 = getelementptr inbounds %struct.DagAdjList, ptr %610, i64 0, i32 2
  store i32 1, ptr %612, align 4, !tbaa !114
  %613 = load ptr, ptr %563, align 8, !tbaa !82
  %614 = getelementptr inbounds %struct.DagAdjList, ptr %610, i64 0, i32 5
  store ptr %613, ptr %614, align 8, !tbaa !84
  %615 = getelementptr inbounds %struct.DagAdjList, ptr %610, i64 0, i32 4
  store ptr @.str.26, ptr %615, align 8, !tbaa !116
  store ptr %610, ptr %563, align 8, !tbaa !82
  br label %616

616:                                              ; preds = %597, %608
  %617 = getelementptr inbounds %struct.DagNode, ptr %505, i64 0, i32 10
  %618 = load i64, ptr %617, align 8, !tbaa !108
  %619 = or i64 %618, 128
  store i64 %619, ptr %617, align 8, !tbaa !108
  br label %896

620:                                              ; preds = %504
  %621 = getelementptr inbounds %struct.DagNode, ptr %505, i64 0, i32 16
  %622 = load ptr, ptr %621, align 8, !tbaa !82
  %623 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %624 = load ptr, ptr %623, align 8, !tbaa !34
  %625 = icmp eq ptr %624, null
  br i1 %625, label %641, label %626

626:                                              ; preds = %620, %637
  %627 = phi ptr [ %639, %637 ], [ %624, %620 ]
  %628 = load ptr, ptr %627, align 8, !tbaa !105
  %629 = icmp eq ptr %628, %505
  br i1 %629, label %630, label %637

630:                                              ; preds = %626
  %631 = getelementptr inbounds %struct.DagAdjList, ptr %627, i64 0, i32 1
  %632 = load i16, ptr %631, align 8, !tbaa !106
  %633 = or i16 %632, 20
  store i16 %633, ptr %631, align 8, !tbaa !106
  %634 = getelementptr inbounds %struct.DagAdjList, ptr %627, i64 0, i32 2
  %635 = load i32, ptr %634, align 4, !tbaa !114
  %636 = add nsw i32 %635, 1
  store i32 %636, ptr %634, align 4, !tbaa !114
  br label %649

637:                                              ; preds = %626
  %638 = getelementptr inbounds %struct.DagAdjList, ptr %627, i64 0, i32 5
  %639 = load ptr, ptr %638, align 8, !tbaa !34
  %640 = icmp eq ptr %639, null
  br i1 %640, label %641, label %626, !llvm.loop !115

641:                                              ; preds = %637, %620
  %642 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %643 = call ptr %642(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %505, ptr %643, align 8, !tbaa !105
  %644 = getelementptr inbounds %struct.DagAdjList, ptr %643, i64 0, i32 1
  store i16 20, ptr %644, align 8, !tbaa !106
  %645 = getelementptr inbounds %struct.DagAdjList, ptr %643, i64 0, i32 2
  store i32 1, ptr %645, align 4, !tbaa !114
  %646 = load ptr, ptr %623, align 8, !tbaa !87
  %647 = getelementptr inbounds %struct.DagAdjList, ptr %643, i64 0, i32 5
  store ptr %646, ptr %647, align 8, !tbaa !84
  %648 = getelementptr inbounds %struct.DagAdjList, ptr %643, i64 0, i32 4
  store ptr @.str.27, ptr %648, align 8, !tbaa !116
  store ptr %643, ptr %623, align 8, !tbaa !87
  br label %649

649:                                              ; preds = %641, %630
  %650 = icmp eq ptr %622, null
  br i1 %650, label %666, label %651

651:                                              ; preds = %649, %662
  %652 = phi ptr [ %664, %662 ], [ %622, %649 ]
  %653 = load ptr, ptr %652, align 8, !tbaa !105
  %654 = icmp eq ptr %653, %49
  br i1 %654, label %655, label %662

655:                                              ; preds = %651
  %656 = getelementptr inbounds %struct.DagAdjList, ptr %652, i64 0, i32 1
  %657 = load i16, ptr %656, align 8, !tbaa !106
  %658 = or i16 %657, 20
  store i16 %658, ptr %656, align 8, !tbaa !106
  %659 = getelementptr inbounds %struct.DagAdjList, ptr %652, i64 0, i32 2
  %660 = load i32, ptr %659, align 4, !tbaa !114
  %661 = add nsw i32 %660, 1
  store i32 %661, ptr %659, align 4, !tbaa !114
  br label %896

662:                                              ; preds = %651
  %663 = getelementptr inbounds %struct.DagAdjList, ptr %652, i64 0, i32 5
  %664 = load ptr, ptr %663, align 8, !tbaa !84
  %665 = icmp eq ptr %664, null
  br i1 %665, label %666, label %651, !llvm.loop !117

666:                                              ; preds = %662, %649
  %667 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %668 = call ptr %667(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %668, align 8, !tbaa !105
  %669 = getelementptr inbounds %struct.DagAdjList, ptr %668, i64 0, i32 1
  store i16 20, ptr %669, align 8, !tbaa !106
  %670 = getelementptr inbounds %struct.DagAdjList, ptr %668, i64 0, i32 2
  store i32 1, ptr %670, align 4, !tbaa !114
  %671 = load ptr, ptr %621, align 8, !tbaa !82
  %672 = getelementptr inbounds %struct.DagAdjList, ptr %668, i64 0, i32 5
  store ptr %671, ptr %672, align 8, !tbaa !84
  %673 = getelementptr inbounds %struct.DagAdjList, ptr %668, i64 0, i32 4
  store ptr @.str.27, ptr %673, align 8, !tbaa !116
  store ptr %668, ptr %621, align 8, !tbaa !82
  br label %896

674:                                              ; preds = %504
  %675 = load ptr, ptr %462, align 8, !tbaa !143
  %676 = getelementptr inbounds %struct.Object, ptr %675, i64 0, i32 3
  %677 = load i16, ptr %676, align 8, !tbaa !120
  switch i16 %677, label %842 [
    i16 22, label %678
    i16 2, label %732
  ]

678:                                              ; preds = %674
  %679 = getelementptr inbounds %struct.DagNode, ptr %505, i64 0, i32 16
  %680 = load ptr, ptr %679, align 8, !tbaa !82
  %681 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %682 = load ptr, ptr %681, align 8, !tbaa !34
  %683 = icmp eq ptr %682, null
  br i1 %683, label %699, label %684

684:                                              ; preds = %678, %695
  %685 = phi ptr [ %697, %695 ], [ %682, %678 ]
  %686 = load ptr, ptr %685, align 8, !tbaa !105
  %687 = icmp eq ptr %686, %505
  br i1 %687, label %688, label %695

688:                                              ; preds = %684
  %689 = getelementptr inbounds %struct.DagAdjList, ptr %685, i64 0, i32 1
  %690 = load i16, ptr %689, align 8, !tbaa !106
  %691 = or i16 %690, 36
  store i16 %691, ptr %689, align 8, !tbaa !106
  %692 = getelementptr inbounds %struct.DagAdjList, ptr %685, i64 0, i32 2
  %693 = load i32, ptr %692, align 4, !tbaa !114
  %694 = add nsw i32 %693, 1
  store i32 %694, ptr %692, align 4, !tbaa !114
  br label %707

695:                                              ; preds = %684
  %696 = getelementptr inbounds %struct.DagAdjList, ptr %685, i64 0, i32 5
  %697 = load ptr, ptr %696, align 8, !tbaa !34
  %698 = icmp eq ptr %697, null
  br i1 %698, label %699, label %684, !llvm.loop !115

699:                                              ; preds = %695, %678
  %700 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %701 = call ptr %700(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %505, ptr %701, align 8, !tbaa !105
  %702 = getelementptr inbounds %struct.DagAdjList, ptr %701, i64 0, i32 1
  store i16 36, ptr %702, align 8, !tbaa !106
  %703 = getelementptr inbounds %struct.DagAdjList, ptr %701, i64 0, i32 2
  store i32 1, ptr %703, align 4, !tbaa !114
  %704 = load ptr, ptr %681, align 8, !tbaa !87
  %705 = getelementptr inbounds %struct.DagAdjList, ptr %701, i64 0, i32 5
  store ptr %704, ptr %705, align 8, !tbaa !84
  %706 = getelementptr inbounds %struct.DagAdjList, ptr %701, i64 0, i32 4
  store ptr @.str.28, ptr %706, align 8, !tbaa !116
  store ptr %701, ptr %681, align 8, !tbaa !87
  br label %707

707:                                              ; preds = %699, %688
  %708 = icmp eq ptr %680, null
  br i1 %708, label %724, label %709

709:                                              ; preds = %707, %720
  %710 = phi ptr [ %722, %720 ], [ %680, %707 ]
  %711 = load ptr, ptr %710, align 8, !tbaa !105
  %712 = icmp eq ptr %711, %49
  br i1 %712, label %713, label %720

713:                                              ; preds = %709
  %714 = getelementptr inbounds %struct.DagAdjList, ptr %710, i64 0, i32 1
  %715 = load i16, ptr %714, align 8, !tbaa !106
  %716 = or i16 %715, 36
  store i16 %716, ptr %714, align 8, !tbaa !106
  %717 = getelementptr inbounds %struct.DagAdjList, ptr %710, i64 0, i32 2
  %718 = load i32, ptr %717, align 4, !tbaa !114
  %719 = add nsw i32 %718, 1
  store i32 %719, ptr %717, align 4, !tbaa !114
  br label %896

720:                                              ; preds = %709
  %721 = getelementptr inbounds %struct.DagAdjList, ptr %710, i64 0, i32 5
  %722 = load ptr, ptr %721, align 8, !tbaa !84
  %723 = icmp eq ptr %722, null
  br i1 %723, label %724, label %709, !llvm.loop !117

724:                                              ; preds = %720, %707
  %725 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %726 = call ptr %725(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %726, align 8, !tbaa !105
  %727 = getelementptr inbounds %struct.DagAdjList, ptr %726, i64 0, i32 1
  store i16 36, ptr %727, align 8, !tbaa !106
  %728 = getelementptr inbounds %struct.DagAdjList, ptr %726, i64 0, i32 2
  store i32 1, ptr %728, align 4, !tbaa !114
  %729 = load ptr, ptr %679, align 8, !tbaa !82
  %730 = getelementptr inbounds %struct.DagAdjList, ptr %726, i64 0, i32 5
  store ptr %729, ptr %730, align 8, !tbaa !84
  %731 = getelementptr inbounds %struct.DagAdjList, ptr %726, i64 0, i32 4
  store ptr @.str.28, ptr %731, align 8, !tbaa !116
  store ptr %726, ptr %679, align 8, !tbaa !82
  br label %896

732:                                              ; preds = %674
  %733 = getelementptr inbounds %struct.Object, ptr %675, i64 0, i32 19
  %734 = load ptr, ptr %733, align 8, !tbaa !113
  %735 = getelementptr inbounds %struct.Curve, ptr %734, i64 0, i32 23
  %736 = load i32, ptr %735, align 4, !tbaa !145
  %737 = and i32 %736, 8
  %738 = icmp eq i32 %737, 0
  %739 = getelementptr inbounds %struct.DagNode, ptr %505, i64 0, i32 16
  %740 = load ptr, ptr %739, align 8, !tbaa !82
  %741 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %742 = load ptr, ptr %741, align 8, !tbaa !34
  %743 = icmp eq ptr %742, null
  br i1 %738, label %793, label %744

744:                                              ; preds = %732
  br i1 %743, label %760, label %745

745:                                              ; preds = %744, %756
  %746 = phi ptr [ %758, %756 ], [ %742, %744 ]
  %747 = load ptr, ptr %746, align 8, !tbaa !105
  %748 = icmp eq ptr %747, %505
  br i1 %748, label %749, label %756

749:                                              ; preds = %745
  %750 = getelementptr inbounds %struct.DagAdjList, ptr %746, i64 0, i32 1
  %751 = load i16, ptr %750, align 8, !tbaa !106
  %752 = or i16 %751, 20
  store i16 %752, ptr %750, align 8, !tbaa !106
  %753 = getelementptr inbounds %struct.DagAdjList, ptr %746, i64 0, i32 2
  %754 = load i32, ptr %753, align 4, !tbaa !114
  %755 = add nsw i32 %754, 1
  store i32 %755, ptr %753, align 4, !tbaa !114
  br label %768

756:                                              ; preds = %745
  %757 = getelementptr inbounds %struct.DagAdjList, ptr %746, i64 0, i32 5
  %758 = load ptr, ptr %757, align 8, !tbaa !34
  %759 = icmp eq ptr %758, null
  br i1 %759, label %760, label %745, !llvm.loop !115

760:                                              ; preds = %756, %744
  %761 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %762 = call ptr %761(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %505, ptr %762, align 8, !tbaa !105
  %763 = getelementptr inbounds %struct.DagAdjList, ptr %762, i64 0, i32 1
  store i16 20, ptr %763, align 8, !tbaa !106
  %764 = getelementptr inbounds %struct.DagAdjList, ptr %762, i64 0, i32 2
  store i32 1, ptr %764, align 4, !tbaa !114
  %765 = load ptr, ptr %741, align 8, !tbaa !87
  %766 = getelementptr inbounds %struct.DagAdjList, ptr %762, i64 0, i32 5
  store ptr %765, ptr %766, align 8, !tbaa !84
  %767 = getelementptr inbounds %struct.DagAdjList, ptr %762, i64 0, i32 4
  store ptr @.str.29, ptr %767, align 8, !tbaa !116
  store ptr %762, ptr %741, align 8, !tbaa !87
  br label %768

768:                                              ; preds = %760, %749
  %769 = icmp eq ptr %740, null
  br i1 %769, label %785, label %770

770:                                              ; preds = %768, %781
  %771 = phi ptr [ %783, %781 ], [ %740, %768 ]
  %772 = load ptr, ptr %771, align 8, !tbaa !105
  %773 = icmp eq ptr %772, %49
  br i1 %773, label %774, label %781

774:                                              ; preds = %770
  %775 = getelementptr inbounds %struct.DagAdjList, ptr %771, i64 0, i32 1
  %776 = load i16, ptr %775, align 8, !tbaa !106
  %777 = or i16 %776, 20
  store i16 %777, ptr %775, align 8, !tbaa !106
  %778 = getelementptr inbounds %struct.DagAdjList, ptr %771, i64 0, i32 2
  %779 = load i32, ptr %778, align 4, !tbaa !114
  %780 = add nsw i32 %779, 1
  store i32 %780, ptr %778, align 4, !tbaa !114
  br label %896

781:                                              ; preds = %770
  %782 = getelementptr inbounds %struct.DagAdjList, ptr %771, i64 0, i32 5
  %783 = load ptr, ptr %782, align 8, !tbaa !84
  %784 = icmp eq ptr %783, null
  br i1 %784, label %785, label %770, !llvm.loop !117

785:                                              ; preds = %781, %768
  %786 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %787 = call ptr %786(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %787, align 8, !tbaa !105
  %788 = getelementptr inbounds %struct.DagAdjList, ptr %787, i64 0, i32 1
  store i16 20, ptr %788, align 8, !tbaa !106
  %789 = getelementptr inbounds %struct.DagAdjList, ptr %787, i64 0, i32 2
  store i32 1, ptr %789, align 4, !tbaa !114
  %790 = load ptr, ptr %739, align 8, !tbaa !82
  %791 = getelementptr inbounds %struct.DagAdjList, ptr %787, i64 0, i32 5
  store ptr %790, ptr %791, align 8, !tbaa !84
  %792 = getelementptr inbounds %struct.DagAdjList, ptr %787, i64 0, i32 4
  store ptr @.str.29, ptr %792, align 8, !tbaa !116
  store ptr %787, ptr %739, align 8, !tbaa !82
  br label %896

793:                                              ; preds = %732
  br i1 %743, label %809, label %794

794:                                              ; preds = %793, %805
  %795 = phi ptr [ %807, %805 ], [ %742, %793 ]
  %796 = load ptr, ptr %795, align 8, !tbaa !105
  %797 = icmp eq ptr %796, %505
  br i1 %797, label %798, label %805

798:                                              ; preds = %794
  %799 = getelementptr inbounds %struct.DagAdjList, ptr %795, i64 0, i32 1
  %800 = load i16, ptr %799, align 8, !tbaa !106
  %801 = or i16 %800, 4
  store i16 %801, ptr %799, align 8, !tbaa !106
  %802 = getelementptr inbounds %struct.DagAdjList, ptr %795, i64 0, i32 2
  %803 = load i32, ptr %802, align 4, !tbaa !114
  %804 = add nsw i32 %803, 1
  store i32 %804, ptr %802, align 4, !tbaa !114
  br label %817

805:                                              ; preds = %794
  %806 = getelementptr inbounds %struct.DagAdjList, ptr %795, i64 0, i32 5
  %807 = load ptr, ptr %806, align 8, !tbaa !34
  %808 = icmp eq ptr %807, null
  br i1 %808, label %809, label %794, !llvm.loop !115

809:                                              ; preds = %805, %793
  %810 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %811 = call ptr %810(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %505, ptr %811, align 8, !tbaa !105
  %812 = getelementptr inbounds %struct.DagAdjList, ptr %811, i64 0, i32 1
  store i16 4, ptr %812, align 8, !tbaa !106
  %813 = getelementptr inbounds %struct.DagAdjList, ptr %811, i64 0, i32 2
  store i32 1, ptr %813, align 4, !tbaa !114
  %814 = load ptr, ptr %741, align 8, !tbaa !87
  %815 = getelementptr inbounds %struct.DagAdjList, ptr %811, i64 0, i32 5
  store ptr %814, ptr %815, align 8, !tbaa !84
  %816 = getelementptr inbounds %struct.DagAdjList, ptr %811, i64 0, i32 4
  store ptr @.str.29, ptr %816, align 8, !tbaa !116
  store ptr %811, ptr %741, align 8, !tbaa !87
  br label %817

817:                                              ; preds = %809, %798
  %818 = icmp eq ptr %740, null
  br i1 %818, label %834, label %819

819:                                              ; preds = %817, %830
  %820 = phi ptr [ %832, %830 ], [ %740, %817 ]
  %821 = load ptr, ptr %820, align 8, !tbaa !105
  %822 = icmp eq ptr %821, %49
  br i1 %822, label %823, label %830

823:                                              ; preds = %819
  %824 = getelementptr inbounds %struct.DagAdjList, ptr %820, i64 0, i32 1
  %825 = load i16, ptr %824, align 8, !tbaa !106
  %826 = or i16 %825, 4
  store i16 %826, ptr %824, align 8, !tbaa !106
  %827 = getelementptr inbounds %struct.DagAdjList, ptr %820, i64 0, i32 2
  %828 = load i32, ptr %827, align 4, !tbaa !114
  %829 = add nsw i32 %828, 1
  store i32 %829, ptr %827, align 4, !tbaa !114
  br label %896

830:                                              ; preds = %819
  %831 = getelementptr inbounds %struct.DagAdjList, ptr %820, i64 0, i32 5
  %832 = load ptr, ptr %831, align 8, !tbaa !84
  %833 = icmp eq ptr %832, null
  br i1 %833, label %834, label %819, !llvm.loop !117

834:                                              ; preds = %830, %817
  %835 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %836 = call ptr %835(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %836, align 8, !tbaa !105
  %837 = getelementptr inbounds %struct.DagAdjList, ptr %836, i64 0, i32 1
  store i16 4, ptr %837, align 8, !tbaa !106
  %838 = getelementptr inbounds %struct.DagAdjList, ptr %836, i64 0, i32 2
  store i32 1, ptr %838, align 4, !tbaa !114
  %839 = load ptr, ptr %739, align 8, !tbaa !82
  %840 = getelementptr inbounds %struct.DagAdjList, ptr %836, i64 0, i32 5
  store ptr %839, ptr %840, align 8, !tbaa !84
  %841 = getelementptr inbounds %struct.DagAdjList, ptr %836, i64 0, i32 4
  store ptr @.str.29, ptr %841, align 8, !tbaa !116
  store ptr %836, ptr %739, align 8, !tbaa !82
  br label %896

842:                                              ; preds = %674
  %843 = getelementptr inbounds %struct.DagNode, ptr %505, i64 0, i32 16
  %844 = load ptr, ptr %843, align 8, !tbaa !82
  %845 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %846 = load ptr, ptr %845, align 8, !tbaa !34
  %847 = icmp eq ptr %846, null
  br i1 %847, label %863, label %848

848:                                              ; preds = %842, %859
  %849 = phi ptr [ %861, %859 ], [ %846, %842 ]
  %850 = load ptr, ptr %849, align 8, !tbaa !105
  %851 = icmp eq ptr %850, %505
  br i1 %851, label %852, label %859

852:                                              ; preds = %848
  %853 = getelementptr inbounds %struct.DagAdjList, ptr %849, i64 0, i32 1
  %854 = load i16, ptr %853, align 8, !tbaa !106
  %855 = or i16 %854, 4
  store i16 %855, ptr %853, align 8, !tbaa !106
  %856 = getelementptr inbounds %struct.DagAdjList, ptr %849, i64 0, i32 2
  %857 = load i32, ptr %856, align 4, !tbaa !114
  %858 = add nsw i32 %857, 1
  store i32 %858, ptr %856, align 4, !tbaa !114
  br label %871

859:                                              ; preds = %848
  %860 = getelementptr inbounds %struct.DagAdjList, ptr %849, i64 0, i32 5
  %861 = load ptr, ptr %860, align 8, !tbaa !34
  %862 = icmp eq ptr %861, null
  br i1 %862, label %863, label %848, !llvm.loop !115

863:                                              ; preds = %859, %842
  %864 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %865 = call ptr %864(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %505, ptr %865, align 8, !tbaa !105
  %866 = getelementptr inbounds %struct.DagAdjList, ptr %865, i64 0, i32 1
  store i16 4, ptr %866, align 8, !tbaa !106
  %867 = getelementptr inbounds %struct.DagAdjList, ptr %865, i64 0, i32 2
  store i32 1, ptr %867, align 4, !tbaa !114
  %868 = load ptr, ptr %845, align 8, !tbaa !87
  %869 = getelementptr inbounds %struct.DagAdjList, ptr %865, i64 0, i32 5
  store ptr %868, ptr %869, align 8, !tbaa !84
  %870 = getelementptr inbounds %struct.DagAdjList, ptr %865, i64 0, i32 4
  store ptr @.str.25, ptr %870, align 8, !tbaa !116
  store ptr %865, ptr %845, align 8, !tbaa !87
  br label %871

871:                                              ; preds = %863, %852
  %872 = icmp eq ptr %844, null
  br i1 %872, label %888, label %873

873:                                              ; preds = %871, %884
  %874 = phi ptr [ %886, %884 ], [ %844, %871 ]
  %875 = load ptr, ptr %874, align 8, !tbaa !105
  %876 = icmp eq ptr %875, %49
  br i1 %876, label %877, label %884

877:                                              ; preds = %873
  %878 = getelementptr inbounds %struct.DagAdjList, ptr %874, i64 0, i32 1
  %879 = load i16, ptr %878, align 8, !tbaa !106
  %880 = or i16 %879, 4
  store i16 %880, ptr %878, align 8, !tbaa !106
  %881 = getelementptr inbounds %struct.DagAdjList, ptr %874, i64 0, i32 2
  %882 = load i32, ptr %881, align 4, !tbaa !114
  %883 = add nsw i32 %882, 1
  store i32 %883, ptr %881, align 4, !tbaa !114
  br label %896

884:                                              ; preds = %873
  %885 = getelementptr inbounds %struct.DagAdjList, ptr %874, i64 0, i32 5
  %886 = load ptr, ptr %885, align 8, !tbaa !84
  %887 = icmp eq ptr %886, null
  br i1 %887, label %888, label %873, !llvm.loop !117

888:                                              ; preds = %884, %871
  %889 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %890 = call ptr %889(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %890, align 8, !tbaa !105
  %891 = getelementptr inbounds %struct.DagAdjList, ptr %890, i64 0, i32 1
  store i16 4, ptr %891, align 8, !tbaa !106
  %892 = getelementptr inbounds %struct.DagAdjList, ptr %890, i64 0, i32 2
  store i32 1, ptr %892, align 4, !tbaa !114
  %893 = load ptr, ptr %843, align 8, !tbaa !82
  %894 = getelementptr inbounds %struct.DagAdjList, ptr %890, i64 0, i32 5
  store ptr %893, ptr %894, align 8, !tbaa !84
  %895 = getelementptr inbounds %struct.DagAdjList, ptr %890, i64 0, i32 4
  store ptr @.str.25, ptr %895, align 8, !tbaa !116
  store ptr %890, ptr %843, align 8, !tbaa !82
  br label %896

896:                                              ; preds = %888, %877, %834, %823, %785, %774, %724, %713, %666, %655, %554, %543, %616
  %897 = load i16, ptr %157, align 8, !tbaa !120
  %898 = icmp eq i16 %897, 5
  br i1 %898, label %899, label %959

899:                                              ; preds = %896
  %900 = load ptr, ptr %462, align 8, !tbaa !143
  %901 = getelementptr inbounds %struct.Object, ptr %900, i64 0, i32 55
  %902 = load i16, ptr %901, align 8, !tbaa !148
  %903 = and i16 %902, 16
  %904 = icmp eq i16 %903, 0
  br i1 %904, label %959, label %905

905:                                              ; preds = %899
  %906 = getelementptr inbounds %struct.DagNode, ptr %505, i64 0, i32 16
  %907 = load ptr, ptr %906, align 8, !tbaa !82
  %908 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %909 = load ptr, ptr %908, align 8, !tbaa !34
  %910 = icmp eq ptr %909, null
  br i1 %910, label %926, label %911

911:                                              ; preds = %905, %922
  %912 = phi ptr [ %924, %922 ], [ %909, %905 ]
  %913 = load ptr, ptr %912, align 8, !tbaa !105
  %914 = icmp eq ptr %913, %505
  br i1 %914, label %915, label %922

915:                                              ; preds = %911
  %916 = getelementptr inbounds %struct.DagAdjList, ptr %912, i64 0, i32 1
  %917 = load i16, ptr %916, align 8, !tbaa !106
  %918 = or i16 %917, 36
  store i16 %918, ptr %916, align 8, !tbaa !106
  %919 = getelementptr inbounds %struct.DagAdjList, ptr %912, i64 0, i32 2
  %920 = load i32, ptr %919, align 4, !tbaa !114
  %921 = add nsw i32 %920, 1
  store i32 %921, ptr %919, align 4, !tbaa !114
  br label %934

922:                                              ; preds = %911
  %923 = getelementptr inbounds %struct.DagAdjList, ptr %912, i64 0, i32 5
  %924 = load ptr, ptr %923, align 8, !tbaa !34
  %925 = icmp eq ptr %924, null
  br i1 %925, label %926, label %911, !llvm.loop !115

926:                                              ; preds = %922, %905
  %927 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %928 = call ptr %927(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %505, ptr %928, align 8, !tbaa !105
  %929 = getelementptr inbounds %struct.DagAdjList, ptr %928, i64 0, i32 1
  store i16 36, ptr %929, align 8, !tbaa !106
  %930 = getelementptr inbounds %struct.DagAdjList, ptr %928, i64 0, i32 2
  store i32 1, ptr %930, align 4, !tbaa !114
  %931 = load ptr, ptr %908, align 8, !tbaa !87
  %932 = getelementptr inbounds %struct.DagAdjList, ptr %928, i64 0, i32 5
  store ptr %931, ptr %932, align 8, !tbaa !84
  %933 = getelementptr inbounds %struct.DagAdjList, ptr %928, i64 0, i32 4
  store ptr @.str.30, ptr %933, align 8, !tbaa !116
  store ptr %928, ptr %908, align 8, !tbaa !87
  br label %934

934:                                              ; preds = %926, %915
  %935 = icmp eq ptr %907, null
  br i1 %935, label %951, label %936

936:                                              ; preds = %934, %947
  %937 = phi ptr [ %949, %947 ], [ %907, %934 ]
  %938 = load ptr, ptr %937, align 8, !tbaa !105
  %939 = icmp eq ptr %938, %49
  br i1 %939, label %940, label %947

940:                                              ; preds = %936
  %941 = getelementptr inbounds %struct.DagAdjList, ptr %937, i64 0, i32 1
  %942 = load i16, ptr %941, align 8, !tbaa !106
  %943 = or i16 %942, 36
  store i16 %943, ptr %941, align 8, !tbaa !106
  %944 = getelementptr inbounds %struct.DagAdjList, ptr %937, i64 0, i32 2
  %945 = load i32, ptr %944, align 4, !tbaa !114
  %946 = add nsw i32 %945, 1
  store i32 %946, ptr %944, align 4, !tbaa !114
  br label %959

947:                                              ; preds = %936
  %948 = getelementptr inbounds %struct.DagAdjList, ptr %937, i64 0, i32 5
  %949 = load ptr, ptr %948, align 8, !tbaa !84
  %950 = icmp eq ptr %949, null
  br i1 %950, label %951, label %936, !llvm.loop !117

951:                                              ; preds = %947, %934
  %952 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %953 = call ptr %952(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %953, align 8, !tbaa !105
  %954 = getelementptr inbounds %struct.DagAdjList, ptr %953, i64 0, i32 1
  store i16 36, ptr %954, align 8, !tbaa !106
  %955 = getelementptr inbounds %struct.DagAdjList, ptr %953, i64 0, i32 2
  store i32 1, ptr %955, align 4, !tbaa !114
  %956 = load ptr, ptr %906, align 8, !tbaa !82
  %957 = getelementptr inbounds %struct.DagAdjList, ptr %953, i64 0, i32 5
  store ptr %956, ptr %957, align 8, !tbaa !84
  %958 = getelementptr inbounds %struct.DagAdjList, ptr %953, i64 0, i32 4
  store ptr @.str.30, ptr %958, align 8, !tbaa !116
  store ptr %953, ptr %906, align 8, !tbaa !82
  br label %959

959:                                              ; preds = %951, %940, %896, %899, %461
  %960 = phi i32 [ 1, %461 ], [ 0, %899 ], [ 0, %896 ], [ 0, %940 ], [ 0, %951 ]
  %961 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 11
  %962 = load ptr, ptr %961, align 8, !tbaa !100
  %963 = icmp eq ptr %962, null
  br i1 %963, label %1058, label %964

964:                                              ; preds = %959
  %965 = load ptr, ptr %9, align 8, !tbaa !91
  %966 = icmp eq ptr %965, null
  br i1 %966, label %969, label %967

967:                                              ; preds = %964
  %968 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %965, ptr noundef nonnull %962) #17
  br label %969

969:                                              ; preds = %967, %964
  %970 = phi ptr [ %968, %967 ], [ null, %964 ]
  %971 = icmp eq ptr %970, null
  br i1 %971, label %972, label %1003

972:                                              ; preds = %969
  %973 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %974 = call ptr %973(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %975 = icmp eq ptr %974, null
  br i1 %975, label %1003, label %976

976:                                              ; preds = %972
  %977 = getelementptr inbounds %struct.DagNode, ptr %974, i64 0, i32 5
  store ptr %962, ptr %977, align 8, !tbaa !92
  store i32 0, ptr %974, align 8, !tbaa !93
  %978 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %979 = load i8, ptr %978, align 4, !tbaa !55
  %980 = icmp eq i8 %979, 0
  br i1 %980, label %985, label %981

981:                                              ; preds = %976
  %982 = getelementptr inbounds %struct.ID, ptr %962, i64 0, i32 4
  %983 = load i16, ptr %982, align 8, !tbaa !94
  %984 = getelementptr inbounds %struct.DagNode, ptr %974, i64 0, i32 1
  store i16 %983, ptr %984, align 4, !tbaa !95
  br label %985

985:                                              ; preds = %981, %976
  %986 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %987 = load i32, ptr %986, align 8, !tbaa !96
  %988 = icmp eq i32 %987, 0
  %989 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %988, label %994, label %990

990:                                              ; preds = %985
  %991 = load ptr, ptr %989, align 8, !tbaa !97
  %992 = getelementptr inbounds %struct.DagNode, ptr %991, i64 0, i32 18
  store ptr %974, ptr %992, align 8, !tbaa !89
  store ptr %974, ptr %989, align 8, !tbaa !97
  %993 = add nsw i32 %987, 1
  br label %995

994:                                              ; preds = %985
  store ptr %974, ptr %989, align 8, !tbaa !97
  store ptr %974, ptr %0, align 8, !tbaa !81
  br label %995

995:                                              ; preds = %994, %990
  %996 = phi i32 [ 1, %994 ], [ %993, %990 ]
  store i32 %996, ptr %986, align 8, !tbaa !96
  %997 = load ptr, ptr %9, align 8, !tbaa !91
  %998 = icmp eq ptr %997, null
  br i1 %998, label %999, label %1001

999:                                              ; preds = %995
  %1000 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %1000, ptr %9, align 8, !tbaa !91
  br label %1001

1001:                                             ; preds = %999, %995
  %1002 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %1002, ptr noundef nonnull %962, ptr noundef nonnull %974) #17
  br label %1003

1003:                                             ; preds = %1001, %972, %969
  %1004 = phi ptr [ %970, %969 ], [ %974, %972 ], [ %974, %1001 ]
  %1005 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 16
  %1006 = load ptr, ptr %1005, align 8, !tbaa !82
  %1007 = getelementptr inbounds %struct.DagNode, ptr %1004, i64 0, i32 17
  %1008 = load ptr, ptr %1007, align 8, !tbaa !34
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1025, label %1010

1010:                                             ; preds = %1003, %1021
  %1011 = phi ptr [ %1023, %1021 ], [ %1008, %1003 ]
  %1012 = load ptr, ptr %1011, align 8, !tbaa !105
  %1013 = icmp eq ptr %1012, %49
  br i1 %1013, label %1014, label %1021

1014:                                             ; preds = %1010
  %1015 = getelementptr inbounds %struct.DagAdjList, ptr %1011, i64 0, i32 1
  %1016 = load i16, ptr %1015, align 8, !tbaa !106
  %1017 = or i16 %1016, 36
  store i16 %1017, ptr %1015, align 8, !tbaa !106
  %1018 = getelementptr inbounds %struct.DagAdjList, ptr %1011, i64 0, i32 2
  %1019 = load i32, ptr %1018, align 4, !tbaa !114
  %1020 = add nsw i32 %1019, 1
  store i32 %1020, ptr %1018, align 4, !tbaa !114
  br label %1033

1021:                                             ; preds = %1010
  %1022 = getelementptr inbounds %struct.DagAdjList, ptr %1011, i64 0, i32 5
  %1023 = load ptr, ptr %1022, align 8, !tbaa !34
  %1024 = icmp eq ptr %1023, null
  br i1 %1024, label %1025, label %1010, !llvm.loop !115

1025:                                             ; preds = %1021, %1003
  %1026 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1027 = call ptr %1026(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %1027, align 8, !tbaa !105
  %1028 = getelementptr inbounds %struct.DagAdjList, ptr %1027, i64 0, i32 1
  store i16 36, ptr %1028, align 8, !tbaa !106
  %1029 = getelementptr inbounds %struct.DagAdjList, ptr %1027, i64 0, i32 2
  store i32 1, ptr %1029, align 4, !tbaa !114
  %1030 = load ptr, ptr %1007, align 8, !tbaa !87
  %1031 = getelementptr inbounds %struct.DagAdjList, ptr %1027, i64 0, i32 5
  store ptr %1030, ptr %1031, align 8, !tbaa !84
  %1032 = getelementptr inbounds %struct.DagAdjList, ptr %1027, i64 0, i32 4
  store ptr @.str.31, ptr %1032, align 8, !tbaa !116
  store ptr %1027, ptr %1007, align 8, !tbaa !87
  br label %1033

1033:                                             ; preds = %1025, %1014
  %1034 = icmp eq ptr %1006, null
  br i1 %1034, label %1050, label %1035

1035:                                             ; preds = %1033, %1046
  %1036 = phi ptr [ %1048, %1046 ], [ %1006, %1033 ]
  %1037 = load ptr, ptr %1036, align 8, !tbaa !105
  %1038 = icmp eq ptr %1037, %1004
  br i1 %1038, label %1039, label %1046

1039:                                             ; preds = %1035
  %1040 = getelementptr inbounds %struct.DagAdjList, ptr %1036, i64 0, i32 1
  %1041 = load i16, ptr %1040, align 8, !tbaa !106
  %1042 = or i16 %1041, 36
  store i16 %1042, ptr %1040, align 8, !tbaa !106
  %1043 = getelementptr inbounds %struct.DagAdjList, ptr %1036, i64 0, i32 2
  %1044 = load i32, ptr %1043, align 4, !tbaa !114
  %1045 = add nsw i32 %1044, 1
  store i32 %1045, ptr %1043, align 4, !tbaa !114
  br label %1058

1046:                                             ; preds = %1035
  %1047 = getelementptr inbounds %struct.DagAdjList, ptr %1036, i64 0, i32 5
  %1048 = load ptr, ptr %1047, align 8, !tbaa !84
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1050, label %1035, !llvm.loop !117

1050:                                             ; preds = %1046, %1033
  %1051 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1052 = call ptr %1051(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %1004, ptr %1052, align 8, !tbaa !105
  %1053 = getelementptr inbounds %struct.DagAdjList, ptr %1052, i64 0, i32 1
  store i16 36, ptr %1053, align 8, !tbaa !106
  %1054 = getelementptr inbounds %struct.DagAdjList, ptr %1052, i64 0, i32 2
  store i32 1, ptr %1054, align 4, !tbaa !114
  %1055 = load ptr, ptr %1005, align 8, !tbaa !82
  %1056 = getelementptr inbounds %struct.DagAdjList, ptr %1052, i64 0, i32 5
  store ptr %1055, ptr %1056, align 8, !tbaa !84
  %1057 = getelementptr inbounds %struct.DagAdjList, ptr %1052, i64 0, i32 4
  store ptr @.str.31, ptr %1057, align 8, !tbaa !116
  store ptr %1052, ptr %1005, align 8, !tbaa !82
  br label %1058

1058:                                             ; preds = %1050, %1039, %959
  %1059 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %1060 = load i16, ptr %1059, align 8, !tbaa !148
  %1061 = and i16 %1060, 256
  %1062 = icmp eq i16 %1061, 0
  br i1 %1062, label %1175, label %1063

1063:                                             ; preds = %1058
  %1064 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 112
  %1065 = load ptr, ptr %1064, align 8, !tbaa !103
  %1066 = icmp eq ptr %1065, null
  br i1 %1066, label %1175, label %1067

1067:                                             ; preds = %1063
  %1068 = getelementptr inbounds %struct.Group, ptr %1065, i64 0, i32 1
  %1069 = load ptr, ptr %1068, align 8, !tbaa !34
  %1070 = icmp eq ptr %1069, null
  br i1 %1070, label %1175, label %1071

1071:                                             ; preds = %1067
  %1072 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %1073 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %1074 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %1075 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %1076 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  br label %1077

1077:                                             ; preds = %1071, %1172
  %1078 = phi ptr [ %1069, %1071 ], [ %1173, %1172 ]
  %1079 = getelementptr inbounds %struct.GroupObject, ptr %1078, i64 0, i32 2
  %1080 = load ptr, ptr %1079, align 8, !tbaa !149
  %1081 = icmp eq ptr %1080, null
  br i1 %1081, label %1172, label %1082

1082:                                             ; preds = %1077
  %1083 = load ptr, ptr %9, align 8, !tbaa !91
  %1084 = icmp eq ptr %1083, null
  br i1 %1084, label %1087, label %1085

1085:                                             ; preds = %1082
  %1086 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %1083, ptr noundef nonnull %1080) #17
  br label %1087

1087:                                             ; preds = %1085, %1082
  %1088 = phi ptr [ %1086, %1085 ], [ null, %1082 ]
  %1089 = icmp eq ptr %1088, null
  br i1 %1089, label %1090, label %1118

1090:                                             ; preds = %1087
  %1091 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %1092 = call ptr %1091(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %1093 = icmp eq ptr %1092, null
  br i1 %1093, label %1118, label %1094

1094:                                             ; preds = %1090
  %1095 = getelementptr inbounds %struct.DagNode, ptr %1092, i64 0, i32 5
  store ptr %1080, ptr %1095, align 8, !tbaa !92
  store i32 0, ptr %1092, align 8, !tbaa !93
  %1096 = load i8, ptr %1072, align 4, !tbaa !55
  %1097 = icmp eq i8 %1096, 0
  br i1 %1097, label %1102, label %1098

1098:                                             ; preds = %1094
  %1099 = getelementptr inbounds %struct.ID, ptr %1080, i64 0, i32 4
  %1100 = load i16, ptr %1099, align 8, !tbaa !94
  %1101 = getelementptr inbounds %struct.DagNode, ptr %1092, i64 0, i32 1
  store i16 %1100, ptr %1101, align 4, !tbaa !95
  br label %1102

1102:                                             ; preds = %1098, %1094
  %1103 = load i32, ptr %1073, align 8, !tbaa !96
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1109, label %1105

1105:                                             ; preds = %1102
  %1106 = load ptr, ptr %1074, align 8, !tbaa !97
  %1107 = getelementptr inbounds %struct.DagNode, ptr %1106, i64 0, i32 18
  store ptr %1092, ptr %1107, align 8, !tbaa !89
  store ptr %1092, ptr %1074, align 8, !tbaa !97
  %1108 = add nsw i32 %1103, 1
  br label %1110

1109:                                             ; preds = %1102
  store ptr %1092, ptr %1075, align 8, !tbaa !97
  store ptr %1092, ptr %0, align 8, !tbaa !81
  br label %1110

1110:                                             ; preds = %1109, %1105
  %1111 = phi i32 [ 1, %1109 ], [ %1108, %1105 ]
  store i32 %1111, ptr %1073, align 8, !tbaa !96
  %1112 = load ptr, ptr %9, align 8, !tbaa !91
  %1113 = icmp eq ptr %1112, null
  br i1 %1113, label %1114, label %1116

1114:                                             ; preds = %1110
  %1115 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %1115, ptr %9, align 8, !tbaa !91
  br label %1116

1116:                                             ; preds = %1114, %1110
  %1117 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %1117, ptr noundef nonnull %1080, ptr noundef nonnull %1092) #17
  br label %1118

1118:                                             ; preds = %1116, %1090, %1087
  %1119 = phi ptr [ %1088, %1087 ], [ %1092, %1090 ], [ %1092, %1116 ]
  %1120 = getelementptr inbounds %struct.DagNode, ptr %1119, i64 0, i32 16
  %1121 = load ptr, ptr %1120, align 8, !tbaa !82
  %1122 = load ptr, ptr %1076, align 8, !tbaa !34
  %1123 = icmp eq ptr %1122, null
  br i1 %1123, label %1139, label %1124

1124:                                             ; preds = %1118, %1135
  %1125 = phi ptr [ %1137, %1135 ], [ %1122, %1118 ]
  %1126 = load ptr, ptr %1125, align 8, !tbaa !105
  %1127 = icmp eq ptr %1126, %1119
  br i1 %1127, label %1128, label %1135

1128:                                             ; preds = %1124
  %1129 = getelementptr inbounds %struct.DagAdjList, ptr %1125, i64 0, i32 1
  %1130 = load i16, ptr %1129, align 8, !tbaa !106
  %1131 = or i16 %1130, 4
  store i16 %1131, ptr %1129, align 8, !tbaa !106
  %1132 = getelementptr inbounds %struct.DagAdjList, ptr %1125, i64 0, i32 2
  %1133 = load i32, ptr %1132, align 4, !tbaa !114
  %1134 = add nsw i32 %1133, 1
  store i32 %1134, ptr %1132, align 4, !tbaa !114
  br label %1147

1135:                                             ; preds = %1124
  %1136 = getelementptr inbounds %struct.DagAdjList, ptr %1125, i64 0, i32 5
  %1137 = load ptr, ptr %1136, align 8, !tbaa !34
  %1138 = icmp eq ptr %1137, null
  br i1 %1138, label %1139, label %1124, !llvm.loop !115

1139:                                             ; preds = %1135, %1118
  %1140 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1141 = call ptr %1140(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %1119, ptr %1141, align 8, !tbaa !105
  %1142 = getelementptr inbounds %struct.DagAdjList, ptr %1141, i64 0, i32 1
  store i16 4, ptr %1142, align 8, !tbaa !106
  %1143 = getelementptr inbounds %struct.DagAdjList, ptr %1141, i64 0, i32 2
  store i32 1, ptr %1143, align 4, !tbaa !114
  %1144 = load ptr, ptr %1076, align 8, !tbaa !87
  %1145 = getelementptr inbounds %struct.DagAdjList, ptr %1141, i64 0, i32 5
  store ptr %1144, ptr %1145, align 8, !tbaa !84
  %1146 = getelementptr inbounds %struct.DagAdjList, ptr %1141, i64 0, i32 4
  store ptr @.str.32, ptr %1146, align 8, !tbaa !116
  store ptr %1141, ptr %1076, align 8, !tbaa !87
  br label %1147

1147:                                             ; preds = %1139, %1128
  %1148 = icmp eq ptr %1121, null
  br i1 %1148, label %1164, label %1149

1149:                                             ; preds = %1147, %1160
  %1150 = phi ptr [ %1162, %1160 ], [ %1121, %1147 ]
  %1151 = load ptr, ptr %1150, align 8, !tbaa !105
  %1152 = icmp eq ptr %1151, %49
  br i1 %1152, label %1153, label %1160

1153:                                             ; preds = %1149
  %1154 = getelementptr inbounds %struct.DagAdjList, ptr %1150, i64 0, i32 1
  %1155 = load i16, ptr %1154, align 8, !tbaa !106
  %1156 = or i16 %1155, 4
  store i16 %1156, ptr %1154, align 8, !tbaa !106
  %1157 = getelementptr inbounds %struct.DagAdjList, ptr %1150, i64 0, i32 2
  %1158 = load i32, ptr %1157, align 4, !tbaa !114
  %1159 = add nsw i32 %1158, 1
  store i32 %1159, ptr %1157, align 4, !tbaa !114
  br label %1172

1160:                                             ; preds = %1149
  %1161 = getelementptr inbounds %struct.DagAdjList, ptr %1150, i64 0, i32 5
  %1162 = load ptr, ptr %1161, align 8, !tbaa !84
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1164, label %1149, !llvm.loop !117

1164:                                             ; preds = %1160, %1147
  %1165 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1166 = call ptr %1165(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %1166, align 8, !tbaa !105
  %1167 = getelementptr inbounds %struct.DagAdjList, ptr %1166, i64 0, i32 1
  store i16 4, ptr %1167, align 8, !tbaa !106
  %1168 = getelementptr inbounds %struct.DagAdjList, ptr %1166, i64 0, i32 2
  store i32 1, ptr %1168, align 4, !tbaa !114
  %1169 = load ptr, ptr %1120, align 8, !tbaa !82
  %1170 = getelementptr inbounds %struct.DagAdjList, ptr %1166, i64 0, i32 5
  store ptr %1169, ptr %1170, align 8, !tbaa !84
  %1171 = getelementptr inbounds %struct.DagAdjList, ptr %1166, i64 0, i32 4
  store ptr @.str.32, ptr %1171, align 8, !tbaa !116
  store ptr %1166, ptr %1120, align 8, !tbaa !82
  br label %1172

1172:                                             ; preds = %1164, %1153, %1077
  %1173 = load ptr, ptr %1078, align 8, !tbaa !34
  %1174 = icmp eq ptr %1173, null
  br i1 %1174, label %1175, label %1077, !llvm.loop !151

1175:                                             ; preds = %1172, %1067, %1063, %1058
  %1176 = load i16, ptr %157, align 8, !tbaa !120
  switch i16 %1176, label %1200 [
    i16 1, label %1177
    i16 2, label %1177
    i16 22, label %1177
  ]

1177:                                             ; preds = %1175, %1175, %1175
  %1178 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 109
  %1179 = load ptr, ptr %1178, align 8, !tbaa !152
  %1180 = icmp eq ptr %1179, null
  br i1 %1180, label %1181, label %1190

1181:                                             ; preds = %1177
  %1182 = call zeroext i8 @modifiers_isModifierEnabled(ptr noundef %3, i32 noundef 10) #17
  %1183 = icmp eq i8 %1182, 0
  br i1 %1183, label %1184, label %1190

1184:                                             ; preds = %1181
  %1185 = call zeroext i8 @modifiers_isModifierEnabled(ptr noundef %3, i32 noundef 22) #17
  %1186 = icmp eq i8 %1185, 0
  br i1 %1186, label %1187, label %1190

1187:                                             ; preds = %1184
  %1188 = call zeroext i8 @modifiers_isModifierEnabled(ptr noundef %3, i32 noundef 40) #17
  %1189 = icmp eq i8 %1188, 0
  br i1 %1189, label %1191, label %1190

1190:                                             ; preds = %1187, %1184, %1181, %1177
  call fastcc void @dag_add_collision_field_relation(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %49, i32 noundef 0, i8 noundef zeroext 0)
  br label %1200

1191:                                             ; preds = %1187
  %1192 = call zeroext i8 @modifiers_isModifierEnabled(ptr noundef %3, i32 noundef 31) #17
  %1193 = icmp eq i8 %1192, 0
  br i1 %1193, label %1195, label %1194

1194:                                             ; preds = %1191
  call fastcc void @dag_add_collision_field_relation(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %49, i32 noundef 13, i8 noundef zeroext 0)
  br label %1200

1195:                                             ; preds = %1191
  %1196 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 128
  %1197 = load ptr, ptr %1196, align 8, !tbaa !153
  %1198 = icmp eq ptr %1197, null
  br i1 %1198, label %1200, label %1199

1199:                                             ; preds = %1195
  call fastcc void @dag_add_collision_field_relation(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %49, i32 noundef 0, i8 noundef zeroext 1)
  br label %1200

1200:                                             ; preds = %1175, %1190, %1195, %1199, %1194
  %1201 = load ptr, ptr %50, align 8, !tbaa !113
  %1202 = icmp eq ptr %1201, null
  br i1 %1202, label %1207, label %1203

1203:                                             ; preds = %1200
  %1204 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %1201) #17
  %1205 = icmp eq ptr %1204, null
  br i1 %1205, label %1207, label %1206

1206:                                             ; preds = %1203
  call fastcc void @dag_add_driver_relation(ptr noundef nonnull %1204, ptr noundef %0, ptr noundef %49, i32 noundef 1)
  br label %1207

1207:                                             ; preds = %1203, %1206, %1200
  %1208 = load i16, ptr %157, align 8, !tbaa !120
  switch i16 %1208, label %1820 [
    i16 11, label %1209
    i16 5, label %1308
    i16 2, label %1405
    i16 4, label %1405
  ]

1209:                                             ; preds = %1207
  %1210 = load ptr, ptr %50, align 8, !tbaa !113
  %1211 = getelementptr inbounds %struct.Camera, ptr %1210, i64 0, i32 17
  %1212 = load ptr, ptr %1211, align 8, !tbaa !154
  %1213 = icmp eq ptr %1212, null
  br i1 %1213, label %1820, label %1214

1214:                                             ; preds = %1209
  %1215 = load ptr, ptr %9, align 8, !tbaa !91
  %1216 = icmp eq ptr %1215, null
  br i1 %1216, label %1219, label %1217

1217:                                             ; preds = %1214
  %1218 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %1215, ptr noundef nonnull %1212) #17
  br label %1219

1219:                                             ; preds = %1217, %1214
  %1220 = phi ptr [ %1218, %1217 ], [ null, %1214 ]
  %1221 = icmp eq ptr %1220, null
  br i1 %1221, label %1222, label %1253

1222:                                             ; preds = %1219
  %1223 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %1224 = call ptr %1223(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %1225 = icmp eq ptr %1224, null
  br i1 %1225, label %1253, label %1226

1226:                                             ; preds = %1222
  %1227 = getelementptr inbounds %struct.DagNode, ptr %1224, i64 0, i32 5
  store ptr %1212, ptr %1227, align 8, !tbaa !92
  store i32 0, ptr %1224, align 8, !tbaa !93
  %1228 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %1229 = load i8, ptr %1228, align 4, !tbaa !55
  %1230 = icmp eq i8 %1229, 0
  br i1 %1230, label %1235, label %1231

1231:                                             ; preds = %1226
  %1232 = getelementptr inbounds %struct.ID, ptr %1212, i64 0, i32 4
  %1233 = load i16, ptr %1232, align 8, !tbaa !94
  %1234 = getelementptr inbounds %struct.DagNode, ptr %1224, i64 0, i32 1
  store i16 %1233, ptr %1234, align 4, !tbaa !95
  br label %1235

1235:                                             ; preds = %1231, %1226
  %1236 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %1237 = load i32, ptr %1236, align 8, !tbaa !96
  %1238 = icmp eq i32 %1237, 0
  %1239 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %1238, label %1244, label %1240

1240:                                             ; preds = %1235
  %1241 = load ptr, ptr %1239, align 8, !tbaa !97
  %1242 = getelementptr inbounds %struct.DagNode, ptr %1241, i64 0, i32 18
  store ptr %1224, ptr %1242, align 8, !tbaa !89
  store ptr %1224, ptr %1239, align 8, !tbaa !97
  %1243 = add nsw i32 %1237, 1
  br label %1245

1244:                                             ; preds = %1235
  store ptr %1224, ptr %1239, align 8, !tbaa !97
  store ptr %1224, ptr %0, align 8, !tbaa !81
  br label %1245

1245:                                             ; preds = %1244, %1240
  %1246 = phi i32 [ 1, %1244 ], [ %1243, %1240 ]
  store i32 %1246, ptr %1236, align 8, !tbaa !96
  %1247 = load ptr, ptr %9, align 8, !tbaa !91
  %1248 = icmp eq ptr %1247, null
  br i1 %1248, label %1249, label %1251

1249:                                             ; preds = %1245
  %1250 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %1250, ptr %9, align 8, !tbaa !91
  br label %1251

1251:                                             ; preds = %1249, %1245
  %1252 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %1252, ptr noundef nonnull %1212, ptr noundef nonnull %1224) #17
  br label %1253

1253:                                             ; preds = %1251, %1222, %1219
  %1254 = phi ptr [ %1220, %1219 ], [ %1224, %1222 ], [ %1224, %1251 ]
  %1255 = getelementptr inbounds %struct.DagNode, ptr %1254, i64 0, i32 16
  %1256 = load ptr, ptr %1255, align 8, !tbaa !82
  %1257 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %1258 = load ptr, ptr %1257, align 8, !tbaa !34
  %1259 = icmp eq ptr %1258, null
  br i1 %1259, label %1275, label %1260

1260:                                             ; preds = %1253, %1271
  %1261 = phi ptr [ %1273, %1271 ], [ %1258, %1253 ]
  %1262 = load ptr, ptr %1261, align 8, !tbaa !105
  %1263 = icmp eq ptr %1262, %1254
  br i1 %1263, label %1264, label %1271

1264:                                             ; preds = %1260
  %1265 = getelementptr inbounds %struct.DagAdjList, ptr %1261, i64 0, i32 1
  %1266 = load i16, ptr %1265, align 8, !tbaa !106
  %1267 = or i16 %1266, 4
  store i16 %1267, ptr %1265, align 8, !tbaa !106
  %1268 = getelementptr inbounds %struct.DagAdjList, ptr %1261, i64 0, i32 2
  %1269 = load i32, ptr %1268, align 4, !tbaa !114
  %1270 = add nsw i32 %1269, 1
  store i32 %1270, ptr %1268, align 4, !tbaa !114
  br label %1283

1271:                                             ; preds = %1260
  %1272 = getelementptr inbounds %struct.DagAdjList, ptr %1261, i64 0, i32 5
  %1273 = load ptr, ptr %1272, align 8, !tbaa !34
  %1274 = icmp eq ptr %1273, null
  br i1 %1274, label %1275, label %1260, !llvm.loop !115

1275:                                             ; preds = %1271, %1253
  %1276 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1277 = call ptr %1276(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %1254, ptr %1277, align 8, !tbaa !105
  %1278 = getelementptr inbounds %struct.DagAdjList, ptr %1277, i64 0, i32 1
  store i16 4, ptr %1278, align 8, !tbaa !106
  %1279 = getelementptr inbounds %struct.DagAdjList, ptr %1277, i64 0, i32 2
  store i32 1, ptr %1279, align 4, !tbaa !114
  %1280 = load ptr, ptr %1257, align 8, !tbaa !87
  %1281 = getelementptr inbounds %struct.DagAdjList, ptr %1277, i64 0, i32 5
  store ptr %1280, ptr %1281, align 8, !tbaa !84
  %1282 = getelementptr inbounds %struct.DagAdjList, ptr %1277, i64 0, i32 4
  store ptr @.str.33, ptr %1282, align 8, !tbaa !116
  store ptr %1277, ptr %1257, align 8, !tbaa !87
  br label %1283

1283:                                             ; preds = %1275, %1264
  %1284 = icmp eq ptr %1256, null
  br i1 %1284, label %1300, label %1285

1285:                                             ; preds = %1283, %1296
  %1286 = phi ptr [ %1298, %1296 ], [ %1256, %1283 ]
  %1287 = load ptr, ptr %1286, align 8, !tbaa !105
  %1288 = icmp eq ptr %1287, %49
  br i1 %1288, label %1289, label %1296

1289:                                             ; preds = %1285
  %1290 = getelementptr inbounds %struct.DagAdjList, ptr %1286, i64 0, i32 1
  %1291 = load i16, ptr %1290, align 8, !tbaa !106
  %1292 = or i16 %1291, 4
  store i16 %1292, ptr %1290, align 8, !tbaa !106
  %1293 = getelementptr inbounds %struct.DagAdjList, ptr %1286, i64 0, i32 2
  %1294 = load i32, ptr %1293, align 4, !tbaa !114
  %1295 = add nsw i32 %1294, 1
  store i32 %1295, ptr %1293, align 4, !tbaa !114
  br label %1820

1296:                                             ; preds = %1285
  %1297 = getelementptr inbounds %struct.DagAdjList, ptr %1286, i64 0, i32 5
  %1298 = load ptr, ptr %1297, align 8, !tbaa !84
  %1299 = icmp eq ptr %1298, null
  br i1 %1299, label %1300, label %1285, !llvm.loop !117

1300:                                             ; preds = %1296, %1283
  %1301 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1302 = call ptr %1301(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %1302, align 8, !tbaa !105
  %1303 = getelementptr inbounds %struct.DagAdjList, ptr %1302, i64 0, i32 1
  store i16 4, ptr %1303, align 8, !tbaa !106
  %1304 = getelementptr inbounds %struct.DagAdjList, ptr %1302, i64 0, i32 2
  store i32 1, ptr %1304, align 4, !tbaa !114
  %1305 = load ptr, ptr %1255, align 8, !tbaa !82
  %1306 = getelementptr inbounds %struct.DagAdjList, ptr %1302, i64 0, i32 5
  store ptr %1305, ptr %1306, align 8, !tbaa !84
  %1307 = getelementptr inbounds %struct.DagAdjList, ptr %1302, i64 0, i32 4
  store ptr @.str.33, ptr %1307, align 8, !tbaa !116
  store ptr %1302, ptr %1255, align 8, !tbaa !82
  br label %1820

1308:                                             ; preds = %1207
  %1309 = call ptr @BKE_mball_basis_find(ptr noundef %2, ptr noundef %3) #17
  %1310 = icmp eq ptr %1309, %3
  br i1 %1310, label %1820, label %1311

1311:                                             ; preds = %1308
  %1312 = load ptr, ptr %9, align 8, !tbaa !91
  %1313 = icmp eq ptr %1312, null
  br i1 %1313, label %1316, label %1314

1314:                                             ; preds = %1311
  %1315 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %1312, ptr noundef %1309) #17
  br label %1316

1316:                                             ; preds = %1314, %1311
  %1317 = phi ptr [ %1315, %1314 ], [ null, %1311 ]
  %1318 = icmp eq ptr %1317, null
  br i1 %1318, label %1319, label %1350

1319:                                             ; preds = %1316
  %1320 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %1321 = call ptr %1320(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %1322 = icmp eq ptr %1321, null
  br i1 %1322, label %1350, label %1323

1323:                                             ; preds = %1319
  %1324 = getelementptr inbounds %struct.DagNode, ptr %1321, i64 0, i32 5
  store ptr %1309, ptr %1324, align 8, !tbaa !92
  store i32 0, ptr %1321, align 8, !tbaa !93
  %1325 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %1326 = load i8, ptr %1325, align 4, !tbaa !55
  %1327 = icmp eq i8 %1326, 0
  br i1 %1327, label %1332, label %1328

1328:                                             ; preds = %1323
  %1329 = getelementptr inbounds %struct.ID, ptr %1309, i64 0, i32 4
  %1330 = load i16, ptr %1329, align 8, !tbaa !94
  %1331 = getelementptr inbounds %struct.DagNode, ptr %1321, i64 0, i32 1
  store i16 %1330, ptr %1331, align 4, !tbaa !95
  br label %1332

1332:                                             ; preds = %1328, %1323
  %1333 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %1334 = load i32, ptr %1333, align 8, !tbaa !96
  %1335 = icmp eq i32 %1334, 0
  %1336 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %1335, label %1341, label %1337

1337:                                             ; preds = %1332
  %1338 = load ptr, ptr %1336, align 8, !tbaa !97
  %1339 = getelementptr inbounds %struct.DagNode, ptr %1338, i64 0, i32 18
  store ptr %1321, ptr %1339, align 8, !tbaa !89
  store ptr %1321, ptr %1336, align 8, !tbaa !97
  %1340 = add nsw i32 %1334, 1
  br label %1342

1341:                                             ; preds = %1332
  store ptr %1321, ptr %1336, align 8, !tbaa !97
  store ptr %1321, ptr %0, align 8, !tbaa !81
  br label %1342

1342:                                             ; preds = %1341, %1337
  %1343 = phi i32 [ 1, %1341 ], [ %1340, %1337 ]
  store i32 %1343, ptr %1333, align 8, !tbaa !96
  %1344 = load ptr, ptr %9, align 8, !tbaa !91
  %1345 = icmp eq ptr %1344, null
  br i1 %1345, label %1346, label %1348

1346:                                             ; preds = %1342
  %1347 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %1347, ptr %9, align 8, !tbaa !91
  br label %1348

1348:                                             ; preds = %1346, %1342
  %1349 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %1349, ptr noundef %1309, ptr noundef nonnull %1321) #17
  br label %1350

1350:                                             ; preds = %1348, %1319, %1316
  %1351 = phi ptr [ %1317, %1316 ], [ %1321, %1319 ], [ %1321, %1348 ]
  %1352 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 16
  %1353 = load ptr, ptr %1352, align 8, !tbaa !82
  %1354 = getelementptr inbounds %struct.DagNode, ptr %1351, i64 0, i32 17
  %1355 = load ptr, ptr %1354, align 8, !tbaa !34
  %1356 = icmp eq ptr %1355, null
  br i1 %1356, label %1372, label %1357

1357:                                             ; preds = %1350, %1368
  %1358 = phi ptr [ %1370, %1368 ], [ %1355, %1350 ]
  %1359 = load ptr, ptr %1358, align 8, !tbaa !105
  %1360 = icmp eq ptr %1359, %49
  br i1 %1360, label %1361, label %1368

1361:                                             ; preds = %1357
  %1362 = getelementptr inbounds %struct.DagAdjList, ptr %1358, i64 0, i32 1
  %1363 = load i16, ptr %1362, align 8, !tbaa !106
  %1364 = or i16 %1363, 40
  store i16 %1364, ptr %1362, align 8, !tbaa !106
  %1365 = getelementptr inbounds %struct.DagAdjList, ptr %1358, i64 0, i32 2
  %1366 = load i32, ptr %1365, align 4, !tbaa !114
  %1367 = add nsw i32 %1366, 1
  store i32 %1367, ptr %1365, align 4, !tbaa !114
  br label %1380

1368:                                             ; preds = %1357
  %1369 = getelementptr inbounds %struct.DagAdjList, ptr %1358, i64 0, i32 5
  %1370 = load ptr, ptr %1369, align 8, !tbaa !34
  %1371 = icmp eq ptr %1370, null
  br i1 %1371, label %1372, label %1357, !llvm.loop !115

1372:                                             ; preds = %1368, %1350
  %1373 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1374 = call ptr %1373(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %1374, align 8, !tbaa !105
  %1375 = getelementptr inbounds %struct.DagAdjList, ptr %1374, i64 0, i32 1
  store i16 40, ptr %1375, align 8, !tbaa !106
  %1376 = getelementptr inbounds %struct.DagAdjList, ptr %1374, i64 0, i32 2
  store i32 1, ptr %1376, align 4, !tbaa !114
  %1377 = load ptr, ptr %1354, align 8, !tbaa !87
  %1378 = getelementptr inbounds %struct.DagAdjList, ptr %1374, i64 0, i32 5
  store ptr %1377, ptr %1378, align 8, !tbaa !84
  %1379 = getelementptr inbounds %struct.DagAdjList, ptr %1374, i64 0, i32 4
  store ptr @.str.34, ptr %1379, align 8, !tbaa !116
  store ptr %1374, ptr %1354, align 8, !tbaa !87
  br label %1380

1380:                                             ; preds = %1372, %1361
  %1381 = icmp eq ptr %1353, null
  br i1 %1381, label %1397, label %1382

1382:                                             ; preds = %1380, %1393
  %1383 = phi ptr [ %1395, %1393 ], [ %1353, %1380 ]
  %1384 = load ptr, ptr %1383, align 8, !tbaa !105
  %1385 = icmp eq ptr %1384, %1351
  br i1 %1385, label %1386, label %1393

1386:                                             ; preds = %1382
  %1387 = getelementptr inbounds %struct.DagAdjList, ptr %1383, i64 0, i32 1
  %1388 = load i16, ptr %1387, align 8, !tbaa !106
  %1389 = or i16 %1388, 40
  store i16 %1389, ptr %1387, align 8, !tbaa !106
  %1390 = getelementptr inbounds %struct.DagAdjList, ptr %1383, i64 0, i32 2
  %1391 = load i32, ptr %1390, align 4, !tbaa !114
  %1392 = add nsw i32 %1391, 1
  store i32 %1392, ptr %1390, align 4, !tbaa !114
  br label %1820

1393:                                             ; preds = %1382
  %1394 = getelementptr inbounds %struct.DagAdjList, ptr %1383, i64 0, i32 5
  %1395 = load ptr, ptr %1394, align 8, !tbaa !84
  %1396 = icmp eq ptr %1395, null
  br i1 %1396, label %1397, label %1382, !llvm.loop !117

1397:                                             ; preds = %1393, %1380
  %1398 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1399 = call ptr %1398(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %1351, ptr %1399, align 8, !tbaa !105
  %1400 = getelementptr inbounds %struct.DagAdjList, ptr %1399, i64 0, i32 1
  store i16 40, ptr %1400, align 8, !tbaa !106
  %1401 = getelementptr inbounds %struct.DagAdjList, ptr %1399, i64 0, i32 2
  store i32 1, ptr %1401, align 4, !tbaa !114
  %1402 = load ptr, ptr %1352, align 8, !tbaa !82
  %1403 = getelementptr inbounds %struct.DagAdjList, ptr %1399, i64 0, i32 5
  store ptr %1402, ptr %1403, align 8, !tbaa !84
  %1404 = getelementptr inbounds %struct.DagAdjList, ptr %1399, i64 0, i32 4
  store ptr @.str.34, ptr %1404, align 8, !tbaa !116
  store ptr %1399, ptr %1352, align 8, !tbaa !82
  br label %1820

1405:                                             ; preds = %1207, %1207
  %1406 = load ptr, ptr %50, align 8, !tbaa !113
  %1407 = getelementptr inbounds %struct.Curve, ptr %1406, i64 0, i32 5
  %1408 = load ptr, ptr %1407, align 8, !tbaa !156
  %1409 = icmp eq ptr %1408, null
  br i1 %1409, label %1504, label %1410

1410:                                             ; preds = %1405
  %1411 = load ptr, ptr %9, align 8, !tbaa !91
  %1412 = icmp eq ptr %1411, null
  br i1 %1412, label %1415, label %1413

1413:                                             ; preds = %1410
  %1414 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %1411, ptr noundef nonnull %1408) #17
  br label %1415

1415:                                             ; preds = %1413, %1410
  %1416 = phi ptr [ %1414, %1413 ], [ null, %1410 ]
  %1417 = icmp eq ptr %1416, null
  br i1 %1417, label %1418, label %1449

1418:                                             ; preds = %1415
  %1419 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %1420 = call ptr %1419(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %1421 = icmp eq ptr %1420, null
  br i1 %1421, label %1449, label %1422

1422:                                             ; preds = %1418
  %1423 = getelementptr inbounds %struct.DagNode, ptr %1420, i64 0, i32 5
  store ptr %1408, ptr %1423, align 8, !tbaa !92
  store i32 0, ptr %1420, align 8, !tbaa !93
  %1424 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %1425 = load i8, ptr %1424, align 4, !tbaa !55
  %1426 = icmp eq i8 %1425, 0
  br i1 %1426, label %1431, label %1427

1427:                                             ; preds = %1422
  %1428 = getelementptr inbounds %struct.ID, ptr %1408, i64 0, i32 4
  %1429 = load i16, ptr %1428, align 8, !tbaa !94
  %1430 = getelementptr inbounds %struct.DagNode, ptr %1420, i64 0, i32 1
  store i16 %1429, ptr %1430, align 4, !tbaa !95
  br label %1431

1431:                                             ; preds = %1427, %1422
  %1432 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %1433 = load i32, ptr %1432, align 8, !tbaa !96
  %1434 = icmp eq i32 %1433, 0
  %1435 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %1434, label %1440, label %1436

1436:                                             ; preds = %1431
  %1437 = load ptr, ptr %1435, align 8, !tbaa !97
  %1438 = getelementptr inbounds %struct.DagNode, ptr %1437, i64 0, i32 18
  store ptr %1420, ptr %1438, align 8, !tbaa !89
  store ptr %1420, ptr %1435, align 8, !tbaa !97
  %1439 = add nsw i32 %1433, 1
  br label %1441

1440:                                             ; preds = %1431
  store ptr %1420, ptr %1435, align 8, !tbaa !97
  store ptr %1420, ptr %0, align 8, !tbaa !81
  br label %1441

1441:                                             ; preds = %1440, %1436
  %1442 = phi i32 [ 1, %1440 ], [ %1439, %1436 ]
  store i32 %1442, ptr %1432, align 8, !tbaa !96
  %1443 = load ptr, ptr %9, align 8, !tbaa !91
  %1444 = icmp eq ptr %1443, null
  br i1 %1444, label %1445, label %1447

1445:                                             ; preds = %1441
  %1446 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %1446, ptr %9, align 8, !tbaa !91
  br label %1447

1447:                                             ; preds = %1445, %1441
  %1448 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %1448, ptr noundef nonnull %1408, ptr noundef nonnull %1420) #17
  br label %1449

1449:                                             ; preds = %1447, %1418, %1415
  %1450 = phi ptr [ %1416, %1415 ], [ %1420, %1418 ], [ %1420, %1447 ]
  %1451 = getelementptr inbounds %struct.DagNode, ptr %1450, i64 0, i32 16
  %1452 = load ptr, ptr %1451, align 8, !tbaa !82
  %1453 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %1454 = load ptr, ptr %1453, align 8, !tbaa !34
  %1455 = icmp eq ptr %1454, null
  br i1 %1455, label %1471, label %1456

1456:                                             ; preds = %1449, %1467
  %1457 = phi ptr [ %1469, %1467 ], [ %1454, %1449 ]
  %1458 = load ptr, ptr %1457, align 8, !tbaa !105
  %1459 = icmp eq ptr %1458, %1450
  br i1 %1459, label %1460, label %1467

1460:                                             ; preds = %1456
  %1461 = getelementptr inbounds %struct.DagAdjList, ptr %1457, i64 0, i32 1
  %1462 = load i16, ptr %1461, align 8, !tbaa !106
  %1463 = or i16 %1462, 40
  store i16 %1463, ptr %1461, align 8, !tbaa !106
  %1464 = getelementptr inbounds %struct.DagAdjList, ptr %1457, i64 0, i32 2
  %1465 = load i32, ptr %1464, align 4, !tbaa !114
  %1466 = add nsw i32 %1465, 1
  store i32 %1466, ptr %1464, align 4, !tbaa !114
  br label %1479

1467:                                             ; preds = %1456
  %1468 = getelementptr inbounds %struct.DagAdjList, ptr %1457, i64 0, i32 5
  %1469 = load ptr, ptr %1468, align 8, !tbaa !34
  %1470 = icmp eq ptr %1469, null
  br i1 %1470, label %1471, label %1456, !llvm.loop !115

1471:                                             ; preds = %1467, %1449
  %1472 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1473 = call ptr %1472(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %1450, ptr %1473, align 8, !tbaa !105
  %1474 = getelementptr inbounds %struct.DagAdjList, ptr %1473, i64 0, i32 1
  store i16 40, ptr %1474, align 8, !tbaa !106
  %1475 = getelementptr inbounds %struct.DagAdjList, ptr %1473, i64 0, i32 2
  store i32 1, ptr %1475, align 4, !tbaa !114
  %1476 = load ptr, ptr %1453, align 8, !tbaa !87
  %1477 = getelementptr inbounds %struct.DagAdjList, ptr %1473, i64 0, i32 5
  store ptr %1476, ptr %1477, align 8, !tbaa !84
  %1478 = getelementptr inbounds %struct.DagAdjList, ptr %1473, i64 0, i32 4
  store ptr @.str.35, ptr %1478, align 8, !tbaa !116
  store ptr %1473, ptr %1453, align 8, !tbaa !87
  br label %1479

1479:                                             ; preds = %1471, %1460
  %1480 = icmp eq ptr %1452, null
  br i1 %1480, label %1496, label %1481

1481:                                             ; preds = %1479, %1492
  %1482 = phi ptr [ %1494, %1492 ], [ %1452, %1479 ]
  %1483 = load ptr, ptr %1482, align 8, !tbaa !105
  %1484 = icmp eq ptr %1483, %49
  br i1 %1484, label %1485, label %1492

1485:                                             ; preds = %1481
  %1486 = getelementptr inbounds %struct.DagAdjList, ptr %1482, i64 0, i32 1
  %1487 = load i16, ptr %1486, align 8, !tbaa !106
  %1488 = or i16 %1487, 40
  store i16 %1488, ptr %1486, align 8, !tbaa !106
  %1489 = getelementptr inbounds %struct.DagAdjList, ptr %1482, i64 0, i32 2
  %1490 = load i32, ptr %1489, align 4, !tbaa !114
  %1491 = add nsw i32 %1490, 1
  store i32 %1491, ptr %1489, align 4, !tbaa !114
  br label %1504

1492:                                             ; preds = %1481
  %1493 = getelementptr inbounds %struct.DagAdjList, ptr %1482, i64 0, i32 5
  %1494 = load ptr, ptr %1493, align 8, !tbaa !84
  %1495 = icmp eq ptr %1494, null
  br i1 %1495, label %1496, label %1481, !llvm.loop !117

1496:                                             ; preds = %1492, %1479
  %1497 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1498 = call ptr %1497(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %1498, align 8, !tbaa !105
  %1499 = getelementptr inbounds %struct.DagAdjList, ptr %1498, i64 0, i32 1
  store i16 40, ptr %1499, align 8, !tbaa !106
  %1500 = getelementptr inbounds %struct.DagAdjList, ptr %1498, i64 0, i32 2
  store i32 1, ptr %1500, align 4, !tbaa !114
  %1501 = load ptr, ptr %1451, align 8, !tbaa !82
  %1502 = getelementptr inbounds %struct.DagAdjList, ptr %1498, i64 0, i32 5
  store ptr %1501, ptr %1502, align 8, !tbaa !84
  %1503 = getelementptr inbounds %struct.DagAdjList, ptr %1498, i64 0, i32 4
  store ptr @.str.35, ptr %1503, align 8, !tbaa !116
  store ptr %1498, ptr %1451, align 8, !tbaa !82
  br label %1504

1504:                                             ; preds = %1496, %1485, %1405
  %1505 = getelementptr inbounds %struct.Curve, ptr %1406, i64 0, i32 6
  %1506 = load ptr, ptr %1505, align 8, !tbaa !157
  %1507 = icmp eq ptr %1506, null
  br i1 %1507, label %1602, label %1508

1508:                                             ; preds = %1504
  %1509 = load ptr, ptr %9, align 8, !tbaa !91
  %1510 = icmp eq ptr %1509, null
  br i1 %1510, label %1513, label %1511

1511:                                             ; preds = %1508
  %1512 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %1509, ptr noundef nonnull %1506) #17
  br label %1513

1513:                                             ; preds = %1511, %1508
  %1514 = phi ptr [ %1512, %1511 ], [ null, %1508 ]
  %1515 = icmp eq ptr %1514, null
  br i1 %1515, label %1516, label %1547

1516:                                             ; preds = %1513
  %1517 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %1518 = call ptr %1517(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %1519 = icmp eq ptr %1518, null
  br i1 %1519, label %1547, label %1520

1520:                                             ; preds = %1516
  %1521 = getelementptr inbounds %struct.DagNode, ptr %1518, i64 0, i32 5
  store ptr %1506, ptr %1521, align 8, !tbaa !92
  store i32 0, ptr %1518, align 8, !tbaa !93
  %1522 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %1523 = load i8, ptr %1522, align 4, !tbaa !55
  %1524 = icmp eq i8 %1523, 0
  br i1 %1524, label %1529, label %1525

1525:                                             ; preds = %1520
  %1526 = getelementptr inbounds %struct.ID, ptr %1506, i64 0, i32 4
  %1527 = load i16, ptr %1526, align 8, !tbaa !94
  %1528 = getelementptr inbounds %struct.DagNode, ptr %1518, i64 0, i32 1
  store i16 %1527, ptr %1528, align 4, !tbaa !95
  br label %1529

1529:                                             ; preds = %1525, %1520
  %1530 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %1531 = load i32, ptr %1530, align 8, !tbaa !96
  %1532 = icmp eq i32 %1531, 0
  %1533 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %1532, label %1538, label %1534

1534:                                             ; preds = %1529
  %1535 = load ptr, ptr %1533, align 8, !tbaa !97
  %1536 = getelementptr inbounds %struct.DagNode, ptr %1535, i64 0, i32 18
  store ptr %1518, ptr %1536, align 8, !tbaa !89
  store ptr %1518, ptr %1533, align 8, !tbaa !97
  %1537 = add nsw i32 %1531, 1
  br label %1539

1538:                                             ; preds = %1529
  store ptr %1518, ptr %1533, align 8, !tbaa !97
  store ptr %1518, ptr %0, align 8, !tbaa !81
  br label %1539

1539:                                             ; preds = %1538, %1534
  %1540 = phi i32 [ 1, %1538 ], [ %1537, %1534 ]
  store i32 %1540, ptr %1530, align 8, !tbaa !96
  %1541 = load ptr, ptr %9, align 8, !tbaa !91
  %1542 = icmp eq ptr %1541, null
  br i1 %1542, label %1543, label %1545

1543:                                             ; preds = %1539
  %1544 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %1544, ptr %9, align 8, !tbaa !91
  br label %1545

1545:                                             ; preds = %1543, %1539
  %1546 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %1546, ptr noundef nonnull %1506, ptr noundef nonnull %1518) #17
  br label %1547

1547:                                             ; preds = %1545, %1516, %1513
  %1548 = phi ptr [ %1514, %1513 ], [ %1518, %1516 ], [ %1518, %1545 ]
  %1549 = getelementptr inbounds %struct.DagNode, ptr %1548, i64 0, i32 16
  %1550 = load ptr, ptr %1549, align 8, !tbaa !82
  %1551 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %1552 = load ptr, ptr %1551, align 8, !tbaa !34
  %1553 = icmp eq ptr %1552, null
  br i1 %1553, label %1569, label %1554

1554:                                             ; preds = %1547, %1565
  %1555 = phi ptr [ %1567, %1565 ], [ %1552, %1547 ]
  %1556 = load ptr, ptr %1555, align 8, !tbaa !105
  %1557 = icmp eq ptr %1556, %1548
  br i1 %1557, label %1558, label %1565

1558:                                             ; preds = %1554
  %1559 = getelementptr inbounds %struct.DagAdjList, ptr %1555, i64 0, i32 1
  %1560 = load i16, ptr %1559, align 8, !tbaa !106
  %1561 = or i16 %1560, 40
  store i16 %1561, ptr %1559, align 8, !tbaa !106
  %1562 = getelementptr inbounds %struct.DagAdjList, ptr %1555, i64 0, i32 2
  %1563 = load i32, ptr %1562, align 4, !tbaa !114
  %1564 = add nsw i32 %1563, 1
  store i32 %1564, ptr %1562, align 4, !tbaa !114
  br label %1577

1565:                                             ; preds = %1554
  %1566 = getelementptr inbounds %struct.DagAdjList, ptr %1555, i64 0, i32 5
  %1567 = load ptr, ptr %1566, align 8, !tbaa !34
  %1568 = icmp eq ptr %1567, null
  br i1 %1568, label %1569, label %1554, !llvm.loop !115

1569:                                             ; preds = %1565, %1547
  %1570 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1571 = call ptr %1570(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %1548, ptr %1571, align 8, !tbaa !105
  %1572 = getelementptr inbounds %struct.DagAdjList, ptr %1571, i64 0, i32 1
  store i16 40, ptr %1572, align 8, !tbaa !106
  %1573 = getelementptr inbounds %struct.DagAdjList, ptr %1571, i64 0, i32 2
  store i32 1, ptr %1573, align 4, !tbaa !114
  %1574 = load ptr, ptr %1551, align 8, !tbaa !87
  %1575 = getelementptr inbounds %struct.DagAdjList, ptr %1571, i64 0, i32 5
  store ptr %1574, ptr %1575, align 8, !tbaa !84
  %1576 = getelementptr inbounds %struct.DagAdjList, ptr %1571, i64 0, i32 4
  store ptr @.str.36, ptr %1576, align 8, !tbaa !116
  store ptr %1571, ptr %1551, align 8, !tbaa !87
  br label %1577

1577:                                             ; preds = %1569, %1558
  %1578 = icmp eq ptr %1550, null
  br i1 %1578, label %1594, label %1579

1579:                                             ; preds = %1577, %1590
  %1580 = phi ptr [ %1592, %1590 ], [ %1550, %1577 ]
  %1581 = load ptr, ptr %1580, align 8, !tbaa !105
  %1582 = icmp eq ptr %1581, %49
  br i1 %1582, label %1583, label %1590

1583:                                             ; preds = %1579
  %1584 = getelementptr inbounds %struct.DagAdjList, ptr %1580, i64 0, i32 1
  %1585 = load i16, ptr %1584, align 8, !tbaa !106
  %1586 = or i16 %1585, 40
  store i16 %1586, ptr %1584, align 8, !tbaa !106
  %1587 = getelementptr inbounds %struct.DagAdjList, ptr %1580, i64 0, i32 2
  %1588 = load i32, ptr %1587, align 4, !tbaa !114
  %1589 = add nsw i32 %1588, 1
  store i32 %1589, ptr %1587, align 4, !tbaa !114
  br label %1602

1590:                                             ; preds = %1579
  %1591 = getelementptr inbounds %struct.DagAdjList, ptr %1580, i64 0, i32 5
  %1592 = load ptr, ptr %1591, align 8, !tbaa !84
  %1593 = icmp eq ptr %1592, null
  br i1 %1593, label %1594, label %1579, !llvm.loop !117

1594:                                             ; preds = %1590, %1577
  %1595 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1596 = call ptr %1595(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %1596, align 8, !tbaa !105
  %1597 = getelementptr inbounds %struct.DagAdjList, ptr %1596, i64 0, i32 1
  store i16 40, ptr %1597, align 8, !tbaa !106
  %1598 = getelementptr inbounds %struct.DagAdjList, ptr %1596, i64 0, i32 2
  store i32 1, ptr %1598, align 4, !tbaa !114
  %1599 = load ptr, ptr %1549, align 8, !tbaa !82
  %1600 = getelementptr inbounds %struct.DagAdjList, ptr %1596, i64 0, i32 5
  store ptr %1599, ptr %1600, align 8, !tbaa !84
  %1601 = getelementptr inbounds %struct.DagAdjList, ptr %1596, i64 0, i32 4
  store ptr @.str.36, ptr %1601, align 8, !tbaa !116
  store ptr %1596, ptr %1549, align 8, !tbaa !82
  br label %1602

1602:                                             ; preds = %1594, %1583, %1504
  %1603 = load i16, ptr %157, align 8, !tbaa !120
  %1604 = icmp eq i16 %1603, 4
  br i1 %1604, label %1605, label %1820

1605:                                             ; preds = %1602
  %1606 = getelementptr inbounds %struct.Curve, ptr %1406, i64 0, i32 54
  %1607 = load i8, ptr %1606, align 8, !tbaa !127
  %1608 = icmp eq i8 %1607, 10
  br i1 %1608, label %1719, label %1609

1609:                                             ; preds = %1605
  %1610 = load ptr, ptr @G, align 8, !tbaa !158
  %1611 = getelementptr inbounds %struct.Main, ptr %1610, i64 0, i32 46
  %1612 = load ptr, ptr %1611, align 8, !tbaa !160
  %1613 = call ptr @object_duplilist(ptr noundef %1612, ptr noundef %2, ptr noundef %3) #17
  %1614 = load ptr, ptr %1613, align 8, !tbaa !34
  %1615 = icmp eq ptr %1614, null
  br i1 %1615, label %1718, label %1616

1616:                                             ; preds = %1609
  %1617 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %1618 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %1619 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %1620 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %1621 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 16
  br label %1622

1622:                                             ; preds = %1616, %1715
  %1623 = phi ptr [ %1614, %1616 ], [ %1716, %1715 ]
  %1624 = getelementptr inbounds %struct.DupliObject, ptr %1623, i64 0, i32 2
  %1625 = load ptr, ptr %1624, align 8, !tbaa !162
  %1626 = load ptr, ptr %9, align 8, !tbaa !91
  %1627 = icmp eq ptr %1626, null
  br i1 %1627, label %1630, label %1628

1628:                                             ; preds = %1622
  %1629 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %1626, ptr noundef %1625) #17
  br label %1630

1630:                                             ; preds = %1628, %1622
  %1631 = phi ptr [ %1629, %1628 ], [ null, %1622 ]
  %1632 = icmp eq ptr %1631, null
  br i1 %1632, label %1633, label %1661

1633:                                             ; preds = %1630
  %1634 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %1635 = call ptr %1634(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %1636 = icmp eq ptr %1635, null
  br i1 %1636, label %1661, label %1637

1637:                                             ; preds = %1633
  %1638 = getelementptr inbounds %struct.DagNode, ptr %1635, i64 0, i32 5
  store ptr %1625, ptr %1638, align 8, !tbaa !92
  store i32 0, ptr %1635, align 8, !tbaa !93
  %1639 = load i8, ptr %1617, align 4, !tbaa !55
  %1640 = icmp eq i8 %1639, 0
  br i1 %1640, label %1645, label %1641

1641:                                             ; preds = %1637
  %1642 = getelementptr inbounds %struct.ID, ptr %1625, i64 0, i32 4
  %1643 = load i16, ptr %1642, align 8, !tbaa !94
  %1644 = getelementptr inbounds %struct.DagNode, ptr %1635, i64 0, i32 1
  store i16 %1643, ptr %1644, align 4, !tbaa !95
  br label %1645

1645:                                             ; preds = %1641, %1637
  %1646 = load i32, ptr %1618, align 8, !tbaa !96
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1652, label %1648

1648:                                             ; preds = %1645
  %1649 = load ptr, ptr %1619, align 8, !tbaa !97
  %1650 = getelementptr inbounds %struct.DagNode, ptr %1649, i64 0, i32 18
  store ptr %1635, ptr %1650, align 8, !tbaa !89
  store ptr %1635, ptr %1619, align 8, !tbaa !97
  %1651 = add nsw i32 %1646, 1
  br label %1653

1652:                                             ; preds = %1645
  store ptr %1635, ptr %1620, align 8, !tbaa !97
  store ptr %1635, ptr %0, align 8, !tbaa !81
  br label %1653

1653:                                             ; preds = %1652, %1648
  %1654 = phi i32 [ 1, %1652 ], [ %1651, %1648 ]
  store i32 %1654, ptr %1618, align 8, !tbaa !96
  %1655 = load ptr, ptr %9, align 8, !tbaa !91
  %1656 = icmp eq ptr %1655, null
  br i1 %1656, label %1657, label %1659

1657:                                             ; preds = %1653
  %1658 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %1658, ptr %9, align 8, !tbaa !91
  br label %1659

1659:                                             ; preds = %1657, %1653
  %1660 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %1660, ptr noundef %1625, ptr noundef nonnull %1635) #17
  br label %1661

1661:                                             ; preds = %1659, %1633, %1630
  %1662 = phi ptr [ %1631, %1630 ], [ %1635, %1633 ], [ %1635, %1659 ]
  %1663 = load ptr, ptr %1621, align 8, !tbaa !82
  %1664 = getelementptr inbounds %struct.DagNode, ptr %1662, i64 0, i32 17
  %1665 = load ptr, ptr %1664, align 8, !tbaa !34
  %1666 = icmp eq ptr %1665, null
  br i1 %1666, label %1682, label %1667

1667:                                             ; preds = %1661, %1678
  %1668 = phi ptr [ %1680, %1678 ], [ %1665, %1661 ]
  %1669 = load ptr, ptr %1668, align 8, !tbaa !105
  %1670 = icmp eq ptr %1669, %49
  br i1 %1670, label %1671, label %1678

1671:                                             ; preds = %1667
  %1672 = getelementptr inbounds %struct.DagAdjList, ptr %1668, i64 0, i32 1
  %1673 = load i16, ptr %1672, align 8, !tbaa !106
  %1674 = or i16 %1673, 40
  store i16 %1674, ptr %1672, align 8, !tbaa !106
  %1675 = getelementptr inbounds %struct.DagAdjList, ptr %1668, i64 0, i32 2
  %1676 = load i32, ptr %1675, align 4, !tbaa !114
  %1677 = add nsw i32 %1676, 1
  store i32 %1677, ptr %1675, align 4, !tbaa !114
  br label %1690

1678:                                             ; preds = %1667
  %1679 = getelementptr inbounds %struct.DagAdjList, ptr %1668, i64 0, i32 5
  %1680 = load ptr, ptr %1679, align 8, !tbaa !34
  %1681 = icmp eq ptr %1680, null
  br i1 %1681, label %1682, label %1667, !llvm.loop !115

1682:                                             ; preds = %1678, %1661
  %1683 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1684 = call ptr %1683(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %1684, align 8, !tbaa !105
  %1685 = getelementptr inbounds %struct.DagAdjList, ptr %1684, i64 0, i32 1
  store i16 40, ptr %1685, align 8, !tbaa !106
  %1686 = getelementptr inbounds %struct.DagAdjList, ptr %1684, i64 0, i32 2
  store i32 1, ptr %1686, align 4, !tbaa !114
  %1687 = load ptr, ptr %1664, align 8, !tbaa !87
  %1688 = getelementptr inbounds %struct.DagAdjList, ptr %1684, i64 0, i32 5
  store ptr %1687, ptr %1688, align 8, !tbaa !84
  %1689 = getelementptr inbounds %struct.DagAdjList, ptr %1684, i64 0, i32 4
  store ptr @.str.37, ptr %1689, align 8, !tbaa !116
  store ptr %1684, ptr %1664, align 8, !tbaa !87
  br label %1690

1690:                                             ; preds = %1682, %1671
  %1691 = icmp eq ptr %1663, null
  br i1 %1691, label %1707, label %1692

1692:                                             ; preds = %1690, %1703
  %1693 = phi ptr [ %1705, %1703 ], [ %1663, %1690 ]
  %1694 = load ptr, ptr %1693, align 8, !tbaa !105
  %1695 = icmp eq ptr %1694, %1662
  br i1 %1695, label %1696, label %1703

1696:                                             ; preds = %1692
  %1697 = getelementptr inbounds %struct.DagAdjList, ptr %1693, i64 0, i32 1
  %1698 = load i16, ptr %1697, align 8, !tbaa !106
  %1699 = or i16 %1698, 40
  store i16 %1699, ptr %1697, align 8, !tbaa !106
  %1700 = getelementptr inbounds %struct.DagAdjList, ptr %1693, i64 0, i32 2
  %1701 = load i32, ptr %1700, align 4, !tbaa !114
  %1702 = add nsw i32 %1701, 1
  store i32 %1702, ptr %1700, align 4, !tbaa !114
  br label %1715

1703:                                             ; preds = %1692
  %1704 = getelementptr inbounds %struct.DagAdjList, ptr %1693, i64 0, i32 5
  %1705 = load ptr, ptr %1704, align 8, !tbaa !84
  %1706 = icmp eq ptr %1705, null
  br i1 %1706, label %1707, label %1692, !llvm.loop !117

1707:                                             ; preds = %1703, %1690
  %1708 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1709 = call ptr %1708(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %1662, ptr %1709, align 8, !tbaa !105
  %1710 = getelementptr inbounds %struct.DagAdjList, ptr %1709, i64 0, i32 1
  store i16 40, ptr %1710, align 8, !tbaa !106
  %1711 = getelementptr inbounds %struct.DagAdjList, ptr %1709, i64 0, i32 2
  store i32 1, ptr %1711, align 4, !tbaa !114
  %1712 = load ptr, ptr %1621, align 8, !tbaa !82
  %1713 = getelementptr inbounds %struct.DagAdjList, ptr %1709, i64 0, i32 5
  store ptr %1712, ptr %1713, align 8, !tbaa !84
  %1714 = getelementptr inbounds %struct.DagAdjList, ptr %1709, i64 0, i32 4
  store ptr @.str.37, ptr %1714, align 8, !tbaa !116
  store ptr %1709, ptr %1621, align 8, !tbaa !82
  br label %1715

1715:                                             ; preds = %1696, %1707
  %1716 = load ptr, ptr %1623, align 8, !tbaa !34
  %1717 = icmp eq ptr %1716, null
  br i1 %1717, label %1718, label %1622, !llvm.loop !164

1718:                                             ; preds = %1715, %1609
  call void @free_object_duplilist(ptr noundef nonnull %1613) #17
  br label %1719

1719:                                             ; preds = %1718, %1605
  %1720 = getelementptr inbounds %struct.Curve, ptr %1406, i64 0, i32 7
  %1721 = load ptr, ptr %1720, align 8, !tbaa !165
  %1722 = icmp eq ptr %1721, null
  br i1 %1722, label %1820, label %1723

1723:                                             ; preds = %1719
  %1724 = load ptr, ptr %9, align 8, !tbaa !91
  %1725 = icmp eq ptr %1724, null
  br i1 %1725, label %1728, label %1726

1726:                                             ; preds = %1723
  %1727 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %1724, ptr noundef nonnull %1721) #17
  br label %1728

1728:                                             ; preds = %1726, %1723
  %1729 = phi ptr [ %1727, %1726 ], [ null, %1723 ]
  %1730 = icmp eq ptr %1729, null
  br i1 %1730, label %1731, label %1762

1731:                                             ; preds = %1728
  %1732 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %1733 = call ptr %1732(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %1734 = icmp eq ptr %1733, null
  br i1 %1734, label %1762, label %1735

1735:                                             ; preds = %1731
  %1736 = getelementptr inbounds %struct.DagNode, ptr %1733, i64 0, i32 5
  store ptr %1721, ptr %1736, align 8, !tbaa !92
  store i32 0, ptr %1733, align 8, !tbaa !93
  %1737 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %1738 = load i8, ptr %1737, align 4, !tbaa !55
  %1739 = icmp eq i8 %1738, 0
  br i1 %1739, label %1744, label %1740

1740:                                             ; preds = %1735
  %1741 = getelementptr inbounds %struct.ID, ptr %1721, i64 0, i32 4
  %1742 = load i16, ptr %1741, align 8, !tbaa !94
  %1743 = getelementptr inbounds %struct.DagNode, ptr %1733, i64 0, i32 1
  store i16 %1742, ptr %1743, align 4, !tbaa !95
  br label %1744

1744:                                             ; preds = %1740, %1735
  %1745 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %1746 = load i32, ptr %1745, align 8, !tbaa !96
  %1747 = icmp eq i32 %1746, 0
  %1748 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %1747, label %1753, label %1749

1749:                                             ; preds = %1744
  %1750 = load ptr, ptr %1748, align 8, !tbaa !97
  %1751 = getelementptr inbounds %struct.DagNode, ptr %1750, i64 0, i32 18
  store ptr %1733, ptr %1751, align 8, !tbaa !89
  store ptr %1733, ptr %1748, align 8, !tbaa !97
  %1752 = add nsw i32 %1746, 1
  br label %1754

1753:                                             ; preds = %1744
  store ptr %1733, ptr %1748, align 8, !tbaa !97
  store ptr %1733, ptr %0, align 8, !tbaa !81
  br label %1754

1754:                                             ; preds = %1753, %1749
  %1755 = phi i32 [ 1, %1753 ], [ %1752, %1749 ]
  store i32 %1755, ptr %1745, align 8, !tbaa !96
  %1756 = load ptr, ptr %9, align 8, !tbaa !91
  %1757 = icmp eq ptr %1756, null
  br i1 %1757, label %1758, label %1760

1758:                                             ; preds = %1754
  %1759 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %1759, ptr %9, align 8, !tbaa !91
  br label %1760

1760:                                             ; preds = %1758, %1754
  %1761 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %1761, ptr noundef nonnull %1721, ptr noundef nonnull %1733) #17
  br label %1762

1762:                                             ; preds = %1760, %1731, %1728
  %1763 = phi ptr [ %1729, %1728 ], [ %1733, %1731 ], [ %1733, %1760 ]
  %1764 = getelementptr inbounds %struct.DagNode, ptr %1763, i64 0, i32 21
  %1765 = load i16, ptr %1764, align 2, !tbaa !166
  %1766 = or i16 %1765, 1
  store i16 %1766, ptr %1764, align 2, !tbaa !166
  %1767 = getelementptr inbounds %struct.DagNode, ptr %1763, i64 0, i32 16
  %1768 = load ptr, ptr %1767, align 8, !tbaa !82
  %1769 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %1770 = load ptr, ptr %1769, align 8, !tbaa !34
  %1771 = icmp eq ptr %1770, null
  br i1 %1771, label %1787, label %1772

1772:                                             ; preds = %1762, %1783
  %1773 = phi ptr [ %1785, %1783 ], [ %1770, %1762 ]
  %1774 = load ptr, ptr %1773, align 8, !tbaa !105
  %1775 = icmp eq ptr %1774, %1763
  br i1 %1775, label %1776, label %1783

1776:                                             ; preds = %1772
  %1777 = getelementptr inbounds %struct.DagAdjList, ptr %1773, i64 0, i32 1
  %1778 = load i16, ptr %1777, align 8, !tbaa !106
  %1779 = or i16 %1778, 40
  store i16 %1779, ptr %1777, align 8, !tbaa !106
  %1780 = getelementptr inbounds %struct.DagAdjList, ptr %1773, i64 0, i32 2
  %1781 = load i32, ptr %1780, align 4, !tbaa !114
  %1782 = add nsw i32 %1781, 1
  store i32 %1782, ptr %1780, align 4, !tbaa !114
  br label %1795

1783:                                             ; preds = %1772
  %1784 = getelementptr inbounds %struct.DagAdjList, ptr %1773, i64 0, i32 5
  %1785 = load ptr, ptr %1784, align 8, !tbaa !34
  %1786 = icmp eq ptr %1785, null
  br i1 %1786, label %1787, label %1772, !llvm.loop !115

1787:                                             ; preds = %1783, %1762
  %1788 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1789 = call ptr %1788(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %1763, ptr %1789, align 8, !tbaa !105
  %1790 = getelementptr inbounds %struct.DagAdjList, ptr %1789, i64 0, i32 1
  store i16 40, ptr %1790, align 8, !tbaa !106
  %1791 = getelementptr inbounds %struct.DagAdjList, ptr %1789, i64 0, i32 2
  store i32 1, ptr %1791, align 4, !tbaa !114
  %1792 = load ptr, ptr %1769, align 8, !tbaa !87
  %1793 = getelementptr inbounds %struct.DagAdjList, ptr %1789, i64 0, i32 5
  store ptr %1792, ptr %1793, align 8, !tbaa !84
  %1794 = getelementptr inbounds %struct.DagAdjList, ptr %1789, i64 0, i32 4
  store ptr @.str.38, ptr %1794, align 8, !tbaa !116
  store ptr %1789, ptr %1769, align 8, !tbaa !87
  br label %1795

1795:                                             ; preds = %1787, %1776
  %1796 = icmp eq ptr %1768, null
  br i1 %1796, label %1812, label %1797

1797:                                             ; preds = %1795, %1808
  %1798 = phi ptr [ %1810, %1808 ], [ %1768, %1795 ]
  %1799 = load ptr, ptr %1798, align 8, !tbaa !105
  %1800 = icmp eq ptr %1799, %49
  br i1 %1800, label %1801, label %1808

1801:                                             ; preds = %1797
  %1802 = getelementptr inbounds %struct.DagAdjList, ptr %1798, i64 0, i32 1
  %1803 = load i16, ptr %1802, align 8, !tbaa !106
  %1804 = or i16 %1803, 40
  store i16 %1804, ptr %1802, align 8, !tbaa !106
  %1805 = getelementptr inbounds %struct.DagAdjList, ptr %1798, i64 0, i32 2
  %1806 = load i32, ptr %1805, align 4, !tbaa !114
  %1807 = add nsw i32 %1806, 1
  store i32 %1807, ptr %1805, align 4, !tbaa !114
  br label %1820

1808:                                             ; preds = %1797
  %1809 = getelementptr inbounds %struct.DagAdjList, ptr %1798, i64 0, i32 5
  %1810 = load ptr, ptr %1809, align 8, !tbaa !84
  %1811 = icmp eq ptr %1810, null
  br i1 %1811, label %1812, label %1797, !llvm.loop !117

1812:                                             ; preds = %1808, %1795
  %1813 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1814 = call ptr %1813(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %1814, align 8, !tbaa !105
  %1815 = getelementptr inbounds %struct.DagAdjList, ptr %1814, i64 0, i32 1
  store i16 40, ptr %1815, align 8, !tbaa !106
  %1816 = getelementptr inbounds %struct.DagAdjList, ptr %1814, i64 0, i32 2
  store i32 1, ptr %1816, align 4, !tbaa !114
  %1817 = load ptr, ptr %1767, align 8, !tbaa !82
  %1818 = getelementptr inbounds %struct.DagAdjList, ptr %1814, i64 0, i32 5
  store ptr %1817, ptr %1818, align 8, !tbaa !84
  %1819 = getelementptr inbounds %struct.DagAdjList, ptr %1814, i64 0, i32 4
  store ptr @.str.38, ptr %1819, align 8, !tbaa !116
  store ptr %1814, ptr %1767, align 8, !tbaa !82
  br label %1820

1820:                                             ; preds = %1812, %1801, %1397, %1386, %1300, %1289, %1602, %1719, %1308, %1209, %1207
  %1821 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %1822 = load i32, ptr %1821, align 8, !tbaa !167
  %1823 = icmp eq i32 %1822, 0
  br i1 %1823, label %1855, label %1824

1824:                                             ; preds = %1820
  %1825 = load i32, ptr %1821, align 8, !tbaa !167
  %1826 = icmp slt i32 %1825, 1
  br i1 %1826, label %1878, label %1827

1827:                                             ; preds = %1824, %1851
  %1828 = phi i32 [ %1852, %1851 ], [ 1, %1824 ]
  %1829 = trunc i32 %1828 to i16
  %1830 = call ptr @give_current_material(ptr noundef %3, i16 noundef signext %1829) #17
  %1831 = icmp eq ptr %1830, null
  br i1 %1831, label %1851, label %1832

1832:                                             ; preds = %1827
  %1833 = getelementptr inbounds %struct.ID, ptr %1830, i64 0, i32 5
  %1834 = load i16, ptr %1833, align 2, !tbaa !168
  %1835 = and i16 %1834, 1024
  %1836 = icmp eq i16 %1835, 0
  br i1 %1836, label %1837, label %1851

1837:                                             ; preds = %1832
  %1838 = or disjoint i16 %1834, 1024
  store i16 %1838, ptr %1833, align 2, !tbaa !168
  %1839 = getelementptr inbounds %struct.Material, ptr %1830, i64 0, i32 1
  %1840 = load ptr, ptr %1839, align 8, !tbaa !172
  %1841 = icmp eq ptr %1840, null
  br i1 %1841, label %1843, label %1842

1842:                                             ; preds = %1837
  call fastcc void @dag_add_driver_relation(ptr noundef nonnull %1840, ptr noundef %0, ptr noundef %49, i32 noundef 1)
  br label %1843

1843:                                             ; preds = %1842, %1837
  %1844 = getelementptr inbounds %struct.Material, ptr %1830, i64 0, i32 103
  %1845 = load ptr, ptr %1844, align 8, !tbaa !173
  %1846 = icmp eq ptr %1845, null
  br i1 %1846, label %1848, label %1847

1847:                                             ; preds = %1843
  call fastcc void @dag_add_shader_nodetree_driver_relations(ptr noundef %0, ptr noundef %49, ptr noundef nonnull %1845)
  br label %1848

1848:                                             ; preds = %1847, %1843
  %1849 = load i16, ptr %1833, align 2, !tbaa !168
  %1850 = and i16 %1849, -1025
  store i16 %1850, ptr %1833, align 2, !tbaa !168
  br label %1851

1851:                                             ; preds = %1848, %1832, %1827
  %1852 = add nuw nsw i32 %1828, 1
  %1853 = load i32, ptr %1821, align 8, !tbaa !167
  %1854 = icmp slt i32 %1828, %1853
  br i1 %1854, label %1827, label %1878, !llvm.loop !174

1855:                                             ; preds = %1820
  %1856 = load i16, ptr %157, align 8, !tbaa !120
  %1857 = icmp eq i16 %1856, 10
  br i1 %1857, label %1858, label %1878

1858:                                             ; preds = %1855
  %1859 = load ptr, ptr %50, align 8, !tbaa !113
  %1860 = getelementptr inbounds %struct.ID, ptr %1859, i64 0, i32 5
  %1861 = load i16, ptr %1860, align 2, !tbaa !175
  %1862 = and i16 %1861, 1024
  %1863 = icmp eq i16 %1862, 0
  br i1 %1863, label %1864, label %1878

1864:                                             ; preds = %1858
  %1865 = or disjoint i16 %1861, 1024
  store i16 %1865, ptr %1860, align 2, !tbaa !175
  %1866 = getelementptr inbounds %struct.Lamp, ptr %1859, i64 0, i32 1
  %1867 = load ptr, ptr %1866, align 8, !tbaa !177
  %1868 = icmp eq ptr %1867, null
  br i1 %1868, label %1870, label %1869

1869:                                             ; preds = %1864
  call fastcc void @dag_add_driver_relation(ptr noundef nonnull %1867, ptr noundef %0, ptr noundef %49, i32 noundef 1)
  br label %1870

1870:                                             ; preds = %1869, %1864
  %1871 = getelementptr inbounds %struct.Lamp, ptr %1859, i64 0, i32 74
  %1872 = load ptr, ptr %1871, align 8, !tbaa !178
  %1873 = icmp eq ptr %1872, null
  br i1 %1873, label %1875, label %1874

1874:                                             ; preds = %1870
  call fastcc void @dag_add_shader_nodetree_driver_relations(ptr noundef %0, ptr noundef %49, ptr noundef nonnull %1872)
  br label %1875

1875:                                             ; preds = %1874, %1870
  %1876 = load i16, ptr %1860, align 2, !tbaa !175
  %1877 = and i16 %1876, -1025
  store i16 %1877, ptr %1860, align 2, !tbaa !175
  br label %1878

1878:                                             ; preds = %1851, %1824, %1875, %1858, %1855
  %1879 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 109
  %1880 = load ptr, ptr %1879, align 8, !tbaa !152
  %1881 = icmp eq ptr %1880, null
  br i1 %1881, label %2574, label %1882

1882:                                             ; preds = %1878
  %1883 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 16
  %1884 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %1885 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %1886 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %1887 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %1888 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %1889 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %1890 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %1891 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %1892 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %1893 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %1894 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %1895 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %1896 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %1897 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %1898 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %1899 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %1900 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %1901 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %1902 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %1903 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %1904 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br label %1905

1905:                                             ; preds = %1882, %2571
  %1906 = phi ptr [ %1880, %1882 ], [ %2572, %2571 ]
  %1907 = getelementptr inbounds %struct.ParticleSystem, ptr %1906, i64 0, i32 2
  %1908 = load ptr, ptr %1907, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store ptr null, ptr %7, align 8, !tbaa !34
  %1909 = load ptr, ptr %1883, align 8, !tbaa !82
  %1910 = load ptr, ptr %1884, align 8, !tbaa !34
  %1911 = icmp eq ptr %1910, null
  br i1 %1911, label %1927, label %1912

1912:                                             ; preds = %1905, %1923
  %1913 = phi ptr [ %1925, %1923 ], [ %1910, %1905 ]
  %1914 = load ptr, ptr %1913, align 8, !tbaa !105
  %1915 = icmp eq ptr %1914, %49
  br i1 %1915, label %1916, label %1923

1916:                                             ; preds = %1912
  %1917 = getelementptr inbounds %struct.DagAdjList, ptr %1913, i64 0, i32 1
  %1918 = load i16, ptr %1917, align 8, !tbaa !106
  %1919 = or i16 %1918, 8
  store i16 %1919, ptr %1917, align 8, !tbaa !106
  %1920 = getelementptr inbounds %struct.DagAdjList, ptr %1913, i64 0, i32 2
  %1921 = load i32, ptr %1920, align 4, !tbaa !114
  %1922 = add nsw i32 %1921, 1
  store i32 %1922, ptr %1920, align 4, !tbaa !114
  br label %1935

1923:                                             ; preds = %1912
  %1924 = getelementptr inbounds %struct.DagAdjList, ptr %1913, i64 0, i32 5
  %1925 = load ptr, ptr %1924, align 8, !tbaa !34
  %1926 = icmp eq ptr %1925, null
  br i1 %1926, label %1927, label %1912, !llvm.loop !115

1927:                                             ; preds = %1923, %1905
  %1928 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1929 = call ptr %1928(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %1929, align 8, !tbaa !105
  %1930 = getelementptr inbounds %struct.DagAdjList, ptr %1929, i64 0, i32 1
  store i16 8, ptr %1930, align 8, !tbaa !106
  %1931 = getelementptr inbounds %struct.DagAdjList, ptr %1929, i64 0, i32 2
  store i32 1, ptr %1931, align 4, !tbaa !114
  %1932 = load ptr, ptr %1884, align 8, !tbaa !87
  %1933 = getelementptr inbounds %struct.DagAdjList, ptr %1929, i64 0, i32 5
  store ptr %1932, ptr %1933, align 8, !tbaa !84
  %1934 = getelementptr inbounds %struct.DagAdjList, ptr %1929, i64 0, i32 4
  store ptr @.str.39, ptr %1934, align 8, !tbaa !116
  store ptr %1929, ptr %1884, align 8, !tbaa !87
  br label %1935

1935:                                             ; preds = %1927, %1916
  %1936 = icmp eq ptr %1909, null
  br i1 %1936, label %1952, label %1937

1937:                                             ; preds = %1935, %1948
  %1938 = phi ptr [ %1950, %1948 ], [ %1909, %1935 ]
  %1939 = load ptr, ptr %1938, align 8, !tbaa !105
  %1940 = icmp eq ptr %1939, %49
  br i1 %1940, label %1941, label %1948

1941:                                             ; preds = %1937
  %1942 = getelementptr inbounds %struct.DagAdjList, ptr %1938, i64 0, i32 1
  %1943 = load i16, ptr %1942, align 8, !tbaa !106
  %1944 = or i16 %1943, 8
  store i16 %1944, ptr %1942, align 8, !tbaa !106
  %1945 = getelementptr inbounds %struct.DagAdjList, ptr %1938, i64 0, i32 2
  %1946 = load i32, ptr %1945, align 4, !tbaa !114
  %1947 = add nsw i32 %1946, 1
  store i32 %1947, ptr %1945, align 4, !tbaa !114
  br label %1960

1948:                                             ; preds = %1937
  %1949 = getelementptr inbounds %struct.DagAdjList, ptr %1938, i64 0, i32 5
  %1950 = load ptr, ptr %1949, align 8, !tbaa !84
  %1951 = icmp eq ptr %1950, null
  br i1 %1951, label %1952, label %1937, !llvm.loop !117

1952:                                             ; preds = %1948, %1935
  %1953 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %1954 = call ptr %1953(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %1954, align 8, !tbaa !105
  %1955 = getelementptr inbounds %struct.DagAdjList, ptr %1954, i64 0, i32 1
  store i16 8, ptr %1955, align 8, !tbaa !106
  %1956 = getelementptr inbounds %struct.DagAdjList, ptr %1954, i64 0, i32 2
  store i32 1, ptr %1956, align 4, !tbaa !114
  %1957 = load ptr, ptr %1883, align 8, !tbaa !82
  %1958 = getelementptr inbounds %struct.DagAdjList, ptr %1954, i64 0, i32 5
  store ptr %1957, ptr %1958, align 8, !tbaa !84
  %1959 = getelementptr inbounds %struct.DagAdjList, ptr %1954, i64 0, i32 4
  store ptr @.str.39, ptr %1959, align 8, !tbaa !116
  store ptr %1954, ptr %1883, align 8, !tbaa !82
  br label %1960

1960:                                             ; preds = %1941, %1952
  %1961 = call i32 @psys_check_enabled(ptr noundef %3, ptr noundef nonnull %1906) #17
  %1962 = icmp eq i32 %1961, 0
  br i1 %1962, label %2571, label %1963

1963:                                             ; preds = %1960
  %1964 = getelementptr inbounds %struct.ParticleSettings, ptr %1908, i64 0, i32 11
  %1965 = load i16, ptr %1964, align 8, !tbaa !181
  %1966 = and i16 %1965, -2
  %1967 = icmp eq i16 %1966, 2
  br i1 %1967, label %1968, label %2078

1968:                                             ; preds = %1963
  %1969 = getelementptr inbounds %struct.ParticleSystem, ptr %1906, i64 0, i32 17
  %1970 = load ptr, ptr %1969, align 8, !tbaa !34
  %1971 = icmp eq ptr %1970, null
  br i1 %1971, label %2078, label %1972

1972:                                             ; preds = %1968, %2075
  %1973 = phi ptr [ %2076, %2075 ], [ %1970, %1968 ]
  %1974 = getelementptr inbounds %struct.ParticleTarget, ptr %1973, i64 0, i32 2
  %1975 = load ptr, ptr %1974, align 8, !tbaa !183
  %1976 = icmp eq ptr %1975, null
  br i1 %1976, label %2075, label %1977

1977:                                             ; preds = %1972
  %1978 = getelementptr inbounds %struct.Object, ptr %1975, i64 0, i32 109
  %1979 = getelementptr inbounds %struct.ParticleTarget, ptr %1973, i64 0, i32 3
  %1980 = load i32, ptr %1979, align 8, !tbaa !185
  %1981 = add nsw i32 %1980, -1
  %1982 = call ptr @BLI_findlink(ptr noundef nonnull %1978, i32 noundef %1981) #17
  %1983 = icmp eq ptr %1982, null
  br i1 %1983, label %2075, label %1984

1984:                                             ; preds = %1977
  %1985 = load ptr, ptr %1974, align 8, !tbaa !183
  %1986 = load ptr, ptr %9, align 8, !tbaa !91
  %1987 = icmp eq ptr %1986, null
  br i1 %1987, label %1990, label %1988

1988:                                             ; preds = %1984
  %1989 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %1986, ptr noundef %1985) #17
  br label %1990

1990:                                             ; preds = %1988, %1984
  %1991 = phi ptr [ %1989, %1988 ], [ null, %1984 ]
  %1992 = icmp eq ptr %1991, null
  br i1 %1992, label %1993, label %2021

1993:                                             ; preds = %1990
  %1994 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %1995 = call ptr %1994(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %1996 = icmp eq ptr %1995, null
  br i1 %1996, label %2021, label %1997

1997:                                             ; preds = %1993
  %1998 = getelementptr inbounds %struct.DagNode, ptr %1995, i64 0, i32 5
  store ptr %1985, ptr %1998, align 8, !tbaa !92
  store i32 0, ptr %1995, align 8, !tbaa !93
  %1999 = load i8, ptr %1885, align 4, !tbaa !55
  %2000 = icmp eq i8 %1999, 0
  br i1 %2000, label %2005, label %2001

2001:                                             ; preds = %1997
  %2002 = getelementptr inbounds %struct.ID, ptr %1985, i64 0, i32 4
  %2003 = load i16, ptr %2002, align 8, !tbaa !94
  %2004 = getelementptr inbounds %struct.DagNode, ptr %1995, i64 0, i32 1
  store i16 %2003, ptr %2004, align 4, !tbaa !95
  br label %2005

2005:                                             ; preds = %2001, %1997
  %2006 = load i32, ptr %1886, align 8, !tbaa !96
  %2007 = icmp eq i32 %2006, 0
  br i1 %2007, label %2012, label %2008

2008:                                             ; preds = %2005
  %2009 = load ptr, ptr %1887, align 8, !tbaa !97
  %2010 = getelementptr inbounds %struct.DagNode, ptr %2009, i64 0, i32 18
  store ptr %1995, ptr %2010, align 8, !tbaa !89
  store ptr %1995, ptr %1887, align 8, !tbaa !97
  %2011 = add nsw i32 %2006, 1
  br label %2013

2012:                                             ; preds = %2005
  store ptr %1995, ptr %1888, align 8, !tbaa !97
  store ptr %1995, ptr %0, align 8, !tbaa !81
  br label %2013

2013:                                             ; preds = %2012, %2008
  %2014 = phi i32 [ 1, %2012 ], [ %2011, %2008 ]
  store i32 %2014, ptr %1886, align 8, !tbaa !96
  %2015 = load ptr, ptr %9, align 8, !tbaa !91
  %2016 = icmp eq ptr %2015, null
  br i1 %2016, label %2017, label %2019

2017:                                             ; preds = %2013
  %2018 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %2018, ptr %9, align 8, !tbaa !91
  br label %2019

2019:                                             ; preds = %2017, %2013
  %2020 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %2020, ptr noundef %1985, ptr noundef nonnull %1995) #17
  br label %2021

2021:                                             ; preds = %2019, %1993, %1990
  %2022 = phi ptr [ %1991, %1990 ], [ %1995, %1993 ], [ %1995, %2019 ]
  %2023 = getelementptr inbounds %struct.DagNode, ptr %2022, i64 0, i32 16
  %2024 = load ptr, ptr %2023, align 8, !tbaa !82
  %2025 = load ptr, ptr %1884, align 8, !tbaa !34
  %2026 = icmp eq ptr %2025, null
  br i1 %2026, label %2042, label %2027

2027:                                             ; preds = %2021, %2038
  %2028 = phi ptr [ %2040, %2038 ], [ %2025, %2021 ]
  %2029 = load ptr, ptr %2028, align 8, !tbaa !105
  %2030 = icmp eq ptr %2029, %2022
  br i1 %2030, label %2031, label %2038

2031:                                             ; preds = %2027
  %2032 = getelementptr inbounds %struct.DagAdjList, ptr %2028, i64 0, i32 1
  %2033 = load i16, ptr %2032, align 8, !tbaa !106
  %2034 = or i16 %2033, 40
  store i16 %2034, ptr %2032, align 8, !tbaa !106
  %2035 = getelementptr inbounds %struct.DagAdjList, ptr %2028, i64 0, i32 2
  %2036 = load i32, ptr %2035, align 4, !tbaa !114
  %2037 = add nsw i32 %2036, 1
  store i32 %2037, ptr %2035, align 4, !tbaa !114
  br label %2050

2038:                                             ; preds = %2027
  %2039 = getelementptr inbounds %struct.DagAdjList, ptr %2028, i64 0, i32 5
  %2040 = load ptr, ptr %2039, align 8, !tbaa !34
  %2041 = icmp eq ptr %2040, null
  br i1 %2041, label %2042, label %2027, !llvm.loop !115

2042:                                             ; preds = %2038, %2021
  %2043 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2044 = call ptr %2043(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2022, ptr %2044, align 8, !tbaa !105
  %2045 = getelementptr inbounds %struct.DagAdjList, ptr %2044, i64 0, i32 1
  store i16 40, ptr %2045, align 8, !tbaa !106
  %2046 = getelementptr inbounds %struct.DagAdjList, ptr %2044, i64 0, i32 2
  store i32 1, ptr %2046, align 4, !tbaa !114
  %2047 = load ptr, ptr %1884, align 8, !tbaa !87
  %2048 = getelementptr inbounds %struct.DagAdjList, ptr %2044, i64 0, i32 5
  store ptr %2047, ptr %2048, align 8, !tbaa !84
  %2049 = getelementptr inbounds %struct.DagAdjList, ptr %2044, i64 0, i32 4
  store ptr @.str.40, ptr %2049, align 8, !tbaa !116
  store ptr %2044, ptr %1884, align 8, !tbaa !87
  br label %2050

2050:                                             ; preds = %2042, %2031
  %2051 = icmp eq ptr %2024, null
  br i1 %2051, label %2067, label %2052

2052:                                             ; preds = %2050, %2063
  %2053 = phi ptr [ %2065, %2063 ], [ %2024, %2050 ]
  %2054 = load ptr, ptr %2053, align 8, !tbaa !105
  %2055 = icmp eq ptr %2054, %49
  br i1 %2055, label %2056, label %2063

2056:                                             ; preds = %2052
  %2057 = getelementptr inbounds %struct.DagAdjList, ptr %2053, i64 0, i32 1
  %2058 = load i16, ptr %2057, align 8, !tbaa !106
  %2059 = or i16 %2058, 40
  store i16 %2059, ptr %2057, align 8, !tbaa !106
  %2060 = getelementptr inbounds %struct.DagAdjList, ptr %2053, i64 0, i32 2
  %2061 = load i32, ptr %2060, align 4, !tbaa !114
  %2062 = add nsw i32 %2061, 1
  store i32 %2062, ptr %2060, align 4, !tbaa !114
  br label %2075

2063:                                             ; preds = %2052
  %2064 = getelementptr inbounds %struct.DagAdjList, ptr %2053, i64 0, i32 5
  %2065 = load ptr, ptr %2064, align 8, !tbaa !84
  %2066 = icmp eq ptr %2065, null
  br i1 %2066, label %2067, label %2052, !llvm.loop !117

2067:                                             ; preds = %2063, %2050
  %2068 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2069 = call ptr %2068(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %2069, align 8, !tbaa !105
  %2070 = getelementptr inbounds %struct.DagAdjList, ptr %2069, i64 0, i32 1
  store i16 40, ptr %2070, align 8, !tbaa !106
  %2071 = getelementptr inbounds %struct.DagAdjList, ptr %2069, i64 0, i32 2
  store i32 1, ptr %2071, align 4, !tbaa !114
  %2072 = load ptr, ptr %2023, align 8, !tbaa !82
  %2073 = getelementptr inbounds %struct.DagAdjList, ptr %2069, i64 0, i32 5
  store ptr %2072, ptr %2073, align 8, !tbaa !84
  %2074 = getelementptr inbounds %struct.DagAdjList, ptr %2069, i64 0, i32 4
  store ptr @.str.40, ptr %2074, align 8, !tbaa !116
  store ptr %2069, ptr %2023, align 8, !tbaa !82
  br label %2075

2075:                                             ; preds = %2067, %2056, %1972, %1977
  %2076 = load ptr, ptr %1973, align 8, !tbaa !34
  %2077 = icmp eq ptr %2076, null
  br i1 %2077, label %2078, label %1972, !llvm.loop !186

2078:                                             ; preds = %2075, %1968, %1963
  %2079 = getelementptr inbounds %struct.ParticleSettings, ptr %1908, i64 0, i32 21
  %2080 = load i16, ptr %2079, align 8, !tbaa !187
  %2081 = icmp eq i16 %2080, 7
  br i1 %2081, label %2082, label %2233

2082:                                             ; preds = %2078
  %2083 = getelementptr inbounds %struct.ParticleSettings, ptr %1908, i64 0, i32 125
  %2084 = load ptr, ptr %2083, align 8, !tbaa !188
  %2085 = icmp eq ptr %2084, null
  br i1 %2085, label %2233, label %2086

2086:                                             ; preds = %2082
  %2087 = load ptr, ptr %9, align 8, !tbaa !91
  %2088 = icmp eq ptr %2087, null
  br i1 %2088, label %2091, label %2089

2089:                                             ; preds = %2086
  %2090 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %2087, ptr noundef nonnull %2084) #17
  br label %2091

2091:                                             ; preds = %2089, %2086
  %2092 = phi ptr [ %2090, %2089 ], [ null, %2086 ]
  %2093 = icmp eq ptr %2092, null
  br i1 %2093, label %2094, label %2122

2094:                                             ; preds = %2091
  %2095 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2096 = call ptr %2095(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %2097 = icmp eq ptr %2096, null
  br i1 %2097, label %2122, label %2098

2098:                                             ; preds = %2094
  %2099 = getelementptr inbounds %struct.DagNode, ptr %2096, i64 0, i32 5
  store ptr %2084, ptr %2099, align 8, !tbaa !92
  store i32 0, ptr %2096, align 8, !tbaa !93
  %2100 = load i8, ptr %1889, align 4, !tbaa !55
  %2101 = icmp eq i8 %2100, 0
  br i1 %2101, label %2106, label %2102

2102:                                             ; preds = %2098
  %2103 = getelementptr inbounds %struct.ID, ptr %2084, i64 0, i32 4
  %2104 = load i16, ptr %2103, align 8, !tbaa !94
  %2105 = getelementptr inbounds %struct.DagNode, ptr %2096, i64 0, i32 1
  store i16 %2104, ptr %2105, align 4, !tbaa !95
  br label %2106

2106:                                             ; preds = %2102, %2098
  %2107 = load i32, ptr %1890, align 8, !tbaa !96
  %2108 = icmp eq i32 %2107, 0
  br i1 %2108, label %2113, label %2109

2109:                                             ; preds = %2106
  %2110 = load ptr, ptr %1891, align 8, !tbaa !97
  %2111 = getelementptr inbounds %struct.DagNode, ptr %2110, i64 0, i32 18
  store ptr %2096, ptr %2111, align 8, !tbaa !89
  store ptr %2096, ptr %1891, align 8, !tbaa !97
  %2112 = add nsw i32 %2107, 1
  br label %2114

2113:                                             ; preds = %2106
  store ptr %2096, ptr %1892, align 8, !tbaa !97
  store ptr %2096, ptr %0, align 8, !tbaa !81
  br label %2114

2114:                                             ; preds = %2113, %2109
  %2115 = phi i32 [ 1, %2113 ], [ %2112, %2109 ]
  store i32 %2115, ptr %1890, align 8, !tbaa !96
  %2116 = load ptr, ptr %9, align 8, !tbaa !91
  %2117 = icmp eq ptr %2116, null
  br i1 %2117, label %2118, label %2120

2118:                                             ; preds = %2114
  %2119 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %2119, ptr %9, align 8, !tbaa !91
  br label %2120

2120:                                             ; preds = %2118, %2114
  %2121 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %2121, ptr noundef nonnull %2084, ptr noundef nonnull %2096) #17
  br label %2122

2122:                                             ; preds = %2120, %2094, %2091
  %2123 = phi ptr [ %2092, %2091 ], [ %2096, %2094 ], [ %2096, %2120 ]
  %2124 = load ptr, ptr %1883, align 8, !tbaa !82
  %2125 = getelementptr inbounds %struct.DagNode, ptr %2123, i64 0, i32 17
  %2126 = load ptr, ptr %2125, align 8, !tbaa !34
  %2127 = icmp eq ptr %2126, null
  br i1 %2127, label %2143, label %2128

2128:                                             ; preds = %2122, %2139
  %2129 = phi ptr [ %2141, %2139 ], [ %2126, %2122 ]
  %2130 = load ptr, ptr %2129, align 8, !tbaa !105
  %2131 = icmp eq ptr %2130, %49
  br i1 %2131, label %2132, label %2139

2132:                                             ; preds = %2128
  %2133 = getelementptr inbounds %struct.DagAdjList, ptr %2129, i64 0, i32 1
  %2134 = load i16, ptr %2133, align 8, !tbaa !106
  %2135 = or i16 %2134, 4
  store i16 %2135, ptr %2133, align 8, !tbaa !106
  %2136 = getelementptr inbounds %struct.DagAdjList, ptr %2129, i64 0, i32 2
  %2137 = load i32, ptr %2136, align 4, !tbaa !114
  %2138 = add nsw i32 %2137, 1
  store i32 %2138, ptr %2136, align 4, !tbaa !114
  br label %2151

2139:                                             ; preds = %2128
  %2140 = getelementptr inbounds %struct.DagAdjList, ptr %2129, i64 0, i32 5
  %2141 = load ptr, ptr %2140, align 8, !tbaa !34
  %2142 = icmp eq ptr %2141, null
  br i1 %2142, label %2143, label %2128, !llvm.loop !115

2143:                                             ; preds = %2139, %2122
  %2144 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2145 = call ptr %2144(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %2145, align 8, !tbaa !105
  %2146 = getelementptr inbounds %struct.DagAdjList, ptr %2145, i64 0, i32 1
  store i16 4, ptr %2146, align 8, !tbaa !106
  %2147 = getelementptr inbounds %struct.DagAdjList, ptr %2145, i64 0, i32 2
  store i32 1, ptr %2147, align 4, !tbaa !114
  %2148 = load ptr, ptr %2125, align 8, !tbaa !87
  %2149 = getelementptr inbounds %struct.DagAdjList, ptr %2145, i64 0, i32 5
  store ptr %2148, ptr %2149, align 8, !tbaa !84
  %2150 = getelementptr inbounds %struct.DagAdjList, ptr %2145, i64 0, i32 4
  store ptr @.str.41, ptr %2150, align 8, !tbaa !116
  store ptr %2145, ptr %2125, align 8, !tbaa !87
  br label %2151

2151:                                             ; preds = %2143, %2132
  %2152 = icmp eq ptr %2124, null
  br i1 %2152, label %2168, label %2153

2153:                                             ; preds = %2151, %2164
  %2154 = phi ptr [ %2166, %2164 ], [ %2124, %2151 ]
  %2155 = load ptr, ptr %2154, align 8, !tbaa !105
  %2156 = icmp eq ptr %2155, %2123
  br i1 %2156, label %2157, label %2164

2157:                                             ; preds = %2153
  %2158 = getelementptr inbounds %struct.DagAdjList, ptr %2154, i64 0, i32 1
  %2159 = load i16, ptr %2158, align 8, !tbaa !106
  %2160 = or i16 %2159, 4
  store i16 %2160, ptr %2158, align 8, !tbaa !106
  %2161 = getelementptr inbounds %struct.DagAdjList, ptr %2154, i64 0, i32 2
  %2162 = load i32, ptr %2161, align 4, !tbaa !114
  %2163 = add nsw i32 %2162, 1
  store i32 %2163, ptr %2161, align 4, !tbaa !114
  br label %2176

2164:                                             ; preds = %2153
  %2165 = getelementptr inbounds %struct.DagAdjList, ptr %2154, i64 0, i32 5
  %2166 = load ptr, ptr %2165, align 8, !tbaa !84
  %2167 = icmp eq ptr %2166, null
  br i1 %2167, label %2168, label %2153, !llvm.loop !117

2168:                                             ; preds = %2164, %2151
  %2169 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2170 = call ptr %2169(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2123, ptr %2170, align 8, !tbaa !105
  %2171 = getelementptr inbounds %struct.DagAdjList, ptr %2170, i64 0, i32 1
  store i16 4, ptr %2171, align 8, !tbaa !106
  %2172 = getelementptr inbounds %struct.DagAdjList, ptr %2170, i64 0, i32 2
  store i32 1, ptr %2172, align 4, !tbaa !114
  %2173 = load ptr, ptr %1883, align 8, !tbaa !82
  %2174 = getelementptr inbounds %struct.DagAdjList, ptr %2170, i64 0, i32 5
  store ptr %2173, ptr %2174, align 8, !tbaa !84
  %2175 = getelementptr inbounds %struct.DagAdjList, ptr %2170, i64 0, i32 4
  store ptr @.str.41, ptr %2175, align 8, !tbaa !116
  store ptr %2170, ptr %1883, align 8, !tbaa !82
  br label %2176

2176:                                             ; preds = %2157, %2168
  %2177 = load ptr, ptr %2083, align 8, !tbaa !188
  %2178 = getelementptr inbounds %struct.Object, ptr %2177, i64 0, i32 3
  %2179 = load i16, ptr %2178, align 8, !tbaa !120
  %2180 = icmp eq i16 %2179, 5
  br i1 %2180, label %2181, label %2233

2181:                                             ; preds = %2176
  %2182 = load ptr, ptr %1883, align 8, !tbaa !82
  %2183 = load ptr, ptr %2125, align 8, !tbaa !34
  %2184 = icmp eq ptr %2183, null
  br i1 %2184, label %2200, label %2185

2185:                                             ; preds = %2181, %2196
  %2186 = phi ptr [ %2198, %2196 ], [ %2183, %2181 ]
  %2187 = load ptr, ptr %2186, align 8, !tbaa !105
  %2188 = icmp eq ptr %2187, %49
  br i1 %2188, label %2189, label %2196

2189:                                             ; preds = %2185
  %2190 = getelementptr inbounds %struct.DagAdjList, ptr %2186, i64 0, i32 1
  %2191 = load i16, ptr %2190, align 8, !tbaa !106
  %2192 = or i16 %2191, 32
  store i16 %2192, ptr %2190, align 8, !tbaa !106
  %2193 = getelementptr inbounds %struct.DagAdjList, ptr %2186, i64 0, i32 2
  %2194 = load i32, ptr %2193, align 4, !tbaa !114
  %2195 = add nsw i32 %2194, 1
  store i32 %2195, ptr %2193, align 4, !tbaa !114
  br label %2208

2196:                                             ; preds = %2185
  %2197 = getelementptr inbounds %struct.DagAdjList, ptr %2186, i64 0, i32 5
  %2198 = load ptr, ptr %2197, align 8, !tbaa !34
  %2199 = icmp eq ptr %2198, null
  br i1 %2199, label %2200, label %2185, !llvm.loop !115

2200:                                             ; preds = %2196, %2181
  %2201 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2202 = call ptr %2201(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %2202, align 8, !tbaa !105
  %2203 = getelementptr inbounds %struct.DagAdjList, ptr %2202, i64 0, i32 1
  store i16 32, ptr %2203, align 8, !tbaa !106
  %2204 = getelementptr inbounds %struct.DagAdjList, ptr %2202, i64 0, i32 2
  store i32 1, ptr %2204, align 4, !tbaa !114
  %2205 = load ptr, ptr %2125, align 8, !tbaa !87
  %2206 = getelementptr inbounds %struct.DagAdjList, ptr %2202, i64 0, i32 5
  store ptr %2205, ptr %2206, align 8, !tbaa !84
  %2207 = getelementptr inbounds %struct.DagAdjList, ptr %2202, i64 0, i32 4
  store ptr @.str.41, ptr %2207, align 8, !tbaa !116
  store ptr %2202, ptr %2125, align 8, !tbaa !87
  br label %2208

2208:                                             ; preds = %2200, %2189
  %2209 = icmp eq ptr %2182, null
  br i1 %2209, label %2225, label %2210

2210:                                             ; preds = %2208, %2221
  %2211 = phi ptr [ %2223, %2221 ], [ %2182, %2208 ]
  %2212 = load ptr, ptr %2211, align 8, !tbaa !105
  %2213 = icmp eq ptr %2212, %2123
  br i1 %2213, label %2214, label %2221

2214:                                             ; preds = %2210
  %2215 = getelementptr inbounds %struct.DagAdjList, ptr %2211, i64 0, i32 1
  %2216 = load i16, ptr %2215, align 8, !tbaa !106
  %2217 = or i16 %2216, 32
  store i16 %2217, ptr %2215, align 8, !tbaa !106
  %2218 = getelementptr inbounds %struct.DagAdjList, ptr %2211, i64 0, i32 2
  %2219 = load i32, ptr %2218, align 4, !tbaa !114
  %2220 = add nsw i32 %2219, 1
  store i32 %2220, ptr %2218, align 4, !tbaa !114
  br label %2233

2221:                                             ; preds = %2210
  %2222 = getelementptr inbounds %struct.DagAdjList, ptr %2211, i64 0, i32 5
  %2223 = load ptr, ptr %2222, align 8, !tbaa !84
  %2224 = icmp eq ptr %2223, null
  br i1 %2224, label %2225, label %2210, !llvm.loop !117

2225:                                             ; preds = %2221, %2208
  %2226 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2227 = call ptr %2226(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2123, ptr %2227, align 8, !tbaa !105
  %2228 = getelementptr inbounds %struct.DagAdjList, ptr %2227, i64 0, i32 1
  store i16 32, ptr %2228, align 8, !tbaa !106
  %2229 = getelementptr inbounds %struct.DagAdjList, ptr %2227, i64 0, i32 2
  store i32 1, ptr %2229, align 4, !tbaa !114
  %2230 = load ptr, ptr %1883, align 8, !tbaa !82
  %2231 = getelementptr inbounds %struct.DagAdjList, ptr %2227, i64 0, i32 5
  store ptr %2230, ptr %2231, align 8, !tbaa !84
  %2232 = getelementptr inbounds %struct.DagAdjList, ptr %2227, i64 0, i32 4
  store ptr @.str.41, ptr %2232, align 8, !tbaa !116
  store ptr %2227, ptr %1883, align 8, !tbaa !82
  br label %2233

2233:                                             ; preds = %2225, %2214, %2176, %2082, %2078
  %2234 = load i16, ptr %2079, align 8, !tbaa !187
  %2235 = icmp eq i16 %2234, 8
  br i1 %2235, label %2236, label %2340

2236:                                             ; preds = %2233
  %2237 = getelementptr inbounds %struct.ParticleSettings, ptr %1908, i64 0, i32 122
  %2238 = load ptr, ptr %2237, align 8, !tbaa !189
  %2239 = icmp eq ptr %2238, null
  br i1 %2239, label %2340, label %2240

2240:                                             ; preds = %2236
  %2241 = getelementptr inbounds %struct.Group, ptr %2238, i64 0, i32 1
  %2242 = load ptr, ptr %2241, align 8, !tbaa !34
  %2243 = icmp eq ptr %2242, null
  br i1 %2243, label %2340, label %2244

2244:                                             ; preds = %2240, %2337
  %2245 = phi ptr [ %2338, %2337 ], [ %2242, %2240 ]
  %2246 = getelementptr inbounds %struct.GroupObject, ptr %2245, i64 0, i32 2
  %2247 = load ptr, ptr %2246, align 8, !tbaa !149
  %2248 = load ptr, ptr %9, align 8, !tbaa !91
  %2249 = icmp eq ptr %2248, null
  br i1 %2249, label %2252, label %2250

2250:                                             ; preds = %2244
  %2251 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %2248, ptr noundef %2247) #17
  br label %2252

2252:                                             ; preds = %2250, %2244
  %2253 = phi ptr [ %2251, %2250 ], [ null, %2244 ]
  %2254 = icmp eq ptr %2253, null
  br i1 %2254, label %2255, label %2283

2255:                                             ; preds = %2252
  %2256 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2257 = call ptr %2256(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %2258 = icmp eq ptr %2257, null
  br i1 %2258, label %2283, label %2259

2259:                                             ; preds = %2255
  %2260 = getelementptr inbounds %struct.DagNode, ptr %2257, i64 0, i32 5
  store ptr %2247, ptr %2260, align 8, !tbaa !92
  store i32 0, ptr %2257, align 8, !tbaa !93
  %2261 = load i8, ptr %1893, align 4, !tbaa !55
  %2262 = icmp eq i8 %2261, 0
  br i1 %2262, label %2267, label %2263

2263:                                             ; preds = %2259
  %2264 = getelementptr inbounds %struct.ID, ptr %2247, i64 0, i32 4
  %2265 = load i16, ptr %2264, align 8, !tbaa !94
  %2266 = getelementptr inbounds %struct.DagNode, ptr %2257, i64 0, i32 1
  store i16 %2265, ptr %2266, align 4, !tbaa !95
  br label %2267

2267:                                             ; preds = %2263, %2259
  %2268 = load i32, ptr %1894, align 8, !tbaa !96
  %2269 = icmp eq i32 %2268, 0
  br i1 %2269, label %2274, label %2270

2270:                                             ; preds = %2267
  %2271 = load ptr, ptr %1895, align 8, !tbaa !97
  %2272 = getelementptr inbounds %struct.DagNode, ptr %2271, i64 0, i32 18
  store ptr %2257, ptr %2272, align 8, !tbaa !89
  store ptr %2257, ptr %1895, align 8, !tbaa !97
  %2273 = add nsw i32 %2268, 1
  br label %2275

2274:                                             ; preds = %2267
  store ptr %2257, ptr %1896, align 8, !tbaa !97
  store ptr %2257, ptr %0, align 8, !tbaa !81
  br label %2275

2275:                                             ; preds = %2274, %2270
  %2276 = phi i32 [ 1, %2274 ], [ %2273, %2270 ]
  store i32 %2276, ptr %1894, align 8, !tbaa !96
  %2277 = load ptr, ptr %9, align 8, !tbaa !91
  %2278 = icmp eq ptr %2277, null
  br i1 %2278, label %2279, label %2281

2279:                                             ; preds = %2275
  %2280 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %2280, ptr %9, align 8, !tbaa !91
  br label %2281

2281:                                             ; preds = %2279, %2275
  %2282 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %2282, ptr noundef %2247, ptr noundef nonnull %2257) #17
  br label %2283

2283:                                             ; preds = %2281, %2255, %2252
  %2284 = phi ptr [ %2253, %2252 ], [ %2257, %2255 ], [ %2257, %2281 ]
  %2285 = getelementptr inbounds %struct.DagNode, ptr %2284, i64 0, i32 16
  %2286 = load ptr, ptr %2285, align 8, !tbaa !82
  %2287 = load ptr, ptr %1884, align 8, !tbaa !34
  %2288 = icmp eq ptr %2287, null
  br i1 %2288, label %2304, label %2289

2289:                                             ; preds = %2283, %2300
  %2290 = phi ptr [ %2302, %2300 ], [ %2287, %2283 ]
  %2291 = load ptr, ptr %2290, align 8, !tbaa !105
  %2292 = icmp eq ptr %2291, %2284
  br i1 %2292, label %2293, label %2300

2293:                                             ; preds = %2289
  %2294 = getelementptr inbounds %struct.DagAdjList, ptr %2290, i64 0, i32 1
  %2295 = load i16, ptr %2294, align 8, !tbaa !106
  %2296 = or i16 %2295, 4
  store i16 %2296, ptr %2294, align 8, !tbaa !106
  %2297 = getelementptr inbounds %struct.DagAdjList, ptr %2290, i64 0, i32 2
  %2298 = load i32, ptr %2297, align 4, !tbaa !114
  %2299 = add nsw i32 %2298, 1
  store i32 %2299, ptr %2297, align 4, !tbaa !114
  br label %2312

2300:                                             ; preds = %2289
  %2301 = getelementptr inbounds %struct.DagAdjList, ptr %2290, i64 0, i32 5
  %2302 = load ptr, ptr %2301, align 8, !tbaa !34
  %2303 = icmp eq ptr %2302, null
  br i1 %2303, label %2304, label %2289, !llvm.loop !115

2304:                                             ; preds = %2300, %2283
  %2305 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2306 = call ptr %2305(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2284, ptr %2306, align 8, !tbaa !105
  %2307 = getelementptr inbounds %struct.DagAdjList, ptr %2306, i64 0, i32 1
  store i16 4, ptr %2307, align 8, !tbaa !106
  %2308 = getelementptr inbounds %struct.DagAdjList, ptr %2306, i64 0, i32 2
  store i32 1, ptr %2308, align 4, !tbaa !114
  %2309 = load ptr, ptr %1884, align 8, !tbaa !87
  %2310 = getelementptr inbounds %struct.DagAdjList, ptr %2306, i64 0, i32 5
  store ptr %2309, ptr %2310, align 8, !tbaa !84
  %2311 = getelementptr inbounds %struct.DagAdjList, ptr %2306, i64 0, i32 4
  store ptr @.str.42, ptr %2311, align 8, !tbaa !116
  store ptr %2306, ptr %1884, align 8, !tbaa !87
  br label %2312

2312:                                             ; preds = %2304, %2293
  %2313 = icmp eq ptr %2286, null
  br i1 %2313, label %2329, label %2314

2314:                                             ; preds = %2312, %2325
  %2315 = phi ptr [ %2327, %2325 ], [ %2286, %2312 ]
  %2316 = load ptr, ptr %2315, align 8, !tbaa !105
  %2317 = icmp eq ptr %2316, %49
  br i1 %2317, label %2318, label %2325

2318:                                             ; preds = %2314
  %2319 = getelementptr inbounds %struct.DagAdjList, ptr %2315, i64 0, i32 1
  %2320 = load i16, ptr %2319, align 8, !tbaa !106
  %2321 = or i16 %2320, 4
  store i16 %2321, ptr %2319, align 8, !tbaa !106
  %2322 = getelementptr inbounds %struct.DagAdjList, ptr %2315, i64 0, i32 2
  %2323 = load i32, ptr %2322, align 4, !tbaa !114
  %2324 = add nsw i32 %2323, 1
  store i32 %2324, ptr %2322, align 4, !tbaa !114
  br label %2337

2325:                                             ; preds = %2314
  %2326 = getelementptr inbounds %struct.DagAdjList, ptr %2315, i64 0, i32 5
  %2327 = load ptr, ptr %2326, align 8, !tbaa !84
  %2328 = icmp eq ptr %2327, null
  br i1 %2328, label %2329, label %2314, !llvm.loop !117

2329:                                             ; preds = %2325, %2312
  %2330 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2331 = call ptr %2330(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %2331, align 8, !tbaa !105
  %2332 = getelementptr inbounds %struct.DagAdjList, ptr %2331, i64 0, i32 1
  store i16 4, ptr %2332, align 8, !tbaa !106
  %2333 = getelementptr inbounds %struct.DagAdjList, ptr %2331, i64 0, i32 2
  store i32 1, ptr %2333, align 4, !tbaa !114
  %2334 = load ptr, ptr %2285, align 8, !tbaa !82
  %2335 = getelementptr inbounds %struct.DagAdjList, ptr %2331, i64 0, i32 5
  store ptr %2334, ptr %2335, align 8, !tbaa !84
  %2336 = getelementptr inbounds %struct.DagAdjList, ptr %2331, i64 0, i32 4
  store ptr @.str.42, ptr %2336, align 8, !tbaa !116
  store ptr %2331, ptr %2285, align 8, !tbaa !82
  br label %2337

2337:                                             ; preds = %2318, %2329
  %2338 = load ptr, ptr %2245, align 8, !tbaa !34
  %2339 = icmp eq ptr %2338, null
  br i1 %2339, label %2340, label %2244, !llvm.loop !190

2340:                                             ; preds = %2337, %2240, %2236, %2233
  %2341 = getelementptr inbounds %struct.ParticleSettings, ptr %1908, i64 0, i32 4
  %2342 = load ptr, ptr %2341, align 8, !tbaa !191
  %2343 = call ptr @pdInitEffectors(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %1906, ptr noundef %2342, i8 noundef zeroext 0) #17
  store ptr %2343, ptr %7, align 8, !tbaa !34
  %2344 = icmp eq ptr %2343, null
  br i1 %2344, label %2448, label %2345

2345:                                             ; preds = %2340
  %2346 = load ptr, ptr %2343, align 8, !tbaa !34
  %2347 = icmp eq ptr %2346, null
  br i1 %2347, label %2448, label %2348

2348:                                             ; preds = %2345, %2445
  %2349 = phi ptr [ %2446, %2445 ], [ %2346, %2345 ]
  %2350 = getelementptr inbounds %struct.EffectorCache, ptr %2349, i64 0, i32 4
  %2351 = load ptr, ptr %2350, align 8, !tbaa !192
  %2352 = icmp eq ptr %2351, null
  br i1 %2352, label %2445, label %2353

2353:                                             ; preds = %2348
  %2354 = getelementptr inbounds %struct.EffectorCache, ptr %2349, i64 0, i32 3
  %2355 = load ptr, ptr %2354, align 8, !tbaa !194
  %2356 = load ptr, ptr %9, align 8, !tbaa !91
  %2357 = icmp eq ptr %2356, null
  br i1 %2357, label %2360, label %2358

2358:                                             ; preds = %2353
  %2359 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %2356, ptr noundef %2355) #17
  br label %2360

2360:                                             ; preds = %2358, %2353
  %2361 = phi ptr [ %2359, %2358 ], [ null, %2353 ]
  %2362 = icmp eq ptr %2361, null
  br i1 %2362, label %2363, label %2391

2363:                                             ; preds = %2360
  %2364 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2365 = call ptr %2364(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %2366 = icmp eq ptr %2365, null
  br i1 %2366, label %2391, label %2367

2367:                                             ; preds = %2363
  %2368 = getelementptr inbounds %struct.DagNode, ptr %2365, i64 0, i32 5
  store ptr %2355, ptr %2368, align 8, !tbaa !92
  store i32 0, ptr %2365, align 8, !tbaa !93
  %2369 = load i8, ptr %1897, align 4, !tbaa !55
  %2370 = icmp eq i8 %2369, 0
  br i1 %2370, label %2375, label %2371

2371:                                             ; preds = %2367
  %2372 = getelementptr inbounds %struct.ID, ptr %2355, i64 0, i32 4
  %2373 = load i16, ptr %2372, align 8, !tbaa !94
  %2374 = getelementptr inbounds %struct.DagNode, ptr %2365, i64 0, i32 1
  store i16 %2373, ptr %2374, align 4, !tbaa !95
  br label %2375

2375:                                             ; preds = %2371, %2367
  %2376 = load i32, ptr %1898, align 8, !tbaa !96
  %2377 = icmp eq i32 %2376, 0
  br i1 %2377, label %2382, label %2378

2378:                                             ; preds = %2375
  %2379 = load ptr, ptr %1899, align 8, !tbaa !97
  %2380 = getelementptr inbounds %struct.DagNode, ptr %2379, i64 0, i32 18
  store ptr %2365, ptr %2380, align 8, !tbaa !89
  store ptr %2365, ptr %1899, align 8, !tbaa !97
  %2381 = add nsw i32 %2376, 1
  br label %2383

2382:                                             ; preds = %2375
  store ptr %2365, ptr %1900, align 8, !tbaa !97
  store ptr %2365, ptr %0, align 8, !tbaa !81
  br label %2383

2383:                                             ; preds = %2382, %2378
  %2384 = phi i32 [ 1, %2382 ], [ %2381, %2378 ]
  store i32 %2384, ptr %1898, align 8, !tbaa !96
  %2385 = load ptr, ptr %9, align 8, !tbaa !91
  %2386 = icmp eq ptr %2385, null
  br i1 %2386, label %2387, label %2389

2387:                                             ; preds = %2383
  %2388 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %2388, ptr %9, align 8, !tbaa !91
  br label %2389

2389:                                             ; preds = %2387, %2383
  %2390 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %2390, ptr noundef %2355, ptr noundef nonnull %2365) #17
  br label %2391

2391:                                             ; preds = %2389, %2363, %2360
  %2392 = phi ptr [ %2361, %2360 ], [ %2365, %2363 ], [ %2365, %2389 ]
  %2393 = getelementptr inbounds %struct.DagNode, ptr %2392, i64 0, i32 16
  %2394 = load ptr, ptr %2393, align 8, !tbaa !82
  %2395 = load ptr, ptr %1884, align 8, !tbaa !34
  %2396 = icmp eq ptr %2395, null
  br i1 %2396, label %2412, label %2397

2397:                                             ; preds = %2391, %2408
  %2398 = phi ptr [ %2410, %2408 ], [ %2395, %2391 ]
  %2399 = load ptr, ptr %2398, align 8, !tbaa !105
  %2400 = icmp eq ptr %2399, %2392
  br i1 %2400, label %2401, label %2408

2401:                                             ; preds = %2397
  %2402 = getelementptr inbounds %struct.DagAdjList, ptr %2398, i64 0, i32 1
  %2403 = load i16, ptr %2402, align 8, !tbaa !106
  %2404 = or i16 %2403, 40
  store i16 %2404, ptr %2402, align 8, !tbaa !106
  %2405 = getelementptr inbounds %struct.DagAdjList, ptr %2398, i64 0, i32 2
  %2406 = load i32, ptr %2405, align 4, !tbaa !114
  %2407 = add nsw i32 %2406, 1
  store i32 %2407, ptr %2405, align 4, !tbaa !114
  br label %2420

2408:                                             ; preds = %2397
  %2409 = getelementptr inbounds %struct.DagAdjList, ptr %2398, i64 0, i32 5
  %2410 = load ptr, ptr %2409, align 8, !tbaa !34
  %2411 = icmp eq ptr %2410, null
  br i1 %2411, label %2412, label %2397, !llvm.loop !115

2412:                                             ; preds = %2408, %2391
  %2413 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2414 = call ptr %2413(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2392, ptr %2414, align 8, !tbaa !105
  %2415 = getelementptr inbounds %struct.DagAdjList, ptr %2414, i64 0, i32 1
  store i16 40, ptr %2415, align 8, !tbaa !106
  %2416 = getelementptr inbounds %struct.DagAdjList, ptr %2414, i64 0, i32 2
  store i32 1, ptr %2416, align 4, !tbaa !114
  %2417 = load ptr, ptr %1884, align 8, !tbaa !87
  %2418 = getelementptr inbounds %struct.DagAdjList, ptr %2414, i64 0, i32 5
  store ptr %2417, ptr %2418, align 8, !tbaa !84
  %2419 = getelementptr inbounds %struct.DagAdjList, ptr %2414, i64 0, i32 4
  store ptr @.str.43, ptr %2419, align 8, !tbaa !116
  store ptr %2414, ptr %1884, align 8, !tbaa !87
  br label %2420

2420:                                             ; preds = %2412, %2401
  %2421 = icmp eq ptr %2394, null
  br i1 %2421, label %2437, label %2422

2422:                                             ; preds = %2420, %2433
  %2423 = phi ptr [ %2435, %2433 ], [ %2394, %2420 ]
  %2424 = load ptr, ptr %2423, align 8, !tbaa !105
  %2425 = icmp eq ptr %2424, %49
  br i1 %2425, label %2426, label %2433

2426:                                             ; preds = %2422
  %2427 = getelementptr inbounds %struct.DagAdjList, ptr %2423, i64 0, i32 1
  %2428 = load i16, ptr %2427, align 8, !tbaa !106
  %2429 = or i16 %2428, 40
  store i16 %2429, ptr %2427, align 8, !tbaa !106
  %2430 = getelementptr inbounds %struct.DagAdjList, ptr %2423, i64 0, i32 2
  %2431 = load i32, ptr %2430, align 4, !tbaa !114
  %2432 = add nsw i32 %2431, 1
  store i32 %2432, ptr %2430, align 4, !tbaa !114
  br label %2445

2433:                                             ; preds = %2422
  %2434 = getelementptr inbounds %struct.DagAdjList, ptr %2423, i64 0, i32 5
  %2435 = load ptr, ptr %2434, align 8, !tbaa !84
  %2436 = icmp eq ptr %2435, null
  br i1 %2436, label %2437, label %2422, !llvm.loop !117

2437:                                             ; preds = %2433, %2420
  %2438 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2439 = call ptr %2438(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %2439, align 8, !tbaa !105
  %2440 = getelementptr inbounds %struct.DagAdjList, ptr %2439, i64 0, i32 1
  store i16 40, ptr %2440, align 8, !tbaa !106
  %2441 = getelementptr inbounds %struct.DagAdjList, ptr %2439, i64 0, i32 2
  store i32 1, ptr %2441, align 4, !tbaa !114
  %2442 = load ptr, ptr %2393, align 8, !tbaa !82
  %2443 = getelementptr inbounds %struct.DagAdjList, ptr %2439, i64 0, i32 5
  store ptr %2442, ptr %2443, align 8, !tbaa !84
  %2444 = getelementptr inbounds %struct.DagAdjList, ptr %2439, i64 0, i32 4
  store ptr @.str.43, ptr %2444, align 8, !tbaa !116
  store ptr %2439, ptr %2393, align 8, !tbaa !82
  br label %2445

2445:                                             ; preds = %2437, %2426, %2348
  %2446 = load ptr, ptr %2349, align 8, !tbaa !34
  %2447 = icmp eq ptr %2446, null
  br i1 %2447, label %2448, label %2348, !llvm.loop !195

2448:                                             ; preds = %2445, %2345, %2340
  call void @pdEndEffectors(ptr noundef nonnull %7) #17
  %2449 = getelementptr inbounds %struct.ParticleSettings, ptr %1908, i64 0, i32 2
  %2450 = load ptr, ptr %2449, align 8, !tbaa !196
  %2451 = icmp eq ptr %2450, null
  br i1 %2451, label %2571, label %2452

2452:                                             ; preds = %2448
  %2453 = getelementptr inbounds %struct.BoidSettings, ptr %2450, i64 0, i32 22
  %2454 = load ptr, ptr %2453, align 8, !tbaa !34
  %2455 = icmp eq ptr %2454, null
  br i1 %2455, label %2571, label %2459

2456:                                             ; preds = %2568, %2459
  %2457 = load ptr, ptr %2460, align 8, !tbaa !34
  %2458 = icmp eq ptr %2457, null
  br i1 %2458, label %2571, label %2459, !llvm.loop !197

2459:                                             ; preds = %2452, %2456
  %2460 = phi ptr [ %2457, %2456 ], [ %2454, %2452 ]
  %2461 = getelementptr inbounds %struct.BoidState, ptr %2460, i64 0, i32 2
  %2462 = load ptr, ptr %2461, align 8, !tbaa !34
  %2463 = icmp eq ptr %2462, null
  br i1 %2463, label %2456, label %2464

2464:                                             ; preds = %2459, %2568
  %2465 = phi ptr [ %2569, %2568 ], [ %2462, %2459 ]
  %2466 = getelementptr inbounds %struct.BoidRule, ptr %2465, i64 0, i32 2
  %2467 = load i32, ptr %2466, align 8, !tbaa !198
  switch i32 %2467, label %2475 [
    i32 2, label %2468
    i32 6, label %2470
  ]

2468:                                             ; preds = %2464
  %2469 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %2465, i64 0, i32 1
  br label %2472

2470:                                             ; preds = %2464
  %2471 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %2465, i64 0, i32 1
  br label %2472

2472:                                             ; preds = %2468, %2470
  %2473 = phi ptr [ %2471, %2470 ], [ %2469, %2468 ]
  %2474 = load ptr, ptr %2473, align 8, !tbaa !34
  br label %2475

2475:                                             ; preds = %2472, %2464
  %2476 = phi ptr [ null, %2464 ], [ %2474, %2472 ]
  %2477 = icmp eq ptr %2476, null
  br i1 %2477, label %2568, label %2478

2478:                                             ; preds = %2475
  %2479 = load ptr, ptr %9, align 8, !tbaa !91
  %2480 = icmp eq ptr %2479, null
  br i1 %2480, label %2483, label %2481

2481:                                             ; preds = %2478
  %2482 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %2479, ptr noundef nonnull %2476) #17
  br label %2483

2483:                                             ; preds = %2481, %2478
  %2484 = phi ptr [ %2482, %2481 ], [ null, %2478 ]
  %2485 = icmp eq ptr %2484, null
  br i1 %2485, label %2486, label %2514

2486:                                             ; preds = %2483
  %2487 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2488 = call ptr %2487(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %2489 = icmp eq ptr %2488, null
  br i1 %2489, label %2514, label %2490

2490:                                             ; preds = %2486
  %2491 = getelementptr inbounds %struct.DagNode, ptr %2488, i64 0, i32 5
  store ptr %2476, ptr %2491, align 8, !tbaa !92
  store i32 0, ptr %2488, align 8, !tbaa !93
  %2492 = load i8, ptr %1901, align 4, !tbaa !55
  %2493 = icmp eq i8 %2492, 0
  br i1 %2493, label %2498, label %2494

2494:                                             ; preds = %2490
  %2495 = getelementptr inbounds %struct.ID, ptr %2476, i64 0, i32 4
  %2496 = load i16, ptr %2495, align 8, !tbaa !94
  %2497 = getelementptr inbounds %struct.DagNode, ptr %2488, i64 0, i32 1
  store i16 %2496, ptr %2497, align 4, !tbaa !95
  br label %2498

2498:                                             ; preds = %2494, %2490
  %2499 = load i32, ptr %1902, align 8, !tbaa !96
  %2500 = icmp eq i32 %2499, 0
  br i1 %2500, label %2505, label %2501

2501:                                             ; preds = %2498
  %2502 = load ptr, ptr %1903, align 8, !tbaa !97
  %2503 = getelementptr inbounds %struct.DagNode, ptr %2502, i64 0, i32 18
  store ptr %2488, ptr %2503, align 8, !tbaa !89
  store ptr %2488, ptr %1903, align 8, !tbaa !97
  %2504 = add nsw i32 %2499, 1
  br label %2506

2505:                                             ; preds = %2498
  store ptr %2488, ptr %1904, align 8, !tbaa !97
  store ptr %2488, ptr %0, align 8, !tbaa !81
  br label %2506

2506:                                             ; preds = %2505, %2501
  %2507 = phi i32 [ 1, %2505 ], [ %2504, %2501 ]
  store i32 %2507, ptr %1902, align 8, !tbaa !96
  %2508 = load ptr, ptr %9, align 8, !tbaa !91
  %2509 = icmp eq ptr %2508, null
  br i1 %2509, label %2510, label %2512

2510:                                             ; preds = %2506
  %2511 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %2511, ptr %9, align 8, !tbaa !91
  br label %2512

2512:                                             ; preds = %2510, %2506
  %2513 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %2513, ptr noundef nonnull %2476, ptr noundef nonnull %2488) #17
  br label %2514

2514:                                             ; preds = %2512, %2486, %2483
  %2515 = phi ptr [ %2484, %2483 ], [ %2488, %2486 ], [ %2488, %2512 ]
  %2516 = getelementptr inbounds %struct.DagNode, ptr %2515, i64 0, i32 16
  %2517 = load ptr, ptr %2516, align 8, !tbaa !82
  %2518 = load ptr, ptr %1884, align 8, !tbaa !34
  %2519 = icmp eq ptr %2518, null
  br i1 %2519, label %2535, label %2520

2520:                                             ; preds = %2514, %2531
  %2521 = phi ptr [ %2533, %2531 ], [ %2518, %2514 ]
  %2522 = load ptr, ptr %2521, align 8, !tbaa !105
  %2523 = icmp eq ptr %2522, %2515
  br i1 %2523, label %2524, label %2531

2524:                                             ; preds = %2520
  %2525 = getelementptr inbounds %struct.DagAdjList, ptr %2521, i64 0, i32 1
  %2526 = load i16, ptr %2525, align 8, !tbaa !106
  %2527 = or i16 %2526, 8
  store i16 %2527, ptr %2525, align 8, !tbaa !106
  %2528 = getelementptr inbounds %struct.DagAdjList, ptr %2521, i64 0, i32 2
  %2529 = load i32, ptr %2528, align 4, !tbaa !114
  %2530 = add nsw i32 %2529, 1
  store i32 %2530, ptr %2528, align 4, !tbaa !114
  br label %2543

2531:                                             ; preds = %2520
  %2532 = getelementptr inbounds %struct.DagAdjList, ptr %2521, i64 0, i32 5
  %2533 = load ptr, ptr %2532, align 8, !tbaa !34
  %2534 = icmp eq ptr %2533, null
  br i1 %2534, label %2535, label %2520, !llvm.loop !115

2535:                                             ; preds = %2531, %2514
  %2536 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2537 = call ptr %2536(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2515, ptr %2537, align 8, !tbaa !105
  %2538 = getelementptr inbounds %struct.DagAdjList, ptr %2537, i64 0, i32 1
  store i16 8, ptr %2538, align 8, !tbaa !106
  %2539 = getelementptr inbounds %struct.DagAdjList, ptr %2537, i64 0, i32 2
  store i32 1, ptr %2539, align 4, !tbaa !114
  %2540 = load ptr, ptr %1884, align 8, !tbaa !87
  %2541 = getelementptr inbounds %struct.DagAdjList, ptr %2537, i64 0, i32 5
  store ptr %2540, ptr %2541, align 8, !tbaa !84
  %2542 = getelementptr inbounds %struct.DagAdjList, ptr %2537, i64 0, i32 4
  store ptr @.str.44, ptr %2542, align 8, !tbaa !116
  store ptr %2537, ptr %1884, align 8, !tbaa !87
  br label %2543

2543:                                             ; preds = %2535, %2524
  %2544 = icmp eq ptr %2517, null
  br i1 %2544, label %2560, label %2545

2545:                                             ; preds = %2543, %2556
  %2546 = phi ptr [ %2558, %2556 ], [ %2517, %2543 ]
  %2547 = load ptr, ptr %2546, align 8, !tbaa !105
  %2548 = icmp eq ptr %2547, %49
  br i1 %2548, label %2549, label %2556

2549:                                             ; preds = %2545
  %2550 = getelementptr inbounds %struct.DagAdjList, ptr %2546, i64 0, i32 1
  %2551 = load i16, ptr %2550, align 8, !tbaa !106
  %2552 = or i16 %2551, 8
  store i16 %2552, ptr %2550, align 8, !tbaa !106
  %2553 = getelementptr inbounds %struct.DagAdjList, ptr %2546, i64 0, i32 2
  %2554 = load i32, ptr %2553, align 4, !tbaa !114
  %2555 = add nsw i32 %2554, 1
  store i32 %2555, ptr %2553, align 4, !tbaa !114
  br label %2568

2556:                                             ; preds = %2545
  %2557 = getelementptr inbounds %struct.DagAdjList, ptr %2546, i64 0, i32 5
  %2558 = load ptr, ptr %2557, align 8, !tbaa !84
  %2559 = icmp eq ptr %2558, null
  br i1 %2559, label %2560, label %2545, !llvm.loop !117

2560:                                             ; preds = %2556, %2543
  %2561 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2562 = call ptr %2561(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %2562, align 8, !tbaa !105
  %2563 = getelementptr inbounds %struct.DagAdjList, ptr %2562, i64 0, i32 1
  store i16 8, ptr %2563, align 8, !tbaa !106
  %2564 = getelementptr inbounds %struct.DagAdjList, ptr %2562, i64 0, i32 2
  store i32 1, ptr %2564, align 4, !tbaa !114
  %2565 = load ptr, ptr %2516, align 8, !tbaa !82
  %2566 = getelementptr inbounds %struct.DagAdjList, ptr %2562, i64 0, i32 5
  store ptr %2565, ptr %2566, align 8, !tbaa !84
  %2567 = getelementptr inbounds %struct.DagAdjList, ptr %2562, i64 0, i32 4
  store ptr @.str.44, ptr %2567, align 8, !tbaa !116
  store ptr %2562, ptr %2516, align 8, !tbaa !82
  br label %2568

2568:                                             ; preds = %2560, %2549, %2475
  %2569 = load ptr, ptr %2465, align 8, !tbaa !34
  %2570 = icmp eq ptr %2569, null
  br i1 %2570, label %2456, label %2464, !llvm.loop !200

2571:                                             ; preds = %2456, %2452, %2448, %1960
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  %2572 = load ptr, ptr %1906, align 8, !tbaa !201
  %2573 = icmp eq ptr %2572, null
  br i1 %2573, label %2574, label %1905, !llvm.loop !202

2574:                                             ; preds = %2571, %1878
  %2575 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 106
  %2576 = load ptr, ptr %2575, align 8, !tbaa !34
  %2577 = icmp eq ptr %2576, null
  br i1 %2577, label %3115, label %2578

2578:                                             ; preds = %2574
  %2579 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %2580 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %2581 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %2582 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %2583 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %2584 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %2585 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %2586 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %2587 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %2588 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %2589 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %2590 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %2591 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 2
  %2592 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %2593 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %2594 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %2595 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %2596 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %2597 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 16
  %2598 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  br label %2599

2599:                                             ; preds = %2578, %3111
  %2600 = phi ptr [ %2576, %2578 ], [ %3113, %3111 ]
  %2601 = phi i32 [ %960, %2578 ], [ %3112, %3111 ]
  %2602 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %2600) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %2603 = icmp eq ptr %2602, null
  br i1 %2603, label %3111, label %2604

2604:                                             ; preds = %2599
  %2605 = load i16, ptr %2602, align 8, !tbaa !203
  %2606 = add i16 %2605, -26
  %2607 = icmp ult i16 %2606, 3
  br i1 %2607, label %2608, label %2870

2608:                                             ; preds = %2604
  switch i16 %2605, label %2721 [
    i16 26, label %2609
    i16 28, label %2720
  ]

2609:                                             ; preds = %2608
  %2610 = getelementptr inbounds %struct.bConstraint, ptr %2600, i64 0, i32 2
  %2611 = load ptr, ptr %2610, align 8, !tbaa !204
  %2612 = load ptr, ptr %2611, align 8, !tbaa !205
  %2613 = icmp eq ptr %2612, null
  br i1 %2613, label %2614, label %2619

2614:                                             ; preds = %2609
  %2615 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %2611, i64 0, i32 2
  %2616 = load i32, ptr %2615, align 8, !tbaa !207
  %2617 = and i32 %2616, 1
  %2618 = icmp eq i32 %2617, 0
  br i1 %2618, label %2624, label %2619

2619:                                             ; preds = %2614, %2609
  %2620 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %2611, i64 0, i32 1
  %2621 = load i8, ptr %2620, align 8, !tbaa !127
  %2622 = icmp ne i8 %2621, 0
  %2623 = zext i1 %2622 to i32
  br label %2624

2624:                                             ; preds = %2619, %2614
  %2625 = phi i32 [ 0, %2614 ], [ %2623, %2619 ]
  %2626 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %2611, i64 0, i32 6
  %2627 = load ptr, ptr %2626, align 8, !tbaa !208
  %2628 = icmp eq ptr %2627, null
  br i1 %2628, label %2721, label %2629

2629:                                             ; preds = %2624
  %2630 = load ptr, ptr %9, align 8, !tbaa !91
  %2631 = icmp eq ptr %2630, null
  br i1 %2631, label %2634, label %2632

2632:                                             ; preds = %2629
  %2633 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %2630, ptr noundef nonnull %2627) #17
  br label %2634

2634:                                             ; preds = %2632, %2629
  %2635 = phi ptr [ %2633, %2632 ], [ null, %2629 ]
  %2636 = icmp eq ptr %2635, null
  br i1 %2636, label %2637, label %2665

2637:                                             ; preds = %2634
  %2638 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2639 = call ptr %2638(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %2640 = icmp eq ptr %2639, null
  br i1 %2640, label %2665, label %2641

2641:                                             ; preds = %2637
  %2642 = getelementptr inbounds %struct.DagNode, ptr %2639, i64 0, i32 5
  store ptr %2627, ptr %2642, align 8, !tbaa !92
  store i32 0, ptr %2639, align 8, !tbaa !93
  %2643 = load i8, ptr %2586, align 4, !tbaa !55
  %2644 = icmp eq i8 %2643, 0
  br i1 %2644, label %2649, label %2645

2645:                                             ; preds = %2641
  %2646 = getelementptr inbounds %struct.ID, ptr %2627, i64 0, i32 4
  %2647 = load i16, ptr %2646, align 8, !tbaa !94
  %2648 = getelementptr inbounds %struct.DagNode, ptr %2639, i64 0, i32 1
  store i16 %2647, ptr %2648, align 4, !tbaa !95
  br label %2649

2649:                                             ; preds = %2645, %2641
  %2650 = load i32, ptr %2587, align 8, !tbaa !96
  %2651 = icmp eq i32 %2650, 0
  br i1 %2651, label %2656, label %2652

2652:                                             ; preds = %2649
  %2653 = load ptr, ptr %2588, align 8, !tbaa !97
  %2654 = getelementptr inbounds %struct.DagNode, ptr %2653, i64 0, i32 18
  store ptr %2639, ptr %2654, align 8, !tbaa !89
  store ptr %2639, ptr %2588, align 8, !tbaa !97
  %2655 = add nsw i32 %2650, 1
  br label %2657

2656:                                             ; preds = %2649
  store ptr %2639, ptr %2589, align 8, !tbaa !97
  store ptr %2639, ptr %0, align 8, !tbaa !81
  br label %2657

2657:                                             ; preds = %2656, %2652
  %2658 = phi i32 [ 1, %2656 ], [ %2655, %2652 ]
  store i32 %2658, ptr %2587, align 8, !tbaa !96
  %2659 = load ptr, ptr %9, align 8, !tbaa !91
  %2660 = icmp eq ptr %2659, null
  br i1 %2660, label %2661, label %2663

2661:                                             ; preds = %2657
  %2662 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %2662, ptr %9, align 8, !tbaa !91
  br label %2663

2663:                                             ; preds = %2661, %2657
  %2664 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %2664, ptr noundef nonnull %2627, ptr noundef nonnull %2639) #17
  br label %2665

2665:                                             ; preds = %2663, %2637, %2634
  %2666 = phi ptr [ %2635, %2634 ], [ %2639, %2637 ], [ %2639, %2663 ]
  %2667 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %2602, i64 0, i32 2
  %2668 = getelementptr inbounds %struct.DagNode, ptr %2666, i64 0, i32 16
  %2669 = load ptr, ptr %2668, align 8, !tbaa !82
  %2670 = load ptr, ptr %2590, align 8, !tbaa !34
  %2671 = icmp eq ptr %2670, null
  br i1 %2671, label %2687, label %2672

2672:                                             ; preds = %2665, %2683
  %2673 = phi ptr [ %2685, %2683 ], [ %2670, %2665 ]
  %2674 = load ptr, ptr %2673, align 8, !tbaa !105
  %2675 = icmp eq ptr %2674, %2666
  br i1 %2675, label %2676, label %2683

2676:                                             ; preds = %2672
  %2677 = getelementptr inbounds %struct.DagAdjList, ptr %2673, i64 0, i32 1
  %2678 = load i16, ptr %2677, align 8, !tbaa !106
  %2679 = or i16 %2678, 20
  store i16 %2679, ptr %2677, align 8, !tbaa !106
  %2680 = getelementptr inbounds %struct.DagAdjList, ptr %2673, i64 0, i32 2
  %2681 = load i32, ptr %2680, align 4, !tbaa !114
  %2682 = add nsw i32 %2681, 1
  store i32 %2682, ptr %2680, align 4, !tbaa !114
  br label %2695

2683:                                             ; preds = %2672
  %2684 = getelementptr inbounds %struct.DagAdjList, ptr %2673, i64 0, i32 5
  %2685 = load ptr, ptr %2684, align 8, !tbaa !34
  %2686 = icmp eq ptr %2685, null
  br i1 %2686, label %2687, label %2672, !llvm.loop !115

2687:                                             ; preds = %2683, %2665
  %2688 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2689 = call ptr %2688(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2666, ptr %2689, align 8, !tbaa !105
  %2690 = getelementptr inbounds %struct.DagAdjList, ptr %2689, i64 0, i32 1
  store i16 20, ptr %2690, align 8, !tbaa !106
  %2691 = getelementptr inbounds %struct.DagAdjList, ptr %2689, i64 0, i32 2
  store i32 1, ptr %2691, align 4, !tbaa !114
  %2692 = load ptr, ptr %2590, align 8, !tbaa !87
  %2693 = getelementptr inbounds %struct.DagAdjList, ptr %2689, i64 0, i32 5
  store ptr %2692, ptr %2693, align 8, !tbaa !84
  %2694 = getelementptr inbounds %struct.DagAdjList, ptr %2689, i64 0, i32 4
  store ptr %2667, ptr %2694, align 8, !tbaa !116
  store ptr %2689, ptr %2590, align 8, !tbaa !87
  br label %2695

2695:                                             ; preds = %2687, %2676
  %2696 = icmp eq ptr %2669, null
  br i1 %2696, label %2712, label %2697

2697:                                             ; preds = %2695, %2708
  %2698 = phi ptr [ %2710, %2708 ], [ %2669, %2695 ]
  %2699 = load ptr, ptr %2698, align 8, !tbaa !105
  %2700 = icmp eq ptr %2699, %49
  br i1 %2700, label %2701, label %2708

2701:                                             ; preds = %2697
  %2702 = getelementptr inbounds %struct.DagAdjList, ptr %2698, i64 0, i32 1
  %2703 = load i16, ptr %2702, align 8, !tbaa !106
  %2704 = or i16 %2703, 20
  store i16 %2704, ptr %2702, align 8, !tbaa !106
  %2705 = getelementptr inbounds %struct.DagAdjList, ptr %2698, i64 0, i32 2
  %2706 = load i32, ptr %2705, align 4, !tbaa !114
  %2707 = add nsw i32 %2706, 1
  store i32 %2707, ptr %2705, align 4, !tbaa !114
  br label %2721

2708:                                             ; preds = %2697
  %2709 = getelementptr inbounds %struct.DagAdjList, ptr %2698, i64 0, i32 5
  %2710 = load ptr, ptr %2709, align 8, !tbaa !84
  %2711 = icmp eq ptr %2710, null
  br i1 %2711, label %2712, label %2697, !llvm.loop !117

2712:                                             ; preds = %2708, %2695
  %2713 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2714 = call ptr %2713(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %2714, align 8, !tbaa !105
  %2715 = getelementptr inbounds %struct.DagAdjList, ptr %2714, i64 0, i32 1
  store i16 20, ptr %2715, align 8, !tbaa !106
  %2716 = getelementptr inbounds %struct.DagAdjList, ptr %2714, i64 0, i32 2
  store i32 1, ptr %2716, align 4, !tbaa !114
  %2717 = load ptr, ptr %2668, align 8, !tbaa !82
  %2718 = getelementptr inbounds %struct.DagAdjList, ptr %2714, i64 0, i32 5
  store ptr %2717, ptr %2718, align 8, !tbaa !84
  %2719 = getelementptr inbounds %struct.DagAdjList, ptr %2714, i64 0, i32 4
  store ptr %2667, ptr %2719, align 8, !tbaa !116
  store ptr %2714, ptr %2668, align 8, !tbaa !82
  br label %2721

2720:                                             ; preds = %2608
  br label %2721

2721:                                             ; preds = %2712, %2701, %2608, %2624, %2720
  %2722 = phi i32 [ 1, %2720 ], [ %2625, %2624 ], [ 0, %2608 ], [ %2625, %2701 ], [ %2625, %2712 ]
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2818, label %2724

2724:                                             ; preds = %2721
  %2725 = load ptr, ptr %2591, align 8, !tbaa !209
  %2726 = icmp eq ptr %2725, null
  br i1 %2726, label %2818, label %2727

2727:                                             ; preds = %2724
  %2728 = load ptr, ptr %9, align 8, !tbaa !91
  %2729 = icmp eq ptr %2728, null
  br i1 %2729, label %2732, label %2730

2730:                                             ; preds = %2727
  %2731 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %2728, ptr noundef nonnull %2725) #17
  br label %2732

2732:                                             ; preds = %2730, %2727
  %2733 = phi ptr [ %2731, %2730 ], [ null, %2727 ]
  %2734 = icmp eq ptr %2733, null
  br i1 %2734, label %2735, label %2763

2735:                                             ; preds = %2732
  %2736 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2737 = call ptr %2736(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %2738 = icmp eq ptr %2737, null
  br i1 %2738, label %2763, label %2739

2739:                                             ; preds = %2735
  %2740 = getelementptr inbounds %struct.DagNode, ptr %2737, i64 0, i32 5
  store ptr %2725, ptr %2740, align 8, !tbaa !92
  store i32 0, ptr %2737, align 8, !tbaa !93
  %2741 = load i8, ptr %2592, align 4, !tbaa !55
  %2742 = icmp eq i8 %2741, 0
  br i1 %2742, label %2747, label %2743

2743:                                             ; preds = %2739
  %2744 = getelementptr inbounds %struct.ID, ptr %2725, i64 0, i32 4
  %2745 = load i16, ptr %2744, align 8, !tbaa !94
  %2746 = getelementptr inbounds %struct.DagNode, ptr %2737, i64 0, i32 1
  store i16 %2745, ptr %2746, align 4, !tbaa !95
  br label %2747

2747:                                             ; preds = %2743, %2739
  %2748 = load i32, ptr %2593, align 8, !tbaa !96
  %2749 = icmp eq i32 %2748, 0
  br i1 %2749, label %2754, label %2750

2750:                                             ; preds = %2747
  %2751 = load ptr, ptr %2594, align 8, !tbaa !97
  %2752 = getelementptr inbounds %struct.DagNode, ptr %2751, i64 0, i32 18
  store ptr %2737, ptr %2752, align 8, !tbaa !89
  store ptr %2737, ptr %2594, align 8, !tbaa !97
  %2753 = add nsw i32 %2748, 1
  br label %2755

2754:                                             ; preds = %2747
  store ptr %2737, ptr %2595, align 8, !tbaa !97
  store ptr %2737, ptr %0, align 8, !tbaa !81
  br label %2755

2755:                                             ; preds = %2754, %2750
  %2756 = phi i32 [ 1, %2754 ], [ %2753, %2750 ]
  store i32 %2756, ptr %2593, align 8, !tbaa !96
  %2757 = load ptr, ptr %9, align 8, !tbaa !91
  %2758 = icmp eq ptr %2757, null
  br i1 %2758, label %2759, label %2761

2759:                                             ; preds = %2755
  %2760 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %2760, ptr %9, align 8, !tbaa !91
  br label %2761

2761:                                             ; preds = %2759, %2755
  %2762 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %2762, ptr noundef nonnull %2725, ptr noundef nonnull %2737) #17
  br label %2763

2763:                                             ; preds = %2761, %2735, %2732
  %2764 = phi ptr [ %2733, %2732 ], [ %2737, %2735 ], [ %2737, %2761 ]
  %2765 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %2602, i64 0, i32 2
  %2766 = getelementptr inbounds %struct.DagNode, ptr %2764, i64 0, i32 16
  %2767 = load ptr, ptr %2766, align 8, !tbaa !82
  %2768 = load ptr, ptr %2596, align 8, !tbaa !34
  %2769 = icmp eq ptr %2768, null
  br i1 %2769, label %2785, label %2770

2770:                                             ; preds = %2763, %2781
  %2771 = phi ptr [ %2783, %2781 ], [ %2768, %2763 ]
  %2772 = load ptr, ptr %2771, align 8, !tbaa !105
  %2773 = icmp eq ptr %2772, %2764
  br i1 %2773, label %2774, label %2781

2774:                                             ; preds = %2770
  %2775 = getelementptr inbounds %struct.DagAdjList, ptr %2771, i64 0, i32 1
  %2776 = load i16, ptr %2775, align 8, !tbaa !106
  %2777 = or i16 %2776, 20
  store i16 %2777, ptr %2775, align 8, !tbaa !106
  %2778 = getelementptr inbounds %struct.DagAdjList, ptr %2771, i64 0, i32 2
  %2779 = load i32, ptr %2778, align 4, !tbaa !114
  %2780 = add nsw i32 %2779, 1
  store i32 %2780, ptr %2778, align 4, !tbaa !114
  br label %2793

2781:                                             ; preds = %2770
  %2782 = getelementptr inbounds %struct.DagAdjList, ptr %2771, i64 0, i32 5
  %2783 = load ptr, ptr %2782, align 8, !tbaa !34
  %2784 = icmp eq ptr %2783, null
  br i1 %2784, label %2785, label %2770, !llvm.loop !115

2785:                                             ; preds = %2781, %2763
  %2786 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2787 = call ptr %2786(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2764, ptr %2787, align 8, !tbaa !105
  %2788 = getelementptr inbounds %struct.DagAdjList, ptr %2787, i64 0, i32 1
  store i16 20, ptr %2788, align 8, !tbaa !106
  %2789 = getelementptr inbounds %struct.DagAdjList, ptr %2787, i64 0, i32 2
  store i32 1, ptr %2789, align 4, !tbaa !114
  %2790 = load ptr, ptr %2596, align 8, !tbaa !87
  %2791 = getelementptr inbounds %struct.DagAdjList, ptr %2787, i64 0, i32 5
  store ptr %2790, ptr %2791, align 8, !tbaa !84
  %2792 = getelementptr inbounds %struct.DagAdjList, ptr %2787, i64 0, i32 4
  store ptr %2765, ptr %2792, align 8, !tbaa !116
  store ptr %2787, ptr %2596, align 8, !tbaa !87
  br label %2793

2793:                                             ; preds = %2785, %2774
  %2794 = icmp eq ptr %2767, null
  br i1 %2794, label %2810, label %2795

2795:                                             ; preds = %2793, %2806
  %2796 = phi ptr [ %2808, %2806 ], [ %2767, %2793 ]
  %2797 = load ptr, ptr %2796, align 8, !tbaa !105
  %2798 = icmp eq ptr %2797, %49
  br i1 %2798, label %2799, label %2806

2799:                                             ; preds = %2795
  %2800 = getelementptr inbounds %struct.DagAdjList, ptr %2796, i64 0, i32 1
  %2801 = load i16, ptr %2800, align 8, !tbaa !106
  %2802 = or i16 %2801, 20
  store i16 %2802, ptr %2800, align 8, !tbaa !106
  %2803 = getelementptr inbounds %struct.DagAdjList, ptr %2796, i64 0, i32 2
  %2804 = load i32, ptr %2803, align 4, !tbaa !114
  %2805 = add nsw i32 %2804, 1
  store i32 %2805, ptr %2803, align 4, !tbaa !114
  br label %2818

2806:                                             ; preds = %2795
  %2807 = getelementptr inbounds %struct.DagAdjList, ptr %2796, i64 0, i32 5
  %2808 = load ptr, ptr %2807, align 8, !tbaa !84
  %2809 = icmp eq ptr %2808, null
  br i1 %2809, label %2810, label %2795, !llvm.loop !117

2810:                                             ; preds = %2806, %2793
  %2811 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2812 = call ptr %2811(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %2812, align 8, !tbaa !105
  %2813 = getelementptr inbounds %struct.DagAdjList, ptr %2812, i64 0, i32 1
  store i16 20, ptr %2813, align 8, !tbaa !106
  %2814 = getelementptr inbounds %struct.DagAdjList, ptr %2812, i64 0, i32 2
  store i32 1, ptr %2814, align 4, !tbaa !114
  %2815 = load ptr, ptr %2766, align 8, !tbaa !82
  %2816 = getelementptr inbounds %struct.DagAdjList, ptr %2812, i64 0, i32 5
  store ptr %2815, ptr %2816, align 8, !tbaa !84
  %2817 = getelementptr inbounds %struct.DagAdjList, ptr %2812, i64 0, i32 4
  store ptr %2765, ptr %2817, align 8, !tbaa !116
  store ptr %2812, ptr %2766, align 8, !tbaa !82
  br label %2818

2818:                                             ; preds = %2810, %2799, %2724, %2721
  %2819 = load ptr, ptr %2597, align 8, !tbaa !82
  %2820 = load ptr, ptr %2598, align 8, !tbaa !34
  %2821 = icmp eq ptr %2820, null
  br i1 %2821, label %2837, label %2822

2822:                                             ; preds = %2818, %2833
  %2823 = phi ptr [ %2835, %2833 ], [ %2820, %2818 ]
  %2824 = load ptr, ptr %2823, align 8, !tbaa !105
  %2825 = icmp eq ptr %2824, %1
  br i1 %2825, label %2826, label %2833

2826:                                             ; preds = %2822
  %2827 = getelementptr inbounds %struct.DagAdjList, ptr %2823, i64 0, i32 1
  %2828 = load i16, ptr %2827, align 8, !tbaa !106
  %2829 = or i16 %2828, 1
  store i16 %2829, ptr %2827, align 8, !tbaa !106
  %2830 = getelementptr inbounds %struct.DagAdjList, ptr %2823, i64 0, i32 2
  %2831 = load i32, ptr %2830, align 4, !tbaa !114
  %2832 = add nsw i32 %2831, 1
  store i32 %2832, ptr %2830, align 4, !tbaa !114
  br label %2845

2833:                                             ; preds = %2822
  %2834 = getelementptr inbounds %struct.DagAdjList, ptr %2823, i64 0, i32 5
  %2835 = load ptr, ptr %2834, align 8, !tbaa !34
  %2836 = icmp eq ptr %2835, null
  br i1 %2836, label %2837, label %2822, !llvm.loop !115

2837:                                             ; preds = %2833, %2818
  %2838 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2839 = call ptr %2838(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %1, ptr %2839, align 8, !tbaa !105
  %2840 = getelementptr inbounds %struct.DagAdjList, ptr %2839, i64 0, i32 1
  store i16 1, ptr %2840, align 8, !tbaa !106
  %2841 = getelementptr inbounds %struct.DagAdjList, ptr %2839, i64 0, i32 2
  store i32 1, ptr %2841, align 4, !tbaa !114
  %2842 = load ptr, ptr %2598, align 8, !tbaa !87
  %2843 = getelementptr inbounds %struct.DagAdjList, ptr %2839, i64 0, i32 5
  store ptr %2842, ptr %2843, align 8, !tbaa !84
  %2844 = getelementptr inbounds %struct.DagAdjList, ptr %2839, i64 0, i32 4
  store ptr @.str.45, ptr %2844, align 8, !tbaa !116
  store ptr %2839, ptr %2598, align 8, !tbaa !87
  br label %2845

2845:                                             ; preds = %2837, %2826
  %2846 = icmp eq ptr %2819, null
  br i1 %2846, label %2862, label %2847

2847:                                             ; preds = %2845, %2858
  %2848 = phi ptr [ %2860, %2858 ], [ %2819, %2845 ]
  %2849 = load ptr, ptr %2848, align 8, !tbaa !105
  %2850 = icmp eq ptr %2849, %49
  br i1 %2850, label %2851, label %2858

2851:                                             ; preds = %2847
  %2852 = getelementptr inbounds %struct.DagAdjList, ptr %2848, i64 0, i32 1
  %2853 = load i16, ptr %2852, align 8, !tbaa !106
  %2854 = or i16 %2853, 1
  store i16 %2854, ptr %2852, align 8, !tbaa !106
  %2855 = getelementptr inbounds %struct.DagAdjList, ptr %2848, i64 0, i32 2
  %2856 = load i32, ptr %2855, align 4, !tbaa !114
  %2857 = add nsw i32 %2856, 1
  store i32 %2857, ptr %2855, align 4, !tbaa !114
  br label %3111

2858:                                             ; preds = %2847
  %2859 = getelementptr inbounds %struct.DagAdjList, ptr %2848, i64 0, i32 5
  %2860 = load ptr, ptr %2859, align 8, !tbaa !84
  %2861 = icmp eq ptr %2860, null
  br i1 %2861, label %2862, label %2847, !llvm.loop !117

2862:                                             ; preds = %2858, %2845
  %2863 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2864 = call ptr %2863(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %2864, align 8, !tbaa !105
  %2865 = getelementptr inbounds %struct.DagAdjList, ptr %2864, i64 0, i32 1
  store i16 1, ptr %2865, align 8, !tbaa !106
  %2866 = getelementptr inbounds %struct.DagAdjList, ptr %2864, i64 0, i32 2
  store i32 1, ptr %2866, align 4, !tbaa !114
  %2867 = load ptr, ptr %2597, align 8, !tbaa !82
  %2868 = getelementptr inbounds %struct.DagAdjList, ptr %2864, i64 0, i32 5
  store ptr %2867, ptr %2868, align 8, !tbaa !84
  %2869 = getelementptr inbounds %struct.DagAdjList, ptr %2864, i64 0, i32 4
  store ptr @.str.45, ptr %2869, align 8, !tbaa !116
  store ptr %2864, ptr %2597, align 8, !tbaa !82
  br label %3111

2870:                                             ; preds = %2604
  %2871 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %2602, i64 0, i32 8
  %2872 = load ptr, ptr %2871, align 8, !tbaa !123
  %2873 = icmp eq ptr %2872, null
  br i1 %2873, label %3111, label %2874

2874:                                             ; preds = %2870
  %2875 = call i32 %2872(ptr noundef nonnull %2600, ptr noundef nonnull %8) #17
  %2876 = load ptr, ptr %8, align 8, !tbaa !34
  %2877 = icmp eq ptr %2876, null
  br i1 %2877, label %3105, label %2878

2878:                                             ; preds = %2874
  %2879 = getelementptr inbounds %struct.bConstraint, ptr %2600, i64 0, i32 3
  %2880 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %2602, i64 0, i32 2
  %2881 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %2602, i64 0, i32 2
  %2882 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %2602, i64 0, i32 2
  br label %2883

2883:                                             ; preds = %2878, %3101
  %2884 = phi ptr [ %2876, %2878 ], [ %3103, %3101 ]
  %2885 = phi i32 [ %2601, %2878 ], [ %3102, %3101 ]
  %2886 = getelementptr inbounds %struct.bConstraintTarget, ptr %2884, i64 0, i32 2
  %2887 = load ptr, ptr %2886, align 8, !tbaa !125
  %2888 = icmp eq ptr %2887, null
  br i1 %2888, label %3101, label %2889

2889:                                             ; preds = %2883
  %2890 = load ptr, ptr %9, align 8, !tbaa !91
  %2891 = icmp eq ptr %2890, null
  br i1 %2891, label %2894, label %2892

2892:                                             ; preds = %2889
  %2893 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %2890, ptr noundef nonnull %2887) #17
  br label %2894

2894:                                             ; preds = %2892, %2889
  %2895 = phi ptr [ %2893, %2892 ], [ null, %2889 ]
  %2896 = icmp eq ptr %2895, null
  br i1 %2896, label %2897, label %2925

2897:                                             ; preds = %2894
  %2898 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2899 = call ptr %2898(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %2900 = icmp eq ptr %2899, null
  br i1 %2900, label %2925, label %2901

2901:                                             ; preds = %2897
  %2902 = getelementptr inbounds %struct.DagNode, ptr %2899, i64 0, i32 5
  store ptr %2887, ptr %2902, align 8, !tbaa !92
  store i32 0, ptr %2899, align 8, !tbaa !93
  %2903 = load i8, ptr %2579, align 4, !tbaa !55
  %2904 = icmp eq i8 %2903, 0
  br i1 %2904, label %2909, label %2905

2905:                                             ; preds = %2901
  %2906 = getelementptr inbounds %struct.ID, ptr %2887, i64 0, i32 4
  %2907 = load i16, ptr %2906, align 8, !tbaa !94
  %2908 = getelementptr inbounds %struct.DagNode, ptr %2899, i64 0, i32 1
  store i16 %2907, ptr %2908, align 4, !tbaa !95
  br label %2909

2909:                                             ; preds = %2905, %2901
  %2910 = load i32, ptr %2580, align 8, !tbaa !96
  %2911 = icmp eq i32 %2910, 0
  br i1 %2911, label %2916, label %2912

2912:                                             ; preds = %2909
  %2913 = load ptr, ptr %2581, align 8, !tbaa !97
  %2914 = getelementptr inbounds %struct.DagNode, ptr %2913, i64 0, i32 18
  store ptr %2899, ptr %2914, align 8, !tbaa !89
  store ptr %2899, ptr %2581, align 8, !tbaa !97
  %2915 = add nsw i32 %2910, 1
  br label %2917

2916:                                             ; preds = %2909
  store ptr %2899, ptr %2582, align 8, !tbaa !97
  store ptr %2899, ptr %0, align 8, !tbaa !81
  br label %2917

2917:                                             ; preds = %2916, %2912
  %2918 = phi i32 [ 1, %2916 ], [ %2915, %2912 ]
  store i32 %2918, ptr %2580, align 8, !tbaa !96
  %2919 = load ptr, ptr %9, align 8, !tbaa !91
  %2920 = icmp eq ptr %2919, null
  br i1 %2920, label %2921, label %2923

2921:                                             ; preds = %2917
  %2922 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %2922, ptr %9, align 8, !tbaa !91
  br label %2923

2923:                                             ; preds = %2921, %2917
  %2924 = load ptr, ptr %9, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %2924, ptr noundef nonnull %2887, ptr noundef nonnull %2899) #17
  br label %2925

2925:                                             ; preds = %2923, %2897, %2894
  %2926 = phi ptr [ %2895, %2894 ], [ %2899, %2897 ], [ %2899, %2923 ]
  %2927 = load i16, ptr %2879, align 8, !tbaa !128
  switch i16 %2927, label %2981 [
    i16 4, label %2928
    i16 18, label %2928
  ]

2928:                                             ; preds = %2925, %2925
  %2929 = getelementptr inbounds %struct.DagNode, ptr %2926, i64 0, i32 16
  %2930 = load ptr, ptr %2929, align 8, !tbaa !82
  %2931 = load ptr, ptr %2583, align 8, !tbaa !34
  %2932 = icmp eq ptr %2931, null
  br i1 %2932, label %2948, label %2933

2933:                                             ; preds = %2928, %2944
  %2934 = phi ptr [ %2946, %2944 ], [ %2931, %2928 ]
  %2935 = load ptr, ptr %2934, align 8, !tbaa !105
  %2936 = icmp eq ptr %2935, %2926
  br i1 %2936, label %2937, label %2944

2937:                                             ; preds = %2933
  %2938 = getelementptr inbounds %struct.DagAdjList, ptr %2934, i64 0, i32 1
  %2939 = load i16, ptr %2938, align 8, !tbaa !106
  %2940 = or i16 %2939, 20
  store i16 %2940, ptr %2938, align 8, !tbaa !106
  %2941 = getelementptr inbounds %struct.DagAdjList, ptr %2934, i64 0, i32 2
  %2942 = load i32, ptr %2941, align 4, !tbaa !114
  %2943 = add nsw i32 %2942, 1
  store i32 %2943, ptr %2941, align 4, !tbaa !114
  br label %2956

2944:                                             ; preds = %2933
  %2945 = getelementptr inbounds %struct.DagAdjList, ptr %2934, i64 0, i32 5
  %2946 = load ptr, ptr %2945, align 8, !tbaa !34
  %2947 = icmp eq ptr %2946, null
  br i1 %2947, label %2948, label %2933, !llvm.loop !115

2948:                                             ; preds = %2944, %2928
  %2949 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2950 = call ptr %2949(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2926, ptr %2950, align 8, !tbaa !105
  %2951 = getelementptr inbounds %struct.DagAdjList, ptr %2950, i64 0, i32 1
  store i16 20, ptr %2951, align 8, !tbaa !106
  %2952 = getelementptr inbounds %struct.DagAdjList, ptr %2950, i64 0, i32 2
  store i32 1, ptr %2952, align 4, !tbaa !114
  %2953 = load ptr, ptr %2583, align 8, !tbaa !87
  %2954 = getelementptr inbounds %struct.DagAdjList, ptr %2950, i64 0, i32 5
  store ptr %2953, ptr %2954, align 8, !tbaa !84
  %2955 = getelementptr inbounds %struct.DagAdjList, ptr %2950, i64 0, i32 4
  store ptr %2880, ptr %2955, align 8, !tbaa !116
  store ptr %2950, ptr %2583, align 8, !tbaa !87
  br label %2956

2956:                                             ; preds = %2948, %2937
  %2957 = icmp eq ptr %2930, null
  br i1 %2957, label %2973, label %2958

2958:                                             ; preds = %2956, %2969
  %2959 = phi ptr [ %2971, %2969 ], [ %2930, %2956 ]
  %2960 = load ptr, ptr %2959, align 8, !tbaa !105
  %2961 = icmp eq ptr %2960, %49
  br i1 %2961, label %2962, label %2969

2962:                                             ; preds = %2958
  %2963 = getelementptr inbounds %struct.DagAdjList, ptr %2959, i64 0, i32 1
  %2964 = load i16, ptr %2963, align 8, !tbaa !106
  %2965 = or i16 %2964, 20
  store i16 %2965, ptr %2963, align 8, !tbaa !106
  %2966 = getelementptr inbounds %struct.DagAdjList, ptr %2959, i64 0, i32 2
  %2967 = load i32, ptr %2966, align 4, !tbaa !114
  %2968 = add nsw i32 %2967, 1
  store i32 %2968, ptr %2966, align 4, !tbaa !114
  br label %3101

2969:                                             ; preds = %2958
  %2970 = getelementptr inbounds %struct.DagAdjList, ptr %2959, i64 0, i32 5
  %2971 = load ptr, ptr %2970, align 8, !tbaa !84
  %2972 = icmp eq ptr %2971, null
  br i1 %2972, label %2973, label %2958, !llvm.loop !117

2973:                                             ; preds = %2969, %2956
  %2974 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2975 = call ptr %2974(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %2975, align 8, !tbaa !105
  %2976 = getelementptr inbounds %struct.DagAdjList, ptr %2975, i64 0, i32 1
  store i16 20, ptr %2976, align 8, !tbaa !106
  %2977 = getelementptr inbounds %struct.DagAdjList, ptr %2975, i64 0, i32 2
  store i32 1, ptr %2977, align 4, !tbaa !114
  %2978 = load ptr, ptr %2929, align 8, !tbaa !82
  %2979 = getelementptr inbounds %struct.DagAdjList, ptr %2975, i64 0, i32 5
  store ptr %2978, ptr %2979, align 8, !tbaa !84
  %2980 = getelementptr inbounds %struct.DagAdjList, ptr %2975, i64 0, i32 4
  store ptr %2880, ptr %2980, align 8, !tbaa !116
  store ptr %2975, ptr %2929, align 8, !tbaa !82
  br label %3101

2981:                                             ; preds = %2925
  %2982 = getelementptr inbounds %struct.Object, ptr %2887, i64 0, i32 3
  %2983 = load i16, ptr %2982, align 8, !tbaa !120
  switch i16 %2983, label %3048 [
    i16 25, label %2984
    i16 1, label %2984
    i16 22, label %2984
  ]

2984:                                             ; preds = %2981, %2981, %2981
  %2985 = getelementptr inbounds %struct.bConstraintTarget, ptr %2884, i64 0, i32 3
  %2986 = load i8, ptr %2985, align 8, !tbaa !127
  %2987 = icmp eq i8 %2986, 0
  br i1 %2987, label %3048, label %2988

2988:                                             ; preds = %2984
  %2989 = getelementptr inbounds %struct.DagNode, ptr %2926, i64 0, i32 16
  %2990 = load ptr, ptr %2989, align 8, !tbaa !82
  %2991 = load ptr, ptr %2584, align 8, !tbaa !34
  %2992 = icmp eq ptr %2991, null
  br i1 %2992, label %3008, label %2993

2993:                                             ; preds = %2988, %3004
  %2994 = phi ptr [ %3006, %3004 ], [ %2991, %2988 ]
  %2995 = load ptr, ptr %2994, align 8, !tbaa !105
  %2996 = icmp eq ptr %2995, %2926
  br i1 %2996, label %2997, label %3004

2997:                                             ; preds = %2993
  %2998 = getelementptr inbounds %struct.DagAdjList, ptr %2994, i64 0, i32 1
  %2999 = load i16, ptr %2998, align 8, !tbaa !106
  %3000 = or i16 %2999, 20
  store i16 %3000, ptr %2998, align 8, !tbaa !106
  %3001 = getelementptr inbounds %struct.DagAdjList, ptr %2994, i64 0, i32 2
  %3002 = load i32, ptr %3001, align 4, !tbaa !114
  %3003 = add nsw i32 %3002, 1
  store i32 %3003, ptr %3001, align 4, !tbaa !114
  br label %3016

3004:                                             ; preds = %2993
  %3005 = getelementptr inbounds %struct.DagAdjList, ptr %2994, i64 0, i32 5
  %3006 = load ptr, ptr %3005, align 8, !tbaa !34
  %3007 = icmp eq ptr %3006, null
  br i1 %3007, label %3008, label %2993, !llvm.loop !115

3008:                                             ; preds = %3004, %2988
  %3009 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3010 = call ptr %3009(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2926, ptr %3010, align 8, !tbaa !105
  %3011 = getelementptr inbounds %struct.DagAdjList, ptr %3010, i64 0, i32 1
  store i16 20, ptr %3011, align 8, !tbaa !106
  %3012 = getelementptr inbounds %struct.DagAdjList, ptr %3010, i64 0, i32 2
  store i32 1, ptr %3012, align 4, !tbaa !114
  %3013 = load ptr, ptr %2584, align 8, !tbaa !87
  %3014 = getelementptr inbounds %struct.DagAdjList, ptr %3010, i64 0, i32 5
  store ptr %3013, ptr %3014, align 8, !tbaa !84
  %3015 = getelementptr inbounds %struct.DagAdjList, ptr %3010, i64 0, i32 4
  store ptr %2881, ptr %3015, align 8, !tbaa !116
  store ptr %3010, ptr %2584, align 8, !tbaa !87
  br label %3016

3016:                                             ; preds = %3008, %2997
  %3017 = icmp eq ptr %2990, null
  br i1 %3017, label %3033, label %3018

3018:                                             ; preds = %3016, %3029
  %3019 = phi ptr [ %3031, %3029 ], [ %2990, %3016 ]
  %3020 = load ptr, ptr %3019, align 8, !tbaa !105
  %3021 = icmp eq ptr %3020, %49
  br i1 %3021, label %3022, label %3029

3022:                                             ; preds = %3018
  %3023 = getelementptr inbounds %struct.DagAdjList, ptr %3019, i64 0, i32 1
  %3024 = load i16, ptr %3023, align 8, !tbaa !106
  %3025 = or i16 %3024, 20
  store i16 %3025, ptr %3023, align 8, !tbaa !106
  %3026 = getelementptr inbounds %struct.DagAdjList, ptr %3019, i64 0, i32 2
  %3027 = load i32, ptr %3026, align 4, !tbaa !114
  %3028 = add nsw i32 %3027, 1
  store i32 %3028, ptr %3026, align 4, !tbaa !114
  br label %3041

3029:                                             ; preds = %3018
  %3030 = getelementptr inbounds %struct.DagAdjList, ptr %3019, i64 0, i32 5
  %3031 = load ptr, ptr %3030, align 8, !tbaa !84
  %3032 = icmp eq ptr %3031, null
  br i1 %3032, label %3033, label %3018, !llvm.loop !117

3033:                                             ; preds = %3029, %3016
  %3034 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3035 = call ptr %3034(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %3035, align 8, !tbaa !105
  %3036 = getelementptr inbounds %struct.DagAdjList, ptr %3035, i64 0, i32 1
  store i16 20, ptr %3036, align 8, !tbaa !106
  %3037 = getelementptr inbounds %struct.DagAdjList, ptr %3035, i64 0, i32 2
  store i32 1, ptr %3037, align 4, !tbaa !114
  %3038 = load ptr, ptr %2989, align 8, !tbaa !82
  %3039 = getelementptr inbounds %struct.DagAdjList, ptr %3035, i64 0, i32 5
  store ptr %3038, ptr %3039, align 8, !tbaa !84
  %3040 = getelementptr inbounds %struct.DagAdjList, ptr %3035, i64 0, i32 4
  store ptr %2881, ptr %3040, align 8, !tbaa !116
  store ptr %3035, ptr %2989, align 8, !tbaa !82
  br label %3041

3041:                                             ; preds = %3022, %3033
  %3042 = load i16, ptr %2982, align 8, !tbaa !120
  %3043 = icmp eq i16 %3042, 1
  br i1 %3043, label %3044, label %3101

3044:                                             ; preds = %3041
  %3045 = getelementptr inbounds %struct.DagNode, ptr %2926, i64 0, i32 10
  %3046 = load i64, ptr %3045, align 8, !tbaa !108
  %3047 = or i64 %3046, 4
  store i64 %3047, ptr %3045, align 8, !tbaa !108
  br label %3101

3048:                                             ; preds = %2981, %2984
  %3049 = getelementptr inbounds %struct.DagNode, ptr %2926, i64 0, i32 16
  %3050 = load ptr, ptr %3049, align 8, !tbaa !82
  %3051 = load ptr, ptr %2585, align 8, !tbaa !34
  %3052 = icmp eq ptr %3051, null
  br i1 %3052, label %3068, label %3053

3053:                                             ; preds = %3048, %3064
  %3054 = phi ptr [ %3066, %3064 ], [ %3051, %3048 ]
  %3055 = load ptr, ptr %3054, align 8, !tbaa !105
  %3056 = icmp eq ptr %3055, %2926
  br i1 %3056, label %3057, label %3064

3057:                                             ; preds = %3053
  %3058 = getelementptr inbounds %struct.DagAdjList, ptr %3054, i64 0, i32 1
  %3059 = load i16, ptr %3058, align 8, !tbaa !106
  %3060 = or i16 %3059, 4
  store i16 %3060, ptr %3058, align 8, !tbaa !106
  %3061 = getelementptr inbounds %struct.DagAdjList, ptr %3054, i64 0, i32 2
  %3062 = load i32, ptr %3061, align 4, !tbaa !114
  %3063 = add nsw i32 %3062, 1
  store i32 %3063, ptr %3061, align 4, !tbaa !114
  br label %3076

3064:                                             ; preds = %3053
  %3065 = getelementptr inbounds %struct.DagAdjList, ptr %3054, i64 0, i32 5
  %3066 = load ptr, ptr %3065, align 8, !tbaa !34
  %3067 = icmp eq ptr %3066, null
  br i1 %3067, label %3068, label %3053, !llvm.loop !115

3068:                                             ; preds = %3064, %3048
  %3069 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3070 = call ptr %3069(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2926, ptr %3070, align 8, !tbaa !105
  %3071 = getelementptr inbounds %struct.DagAdjList, ptr %3070, i64 0, i32 1
  store i16 4, ptr %3071, align 8, !tbaa !106
  %3072 = getelementptr inbounds %struct.DagAdjList, ptr %3070, i64 0, i32 2
  store i32 1, ptr %3072, align 4, !tbaa !114
  %3073 = load ptr, ptr %2585, align 8, !tbaa !87
  %3074 = getelementptr inbounds %struct.DagAdjList, ptr %3070, i64 0, i32 5
  store ptr %3073, ptr %3074, align 8, !tbaa !84
  %3075 = getelementptr inbounds %struct.DagAdjList, ptr %3070, i64 0, i32 4
  store ptr %2882, ptr %3075, align 8, !tbaa !116
  store ptr %3070, ptr %2585, align 8, !tbaa !87
  br label %3076

3076:                                             ; preds = %3068, %3057
  %3077 = icmp eq ptr %3050, null
  br i1 %3077, label %3093, label %3078

3078:                                             ; preds = %3076, %3089
  %3079 = phi ptr [ %3091, %3089 ], [ %3050, %3076 ]
  %3080 = load ptr, ptr %3079, align 8, !tbaa !105
  %3081 = icmp eq ptr %3080, %49
  br i1 %3081, label %3082, label %3089

3082:                                             ; preds = %3078
  %3083 = getelementptr inbounds %struct.DagAdjList, ptr %3079, i64 0, i32 1
  %3084 = load i16, ptr %3083, align 8, !tbaa !106
  %3085 = or i16 %3084, 4
  store i16 %3085, ptr %3083, align 8, !tbaa !106
  %3086 = getelementptr inbounds %struct.DagAdjList, ptr %3079, i64 0, i32 2
  %3087 = load i32, ptr %3086, align 4, !tbaa !114
  %3088 = add nsw i32 %3087, 1
  store i32 %3088, ptr %3086, align 4, !tbaa !114
  br label %3101

3089:                                             ; preds = %3078
  %3090 = getelementptr inbounds %struct.DagAdjList, ptr %3079, i64 0, i32 5
  %3091 = load ptr, ptr %3090, align 8, !tbaa !84
  %3092 = icmp eq ptr %3091, null
  br i1 %3092, label %3093, label %3078, !llvm.loop !117

3093:                                             ; preds = %3089, %3076
  %3094 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3095 = call ptr %3094(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %3095, align 8, !tbaa !105
  %3096 = getelementptr inbounds %struct.DagAdjList, ptr %3095, i64 0, i32 1
  store i16 4, ptr %3096, align 8, !tbaa !106
  %3097 = getelementptr inbounds %struct.DagAdjList, ptr %3095, i64 0, i32 2
  store i32 1, ptr %3097, align 4, !tbaa !114
  %3098 = load ptr, ptr %3049, align 8, !tbaa !82
  %3099 = getelementptr inbounds %struct.DagAdjList, ptr %3095, i64 0, i32 5
  store ptr %3098, ptr %3099, align 8, !tbaa !84
  %3100 = getelementptr inbounds %struct.DagAdjList, ptr %3095, i64 0, i32 4
  store ptr %2882, ptr %3100, align 8, !tbaa !116
  store ptr %3095, ptr %3049, align 8, !tbaa !82
  br label %3101

3101:                                             ; preds = %3093, %3082, %2973, %2962, %3041, %3044, %2883
  %3102 = phi i32 [ %2885, %2883 ], [ 0, %3044 ], [ 0, %3041 ], [ 0, %2962 ], [ 0, %2973 ], [ 0, %3082 ], [ 0, %3093 ]
  %3103 = load ptr, ptr %2884, align 8, !tbaa !34
  %3104 = icmp eq ptr %3103, null
  br i1 %3104, label %3105, label %2883, !llvm.loop !210

3105:                                             ; preds = %3101, %2874
  %3106 = phi i32 [ %2601, %2874 ], [ %3102, %3101 ]
  %3107 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %2602, i64 0, i32 9
  %3108 = load ptr, ptr %3107, align 8, !tbaa !131
  %3109 = icmp eq ptr %3108, null
  br i1 %3109, label %3111, label %3110

3110:                                             ; preds = %3105
  call void %3108(ptr noundef nonnull %2600, ptr noundef nonnull %8, i8 noundef zeroext 1) #17
  br label %3111

3111:                                             ; preds = %2862, %2851, %3105, %3110, %2870, %2599
  %3112 = phi i32 [ %2601, %2599 ], [ %3106, %3110 ], [ %3106, %3105 ], [ %2601, %2870 ], [ 0, %2851 ], [ 0, %2862 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  %3113 = load ptr, ptr %2600, align 8, !tbaa !34
  %3114 = icmp eq ptr %3113, null
  br i1 %3114, label %3115, label %2599, !llvm.loop !211

3115:                                             ; preds = %3111, %2574
  %3116 = phi i32 [ %960, %2574 ], [ %3112, %3111 ]
  %3117 = icmp eq i32 %3116, 1
  br i1 %3117, label %3118, label %3172

3118:                                             ; preds = %3115
  %3119 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 16
  %3120 = load ptr, ptr %3119, align 8, !tbaa !82
  %3121 = getelementptr inbounds %struct.DagNode, ptr %49, i64 0, i32 17
  %3122 = load ptr, ptr %3121, align 8, !tbaa !34
  %3123 = icmp eq ptr %3122, null
  br i1 %3123, label %3139, label %3124

3124:                                             ; preds = %3118, %3135
  %3125 = phi ptr [ %3137, %3135 ], [ %3122, %3118 ]
  %3126 = load ptr, ptr %3125, align 8, !tbaa !105
  %3127 = icmp eq ptr %3126, %1
  br i1 %3127, label %3128, label %3135

3128:                                             ; preds = %3124
  %3129 = getelementptr inbounds %struct.DagAdjList, ptr %3125, i64 0, i32 1
  %3130 = load i16, ptr %3129, align 8, !tbaa !106
  %3131 = or i16 %3130, 1
  store i16 %3131, ptr %3129, align 8, !tbaa !106
  %3132 = getelementptr inbounds %struct.DagAdjList, ptr %3125, i64 0, i32 2
  %3133 = load i32, ptr %3132, align 4, !tbaa !114
  %3134 = add nsw i32 %3133, 1
  store i32 %3134, ptr %3132, align 4, !tbaa !114
  br label %3147

3135:                                             ; preds = %3124
  %3136 = getelementptr inbounds %struct.DagAdjList, ptr %3125, i64 0, i32 5
  %3137 = load ptr, ptr %3136, align 8, !tbaa !34
  %3138 = icmp eq ptr %3137, null
  br i1 %3138, label %3139, label %3124, !llvm.loop !115

3139:                                             ; preds = %3135, %3118
  %3140 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3141 = call ptr %3140(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %1, ptr %3141, align 8, !tbaa !105
  %3142 = getelementptr inbounds %struct.DagAdjList, ptr %3141, i64 0, i32 1
  store i16 1, ptr %3142, align 8, !tbaa !106
  %3143 = getelementptr inbounds %struct.DagAdjList, ptr %3141, i64 0, i32 2
  store i32 1, ptr %3143, align 4, !tbaa !114
  %3144 = load ptr, ptr %3121, align 8, !tbaa !87
  %3145 = getelementptr inbounds %struct.DagAdjList, ptr %3141, i64 0, i32 5
  store ptr %3144, ptr %3145, align 8, !tbaa !84
  %3146 = getelementptr inbounds %struct.DagAdjList, ptr %3141, i64 0, i32 4
  store ptr @.str.45, ptr %3146, align 8, !tbaa !116
  store ptr %3141, ptr %3121, align 8, !tbaa !87
  br label %3147

3147:                                             ; preds = %3139, %3128
  %3148 = icmp eq ptr %3120, null
  br i1 %3148, label %3164, label %3149

3149:                                             ; preds = %3147, %3160
  %3150 = phi ptr [ %3162, %3160 ], [ %3120, %3147 ]
  %3151 = load ptr, ptr %3150, align 8, !tbaa !105
  %3152 = icmp eq ptr %3151, %49
  br i1 %3152, label %3153, label %3160

3153:                                             ; preds = %3149
  %3154 = getelementptr inbounds %struct.DagAdjList, ptr %3150, i64 0, i32 1
  %3155 = load i16, ptr %3154, align 8, !tbaa !106
  %3156 = or i16 %3155, 1
  store i16 %3156, ptr %3154, align 8, !tbaa !106
  %3157 = getelementptr inbounds %struct.DagAdjList, ptr %3150, i64 0, i32 2
  %3158 = load i32, ptr %3157, align 4, !tbaa !114
  %3159 = add nsw i32 %3158, 1
  store i32 %3159, ptr %3157, align 4, !tbaa !114
  br label %3172

3160:                                             ; preds = %3149
  %3161 = getelementptr inbounds %struct.DagAdjList, ptr %3150, i64 0, i32 5
  %3162 = load ptr, ptr %3161, align 8, !tbaa !84
  %3163 = icmp eq ptr %3162, null
  br i1 %3163, label %3164, label %3149, !llvm.loop !117

3164:                                             ; preds = %3160, %3147
  %3165 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3166 = call ptr %3165(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %49, ptr %3166, align 8, !tbaa !105
  %3167 = getelementptr inbounds %struct.DagAdjList, ptr %3166, i64 0, i32 1
  store i16 1, ptr %3167, align 8, !tbaa !106
  %3168 = getelementptr inbounds %struct.DagAdjList, ptr %3166, i64 0, i32 2
  store i32 1, ptr %3168, align 4, !tbaa !114
  %3169 = load ptr, ptr %3119, align 8, !tbaa !82
  %3170 = getelementptr inbounds %struct.DagAdjList, ptr %3166, i64 0, i32 5
  store ptr %3169, ptr %3170, align 8, !tbaa !84
  %3171 = getelementptr inbounds %struct.DagAdjList, ptr %3166, i64 0, i32 4
  store ptr @.str.45, ptr %3171, align 8, !tbaa !116
  store ptr %3166, ptr %3119, align 8, !tbaa !82
  br label %3172

3172:                                             ; preds = %3164, %3153, %3115
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_dag_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i16 noundef signext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !212
  %8 = and i16 %7, 1024
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = or disjoint i16 %7, 1024
  store i16 %11, ptr %6, align 2, !tbaa !212
  %12 = getelementptr inbounds %struct.Group, ptr %3, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %10
  %16 = sext i16 %4 to i32
  br label %17

17:                                               ; preds = %15, %26
  %18 = phi ptr [ %13, %15 ], [ %27, %26 ]
  %19 = getelementptr inbounds %struct.GroupObject, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !149
  tail call fastcc void @build_dag_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %20, i32 noundef %16)
  %21 = load ptr, ptr %19, align 8, !tbaa !149
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 112
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  tail call fastcc void @build_dag_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %23, i16 noundef signext %4)
  br label %26

26:                                               ; preds = %17, %25
  %27 = load ptr, ptr %18, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17, !llvm.loop !214

29:                                               ; preds = %26, %10, %5
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @dag_find_node(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %4, ptr noundef %1) #17
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #1

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @dag_get_node(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %4, ptr noundef %1) #17
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %42

11:                                               ; preds = %8
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.DagNode, ptr %13, i64 0, i32 5
  store ptr %1, ptr %16, align 8, !tbaa !92
  store i32 0, ptr %13, align 8, !tbaa !93
  %17 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %18 = load i8, ptr %17, align 4, !tbaa !55
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !94
  %23 = getelementptr inbounds %struct.DagNode, ptr %13, i64 0, i32 1
  store i16 %22, ptr %23, align 4, !tbaa !95
  br label %24

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !96
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %27, label %33, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %28, align 8, !tbaa !97
  %31 = getelementptr inbounds %struct.DagNode, ptr %30, i64 0, i32 18
  store ptr %13, ptr %31, align 8, !tbaa !89
  store ptr %13, ptr %28, align 8, !tbaa !97
  %32 = add nsw i32 %26, 1
  br label %34

33:                                               ; preds = %24
  store ptr %13, ptr %28, align 8, !tbaa !97
  store ptr %13, ptr %0, align 8, !tbaa !81
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ 1, %33 ], [ %32, %29 ]
  store i32 %35, ptr %25, align 8, !tbaa !96
  %36 = load ptr, ptr %3, align 8, !tbaa !91
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %39, ptr %3, align 8, !tbaa !91
  br label %40

40:                                               ; preds = %38, %34
  %41 = load ptr, ptr %3, align 8, !tbaa !91
  tail call void @BLI_ghash_insert(ptr noundef %41, ptr noundef %1, ptr noundef nonnull %13) #17
  br label %42

42:                                               ; preds = %40, %11, %8
  %43 = phi ptr [ %9, %8 ], [ %13, %11 ], [ %13, %40 ]
  ret ptr %43
}

; Function Attrs: nounwind uwtable
define dso_local ptr @dag_get_sub_node(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct.DagNode, ptr %3, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !105
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %13, label %22

10:                                               ; preds = %22
  %11 = load ptr, ptr %25, align 8, !tbaa !105
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %22, !llvm.loop !215

13:                                               ; preds = %10, %7
  %14 = phi ptr [ %5, %7 ], [ %25, %10 ]
  %15 = phi ptr [ null, %7 ], [ %23, %10 ]
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.DagAdjList, ptr %14, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !84
  %19 = getelementptr inbounds %struct.DagAdjList, ptr %15, i64 0, i32 5
  %20 = select i1 %16, ptr %4, ptr %19
  store ptr %18, ptr %20, align 8, !tbaa !34
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %21(ptr noundef nonnull %14) #17
  br label %27

22:                                               ; preds = %7, %10
  %23 = phi ptr [ %25, %10 ], [ %5, %7 ]
  %24 = getelementptr inbounds %struct.DagAdjList, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %10, !llvm.loop !215

27:                                               ; preds = %22, %13, %2
  %28 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %29, ptr noundef %1) #17
  br label %33

33:                                               ; preds = %27, %31
  %34 = phi ptr [ %32, %31 ], [ null, %27 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %38 = tail call ptr %37(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %67, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.DagNode, ptr %38, i64 0, i32 5
  store ptr %1, ptr %41, align 8, !tbaa !92
  store i32 0, ptr %38, align 8, !tbaa !93
  %42 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %43 = load i8, ptr %42, align 4, !tbaa !55
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %47 = load i16, ptr %46, align 8, !tbaa !94
  %48 = getelementptr inbounds %struct.DagNode, ptr %38, i64 0, i32 1
  store i16 %47, ptr %48, align 4, !tbaa !95
  br label %49

49:                                               ; preds = %45, %40
  %50 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !96
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %52, label %58, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %53, align 8, !tbaa !97
  %56 = getelementptr inbounds %struct.DagNode, ptr %55, i64 0, i32 18
  store ptr %38, ptr %56, align 8, !tbaa !89
  store ptr %38, ptr %53, align 8, !tbaa !97
  %57 = add nsw i32 %51, 1
  br label %59

58:                                               ; preds = %49
  store ptr %38, ptr %53, align 8, !tbaa !97
  store ptr %38, ptr %0, align 8, !tbaa !81
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i32 [ 1, %58 ], [ %57, %54 ]
  store i32 %60, ptr %50, align 8, !tbaa !96
  %61 = load ptr, ptr %28, align 8, !tbaa !91
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %64, ptr %28, align 8, !tbaa !91
  br label %65

65:                                               ; preds = %63, %59
  %66 = load ptr, ptr %28, align 8, !tbaa !91
  tail call void @BLI_ghash_insert(ptr noundef %66, ptr noundef %1, ptr noundef nonnull %38) #17
  br label %67

67:                                               ; preds = %65, %36, %33
  %68 = phi ptr [ %34, %33 ], [ %38, %36 ], [ %38, %65 ]
  ret ptr %68
}

; Function Attrs: nounwind uwtable
define dso_local void @dag_add_relation(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.DagNode, ptr %2, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %5, %22
  %12 = phi ptr [ %24, %22 ], [ %9, %5 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.DagAdjList, ptr %12, i64 0, i32 1
  %17 = load i16, ptr %16, align 8, !tbaa !106
  %18 = or i16 %17, %3
  store i16 %18, ptr %16, align 8, !tbaa !106
  %19 = getelementptr inbounds %struct.DagAdjList, ptr %12, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !114
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !114
  br label %34

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.DagAdjList, ptr %12, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %11, !llvm.loop !115

26:                                               ; preds = %22, %5
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %28 = tail call ptr %27(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %1, ptr %28, align 8, !tbaa !105
  %29 = getelementptr inbounds %struct.DagAdjList, ptr %28, i64 0, i32 1
  store i16 %3, ptr %29, align 8, !tbaa !106
  %30 = getelementptr inbounds %struct.DagAdjList, ptr %28, i64 0, i32 2
  store i32 1, ptr %30, align 4, !tbaa !114
  %31 = load ptr, ptr %8, align 8, !tbaa !87
  %32 = getelementptr inbounds %struct.DagAdjList, ptr %28, i64 0, i32 5
  store ptr %31, ptr %32, align 8, !tbaa !84
  %33 = getelementptr inbounds %struct.DagAdjList, ptr %28, i64 0, i32 4
  store ptr %4, ptr %33, align 8, !tbaa !116
  store ptr %28, ptr %8, align 8, !tbaa !87
  br label %34

34:                                               ; preds = %15, %26
  %35 = icmp eq ptr %7, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %34, %47
  %37 = phi ptr [ %49, %47 ], [ %7, %34 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !105
  %39 = icmp eq ptr %38, %2
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.DagAdjList, ptr %37, i64 0, i32 1
  %42 = load i16, ptr %41, align 8, !tbaa !106
  %43 = or i16 %42, %3
  store i16 %43, ptr %41, align 8, !tbaa !106
  %44 = getelementptr inbounds %struct.DagAdjList, ptr %37, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !114
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %44, align 4, !tbaa !114
  br label %59

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.DagAdjList, ptr %37, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !84
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %36, !llvm.loop !117

51:                                               ; preds = %47, %34
  %52 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %53 = tail call ptr %52(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2, ptr %53, align 8, !tbaa !105
  %54 = getelementptr inbounds %struct.DagAdjList, ptr %53, i64 0, i32 1
  store i16 %3, ptr %54, align 8, !tbaa !106
  %55 = getelementptr inbounds %struct.DagAdjList, ptr %53, i64 0, i32 2
  store i32 1, ptr %55, align 4, !tbaa !114
  %56 = load ptr, ptr %6, align 8, !tbaa !82
  %57 = getelementptr inbounds %struct.DagAdjList, ptr %53, i64 0, i32 5
  store ptr %56, ptr %57, align 8, !tbaa !84
  %58 = getelementptr inbounds %struct.DagAdjList, ptr %53, i64 0, i32 4
  store ptr %4, ptr %58, align 8, !tbaa !116
  store ptr %53, ptr %6, align 8, !tbaa !82
  br label %59

59:                                               ; preds = %51, %40
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @graph_print_queue(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %18, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr @stderr, align 8, !tbaa !34
  %7 = load ptr, ptr %5, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.DagNode, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %7, align 8, !tbaa !93
  %12 = getelementptr inbounds %struct.DagNode, ptr %7, i64 0, i32 14
  %13 = load i32, ptr %12, align 4, !tbaa !216
  %14 = getelementptr inbounds %struct.DagNode, ptr %7, i64 0, i32 15
  %15 = load i32, ptr %14, align 8, !tbaa !217
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull %10, i32 noundef %11, i32 noundef %13, i32 noundef %15) #18
  %17 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %4, !llvm.loop !218

20:                                               ; preds = %4, %1
  %21 = load ptr, ptr @stderr, align 8, !tbaa !34
  %22 = tail call i32 @fputc(i32 10, ptr %21)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @graph_print_queue_dist(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %57, label %4

4:                                                ; preds = %1, %49
  %5 = phi ptr [ %55, %49 ], [ %2, %1 ]
  %6 = load ptr, ptr @stderr, align 8, !tbaa !34
  %7 = load ptr, ptr %5, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.DagNode, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = getelementptr inbounds %struct.DagNode, ptr %7, i64 0, i32 14
  %12 = load i32, ptr %11, align 4, !tbaa !216
  %13 = getelementptr inbounds %struct.DagNode, ptr %7, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !217
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef nonnull %10, i32 noundef %12, i32 noundef %14) #18
  %16 = load ptr, ptr %5, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.DagNode, ptr %16, i64 0, i32 14
  %18 = load i32, ptr %17, align 4, !tbaa !216
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %30

20:                                               ; preds = %4, %20
  %21 = phi i32 [ %24, %20 ], [ 0, %4 ]
  %22 = load ptr, ptr @stderr, align 8, !tbaa !34
  %23 = tail call i32 @fputc(i32 noundef 32, ptr noundef %22)
  %24 = add nuw nsw i32 %21, 1
  %25 = load ptr, ptr %5, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.DagNode, ptr %25, i64 0, i32 14
  %27 = load i32, ptr %26, align 4, !tbaa !216
  %28 = add nsw i32 %27, -1
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %20, label %30, !llvm.loop !219

30:                                               ; preds = %20, %4
  %31 = phi i32 [ 0, %4 ], [ %24, %20 ]
  %32 = load ptr, ptr @stderr, align 8, !tbaa !34
  %33 = tail call i32 @fputc(i32 noundef 124, ptr noundef %32)
  %34 = load ptr, ptr %5, align 8, !tbaa !49
  %35 = getelementptr inbounds %struct.DagNode, ptr %34, i64 0, i32 15
  %36 = load i32, ptr %35, align 8, !tbaa !217
  %37 = add nsw i32 %36, -2
  %38 = icmp slt i32 %31, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30, %39
  %40 = phi i32 [ %43, %39 ], [ %31, %30 ]
  %41 = load ptr, ptr @stderr, align 8, !tbaa !34
  %42 = tail call i32 @fputc(i32 noundef 45, ptr noundef %41)
  %43 = add nuw nsw i32 %40, 1
  %44 = load ptr, ptr %5, align 8, !tbaa !49
  %45 = getelementptr inbounds %struct.DagNode, ptr %44, i64 0, i32 15
  %46 = load i32, ptr %45, align 8, !tbaa !217
  %47 = add nsw i32 %46, -2
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %39, label %49, !llvm.loop !220

49:                                               ; preds = %39, %30
  %50 = load ptr, ptr @stderr, align 8, !tbaa !34
  %51 = tail call i32 @fputc(i32 noundef 124, ptr noundef %50)
  %52 = load ptr, ptr @stderr, align 8, !tbaa !34
  %53 = tail call i32 @fputc(i32 noundef 10, ptr noundef %52)
  %54 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %5, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %4, !llvm.loop !221

57:                                               ; preds = %49, %1
  %58 = load ptr, ptr @stderr, align 8, !tbaa !34
  %59 = tail call i32 @fputc(i32 10, ptr %58)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local void @graph_print_adj_list(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1, %26
  %5 = phi ptr [ %30, %26 ], [ %2, %1 ]
  %6 = load ptr, ptr @stderr, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %5, align 8, !tbaa !93
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef nonnull %9, i32 noundef %10) #18
  %12 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 16
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %4, %15
  %16 = phi ptr [ %24, %15 ], [ %13, %4 ]
  %17 = load ptr, ptr @stderr, align 8, !tbaa !34
  %18 = load ptr, ptr %16, align 8, !tbaa !105
  %19 = getelementptr inbounds %struct.DagNode, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  %21 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.15, ptr noundef nonnull %21) #18
  %23 = getelementptr inbounds %struct.DagAdjList, ptr %16, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %15, !llvm.loop !222

26:                                               ; preds = %15, %4
  %27 = load ptr, ptr @stderr, align 8, !tbaa !34
  %28 = tail call i32 @fputc(i32 10, ptr %27)
  %29 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %4, !llvm.loop !223

32:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @DAG_editors_update_cb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 {
  store ptr %0, ptr @EditorsUpdateIDCb, align 8, !tbaa !34
  store ptr %1, ptr @EditorsUpdateSceneCb, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DAG_relations_tag_update(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %1, %44
  %6 = phi ptr [ %45, %44 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 31
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !81
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %10, %34
  %14 = phi ptr [ %36, %34 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.DagNode, ptr %14, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %13 ]
  %20 = getelementptr inbounds %struct.DagAdjList, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !84
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %19) #17
  %23 = icmp eq ptr %21, null
  br i1 %23, label %24, label %18, !llvm.loop !86

24:                                               ; preds = %18, %13
  %25 = getelementptr inbounds %struct.DagNode, ptr %14, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %31, %28 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.DagAdjList, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !84
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %32(ptr noundef nonnull %29) #17
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %28, !llvm.loop !88

34:                                               ; preds = %28, %24
  %35 = getelementptr inbounds %struct.DagNode, ptr %14, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %37(ptr noundef nonnull %14) #17
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %13, !llvm.loop !90

39:                                               ; preds = %34, %10
  %40 = getelementptr inbounds %struct.DagForest, ptr %8, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !91
  tail call void @BLI_ghash_free(ptr noundef %41, ptr noundef null, ptr noundef null) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %43 = load ptr, ptr %7, align 8, !tbaa !58
  tail call void %42(ptr noundef %43) #17
  store ptr null, ptr %7, align 8, !tbaa !58
  br label %44

44:                                               ; preds = %5, %39
  %45 = load ptr, ptr %6, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %5, !llvm.loop !224

47:                                               ; preds = %44, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DAG_scene_relations_rebuild(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !81
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %6, %30
  %10 = phi ptr [ %32, %30 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.DagNode, ptr %10, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.DagAdjList, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %15) #17
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %14, !llvm.loop !86

20:                                               ; preds = %14, %9
  %21 = getelementptr inbounds %struct.DagNode, ptr %10, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !87
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %27, %24 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.DagAdjList, ptr %25, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %25) #17
  %29 = icmp eq ptr %27, null
  br i1 %29, label %30, label %24, !llvm.loop !88

30:                                               ; preds = %24, %20
  %31 = getelementptr inbounds %struct.DagNode, ptr %10, i64 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !89
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %33(ptr noundef nonnull %10) #17
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %9, !llvm.loop !90

35:                                               ; preds = %30, %6
  %36 = getelementptr inbounds %struct.DagForest, ptr %4, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !91
  tail call void @BLI_ghash_free(ptr noundef %37, ptr noundef null, ptr noundef null) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %39 = load ptr, ptr %3, align 8, !tbaa !58
  tail call void %38(ptr noundef %39) #17
  store ptr null, ptr %3, align 8, !tbaa !58
  br label %40

40:                                               ; preds = %2, %35
  tail call void @DAG_scene_relations_update(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DAG_scene_relations_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %333

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %9 = tail call ptr @build_dag(ptr noundef %0, ptr noundef %1, i16 noundef signext 61)
  %10 = load ptr, ptr %5, align 8, !tbaa !58
  tail call fastcc void @dag_check_cycle(ptr noundef %10)
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 32, ptr noundef nonnull @.str) #17
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 32, ptr noundef nonnull @.str) #17
  %15 = getelementptr inbounds %struct.DagNodeQueue, ptr %12, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 16, ptr noundef nonnull @.str.1) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.DagNodeQueue, ptr %18, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !41
  store ptr %17, ptr %18, align 8, !tbaa !42
  br label %20

20:                                               ; preds = %20, %8
  %21 = phi i32 [ %28, %20 ], [ 1, %8 ]
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %23 = tail call ptr %22(i64 noundef 16, ptr noundef nonnull @.str.2) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr %15, align 8, !tbaa !38
  %25 = getelementptr inbounds %struct.DagNodeQueue, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %26, i64 0, i32 1
  store ptr %23, ptr %27, align 8, !tbaa !43
  store ptr %23, ptr %25, align 8, !tbaa !41
  %28 = add nuw nsw i32 %21, 1
  %29 = icmp eq i32 %28, 50
  br i1 %29, label %30, label %20, !llvm.loop !45

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.DagNodeQueue, ptr %24, i64 0, i32 2
  store i32 50, ptr %31, align 8, !tbaa !48
  %32 = load ptr, ptr %5, align 8, !tbaa !58
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30, %35
  %36 = phi ptr [ %38, %35 ], [ %33, %30 ]
  store i32 0, ptr %36, align 8, !tbaa !93
  %37 = getelementptr inbounds %struct.DagNode, ptr %36, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %35, !llvm.loop !225

40:                                               ; preds = %35, %30
  %41 = load ptr, ptr %32, align 8, !tbaa !81
  store i32 1, ptr %41, align 8, !tbaa !93
  %42 = load ptr, ptr %24, align 8, !tbaa !42
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !43
  store ptr %46, ptr %24, align 8, !tbaa !42
  %47 = icmp eq ptr %23, %42
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i32, ptr %31, align 8, !tbaa !48
  %51 = add nsw i32 %50, -1
  store i32 %51, ptr %31, align 8, !tbaa !48
  br label %72

52:                                               ; preds = %40
  %53 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %54 = tail call ptr %53(i64 noundef 16, ptr noundef nonnull @.str.4) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 0, i64 16, i1 false)
  %55 = load ptr, ptr %15, align 8, !tbaa !38
  %56 = getelementptr inbounds %struct.DagNodeQueue, ptr %55, i64 0, i32 1
  store ptr %54, ptr %56, align 8, !tbaa !41
  store ptr %54, ptr %55, align 8, !tbaa !42
  br label %57

57:                                               ; preds = %57, %52
  %58 = phi i32 [ 1, %52 ], [ %65, %57 ]
  %59 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %60 = tail call ptr %59(i64 noundef 16, ptr noundef nonnull @.str.5) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  %61 = load ptr, ptr %15, align 8, !tbaa !38
  %62 = getelementptr inbounds %struct.DagNodeQueue, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !41
  %64 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %63, i64 0, i32 1
  store ptr %60, ptr %64, align 8, !tbaa !43
  store ptr %60, ptr %62, align 8, !tbaa !41
  %65 = add nuw nsw i32 %58, 1
  %66 = icmp eq i32 %65, 50
  br i1 %66, label %67, label %57, !llvm.loop !54

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.DagNodeQueue, ptr %61, i64 0, i32 2
  store i32 50, ptr %68, align 8, !tbaa !48
  %69 = load ptr, ptr %61, align 8, !tbaa !42
  %70 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !43
  store ptr %71, ptr %61, align 8, !tbaa !42
  br label %72

72:                                               ; preds = %67, %49
  %73 = phi ptr [ %42, %49 ], [ %69, %67 ]
  %74 = load ptr, ptr %12, align 8, !tbaa !42
  %75 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %73, i64 0, i32 1
  store ptr %74, ptr %75, align 8, !tbaa !43
  store ptr %41, ptr %73, align 8, !tbaa !49
  store ptr %73, ptr %12, align 8, !tbaa !42
  %76 = getelementptr inbounds %struct.DagNodeQueue, ptr %12, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !41
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store ptr %73, ptr %76, align 8, !tbaa !41
  br label %80

80:                                               ; preds = %72, %79
  %81 = getelementptr inbounds %struct.DagNodeQueue, ptr %12, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !48
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %81, align 8, !tbaa !48
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %209, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  br label %87

87:                                               ; preds = %85, %205
  %88 = phi i32 [ 2, %85 ], [ %206, %205 ]
  %89 = load ptr, ptr %12, align 8, !tbaa !42
  %90 = load ptr, ptr %89, align 8, !tbaa !49
  %91 = getelementptr inbounds %struct.DagNode, ptr %90, i64 0, i32 16
  %92 = load ptr, ptr %91, align 8, !tbaa !34
  %93 = icmp eq ptr %92, null
  br i1 %93, label %156, label %94

94:                                               ; preds = %87
  %95 = load ptr, ptr %92, align 8, !tbaa !105
  %96 = load i32, ptr %95, align 8, !tbaa !93
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %94, %103
  %99 = phi ptr [ %101, %103 ], [ %92, %94 ]
  %100 = getelementptr inbounds %struct.DagAdjList, ptr %99, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !34
  %102 = icmp eq ptr %101, null
  br i1 %102, label %156, label %103, !llvm.loop !226

103:                                              ; preds = %98
  %104 = load ptr, ptr %101, align 8, !tbaa !105
  %105 = load i32, ptr %104, align 8, !tbaa !93
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %98, !llvm.loop !226

107:                                              ; preds = %103, %94
  %108 = phi i1 [ %93, %94 ], [ %102, %103 ]
  %109 = phi ptr [ %95, %94 ], [ %104, %103 ]
  %110 = getelementptr inbounds %struct.DagNode, ptr %109, i64 0, i32 14
  store i32 %88, ptr %110, align 4, !tbaa !216
  store i32 1, ptr %109, align 8, !tbaa !93
  %111 = add nsw i32 %88, 1
  %112 = load ptr, ptr %15, align 8, !tbaa !38
  %113 = load ptr, ptr %112, align 8, !tbaa !42
  %114 = icmp eq ptr %113, null
  br i1 %114, label %126, label %115

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %113, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !43
  store ptr %117, ptr %112, align 8, !tbaa !42
  %118 = getelementptr inbounds %struct.DagNodeQueue, ptr %112, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !41
  %120 = icmp eq ptr %119, %113
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %112, i8 0, i64 16, i1 false)
  br label %122

122:                                              ; preds = %121, %115
  %123 = getelementptr inbounds %struct.DagNodeQueue, ptr %112, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !48
  %125 = add nsw i32 %124, -1
  store i32 %125, ptr %123, align 8, !tbaa !48
  br label %146

126:                                              ; preds = %107
  %127 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %128 = call ptr %127(i64 noundef 16, ptr noundef nonnull @.str.4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %128, i8 0, i64 16, i1 false)
  %129 = load ptr, ptr %15, align 8, !tbaa !38
  %130 = getelementptr inbounds %struct.DagNodeQueue, ptr %129, i64 0, i32 1
  store ptr %128, ptr %130, align 8, !tbaa !41
  store ptr %128, ptr %129, align 8, !tbaa !42
  br label %131

131:                                              ; preds = %131, %126
  %132 = phi i32 [ 1, %126 ], [ %139, %131 ]
  %133 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %134 = call ptr %133(i64 noundef 16, ptr noundef nonnull @.str.5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %134, i8 0, i64 16, i1 false)
  %135 = load ptr, ptr %15, align 8, !tbaa !38
  %136 = getelementptr inbounds %struct.DagNodeQueue, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !41
  %138 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %137, i64 0, i32 1
  store ptr %134, ptr %138, align 8, !tbaa !43
  store ptr %134, ptr %136, align 8, !tbaa !41
  %139 = add nuw nsw i32 %132, 1
  %140 = icmp eq i32 %139, 50
  br i1 %140, label %141, label %131, !llvm.loop !54

141:                                              ; preds = %131
  %142 = getelementptr inbounds %struct.DagNodeQueue, ptr %135, i64 0, i32 2
  store i32 50, ptr %142, align 8, !tbaa !48
  %143 = load ptr, ptr %135, align 8, !tbaa !42
  %144 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !43
  store ptr %145, ptr %135, align 8, !tbaa !42
  br label %146

146:                                              ; preds = %141, %122
  %147 = phi ptr [ %113, %122 ], [ %143, %141 ]
  %148 = load ptr, ptr %12, align 8, !tbaa !42
  %149 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %147, i64 0, i32 1
  store ptr %148, ptr %149, align 8, !tbaa !43
  store ptr %109, ptr %147, align 8, !tbaa !49
  store ptr %147, ptr %12, align 8, !tbaa !42
  %150 = load ptr, ptr %76, align 8, !tbaa !41
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store ptr %147, ptr %76, align 8, !tbaa !41
  br label %153

153:                                              ; preds = %146, %152
  %154 = load i32, ptr %81, align 8, !tbaa !48
  %155 = add nsw i32 %154, 1
  store i32 %155, ptr %81, align 8, !tbaa !48
  br label %156

156:                                              ; preds = %98, %87, %153
  %157 = phi i1 [ %108, %153 ], [ %93, %87 ], [ %102, %98 ]
  %158 = phi i32 [ %111, %153 ], [ %88, %87 ], [ %88, %98 ]
  %159 = icmp ne ptr %90, null
  %160 = and i1 %157, %159
  br i1 %160, label %161, label %205

161:                                              ; preds = %156
  %162 = load ptr, ptr %12, align 8, !tbaa !42
  %163 = icmp eq ptr %162, null
  br i1 %163, label %191, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %162, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !43
  store ptr %166, ptr %12, align 8, !tbaa !42
  %167 = load ptr, ptr %76, align 8, !tbaa !41
  %168 = icmp eq ptr %167, %162
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %170

170:                                              ; preds = %169, %164
  %171 = load i32, ptr %81, align 8, !tbaa !48
  %172 = add nsw i32 %171, -1
  store i32 %172, ptr %81, align 8, !tbaa !48
  %173 = load ptr, ptr %15, align 8, !tbaa !38
  %174 = getelementptr inbounds %struct.DagNodeQueue, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !41
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %175, i64 0, i32 1
  store ptr %162, ptr %178, align 8, !tbaa !43
  br label %179

179:                                              ; preds = %177, %170
  store ptr %162, ptr %174, align 8, !tbaa !41
  %180 = load ptr, ptr %173, align 8, !tbaa !42
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store ptr %162, ptr %173, align 8, !tbaa !42
  br label %183

183:                                              ; preds = %182, %179
  %184 = load ptr, ptr %162, align 8, !tbaa !49
  %185 = getelementptr inbounds %struct.DagNodeQueue, ptr %173, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %162, i8 0, i64 16, i1 false)
  %186 = load i32, ptr %185, align 8, !tbaa !48
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %185, align 8, !tbaa !48
  %188 = getelementptr inbounds %struct.DagNode, ptr %184, i64 0, i32 5
  %189 = load ptr, ptr %188, align 8, !tbaa !92
  %190 = icmp eq ptr %189, %1
  br i1 %190, label %209, label %194

191:                                              ; preds = %161
  %192 = load ptr, ptr @stderr, align 8, !tbaa !34
  %193 = call i64 @fwrite(ptr nonnull @.str.6, i64 12, i64 1, ptr %192) #18
  unreachable

194:                                              ; preds = %183
  store i32 2, ptr %184, align 8, !tbaa !93
  %195 = add nsw i32 %158, 1
  br label %196

196:                                              ; preds = %200, %194
  %197 = phi ptr [ %86, %194 ], [ %198, %200 ]
  %198 = load ptr, ptr %197, align 8, !tbaa !34
  %199 = icmp eq ptr %198, null
  br i1 %199, label %205, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.Base, ptr %198, i64 0, i32 7
  %202 = load ptr, ptr %201, align 8, !tbaa !98
  %203 = icmp eq ptr %202, %189
  br i1 %203, label %204, label %196, !llvm.loop !227

204:                                              ; preds = %200
  call void @BLI_remlink(ptr noundef nonnull %86, ptr noundef nonnull %198) #17
  call void @BLI_addhead(ptr noundef nonnull %4, ptr noundef nonnull %198) #17
  br label %205

205:                                              ; preds = %196, %204, %156
  %206 = phi i32 [ %195, %204 ], [ %158, %156 ], [ %195, %196 ]
  %207 = load i32, ptr %81, align 8, !tbaa !48
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %87, !llvm.loop !228

209:                                              ; preds = %205, %183, %80
  %210 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %211 = load ptr, ptr %210, align 8, !tbaa !229
  %212 = icmp eq ptr %211, null
  br i1 %212, label %221, label %213

213:                                              ; preds = %209, %213
  %214 = phi ptr [ %219, %213 ], [ %211, %209 ]
  call void @BLI_remlink(ptr noundef nonnull %210, ptr noundef nonnull %214) #17
  call void @BLI_addhead(ptr noundef nonnull %4, ptr noundef nonnull %214) #17
  %215 = getelementptr inbounds %struct.Base, ptr %214, i64 0, i32 7
  %216 = load ptr, ptr %215, align 8, !tbaa !98
  %217 = getelementptr inbounds %struct.ID, ptr %216, i64 0, i32 4
  %218 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %217)
  %219 = load ptr, ptr %210, align 8, !tbaa !229
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %213, !llvm.loop !230

221:                                              ; preds = %213, %209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %210, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !231
  %222 = load ptr, ptr %12, align 8, !tbaa !42
  %223 = icmp eq ptr %222, null
  br i1 %223, label %230, label %224

224:                                              ; preds = %221, %224
  %225 = phi ptr [ %227, %224 ], [ %222, %221 ]
  %226 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %225, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !43
  %228 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %228(ptr noundef nonnull %225) #17
  %229 = icmp eq ptr %227, null
  br i1 %229, label %230, label %224, !llvm.loop !51

230:                                              ; preds = %224, %221
  %231 = load ptr, ptr %15, align 8, !tbaa !38
  %232 = load ptr, ptr %231, align 8, !tbaa !42
  %233 = icmp eq ptr %232, null
  br i1 %233, label %240, label %234

234:                                              ; preds = %230, %234
  %235 = phi ptr [ %237, %234 ], [ %232, %230 ]
  %236 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %235, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !43
  %238 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %238(ptr noundef nonnull %235) #17
  %239 = icmp eq ptr %237, null
  br i1 %239, label %240, label %234, !llvm.loop !52

240:                                              ; preds = %234, %230
  %241 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %242 = load ptr, ptr %15, align 8, !tbaa !38
  call void %241(ptr noundef %242) #17
  %243 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %243(ptr noundef nonnull %12) #17
  %244 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %245 = load ptr, ptr %244, align 8, !tbaa !34
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %250, %240
  %248 = load ptr, ptr %210, align 8, !tbaa !34
  %249 = icmp eq ptr %248, null
  br i1 %249, label %267, label %258

250:                                              ; preds = %240, %250
  %251 = phi ptr [ %256, %250 ], [ %245, %240 ]
  %252 = getelementptr inbounds %struct.ID, ptr %251, i64 0, i32 5
  %253 = load i16, ptr %252, align 2, !tbaa !232
  %254 = and i16 %253, -1025
  store i16 %254, ptr %252, align 2, !tbaa !232
  %255 = getelementptr inbounds %struct.ID, ptr %251, i64 0, i32 2
  store ptr null, ptr %255, align 8, !tbaa !233
  %256 = load ptr, ptr %251, align 8, !tbaa !34
  %257 = icmp eq ptr %256, null
  br i1 %257, label %247, label %250, !llvm.loop !234

258:                                              ; preds = %247, %258
  %259 = phi ptr [ %265, %258 ], [ %248, %247 ]
  %260 = getelementptr inbounds %struct.Base, ptr %259, i64 0, i32 7
  %261 = load ptr, ptr %260, align 8, !tbaa !98
  %262 = getelementptr inbounds %struct.ID, ptr %261, i64 0, i32 5
  %263 = load i16, ptr %262, align 2, !tbaa !232
  %264 = or i16 %263, 1024
  store i16 %264, ptr %262, align 2, !tbaa !232
  %265 = load ptr, ptr %259, align 8, !tbaa !34
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %258, !llvm.loop !235

267:                                              ; preds = %258, %247
  %268 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %269 = load ptr, ptr %268, align 8, !tbaa !34
  %270 = icmp eq ptr %269, null
  br i1 %270, label %313, label %271

271:                                              ; preds = %267, %310
  %272 = phi ptr [ %311, %310 ], [ %269, %267 ]
  %273 = getelementptr inbounds %struct.Group, ptr %272, i64 0, i32 1
  br label %274

274:                                              ; preds = %278, %271
  %275 = phi ptr [ %273, %271 ], [ %276, %278 ]
  %276 = load ptr, ptr %275, align 8, !tbaa !34
  %277 = icmp eq ptr %276, null
  br i1 %277, label %285, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.GroupObject, ptr %276, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !149
  %281 = getelementptr inbounds %struct.ID, ptr %280, i64 0, i32 5
  %282 = load i16, ptr %281, align 2, !tbaa !232
  %283 = and i16 %282, 1024
  %284 = icmp eq i16 %283, 0
  br i1 %284, label %310, label %274, !llvm.loop !236

285:                                              ; preds = %274
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %286 = load ptr, ptr %273, align 8, !tbaa !34
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %291, %285
  %289 = load ptr, ptr %210, align 8, !tbaa !34
  %290 = icmp eq ptr %289, null
  br i1 %290, label %309, label %298

291:                                              ; preds = %285, %291
  %292 = phi ptr [ %296, %291 ], [ %286, %285 ]
  %293 = getelementptr inbounds %struct.GroupObject, ptr %292, i64 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !149
  %295 = getelementptr inbounds %struct.ID, ptr %294, i64 0, i32 2
  store ptr %292, ptr %295, align 8, !tbaa !233
  %296 = load ptr, ptr %292, align 8, !tbaa !34
  %297 = icmp eq ptr %296, null
  br i1 %297, label %288, label %291, !llvm.loop !237

298:                                              ; preds = %288, %306
  %299 = phi ptr [ %307, %306 ], [ %289, %288 ]
  %300 = getelementptr inbounds %struct.Base, ptr %299, i64 0, i32 7
  %301 = load ptr, ptr %300, align 8, !tbaa !98
  %302 = getelementptr inbounds %struct.ID, ptr %301, i64 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !233
  %304 = icmp eq ptr %303, null
  br i1 %304, label %306, label %305

305:                                              ; preds = %298
  store ptr null, ptr %302, align 8, !tbaa !233
  call void @BLI_remlink(ptr noundef nonnull %273, ptr noundef nonnull %303) #17
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %303) #17
  br label %306

306:                                              ; preds = %305, %298
  %307 = load ptr, ptr %299, align 8, !tbaa !34
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %298, !llvm.loop !238

309:                                              ; preds = %306, %288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %273, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !231
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  br label %310

310:                                              ; preds = %278, %309
  %311 = load ptr, ptr %272, align 8, !tbaa !34
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %271, !llvm.loop !239

313:                                              ; preds = %310, %267
  %314 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !240
  %315 = and i32 %314, 1
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %329, label %317

317:                                              ; preds = %313
  %318 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %319 = load ptr, ptr %210, align 8, !tbaa !34
  %320 = icmp eq ptr %319, null
  br i1 %320, label %329, label %321

321:                                              ; preds = %317, %321
  %322 = phi ptr [ %327, %321 ], [ %319, %317 ]
  %323 = getelementptr inbounds %struct.Base, ptr %322, i64 0, i32 7
  %324 = load ptr, ptr %323, align 8, !tbaa !98
  %325 = getelementptr inbounds %struct.ID, ptr %324, i64 0, i32 4
  %326 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef nonnull %325)
  %327 = load ptr, ptr %322, align 8, !tbaa !34
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %321, !llvm.loop !241

329:                                              ; preds = %321, %317, %313
  %330 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 33
  %331 = load i16, ptr %330, align 2, !tbaa !242
  %332 = or i16 %331, 1
  store i16 %332, ptr %330, align 2, !tbaa !242
  call fastcc void @dag_invisible_dependencies_check_flush(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %333

333:                                              ; preds = %329, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DAG_scene_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %5, %29
  %9 = phi ptr [ %31, %29 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.DagNode, ptr %9, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.DagAdjList, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %14) #17
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %13, !llvm.loop !86

19:                                               ; preds = %13, %8
  %20 = getelementptr inbounds %struct.DagNode, ptr %9, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.DagAdjList, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %27(ptr noundef nonnull %24) #17
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %23, !llvm.loop !88

29:                                               ; preds = %23, %19
  %30 = getelementptr inbounds %struct.DagNode, ptr %9, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %32(ptr noundef nonnull %9) #17
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %8, !llvm.loop !90

34:                                               ; preds = %29, %5
  %35 = getelementptr inbounds %struct.DagForest, ptr %3, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !91
  tail call void @BLI_ghash_free(ptr noundef %36, ptr noundef null, ptr noundef null) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %38 = load ptr, ptr %2, align 8, !tbaa !58
  tail call void %37(ptr noundef %38) #17
  store ptr null, ptr %2, align 8, !tbaa !58
  br label %39

39:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DAG_scene_flush_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  tail call void @DAG_scene_relations_update(ptr noundef %0, ptr noundef %1)
  br label %10

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr %5, align 8, !tbaa !58
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  tail call fastcc void @dag_scene_flush_layers(ptr noundef %1, i32 noundef %2)
  %13 = load ptr, ptr %5, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.DagForest, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !243
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !243
  %17 = getelementptr inbounds %struct.DagNode, ptr %12, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %10, %31
  %21 = phi ptr [ %33, %31 ], [ %18, %10 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !105
  %23 = getelementptr inbounds %struct.DagNode, ptr %22, i64 0, i32 11
  %24 = load i32, ptr %23, align 8, !tbaa !244
  %25 = icmp eq i32 %24, %16
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.DagNode, ptr %22, i64 0, i32 1
  %28 = load i16, ptr %27, align 4, !tbaa !95
  %29 = icmp eq i16 %28, 16975
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call fastcc void @flush_update_node(ptr noundef %0, ptr noundef %22, i32 noundef %2, i32 noundef %16)
  br label %31

31:                                               ; preds = %20, %26, %30
  %32 = getelementptr inbounds %struct.DagAdjList, ptr %21, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %20, !llvm.loop !245

35:                                               ; preds = %31, %10
  %36 = icmp eq i16 %3, 0
  br i1 %36, label %37, label %91

37:                                               ; preds = %35
  %38 = load ptr, ptr %5, align 8, !tbaa !58
  %39 = getelementptr inbounds %struct.DagForest, ptr %38, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !243
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !243
  %42 = load ptr, ptr %17, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %91, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %46 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %47 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %48 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %49 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  br label %50

50:                                               ; preds = %44, %87
  %51 = phi ptr [ %42, %44 ], [ %89, %87 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !105
  %53 = getelementptr inbounds %struct.DagNode, ptr %52, i64 0, i32 11
  %54 = load i32, ptr %53, align 8, !tbaa !244
  %55 = icmp eq i32 %54, %41
  br i1 %55, label %87, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.DagNode, ptr %52, i64 0, i32 1
  %58 = load i16, ptr %57, align 4, !tbaa !95
  %59 = icmp eq i16 %58, 16975
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.DagNode, ptr %52, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !92
  %63 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 103
  %64 = load i8, ptr %63, align 1, !tbaa !246
  %65 = and i8 %64, 7
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %60
  %68 = tail call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef %62, i32 noundef 0) #17
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %67
  %71 = load i8, ptr %63, align 1, !tbaa !246
  %72 = or i8 %71, 2
  store i8 %72, ptr %63, align 1, !tbaa !246
  %73 = getelementptr inbounds %struct.ID, ptr %62, i64 0, i32 5
  %74 = load i16, ptr %73, align 2, !tbaa !247
  %75 = or i16 %74, 8192
  store i16 %75, ptr %73, align 2, !tbaa !247
  %76 = getelementptr inbounds %struct.ID, ptr %62, i64 0, i32 4
  %77 = load i16, ptr %76, align 8, !tbaa !94
  %78 = icmp eq i16 %77, 21582
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  store i8 1, ptr %45, align 1, !tbaa !127
  store i8 1, ptr %46, align 1, !tbaa !127
  store i8 1, ptr %47, align 1, !tbaa !127
  store i8 1, ptr %48, align 1, !tbaa !127
  store i8 1, ptr %49, align 1, !tbaa !127
  br label %80

80:                                               ; preds = %70, %79
  %81 = and i16 %77, 255
  %82 = zext nneg i16 %81 to i64
  %83 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %82
  store i8 1, ptr %83, align 1, !tbaa !127
  br label %84

84:                                               ; preds = %80, %67
  %85 = load ptr, ptr %51, align 8, !tbaa !105
  tail call fastcc void @flush_pointcache_reset(ptr noundef %0, ptr noundef %1, ptr noundef %85, i32 noundef %41, i32 noundef %2, i8 noundef zeroext 1)
  br label %87

86:                                               ; preds = %60
  tail call fastcc void @flush_pointcache_reset(ptr noundef %0, ptr noundef %1, ptr noundef %52, i32 noundef %41, i32 noundef %2, i8 noundef zeroext 0)
  br label %87

87:                                               ; preds = %50, %56, %86, %84
  %88 = getelementptr inbounds %struct.DagAdjList, ptr %51, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !34
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %50, !llvm.loop !248

91:                                               ; preds = %87, %37, %35
  %92 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 18
  %93 = load ptr, ptr %92, align 8, !tbaa !249
  %94 = icmp eq ptr %93, null
  br i1 %94, label %146, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = icmp eq ptr %97, null
  br i1 %98, label %118, label %99

99:                                               ; preds = %95, %114
  %100 = phi ptr [ %116, %114 ], [ %97, %95 ]
  %101 = phi i32 [ %115, %114 ], [ 0, %95 ]
  %102 = getelementptr inbounds %struct.Base, ptr %100, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !250
  %104 = and i32 %103, %2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.Base, ptr %100, i64 0, i32 7
  %108 = load ptr, ptr %107, align 8, !tbaa !98
  %109 = getelementptr inbounds %struct.Object, ptr %108, i64 0, i32 103
  %110 = load i8, ptr %109, align 1, !tbaa !246
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i32 0, i32 %103
  %113 = or i32 %112, %101
  br label %114

114:                                              ; preds = %106, %99
  %115 = phi i32 [ %101, %99 ], [ %113, %106 ]
  %116 = load ptr, ptr %100, align 8, !tbaa !34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %99, !llvm.loop !251

118:                                              ; preds = %114, %95
  %119 = phi i32 [ 0, %95 ], [ %115, %114 ]
  %120 = getelementptr inbounds %struct.bNodeTree, ptr %93, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !34
  %122 = icmp eq ptr %121, null
  br i1 %122, label %146, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 60
  br label %125

125:                                              ; preds = %123, %143
  %126 = phi ptr [ %121, %123 ], [ %144, %143 ]
  %127 = getelementptr inbounds %struct.bNode, ptr %126, i64 0, i32 20
  %128 = load ptr, ptr %127, align 8, !tbaa !252
  %129 = icmp eq ptr %128, %1
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.bNode, ptr %126, i64 0, i32 33
  %132 = load i16, ptr %131, align 8, !tbaa !254
  %133 = sext i16 %132 to i32
  %134 = tail call ptr @BLI_findlink(ptr noundef nonnull %124, i32 noundef %133) #17
  %135 = icmp eq ptr %134, null
  br i1 %135, label %143, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.SceneRenderLayer, ptr %134, i64 0, i32 5
  %138 = load i32, ptr %137, align 8, !tbaa !255
  %139 = and i32 %138, %119
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  %142 = load ptr, ptr %92, align 8, !tbaa !249
  tail call void @nodeUpdate(ptr noundef %142, ptr noundef nonnull %126) #17
  br label %143

143:                                              ; preds = %141, %136, %130, %125
  %144 = load ptr, ptr %126, align 8, !tbaa !34
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %125, !llvm.loop !258

146:                                              ; preds = %143, %118, %91
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @dag_scene_flush_layers(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %13, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.DagAdjList, ptr %10, i64 0, i32 3
  store i32 0, ptr %11, align 8, !tbaa !259
  %12 = getelementptr inbounds %struct.DagAdjList, ptr %10, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9, !llvm.loop !260

15:                                               ; preds = %9, %2
  %16 = getelementptr inbounds %struct.DagForest, ptr %4, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !243
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !243
  %19 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %74, label %22

22:                                               ; preds = %15, %66
  %23 = phi ptr [ %72, %66 ], [ %20, %15 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.Base, ptr %23, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !98
  %27 = getelementptr inbounds %struct.DagForest, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %28, ptr noundef %26) #17
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi ptr [ %31, %30 ], [ null, %22 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %66

35:                                               ; preds = %32
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %37 = tail call ptr %36(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %66, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.DagNode, ptr %37, i64 0, i32 5
  store ptr %26, ptr %40, align 8, !tbaa !92
  store i32 0, ptr %37, align 8, !tbaa !93
  %41 = getelementptr inbounds %struct.DagForest, ptr %24, i64 0, i32 5
  %42 = load i8, ptr %41, align 4, !tbaa !55
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 4
  %46 = load i16, ptr %45, align 8, !tbaa !94
  %47 = getelementptr inbounds %struct.DagNode, ptr %37, i64 0, i32 1
  store i16 %46, ptr %47, align 4, !tbaa !95
  br label %48

48:                                               ; preds = %44, %39
  %49 = getelementptr inbounds %struct.DagForest, ptr %24, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !96
  %51 = icmp eq i32 %50, 0
  %52 = getelementptr inbounds %struct.ListBase, ptr %24, i64 0, i32 1
  br i1 %51, label %57, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %52, align 8, !tbaa !97
  %55 = getelementptr inbounds %struct.DagNode, ptr %54, i64 0, i32 18
  store ptr %37, ptr %55, align 8, !tbaa !89
  store ptr %37, ptr %52, align 8, !tbaa !97
  %56 = add nsw i32 %50, 1
  br label %58

57:                                               ; preds = %48
  store ptr %37, ptr %52, align 8, !tbaa !97
  store ptr %37, ptr %24, align 8, !tbaa !81
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i32 [ 1, %57 ], [ %56, %53 ]
  store i32 %59, ptr %49, align 8, !tbaa !96
  %60 = load ptr, ptr %27, align 8, !tbaa !91
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %63, ptr %27, align 8, !tbaa !91
  br label %64

64:                                               ; preds = %62, %58
  %65 = load ptr, ptr %27, align 8, !tbaa !91
  tail call void @BLI_ghash_insert(ptr noundef %65, ptr noundef %26, ptr noundef nonnull %37) #17
  br label %66

66:                                               ; preds = %64, %35, %32
  %67 = phi ptr [ %33, %32 ], [ %37, %35 ], [ %37, %64 ]
  %68 = load ptr, ptr %25, align 8, !tbaa !98
  %69 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 52
  %70 = load i32, ptr %69, align 8, !tbaa !261
  %71 = getelementptr inbounds %struct.DagNode, ptr %67, i64 0, i32 9
  store i32 %70, ptr %71, align 8, !tbaa !262
  %72 = load ptr, ptr %23, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %22, !llvm.loop !263

74:                                               ; preds = %66, %15
  %75 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !209
  %77 = icmp eq ptr %76, null
  br i1 %77, label %124, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %3, align 8, !tbaa !58
  %80 = getelementptr inbounds %struct.DagForest, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !91
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %81, ptr noundef nonnull %76) #17
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi ptr [ %84, %83 ], [ null, %78 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %119

88:                                               ; preds = %85
  %89 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %90 = tail call ptr %89(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %91 = icmp eq ptr %90, null
  br i1 %91, label %119, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.DagNode, ptr %90, i64 0, i32 5
  store ptr %76, ptr %93, align 8, !tbaa !92
  store i32 0, ptr %90, align 8, !tbaa !93
  %94 = getelementptr inbounds %struct.DagForest, ptr %79, i64 0, i32 5
  %95 = load i8, ptr %94, align 4, !tbaa !55
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.ID, ptr %76, i64 0, i32 4
  %99 = load i16, ptr %98, align 8, !tbaa !94
  %100 = getelementptr inbounds %struct.DagNode, ptr %90, i64 0, i32 1
  store i16 %99, ptr %100, align 4, !tbaa !95
  br label %101

101:                                              ; preds = %97, %92
  %102 = getelementptr inbounds %struct.DagForest, ptr %79, i64 0, i32 2
  %103 = load i32, ptr %102, align 8, !tbaa !96
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds %struct.ListBase, ptr %79, i64 0, i32 1
  br i1 %104, label %110, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr %105, align 8, !tbaa !97
  %108 = getelementptr inbounds %struct.DagNode, ptr %107, i64 0, i32 18
  store ptr %90, ptr %108, align 8, !tbaa !89
  store ptr %90, ptr %105, align 8, !tbaa !97
  %109 = add nsw i32 %103, 1
  br label %111

110:                                              ; preds = %101
  store ptr %90, ptr %105, align 8, !tbaa !97
  store ptr %90, ptr %79, align 8, !tbaa !81
  br label %111

111:                                              ; preds = %110, %106
  %112 = phi i32 [ 1, %110 ], [ %109, %106 ]
  store i32 %112, ptr %102, align 8, !tbaa !96
  %113 = load ptr, ptr %80, align 8, !tbaa !91
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %116, ptr %80, align 8, !tbaa !91
  br label %117

117:                                              ; preds = %115, %111
  %118 = load ptr, ptr %80, align 8, !tbaa !91
  tail call void @BLI_ghash_insert(ptr noundef %118, ptr noundef nonnull %76, ptr noundef nonnull %90) #17
  br label %119

119:                                              ; preds = %117, %88, %85
  %120 = phi ptr [ %86, %85 ], [ %90, %88 ], [ %90, %117 ]
  %121 = getelementptr inbounds %struct.DagNode, ptr %120, i64 0, i32 9
  %122 = load i32, ptr %121, align 8, !tbaa !262
  %123 = or i32 %122, %1
  store i32 %123, ptr %121, align 8, !tbaa !262
  br label %124

124:                                              ; preds = %119, %74
  %125 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 24
  %126 = load ptr, ptr %125, align 8, !tbaa !34
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %182, %124
  %129 = load ptr, ptr %6, align 8, !tbaa !34
  %130 = icmp eq ptr %129, null
  br i1 %130, label %201, label %185

131:                                              ; preds = %124, %182
  %132 = phi ptr [ %183, %182 ], [ %126, %124 ]
  %133 = getelementptr inbounds %struct.TimeMarker, ptr %132, i64 0, i32 5
  %134 = load ptr, ptr %133, align 8, !tbaa !264
  %135 = icmp eq ptr %134, null
  br i1 %135, label %182, label %136

136:                                              ; preds = %131
  %137 = load ptr, ptr %3, align 8, !tbaa !58
  %138 = getelementptr inbounds %struct.DagForest, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !91
  %140 = icmp eq ptr %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  %142 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %139, ptr noundef nonnull %134) #17
  br label %143

143:                                              ; preds = %141, %136
  %144 = phi ptr [ %142, %141 ], [ null, %136 ]
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %177

146:                                              ; preds = %143
  %147 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %148 = tail call ptr %147(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %149 = icmp eq ptr %148, null
  br i1 %149, label %177, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.DagNode, ptr %148, i64 0, i32 5
  store ptr %134, ptr %151, align 8, !tbaa !92
  store i32 0, ptr %148, align 8, !tbaa !93
  %152 = getelementptr inbounds %struct.DagForest, ptr %137, i64 0, i32 5
  %153 = load i8, ptr %152, align 4, !tbaa !55
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.ID, ptr %134, i64 0, i32 4
  %157 = load i16, ptr %156, align 8, !tbaa !94
  %158 = getelementptr inbounds %struct.DagNode, ptr %148, i64 0, i32 1
  store i16 %157, ptr %158, align 4, !tbaa !95
  br label %159

159:                                              ; preds = %155, %150
  %160 = getelementptr inbounds %struct.DagForest, ptr %137, i64 0, i32 2
  %161 = load i32, ptr %160, align 8, !tbaa !96
  %162 = icmp eq i32 %161, 0
  %163 = getelementptr inbounds %struct.ListBase, ptr %137, i64 0, i32 1
  br i1 %162, label %168, label %164

164:                                              ; preds = %159
  %165 = load ptr, ptr %163, align 8, !tbaa !97
  %166 = getelementptr inbounds %struct.DagNode, ptr %165, i64 0, i32 18
  store ptr %148, ptr %166, align 8, !tbaa !89
  store ptr %148, ptr %163, align 8, !tbaa !97
  %167 = add nsw i32 %161, 1
  br label %169

168:                                              ; preds = %159
  store ptr %148, ptr %163, align 8, !tbaa !97
  store ptr %148, ptr %137, align 8, !tbaa !81
  br label %169

169:                                              ; preds = %168, %164
  %170 = phi i32 [ 1, %168 ], [ %167, %164 ]
  store i32 %170, ptr %160, align 8, !tbaa !96
  %171 = load ptr, ptr %138, align 8, !tbaa !91
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %174, ptr %138, align 8, !tbaa !91
  br label %175

175:                                              ; preds = %173, %169
  %176 = load ptr, ptr %138, align 8, !tbaa !91
  tail call void @BLI_ghash_insert(ptr noundef %176, ptr noundef nonnull %134, ptr noundef nonnull %148) #17
  br label %177

177:                                              ; preds = %175, %146, %143
  %178 = phi ptr [ %144, %143 ], [ %148, %146 ], [ %148, %175 ]
  %179 = getelementptr inbounds %struct.DagNode, ptr %178, i64 0, i32 9
  %180 = load i32, ptr %179, align 8, !tbaa !262
  %181 = or i32 %180, %1
  store i32 %181, ptr %179, align 8, !tbaa !262
  br label %182

182:                                              ; preds = %131, %177
  %183 = load ptr, ptr %132, align 8, !tbaa !34
  %184 = icmp eq ptr %183, null
  br i1 %184, label %128, label %131, !llvm.loop !266

185:                                              ; preds = %128, %197
  %186 = phi ptr [ %199, %197 ], [ %129, %128 ]
  %187 = load ptr, ptr %186, align 8, !tbaa !105
  %188 = getelementptr inbounds %struct.DagNode, ptr %187, i64 0, i32 11
  %189 = load i32, ptr %188, align 8, !tbaa !244
  %190 = icmp eq i32 %189, %18
  br i1 %190, label %197, label %191

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.DagNode, ptr %187, i64 0, i32 1
  %193 = load i16, ptr %192, align 4, !tbaa !95
  %194 = icmp eq i16 %193, 16975
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = tail call fastcc i32 @flush_layer_node(ptr noundef %187, i32 noundef %18)
  br label %197

197:                                              ; preds = %185, %191, %195
  %198 = getelementptr inbounds %struct.DagAdjList, ptr %186, i64 0, i32 5
  %199 = load ptr, ptr %198, align 8, !tbaa !34
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %185, !llvm.loop !267

201:                                              ; preds = %197, %128
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_update_node(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 11
  store i32 %3, ptr %5, align 8, !tbaa !244
  %6 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = icmp eq ptr %7, null
  br i1 %8, label %162, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 103
  %11 = load i8, ptr %10, align 1, !tbaa !246
  %12 = and i8 %11, 7
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %162, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !262
  %17 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %149, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %22 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %23 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %24 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %25 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  %26 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %27 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %28 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %29 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %30 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  %31 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %32 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %33 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %34 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %35 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  %36 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %37 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %38 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %39 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %40 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  br label %41

41:                                               ; preds = %20, %144
  %42 = phi ptr [ %18, %20 ], [ %147, %144 ]
  %43 = phi i32 [ %16, %20 ], [ %47, %144 ]
  %44 = phi i8 [ 0, %20 ], [ %145, %144 ]
  %45 = getelementptr inbounds %struct.DagAdjList, ptr %42, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !259
  %47 = or i32 %46, %43
  %48 = and i32 %46, %2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %144, label %50

50:                                               ; preds = %41
  %51 = load ptr, ptr %42, align 8, !tbaa !105
  %52 = getelementptr inbounds %struct.DagNode, ptr %51, i64 0, i32 1
  %53 = load i16, ptr %52, align 4, !tbaa !95
  %54 = icmp eq i16 %53, 16975
  br i1 %54, label %55, label %144

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.DagNode, ptr %51, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !92
  %58 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 103
  %59 = load i8, ptr %58, align 1, !tbaa !246
  %60 = load i8, ptr %10, align 1, !tbaa !246
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %99, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.DagAdjList, ptr %42, i64 0, i32 1
  %65 = load i16, ptr %64, align 8, !tbaa !106
  %66 = and i16 %65, 4
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %63
  %69 = or i8 %59, 1
  store i8 %69, ptr %58, align 1, !tbaa !246
  %70 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 5
  %71 = load i16, ptr %70, align 2, !tbaa !247
  %72 = or i16 %71, 4096
  store i16 %72, ptr %70, align 2, !tbaa !247
  %73 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 4
  %74 = load i16, ptr %73, align 8, !tbaa !94
  %75 = icmp eq i16 %74, 21582
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i8 1, ptr %21, align 1, !tbaa !127
  store i8 1, ptr %22, align 1, !tbaa !127
  store i8 1, ptr %23, align 1, !tbaa !127
  store i8 1, ptr %24, align 1, !tbaa !127
  store i8 1, ptr %25, align 1, !tbaa !127
  br label %77

77:                                               ; preds = %68, %76
  %78 = and i16 %74, 255
  %79 = zext nneg i16 %78 to i64
  %80 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %79
  store i8 1, ptr %80, align 1, !tbaa !127
  br label %81

81:                                               ; preds = %77, %63
  %82 = load i16, ptr %64, align 8, !tbaa !106
  %83 = and i16 %82, 8
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %81
  %86 = load i8, ptr %58, align 1, !tbaa !246
  %87 = or i8 %86, 2
  store i8 %87, ptr %58, align 1, !tbaa !246
  %88 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 5
  %89 = load i16, ptr %88, align 2, !tbaa !247
  %90 = or i16 %89, 8192
  store i16 %90, ptr %88, align 2, !tbaa !247
  %91 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 4
  %92 = load i16, ptr %91, align 8, !tbaa !94
  %93 = icmp eq i16 %92, 21582
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  store i8 1, ptr %26, align 1, !tbaa !127
  store i8 1, ptr %27, align 1, !tbaa !127
  store i8 1, ptr %28, align 1, !tbaa !127
  store i8 1, ptr %29, align 1, !tbaa !127
  store i8 1, ptr %30, align 1, !tbaa !127
  br label %95

95:                                               ; preds = %85, %94
  %96 = and i16 %92, 255
  %97 = zext nneg i16 %96 to i64
  %98 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %97
  store i8 1, ptr %98, align 1, !tbaa !127
  br label %99

99:                                               ; preds = %81, %95, %55
  %100 = load i8, ptr %10, align 1, !tbaa !246
  %101 = and i8 %100, 2
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %140, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.DagAdjList, ptr %42, i64 0, i32 1
  %105 = load i16, ptr %104, align 8, !tbaa !106
  %106 = and i16 %105, 16
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %103
  %109 = load i8, ptr %58, align 1, !tbaa !246
  %110 = or i8 %109, 1
  store i8 %110, ptr %58, align 1, !tbaa !246
  %111 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 5
  %112 = load i16, ptr %111, align 2, !tbaa !247
  %113 = or i16 %112, 4096
  store i16 %113, ptr %111, align 2, !tbaa !247
  %114 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 4
  %115 = load i16, ptr %114, align 8, !tbaa !94
  %116 = icmp eq i16 %115, 21582
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store i8 1, ptr %31, align 1, !tbaa !127
  store i8 1, ptr %32, align 1, !tbaa !127
  store i8 1, ptr %33, align 1, !tbaa !127
  store i8 1, ptr %34, align 1, !tbaa !127
  store i8 1, ptr %35, align 1, !tbaa !127
  br label %118

118:                                              ; preds = %108, %117
  %119 = and i16 %115, 255
  %120 = zext nneg i16 %119 to i64
  %121 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %120
  store i8 1, ptr %121, align 1, !tbaa !127
  br label %122

122:                                              ; preds = %118, %103
  %123 = load i16, ptr %104, align 8, !tbaa !106
  %124 = and i16 %123, 32
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %122
  %127 = load i8, ptr %58, align 1, !tbaa !246
  %128 = or i8 %127, 2
  store i8 %128, ptr %58, align 1, !tbaa !246
  %129 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 5
  %130 = load i16, ptr %129, align 2, !tbaa !247
  %131 = or i16 %130, 8192
  store i16 %131, ptr %129, align 2, !tbaa !247
  %132 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 4
  %133 = load i16, ptr %132, align 8, !tbaa !94
  %134 = icmp eq i16 %133, 21582
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  store i8 1, ptr %36, align 1, !tbaa !127
  store i8 1, ptr %37, align 1, !tbaa !127
  store i8 1, ptr %38, align 1, !tbaa !127
  store i8 1, ptr %39, align 1, !tbaa !127
  store i8 1, ptr %40, align 1, !tbaa !127
  br label %136

136:                                              ; preds = %126, %135
  %137 = and i16 %133, 255
  %138 = zext nneg i16 %137 to i64
  %139 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %138
  store i8 1, ptr %139, align 1, !tbaa !127
  br label %140

140:                                              ; preds = %122, %136, %99
  %141 = load i8, ptr %58, align 1, !tbaa !246
  %142 = icmp eq i8 %59, %141
  %143 = select i1 %142, i8 %44, i8 1
  br label %144

144:                                              ; preds = %140, %41, %50
  %145 = phi i8 [ %44, %50 ], [ %44, %41 ], [ %143, %140 ]
  %146 = getelementptr inbounds %struct.DagAdjList, ptr %42, i64 0, i32 5
  %147 = load ptr, ptr %146, align 8, !tbaa !34
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %41, !llvm.loop !268

149:                                              ; preds = %144, %14
  %150 = phi i8 [ 0, %14 ], [ %145, %144 ]
  %151 = phi i32 [ %16, %14 ], [ %47, %144 ]
  %152 = and i32 %151, %2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load i8, ptr %10, align 1, !tbaa !246
  %156 = and i8 %155, 2
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %7) #17
  br label %159

159:                                              ; preds = %158, %154
  %160 = load i8, ptr %10, align 1, !tbaa !246
  %161 = and i8 %160, -8
  store i8 %161, ptr %10, align 1, !tbaa !246
  br label %162

162:                                              ; preds = %149, %159, %9, %4
  %163 = phi i8 [ %150, %159 ], [ %150, %149 ], [ 0, %9 ], [ 0, %4 ]
  %164 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 16
  %165 = load ptr, ptr %164, align 8, !tbaa !34
  %166 = icmp eq ptr %165, null
  br i1 %166, label %173, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %169 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %170 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %171 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %172 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  br label %178

173:                                              ; preds = %214, %162
  %174 = load ptr, ptr %164, align 8, !tbaa !34
  %175 = icmp eq ptr %174, null
  br i1 %175, label %231, label %176

176:                                              ; preds = %173
  %177 = icmp eq i8 %163, 0
  br label %218

178:                                              ; preds = %167, %214
  %179 = phi ptr [ %165, %167 ], [ %216, %214 ]
  %180 = getelementptr inbounds %struct.DagAdjList, ptr %179, i64 0, i32 3
  %181 = load i32, ptr %180, align 8, !tbaa !259
  %182 = and i32 %181, %2
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %214, label %184

184:                                              ; preds = %178
  %185 = load ptr, ptr %179, align 8, !tbaa !105
  %186 = getelementptr inbounds %struct.DagNode, ptr %185, i64 0, i32 1
  %187 = load i16, ptr %186, align 4, !tbaa !95
  %188 = icmp eq i16 %187, 16975
  br i1 %188, label %189, label %214

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.DagNode, ptr %185, i64 0, i32 5
  %191 = load ptr, ptr %190, align 8, !tbaa !92
  %192 = getelementptr inbounds %struct.Object, ptr %191, i64 0, i32 103
  %193 = load i8, ptr %192, align 1, !tbaa !246
  %194 = and i8 %193, 7
  %195 = icmp eq i8 %194, 1
  br i1 %195, label %196, label %214

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.DagAdjList, ptr %179, i64 0, i32 1
  %198 = load i16, ptr %197, align 8, !tbaa !106
  %199 = and i16 %198, 40
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %214, label %201

201:                                              ; preds = %196
  %202 = or disjoint i8 %193, 2
  store i8 %202, ptr %192, align 1, !tbaa !246
  %203 = getelementptr inbounds %struct.ID, ptr %191, i64 0, i32 5
  %204 = load i16, ptr %203, align 2, !tbaa !247
  %205 = or i16 %204, 8192
  store i16 %205, ptr %203, align 2, !tbaa !247
  %206 = getelementptr inbounds %struct.ID, ptr %191, i64 0, i32 4
  %207 = load i16, ptr %206, align 8, !tbaa !94
  %208 = icmp eq i16 %207, 21582
  br i1 %208, label %209, label %210

209:                                              ; preds = %201
  store i8 1, ptr %168, align 1, !tbaa !127
  store i8 1, ptr %169, align 1, !tbaa !127
  store i8 1, ptr %170, align 1, !tbaa !127
  store i8 1, ptr %171, align 1, !tbaa !127
  store i8 1, ptr %172, align 1, !tbaa !127
  br label %210

210:                                              ; preds = %201, %209
  %211 = and i16 %207, 255
  %212 = zext nneg i16 %211 to i64
  %213 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %212
  store i8 1, ptr %213, align 1, !tbaa !127
  br label %214

214:                                              ; preds = %178, %189, %210, %196, %184
  %215 = getelementptr inbounds %struct.DagAdjList, ptr %179, i64 0, i32 5
  %216 = load ptr, ptr %215, align 8, !tbaa !34
  %217 = icmp eq ptr %216, null
  br i1 %217, label %173, label %178, !llvm.loop !269

218:                                              ; preds = %176, %227
  %219 = phi ptr [ %174, %176 ], [ %229, %227 ]
  br i1 %177, label %220, label %225

220:                                              ; preds = %218
  %221 = load ptr, ptr %219, align 8, !tbaa !105
  %222 = getelementptr inbounds %struct.DagNode, ptr %221, i64 0, i32 11
  %223 = load i32, ptr %222, align 8, !tbaa !244
  %224 = icmp eq i32 %223, %3
  br i1 %224, label %227, label %225

225:                                              ; preds = %220, %218
  %226 = load ptr, ptr %219, align 8, !tbaa !105
  tail call fastcc void @flush_update_node(ptr noundef %0, ptr noundef %226, i32 noundef %2, i32 noundef %3)
  br label %227

227:                                              ; preds = %220, %225
  %228 = getelementptr inbounds %struct.DagAdjList, ptr %219, i64 0, i32 5
  %229 = load ptr, ptr %228, align 8, !tbaa !34
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %218, !llvm.loop !270

231:                                              ; preds = %227, %173
  ret void
}

declare i32 @BKE_ptcache_object_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pointcache_reset(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.DagNode, ptr %2, i64 0, i32 11
  store i32 %3, ptr %7, align 8, !tbaa !244
  %8 = getelementptr inbounds %struct.DagNode, ptr %2, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %67, label %11

11:                                               ; preds = %6
  %12 = icmp eq i8 %5, 0
  %13 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %14 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %15 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %16 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %17 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  br label %18

18:                                               ; preds = %11, %63
  %19 = phi ptr [ %9, %11 ], [ %65, %63 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !105
  %21 = getelementptr inbounds %struct.DagNode, ptr %20, i64 0, i32 1
  %22 = load i16, ptr %21, align 4, !tbaa !95
  %23 = icmp eq i16 %22, 16975
  br i1 %23, label %24, label %63

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.DagNode, ptr %20, i64 0, i32 11
  %26 = load i32, ptr %25, align 8, !tbaa !244
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %63, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.DagNode, ptr %20, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !92
  br i1 %12, label %31, label %36

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 103
  %33 = load i8, ptr %32, align 1, !tbaa !246
  %34 = and i8 %33, 7
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %31, %28
  %37 = tail call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef %30, i32 noundef 0) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %19, align 8, !tbaa !105
  %41 = getelementptr inbounds %struct.DagNode, ptr %40, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !271
  %43 = and i32 %42, %4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 103
  %47 = load i8, ptr %46, align 1, !tbaa !246
  %48 = or i8 %47, 2
  store i8 %48, ptr %46, align 1, !tbaa !246
  %49 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 5
  %50 = load i16, ptr %49, align 2, !tbaa !247
  %51 = or i16 %50, 8192
  store i16 %51, ptr %49, align 2, !tbaa !247
  %52 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 4
  %53 = load i16, ptr %52, align 8, !tbaa !94
  %54 = icmp eq i16 %53, 21582
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i8 1, ptr %13, align 1, !tbaa !127
  store i8 1, ptr %14, align 1, !tbaa !127
  store i8 1, ptr %15, align 1, !tbaa !127
  store i8 1, ptr %16, align 1, !tbaa !127
  store i8 1, ptr %17, align 1, !tbaa !127
  br label %56

56:                                               ; preds = %45, %55
  %57 = and i16 %53, 255
  %58 = zext nneg i16 %57 to i64
  %59 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %58
  store i8 1, ptr %59, align 1, !tbaa !127
  br label %60

60:                                               ; preds = %39, %56, %36
  %61 = load ptr, ptr %19, align 8, !tbaa !105
  tail call fastcc void @flush_pointcache_reset(ptr noundef %0, ptr noundef %1, ptr noundef %61, i32 noundef %3, i32 noundef %4, i8 noundef zeroext 1)
  br label %63

62:                                               ; preds = %31
  tail call fastcc void @flush_pointcache_reset(ptr noundef %0, ptr noundef %1, ptr noundef %20, i32 noundef %3, i32 noundef %4, i8 noundef zeroext 0)
  br label %63

63:                                               ; preds = %18, %60, %62, %24
  %64 = getelementptr inbounds %struct.DagAdjList, ptr %19, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %18, !llvm.loop !272

67:                                               ; preds = %63, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DAG_scene_update_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  tail call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 21063, i8 noundef zeroext 0) #17
  store ptr %1, ptr %6, align 8, !tbaa !34
  %7 = call ptr @_setlooper_base_step(ptr noundef nonnull %6, ptr noundef null) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = icmp eq i8 %3, 0
  br label %13

11:                                               ; preds = %24, %5
  store ptr %1, ptr %6, align 8, !tbaa !34
  %12 = icmp eq ptr %1, null
  br i1 %12, label %33, label %27

13:                                               ; preds = %9, %24
  %14 = phi ptr [ %7, %9 ], [ %25, %24 ]
  %15 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  br i1 %10, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 8, !tbaa !34
  call fastcc void @dag_object_time_update_flags(ptr noundef %0, ptr noundef %18, ptr noundef %16)
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 112
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  call fastcc void @dag_group_update_flags(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %21, i8 noundef zeroext %3)
  br label %24

24:                                               ; preds = %19, %23
  %25 = call ptr @_setlooper_base_step(ptr noundef nonnull %6, ptr noundef nonnull %14) #17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %11, label %13, !llvm.loop !273

27:                                               ; preds = %11, %27
  %28 = phi ptr [ %31, %27 ], [ %1, %11 ]
  call void @DAG_scene_flush_update(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %2, i16 noundef signext 1)
  %29 = load ptr, ptr %6, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !274
  store ptr %31, ptr %6, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %27, !llvm.loop !275

33:                                               ; preds = %27, %11
  %34 = icmp eq i8 %3, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %33
  store ptr %1, ptr %6, align 8, !tbaa !34
  %36 = call ptr @_setlooper_base_step(ptr noundef nonnull %6, ptr noundef null) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %35, %48
  %39 = phi ptr [ %49, %48 ], [ %36, %35 ]
  %40 = getelementptr inbounds %struct.Base, ptr %39, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  %42 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 103
  %43 = load i8, ptr %42, align 1, !tbaa !246
  %44 = and i8 %43, 7
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = or i8 %43, 4
  store i8 %47, ptr %42, align 1, !tbaa !246
  br label %48

48:                                               ; preds = %38, %46
  %49 = call ptr @_setlooper_base_step(ptr noundef nonnull %6, ptr noundef nonnull %39) #17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %38, !llvm.loop !276

51:                                               ; preds = %48, %35
  %52 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !209
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  call fastcc void @dag_object_time_update_flags(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %53)
  br label %56

56:                                               ; preds = %51, %55, %33
  %57 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %85, label %60

60:                                               ; preds = %56, %82
  %61 = phi ptr [ %83, %82 ], [ %58, %56 ]
  %62 = getelementptr inbounds %struct.ID, ptr %61, i64 0, i32 5
  %63 = load i16, ptr %62, align 2, !tbaa !212
  %64 = and i16 %63, 1024
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.Group, ptr %61, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %66, %70
  %71 = phi ptr [ %78, %70 ], [ %68, %66 ]
  %72 = getelementptr inbounds %struct.GroupObject, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !149
  %74 = getelementptr inbounds %struct.Object, ptr %73, i64 0, i32 103
  %75 = load i8, ptr %74, align 1, !tbaa !246
  %76 = zext i8 %75 to i16
  %77 = getelementptr inbounds %struct.GroupObject, ptr %71, i64 0, i32 4
  store i16 %76, ptr %77, align 8, !tbaa !277
  %78 = load ptr, ptr %71, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %70, !llvm.loop !278

80:                                               ; preds = %70, %66
  %81 = and i16 %63, -1025
  store i16 %81, ptr %62, align 2, !tbaa !212
  br label %82

82:                                               ; preds = %60, %80
  %83 = load ptr, ptr %61, align 8, !tbaa !34
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %60, !llvm.loop !279

85:                                               ; preds = %82, %56
  %86 = icmp eq i8 %4, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %85
  call fastcc void @dag_invisible_dependencies_check_flush(ptr noundef %0, ptr noundef %1)
  br label %88

88:                                               ; preds = %87, %85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret void
}

declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @dag_object_time_update_flags(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 106
  %6 = load ptr, ptr %5, align 8, !tbaa !280
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %10 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  br label %11

11:                                               ; preds = %8, %44
  %12 = phi ptr [ %6, %8 ], [ %45, %44 ]
  %13 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %11
  %16 = load i16, ptr %13, align 8, !tbaa !203
  %17 = add i16 %16, -26
  %18 = icmp ult i16 %17, 3
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i8, ptr %10, align 1, !tbaa !246
  %21 = or i8 %20, 1
  store i8 %21, ptr %10, align 1, !tbaa !246
  br label %44

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %13, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !123
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %22
  %27 = call i32 %24(ptr noundef nonnull %12, ptr noundef nonnull %4) #17
  br label %28

28:                                               ; preds = %32, %26
  %29 = phi ptr [ %4, %26 ], [ %30, %32 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %30, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !125
  %35 = icmp eq ptr %34, null
  br i1 %35, label %28, label %36, !llvm.loop !281

36:                                               ; preds = %32
  %37 = load i8, ptr %9, align 1, !tbaa !246
  %38 = or i8 %37, 1
  store i8 %38, ptr %9, align 1, !tbaa !246
  br label %39

39:                                               ; preds = %28, %36
  %40 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %13, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !131
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call void %41(ptr noundef nonnull %12, ptr noundef nonnull %4, i8 noundef zeroext 1) #17
  br label %44

44:                                               ; preds = %19, %39, %43, %22, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  %45 = load ptr, ptr %12, align 8, !tbaa !282
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %11, !llvm.loop !283

47:                                               ; preds = %44, %3
  %48 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !143
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !120
  switch i16 %53, label %58 [
    i16 2, label %54
    i16 25, label %54
  ]

54:                                               ; preds = %51, %51
  %55 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %56 = load i8, ptr %55, align 1, !tbaa !246
  %57 = or i8 %56, 1
  store i8 %57, ptr %55, align 1, !tbaa !246
  br label %58

58:                                               ; preds = %51, %54, %47
  %59 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !133
  %61 = icmp eq ptr %60, null
  br i1 %61, label %84, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %60, align 8, !tbaa !284
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.bAction, ptr %63, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !286
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %65, %62
  %70 = getelementptr inbounds %struct.AnimData, ptr %60, i64 0, i32 3
  br label %71

71:                                               ; preds = %75, %69
  %72 = phi ptr [ %70, %69 ], [ %73, %75 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.NlaTrack, ptr %73, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !288
  %78 = icmp eq ptr %77, null
  br i1 %78, label %71, label %84, !llvm.loop !290

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.AnimData, ptr %60, i64 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !291
  %82 = icmp ne ptr %81, null
  %83 = zext i1 %82 to i16
  br label %84

84:                                               ; preds = %75, %58, %65, %79
  %85 = phi i16 [ 0, %58 ], [ 1, %65 ], [ %83, %79 ], [ 1, %75 ]
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %89 = load i8, ptr %88, align 1, !tbaa !246
  %90 = or i8 %89, 1
  store i8 %90, ptr %88, align 1, !tbaa !246
  %91 = getelementptr inbounds %struct.AnimData, ptr %60, i64 0, i32 8
  %92 = load i32, ptr %91, align 4, !tbaa !292
  %93 = or i32 %92, 2
  store i32 %93, ptr %91, align 4, !tbaa !292
  br label %94

94:                                               ; preds = %87, %84
  br i1 %61, label %103, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %97 = load i16, ptr %96, align 8, !tbaa !120
  %98 = icmp eq i16 %97, 25
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %101 = load i8, ptr %100, align 1, !tbaa !246
  %102 = or i8 %101, 2
  store i8 %102, ptr %100, align 1, !tbaa !246
  br label %103

103:                                              ; preds = %99, %95, %94
  %104 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 26
  br label %105

105:                                              ; preds = %109, %103
  %106 = phi ptr [ %104, %103 ], [ %107, %109 ]
  %107 = load ptr, ptr %106, align 8, !tbaa !34
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = call zeroext i8 @modifier_dependsOnTime(ptr noundef nonnull %107) #17
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %105, label %148, !llvm.loop !293

112:                                              ; preds = %105
  %113 = load ptr, ptr %59, align 8, !tbaa !133
  %114 = icmp eq ptr %113, null
  br i1 %114, label %152, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %113, align 8, !tbaa !284
  %117 = icmp eq ptr %116, null
  br i1 %117, label %133, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.bAction, ptr %116, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !34
  %121 = icmp eq ptr %120, null
  br i1 %121, label %133, label %122

122:                                              ; preds = %118, %130
  %123 = phi ptr [ %131, %130 ], [ %120, %118 ]
  %124 = getelementptr inbounds %struct.FCurve, ptr %123, i64 0, i32 12
  %125 = load ptr, ptr %124, align 8, !tbaa !294
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %125, ptr noundef nonnull dereferenceable(1) @.str.46) #19
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %148

130:                                              ; preds = %127, %122
  %131 = load ptr, ptr %123, align 8, !tbaa !34
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %122, !llvm.loop !296

133:                                              ; preds = %130, %118, %115
  %134 = getelementptr inbounds %struct.AnimData, ptr %113, i64 0, i32 5
  %135 = load ptr, ptr %134, align 8, !tbaa !34
  %136 = icmp eq ptr %135, null
  br i1 %136, label %152, label %137

137:                                              ; preds = %133, %145
  %138 = phi ptr [ %146, %145 ], [ %135, %133 ]
  %139 = getelementptr inbounds %struct.FCurve, ptr %138, i64 0, i32 12
  %140 = load ptr, ptr %139, align 8, !tbaa !294
  %141 = icmp eq ptr %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %140, ptr noundef nonnull dereferenceable(1) @.str.46) #19
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142, %137
  %146 = load ptr, ptr %138, align 8, !tbaa !34
  %147 = icmp eq ptr %146, null
  br i1 %147, label %152, label %137, !llvm.loop !297

148:                                              ; preds = %109, %127, %142
  %149 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %150 = load i8, ptr %149, align 1, !tbaa !246
  %151 = or i8 %150, 2
  store i8 %151, ptr %149, align 1, !tbaa !246
  br label %152

152:                                              ; preds = %145, %133, %112, %148
  %153 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %154 = load ptr, ptr %153, align 8, !tbaa !121
  %155 = icmp eq ptr %154, null
  br i1 %155, label %165, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.bPose, ptr %154, i64 0, i32 2
  %158 = load i16, ptr %157, align 8, !tbaa !298
  %159 = and i16 %158, 8
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %163 = load i8, ptr %162, align 1, !tbaa !246
  %164 = or i8 %163, 2
  store i8 %164, ptr %162, align 1, !tbaa !246
  br label %165

165:                                              ; preds = %161, %156, %152
  %166 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 128
  %167 = load ptr, ptr %166, align 8, !tbaa !153
  %168 = icmp eq ptr %167, null
  br i1 %168, label %176, label %169

169:                                              ; preds = %165
  %170 = call zeroext i8 @BKE_scene_check_rigidbody_active(ptr noundef %1) #17
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %174 = load i8, ptr %173, align 1, !tbaa !246
  %175 = or i8 %174, 1
  store i8 %175, ptr %173, align 1, !tbaa !246
  br label %176

176:                                              ; preds = %172, %169, %165
  %177 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %178 = load ptr, ptr %177, align 8, !tbaa !113
  %179 = call ptr @BKE_animdata_from_id(ptr noundef %178) #17
  %180 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %181 = load i16, ptr %180, align 8, !tbaa !120
  switch i16 %181, label %252 [
    i16 1, label %182
    i16 2, label %200
    i16 3, label %200
    i16 4, label %210
    i16 22, label %223
    i16 5, label %233
    i16 0, label %238
  ]

182:                                              ; preds = %176
  %183 = load ptr, ptr %177, align 8, !tbaa !113
  %184 = getelementptr inbounds %struct.Mesh, ptr %183, i64 0, i32 4
  %185 = load ptr, ptr %184, align 8, !tbaa !300
  %186 = icmp eq ptr %185, null
  br i1 %186, label %196, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 114
  %189 = load i8, ptr %188, align 1, !tbaa !303
  %190 = and i8 %189, 1
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %194 = load i8, ptr %193, align 1, !tbaa !246
  %195 = or i8 %194, 2
  store i8 %195, ptr %193, align 1, !tbaa !246
  br label %196

196:                                              ; preds = %187, %192, %182
  %197 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 109
  %198 = load ptr, ptr %197, align 8, !tbaa !152
  %199 = icmp eq ptr %198, null
  br i1 %199, label %252, label %248

200:                                              ; preds = %176, %176
  %201 = load ptr, ptr %177, align 8, !tbaa !113
  %202 = getelementptr inbounds %struct.Curve, ptr %201, i64 0, i32 9
  %203 = load ptr, ptr %202, align 8, !tbaa !304
  %204 = icmp eq ptr %203, null
  br i1 %204, label %252, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 114
  %207 = load i8, ptr %206, align 1, !tbaa !303
  %208 = and i8 %207, 1
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %248, label %252

210:                                              ; preds = %176
  %211 = load ptr, ptr %177, align 8, !tbaa !113
  %212 = getelementptr inbounds %struct.Curve, ptr %211, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !305
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %252

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.Curve, ptr %211, i64 0, i32 52
  %217 = load ptr, ptr %216, align 8, !tbaa !306
  %218 = icmp eq ptr %217, null
  br i1 %218, label %252, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.Curve, ptr %211, i64 0, i32 55
  %221 = load ptr, ptr %220, align 8, !tbaa !307
  %222 = icmp eq ptr %221, null
  br i1 %222, label %252, label %248

223:                                              ; preds = %176
  %224 = load ptr, ptr %177, align 8, !tbaa !113
  %225 = getelementptr inbounds %struct.Lattice, ptr %224, i64 0, i32 23
  %226 = load ptr, ptr %225, align 8, !tbaa !308
  %227 = icmp eq ptr %226, null
  br i1 %227, label %252, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 114
  %230 = load i8, ptr %229, align 1, !tbaa !303
  %231 = and i8 %230, 1
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %248, label %252

233:                                              ; preds = %176
  %234 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 55
  %235 = load i16, ptr %234, align 8, !tbaa !148
  %236 = and i16 %235, 2840
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %252, label %248

238:                                              ; preds = %176
  %239 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 88
  %240 = load i8, ptr %239, align 1, !tbaa !310
  %241 = icmp eq i8 %240, 8
  br i1 %241, label %242, label %252

242:                                              ; preds = %238
  %243 = load ptr, ptr %177, align 8, !tbaa !113
  %244 = icmp eq ptr %243, null
  br i1 %244, label %252, label %245

245:                                              ; preds = %242
  %246 = call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %243) #17
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %245, %233, %228, %219, %205, %196
  %249 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %250 = load i8, ptr %249, align 1, !tbaa !246
  %251 = or i8 %250, 2
  store i8 %251, ptr %249, align 1, !tbaa !246
  br label %252

252:                                              ; preds = %248, %238, %242, %245, %233, %223, %228, %210, %215, %219, %200, %205, %196, %176
  %253 = icmp eq ptr %179, null
  br i1 %253, label %282, label %254

254:                                              ; preds = %252
  %255 = load ptr, ptr %179, align 8, !tbaa !284
  %256 = icmp eq ptr %255, null
  br i1 %256, label %261, label %257

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.bAction, ptr %255, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !286
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %275

261:                                              ; preds = %257, %254
  %262 = getelementptr inbounds %struct.AnimData, ptr %179, i64 0, i32 3
  br label %263

263:                                              ; preds = %267, %261
  %264 = phi ptr [ %262, %261 ], [ %265, %267 ]
  %265 = load ptr, ptr %264, align 8, !tbaa !34
  %266 = icmp eq ptr %265, null
  br i1 %266, label %271, label %267

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.NlaTrack, ptr %265, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !288
  %270 = icmp eq ptr %269, null
  br i1 %270, label %263, label %275, !llvm.loop !290

271:                                              ; preds = %263
  %272 = getelementptr inbounds %struct.AnimData, ptr %179, i64 0, i32 5
  %273 = load ptr, ptr %272, align 8, !tbaa !291
  %274 = icmp eq ptr %273, null
  br i1 %274, label %282, label %275

275:                                              ; preds = %267, %257, %271
  %276 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %277 = load i8, ptr %276, align 1, !tbaa !246
  %278 = or i8 %277, 2
  store i8 %278, ptr %276, align 1, !tbaa !246
  %279 = getelementptr inbounds %struct.AnimData, ptr %179, i64 0, i32 8
  %280 = load i32, ptr %279, align 4, !tbaa !292
  %281 = or i32 %280, 2
  store i32 %281, ptr %279, align 4, !tbaa !292
  br label %282

282:                                              ; preds = %252, %275, %271
  %283 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 109
  %284 = load ptr, ptr %283, align 8, !tbaa !152
  %285 = icmp eq ptr %284, null
  br i1 %285, label %297, label %286

286:                                              ; preds = %282, %294
  %287 = phi ptr [ %295, %294 ], [ %284, %282 ]
  %288 = call i32 @psys_check_enabled(ptr noundef %2, ptr noundef nonnull %287) #17
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %294, label %290

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %292 = load i8, ptr %291, align 1, !tbaa !246
  %293 = or i8 %292, 2
  store i8 %293, ptr %291, align 1, !tbaa !246
  br label %297

294:                                              ; preds = %286
  %295 = load ptr, ptr %287, align 8, !tbaa !201
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %286, !llvm.loop !311

297:                                              ; preds = %294, %290, %282
  %298 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %299 = load i8, ptr %298, align 1, !tbaa !246
  %300 = and i8 %299, 1
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %319, label %302

302:                                              ; preds = %297
  %303 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 5
  %304 = load i16, ptr %303, align 2, !tbaa !247
  %305 = or i16 %304, 4096
  store i16 %305, ptr %303, align 2, !tbaa !247
  %306 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %307 = load i16, ptr %306, align 8, !tbaa !94
  %308 = icmp eq i16 %307, 21582
  br i1 %308, label %309, label %315

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  store i8 1, ptr %310, align 1, !tbaa !127
  %311 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  store i8 1, ptr %311, align 1, !tbaa !127
  %312 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  store i8 1, ptr %312, align 1, !tbaa !127
  %313 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  store i8 1, ptr %313, align 1, !tbaa !127
  %314 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  store i8 1, ptr %314, align 1, !tbaa !127
  br label %315

315:                                              ; preds = %302, %309
  %316 = and i16 %307, 255
  %317 = zext nneg i16 %316 to i64
  %318 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %317
  store i8 1, ptr %318, align 1, !tbaa !127
  br label %319

319:                                              ; preds = %315, %297
  %320 = load i8, ptr %298, align 1, !tbaa !246
  %321 = and i8 %320, 2
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %340, label %323

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 5
  %325 = load i16, ptr %324, align 2, !tbaa !247
  %326 = or i16 %325, 8192
  store i16 %326, ptr %324, align 2, !tbaa !247
  %327 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %328 = load i16, ptr %327, align 8, !tbaa !94
  %329 = icmp eq i16 %328, 21582
  br i1 %329, label %330, label %336

330:                                              ; preds = %323
  %331 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  store i8 1, ptr %331, align 1, !tbaa !127
  %332 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  store i8 1, ptr %332, align 1, !tbaa !127
  %333 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  store i8 1, ptr %333, align 1, !tbaa !127
  %334 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  store i8 1, ptr %334, align 1, !tbaa !127
  %335 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  store i8 1, ptr %335, align 1, !tbaa !127
  br label %336

336:                                              ; preds = %323, %330
  %337 = and i16 %328, 255
  %338 = zext nneg i16 %337 to i64
  %339 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %338
  store i8 1, ptr %339, align 1, !tbaa !127
  br label %340

340:                                              ; preds = %336, %319
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dag_group_update_flags(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 5
  %6 = load i16, ptr %5, align 2, !tbaa !212
  %7 = and i16 %6, 1024
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %4
  %10 = or disjoint i16 %6, 1024
  store i16 %10, ptr %5, align 2, !tbaa !212
  %11 = getelementptr inbounds %struct.Group, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %9
  %15 = icmp eq i8 %3, 0
  br label %16

16:                                               ; preds = %14, %28
  %17 = phi ptr [ %12, %14 ], [ %29, %28 ]
  br i1 %15, label %21, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.GroupObject, ptr %17, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !149
  tail call fastcc void @dag_object_time_update_flags(ptr noundef %0, ptr noundef %1, ptr noundef %20)
  br label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds %struct.GroupObject, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !149
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 112
  %25 = load ptr, ptr %24, align 8, !tbaa !103
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call fastcc void @dag_group_update_flags(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %25, i8 noundef zeroext %3)
  br label %28

28:                                               ; preds = %21, %27
  %29 = load ptr, ptr %17, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %16, !llvm.loop !312

31:                                               ; preds = %28, %9, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dag_invisible_dependencies_check_flush(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 79
  %4 = load i8, ptr %3, align 1, !tbaa !127
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %8 = load i8, ptr %7, align 1, !tbaa !127
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 67
  %12 = load i8, ptr %11, align 1, !tbaa !127
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %16 = load i8, ptr %15, align 1, !tbaa !127
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %278, label %18

18:                                               ; preds = %14, %10, %6, %2
  %19 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 31
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %18 ]
  store i32 0, ptr %24, align 8, !tbaa !93
  %25 = getelementptr inbounds %struct.DagNode, ptr %24, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !89
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !313

28:                                               ; preds = %23, %18
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %30 = tail call ptr %29(i64 noundef 32, ptr noundef nonnull @.str) #17
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %32 = tail call ptr %31(i64 noundef 32, ptr noundef nonnull @.str) #17
  %33 = getelementptr inbounds %struct.DagNodeQueue, ptr %30, i64 0, i32 4
  store ptr %32, ptr %33, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %34 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %35 = tail call ptr %34(i64 noundef 16, ptr noundef nonnull @.str.1) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  %36 = load ptr, ptr %33, align 8, !tbaa !38
  %37 = getelementptr inbounds %struct.DagNodeQueue, ptr %36, i64 0, i32 1
  store ptr %35, ptr %37, align 8, !tbaa !41
  store ptr %35, ptr %36, align 8, !tbaa !42
  br label %38

38:                                               ; preds = %38, %28
  %39 = phi i32 [ %46, %38 ], [ 1, %28 ]
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %41 = tail call ptr %40(i64 noundef 16, ptr noundef nonnull @.str.2) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %42 = load ptr, ptr %33, align 8, !tbaa !38
  %43 = getelementptr inbounds %struct.DagNodeQueue, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  %45 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %44, i64 0, i32 1
  store ptr %41, ptr %45, align 8, !tbaa !43
  store ptr %41, ptr %43, align 8, !tbaa !41
  %46 = add nuw nsw i32 %39, 1
  %47 = icmp eq i32 %46, 50
  br i1 %47, label %48, label %38, !llvm.loop !45

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.DagNodeQueue, ptr %42, i64 0, i32 2
  store i32 50, ptr %49, align 8, !tbaa !48
  %50 = icmp eq ptr %21, null
  br i1 %50, label %255, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.DagNodeQueue, ptr %30, i64 0, i32 1
  %53 = getelementptr inbounds %struct.DagNodeQueue, ptr %30, i64 0, i32 2
  br label %54

54:                                               ; preds = %51, %251
  %55 = phi ptr [ %21, %51 ], [ %253, %251 ]
  %56 = load i32, ptr %55, align 8, !tbaa !93
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %251

58:                                               ; preds = %54
  %59 = load ptr, ptr %33, align 8, !tbaa !38
  %60 = load ptr, ptr %59, align 8, !tbaa !42
  %61 = icmp eq ptr %60, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %60, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !43
  store ptr %64, ptr %59, align 8, !tbaa !42
  %65 = getelementptr inbounds %struct.DagNodeQueue, ptr %59, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !41
  %67 = icmp eq ptr %66, %60
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  br label %69

69:                                               ; preds = %68, %62
  %70 = getelementptr inbounds %struct.DagNodeQueue, ptr %59, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !48
  %72 = add nsw i32 %71, -1
  store i32 %72, ptr %70, align 8, !tbaa !48
  br label %93

73:                                               ; preds = %58
  %74 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %75 = tail call ptr %74(i64 noundef 16, ptr noundef nonnull @.str.4) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  %76 = load ptr, ptr %33, align 8, !tbaa !38
  %77 = getelementptr inbounds %struct.DagNodeQueue, ptr %76, i64 0, i32 1
  store ptr %75, ptr %77, align 8, !tbaa !41
  store ptr %75, ptr %76, align 8, !tbaa !42
  br label %78

78:                                               ; preds = %78, %73
  %79 = phi i32 [ 1, %73 ], [ %86, %78 ]
  %80 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %81 = tail call ptr %80(i64 noundef 16, ptr noundef nonnull @.str.5) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %81, i8 0, i64 16, i1 false)
  %82 = load ptr, ptr %33, align 8, !tbaa !38
  %83 = getelementptr inbounds %struct.DagNodeQueue, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !41
  %85 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %84, i64 0, i32 1
  store ptr %81, ptr %85, align 8, !tbaa !43
  store ptr %81, ptr %83, align 8, !tbaa !41
  %86 = add nuw nsw i32 %79, 1
  %87 = icmp eq i32 %86, 50
  br i1 %87, label %88, label %78, !llvm.loop !54

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.DagNodeQueue, ptr %82, i64 0, i32 2
  store i32 50, ptr %89, align 8, !tbaa !48
  %90 = load ptr, ptr %82, align 8, !tbaa !42
  %91 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !43
  store ptr %92, ptr %82, align 8, !tbaa !42
  br label %93

93:                                               ; preds = %88, %69
  %94 = phi ptr [ %60, %69 ], [ %90, %88 ]
  %95 = load ptr, ptr %30, align 8, !tbaa !42
  %96 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %94, i64 0, i32 1
  store ptr %95, ptr %96, align 8, !tbaa !43
  store ptr %55, ptr %94, align 8, !tbaa !49
  store ptr %94, ptr %30, align 8, !tbaa !42
  %97 = load ptr, ptr %52, align 8, !tbaa !41
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store ptr %94, ptr %52, align 8, !tbaa !41
  br label %100

100:                                              ; preds = %93, %99
  %101 = load i32, ptr %53, align 8, !tbaa !48
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %53, align 8, !tbaa !48
  store i32 1, ptr %55, align 8, !tbaa !93
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %251, label %104

104:                                              ; preds = %100, %248
  %105 = load ptr, ptr %30, align 8, !tbaa !42
  %106 = load ptr, ptr %105, align 8, !tbaa !49
  %107 = getelementptr inbounds %struct.DagNode, ptr %106, i64 0, i32 16
  %108 = load ptr, ptr %107, align 8, !tbaa !34
  %109 = icmp eq ptr %108, null
  br i1 %109, label %164, label %114

110:                                              ; preds = %114
  %111 = getelementptr inbounds %struct.DagAdjList, ptr %115, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !34
  %113 = icmp eq ptr %112, null
  br i1 %113, label %164, label %114, !llvm.loop !314

114:                                              ; preds = %104, %110
  %115 = phi ptr [ %112, %110 ], [ %108, %104 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !105
  %117 = load i32, ptr %116, align 8, !tbaa !93
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %110

119:                                              ; preds = %114
  store i32 1, ptr %116, align 8, !tbaa !93
  %120 = load ptr, ptr %33, align 8, !tbaa !38
  %121 = load ptr, ptr %120, align 8, !tbaa !42
  %122 = icmp eq ptr %121, null
  br i1 %122, label %134, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %121, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !43
  store ptr %125, ptr %120, align 8, !tbaa !42
  %126 = getelementptr inbounds %struct.DagNodeQueue, ptr %120, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !41
  %128 = icmp eq ptr %127, %121
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %120, i8 0, i64 16, i1 false)
  br label %130

130:                                              ; preds = %129, %123
  %131 = getelementptr inbounds %struct.DagNodeQueue, ptr %120, i64 0, i32 2
  %132 = load i32, ptr %131, align 8, !tbaa !48
  %133 = add nsw i32 %132, -1
  store i32 %133, ptr %131, align 8, !tbaa !48
  br label %154

134:                                              ; preds = %119
  %135 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %136 = tail call ptr %135(i64 noundef 16, ptr noundef nonnull @.str.4) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %136, i8 0, i64 16, i1 false)
  %137 = load ptr, ptr %33, align 8, !tbaa !38
  %138 = getelementptr inbounds %struct.DagNodeQueue, ptr %137, i64 0, i32 1
  store ptr %136, ptr %138, align 8, !tbaa !41
  store ptr %136, ptr %137, align 8, !tbaa !42
  br label %139

139:                                              ; preds = %139, %134
  %140 = phi i32 [ 1, %134 ], [ %147, %139 ]
  %141 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %142 = tail call ptr %141(i64 noundef 16, ptr noundef nonnull @.str.5) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %142, i8 0, i64 16, i1 false)
  %143 = load ptr, ptr %33, align 8, !tbaa !38
  %144 = getelementptr inbounds %struct.DagNodeQueue, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !41
  %146 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %145, i64 0, i32 1
  store ptr %142, ptr %146, align 8, !tbaa !43
  store ptr %142, ptr %144, align 8, !tbaa !41
  %147 = add nuw nsw i32 %140, 1
  %148 = icmp eq i32 %147, 50
  br i1 %148, label %149, label %139, !llvm.loop !54

149:                                              ; preds = %139
  %150 = getelementptr inbounds %struct.DagNodeQueue, ptr %143, i64 0, i32 2
  store i32 50, ptr %150, align 8, !tbaa !48
  %151 = load ptr, ptr %143, align 8, !tbaa !42
  %152 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !43
  store ptr %153, ptr %143, align 8, !tbaa !42
  br label %154

154:                                              ; preds = %149, %130
  %155 = phi ptr [ %121, %130 ], [ %151, %149 ]
  %156 = load ptr, ptr %30, align 8, !tbaa !42
  %157 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %155, i64 0, i32 1
  store ptr %156, ptr %157, align 8, !tbaa !43
  store ptr %116, ptr %155, align 8, !tbaa !49
  store ptr %155, ptr %30, align 8, !tbaa !42
  %158 = load ptr, ptr %52, align 8, !tbaa !41
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store ptr %155, ptr %52, align 8, !tbaa !41
  br label %161

161:                                              ; preds = %154, %160
  %162 = load i32, ptr %53, align 8, !tbaa !48
  %163 = add nsw i32 %162, 1
  store i32 %163, ptr %53, align 8, !tbaa !48
  br label %248

164:                                              ; preds = %110, %104
  %165 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %105, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !43
  store ptr %166, ptr %30, align 8, !tbaa !42
  %167 = load ptr, ptr %52, align 8, !tbaa !41
  %168 = icmp eq ptr %167, %105
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  br label %170

170:                                              ; preds = %169, %164
  %171 = load i32, ptr %53, align 8, !tbaa !48
  %172 = add nsw i32 %171, -1
  store i32 %172, ptr %53, align 8, !tbaa !48
  %173 = load ptr, ptr %33, align 8, !tbaa !38
  %174 = getelementptr inbounds %struct.DagNodeQueue, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !41
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %175, i64 0, i32 1
  store ptr %105, ptr %178, align 8, !tbaa !43
  br label %179

179:                                              ; preds = %177, %170
  store ptr %105, ptr %174, align 8, !tbaa !41
  %180 = load ptr, ptr %173, align 8, !tbaa !42
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store ptr %105, ptr %173, align 8, !tbaa !42
  br label %183

183:                                              ; preds = %182, %179
  %184 = load ptr, ptr %105, align 8, !tbaa !49
  %185 = getelementptr inbounds %struct.DagNodeQueue, ptr %173, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, i8 0, i64 16, i1 false)
  %186 = load i32, ptr %185, align 8, !tbaa !48
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %185, align 8, !tbaa !48
  %188 = getelementptr inbounds %struct.DagNode, ptr %184, i64 0, i32 1
  %189 = load i16, ptr %188, align 4, !tbaa !95
  %190 = icmp eq i16 %189, 16975
  br i1 %190, label %191, label %247

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.DagNode, ptr %184, i64 0, i32 5
  %193 = load ptr, ptr %192, align 8, !tbaa !92
  %194 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 103
  %195 = load i8, ptr %194, align 1, !tbaa !246
  %196 = and i8 %195, 7
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %247

198:                                              ; preds = %191
  %199 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 3
  %200 = load i16, ptr %199, align 8, !tbaa !120
  switch i16 %200, label %247 [
    i16 1, label %201
    i16 2, label %203
    i16 3, label %203
    i16 4, label %203
    i16 5, label %203
    i16 22, label %203
  ]

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 120
  br label %205

203:                                              ; preds = %198, %198, %198, %198, %198
  %204 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 118
  br label %205

205:                                              ; preds = %203, %201
  %206 = phi ptr [ %202, %201 ], [ %204, %203 ]
  %207 = load ptr, ptr %206, align 8, !tbaa !34
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %247

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.DagNode, ptr %184, i64 0, i32 16
  %211 = load ptr, ptr %210, align 8, !tbaa !34
  %212 = icmp eq ptr %211, null
  br i1 %212, label %247, label %213

213:                                              ; preds = %209, %243
  %214 = phi ptr [ %245, %243 ], [ %211, %209 ]
  %215 = load ptr, ptr %214, align 8, !tbaa !105
  %216 = getelementptr inbounds %struct.DagNode, ptr %215, i64 0, i32 1
  %217 = load i16, ptr %216, align 4, !tbaa !95
  %218 = icmp eq i16 %217, 16975
  br i1 %218, label %219, label %243

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.DagNode, ptr %215, i64 0, i32 5
  %221 = load ptr, ptr %220, align 8, !tbaa !92
  %222 = getelementptr inbounds %struct.Object, ptr %221, i64 0, i32 103
  %223 = load i8, ptr %222, align 1, !tbaa !246
  %224 = and i8 %223, 7
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %219
  %227 = getelementptr inbounds %struct.Object, ptr %221, i64 0, i32 3
  %228 = load i16, ptr %227, align 8, !tbaa !120
  switch i16 %228, label %237 [
    i16 1, label %229
    i16 2, label %229
    i16 3, label %229
    i16 4, label %229
    i16 5, label %229
    i16 22, label %229
  ]

229:                                              ; preds = %226, %226, %226, %226, %226, %226
  %230 = getelementptr inbounds %struct.Object, ptr %221, i64 0, i32 19
  %231 = load ptr, ptr %230, align 8, !tbaa !113
  %232 = getelementptr inbounds %struct.ID, ptr %231, i64 0, i32 5
  %233 = load i16, ptr %232, align 2, !tbaa !247
  %234 = and i16 %233, 12288
  %235 = icmp ne i16 %234, 0
  %236 = zext i1 %235 to i8
  br label %237

237:                                              ; preds = %229, %226, %219
  %238 = phi i8 [ %236, %229 ], [ 1, %219 ], [ 0, %226 ]
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %237
  %241 = load i8, ptr %194, align 1, !tbaa !246
  %242 = or i8 %241, 3
  store i8 %242, ptr %194, align 1, !tbaa !246
  br label %243

243:                                              ; preds = %240, %237, %213
  %244 = getelementptr inbounds %struct.DagAdjList, ptr %214, i64 0, i32 5
  %245 = load ptr, ptr %244, align 8, !tbaa !34
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %213, !llvm.loop !315

247:                                              ; preds = %243, %209, %191, %198, %205, %183
  store i32 2, ptr %55, align 8, !tbaa !93
  br label %248

248:                                              ; preds = %247, %161
  %249 = load i32, ptr %53, align 8, !tbaa !48
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %104, !llvm.loop !316

251:                                              ; preds = %248, %100, %54
  %252 = getelementptr inbounds %struct.DagNode, ptr %55, i64 0, i32 18
  %253 = load ptr, ptr %252, align 8, !tbaa !89
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %54, !llvm.loop !317

255:                                              ; preds = %251, %48
  %256 = load ptr, ptr %30, align 8, !tbaa !42
  %257 = icmp eq ptr %256, null
  br i1 %257, label %264, label %258

258:                                              ; preds = %255, %258
  %259 = phi ptr [ %261, %258 ], [ %256, %255 ]
  %260 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %259, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !43
  %262 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %262(ptr noundef nonnull %259) #17
  %263 = icmp eq ptr %261, null
  br i1 %263, label %264, label %258, !llvm.loop !51

264:                                              ; preds = %258, %255
  %265 = load ptr, ptr %33, align 8, !tbaa !38
  %266 = load ptr, ptr %265, align 8, !tbaa !42
  %267 = icmp eq ptr %266, null
  br i1 %267, label %274, label %268

268:                                              ; preds = %264, %268
  %269 = phi ptr [ %271, %268 ], [ %266, %264 ]
  %270 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %269, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !43
  %272 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %272(ptr noundef nonnull %269) #17
  %273 = icmp eq ptr %271, null
  br i1 %273, label %274, label %268, !llvm.loop !52

274:                                              ; preds = %268, %264
  %275 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %276 = load ptr, ptr %33, align 8, !tbaa !38
  tail call void %275(ptr noundef %276) #17
  %277 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %277(ptr noundef nonnull %30) #17
  br label %278

278:                                              ; preds = %274, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DAG_on_visible_update(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call fastcc void @dag_current_scene_layers(ptr noundef %0, ptr noundef nonnull %3)
  %5 = load ptr, ptr %3, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %151, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %9 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %10 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %11 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %12 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  %13 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %14 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %15 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %16 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %17 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  br label %18

18:                                               ; preds = %7, %145
  %19 = phi ptr [ %5, %7 ], [ %149, %145 ]
  %20 = getelementptr inbounds %struct.DagSceneLayer, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %22 = getelementptr inbounds %struct.DagSceneLayer, ptr %19, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !320
  store ptr %21, ptr %4, align 8, !tbaa !34
  %24 = icmp eq ptr %21, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %18, %25
  %26 = phi ptr [ %29, %25 ], [ %21, %18 ]
  call fastcc void @dag_scene_flush_layers(ptr noundef nonnull %26, i32 noundef %23)
  %27 = load ptr, ptr %4, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.Scene, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !274
  store ptr %29, ptr %4, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %25, !llvm.loop !321

31:                                               ; preds = %25, %18
  call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 21063, i8 noundef zeroext 0) #17
  store ptr %21, ptr %4, align 8, !tbaa !34
  %32 = call ptr @_setlooper_base_step(ptr noundef nonnull %4, ptr noundef null) #17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %145, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 14
  br label %36

36:                                               ; preds = %34, %142
  %37 = phi ptr [ %32, %34 ], [ %143, %142 ]
  %38 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  %40 = load ptr, ptr %4, align 8, !tbaa !34
  %41 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 31
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  %43 = icmp eq ptr %42, null
  br i1 %43, label %84, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.DagForest, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !91
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %46, ptr noundef %39) #17
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi ptr [ %49, %48 ], [ null, %44 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %84

53:                                               ; preds = %50
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %55 = call ptr %54(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %56 = icmp eq ptr %55, null
  br i1 %56, label %84, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.DagNode, ptr %55, i64 0, i32 5
  store ptr %39, ptr %58, align 8, !tbaa !92
  store i32 0, ptr %55, align 8, !tbaa !93
  %59 = getelementptr inbounds %struct.DagForest, ptr %42, i64 0, i32 5
  %60 = load i8, ptr %59, align 4, !tbaa !55
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 4
  %64 = load i16, ptr %63, align 8, !tbaa !94
  %65 = getelementptr inbounds %struct.DagNode, ptr %55, i64 0, i32 1
  store i16 %64, ptr %65, align 4, !tbaa !95
  br label %66

66:                                               ; preds = %62, %57
  %67 = getelementptr inbounds %struct.DagForest, ptr %42, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !96
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr inbounds %struct.ListBase, ptr %42, i64 0, i32 1
  br i1 %69, label %75, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %70, align 8, !tbaa !97
  %73 = getelementptr inbounds %struct.DagNode, ptr %72, i64 0, i32 18
  store ptr %55, ptr %73, align 8, !tbaa !89
  store ptr %55, ptr %70, align 8, !tbaa !97
  %74 = add nsw i32 %68, 1
  br label %76

75:                                               ; preds = %66
  store ptr %55, ptr %70, align 8, !tbaa !97
  store ptr %55, ptr %42, align 8, !tbaa !81
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32 [ 1, %75 ], [ %74, %71 ]
  store i32 %77, ptr %67, align 8, !tbaa !96
  %78 = load ptr, ptr %45, align 8, !tbaa !91
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %81, ptr %45, align 8, !tbaa !91
  br label %82

82:                                               ; preds = %80, %76
  %83 = load ptr, ptr %45, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %83, ptr noundef %39, ptr noundef nonnull %55) #17
  br label %84

84:                                               ; preds = %82, %53, %50, %36
  %85 = phi ptr [ null, %36 ], [ %51, %50 ], [ %55, %53 ], [ %55, %82 ]
  %86 = icmp eq ptr %85, null
  %87 = getelementptr inbounds %struct.DagNode, ptr %85, i64 0, i32 8
  %88 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 52
  %89 = select i1 %86, ptr %88, ptr %87
  %90 = load i32, ptr %89, align 4, !tbaa !322
  %91 = load i32, ptr %35, align 8, !tbaa !323
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = and i32 %93, %23
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %142, label %96

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 3
  %98 = load i16, ptr %97, align 8, !tbaa !120
  switch i16 %98, label %114 [
    i16 1, label %99
    i16 2, label %99
    i16 3, label %99
    i16 4, label %99
    i16 5, label %99
    i16 22, label %99
  ]

99:                                               ; preds = %96, %96, %96, %96, %96, %96
  %100 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 103
  %101 = load i8, ptr %100, align 1, !tbaa !246
  %102 = or i8 %101, 2
  store i8 %102, ptr %100, align 1, !tbaa !246
  %103 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 5
  %104 = load i16, ptr %103, align 2, !tbaa !247
  %105 = or i16 %104, 4096
  store i16 %105, ptr %103, align 2, !tbaa !247
  %106 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 4
  %107 = load i16, ptr %106, align 8, !tbaa !94
  %108 = icmp eq i16 %107, 21582
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  store i8 1, ptr %8, align 1, !tbaa !127
  store i8 1, ptr %9, align 1, !tbaa !127
  store i8 1, ptr %10, align 1, !tbaa !127
  store i8 1, ptr %11, align 1, !tbaa !127
  store i8 1, ptr %12, align 1, !tbaa !127
  br label %110

110:                                              ; preds = %99, %109
  %111 = and i16 %107, 255
  %112 = zext nneg i16 %111 to i64
  %113 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %112
  store i8 1, ptr %113, align 1, !tbaa !127
  br label %114

114:                                              ; preds = %96, %110
  %115 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 11
  %116 = load ptr, ptr %115, align 8, !tbaa !100
  %117 = icmp eq ptr %116, null
  br i1 %117, label %137, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 12
  %120 = load ptr, ptr %119, align 8, !tbaa !324
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.Object, ptr %116, i64 0, i32 103
  %124 = load i8, ptr %123, align 1, !tbaa !246
  %125 = or i8 %124, 2
  store i8 %125, ptr %123, align 1, !tbaa !246
  %126 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 5
  %127 = load i16, ptr %126, align 2, !tbaa !247
  %128 = or i16 %127, 4096
  store i16 %128, ptr %126, align 2, !tbaa !247
  %129 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 4
  %130 = load i16, ptr %129, align 8, !tbaa !94
  %131 = icmp eq i16 %130, 21582
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  store i8 1, ptr %13, align 1, !tbaa !127
  store i8 1, ptr %14, align 1, !tbaa !127
  store i8 1, ptr %15, align 1, !tbaa !127
  store i8 1, ptr %16, align 1, !tbaa !127
  store i8 1, ptr %17, align 1, !tbaa !127
  br label %133

133:                                              ; preds = %122, %132
  %134 = and i16 %130, 255
  %135 = zext nneg i16 %134 to i64
  %136 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %135
  store i8 1, ptr %136, align 1, !tbaa !127
  br label %137

137:                                              ; preds = %133, %118, %114
  %138 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 112
  %139 = load ptr, ptr %138, align 8, !tbaa !103
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  call fastcc void @dag_group_on_visible_update(ptr noundef nonnull %139)
  br label %142

142:                                              ; preds = %84, %141, %137
  %143 = call ptr @_setlooper_base_step(ptr noundef nonnull %4, ptr noundef nonnull %37) #17
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %36, !llvm.loop !325

145:                                              ; preds = %142, %31
  call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 21063, i8 noundef zeroext 0) #17
  call void @DAG_scene_update_flags(ptr noundef %0, ptr noundef %21, i32 noundef %23, i8 noundef zeroext %1, i8 noundef zeroext 1)
  %146 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 14
  %147 = load i32, ptr %146, align 8, !tbaa !323
  %148 = or i32 %147, %23
  store i32 %148, ptr %146, align 8, !tbaa !323
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  %149 = load ptr, ptr %19, align 8, !tbaa !34
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %18, !llvm.loop !326

151:                                              ; preds = %145, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #17
  %152 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 79
  store i8 1, ptr %152, align 1, !tbaa !127
  %153 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  %154 = load ptr, ptr %153, align 8, !tbaa !327
  %155 = icmp eq ptr %154, null
  br i1 %155, label %184, label %156

156:                                              ; preds = %151, %178
  %157 = phi ptr [ %182, %178 ], [ %154, %151 ]
  %158 = load ptr, ptr @G, align 8, !tbaa !158
  %159 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !240
  %160 = and i32 %159, 256
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.ID, ptr %157, i64 0, i32 4
  %164 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @__func__.DAG_id_tag_update_ex, ptr noundef nonnull %163, i32 noundef 0)
  br label %165

165:                                              ; preds = %162, %156
  %166 = getelementptr inbounds %struct.ID, ptr %157, i64 0, i32 5
  %167 = load i16, ptr %166, align 2, !tbaa !247
  %168 = or i16 %167, 4096
  store i16 %168, ptr %166, align 2, !tbaa !247
  %169 = getelementptr inbounds %struct.ID, ptr %157, i64 0, i32 4
  %170 = load i16, ptr %169, align 8, !tbaa !94
  %171 = icmp eq i16 %170, 21582
  br i1 %171, label %172, label %178

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.Main, ptr %158, i64 0, i32 45, i64 77
  store i8 1, ptr %173, align 1, !tbaa !127
  %174 = getelementptr inbounds %struct.Main, ptr %158, i64 0, i32 45, i64 84
  store i8 1, ptr %174, align 1, !tbaa !127
  %175 = getelementptr inbounds %struct.Main, ptr %158, i64 0, i32 45, i64 76
  store i8 1, ptr %175, align 1, !tbaa !127
  %176 = getelementptr inbounds %struct.Main, ptr %158, i64 0, i32 45, i64 87
  store i8 1, ptr %176, align 1, !tbaa !127
  %177 = getelementptr inbounds %struct.Main, ptr %158, i64 0, i32 45, i64 83
  store i8 1, ptr %177, align 1, !tbaa !127
  br label %178

178:                                              ; preds = %172, %165
  %179 = and i16 %170, 255
  %180 = zext nneg i16 %179 to i64
  %181 = getelementptr inbounds %struct.Main, ptr %158, i64 0, i32 45, i64 %180
  store i8 1, ptr %181, align 1, !tbaa !127
  %182 = load ptr, ptr %157, align 8, !tbaa !328
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %156, !llvm.loop !330

184:                                              ; preds = %178, %151
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dag_current_scene_layers(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %3, align 8, !tbaa !331
  %5 = icmp eq ptr %4, null
  br i1 %5, label %52, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  tail call void @BKE_main_id_flag_listbase(ptr noundef nonnull %7, i16 noundef signext 1024, i8 noundef zeroext 1) #17
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %61, label %11

11:                                               ; preds = %6, %49
  %12 = phi ptr [ %50, %49 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !332
  %15 = icmp eq ptr %14, null
  br i1 %15, label %49, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bScreen, ptr %14, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !334
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 31
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 5
  %24 = load i16, ptr %23, align 2, !tbaa !336
  %25 = and i16 %24, 1024
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %29 = tail call ptr %28(i64 noundef 32, ptr noundef nonnull @.str.53) #17
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %29) #17
  %30 = getelementptr inbounds %struct.DagSceneLayer, ptr %29, i64 0, i32 2
  store ptr %18, ptr %30, align 8, !tbaa !318
  %31 = load ptr, ptr %13, align 8, !tbaa !332
  %32 = tail call i32 @BKE_screen_visible_layers(ptr noundef %31, ptr noundef %18) #17
  %33 = getelementptr inbounds %struct.DagSceneLayer, ptr %29, i64 0, i32 3
  store i32 %32, ptr %33, align 8, !tbaa !320
  %34 = load i16, ptr %23, align 2, !tbaa !336
  %35 = and i16 %34, -1025
  store i16 %35, ptr %23, align 2, !tbaa !336
  br label %49

36:                                               ; preds = %22, %40
  %37 = phi ptr [ %38, %40 ], [ %1, %22 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.DagSceneLayer, ptr %38, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !318
  %43 = icmp eq ptr %42, %18
  br i1 %43, label %44, label %36, !llvm.loop !337

44:                                               ; preds = %40
  %45 = tail call i32 @BKE_screen_visible_layers(ptr noundef nonnull %14, ptr noundef %18) #17
  %46 = getelementptr inbounds %struct.DagSceneLayer, ptr %38, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !320
  %48 = or i32 %47, %45
  store i32 %48, ptr %46, align 8, !tbaa !320
  br label %49

49:                                               ; preds = %36, %27, %44, %11, %16
  %50 = load ptr, ptr %12, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %11, !llvm.loop !338

52:                                               ; preds = %2
  %53 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %54 = tail call ptr %53(i64 noundef 32, ptr noundef nonnull @.str.53) #17
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %54) #17
  %55 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %56 = load ptr, ptr %55, align 8, !tbaa !339
  %57 = getelementptr inbounds %struct.DagSceneLayer, ptr %54, i64 0, i32 2
  store ptr %56, ptr %57, align 8, !tbaa !318
  %58 = getelementptr inbounds %struct.Scene, ptr %56, i64 0, i32 12
  %59 = load i32, ptr %58, align 8, !tbaa !340
  %60 = getelementptr inbounds %struct.DagSceneLayer, ptr %54, i64 0, i32 3
  store i32 %59, ptr %60, align 8, !tbaa !320
  br label %61

61:                                               ; preds = %49, %6, %52
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @dag_group_on_visible_update(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 2, !tbaa !212
  %4 = and i16 %3, 1024
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %75

6:                                                ; preds = %1
  %7 = or disjoint i16 %3, 1024
  store i16 %7, ptr %2, align 2, !tbaa !212
  %8 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %75, label %11

11:                                               ; preds = %6, %72
  %12 = phi ptr [ %73, %72 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.GroupObject, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !149
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !120
  switch i16 %16, label %39 [
    i16 1, label %17
    i16 2, label %17
    i16 3, label %17
    i16 4, label %17
    i16 5, label %17
    i16 22, label %17
  ]

17:                                               ; preds = %11, %11, %11, %11, %11, %11
  %18 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 103
  %19 = load i8, ptr %18, align 1, !tbaa !246
  %20 = or i8 %19, 2
  store i8 %20, ptr %18, align 1, !tbaa !246
  %21 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 5
  %22 = load i16, ptr %21, align 2, !tbaa !232
  %23 = or i16 %22, 1024
  store i16 %23, ptr %21, align 2, !tbaa !232
  %24 = load ptr, ptr @G, align 8, !tbaa !158
  %25 = or i16 %22, 5120
  store i16 %25, ptr %21, align 2, !tbaa !247
  %26 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4
  %27 = load i16, ptr %26, align 8, !tbaa !94
  %28 = icmp eq i16 %27, 21582
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.Main, ptr %24, i64 0, i32 45, i64 77
  store i8 1, ptr %30, align 1, !tbaa !127
  %31 = getelementptr inbounds %struct.Main, ptr %24, i64 0, i32 45, i64 84
  store i8 1, ptr %31, align 1, !tbaa !127
  %32 = getelementptr inbounds %struct.Main, ptr %24, i64 0, i32 45, i64 76
  store i8 1, ptr %32, align 1, !tbaa !127
  %33 = getelementptr inbounds %struct.Main, ptr %24, i64 0, i32 45, i64 87
  store i8 1, ptr %33, align 1, !tbaa !127
  %34 = getelementptr inbounds %struct.Main, ptr %24, i64 0, i32 45, i64 83
  store i8 1, ptr %34, align 1, !tbaa !127
  br label %35

35:                                               ; preds = %17, %29
  %36 = and i16 %27, 255
  %37 = zext nneg i16 %36 to i64
  %38 = getelementptr inbounds %struct.Main, ptr %24, i64 0, i32 45, i64 %37
  store i8 1, ptr %38, align 1, !tbaa !127
  br label %39

39:                                               ; preds = %11, %35
  %40 = load ptr, ptr %13, align 8, !tbaa !149
  %41 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 13
  %42 = load ptr, ptr %41, align 8, !tbaa !341
  %43 = icmp eq ptr %42, null
  br i1 %43, label %66, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 103
  %46 = load i8, ptr %45, align 1, !tbaa !246
  %47 = or i8 %46, 1
  store i8 %47, ptr %45, align 1, !tbaa !246
  %48 = getelementptr inbounds %struct.ID, ptr %40, i64 0, i32 5
  %49 = load i16, ptr %48, align 2, !tbaa !232
  %50 = or i16 %49, 1024
  store i16 %50, ptr %48, align 2, !tbaa !232
  %51 = load ptr, ptr @G, align 8, !tbaa !158
  %52 = or i16 %49, 5120
  store i16 %52, ptr %48, align 2, !tbaa !247
  %53 = getelementptr inbounds %struct.ID, ptr %40, i64 0, i32 4
  %54 = load i16, ptr %53, align 8, !tbaa !94
  %55 = icmp eq i16 %54, 21582
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.Main, ptr %51, i64 0, i32 45, i64 77
  store i8 1, ptr %57, align 1, !tbaa !127
  %58 = getelementptr inbounds %struct.Main, ptr %51, i64 0, i32 45, i64 84
  store i8 1, ptr %58, align 1, !tbaa !127
  %59 = getelementptr inbounds %struct.Main, ptr %51, i64 0, i32 45, i64 76
  store i8 1, ptr %59, align 1, !tbaa !127
  %60 = getelementptr inbounds %struct.Main, ptr %51, i64 0, i32 45, i64 87
  store i8 1, ptr %60, align 1, !tbaa !127
  %61 = getelementptr inbounds %struct.Main, ptr %51, i64 0, i32 45, i64 83
  store i8 1, ptr %61, align 1, !tbaa !127
  br label %62

62:                                               ; preds = %44, %56
  %63 = and i16 %54, 255
  %64 = zext nneg i16 %63 to i64
  %65 = getelementptr inbounds %struct.Main, ptr %51, i64 0, i32 45, i64 %64
  store i8 1, ptr %65, align 1, !tbaa !127
  br label %66

66:                                               ; preds = %62, %39
  %67 = load ptr, ptr %13, align 8, !tbaa !149
  %68 = getelementptr inbounds %struct.Object, ptr %67, i64 0, i32 112
  %69 = load ptr, ptr %68, align 8, !tbaa !103
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  tail call fastcc void @dag_group_on_visible_update(ptr noundef nonnull %69)
  br label %72

72:                                               ; preds = %66, %71
  %73 = load ptr, ptr %12, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %11, !llvm.loop !342

75:                                               ; preds = %72, %6, %1
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @DAG_id_type_tag(ptr nocapture noundef writeonly %0, i16 noundef signext %1) local_unnamed_addr #9 {
  %3 = icmp eq i16 %1, 21582
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  store i8 1, ptr %5, align 1, !tbaa !127
  %6 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  store i8 1, ptr %6, align 1, !tbaa !127
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  store i8 1, ptr %7, align 1, !tbaa !127
  %8 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  store i8 1, ptr %8, align 1, !tbaa !127
  %9 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  store i8 1, ptr %9, align 1, !tbaa !127
  br label %10

10:                                               ; preds = %4, %2
  %11 = and i16 %1, 255
  %12 = zext nneg i16 %11 to i64
  %13 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %12
  store i8 1, ptr %13, align 1, !tbaa !127
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr @G, align 8, !tbaa !158
  tail call void @DAG_id_tag_update_ex(ptr noundef %3, ptr noundef %0, i16 noundef signext %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DAG_ids_flush_tagged(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %3) #17
  call fastcc void @dag_current_scene_layers(ptr noundef %0, ptr noundef nonnull %2)
  %4 = load ptr, ptr %2, align 8, !tbaa !305
  %5 = icmp eq ptr %4, null
  br i1 %5, label %66, label %6

6:                                                ; preds = %1
  %7 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %3) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %6
  %10 = sext i32 %7 to i64
  br label %11

11:                                               ; preds = %9, %46
  %12 = phi i64 [ %10, %9 ], [ %14, %46 ]
  %13 = phi i8 [ 0, %9 ], [ %47, %46 ]
  %14 = add nsw i64 %12, -1
  %15 = getelementptr inbounds [35 x ptr], ptr %3, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = load ptr, ptr %16, align 8, !tbaa !305
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4
  %21 = load i8, ptr %20, align 8, !tbaa !127
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !127
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %19, %42
  %27 = phi i8 [ %43, %42 ], [ %13, %19 ]
  %28 = phi ptr [ %44, %42 ], [ %17, %19 ]
  %29 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 5
  %30 = load i16, ptr %29, align 2, !tbaa !247
  %31 = and i16 %30, 12288
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %2, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33, %36
  %37 = phi ptr [ %40, %36 ], [ %34, %33 ]
  %38 = getelementptr inbounds %struct.DagSceneLayer, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !318
  call fastcc void @dag_id_flush_update(ptr noundef %0, ptr noundef %39, ptr noundef nonnull %28)
  %40 = load ptr, ptr %37, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %36, !llvm.loop !343

42:                                               ; preds = %36, %33, %26
  %43 = phi i8 [ %27, %26 ], [ 1, %33 ], [ 1, %36 ]
  %44 = load ptr, ptr %28, align 8, !tbaa !344
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %26

46:                                               ; preds = %42, %19, %11
  %47 = phi i8 [ %13, %19 ], [ %13, %11 ], [ %43, %42 ]
  %48 = and i64 %14, 4294967295
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %11, !llvm.loop !345

50:                                               ; preds = %46
  %51 = icmp eq i8 %47, 0
  br label %52

52:                                               ; preds = %50, %6
  %53 = phi i1 [ true, %6 ], [ %51, %50 ]
  %54 = load ptr, ptr %2, align 8
  %55 = icmp eq ptr %54, null
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %52, %57
  %58 = phi ptr [ %63, %57 ], [ %54, %52 ]
  %59 = getelementptr inbounds %struct.DagSceneLayer, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !318
  %61 = getelementptr inbounds %struct.DagSceneLayer, ptr %58, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !320
  call void @DAG_scene_flush_update(ptr noundef %0, ptr noundef %60, i32 noundef %62, i16 noundef signext 0)
  %63 = load ptr, ptr %58, align 8, !tbaa !34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %57, !llvm.loop !346

65:                                               ; preds = %57, %52
  call void @BLI_freelistN(ptr noundef nonnull %2) #17
  br label %66

66:                                               ; preds = %1, %65
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

declare i32 @set_listbasepointers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @dag_id_flush_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.anon, align 8
  %5 = alloca %struct.NodeTreeIterStore, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !94
  %10 = icmp eq i16 %9, 16975
  br i1 %10, label %11, label %46

11:                                               ; preds = %3
  %12 = tail call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef %2, i32 noundef 0) #17
  %13 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %14 = load i8, ptr %13, align 1, !tbaa !246
  %15 = and i8 %14, 7
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %11
  %18 = load i16, ptr %8, align 8, !tbaa !94
  %19 = icmp eq i16 %18, 21582
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  store i8 1, ptr %21, align 1, !tbaa !127
  %22 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  store i8 1, ptr %22, align 1, !tbaa !127
  %23 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  store i8 1, ptr %23, align 1, !tbaa !127
  %24 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  store i8 1, ptr %24, align 1, !tbaa !127
  %25 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  store i8 1, ptr %25, align 1, !tbaa !127
  br label %26

26:                                               ; preds = %17, %20
  %27 = and i16 %18, 255
  %28 = zext nneg i16 %27 to i64
  %29 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %28
  store i8 1, ptr %29, align 1, !tbaa !127
  br label %30

30:                                               ; preds = %26, %11
  %31 = load i8, ptr %13, align 1, !tbaa !246
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !113
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ID, ptr %36, i64 0, i32 6
  %40 = load i32, ptr %39, align 4, !tbaa !347
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load ptr, ptr @EditorsUpdateIDCb, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void %43(ptr noundef %0, ptr noundef nonnull %36) #17
  br label %46

46:                                               ; preds = %45, %42, %30, %38, %34, %3
  %47 = phi ptr [ %2, %38 ], [ %2, %34 ], [ %2, %30 ], [ null, %3 ], [ %2, %42 ], [ %2, %45 ]
  %48 = phi ptr [ %36, %38 ], [ null, %34 ], [ %2, %30 ], [ %2, %3 ], [ null, %42 ], [ null, %45 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %416, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 4
  %52 = load i16, ptr %51, align 8, !tbaa !94
  switch i16 %52, label %404 [
    i16 21827, label %53
    i16 21580, label %53
    i16 21057, label %53
    i16 19283, label %53
    i16 17741, label %53
    i16 16973, label %53
    i16 16716, label %53
    i16 16707, label %53
    i16 17748, label %90
    i16 17739, label %187
    i16 16720, label %237
    i16 16717, label %260
    i16 17229, label %280
    i16 19785, label %343
    i16 21325, label %386
  ]

53:                                               ; preds = %50, %50, %50, %50, %50, %50, %50, %50
  %54 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %89, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %59 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %60 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %61 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %62 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  br label %63

63:                                               ; preds = %57, %86
  %64 = phi ptr [ %55, %57 ], [ %87, %86 ]
  %65 = icmp eq ptr %64, %47
  br i1 %65, label %86, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 19
  %68 = load ptr, ptr %67, align 8, !tbaa !113
  %69 = icmp eq ptr %68, %48
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 103
  %72 = load i8, ptr %71, align 1, !tbaa !246
  %73 = or i8 %72, 2
  store i8 %73, ptr %71, align 1, !tbaa !246
  %74 = getelementptr inbounds %struct.ID, ptr %64, i64 0, i32 5
  %75 = load i16, ptr %74, align 2, !tbaa !247
  %76 = or i16 %75, 8192
  store i16 %76, ptr %74, align 2, !tbaa !247
  %77 = getelementptr inbounds %struct.ID, ptr %64, i64 0, i32 4
  %78 = load i16, ptr %77, align 8, !tbaa !94
  %79 = icmp eq i16 %78, 21582
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i8 1, ptr %58, align 1, !tbaa !127
  store i8 1, ptr %59, align 1, !tbaa !127
  store i8 1, ptr %60, align 1, !tbaa !127
  store i8 1, ptr %61, align 1, !tbaa !127
  store i8 1, ptr %62, align 1, !tbaa !127
  br label %81

81:                                               ; preds = %70, %80
  %82 = and i16 %78, 255
  %83 = zext nneg i16 %82 to i64
  %84 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %83
  store i8 1, ptr %84, align 1, !tbaa !127
  %85 = tail call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef nonnull %64, i32 noundef 0) #17
  br label %86

86:                                               ; preds = %63, %66, %81
  %87 = load ptr, ptr %64, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %63, !llvm.loop !348

89:                                               ; preds = %86, %53
  switch i16 %52, label %404 [
    i16 17748, label %90
    i16 17739, label %187
    i16 16720, label %237
    i16 16717, label %260
    i16 17229, label %280
    i16 19785, label %343
    i16 21325, label %386
  ]

90:                                               ; preds = %50, %89
  %91 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %92 = load ptr, ptr %91, align 8, !tbaa !34
  %93 = icmp eq ptr %92, null
  br i1 %93, label %186, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 1
  %96 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %97 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %98 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %99 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %100 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  %101 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %102 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %103 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %104 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %105 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  br label %106

106:                                              ; preds = %94, %183
  %107 = phi ptr [ %92, %94 ], [ %184, %183 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  store ptr %48, ptr %4, align 8, !tbaa !349
  store i8 0, ptr %95, align 8, !tbaa !351
  call void @modifiers_foreachIDLink(ptr noundef nonnull %107, ptr noundef nonnull @dag_id_flush_update__isDependentTexture, ptr noundef nonnull %4) #17
  %108 = load i8, ptr %95, align 8, !tbaa !351
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.Object, ptr %107, i64 0, i32 103
  %112 = load i8, ptr %111, align 1, !tbaa !246
  %113 = or i8 %112, 2
  store i8 %113, ptr %111, align 1, !tbaa !246
  %114 = getelementptr inbounds %struct.ID, ptr %107, i64 0, i32 5
  %115 = load i16, ptr %114, align 2, !tbaa !247
  %116 = or i16 %115, 8192
  store i16 %116, ptr %114, align 2, !tbaa !247
  %117 = getelementptr inbounds %struct.ID, ptr %107, i64 0, i32 4
  %118 = load i16, ptr %117, align 8, !tbaa !94
  %119 = icmp eq i16 %118, 21582
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store i8 1, ptr %96, align 1, !tbaa !127
  store i8 1, ptr %97, align 1, !tbaa !127
  store i8 1, ptr %98, align 1, !tbaa !127
  store i8 1, ptr %99, align 1, !tbaa !127
  store i8 1, ptr %100, align 1, !tbaa !127
  br label %121

121:                                              ; preds = %110, %120
  %122 = and i16 %118, 255
  %123 = zext nneg i16 %122 to i64
  %124 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %123
  store i8 1, ptr %124, align 1, !tbaa !127
  br label %125

125:                                              ; preds = %121, %106
  %126 = getelementptr inbounds %struct.Object, ptr %107, i64 0, i32 109
  %127 = load ptr, ptr %126, align 8, !tbaa !152
  %128 = icmp eq ptr %127, null
  br i1 %128, label %183, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.Object, ptr %107, i64 0, i32 103
  %131 = getelementptr inbounds %struct.ID, ptr %107, i64 0, i32 5
  %132 = getelementptr inbounds %struct.ID, ptr %107, i64 0, i32 4
  br label %133

133:                                              ; preds = %129, %180
  %134 = phi ptr [ %127, %129 ], [ %181, %180 ]
  %135 = getelementptr inbounds %struct.ParticleSystem, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !179
  %137 = getelementptr inbounds %struct.ParticleSettings, ptr %136, i64 0, i32 121
  %138 = getelementptr inbounds %struct.ParticleSystem, ptr %134, i64 0, i32 31
  %139 = getelementptr inbounds %struct.ParticleSystem, ptr %134, i64 0, i32 31
  br label %140

140:                                              ; preds = %133, %176
  %141 = phi i32 [ 0, %133 ], [ %177, %176 ]
  %142 = phi ptr [ %137, %133 ], [ %178, %176 ]
  %143 = load ptr, ptr %142, align 8, !tbaa !34
  %144 = icmp eq ptr %143, null
  br i1 %144, label %176, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.MTex, ptr %143, i64 0, i32 5
  %147 = load ptr, ptr %146, align 8, !tbaa !352
  %148 = icmp eq ptr %147, %48
  br i1 %148, label %149, label %176

149:                                              ; preds = %145
  %150 = load i8, ptr %130, align 1, !tbaa !246
  %151 = or i8 %150, 2
  store i8 %151, ptr %130, align 1, !tbaa !246
  %152 = load i16, ptr %131, align 2, !tbaa !247
  %153 = or i16 %152, 8192
  store i16 %153, ptr %131, align 2, !tbaa !247
  %154 = load i16, ptr %132, align 8, !tbaa !94
  %155 = icmp eq i16 %154, 21582
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i8 1, ptr %101, align 1, !tbaa !127
  store i8 1, ptr %102, align 1, !tbaa !127
  store i8 1, ptr %103, align 1, !tbaa !127
  store i8 1, ptr %104, align 1, !tbaa !127
  store i8 1, ptr %105, align 1, !tbaa !127
  br label %157

157:                                              ; preds = %149, %156
  %158 = and i16 %154, 255
  %159 = zext nneg i16 %158 to i64
  %160 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %159
  store i8 1, ptr %160, align 1, !tbaa !127
  %161 = getelementptr inbounds %struct.MTex, ptr %143, i64 0, i32 1
  %162 = load i16, ptr %161, align 2, !tbaa !354
  %163 = and i16 %162, 15
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %157
  %166 = load i16, ptr %138, align 4, !tbaa !355
  %167 = or i16 %166, 16
  store i16 %167, ptr %138, align 4, !tbaa !355
  br label %168

168:                                              ; preds = %165, %157
  %169 = and i16 %162, 912
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i16, ptr %139, align 4, !tbaa !355
  %173 = or i16 %172, 64
  store i16 %173, ptr %139, align 4, !tbaa !355
  br label %174

174:                                              ; preds = %171, %168
  %175 = call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef nonnull %107, i32 noundef 0) #17
  br label %176

176:                                              ; preds = %140, %145, %174
  %177 = add nuw nsw i32 %141, 1
  %178 = getelementptr inbounds ptr, ptr %142, i64 1
  %179 = icmp eq i32 %177, 18
  br i1 %179, label %180, label %140, !llvm.loop !356

180:                                              ; preds = %176
  %181 = load ptr, ptr %134, align 8, !tbaa !201
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %133, !llvm.loop !357

183:                                              ; preds = %180, %125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  %184 = load ptr, ptr %107, align 8, !tbaa !34
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %106, !llvm.loop !358

186:                                              ; preds = %183, %90
  switch i16 %52, label %404 [
    i16 17739, label %187
    i16 16720, label %237
    i16 17748, label %260
    i16 16717, label %260
    i16 17229, label %280
    i16 19785, label %343
    i16 21325, label %386
  ]

187:                                              ; preds = %50, %89, %186
  %188 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %189 = load ptr, ptr %188, align 8, !tbaa !34
  %190 = icmp eq ptr %189, null
  br i1 %190, label %236, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %193 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %194 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %195 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %196 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  %197 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %198 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %199 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %200 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %201 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  br label %202

202:                                              ; preds = %191, %233
  %203 = phi ptr [ %189, %191 ], [ %234, %233 ]
  %204 = call ptr @BKE_key_from_object(ptr noundef nonnull %203) #17
  %205 = icmp ne ptr %203, %47
  %206 = icmp eq ptr %204, %48
  %207 = select i1 %205, i1 %206, i1 false
  br i1 %207, label %208, label %233

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.Object, ptr %203, i64 0, i32 53
  %210 = load i16, ptr %209, align 4, !tbaa !359
  %211 = or i16 %210, 3
  store i16 %211, ptr %209, align 4, !tbaa !359
  %212 = getelementptr inbounds %struct.ID, ptr %203, i64 0, i32 5
  %213 = load i16, ptr %212, align 2, !tbaa !247
  %214 = or i16 %213, 4096
  store i16 %214, ptr %212, align 2, !tbaa !247
  %215 = getelementptr inbounds %struct.ID, ptr %203, i64 0, i32 4
  %216 = load i16, ptr %215, align 8, !tbaa !94
  %217 = icmp eq i16 %216, 21582
  br i1 %217, label %218, label %219

218:                                              ; preds = %208
  store i8 1, ptr %192, align 1, !tbaa !127
  store i8 1, ptr %193, align 1, !tbaa !127
  store i8 1, ptr %194, align 1, !tbaa !127
  store i8 1, ptr %195, align 1, !tbaa !127
  store i8 1, ptr %196, align 1, !tbaa !127
  br label %219

219:                                              ; preds = %208, %218
  %220 = and i16 %216, 255
  %221 = zext nneg i16 %220 to i64
  %222 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %221
  store i8 1, ptr %222, align 1, !tbaa !127
  %223 = load i16, ptr %212, align 2, !tbaa !247
  %224 = or i16 %223, 8192
  store i16 %224, ptr %212, align 2, !tbaa !247
  %225 = load i16, ptr %215, align 8, !tbaa !94
  %226 = icmp eq i16 %225, 21582
  br i1 %226, label %227, label %228

227:                                              ; preds = %219
  store i8 1, ptr %197, align 1, !tbaa !127
  store i8 1, ptr %198, align 1, !tbaa !127
  store i8 1, ptr %199, align 1, !tbaa !127
  store i8 1, ptr %200, align 1, !tbaa !127
  store i8 1, ptr %201, align 1, !tbaa !127
  br label %228

228:                                              ; preds = %219, %227
  %229 = and i16 %225, 255
  %230 = zext nneg i16 %229 to i64
  %231 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %230
  store i8 1, ptr %231, align 1, !tbaa !127
  %232 = call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef nonnull %203, i32 noundef 0) #17
  br label %233

233:                                              ; preds = %202, %228
  %234 = load ptr, ptr %203, align 8, !tbaa !34
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %202, !llvm.loop !360

236:                                              ; preds = %233, %187
  switch i16 %52, label %404 [
    i16 16720, label %237
    i16 17748, label %260
    i16 16717, label %260
    i16 17229, label %280
    i16 19785, label %343
    i16 21325, label %386
  ]

237:                                              ; preds = %50, %89, %186, %236
  %238 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %239 = load ptr, ptr %238, align 8, !tbaa !34
  %240 = icmp eq ptr %239, null
  br i1 %240, label %259, label %244

241:                                              ; preds = %256, %244
  %242 = load ptr, ptr %245, align 8, !tbaa !34
  %243 = icmp eq ptr %242, null
  br i1 %243, label %259, label %244, !llvm.loop !361

244:                                              ; preds = %237, %241
  %245 = phi ptr [ %242, %241 ], [ %239, %237 ]
  %246 = getelementptr inbounds %struct.Object, ptr %245, i64 0, i32 109
  %247 = load ptr, ptr %246, align 8, !tbaa !34
  %248 = icmp eq ptr %247, null
  br i1 %248, label %241, label %249

249:                                              ; preds = %244, %256
  %250 = phi ptr [ %257, %256 ], [ %247, %244 ]
  %251 = getelementptr inbounds %struct.ParticleSystem, ptr %250, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !179
  %253 = icmp eq ptr %252, %48
  br i1 %253, label %254, label %256

254:                                              ; preds = %249
  %255 = call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef nonnull %245, i32 noundef 0) #17
  br label %256

256:                                              ; preds = %249, %254
  %257 = load ptr, ptr %250, align 8, !tbaa !34
  %258 = icmp eq ptr %257, null
  br i1 %258, label %241, label %249, !llvm.loop !362

259:                                              ; preds = %241, %237
  switch i16 %52, label %404 [
    i16 17748, label %260
    i16 16717, label %260
    i16 17229, label %280
    i16 19785, label %343
    i16 21325, label %386
  ]

260:                                              ; preds = %50, %89, %186, %186, %236, %236, %259, %259
  %261 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %262 = load ptr, ptr %261, align 8, !tbaa !363
  %263 = icmp eq ptr %262, null
  br i1 %263, label %267, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.Base, ptr %262, i64 0, i32 7
  %266 = load ptr, ptr %265, align 8, !tbaa !98
  br label %267

267:                                              ; preds = %260, %264
  %268 = phi ptr [ %266, %264 ], [ null, %260 ]
  %269 = icmp eq ptr %268, null
  br i1 %269, label %279, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.Object, ptr %268, i64 0, i32 27
  %272 = load i32, ptr %271, align 8, !tbaa !364
  %273 = and i32 %272, 16
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %270
  call void @BKE_texpaint_slots_refresh_object(ptr noundef %1, ptr noundef nonnull %268) #17
  %276 = call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef %1, ptr noundef nonnull %268, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #17
  %277 = getelementptr inbounds %struct.Object, ptr %268, i64 0, i32 120
  %278 = load ptr, ptr %277, align 8, !tbaa !365
  call void @GPU_drawobject_free(ptr noundef %278) #17
  br label %279

279:                                              ; preds = %267, %270, %275
  switch i16 %52, label %404 [
    i16 17229, label %280
    i16 19785, label %343
    i16 21325, label %386
  ]

280:                                              ; preds = %50, %89, %186, %236, %259, %279
  %281 = getelementptr inbounds %struct.MovieClip, ptr %48, i64 0, i32 11
  call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %281) #17
  %282 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %283 = load ptr, ptr %282, align 8, !tbaa !34
  %284 = icmp eq ptr %283, null
  br i1 %284, label %324, label %285

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %287 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %288 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %289 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %290 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  br label %291

291:                                              ; preds = %285, %321
  %292 = phi ptr [ %283, %285 ], [ %322, %321 ]
  %293 = getelementptr inbounds %struct.Object, ptr %292, i64 0, i32 106
  %294 = load ptr, ptr %293, align 8, !tbaa !34
  %295 = icmp eq ptr %294, null
  br i1 %295, label %321, label %296

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.Object, ptr %292, i64 0, i32 103
  %298 = getelementptr inbounds %struct.ID, ptr %292, i64 0, i32 5
  %299 = getelementptr inbounds %struct.ID, ptr %292, i64 0, i32 4
  br label %300

300:                                              ; preds = %296, %318
  %301 = phi ptr [ %294, %296 ], [ %319, %318 ]
  %302 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %301) #17
  %303 = load i16, ptr %302, align 8, !tbaa !203
  %304 = add i16 %303, -29
  %305 = icmp ult i16 %304, -3
  br i1 %305, label %318, label %306

306:                                              ; preds = %300
  %307 = load i8, ptr %297, align 1, !tbaa !246
  %308 = or i8 %307, 1
  store i8 %308, ptr %297, align 1, !tbaa !246
  %309 = load i16, ptr %298, align 2, !tbaa !247
  %310 = or i16 %309, 4096
  store i16 %310, ptr %298, align 2, !tbaa !247
  %311 = load i16, ptr %299, align 8, !tbaa !94
  %312 = icmp eq i16 %311, 21582
  br i1 %312, label %313, label %314

313:                                              ; preds = %306
  store i8 1, ptr %286, align 1, !tbaa !127
  store i8 1, ptr %287, align 1, !tbaa !127
  store i8 1, ptr %288, align 1, !tbaa !127
  store i8 1, ptr %289, align 1, !tbaa !127
  store i8 1, ptr %290, align 1, !tbaa !127
  br label %314

314:                                              ; preds = %306, %313
  %315 = and i16 %311, 255
  %316 = zext nneg i16 %315 to i64
  %317 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %316
  store i8 1, ptr %317, align 1, !tbaa !127
  br i1 %305, label %318, label %321

318:                                              ; preds = %314, %300
  %319 = load ptr, ptr %301, align 8, !tbaa !34
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %300, !llvm.loop !366

321:                                              ; preds = %318, %314, %291
  %322 = load ptr, ptr %292, align 8, !tbaa !34
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %291, !llvm.loop !367

324:                                              ; preds = %321, %280
  %325 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 18
  %326 = load ptr, ptr %325, align 8, !tbaa !249
  %327 = icmp eq ptr %326, null
  br i1 %327, label %342, label %328

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.bNodeTree, ptr %326, i64 0, i32 7
  %330 = load ptr, ptr %329, align 8, !tbaa !34
  %331 = icmp eq ptr %330, null
  br i1 %331, label %342, label %332

332:                                              ; preds = %328, %339
  %333 = phi ptr [ %340, %339 ], [ %330, %328 ]
  %334 = getelementptr inbounds %struct.bNode, ptr %333, i64 0, i32 20
  %335 = load ptr, ptr %334, align 8, !tbaa !252
  %336 = icmp eq ptr %335, %48
  br i1 %336, label %337, label %339

337:                                              ; preds = %332
  %338 = load ptr, ptr %325, align 8, !tbaa !249
  call void @nodeUpdate(ptr noundef %338, ptr noundef nonnull %333) #17
  br label %339

339:                                              ; preds = %332, %337
  %340 = load ptr, ptr %333, align 8, !tbaa !34
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %332, !llvm.loop !368

342:                                              ; preds = %339, %328, %324
  switch i16 %52, label %404 [
    i16 19785, label %343
    i16 21325, label %386
  ]

343:                                              ; preds = %50, %89, %186, %236, %259, %279, %342
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %5, ptr noundef %0) #17
  %344 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %345 = icmp eq i8 %344, 1
  br i1 %345, label %346, label %384

346:                                              ; preds = %343
  %347 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %348 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %349 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %350 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %351 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  br label %352

352:                                              ; preds = %346, %381
  %353 = load ptr, ptr %6, align 8, !tbaa !34
  %354 = icmp eq ptr %353, null
  br i1 %354, label %381, label %355

355:                                              ; preds = %352
  %356 = getelementptr inbounds %struct.bNodeTree, ptr %353, i64 0, i32 9
  %357 = load i32, ptr %356, align 8, !tbaa !369
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %381

359:                                              ; preds = %355
  %360 = getelementptr inbounds %struct.bNodeTree, ptr %353, i64 0, i32 7
  br label %361

361:                                              ; preds = %365, %359
  %362 = phi ptr [ %360, %359 ], [ %363, %365 ]
  %363 = load ptr, ptr %362, align 8, !tbaa !34
  %364 = icmp eq ptr %363, null
  br i1 %364, label %381, label %365

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.bNode, ptr %363, i64 0, i32 20
  %367 = load ptr, ptr %366, align 8, !tbaa !252
  %368 = icmp eq ptr %367, %48
  br i1 %368, label %369, label %361, !llvm.loop !372

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.ID, ptr %353, i64 0, i32 5
  %371 = load i16, ptr %370, align 2, !tbaa !247
  %372 = or i16 %371, 4096
  store i16 %372, ptr %370, align 2, !tbaa !247
  %373 = getelementptr inbounds %struct.ID, ptr %353, i64 0, i32 4
  %374 = load i16, ptr %373, align 8, !tbaa !94
  %375 = icmp eq i16 %374, 21582
  br i1 %375, label %376, label %377

376:                                              ; preds = %369
  store i8 1, ptr %347, align 1, !tbaa !127
  store i8 1, ptr %348, align 1, !tbaa !127
  store i8 1, ptr %349, align 1, !tbaa !127
  store i8 1, ptr %350, align 1, !tbaa !127
  store i8 1, ptr %351, align 1, !tbaa !127
  br label %377

377:                                              ; preds = %369, %376
  %378 = and i16 %374, 255
  %379 = zext nneg i16 %378 to i64
  %380 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %379
  store i8 1, ptr %380, align 1, !tbaa !127
  br label %381

381:                                              ; preds = %361, %377, %355, %352
  %382 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %383 = icmp eq i8 %382, 1
  br i1 %383, label %352, label %384, !llvm.loop !373

384:                                              ; preds = %381, %343
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #17
  %385 = icmp eq i16 %52, 21325
  br i1 %385, label %386, label %404

386:                                              ; preds = %50, %89, %186, %236, %259, %279, %342, %384
  %387 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 18
  %388 = load ptr, ptr %387, align 8, !tbaa !249
  %389 = icmp eq ptr %388, null
  br i1 %389, label %404, label %390

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.bNodeTree, ptr %388, i64 0, i32 7
  %392 = load ptr, ptr %391, align 8, !tbaa !34
  %393 = icmp eq ptr %392, null
  br i1 %393, label %404, label %394

394:                                              ; preds = %390, %401
  %395 = phi ptr [ %402, %401 ], [ %392, %390 ]
  %396 = getelementptr inbounds %struct.bNode, ptr %395, i64 0, i32 20
  %397 = load ptr, ptr %396, align 8, !tbaa !252
  %398 = icmp eq ptr %397, %48
  br i1 %398, label %399, label %401

399:                                              ; preds = %394
  %400 = load ptr, ptr %387, align 8, !tbaa !249
  call void @nodeUpdate(ptr noundef %400, ptr noundef nonnull %395) #17
  br label %401

401:                                              ; preds = %394, %399
  %402 = load ptr, ptr %395, align 8, !tbaa !34
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %394, !llvm.loop !374

404:                                              ; preds = %401, %390, %50, %89, %186, %236, %259, %279, %342, %386, %384
  %405 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 2
  %406 = load ptr, ptr %405, align 8, !tbaa !209
  %407 = icmp eq ptr %406, %48
  br i1 %407, label %408, label %412

408:                                              ; preds = %404
  %409 = call ptr @BKE_object_movieclip_get(ptr noundef %1, ptr noundef nonnull %406, i8 noundef zeroext 1) #17
  %410 = icmp eq ptr %409, null
  br i1 %410, label %412, label %411

411:                                              ; preds = %408
  call fastcc void @dag_id_flush_update(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %409)
  br label %412

412:                                              ; preds = %408, %411, %404
  %413 = load ptr, ptr @EditorsUpdateIDCb, align 8, !tbaa !34
  %414 = icmp eq ptr %413, null
  br i1 %414, label %416, label %415

415:                                              ; preds = %412
  call void %413(ptr noundef %0, ptr noundef nonnull %48) #17
  br label %416

416:                                              ; preds = %415, %412, %46
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DAG_ids_check_recalc(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %4) #17
  %5 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %4) #17
  %6 = sext i32 %5 to i64
  br label %7

7:                                                ; preds = %25, %3
  %8 = phi i64 [ %10, %25 ], [ %6, %3 ]
  %9 = phi i8 [ %26, %25 ], [ 0, %3 ]
  %10 = add nsw i64 %8, -1
  %11 = icmp eq i64 %8, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds [35 x ptr], ptr %4, i64 0, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = load ptr, ptr %14, align 8, !tbaa !305
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 4
  %19 = load i8, ptr %18, align 8, !tbaa !127
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !127
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %12
  br label %25

25:                                               ; preds = %17, %24
  %26 = phi i8 [ %9, %24 ], [ 1, %17 ]
  %27 = phi i1 [ true, %24 ], [ false, %17 ]
  br i1 %27, label %7, label %28

28:                                               ; preds = %25, %7
  %29 = phi i8 [ %26, %25 ], [ %9, %7 ]
  %30 = load ptr, ptr @EditorsUpdateSceneCb, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = or i8 %29, %2
  %34 = icmp ne i8 %33, 0
  %35 = zext i1 %34 to i32
  call void %30(ptr noundef %0, ptr noundef %1, i32 noundef %35) #17
  br label %36

36:                                               ; preds = %28, %32
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DAG_ids_clear_recalc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [35 x ptr], align 16
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %2) #17
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 79
  %5 = load i8, ptr %4, align 1, !tbaa !127
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call fastcc void @dag_current_scene_layers(ptr noundef %0, ptr noundef nonnull %3)
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %7, %42
  %11 = phi ptr [ %44, %42 ], [ %8, %7 ]
  %12 = phi i8 [ %43, %42 ], [ 0, %7 ]
  %13 = getelementptr inbounds %struct.DagSceneLayer, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !318
  %15 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 31
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp ne ptr %17, null
  %19 = icmp eq i8 %12, 0
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %42

21:                                               ; preds = %10, %35
  %22 = phi ptr [ %38, %35 ], [ %17, %10 ]
  %23 = phi i8 [ %36, %35 ], [ %12, %10 ]
  %24 = getelementptr inbounds %struct.DagNode, ptr %22, i64 0, i32 1
  %25 = load i16, ptr %24, align 4, !tbaa !95
  %26 = icmp eq i16 %25, 16975
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.DagNode, ptr %22, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !92
  %30 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 103
  %31 = load i8, ptr %30, align 1, !tbaa !246
  %32 = and i8 %31, 7
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, i8 %23, i8 1
  br i1 %33, label %35, label %42

35:                                               ; preds = %27, %21
  %36 = phi i8 [ %34, %27 ], [ %23, %21 ]
  %37 = getelementptr inbounds %struct.DagNode, ptr %22, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp ne ptr %38, null
  %40 = icmp eq i8 %36, 0
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %21, label %42, !llvm.loop !375

42:                                               ; preds = %35, %27, %10
  %43 = phi i8 [ %12, %10 ], [ %36, %35 ], [ %34, %27 ]
  %44 = load ptr, ptr %11, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %10, !llvm.loop !376

46:                                               ; preds = %42
  %47 = icmp eq i8 %43, 0
  br label %48

48:                                               ; preds = %46, %7
  %49 = phi i1 [ true, %7 ], [ %47, %46 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  br label %50

50:                                               ; preds = %48, %1
  %51 = phi i1 [ %49, %48 ], [ true, %1 ]
  %52 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %2) #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %94, label %54

54:                                               ; preds = %50
  %55 = sext i32 %52 to i64
  br label %56

56:                                               ; preds = %54, %91
  %57 = phi i64 [ %55, %54 ], [ %58, %91 ]
  %58 = add nsw i64 %57, -1
  %59 = getelementptr inbounds [35 x ptr], ptr %2, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !34
  %61 = load ptr, ptr %60, align 8, !tbaa !305
  %62 = icmp eq ptr %61, null
  br i1 %62, label %91, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.ID, ptr %61, i64 0, i32 4
  %65 = load i8, ptr %64, align 8, !tbaa !127
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !127
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %63, %88
  %71 = phi ptr [ %89, %88 ], [ %61, %63 ]
  %72 = getelementptr inbounds %struct.ID, ptr %71, i64 0, i32 5
  %73 = load i16, ptr %72, align 2, !tbaa !247
  %74 = and i16 %73, 12288
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = and i16 %73, -12289
  store i16 %77, ptr %72, align 2, !tbaa !247
  br label %78

78:                                               ; preds = %76, %70
  %79 = call ptr @ntreeFromID(ptr noundef nonnull %71) #17
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.ID, ptr %79, i64 0, i32 5
  %83 = load i16, ptr %82, align 2, !tbaa !377
  %84 = and i16 %83, 12288
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = and i16 %83, -12289
  store i16 %87, ptr %82, align 2, !tbaa !377
  br label %88

88:                                               ; preds = %78, %81, %86
  %89 = load ptr, ptr %71, align 8, !tbaa !344
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %70

91:                                               ; preds = %88, %63, %56
  %92 = and i64 %58, 4294967295
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %56, !llvm.loop !378

94:                                               ; preds = %91, %50
  %95 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %95, i8 0, i64 256, i1 false)
  br i1 %51, label %97, label %96

96:                                               ; preds = %94
  store i8 1, ptr %4, align 1, !tbaa !127
  br label %97

97:                                               ; preds = %96, %94
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @DAG_id_type_tagged(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #10 {
  %3 = and i16 %1, 255
  %4 = zext nneg i16 %3 to i64
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !127
  %7 = zext i8 %6 to i32
  ret i32 %7
}

declare ptr @ntreeFromID(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nofree nounwind uwtable
define dso_local void @DAG_id_tag_update_ex(ptr nocapture noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %174, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !240
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %11 = sext i16 %2 to i32
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @__func__.DAG_id_tag_update_ex, ptr noundef nonnull %10, i32 noundef %11)
  br label %13

13:                                               ; preds = %9, %5
  %14 = icmp eq i16 %2, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %13
  %16 = zext i16 %2 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %21 = load i16, ptr %20, align 2, !tbaa !247
  %22 = or i16 %21, 4096
  store i16 %22, ptr %20, align 2, !tbaa !247
  %23 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !94
  %25 = icmp eq i16 %24, 21582
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  store i8 1, ptr %27, align 1, !tbaa !127
  %28 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  store i8 1, ptr %28, align 1, !tbaa !127
  %29 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  store i8 1, ptr %29, align 1, !tbaa !127
  %30 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  store i8 1, ptr %30, align 1, !tbaa !127
  %31 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  store i8 1, ptr %31, align 1, !tbaa !127
  br label %32

32:                                               ; preds = %19, %26
  %33 = and i16 %24, 255
  %34 = zext nneg i16 %33 to i64
  %35 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %34
  store i8 1, ptr %35, align 1, !tbaa !127
  br label %36

36:                                               ; preds = %32, %15
  %37 = and i32 %16, 250
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %65, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %41 = load i16, ptr %40, align 2, !tbaa !247
  %42 = or i16 %41, 8192
  store i16 %42, ptr %40, align 2, !tbaa !247
  %43 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %44 = load i16, ptr %43, align 8, !tbaa !94
  %45 = icmp eq i16 %44, 21582
  br i1 %45, label %53, label %60

46:                                               ; preds = %13
  %47 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %48 = load i16, ptr %47, align 2, !tbaa !247
  %49 = or i16 %48, 4096
  store i16 %49, ptr %47, align 2, !tbaa !247
  %50 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %51 = load i16, ptr %50, align 8, !tbaa !94
  %52 = icmp eq i16 %51, 21582
  br i1 %52, label %53, label %60

53:                                               ; preds = %46, %39
  %54 = phi i16 [ %44, %39 ], [ %51, %46 ]
  %55 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  store i8 1, ptr %55, align 1, !tbaa !127
  %56 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  store i8 1, ptr %56, align 1, !tbaa !127
  %57 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  store i8 1, ptr %57, align 1, !tbaa !127
  %58 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  store i8 1, ptr %58, align 1, !tbaa !127
  %59 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  store i8 1, ptr %59, align 1, !tbaa !127
  br label %60

60:                                               ; preds = %53, %46, %39
  %61 = phi i16 [ %44, %39 ], [ %51, %46 ], [ %54, %53 ]
  %62 = and i16 %61, 255
  %63 = zext nneg i16 %62 to i64
  %64 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %63
  store i8 1, ptr %64, align 1, !tbaa !127
  br label %65

65:                                               ; preds = %60, %36
  br i1 %14, label %174, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %68 = load i16, ptr %67, align 8, !tbaa !94
  switch i16 %68, label %174 [
    i16 16975, label %69
    i16 16720, label %75
    i16 18006, label %137
  ]

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 103
  %71 = load i8, ptr %70, align 1, !tbaa !246
  %72 = trunc i16 %2 to i8
  %73 = and i8 %72, 7
  %74 = or i8 %71, %73
  store i8 %74, ptr %70, align 1, !tbaa !246
  br label %174

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %174, label %79

79:                                               ; preds = %75
  %80 = trunc i16 %2 to i8
  %81 = and i8 %80, 7
  %82 = and i16 %2, 248
  %83 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %84 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %85 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %86 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %87 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  %88 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 77
  %89 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 84
  %90 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 76
  %91 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 87
  %92 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 83
  br label %96

93:                                               ; preds = %134, %96
  %94 = load ptr, ptr %97, align 8, !tbaa !34
  %95 = icmp eq ptr %94, null
  br i1 %95, label %174, label %96, !llvm.loop !379

96:                                               ; preds = %79, %93
  %97 = phi ptr [ %77, %79 ], [ %94, %93 ]
  %98 = getelementptr inbounds %struct.Object, ptr %97, i64 0, i32 109
  %99 = load ptr, ptr %98, align 8, !tbaa !34
  %100 = icmp eq ptr %99, null
  br i1 %100, label %93, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.Object, ptr %97, i64 0, i32 103
  %103 = getelementptr inbounds %struct.ID, ptr %97, i64 0, i32 5
  %104 = getelementptr inbounds %struct.ID, ptr %97, i64 0, i32 4
  br label %105

105:                                              ; preds = %101, %134
  %106 = phi ptr [ %99, %101 ], [ %135, %134 ]
  %107 = getelementptr inbounds %struct.ParticleSystem, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !179
  %109 = icmp eq ptr %108, %1
  br i1 %109, label %110, label %134

110:                                              ; preds = %105
  %111 = load i8, ptr %102, align 1, !tbaa !246
  %112 = or i8 %111, %81
  store i8 %112, ptr %102, align 1, !tbaa !246
  %113 = getelementptr inbounds %struct.ParticleSystem, ptr %106, i64 0, i32 31
  %114 = load i16, ptr %113, align 4, !tbaa !355
  %115 = or i16 %114, %82
  store i16 %115, ptr %113, align 4, !tbaa !355
  %116 = load i16, ptr %103, align 2, !tbaa !247
  %117 = or i16 %116, 4096
  store i16 %117, ptr %103, align 2, !tbaa !247
  %118 = load i16, ptr %104, align 8, !tbaa !94
  %119 = icmp eq i16 %118, 21582
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store i8 1, ptr %83, align 1, !tbaa !127
  store i8 1, ptr %84, align 1, !tbaa !127
  store i8 1, ptr %85, align 1, !tbaa !127
  store i8 1, ptr %86, align 1, !tbaa !127
  store i8 1, ptr %87, align 1, !tbaa !127
  br label %121

121:                                              ; preds = %110, %120
  %122 = and i16 %118, 255
  %123 = zext nneg i16 %122 to i64
  %124 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %123
  store i8 1, ptr %124, align 1, !tbaa !127
  %125 = load i16, ptr %103, align 2, !tbaa !247
  %126 = or i16 %125, 8192
  store i16 %126, ptr %103, align 2, !tbaa !247
  %127 = load i16, ptr %104, align 8, !tbaa !94
  %128 = icmp eq i16 %127, 21582
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  store i8 1, ptr %88, align 1, !tbaa !127
  store i8 1, ptr %89, align 1, !tbaa !127
  store i8 1, ptr %90, align 1, !tbaa !127
  store i8 1, ptr %91, align 1, !tbaa !127
  store i8 1, ptr %92, align 1, !tbaa !127
  br label %130

130:                                              ; preds = %121, %129
  %131 = and i16 %127, 255
  %132 = zext nneg i16 %131 to i64
  %133 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %132
  store i8 1, ptr %133, align 1, !tbaa !127
  br label %134

134:                                              ; preds = %105, %130
  %135 = load ptr, ptr %106, align 8, !tbaa !34
  %136 = icmp eq ptr %135, null
  br i1 %136, label %93, label %105, !llvm.loop !380

137:                                              ; preds = %66
  %138 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %139 = load ptr, ptr %138, align 8, !tbaa !34
  %140 = icmp eq ptr %139, null
  br i1 %140, label %174, label %141

141:                                              ; preds = %137
  %142 = trunc i16 %2 to i8
  %143 = and i8 %142, 7
  br label %144

144:                                              ; preds = %141, %171
  %145 = phi ptr [ %139, %141 ], [ %172, %171 ]
  %146 = getelementptr inbounds %struct.Object, ptr %145, i64 0, i32 3
  %147 = load i16, ptr %146, align 8, !tbaa !120
  %148 = icmp eq i16 %147, 4
  br i1 %148, label %149, label %171

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.Object, ptr %145, i64 0, i32 19
  %151 = load ptr, ptr %150, align 8, !tbaa !113
  %152 = getelementptr inbounds %struct.Curve, ptr %151, i64 0, i32 55
  %153 = load ptr, ptr %152, align 8, !tbaa !307
  %154 = icmp eq ptr %153, %1
  br i1 %154, label %167, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.Curve, ptr %151, i64 0, i32 56
  %157 = load ptr, ptr %156, align 8, !tbaa !381
  %158 = icmp eq ptr %157, %1
  br i1 %158, label %167, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.Curve, ptr %151, i64 0, i32 57
  %161 = load ptr, ptr %160, align 8, !tbaa !382
  %162 = icmp eq ptr %161, %1
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.Curve, ptr %151, i64 0, i32 58
  %165 = load ptr, ptr %164, align 8, !tbaa !383
  %166 = icmp eq ptr %165, %1
  br i1 %166, label %167, label %171

167:                                              ; preds = %163, %159, %155, %149
  %168 = getelementptr inbounds %struct.Object, ptr %145, i64 0, i32 103
  %169 = load i8, ptr %168, align 1, !tbaa !246
  %170 = or i8 %169, %143
  store i8 %170, ptr %168, align 1, !tbaa !246
  br label %171

171:                                              ; preds = %163, %167, %144
  %172 = load ptr, ptr %145, align 8, !tbaa !34
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %144, !llvm.loop !384

174:                                              ; preds = %171, %93, %137, %75, %69, %66, %3, %65
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DAG_pose_sort(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 40, ptr noundef nonnull @.str.7) #17
  %8 = getelementptr inbounds %struct.DagForest, ptr %7, i64 0, i32 5
  store i8 0, ptr %8, align 4, !tbaa !55
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.DagNode, ptr %10, i64 0, i32 5
  store ptr null, ptr %13, align 8, !tbaa !92
  store i32 0, ptr %10, align 8, !tbaa !93
  %14 = load i8, ptr %8, align 4, !tbaa !55
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i16, ptr inttoptr (i64 32 to ptr), align 32, !tbaa !94
  %18 = getelementptr inbounds %struct.DagNode, ptr %10, i64 0, i32 1
  store i16 %17, ptr %18, align 4, !tbaa !95
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.DagForest, ptr %7, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !96
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  br i1 %22, label %28, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %23, align 8, !tbaa !97
  %26 = getelementptr inbounds %struct.DagNode, ptr %25, i64 0, i32 18
  store ptr %10, ptr %26, align 8, !tbaa !89
  store ptr %10, ptr %23, align 8, !tbaa !97
  %27 = add nsw i32 %21, 1
  br label %29

28:                                               ; preds = %19
  store ptr %10, ptr %23, align 8, !tbaa !97
  store ptr %10, ptr %7, align 8, !tbaa !81
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ 1, %28 ], [ %27, %24 ]
  store i32 %30, ptr %20, align 8, !tbaa !96
  %31 = getelementptr inbounds %struct.DagForest, ptr %7, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %35, ptr %31, align 8, !tbaa !91
  br label %36

36:                                               ; preds = %34, %29
  %37 = load ptr, ptr %31, align 8, !tbaa !91
  tail call void @BLI_ghash_insert(ptr noundef %37, ptr noundef null, ptr noundef nonnull %10) #17
  br label %38

38:                                               ; preds = %1, %36
  %39 = load ptr, ptr %5, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %476, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.DagForest, ptr %7, i64 0, i32 1
  %43 = getelementptr inbounds %struct.DagForest, ptr %7, i64 0, i32 2
  %44 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  %45 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  %46 = getelementptr inbounds %struct.DagForest, ptr %7, i64 0, i32 2
  %47 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  %48 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  %49 = getelementptr inbounds %struct.DagForest, ptr %7, i64 0, i32 2
  %50 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  %51 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  %52 = getelementptr inbounds %struct.DagForest, ptr %7, i64 0, i32 2
  %53 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  %54 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  %55 = getelementptr inbounds %struct.DagNode, ptr %10, i64 0, i32 16
  br label %56

56:                                               ; preds = %41, %473
  %57 = phi ptr [ %39, %41 ], [ %474, %473 ]
  %58 = load ptr, ptr %42, align 8, !tbaa !91
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %58, ptr noundef nonnull %57) #17
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi ptr [ %61, %60 ], [ null, %56 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %93

65:                                               ; preds = %62
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %67 = call ptr %66(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %68 = icmp eq ptr %67, null
  br i1 %68, label %93, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.DagNode, ptr %67, i64 0, i32 5
  store ptr %57, ptr %70, align 8, !tbaa !92
  store i32 0, ptr %67, align 8, !tbaa !93
  %71 = load i8, ptr %8, align 4, !tbaa !55
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 4
  %75 = load i16, ptr %74, align 8, !tbaa !94
  %76 = getelementptr inbounds %struct.DagNode, ptr %67, i64 0, i32 1
  store i16 %75, ptr %76, align 4, !tbaa !95
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, ptr %43, align 8, !tbaa !96
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %44, align 8, !tbaa !97
  %82 = getelementptr inbounds %struct.DagNode, ptr %81, i64 0, i32 18
  store ptr %67, ptr %82, align 8, !tbaa !89
  store ptr %67, ptr %44, align 8, !tbaa !97
  %83 = add nsw i32 %78, 1
  br label %85

84:                                               ; preds = %77
  store ptr %67, ptr %45, align 8, !tbaa !97
  store ptr %67, ptr %7, align 8, !tbaa !81
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i32 [ 1, %84 ], [ %83, %80 ]
  store i32 %86, ptr %43, align 8, !tbaa !96
  %87 = load ptr, ptr %42, align 8, !tbaa !91
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %90, ptr %42, align 8, !tbaa !91
  br label %91

91:                                               ; preds = %89, %85
  %92 = load ptr, ptr %42, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %92, ptr noundef nonnull %57, ptr noundef nonnull %67) #17
  br label %93

93:                                               ; preds = %91, %65, %62
  %94 = phi ptr [ %63, %62 ], [ %67, %65 ], [ %67, %91 ]
  %95 = getelementptr inbounds %struct.bPoseChannel, ptr %57, i64 0, i32 13
  %96 = load ptr, ptr %95, align 8, !tbaa !385
  %97 = icmp eq ptr %96, null
  br i1 %97, label %183, label %98

98:                                               ; preds = %93
  %99 = load ptr, ptr %42, align 8, !tbaa !91
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %99, ptr noundef nonnull %96) #17
  br label %103

103:                                              ; preds = %101, %98
  %104 = phi ptr [ %102, %101 ], [ null, %98 ]
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %134

106:                                              ; preds = %103
  %107 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %108 = call ptr %107(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %109 = icmp eq ptr %108, null
  br i1 %109, label %134, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.DagNode, ptr %108, i64 0, i32 5
  store ptr %96, ptr %111, align 8, !tbaa !92
  store i32 0, ptr %108, align 8, !tbaa !93
  %112 = load i8, ptr %8, align 4, !tbaa !55
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.ID, ptr %96, i64 0, i32 4
  %116 = load i16, ptr %115, align 8, !tbaa !94
  %117 = getelementptr inbounds %struct.DagNode, ptr %108, i64 0, i32 1
  store i16 %116, ptr %117, align 4, !tbaa !95
  br label %118

118:                                              ; preds = %114, %110
  %119 = load i32, ptr %46, align 8, !tbaa !96
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %47, align 8, !tbaa !97
  %123 = getelementptr inbounds %struct.DagNode, ptr %122, i64 0, i32 18
  store ptr %108, ptr %123, align 8, !tbaa !89
  store ptr %108, ptr %47, align 8, !tbaa !97
  %124 = add nsw i32 %119, 1
  br label %126

125:                                              ; preds = %118
  store ptr %108, ptr %48, align 8, !tbaa !97
  store ptr %108, ptr %7, align 8, !tbaa !81
  br label %126

126:                                              ; preds = %125, %121
  %127 = phi i32 [ 1, %125 ], [ %124, %121 ]
  store i32 %127, ptr %46, align 8, !tbaa !96
  %128 = load ptr, ptr %42, align 8, !tbaa !91
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %131, ptr %42, align 8, !tbaa !91
  br label %132

132:                                              ; preds = %130, %126
  %133 = load ptr, ptr %42, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %133, ptr noundef nonnull %96, ptr noundef nonnull %108) #17
  br label %134

134:                                              ; preds = %132, %106, %103
  %135 = phi ptr [ %104, %103 ], [ %108, %106 ], [ %108, %132 ]
  %136 = getelementptr inbounds %struct.DagNode, ptr %135, i64 0, i32 16
  %137 = load ptr, ptr %136, align 8, !tbaa !82
  %138 = getelementptr inbounds %struct.DagNode, ptr %94, i64 0, i32 17
  %139 = load ptr, ptr %138, align 8, !tbaa !34
  %140 = icmp eq ptr %139, null
  br i1 %140, label %153, label %141

141:                                              ; preds = %134, %149
  %142 = phi ptr [ %151, %149 ], [ %139, %134 ]
  %143 = load ptr, ptr %142, align 8, !tbaa !105
  %144 = icmp eq ptr %143, %135
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.DagAdjList, ptr %142, i64 0, i32 2
  %147 = load i32, ptr %146, align 4, !tbaa !114
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %146, align 4, !tbaa !114
  br label %161

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.DagAdjList, ptr %142, i64 0, i32 5
  %151 = load ptr, ptr %150, align 8, !tbaa !34
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %141, !llvm.loop !115

153:                                              ; preds = %149, %134
  %154 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %155 = call ptr %154(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %135, ptr %155, align 8, !tbaa !105
  %156 = getelementptr inbounds %struct.DagAdjList, ptr %155, i64 0, i32 1
  store i16 0, ptr %156, align 8, !tbaa !106
  %157 = getelementptr inbounds %struct.DagAdjList, ptr %155, i64 0, i32 2
  store i32 1, ptr %157, align 4, !tbaa !114
  %158 = load ptr, ptr %138, align 8, !tbaa !87
  %159 = getelementptr inbounds %struct.DagAdjList, ptr %155, i64 0, i32 5
  store ptr %158, ptr %159, align 8, !tbaa !84
  %160 = getelementptr inbounds %struct.DagAdjList, ptr %155, i64 0, i32 4
  store ptr @.str.18, ptr %160, align 8, !tbaa !116
  store ptr %155, ptr %138, align 8, !tbaa !87
  br label %161

161:                                              ; preds = %153, %145
  %162 = icmp eq ptr %137, null
  br i1 %162, label %175, label %163

163:                                              ; preds = %161, %171
  %164 = phi ptr [ %173, %171 ], [ %137, %161 ]
  %165 = load ptr, ptr %164, align 8, !tbaa !105
  %166 = icmp eq ptr %165, %94
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.DagAdjList, ptr %164, i64 0, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !114
  %170 = add nsw i32 %169, 1
  store i32 %170, ptr %168, align 4, !tbaa !114
  br label %183

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.DagAdjList, ptr %164, i64 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !84
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %163, !llvm.loop !117

175:                                              ; preds = %171, %161
  %176 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %177 = call ptr %176(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %94, ptr %177, align 8, !tbaa !105
  %178 = getelementptr inbounds %struct.DagAdjList, ptr %177, i64 0, i32 1
  store i16 0, ptr %178, align 8, !tbaa !106
  %179 = getelementptr inbounds %struct.DagAdjList, ptr %177, i64 0, i32 2
  store i32 1, ptr %179, align 4, !tbaa !114
  %180 = load ptr, ptr %136, align 8, !tbaa !82
  %181 = getelementptr inbounds %struct.DagAdjList, ptr %177, i64 0, i32 5
  store ptr %180, ptr %181, align 8, !tbaa !84
  %182 = getelementptr inbounds %struct.DagAdjList, ptr %177, i64 0, i32 4
  store ptr @.str.18, ptr %182, align 8, !tbaa !116
  store ptr %177, ptr %136, align 8, !tbaa !82
  br label %183

183:                                              ; preds = %175, %167, %93
  %184 = getelementptr inbounds %struct.bPoseChannel, ptr %57, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !34
  %186 = icmp eq ptr %185, null
  br i1 %186, label %425, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.DagNode, ptr %94, i64 0, i32 17
  br label %189

189:                                              ; preds = %187, %422
  %190 = phi ptr [ %185, %187 ], [ %423, %422 ]
  %191 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %190) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %192 = icmp eq ptr %191, null
  br i1 %192, label %422, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %191, i64 0, i32 8
  %195 = load ptr, ptr %194, align 8, !tbaa !123
  %196 = icmp eq ptr %195, null
  br i1 %196, label %422, label %197

197:                                              ; preds = %193
  %198 = call i32 %195(ptr noundef nonnull %190, ptr noundef nonnull %3) #17
  %199 = load ptr, ptr %3, align 8, !tbaa !34
  %200 = icmp eq ptr %199, null
  br i1 %200, label %417, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.bConstraint, ptr %190, i64 0, i32 3
  %203 = getelementptr inbounds %struct.bConstraint, ptr %190, i64 0, i32 2
  br label %204

204:                                              ; preds = %201, %414
  %205 = phi ptr [ %199, %201 ], [ %415, %414 ]
  %206 = getelementptr inbounds %struct.bConstraintTarget, ptr %205, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !125
  %208 = icmp eq ptr %207, %0
  br i1 %208, label %209, label %414

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.bConstraintTarget, ptr %205, i64 0, i32 3
  %211 = load i8, ptr %210, align 8, !tbaa !127
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %414, label %213

213:                                              ; preds = %209
  %214 = load ptr, ptr %4, align 8, !tbaa !121
  %215 = call ptr @BKE_pose_channel_find_name(ptr noundef %214, ptr noundef nonnull %210) #17
  %216 = icmp eq ptr %215, null
  br i1 %216, label %414, label %217

217:                                              ; preds = %213
  %218 = load ptr, ptr %42, align 8, !tbaa !91
  %219 = icmp eq ptr %218, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %217
  %221 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %218, ptr noundef nonnull %215) #17
  br label %222

222:                                              ; preds = %220, %217
  %223 = phi ptr [ %221, %220 ], [ null, %217 ]
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %253

225:                                              ; preds = %222
  %226 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %227 = call ptr %226(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %228 = icmp eq ptr %227, null
  br i1 %228, label %253, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.DagNode, ptr %227, i64 0, i32 5
  store ptr %215, ptr %230, align 8, !tbaa !92
  store i32 0, ptr %227, align 8, !tbaa !93
  %231 = load i8, ptr %8, align 4, !tbaa !55
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.ID, ptr %215, i64 0, i32 4
  %235 = load i16, ptr %234, align 8, !tbaa !94
  %236 = getelementptr inbounds %struct.DagNode, ptr %227, i64 0, i32 1
  store i16 %235, ptr %236, align 4, !tbaa !95
  br label %237

237:                                              ; preds = %233, %229
  %238 = load i32, ptr %49, align 8, !tbaa !96
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %237
  %241 = load ptr, ptr %50, align 8, !tbaa !97
  %242 = getelementptr inbounds %struct.DagNode, ptr %241, i64 0, i32 18
  store ptr %227, ptr %242, align 8, !tbaa !89
  store ptr %227, ptr %50, align 8, !tbaa !97
  %243 = add nsw i32 %238, 1
  br label %245

244:                                              ; preds = %237
  store ptr %227, ptr %51, align 8, !tbaa !97
  store ptr %227, ptr %7, align 8, !tbaa !81
  br label %245

245:                                              ; preds = %244, %240
  %246 = phi i32 [ 1, %244 ], [ %243, %240 ]
  store i32 %246, ptr %49, align 8, !tbaa !96
  %247 = load ptr, ptr %42, align 8, !tbaa !91
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %250, ptr %42, align 8, !tbaa !91
  br label %251

251:                                              ; preds = %249, %245
  %252 = load ptr, ptr %42, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %252, ptr noundef nonnull %215, ptr noundef nonnull %227) #17
  br label %253

253:                                              ; preds = %251, %225, %222
  %254 = phi ptr [ %223, %222 ], [ %227, %225 ], [ %227, %251 ]
  %255 = getelementptr inbounds %struct.DagNode, ptr %254, i64 0, i32 16
  %256 = load ptr, ptr %255, align 8, !tbaa !82
  %257 = load ptr, ptr %188, align 8, !tbaa !34
  %258 = icmp eq ptr %257, null
  br i1 %258, label %271, label %259

259:                                              ; preds = %253, %267
  %260 = phi ptr [ %269, %267 ], [ %257, %253 ]
  %261 = load ptr, ptr %260, align 8, !tbaa !105
  %262 = icmp eq ptr %261, %254
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.DagAdjList, ptr %260, i64 0, i32 2
  %265 = load i32, ptr %264, align 4, !tbaa !114
  %266 = add nsw i32 %265, 1
  store i32 %266, ptr %264, align 4, !tbaa !114
  br label %279

267:                                              ; preds = %259
  %268 = getelementptr inbounds %struct.DagAdjList, ptr %260, i64 0, i32 5
  %269 = load ptr, ptr %268, align 8, !tbaa !34
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %259, !llvm.loop !115

271:                                              ; preds = %267, %253
  %272 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %273 = call ptr %272(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %254, ptr %273, align 8, !tbaa !105
  %274 = getelementptr inbounds %struct.DagAdjList, ptr %273, i64 0, i32 1
  store i16 0, ptr %274, align 8, !tbaa !106
  %275 = getelementptr inbounds %struct.DagAdjList, ptr %273, i64 0, i32 2
  store i32 1, ptr %275, align 4, !tbaa !114
  %276 = load ptr, ptr %188, align 8, !tbaa !87
  %277 = getelementptr inbounds %struct.DagAdjList, ptr %273, i64 0, i32 5
  store ptr %276, ptr %277, align 8, !tbaa !84
  %278 = getelementptr inbounds %struct.DagAdjList, ptr %273, i64 0, i32 4
  store ptr @.str.19, ptr %278, align 8, !tbaa !116
  store ptr %273, ptr %188, align 8, !tbaa !87
  br label %279

279:                                              ; preds = %271, %263
  %280 = icmp eq ptr %256, null
  br i1 %280, label %293, label %281

281:                                              ; preds = %279, %289
  %282 = phi ptr [ %291, %289 ], [ %256, %279 ]
  %283 = load ptr, ptr %282, align 8, !tbaa !105
  %284 = icmp eq ptr %283, %94
  br i1 %284, label %285, label %289

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.DagAdjList, ptr %282, i64 0, i32 2
  %287 = load i32, ptr %286, align 4, !tbaa !114
  %288 = add nsw i32 %287, 1
  store i32 %288, ptr %286, align 4, !tbaa !114
  br label %301

289:                                              ; preds = %281
  %290 = getelementptr inbounds %struct.DagAdjList, ptr %282, i64 0, i32 5
  %291 = load ptr, ptr %290, align 8, !tbaa !84
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %281, !llvm.loop !117

293:                                              ; preds = %289, %279
  %294 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %295 = call ptr %294(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %94, ptr %295, align 8, !tbaa !105
  %296 = getelementptr inbounds %struct.DagAdjList, ptr %295, i64 0, i32 1
  store i16 0, ptr %296, align 8, !tbaa !106
  %297 = getelementptr inbounds %struct.DagAdjList, ptr %295, i64 0, i32 2
  store i32 1, ptr %297, align 4, !tbaa !114
  %298 = load ptr, ptr %255, align 8, !tbaa !82
  %299 = getelementptr inbounds %struct.DagAdjList, ptr %295, i64 0, i32 5
  store ptr %298, ptr %299, align 8, !tbaa !84
  %300 = getelementptr inbounds %struct.DagAdjList, ptr %295, i64 0, i32 4
  store ptr @.str.19, ptr %300, align 8, !tbaa !116
  store ptr %295, ptr %255, align 8, !tbaa !82
  br label %301

301:                                              ; preds = %285, %293
  %302 = load i16, ptr %202, align 8, !tbaa !128
  %303 = icmp eq i16 %302, 3
  br i1 %303, label %304, label %414

304:                                              ; preds = %301
  %305 = load ptr, ptr %203, align 8, !tbaa !204
  %306 = getelementptr inbounds %struct.bKinematicConstraint, ptr %305, i64 0, i32 2
  %307 = load i16, ptr %306, align 2, !tbaa !387
  %308 = and i16 %307, 1
  %309 = icmp eq i16 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %304
  %311 = load ptr, ptr %95, align 8, !tbaa !385
  br label %312

312:                                              ; preds = %304, %310
  %313 = phi ptr [ %311, %310 ], [ %57, %304 ]
  %314 = icmp eq ptr %313, null
  br i1 %314, label %414, label %315

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.bKinematicConstraint, ptr %305, i64 0, i32 3
  br label %317

317:                                              ; preds = %315, %410
  %318 = phi i32 [ 0, %315 ], [ %404, %410 ]
  %319 = phi ptr [ %313, %315 ], [ %412, %410 ]
  %320 = load ptr, ptr %42, align 8, !tbaa !91
  %321 = icmp eq ptr %320, null
  br i1 %321, label %324, label %322

322:                                              ; preds = %317
  %323 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %320, ptr noundef nonnull %319) #17
  br label %324

324:                                              ; preds = %322, %317
  %325 = phi ptr [ %323, %322 ], [ null, %317 ]
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %355

327:                                              ; preds = %324
  %328 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %329 = call ptr %328(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %330 = icmp eq ptr %329, null
  br i1 %330, label %355, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.DagNode, ptr %329, i64 0, i32 5
  store ptr %319, ptr %332, align 8, !tbaa !92
  store i32 0, ptr %329, align 8, !tbaa !93
  %333 = load i8, ptr %8, align 4, !tbaa !55
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %339, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.ID, ptr %319, i64 0, i32 4
  %337 = load i16, ptr %336, align 8, !tbaa !94
  %338 = getelementptr inbounds %struct.DagNode, ptr %329, i64 0, i32 1
  store i16 %337, ptr %338, align 4, !tbaa !95
  br label %339

339:                                              ; preds = %335, %331
  %340 = load i32, ptr %52, align 8, !tbaa !96
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %346, label %342

342:                                              ; preds = %339
  %343 = load ptr, ptr %53, align 8, !tbaa !97
  %344 = getelementptr inbounds %struct.DagNode, ptr %343, i64 0, i32 18
  store ptr %329, ptr %344, align 8, !tbaa !89
  store ptr %329, ptr %53, align 8, !tbaa !97
  %345 = add nsw i32 %340, 1
  br label %347

346:                                              ; preds = %339
  store ptr %329, ptr %54, align 8, !tbaa !97
  store ptr %329, ptr %7, align 8, !tbaa !81
  br label %347

347:                                              ; preds = %346, %342
  %348 = phi i32 [ 1, %346 ], [ %345, %342 ]
  store i32 %348, ptr %52, align 8, !tbaa !96
  %349 = load ptr, ptr %42, align 8, !tbaa !91
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %353

351:                                              ; preds = %347
  %352 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %352, ptr %42, align 8, !tbaa !91
  br label %353

353:                                              ; preds = %351, %347
  %354 = load ptr, ptr %42, align 8, !tbaa !91
  call void @BLI_ghash_insert(ptr noundef %354, ptr noundef nonnull %319, ptr noundef nonnull %329) #17
  br label %355

355:                                              ; preds = %353, %327, %324
  %356 = phi ptr [ %325, %324 ], [ %329, %327 ], [ %329, %353 ]
  %357 = load ptr, ptr %255, align 8, !tbaa !82
  %358 = getelementptr inbounds %struct.DagNode, ptr %356, i64 0, i32 17
  %359 = load ptr, ptr %358, align 8, !tbaa !34
  %360 = icmp eq ptr %359, null
  br i1 %360, label %373, label %361

361:                                              ; preds = %355, %369
  %362 = phi ptr [ %371, %369 ], [ %359, %355 ]
  %363 = load ptr, ptr %362, align 8, !tbaa !105
  %364 = icmp eq ptr %363, %254
  br i1 %364, label %365, label %369

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.DagAdjList, ptr %362, i64 0, i32 2
  %367 = load i32, ptr %366, align 4, !tbaa !114
  %368 = add nsw i32 %367, 1
  store i32 %368, ptr %366, align 4, !tbaa !114
  br label %381

369:                                              ; preds = %361
  %370 = getelementptr inbounds %struct.DagAdjList, ptr %362, i64 0, i32 5
  %371 = load ptr, ptr %370, align 8, !tbaa !34
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %361, !llvm.loop !115

373:                                              ; preds = %369, %355
  %374 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %375 = call ptr %374(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %254, ptr %375, align 8, !tbaa !105
  %376 = getelementptr inbounds %struct.DagAdjList, ptr %375, i64 0, i32 1
  store i16 0, ptr %376, align 8, !tbaa !106
  %377 = getelementptr inbounds %struct.DagAdjList, ptr %375, i64 0, i32 2
  store i32 1, ptr %377, align 4, !tbaa !114
  %378 = load ptr, ptr %358, align 8, !tbaa !87
  %379 = getelementptr inbounds %struct.DagAdjList, ptr %375, i64 0, i32 5
  store ptr %378, ptr %379, align 8, !tbaa !84
  %380 = getelementptr inbounds %struct.DagAdjList, ptr %375, i64 0, i32 4
  store ptr @.str.20, ptr %380, align 8, !tbaa !116
  store ptr %375, ptr %358, align 8, !tbaa !87
  br label %381

381:                                              ; preds = %373, %365
  %382 = icmp eq ptr %357, null
  br i1 %382, label %395, label %383

383:                                              ; preds = %381, %391
  %384 = phi ptr [ %393, %391 ], [ %357, %381 ]
  %385 = load ptr, ptr %384, align 8, !tbaa !105
  %386 = icmp eq ptr %385, %356
  br i1 %386, label %387, label %391

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.DagAdjList, ptr %384, i64 0, i32 2
  %389 = load i32, ptr %388, align 4, !tbaa !114
  %390 = add nsw i32 %389, 1
  store i32 %390, ptr %388, align 4, !tbaa !114
  br label %403

391:                                              ; preds = %383
  %392 = getelementptr inbounds %struct.DagAdjList, ptr %384, i64 0, i32 5
  %393 = load ptr, ptr %392, align 8, !tbaa !84
  %394 = icmp eq ptr %393, null
  br i1 %394, label %395, label %383, !llvm.loop !117

395:                                              ; preds = %391, %381
  %396 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %397 = call ptr %396(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %356, ptr %397, align 8, !tbaa !105
  %398 = getelementptr inbounds %struct.DagAdjList, ptr %397, i64 0, i32 1
  store i16 0, ptr %398, align 8, !tbaa !106
  %399 = getelementptr inbounds %struct.DagAdjList, ptr %397, i64 0, i32 2
  store i32 1, ptr %399, align 4, !tbaa !114
  %400 = load ptr, ptr %255, align 8, !tbaa !82
  %401 = getelementptr inbounds %struct.DagAdjList, ptr %397, i64 0, i32 5
  store ptr %400, ptr %401, align 8, !tbaa !84
  %402 = getelementptr inbounds %struct.DagAdjList, ptr %397, i64 0, i32 4
  store ptr @.str.20, ptr %402, align 8, !tbaa !116
  store ptr %397, ptr %255, align 8, !tbaa !82
  br label %403

403:                                              ; preds = %387, %395
  %404 = add nuw nsw i32 %318, 1
  %405 = load i16, ptr %316, align 4, !tbaa !389
  %406 = sext i16 %405 to i32
  %407 = icmp eq i32 %404, %406
  %408 = icmp ugt i32 %318, 254
  %409 = or i1 %408, %407
  br i1 %409, label %414, label %410

410:                                              ; preds = %403
  %411 = getelementptr inbounds %struct.bPoseChannel, ptr %319, i64 0, i32 13
  %412 = load ptr, ptr %411, align 8, !tbaa !385
  %413 = icmp eq ptr %412, null
  br i1 %413, label %414, label %317, !llvm.loop !390

414:                                              ; preds = %410, %403, %312, %213, %301, %204, %209
  %415 = load ptr, ptr %205, align 8, !tbaa !34
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %204, !llvm.loop !391

417:                                              ; preds = %414, %197
  %418 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %191, i64 0, i32 9
  %419 = load ptr, ptr %418, align 8, !tbaa !131
  %420 = icmp eq ptr %419, null
  br i1 %420, label %422, label %421

421:                                              ; preds = %417
  call void %419(ptr noundef nonnull %190, ptr noundef nonnull %3, i8 noundef zeroext 1) #17
  br label %422

422:                                              ; preds = %417, %421, %193, %189
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  %423 = load ptr, ptr %190, align 8, !tbaa !34
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %189, !llvm.loop !392

425:                                              ; preds = %422, %183
  br i1 %97, label %426, label %473

426:                                              ; preds = %425
  %427 = load ptr, ptr %55, align 8, !tbaa !82
  %428 = getelementptr inbounds %struct.DagNode, ptr %94, i64 0, i32 17
  %429 = load ptr, ptr %428, align 8, !tbaa !34
  %430 = icmp eq ptr %429, null
  br i1 %430, label %443, label %431

431:                                              ; preds = %426, %439
  %432 = phi ptr [ %441, %439 ], [ %429, %426 ]
  %433 = load ptr, ptr %432, align 8, !tbaa !105
  %434 = icmp eq ptr %433, %10
  br i1 %434, label %435, label %439

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.DagAdjList, ptr %432, i64 0, i32 2
  %437 = load i32, ptr %436, align 4, !tbaa !114
  %438 = add nsw i32 %437, 1
  store i32 %438, ptr %436, align 4, !tbaa !114
  br label %451

439:                                              ; preds = %431
  %440 = getelementptr inbounds %struct.DagAdjList, ptr %432, i64 0, i32 5
  %441 = load ptr, ptr %440, align 8, !tbaa !34
  %442 = icmp eq ptr %441, null
  br i1 %442, label %443, label %431, !llvm.loop !115

443:                                              ; preds = %439, %426
  %444 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %445 = call ptr %444(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %10, ptr %445, align 8, !tbaa !105
  %446 = getelementptr inbounds %struct.DagAdjList, ptr %445, i64 0, i32 1
  store i16 0, ptr %446, align 8, !tbaa !106
  %447 = getelementptr inbounds %struct.DagAdjList, ptr %445, i64 0, i32 2
  store i32 1, ptr %447, align 4, !tbaa !114
  %448 = load ptr, ptr %428, align 8, !tbaa !87
  %449 = getelementptr inbounds %struct.DagAdjList, ptr %445, i64 0, i32 5
  store ptr %448, ptr %449, align 8, !tbaa !84
  %450 = getelementptr inbounds %struct.DagAdjList, ptr %445, i64 0, i32 4
  store ptr @.str.21, ptr %450, align 8, !tbaa !116
  store ptr %445, ptr %428, align 8, !tbaa !87
  br label %451

451:                                              ; preds = %443, %435
  %452 = icmp eq ptr %427, null
  br i1 %452, label %465, label %453

453:                                              ; preds = %451, %461
  %454 = phi ptr [ %463, %461 ], [ %427, %451 ]
  %455 = load ptr, ptr %454, align 8, !tbaa !105
  %456 = icmp eq ptr %455, %94
  br i1 %456, label %457, label %461

457:                                              ; preds = %453
  %458 = getelementptr inbounds %struct.DagAdjList, ptr %454, i64 0, i32 2
  %459 = load i32, ptr %458, align 4, !tbaa !114
  %460 = add nsw i32 %459, 1
  store i32 %460, ptr %458, align 4, !tbaa !114
  br label %473

461:                                              ; preds = %453
  %462 = getelementptr inbounds %struct.DagAdjList, ptr %454, i64 0, i32 5
  %463 = load ptr, ptr %462, align 8, !tbaa !84
  %464 = icmp eq ptr %463, null
  br i1 %464, label %465, label %453, !llvm.loop !117

465:                                              ; preds = %461, %451
  %466 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %467 = call ptr %466(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %94, ptr %467, align 8, !tbaa !105
  %468 = getelementptr inbounds %struct.DagAdjList, ptr %467, i64 0, i32 1
  store i16 0, ptr %468, align 8, !tbaa !106
  %469 = getelementptr inbounds %struct.DagAdjList, ptr %467, i64 0, i32 2
  store i32 1, ptr %469, align 4, !tbaa !114
  %470 = load ptr, ptr %55, align 8, !tbaa !82
  %471 = getelementptr inbounds %struct.DagAdjList, ptr %467, i64 0, i32 5
  store ptr %470, ptr %471, align 8, !tbaa !84
  %472 = getelementptr inbounds %struct.DagAdjList, ptr %467, i64 0, i32 4
  store ptr @.str.21, ptr %472, align 8, !tbaa !116
  store ptr %467, ptr %55, align 8, !tbaa !82
  br label %473

473:                                              ; preds = %465, %457, %425
  %474 = load ptr, ptr %57, align 8, !tbaa !34
  %475 = icmp eq ptr %474, null
  br i1 %475, label %476, label %56, !llvm.loop !393

476:                                              ; preds = %473, %38
  call fastcc void @dag_check_cycle(ptr noundef %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %477 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %478 = call ptr %477(i64 noundef 32, ptr noundef nonnull @.str) #17
  %479 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %480 = call ptr %479(i64 noundef 32, ptr noundef nonnull @.str) #17
  %481 = getelementptr inbounds %struct.DagNodeQueue, ptr %478, i64 0, i32 4
  store ptr %480, ptr %481, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %478, i8 0, i64 24, i1 false)
  %482 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %483 = call ptr %482(i64 noundef 16, ptr noundef nonnull @.str.1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %483, i8 0, i64 16, i1 false)
  %484 = load ptr, ptr %481, align 8, !tbaa !38
  %485 = getelementptr inbounds %struct.DagNodeQueue, ptr %484, i64 0, i32 1
  store ptr %483, ptr %485, align 8, !tbaa !41
  store ptr %483, ptr %484, align 8, !tbaa !42
  br label %486

486:                                              ; preds = %486, %476
  %487 = phi i32 [ %494, %486 ], [ 1, %476 ]
  %488 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %489 = call ptr %488(i64 noundef 16, ptr noundef nonnull @.str.2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %489, i8 0, i64 16, i1 false)
  %490 = load ptr, ptr %481, align 8, !tbaa !38
  %491 = getelementptr inbounds %struct.DagNodeQueue, ptr %490, i64 0, i32 1
  %492 = load ptr, ptr %491, align 8, !tbaa !41
  %493 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %492, i64 0, i32 1
  store ptr %489, ptr %493, align 8, !tbaa !43
  store ptr %489, ptr %491, align 8, !tbaa !41
  %494 = add nuw nsw i32 %487, 1
  %495 = icmp eq i32 %494, 50
  br i1 %495, label %496, label %486, !llvm.loop !45

496:                                              ; preds = %486
  %497 = getelementptr inbounds %struct.DagNodeQueue, ptr %490, i64 0, i32 2
  store i32 50, ptr %497, align 8, !tbaa !48
  %498 = load ptr, ptr %7, align 8, !tbaa !34
  %499 = icmp eq ptr %498, null
  br i1 %499, label %505, label %500

500:                                              ; preds = %496, %500
  %501 = phi ptr [ %503, %500 ], [ %498, %496 ]
  store i32 0, ptr %501, align 8, !tbaa !93
  %502 = getelementptr inbounds %struct.DagNode, ptr %501, i64 0, i32 18
  %503 = load ptr, ptr %502, align 8, !tbaa !34
  %504 = icmp eq ptr %503, null
  br i1 %504, label %505, label %500, !llvm.loop !394

505:                                              ; preds = %500, %496
  store i32 1, ptr %10, align 8, !tbaa !93
  %506 = load ptr, ptr %490, align 8, !tbaa !42
  %507 = icmp eq ptr %506, null
  br i1 %507, label %516, label %508

508:                                              ; preds = %505
  %509 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %506, i64 0, i32 1
  %510 = load ptr, ptr %509, align 8, !tbaa !43
  store ptr %510, ptr %490, align 8, !tbaa !42
  %511 = icmp eq ptr %489, %506
  br i1 %511, label %512, label %513

512:                                              ; preds = %508
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %490, i8 0, i64 16, i1 false)
  br label %513

513:                                              ; preds = %512, %508
  %514 = load i32, ptr %497, align 8, !tbaa !48
  %515 = add nsw i32 %514, -1
  store i32 %515, ptr %497, align 8, !tbaa !48
  br label %536

516:                                              ; preds = %505
  %517 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %518 = call ptr %517(i64 noundef 16, ptr noundef nonnull @.str.4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %518, i8 0, i64 16, i1 false)
  %519 = load ptr, ptr %481, align 8, !tbaa !38
  %520 = getelementptr inbounds %struct.DagNodeQueue, ptr %519, i64 0, i32 1
  store ptr %518, ptr %520, align 8, !tbaa !41
  store ptr %518, ptr %519, align 8, !tbaa !42
  br label %521

521:                                              ; preds = %521, %516
  %522 = phi i32 [ 1, %516 ], [ %529, %521 ]
  %523 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %524 = call ptr %523(i64 noundef 16, ptr noundef nonnull @.str.5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %524, i8 0, i64 16, i1 false)
  %525 = load ptr, ptr %481, align 8, !tbaa !38
  %526 = getelementptr inbounds %struct.DagNodeQueue, ptr %525, i64 0, i32 1
  %527 = load ptr, ptr %526, align 8, !tbaa !41
  %528 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %527, i64 0, i32 1
  store ptr %524, ptr %528, align 8, !tbaa !43
  store ptr %524, ptr %526, align 8, !tbaa !41
  %529 = add nuw nsw i32 %522, 1
  %530 = icmp eq i32 %529, 50
  br i1 %530, label %531, label %521, !llvm.loop !54

531:                                              ; preds = %521
  %532 = getelementptr inbounds %struct.DagNodeQueue, ptr %525, i64 0, i32 2
  store i32 50, ptr %532, align 8, !tbaa !48
  %533 = load ptr, ptr %525, align 8, !tbaa !42
  %534 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %533, i64 0, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !43
  store ptr %535, ptr %525, align 8, !tbaa !42
  br label %536

536:                                              ; preds = %531, %513
  %537 = phi ptr [ %506, %513 ], [ %533, %531 ]
  %538 = load ptr, ptr %478, align 8, !tbaa !42
  %539 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %537, i64 0, i32 1
  store ptr %538, ptr %539, align 8, !tbaa !43
  store ptr %10, ptr %537, align 8, !tbaa !49
  store ptr %537, ptr %478, align 8, !tbaa !42
  %540 = getelementptr inbounds %struct.DagNodeQueue, ptr %478, i64 0, i32 1
  %541 = load ptr, ptr %540, align 8, !tbaa !41
  %542 = icmp eq ptr %541, null
  br i1 %542, label %543, label %544

543:                                              ; preds = %536
  store ptr %537, ptr %540, align 8, !tbaa !41
  br label %544

544:                                              ; preds = %536, %543
  %545 = getelementptr inbounds %struct.DagNodeQueue, ptr %478, i64 0, i32 2
  %546 = load i32, ptr %545, align 8, !tbaa !48
  %547 = add nsw i32 %546, 1
  store i32 %547, ptr %545, align 8, !tbaa !48
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %659, label %549

549:                                              ; preds = %544, %656
  %550 = load ptr, ptr %478, align 8, !tbaa !42
  %551 = load ptr, ptr %550, align 8, !tbaa !49
  %552 = getelementptr inbounds %struct.DagNode, ptr %551, i64 0, i32 16
  %553 = load ptr, ptr %552, align 8, !tbaa !34
  %554 = icmp eq ptr %553, null
  br i1 %554, label %615, label %555

555:                                              ; preds = %549
  %556 = load ptr, ptr %553, align 8, !tbaa !105
  %557 = load i32, ptr %556, align 8, !tbaa !93
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %568, label %559

559:                                              ; preds = %555, %564
  %560 = phi ptr [ %562, %564 ], [ %553, %555 ]
  %561 = getelementptr inbounds %struct.DagAdjList, ptr %560, i64 0, i32 5
  %562 = load ptr, ptr %561, align 8, !tbaa !34
  %563 = icmp eq ptr %562, null
  br i1 %563, label %615, label %564, !llvm.loop !395

564:                                              ; preds = %559
  %565 = load ptr, ptr %562, align 8, !tbaa !105
  %566 = load i32, ptr %565, align 8, !tbaa !93
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %559, !llvm.loop !395

568:                                              ; preds = %564, %555
  %569 = phi i1 [ %554, %555 ], [ %563, %564 ]
  %570 = phi ptr [ %556, %555 ], [ %565, %564 ]
  store i32 1, ptr %570, align 8, !tbaa !93
  %571 = load ptr, ptr %481, align 8, !tbaa !38
  %572 = load ptr, ptr %571, align 8, !tbaa !42
  %573 = icmp eq ptr %572, null
  br i1 %573, label %585, label %574

574:                                              ; preds = %568
  %575 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %572, i64 0, i32 1
  %576 = load ptr, ptr %575, align 8, !tbaa !43
  store ptr %576, ptr %571, align 8, !tbaa !42
  %577 = getelementptr inbounds %struct.DagNodeQueue, ptr %571, i64 0, i32 1
  %578 = load ptr, ptr %577, align 8, !tbaa !41
  %579 = icmp eq ptr %578, %572
  br i1 %579, label %580, label %581

580:                                              ; preds = %574
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %571, i8 0, i64 16, i1 false)
  br label %581

581:                                              ; preds = %580, %574
  %582 = getelementptr inbounds %struct.DagNodeQueue, ptr %571, i64 0, i32 2
  %583 = load i32, ptr %582, align 8, !tbaa !48
  %584 = add nsw i32 %583, -1
  store i32 %584, ptr %582, align 8, !tbaa !48
  br label %605

585:                                              ; preds = %568
  %586 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %587 = call ptr %586(i64 noundef 16, ptr noundef nonnull @.str.4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %587, i8 0, i64 16, i1 false)
  %588 = load ptr, ptr %481, align 8, !tbaa !38
  %589 = getelementptr inbounds %struct.DagNodeQueue, ptr %588, i64 0, i32 1
  store ptr %587, ptr %589, align 8, !tbaa !41
  store ptr %587, ptr %588, align 8, !tbaa !42
  br label %590

590:                                              ; preds = %590, %585
  %591 = phi i32 [ 1, %585 ], [ %598, %590 ]
  %592 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %593 = call ptr %592(i64 noundef 16, ptr noundef nonnull @.str.5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %593, i8 0, i64 16, i1 false)
  %594 = load ptr, ptr %481, align 8, !tbaa !38
  %595 = getelementptr inbounds %struct.DagNodeQueue, ptr %594, i64 0, i32 1
  %596 = load ptr, ptr %595, align 8, !tbaa !41
  %597 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %596, i64 0, i32 1
  store ptr %593, ptr %597, align 8, !tbaa !43
  store ptr %593, ptr %595, align 8, !tbaa !41
  %598 = add nuw nsw i32 %591, 1
  %599 = icmp eq i32 %598, 50
  br i1 %599, label %600, label %590, !llvm.loop !54

600:                                              ; preds = %590
  %601 = getelementptr inbounds %struct.DagNodeQueue, ptr %594, i64 0, i32 2
  store i32 50, ptr %601, align 8, !tbaa !48
  %602 = load ptr, ptr %594, align 8, !tbaa !42
  %603 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %602, i64 0, i32 1
  %604 = load ptr, ptr %603, align 8, !tbaa !43
  store ptr %604, ptr %594, align 8, !tbaa !42
  br label %605

605:                                              ; preds = %600, %581
  %606 = phi ptr [ %572, %581 ], [ %602, %600 ]
  %607 = load ptr, ptr %478, align 8, !tbaa !42
  %608 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %606, i64 0, i32 1
  store ptr %607, ptr %608, align 8, !tbaa !43
  store ptr %570, ptr %606, align 8, !tbaa !49
  store ptr %606, ptr %478, align 8, !tbaa !42
  %609 = load ptr, ptr %540, align 8, !tbaa !41
  %610 = icmp eq ptr %609, null
  br i1 %610, label %611, label %612

611:                                              ; preds = %605
  store ptr %606, ptr %540, align 8, !tbaa !41
  br label %612

612:                                              ; preds = %605, %611
  %613 = load i32, ptr %545, align 8, !tbaa !48
  %614 = add nsw i32 %613, 1
  store i32 %614, ptr %545, align 8, !tbaa !48
  br label %615

615:                                              ; preds = %559, %549, %612
  %616 = phi i1 [ %569, %612 ], [ %554, %549 ], [ %563, %559 ]
  %617 = icmp ne ptr %551, null
  %618 = and i1 %616, %617
  br i1 %618, label %619, label %656

619:                                              ; preds = %615
  %620 = load ptr, ptr %478, align 8, !tbaa !42
  %621 = icmp eq ptr %620, null
  br i1 %621, label %646, label %622

622:                                              ; preds = %619
  %623 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %620, i64 0, i32 1
  %624 = load ptr, ptr %623, align 8, !tbaa !43
  store ptr %624, ptr %478, align 8, !tbaa !42
  %625 = load ptr, ptr %540, align 8, !tbaa !41
  %626 = icmp eq ptr %625, %620
  br i1 %626, label %627, label %628

627:                                              ; preds = %622
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %478, i8 0, i64 16, i1 false)
  br label %628

628:                                              ; preds = %627, %622
  %629 = load i32, ptr %545, align 8, !tbaa !48
  %630 = add nsw i32 %629, -1
  store i32 %630, ptr %545, align 8, !tbaa !48
  %631 = load ptr, ptr %481, align 8, !tbaa !38
  %632 = getelementptr inbounds %struct.DagNodeQueue, ptr %631, i64 0, i32 1
  %633 = load ptr, ptr %632, align 8, !tbaa !41
  %634 = icmp eq ptr %633, null
  br i1 %634, label %637, label %635

635:                                              ; preds = %628
  %636 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %633, i64 0, i32 1
  store ptr %620, ptr %636, align 8, !tbaa !43
  br label %637

637:                                              ; preds = %635, %628
  store ptr %620, ptr %632, align 8, !tbaa !41
  %638 = load ptr, ptr %631, align 8, !tbaa !42
  %639 = icmp eq ptr %638, null
  br i1 %639, label %640, label %641

640:                                              ; preds = %637
  store ptr %620, ptr %631, align 8, !tbaa !42
  br label %641

641:                                              ; preds = %640, %637
  %642 = load ptr, ptr %620, align 8, !tbaa !49
  %643 = getelementptr inbounds %struct.DagNodeQueue, ptr %631, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %620, i8 0, i64 16, i1 false)
  %644 = load i32, ptr %643, align 8, !tbaa !48
  %645 = add nsw i32 %644, 1
  store i32 %645, ptr %643, align 8, !tbaa !48
  br label %649

646:                                              ; preds = %619
  %647 = load ptr, ptr @stderr, align 8, !tbaa !34
  %648 = call i64 @fwrite(ptr nonnull @.str.6, i64 12, i64 1, ptr %647) #18
  br label %649

649:                                              ; preds = %641, %646
  %650 = phi ptr [ %642, %641 ], [ null, %646 ]
  %651 = getelementptr inbounds %struct.DagNode, ptr %650, i64 0, i32 5
  %652 = load ptr, ptr %651, align 8, !tbaa !92
  %653 = icmp eq ptr %652, null
  br i1 %653, label %659, label %654

654:                                              ; preds = %649
  store i32 2, ptr %650, align 8, !tbaa !93
  call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %652) #17
  %655 = load ptr, ptr %651, align 8, !tbaa !92
  call void @BLI_addhead(ptr noundef nonnull %2, ptr noundef %655) #17
  br label %656

656:                                              ; preds = %654, %615
  %657 = load i32, ptr %545, align 8, !tbaa !48
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %549, !llvm.loop !396

659:                                              ; preds = %656, %649, %544
  %660 = load ptr, ptr %5, align 8, !tbaa !397
  %661 = icmp eq ptr %660, null
  br i1 %661, label %668, label %662

662:                                              ; preds = %659, %662
  %663 = phi ptr [ %666, %662 ], [ %660, %659 ]
  call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %663) #17
  call void @BLI_addhead(ptr noundef nonnull %2, ptr noundef nonnull %663) #17
  %664 = getelementptr inbounds %struct.bPoseChannel, ptr %663, i64 0, i32 4
  %665 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %664)
  %666 = load ptr, ptr %5, align 8, !tbaa !397
  %667 = icmp eq ptr %666, null
  br i1 %667, label %668, label %662, !llvm.loop !398

668:                                              ; preds = %662, %659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !231
  %669 = load ptr, ptr %478, align 8, !tbaa !42
  %670 = icmp eq ptr %669, null
  br i1 %670, label %677, label %671

671:                                              ; preds = %668, %671
  %672 = phi ptr [ %674, %671 ], [ %669, %668 ]
  %673 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %672, i64 0, i32 1
  %674 = load ptr, ptr %673, align 8, !tbaa !43
  %675 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %675(ptr noundef nonnull %672) #17
  %676 = icmp eq ptr %674, null
  br i1 %676, label %677, label %671, !llvm.loop !51

677:                                              ; preds = %671, %668
  %678 = load ptr, ptr %481, align 8, !tbaa !38
  %679 = load ptr, ptr %678, align 8, !tbaa !42
  %680 = icmp eq ptr %679, null
  br i1 %680, label %687, label %681

681:                                              ; preds = %677, %681
  %682 = phi ptr [ %684, %681 ], [ %679, %677 ]
  %683 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %682, i64 0, i32 1
  %684 = load ptr, ptr %683, align 8, !tbaa !43
  %685 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %685(ptr noundef nonnull %682) #17
  %686 = icmp eq ptr %684, null
  br i1 %686, label %687, label %681, !llvm.loop !52

687:                                              ; preds = %681, %677
  %688 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %689 = load ptr, ptr %481, align 8, !tbaa !38
  call void %688(ptr noundef %689) #17
  %690 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %690(ptr noundef nonnull %478) #17
  %691 = load ptr, ptr %7, align 8, !tbaa !81
  %692 = icmp eq ptr %691, null
  br i1 %692, label %719, label %693

693:                                              ; preds = %687, %714
  %694 = phi ptr [ %716, %714 ], [ %691, %687 ]
  %695 = getelementptr inbounds %struct.DagNode, ptr %694, i64 0, i32 16
  %696 = load ptr, ptr %695, align 8, !tbaa !82
  %697 = icmp eq ptr %696, null
  br i1 %697, label %704, label %698

698:                                              ; preds = %693, %698
  %699 = phi ptr [ %701, %698 ], [ %696, %693 ]
  %700 = getelementptr inbounds %struct.DagAdjList, ptr %699, i64 0, i32 5
  %701 = load ptr, ptr %700, align 8, !tbaa !84
  %702 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %702(ptr noundef nonnull %699) #17
  %703 = icmp eq ptr %701, null
  br i1 %703, label %704, label %698, !llvm.loop !86

704:                                              ; preds = %698, %693
  %705 = getelementptr inbounds %struct.DagNode, ptr %694, i64 0, i32 17
  %706 = load ptr, ptr %705, align 8, !tbaa !87
  %707 = icmp eq ptr %706, null
  br i1 %707, label %714, label %708

708:                                              ; preds = %704, %708
  %709 = phi ptr [ %711, %708 ], [ %706, %704 ]
  %710 = getelementptr inbounds %struct.DagAdjList, ptr %709, i64 0, i32 5
  %711 = load ptr, ptr %710, align 8, !tbaa !84
  %712 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %712(ptr noundef nonnull %709) #17
  %713 = icmp eq ptr %711, null
  br i1 %713, label %714, label %708, !llvm.loop !88

714:                                              ; preds = %708, %704
  %715 = getelementptr inbounds %struct.DagNode, ptr %694, i64 0, i32 18
  %716 = load ptr, ptr %715, align 8, !tbaa !89
  %717 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %717(ptr noundef nonnull %694) #17
  %718 = icmp eq ptr %716, null
  br i1 %718, label %719, label %693, !llvm.loop !90

719:                                              ; preds = %714, %687
  %720 = getelementptr inbounds %struct.DagForest, ptr %7, i64 0, i32 1
  %721 = load ptr, ptr %720, align 8, !tbaa !91
  call void @BLI_ghash_free(ptr noundef %721, ptr noundef null, ptr noundef null) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  %722 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %722(ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @dag_check_cycle(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 3
  store i8 1, ptr %2, align 4, !tbaa !399
  %3 = load i1, ptr @dag_print_dependencies, align 4
  br i1 %3, label %4, label %54

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  br label %10

10:                                               ; preds = %7, %49
  %11 = phi ptr [ %5, %7 ], [ %52, %49 ]
  %12 = getelementptr inbounds %struct.DagNode, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load i8, ptr %8, align 4, !tbaa !55
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 4, i64 2
  br label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 4
  br label %22

22:                                               ; preds = %20, %18, %10
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ], [ @.str.58, %10 ]
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull %23)
  %25 = getelementptr inbounds %struct.DagNode, ptr %11, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %22, %41
  %29 = phi ptr [ %47, %41 ], [ %26, %22 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !105
  %31 = getelementptr inbounds %struct.DagNode, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load i8, ptr %9, align 4, !tbaa !55
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 4, i64 2
  br label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 4
  br label %41

41:                                               ; preds = %39, %37, %28
  %42 = phi ptr [ %38, %37 ], [ %40, %39 ], [ @.str.58, %28 ]
  %43 = getelementptr inbounds %struct.DagAdjList, ptr %29, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !116
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, ptr noundef nonnull %42, ptr noundef %44)
  %46 = getelementptr inbounds %struct.DagAdjList, ptr %29, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %28, !llvm.loop !400

49:                                               ; preds = %41, %22
  %50 = tail call i32 @putchar(i32 10)
  %51 = getelementptr inbounds %struct.DagNode, ptr %11, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %10, !llvm.loop !401

54:                                               ; preds = %49, %4, %1
  %55 = load ptr, ptr %0, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %60, %54
  %58 = load ptr, ptr %0, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %71

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %63, %60 ], [ %55, %54 ]
  store i32 0, ptr %61, align 8, !tbaa !93
  %62 = getelementptr inbounds %struct.DagNode, ptr %61, i64 0, i32 18
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %57, label %60, !llvm.loop !402

65:                                               ; preds = %78, %57
  %66 = load ptr, ptr %0, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %82, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %70 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  br label %85

71:                                               ; preds = %57, %78
  %72 = phi ptr [ %80, %78 ], [ %58, %57 ]
  %73 = load i32, ptr %72, align 8, !tbaa !93
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = tail call fastcc i32 @dag_node_recurs_level(ptr noundef nonnull %72, i32 noundef 0)
  %77 = getelementptr inbounds %struct.DagNode, ptr %72, i64 0, i32 7
  store i32 %76, ptr %77, align 8, !tbaa !119
  br label %78

78:                                               ; preds = %71, %75
  %79 = getelementptr inbounds %struct.DagNode, ptr %72, i64 0, i32 18
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  %81 = icmp eq ptr %80, null
  br i1 %81, label %65, label %71, !llvm.loop !403

82:                                               ; preds = %150, %65
  %83 = load ptr, ptr %0, align 8, !tbaa !34
  %84 = icmp eq ptr %83, null
  br i1 %84, label %169, label %154

85:                                               ; preds = %68, %150
  %86 = phi ptr [ %66, %68 ], [ %152, %150 ]
  %87 = getelementptr inbounds %struct.DagNode, ptr %86, i64 0, i32 17
  %88 = load ptr, ptr %87, align 8, !tbaa !34
  %89 = icmp eq ptr %88, null
  br i1 %89, label %150, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.DagNode, ptr %86, i64 0, i32 7
  %92 = getelementptr inbounds %struct.DagNode, ptr %86, i64 0, i32 5
  br label %93

93:                                               ; preds = %90, %146
  %94 = phi ptr [ %88, %90 ], [ %148, %146 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !105
  %96 = getelementptr inbounds %struct.DagNode, ptr %95, i64 0, i32 7
  %97 = load i32, ptr %96, align 8, !tbaa !119
  %98 = load i32, ptr %91, align 8, !tbaa !119
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %146

100:                                              ; preds = %93
  %101 = load ptr, ptr %92, align 8, !tbaa !92
  %102 = icmp eq ptr %101, null
  br i1 %102, label %146, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.DagNode, ptr %95, i64 0, i32 5
  %105 = load ptr, ptr %104, align 8, !tbaa !92
  %106 = icmp eq ptr %105, null
  br i1 %106, label %146, label %107

107:                                              ; preds = %103
  store i8 0, ptr %2, align 4, !tbaa !399
  %108 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.60)
  %109 = load ptr, ptr %94, align 8, !tbaa !105
  %110 = getelementptr inbounds %struct.DagAdjList, ptr %94, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !116
  %112 = load ptr, ptr %0, align 8, !tbaa !34
  %113 = icmp eq ptr %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %107, %114
  %115 = phi ptr [ %117, %114 ], [ %112, %107 ]
  store i32 0, ptr %115, align 8, !tbaa !93
  %116 = getelementptr inbounds %struct.DagNode, ptr %115, i64 0, i32 18
  %117 = load ptr, ptr %116, align 8, !tbaa !34
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %114, !llvm.loop !404

119:                                              ; preds = %114, %107
  %120 = load ptr, ptr %92, align 8, !tbaa !92
  %121 = icmp eq ptr %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = load i8, ptr %69, align 4, !tbaa !55
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.ID, ptr %120, i64 0, i32 4, i64 2
  br label %129

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.bPoseChannel, ptr %120, i64 0, i32 4
  br label %129

129:                                              ; preds = %127, %125, %119
  %130 = phi ptr [ %126, %125 ], [ %128, %127 ], [ @.str.58, %119 ]
  %131 = getelementptr inbounds %struct.DagNode, ptr %109, i64 0, i32 5
  %132 = load ptr, ptr %131, align 8, !tbaa !92
  %133 = icmp eq ptr %132, null
  br i1 %133, label %141, label %134

134:                                              ; preds = %129
  %135 = load i8, ptr %70, align 4, !tbaa !55
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.ID, ptr %132, i64 0, i32 4, i64 2
  br label %141

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.bPoseChannel, ptr %132, i64 0, i32 4
  br label %141

141:                                              ; preds = %129, %137, %139
  %142 = phi ptr [ %138, %137 ], [ %140, %139 ], [ @.str.58, %129 ]
  %143 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef nonnull %130, ptr noundef nonnull %142, ptr noundef %111)
  %144 = tail call fastcc i32 @dag_node_print_dependency_recurs(ptr noundef nonnull %0, ptr noundef %109, ptr noundef nonnull %86), !range !405
  %145 = tail call i32 @putchar(i32 10)
  br label %146

146:                                              ; preds = %93, %141, %103, %100
  %147 = getelementptr inbounds %struct.DagAdjList, ptr %94, i64 0, i32 5
  %148 = load ptr, ptr %147, align 8, !tbaa !34
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %93, !llvm.loop !406

150:                                              ; preds = %146, %85
  %151 = getelementptr inbounds %struct.DagNode, ptr %86, i64 0, i32 18
  %152 = load ptr, ptr %151, align 8, !tbaa !34
  %153 = icmp eq ptr %152, null
  br i1 %153, label %82, label %85, !llvm.loop !407

154:                                              ; preds = %82, %165
  %155 = phi ptr [ %167, %165 ], [ %83, %82 ]
  %156 = getelementptr inbounds %struct.DagNode, ptr %155, i64 0, i32 17
  %157 = load ptr, ptr %156, align 8, !tbaa !87
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %154, %159
  %160 = phi ptr [ %162, %159 ], [ %157, %154 ]
  %161 = getelementptr inbounds %struct.DagAdjList, ptr %160, i64 0, i32 5
  %162 = load ptr, ptr %161, align 8, !tbaa !84
  %163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %163(ptr noundef nonnull %160) #17
  store ptr %162, ptr %156, align 8, !tbaa !87
  %164 = icmp eq ptr %162, null
  br i1 %164, label %165, label %159, !llvm.loop !408

165:                                              ; preds = %159, %154
  %166 = getelementptr inbounds %struct.DagNode, ptr %155, i64 0, i32 18
  %167 = load ptr, ptr %166, align 8, !tbaa !34
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %154, !llvm.loop !409

169:                                              ; preds = %165, %82
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define dso_local void @DAG_threaded_update_begin(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 31
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %11, %3
  %9 = load ptr, ptr %5, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %18

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %16, %11 ], [ %6, %3 ]
  %13 = getelementptr inbounds %struct.DagNode, ptr %12, i64 0, i32 19
  store i32 0, ptr %13, align 8, !tbaa !410
  %14 = getelementptr inbounds %struct.DagNode, ptr %12, i64 0, i32 20
  store i8 0, ptr %14, align 4, !tbaa !411
  %15 = getelementptr inbounds %struct.DagNode, ptr %12, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %8, label %11, !llvm.loop !412

18:                                               ; preds = %8, %35
  %19 = phi ptr [ %37, %35 ], [ %9, %8 ]
  %20 = getelementptr inbounds %struct.DagNode, ptr %19, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %18, %31
  %24 = phi ptr [ %33, %31 ], [ %21, %18 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !105
  %26 = icmp eq ptr %25, %19
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.DagNode, ptr %25, i64 0, i32 19
  %29 = load i32, ptr %28, align 8, !tbaa !410
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !410
  br label %31

31:                                               ; preds = %23, %27
  %32 = getelementptr inbounds %struct.DagAdjList, ptr %24, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %23, !llvm.loop !413

35:                                               ; preds = %31, %18
  %36 = getelementptr inbounds %struct.DagNode, ptr %19, i64 0, i32 18
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %18, !llvm.loop !414

39:                                               ; preds = %35, %8
  tail call void @BLI_spin_lock(ptr noundef nonnull @threaded_update_lock) #17
  %40 = load ptr, ptr %4, align 8, !tbaa !58
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %39, %50
  %44 = phi ptr [ %52, %50 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.DagNode, ptr %44, i64 0, i32 19
  %46 = load i32, ptr %45, align 8, !tbaa !410
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.DagNode, ptr %44, i64 0, i32 20
  store i8 1, ptr %49, align 4, !tbaa !411
  tail call void %1(ptr noundef nonnull %44, ptr noundef %2) #17
  br label %50

50:                                               ; preds = %43, %48
  %51 = getelementptr inbounds %struct.DagNode, ptr %44, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %43, !llvm.loop !415

54:                                               ; preds = %50, %39
  tail call void @BLI_spin_unlock(ptr noundef nonnull @threaded_update_lock) #17
  ret void
}

declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #1

declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @DAG_threaded_update_handle_node_updated(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3, %21
  %8 = phi ptr [ %23, %21 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.DagNode, ptr %9, i64 0, i32 19
  %13 = load i32, ptr %12, align 4, !tbaa !322
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 4, !tbaa !322
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  tail call void @BLI_spin_lock(ptr noundef nonnull @threaded_update_lock) #17
  %17 = getelementptr inbounds %struct.DagNode, ptr %9, i64 0, i32 20
  %18 = load i8, ptr %17, align 4, !tbaa !411
  %19 = icmp eq i8 %18, 0
  store i8 1, ptr %17, align 4, !tbaa !411
  tail call void @BLI_spin_unlock(ptr noundef nonnull @threaded_update_lock) #17
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void %1(ptr noundef %9, ptr noundef %2) #17
  br label %21

21:                                               ; preds = %16, %20, %11, %7
  %22 = getelementptr inbounds %struct.DagAdjList, ptr %8, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !416

25:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DAG_print_dependencies(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  store i1 true, ptr @dag_print_dependencies, align 4
  %4 = icmp eq ptr %2, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !364
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %11)
  tail call void @DAG_pose_sort(ptr noundef nonnull %2)
  br label %16

13:                                               ; preds = %5, %3
  %14 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %14)
  tail call void @DAG_scene_relations_rebuild(ptr noundef %0, ptr noundef %1)
  br label %16

16:                                               ; preds = %13, %10
  store i1 false, ptr @dag_print_dependencies, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @DAG_get_node_object(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 4, !tbaa !95
  %4 = icmp eq i16 %3, 16975
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @DAG_get_node_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 31
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.DagForest, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 4, !tbaa !55
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  br label %16

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 4
  br label %16

16:                                               ; preds = %2, %12, %14
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ], [ @.str.58, %2 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local signext i16 @DAG_get_eval_flags_for_object(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %20, %2
  %4 = phi ptr [ %0, %2 ], [ %22, %20 ]
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.DagForest, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %10, ptr noundef %1) #17
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.DagNode, ptr %15, i64 0, i32 21
  %19 = load i16, ptr %18, align 2, !tbaa !166
  br label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !274
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %3

24:                                               ; preds = %20, %3, %17
  %25 = phi i16 [ %19, %17 ], [ 0, %3 ], [ 0, %20 ]
  ret i16 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @DAG_is_acyclic(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.DagForest, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 4, !tbaa !399
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dag_add_driver_relation(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %287, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %3, 0
  %10 = getelementptr inbounds %struct.DagForest, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds %struct.DagForest, ptr %1, i64 0, i32 5
  %12 = getelementptr inbounds %struct.DagForest, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct.DagNode, ptr %2, i64 0, i32 17
  %16 = getelementptr inbounds %struct.DagNode, ptr %2, i64 0, i32 17
  %17 = getelementptr inbounds %struct.DagNode, ptr %2, i64 0, i32 17
  br label %21

18:                                               ; preds = %40, %32
  %19 = load ptr, ptr %22, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %287, label %21, !llvm.loop !417

21:                                               ; preds = %8, %18
  %22 = phi ptr [ %6, %8 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !418
  br i1 %9, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !294
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) @.str.46) #19
  %31 = icmp ne ptr %30, null
  br label %32

32:                                               ; preds = %25, %29, %21
  %33 = phi i1 [ true, %21 ], [ false, %25 ], [ %31, %29 ]
  %34 = load ptr, ptr %24, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %18, label %36

36:                                               ; preds = %32
  %37 = select i1 %33, i16 32, i16 16
  %38 = select i1 %33, i16 32, i16 16
  %39 = select i1 %33, i16 8, i16 4
  br label %43

40:                                               ; preds = %281, %43
  %41 = load ptr, ptr %44, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %18, label %43, !llvm.loop !419

43:                                               ; preds = %36, %40
  %44 = phi ptr [ %34, %36 ], [ %41, %40 ]
  %45 = getelementptr inbounds %struct.DriverVar, ptr %44, i64 0, i32 4
  %46 = load i16, ptr %45, align 8, !tbaa !420
  %47 = icmp sgt i16 %46, 0
  br i1 %47, label %48, label %40

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.DriverVar, ptr %44, i64 0, i32 3
  br label %50

50:                                               ; preds = %48, %281
  %51 = phi i32 [ %282, %281 ], [ 0, %48 ]
  %52 = phi ptr [ %283, %281 ], [ %49, %48 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !422
  %54 = icmp eq ptr %53, null
  br i1 %54, label %281, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ID, ptr %53, i64 0, i32 4
  %57 = load i16, ptr %56, align 8, !tbaa !94
  %58 = icmp eq i16 %57, 16975
  br i1 %58, label %59, label %281

59:                                               ; preds = %55
  %60 = load ptr, ptr %10, align 8, !tbaa !91
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %60, ptr noundef nonnull %53) #17
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi ptr [ %63, %62 ], [ null, %59 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %94

67:                                               ; preds = %64
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %69 = tail call ptr %68(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %70 = icmp eq ptr %69, null
  br i1 %70, label %94, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.DagNode, ptr %69, i64 0, i32 5
  store ptr %53, ptr %72, align 8, !tbaa !92
  store i32 0, ptr %69, align 8, !tbaa !93
  %73 = load i8, ptr %11, align 4, !tbaa !55
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load i16, ptr %56, align 8, !tbaa !94
  %77 = getelementptr inbounds %struct.DagNode, ptr %69, i64 0, i32 1
  store i16 %76, ptr %77, align 4, !tbaa !95
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, ptr %12, align 8, !tbaa !96
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %13, align 8, !tbaa !97
  %83 = getelementptr inbounds %struct.DagNode, ptr %82, i64 0, i32 18
  store ptr %69, ptr %83, align 8, !tbaa !89
  store ptr %69, ptr %13, align 8, !tbaa !97
  %84 = add nsw i32 %79, 1
  br label %86

85:                                               ; preds = %78
  store ptr %69, ptr %14, align 8, !tbaa !97
  store ptr %69, ptr %1, align 8, !tbaa !81
  br label %86

86:                                               ; preds = %85, %81
  %87 = phi i32 [ 1, %85 ], [ %84, %81 ]
  store i32 %87, ptr %12, align 8, !tbaa !96
  %88 = load ptr, ptr %10, align 8, !tbaa !91
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %91, ptr %10, align 8, !tbaa !91
  br label %92

92:                                               ; preds = %90, %86
  %93 = load ptr, ptr %10, align 8, !tbaa !91
  tail call void @BLI_ghash_insert(ptr noundef %93, ptr noundef nonnull %53, ptr noundef nonnull %69) #17
  br label %94

94:                                               ; preds = %92, %67, %64
  %95 = phi ptr [ %65, %64 ], [ %69, %67 ], [ %69, %92 ]
  %96 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 3
  %97 = load i16, ptr %96, align 8, !tbaa !120
  %98 = icmp eq i16 %97, 25
  br i1 %98, label %99, label %168

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.DriverTarget, ptr %52, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !424
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %101, ptr noundef nonnull dereferenceable(1) @.str.47) #19
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %103, %99
  %107 = getelementptr inbounds %struct.DriverTarget, ptr %52, i64 0, i32 4
  %108 = load i16, ptr %107, align 2, !tbaa !425
  %109 = and i16 %108, 1
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %168, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.DriverTarget, ptr %52, i64 0, i32 2
  %113 = load i8, ptr %112, align 8, !tbaa !127
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %168, label %115

115:                                              ; preds = %111, %103
  %116 = getelementptr inbounds %struct.DagNode, ptr %95, i64 0, i32 16
  %117 = load ptr, ptr %116, align 8, !tbaa !82
  %118 = load ptr, ptr %15, align 8, !tbaa !34
  %119 = icmp eq ptr %118, null
  br i1 %119, label %135, label %120

120:                                              ; preds = %115, %131
  %121 = phi ptr [ %133, %131 ], [ %118, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !105
  %123 = icmp eq ptr %122, %95
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.DagAdjList, ptr %121, i64 0, i32 1
  %126 = load i16, ptr %125, align 8, !tbaa !106
  %127 = or i16 %126, %37
  store i16 %127, ptr %125, align 8, !tbaa !106
  %128 = getelementptr inbounds %struct.DagAdjList, ptr %121, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !114
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr %128, align 4, !tbaa !114
  br label %143

131:                                              ; preds = %120
  %132 = getelementptr inbounds %struct.DagAdjList, ptr %121, i64 0, i32 5
  %133 = load ptr, ptr %132, align 8, !tbaa !34
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %120, !llvm.loop !115

135:                                              ; preds = %131, %115
  %136 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %137 = tail call ptr %136(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %95, ptr %137, align 8, !tbaa !105
  %138 = getelementptr inbounds %struct.DagAdjList, ptr %137, i64 0, i32 1
  store i16 %37, ptr %138, align 8, !tbaa !106
  %139 = getelementptr inbounds %struct.DagAdjList, ptr %137, i64 0, i32 2
  store i32 1, ptr %139, align 4, !tbaa !114
  %140 = load ptr, ptr %15, align 8, !tbaa !87
  %141 = getelementptr inbounds %struct.DagAdjList, ptr %137, i64 0, i32 5
  store ptr %140, ptr %141, align 8, !tbaa !84
  %142 = getelementptr inbounds %struct.DagAdjList, ptr %137, i64 0, i32 4
  store ptr @.str.48, ptr %142, align 8, !tbaa !116
  store ptr %137, ptr %15, align 8, !tbaa !87
  br label %143

143:                                              ; preds = %135, %124
  %144 = icmp eq ptr %117, null
  br i1 %144, label %160, label %145

145:                                              ; preds = %143, %156
  %146 = phi ptr [ %158, %156 ], [ %117, %143 ]
  %147 = load ptr, ptr %146, align 8, !tbaa !105
  %148 = icmp eq ptr %147, %2
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.DagAdjList, ptr %146, i64 0, i32 1
  %151 = load i16, ptr %150, align 8, !tbaa !106
  %152 = or i16 %151, %37
  store i16 %152, ptr %150, align 8, !tbaa !106
  %153 = getelementptr inbounds %struct.DagAdjList, ptr %146, i64 0, i32 2
  %154 = load i32, ptr %153, align 4, !tbaa !114
  %155 = add nsw i32 %154, 1
  store i32 %155, ptr %153, align 4, !tbaa !114
  br label %281

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.DagAdjList, ptr %146, i64 0, i32 5
  %158 = load ptr, ptr %157, align 8, !tbaa !84
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %145, !llvm.loop !117

160:                                              ; preds = %156, %143
  %161 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %162 = tail call ptr %161(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2, ptr %162, align 8, !tbaa !105
  %163 = getelementptr inbounds %struct.DagAdjList, ptr %162, i64 0, i32 1
  store i16 %37, ptr %163, align 8, !tbaa !106
  %164 = getelementptr inbounds %struct.DagAdjList, ptr %162, i64 0, i32 2
  store i32 1, ptr %164, align 4, !tbaa !114
  %165 = load ptr, ptr %116, align 8, !tbaa !82
  %166 = getelementptr inbounds %struct.DagAdjList, ptr %162, i64 0, i32 5
  store ptr %165, ptr %166, align 8, !tbaa !84
  %167 = getelementptr inbounds %struct.DagAdjList, ptr %162, i64 0, i32 4
  store ptr @.str.48, ptr %167, align 8, !tbaa !116
  store ptr %162, ptr %116, align 8, !tbaa !82
  br label %281

168:                                              ; preds = %111, %106, %94
  %169 = getelementptr inbounds %struct.DriverTarget, ptr %52, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !424
  %171 = icmp eq ptr %170, null
  br i1 %171, label %228, label %172

172:                                              ; preds = %168
  %173 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %170, ptr noundef nonnull dereferenceable(1) @.str.49) #19
  %174 = icmp eq ptr %173, null
  br i1 %174, label %228, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.DagNode, ptr %95, i64 0, i32 16
  %177 = load ptr, ptr %176, align 8, !tbaa !82
  %178 = load ptr, ptr %16, align 8, !tbaa !34
  %179 = icmp eq ptr %178, null
  br i1 %179, label %195, label %180

180:                                              ; preds = %175, %191
  %181 = phi ptr [ %193, %191 ], [ %178, %175 ]
  %182 = load ptr, ptr %181, align 8, !tbaa !105
  %183 = icmp eq ptr %182, %95
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.DagAdjList, ptr %181, i64 0, i32 1
  %186 = load i16, ptr %185, align 8, !tbaa !106
  %187 = or i16 %186, %38
  store i16 %187, ptr %185, align 8, !tbaa !106
  %188 = getelementptr inbounds %struct.DagAdjList, ptr %181, i64 0, i32 2
  %189 = load i32, ptr %188, align 4, !tbaa !114
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %188, align 4, !tbaa !114
  br label %203

191:                                              ; preds = %180
  %192 = getelementptr inbounds %struct.DagAdjList, ptr %181, i64 0, i32 5
  %193 = load ptr, ptr %192, align 8, !tbaa !34
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %180, !llvm.loop !115

195:                                              ; preds = %191, %175
  %196 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %197 = tail call ptr %196(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %95, ptr %197, align 8, !tbaa !105
  %198 = getelementptr inbounds %struct.DagAdjList, ptr %197, i64 0, i32 1
  store i16 %38, ptr %198, align 8, !tbaa !106
  %199 = getelementptr inbounds %struct.DagAdjList, ptr %197, i64 0, i32 2
  store i32 1, ptr %199, align 4, !tbaa !114
  %200 = load ptr, ptr %16, align 8, !tbaa !87
  %201 = getelementptr inbounds %struct.DagAdjList, ptr %197, i64 0, i32 5
  store ptr %200, ptr %201, align 8, !tbaa !84
  %202 = getelementptr inbounds %struct.DagAdjList, ptr %197, i64 0, i32 4
  store ptr @.str.48, ptr %202, align 8, !tbaa !116
  store ptr %197, ptr %16, align 8, !tbaa !87
  br label %203

203:                                              ; preds = %195, %184
  %204 = icmp eq ptr %177, null
  br i1 %204, label %220, label %205

205:                                              ; preds = %203, %216
  %206 = phi ptr [ %218, %216 ], [ %177, %203 ]
  %207 = load ptr, ptr %206, align 8, !tbaa !105
  %208 = icmp eq ptr %207, %2
  br i1 %208, label %209, label %216

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.DagAdjList, ptr %206, i64 0, i32 1
  %211 = load i16, ptr %210, align 8, !tbaa !106
  %212 = or i16 %211, %38
  store i16 %212, ptr %210, align 8, !tbaa !106
  %213 = getelementptr inbounds %struct.DagAdjList, ptr %206, i64 0, i32 2
  %214 = load i32, ptr %213, align 4, !tbaa !114
  %215 = add nsw i32 %214, 1
  store i32 %215, ptr %213, align 4, !tbaa !114
  br label %281

216:                                              ; preds = %205
  %217 = getelementptr inbounds %struct.DagAdjList, ptr %206, i64 0, i32 5
  %218 = load ptr, ptr %217, align 8, !tbaa !84
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %205, !llvm.loop !117

220:                                              ; preds = %216, %203
  %221 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %222 = tail call ptr %221(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2, ptr %222, align 8, !tbaa !105
  %223 = getelementptr inbounds %struct.DagAdjList, ptr %222, i64 0, i32 1
  store i16 %38, ptr %223, align 8, !tbaa !106
  %224 = getelementptr inbounds %struct.DagAdjList, ptr %222, i64 0, i32 2
  store i32 1, ptr %224, align 4, !tbaa !114
  %225 = load ptr, ptr %176, align 8, !tbaa !82
  %226 = getelementptr inbounds %struct.DagAdjList, ptr %222, i64 0, i32 5
  store ptr %225, ptr %226, align 8, !tbaa !84
  %227 = getelementptr inbounds %struct.DagAdjList, ptr %222, i64 0, i32 4
  store ptr @.str.48, ptr %227, align 8, !tbaa !116
  store ptr %222, ptr %176, align 8, !tbaa !82
  br label %281

228:                                              ; preds = %172, %168
  %229 = getelementptr inbounds %struct.DagNode, ptr %95, i64 0, i32 16
  %230 = load ptr, ptr %229, align 8, !tbaa !82
  %231 = load ptr, ptr %17, align 8, !tbaa !34
  %232 = icmp eq ptr %231, null
  br i1 %232, label %248, label %233

233:                                              ; preds = %228, %244
  %234 = phi ptr [ %246, %244 ], [ %231, %228 ]
  %235 = load ptr, ptr %234, align 8, !tbaa !105
  %236 = icmp eq ptr %235, %95
  br i1 %236, label %237, label %244

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.DagAdjList, ptr %234, i64 0, i32 1
  %239 = load i16, ptr %238, align 8, !tbaa !106
  %240 = or i16 %239, %39
  store i16 %240, ptr %238, align 8, !tbaa !106
  %241 = getelementptr inbounds %struct.DagAdjList, ptr %234, i64 0, i32 2
  %242 = load i32, ptr %241, align 4, !tbaa !114
  %243 = add nsw i32 %242, 1
  store i32 %243, ptr %241, align 4, !tbaa !114
  br label %256

244:                                              ; preds = %233
  %245 = getelementptr inbounds %struct.DagAdjList, ptr %234, i64 0, i32 5
  %246 = load ptr, ptr %245, align 8, !tbaa !34
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %233, !llvm.loop !115

248:                                              ; preds = %244, %228
  %249 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %250 = tail call ptr %249(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %95, ptr %250, align 8, !tbaa !105
  %251 = getelementptr inbounds %struct.DagAdjList, ptr %250, i64 0, i32 1
  store i16 %39, ptr %251, align 8, !tbaa !106
  %252 = getelementptr inbounds %struct.DagAdjList, ptr %250, i64 0, i32 2
  store i32 1, ptr %252, align 4, !tbaa !114
  %253 = load ptr, ptr %17, align 8, !tbaa !87
  %254 = getelementptr inbounds %struct.DagAdjList, ptr %250, i64 0, i32 5
  store ptr %253, ptr %254, align 8, !tbaa !84
  %255 = getelementptr inbounds %struct.DagAdjList, ptr %250, i64 0, i32 4
  store ptr @.str.48, ptr %255, align 8, !tbaa !116
  store ptr %250, ptr %17, align 8, !tbaa !87
  br label %256

256:                                              ; preds = %248, %237
  %257 = icmp eq ptr %230, null
  br i1 %257, label %273, label %258

258:                                              ; preds = %256, %269
  %259 = phi ptr [ %271, %269 ], [ %230, %256 ]
  %260 = load ptr, ptr %259, align 8, !tbaa !105
  %261 = icmp eq ptr %260, %2
  br i1 %261, label %262, label %269

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.DagAdjList, ptr %259, i64 0, i32 1
  %264 = load i16, ptr %263, align 8, !tbaa !106
  %265 = or i16 %264, %39
  store i16 %265, ptr %263, align 8, !tbaa !106
  %266 = getelementptr inbounds %struct.DagAdjList, ptr %259, i64 0, i32 2
  %267 = load i32, ptr %266, align 4, !tbaa !114
  %268 = add nsw i32 %267, 1
  store i32 %268, ptr %266, align 4, !tbaa !114
  br label %281

269:                                              ; preds = %258
  %270 = getelementptr inbounds %struct.DagAdjList, ptr %259, i64 0, i32 5
  %271 = load ptr, ptr %270, align 8, !tbaa !84
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %258, !llvm.loop !117

273:                                              ; preds = %269, %256
  %274 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %275 = tail call ptr %274(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2, ptr %275, align 8, !tbaa !105
  %276 = getelementptr inbounds %struct.DagAdjList, ptr %275, i64 0, i32 1
  store i16 %39, ptr %276, align 8, !tbaa !106
  %277 = getelementptr inbounds %struct.DagAdjList, ptr %275, i64 0, i32 2
  store i32 1, ptr %277, align 4, !tbaa !114
  %278 = load ptr, ptr %229, align 8, !tbaa !82
  %279 = getelementptr inbounds %struct.DagAdjList, ptr %275, i64 0, i32 5
  store ptr %278, ptr %279, align 8, !tbaa !84
  %280 = getelementptr inbounds %struct.DagAdjList, ptr %275, i64 0, i32 4
  store ptr @.str.48, ptr %280, align 8, !tbaa !116
  store ptr %275, ptr %229, align 8, !tbaa !82
  br label %281

281:                                              ; preds = %273, %262, %220, %209, %160, %149, %50, %55
  %282 = add nuw nsw i32 %51, 1
  %283 = getelementptr inbounds %struct.DriverTarget, ptr %52, i64 1
  %284 = load i16, ptr %45, align 8, !tbaa !420
  %285 = sext i16 %284 to i32
  %286 = icmp slt i32 %282, %285
  br i1 %286, label %50, label %40, !llvm.loop !426

287:                                              ; preds = %18, %4
  ret void
}

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #1

declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #1

declare zeroext i8 @modifiers_isModifierEnabled(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @dag_add_collision_field_relation(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 109
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 52
  br label %12

12:                                               ; preds = %10, %37
  %13 = phi ptr [ %8, %10 ], [ %38, %37 ]
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !179
  %16 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !191
  %18 = load ptr, ptr %17, align 8, !tbaa !427
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.Group, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %20, %34
  %25 = phi ptr [ %35, %34 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.GroupObject, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !149
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 52
  %29 = load i32, ptr %28, align 8, !tbaa !261
  %30 = load i32, ptr %11, align 8, !tbaa !261
  %31 = and i32 %30, %29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  tail call fastcc void @check_and_create_collision_relation(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %27, i32 noundef %4, i8 noundef zeroext %5)
  br label %34

34:                                               ; preds = %24, %33
  %35 = load ptr, ptr %25, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %24, !llvm.loop !429

37:                                               ; preds = %34, %20, %12
  %38 = load ptr, ptr %13, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %12, !llvm.loop !430

40:                                               ; preds = %37, %6
  %41 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 52
  br label %46

46:                                               ; preds = %44, %56
  %47 = phi ptr [ %42, %44 ], [ %57, %56 ]
  %48 = getelementptr inbounds %struct.Base, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !250
  %50 = load i32, ptr %45, align 8, !tbaa !261
  %51 = and i32 %50, %49
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.Base, ptr %47, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !98
  tail call fastcc void @check_and_create_collision_relation(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %55, i32 noundef %4, i8 noundef zeroext %5)
  br label %56

56:                                               ; preds = %46, %53
  %57 = load ptr, ptr %47, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %46, !llvm.loop !431

59:                                               ; preds = %56, %40
  ret void
}

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_mball_basis_find(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #1

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @pdInitEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @pdEndEffectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc void @check_and_create_collision_relation(ptr nocapture noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %8 = load ptr, ptr %7, align 8, !tbaa !432
  %9 = icmp eq ptr %8, null
  br i1 %9, label %130, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 1
  %12 = load i16, ptr %11, align 4, !tbaa !433
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 2
  %16 = load i16, ptr %15, align 2, !tbaa !435
  %17 = icmp eq i16 %16, 0
  %18 = icmp eq ptr %3, %1
  %19 = or i1 %18, %17
  br i1 %19, label %130, label %22

20:                                               ; preds = %10
  %21 = icmp eq ptr %3, %1
  br i1 %21, label %130, label %22

22:                                               ; preds = %14, %20
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 2
  %26 = load i16, ptr %25, align 2, !tbaa !435
  %27 = sext i16 %26 to i32
  %28 = icmp eq i32 %27, %4
  br i1 %28, label %130, label %29

29:                                               ; preds = %24, %22
  %30 = icmp eq i8 %5, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 2
  %33 = load i16, ptr %32, align 2, !tbaa !435
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %130, label %35

35:                                               ; preds = %31, %29
  %36 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !91
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %37, ptr noundef %3) #17
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %40, %39 ], [ null, %35 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %75

44:                                               ; preds = %41
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %46 = tail call ptr %45(i64 noundef 120, ptr noundef nonnull @.str.8) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %75, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.DagNode, ptr %46, i64 0, i32 5
  store ptr %3, ptr %49, align 8, !tbaa !92
  store i32 0, ptr %46, align 8, !tbaa !93
  %50 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %51 = load i8, ptr %50, align 4, !tbaa !55
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %55 = load i16, ptr %54, align 8, !tbaa !94
  %56 = getelementptr inbounds %struct.DagNode, ptr %46, i64 0, i32 1
  store i16 %55, ptr %56, align 4, !tbaa !95
  br label %57

57:                                               ; preds = %53, %48
  %58 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !96
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %60, label %66, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %61, align 8, !tbaa !97
  %64 = getelementptr inbounds %struct.DagNode, ptr %63, i64 0, i32 18
  store ptr %46, ptr %64, align 8, !tbaa !89
  store ptr %46, ptr %61, align 8, !tbaa !97
  %65 = add nsw i32 %59, 1
  br label %67

66:                                               ; preds = %57
  store ptr %46, ptr %61, align 8, !tbaa !97
  store ptr %46, ptr %0, align 8, !tbaa !81
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ 1, %66 ], [ %65, %62 ]
  store i32 %68, ptr %58, align 8, !tbaa !96
  %69 = load ptr, ptr %36, align 8, !tbaa !91
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #17
  store ptr %72, ptr %36, align 8, !tbaa !91
  br label %73

73:                                               ; preds = %71, %67
  %74 = load ptr, ptr %36, align 8, !tbaa !91
  tail call void @BLI_ghash_insert(ptr noundef %74, ptr noundef %3, ptr noundef nonnull %46) #17
  br label %75

75:                                               ; preds = %73, %44, %41
  %76 = phi ptr [ %42, %41 ], [ %46, %44 ], [ %46, %73 ]
  %77 = getelementptr inbounds %struct.DagNode, ptr %76, i64 0, i32 16
  %78 = load ptr, ptr %77, align 8, !tbaa !82
  %79 = getelementptr inbounds %struct.DagNode, ptr %2, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  %81 = icmp eq ptr %80, null
  br i1 %81, label %97, label %82

82:                                               ; preds = %75, %93
  %83 = phi ptr [ %95, %93 ], [ %80, %75 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !105
  %85 = icmp eq ptr %84, %76
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.DagAdjList, ptr %83, i64 0, i32 1
  %88 = load i16, ptr %87, align 8, !tbaa !106
  %89 = or i16 %88, 40
  store i16 %89, ptr %87, align 8, !tbaa !106
  %90 = getelementptr inbounds %struct.DagAdjList, ptr %83, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !114
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %90, align 4, !tbaa !114
  br label %105

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.DagAdjList, ptr %83, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %82, !llvm.loop !115

97:                                               ; preds = %93, %75
  %98 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %99 = tail call ptr %98(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %76, ptr %99, align 8, !tbaa !105
  %100 = getelementptr inbounds %struct.DagAdjList, ptr %99, i64 0, i32 1
  store i16 40, ptr %100, align 8, !tbaa !106
  %101 = getelementptr inbounds %struct.DagAdjList, ptr %99, i64 0, i32 2
  store i32 1, ptr %101, align 4, !tbaa !114
  %102 = load ptr, ptr %79, align 8, !tbaa !87
  %103 = getelementptr inbounds %struct.DagAdjList, ptr %99, i64 0, i32 5
  store ptr %102, ptr %103, align 8, !tbaa !84
  %104 = getelementptr inbounds %struct.DagAdjList, ptr %99, i64 0, i32 4
  store ptr @.str.50, ptr %104, align 8, !tbaa !116
  store ptr %99, ptr %79, align 8, !tbaa !87
  br label %105

105:                                              ; preds = %97, %86
  %106 = icmp eq ptr %78, null
  br i1 %106, label %122, label %107

107:                                              ; preds = %105, %118
  %108 = phi ptr [ %120, %118 ], [ %78, %105 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !105
  %110 = icmp eq ptr %109, %2
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.DagAdjList, ptr %108, i64 0, i32 1
  %113 = load i16, ptr %112, align 8, !tbaa !106
  %114 = or i16 %113, 40
  store i16 %114, ptr %112, align 8, !tbaa !106
  %115 = getelementptr inbounds %struct.DagAdjList, ptr %108, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !114
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %115, align 4, !tbaa !114
  br label %130

118:                                              ; preds = %107
  %119 = getelementptr inbounds %struct.DagAdjList, ptr %108, i64 0, i32 5
  %120 = load ptr, ptr %119, align 8, !tbaa !84
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %107, !llvm.loop !117

122:                                              ; preds = %118, %105
  %123 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %124 = tail call ptr %123(i64 noundef 40, ptr noundef nonnull @.str.10) #17
  store ptr %2, ptr %124, align 8, !tbaa !105
  %125 = getelementptr inbounds %struct.DagAdjList, ptr %124, i64 0, i32 1
  store i16 40, ptr %125, align 8, !tbaa !106
  %126 = getelementptr inbounds %struct.DagAdjList, ptr %124, i64 0, i32 2
  store i32 1, ptr %126, align 4, !tbaa !114
  %127 = load ptr, ptr %77, align 8, !tbaa !82
  %128 = getelementptr inbounds %struct.DagAdjList, ptr %124, i64 0, i32 5
  store ptr %127, ptr %128, align 8, !tbaa !84
  %129 = getelementptr inbounds %struct.DagAdjList, ptr %124, i64 0, i32 4
  store ptr @.str.50, ptr %129, align 8, !tbaa !116
  store ptr %124, ptr %77, align 8, !tbaa !82
  br label %130

130:                                              ; preds = %122, %111, %6, %14, %20, %24, %31
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dag_add_shader_nodetree_driver_relations(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !436
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @dag_add_driver_relation(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, i32 noundef 1)
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %8, %45
  %13 = phi ptr [ %46, %45 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !252
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !94
  %20 = icmp eq i16 %19, 16717
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 5
  %23 = load i16, ptr %22, align 2, !tbaa !168
  %24 = and i16 %23, 1024
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = or disjoint i16 %23, 1024
  store i16 %27, ptr %22, align 2, !tbaa !168
  %28 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !172
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call fastcc void @dag_add_driver_relation(ptr noundef nonnull %29, ptr noundef %0, ptr noundef %1, i32 noundef 1)
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds %struct.Material, ptr %15, i64 0, i32 103
  %34 = load ptr, ptr %33, align 8, !tbaa !173
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call fastcc void @dag_add_shader_nodetree_driver_relations(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %34)
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i16, ptr %22, align 2, !tbaa !168
  %39 = and i16 %38, -1025
  store i16 %39, ptr %22, align 2, !tbaa !168
  br label %45

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 8
  %42 = load i16, ptr %41, align 4, !tbaa !437
  %43 = icmp eq i16 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call fastcc void @dag_add_shader_nodetree_driver_relations(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15)
  br label %45

45:                                               ; preds = %37, %21, %12, %40, %44
  %46 = load ptr, ptr %13, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %12, !llvm.loop !438

48:                                               ; preds = %45, %8
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @flush_layer_node(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 11
  store i32 %1, ptr %3, align 8, !tbaa !244
  %4 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !262
  %6 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 8
  store i32 %5, ptr %6, align 4, !tbaa !271
  %7 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %2, %30
  %11 = phi ptr [ %32, %30 ], [ %8, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !105
  %13 = getelementptr inbounds %struct.DagNode, ptr %12, i64 0, i32 1
  %14 = load i16, ptr %13, align 4, !tbaa !95
  %15 = icmp eq i16 %14, 16975
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.DagNode, ptr %12, i64 0, i32 11
  %18 = load i32, ptr %17, align 8, !tbaa !244
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @flush_layer_node(ptr noundef %12, i32 noundef %1)
  br label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.DagNode, ptr %12, i64 0, i32 8
  %24 = load i32, ptr %23, align 4, !tbaa !271
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %24, %22 ], [ %21, %20 ]
  %27 = getelementptr inbounds %struct.DagAdjList, ptr %11, i64 0, i32 3
  store i32 %26, ptr %27, align 8, !tbaa !259
  %28 = load i32, ptr %6, align 4, !tbaa !271
  %29 = or i32 %28, %26
  store i32 %29, ptr %6, align 4, !tbaa !271
  br label %30

30:                                               ; preds = %10, %25
  %31 = getelementptr inbounds %struct.DagAdjList, ptr %11, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %10, !llvm.loop !439

34:                                               ; preds = %30, %2
  %35 = load i32, ptr %6, align 4, !tbaa !271
  ret i32 %35
}

declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #1

declare void @nodeUpdate(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_scene_check_rigidbody_active(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @modifier_dependsOnTime(ptr noundef) local_unnamed_addr #1

declare void @BKE_main_id_flag_listbase(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #1

declare i32 @BKE_screen_visible_layers(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @modifiers_foreachIDLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @dag_id_flush_update__isDependentTexture(ptr nocapture noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #14 {
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !94
  %9 = icmp eq i16 %8, 17748
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !349
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 1
  store i8 1, ptr %14, align 8, !tbaa !351
  br label %15

15:                                               ; preds = %10, %13, %6, %3
  ret void
}

declare void @BKE_texpaint_slots_refresh_object(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_dopesheet_tag_update(ptr noundef) local_unnamed_addr #1

declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @dag_node_recurs_level(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  store i32 2, ptr %0, align 8, !tbaa !93
  %3 = add nsw i32 %1, 1
  %4 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2, %20
  %8 = phi ptr [ %25, %20 ], [ %5, %2 ]
  %9 = phi i32 [ %23, %20 ], [ %3, %2 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !105
  %11 = load i32, ptr %10, align 8, !tbaa !93
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @dag_node_recurs_level(ptr noundef nonnull %10, i32 noundef %3)
  %15 = load ptr, ptr %8, align 8, !tbaa !105
  %16 = getelementptr inbounds %struct.DagNode, ptr %15, i64 0, i32 7
  store i32 %14, ptr %16, align 8, !tbaa !119
  br label %20

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.DagNode, ptr %10, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !119
  br label %20

20:                                               ; preds = %13, %17
  %21 = phi i32 [ %14, %13 ], [ %19, %17 ]
  %22 = add nsw i32 %21, %3
  %23 = tail call i32 @llvm.smax.i32(i32 %9, i32 %22)
  %24 = getelementptr inbounds %struct.DagAdjList, ptr %8, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %7, !llvm.loop !440

27:                                               ; preds = %20, %2
  %28 = phi i32 [ %3, %2 ], [ %23, %20 ]
  ret i32 %28
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @dag_node_print_dependency_recurs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = load i32, ptr %1, align 8, !tbaa !93
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %52, label %6

6:                                                ; preds = %3
  store i32 2, ptr %1, align 8, !tbaa !93
  %7 = icmp eq ptr %1, %2
  br i1 %7, label %52, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %8, %48
  %13 = phi ptr [ %50, %48 ], [ %10, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = tail call fastcc i32 @dag_node_print_dependency_recurs(ptr noundef %0, ptr noundef %14, ptr noundef %2), !range !405
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %23 = load i8, ptr %22, align 4, !tbaa !55
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 4, i64 2
  br label %29

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 4
  br label %29

29:                                               ; preds = %17, %25, %27
  %30 = phi ptr [ %26, %25 ], [ %28, %27 ], [ @.str.58, %17 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !105
  %32 = getelementptr inbounds %struct.DagNode, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !92
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %37 = load i8, ptr %36, align 4, !tbaa !55
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 4, i64 2
  br label %43

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %33, i64 0, i32 4
  br label %43

43:                                               ; preds = %29, %39, %41
  %44 = phi ptr [ %40, %39 ], [ %42, %41 ], [ @.str.58, %29 ]
  %45 = getelementptr inbounds %struct.DagAdjList, ptr %13, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !116
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef nonnull %30, ptr noundef nonnull %44, ptr noundef %46)
  br label %52

48:                                               ; preds = %12
  %49 = getelementptr inbounds %struct.DagAdjList, ptr %13, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %12, !llvm.loop !441

52:                                               ; preds = %48, %8, %6, %3, %43
  %53 = phi i32 [ 1, %43 ], [ 0, %3 ], [ 1, %6 ], [ 0, %8 ], [ 0, %48 ]
  ret i32 %53
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !35, i64 24}
!39 = !{!"DagNodeQueue", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !35, i64 24}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !35, i64 8}
!42 = !{!39, !35, i64 0}
!43 = !{!44, !35, i64 8}
!44 = !{!"DagNodeQueueElem", !35, i64 0, !35, i64 8}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!39, !40, i64 16}
!49 = !{!44, !35, i64 0}
!50 = distinct !{!50, !46, !47}
!51 = distinct !{!51, !46, !47}
!52 = distinct !{!52, !46, !47}
!53 = distinct !{!53, !46, !47}
!54 = distinct !{!54, !46, !47}
!55 = !{!56, !36, i64 36}
!56 = !{!"DagForest", !57, i64 0, !35, i64 16, !40, i64 24, !36, i64 28, !40, i64 32, !36, i64 36}
!57 = !{!"ListBase", !35, i64 0, !35, i64 8}
!58 = !{!59, !35, i64 4368}
!59 = !{!"Scene", !60, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !57, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !61, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !62, i64 280, !72, i64 4264, !57, i64 4296, !57, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !61, i64 4376, !61, i64 4378, !40, i64 4380, !57, i64 4384, !73, i64 4400, !74, i64 4416, !77, i64 4600, !35, i64 4608, !78, i64 4616, !35, i64 4640, !79, i64 4648, !79, i64 4656, !65, i64 4664, !66, i64 4824, !80, i64 4888, !35, i64 4952}
!60 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !61, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!61 = !{!"short", !36, i64 0}
!62 = !{!"RenderData", !63, i64 0, !35, i64 248, !35, i64 256, !67, i64 264, !68, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !64, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !61, i64 432, !61, i64 434, !64, i64 436, !64, i64 440, !64, i64 444, !64, i64 448, !64, i64 452, !61, i64 456, !61, i64 458, !61, i64 460, !61, i64 462, !61, i64 464, !61, i64 466, !40, i64 468, !61, i64 472, !61, i64 474, !61, i64 476, !61, i64 478, !61, i64 480, !61, i64 482, !40, i64 484, !40, i64 488, !61, i64 492, !61, i64 494, !40, i64 496, !40, i64 500, !61, i64 504, !61, i64 506, !61, i64 508, !61, i64 510, !61, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !61, i64 528, !61, i64 530, !61, i64 532, !61, i64 534, !61, i64 536, !61, i64 538, !61, i64 540, !61, i64 542, !69, i64 544, !69, i64 560, !70, i64 576, !57, i64 592, !61, i64 608, !61, i64 610, !64, i64 612, !64, i64 616, !64, i64 620, !64, i64 624, !40, i64 628, !64, i64 632, !64, i64 636, !64, i64 640, !64, i64 644, !61, i64 648, !61, i64 650, !61, i64 652, !61, i64 654, !61, i64 656, !61, i64 658, !64, i64 660, !64, i64 664, !61, i64 668, !61, i64 670, !64, i64 672, !64, i64 676, !36, i64 680, !40, i64 1704, !61, i64 1708, !61, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !61, i64 2524, !61, i64 2526, !64, i64 2528, !64, i64 2532, !61, i64 2536, !61, i64 2538, !64, i64 2540, !61, i64 2544, !61, i64 2546, !40, i64 2548, !61, i64 2552, !61, i64 2554, !61, i64 2556, !61, i64 2558, !64, i64 2560, !64, i64 2564, !35, i64 2568, !40, i64 2576, !64, i64 2580, !36, i64 2584, !71, i64 2616, !40, i64 3976, !40, i64 3980}
!63 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !61, i64 8, !61, i64 10, !64, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !65, i64 24, !66, i64 184}
!64 = !{!"float", !36, i64 0}
!65 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !64, i64 136, !64, i64 140, !35, i64 144, !35, i64 152}
!66 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!67 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !61, i64 48, !61, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!68 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !64, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!69 = !{!"rctf", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12}
!70 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!71 = !{!"BakeData", !63, i64 0, !36, i64 248, !61, i64 1272, !61, i64 1274, !61, i64 1276, !61, i64 1278, !64, i64 1280, !64, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!72 = !{!"AudioData", !40, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !40, i64 16, !61, i64 20, !61, i64 22, !64, i64 24, !64, i64 28}
!73 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!74 = !{!"GameData", !73, i64 0, !61, i64 16, !61, i64 18, !61, i64 20, !61, i64 22, !61, i64 24, !61, i64 26, !61, i64 28, !61, i64 30, !61, i64 32, !36, i64 34, !75, i64 40, !61, i64 64, !61, i64 66, !64, i64 68, !76, i64 72, !64, i64 128, !64, i64 132, !40, i64 136, !61, i64 140, !61, i64 142, !61, i64 144, !61, i64 146, !61, i64 148, !61, i64 150, !61, i64 152, !61, i64 154, !61, i64 156, !61, i64 158, !61, i64 160, !61, i64 162, !64, i64 164, !64, i64 168, !64, i64 172, !64, i64 176, !64, i64 180}
!75 = !{!"GameDome", !61, i64 0, !61, i64 2, !61, i64 4, !61, i64 6, !64, i64 8, !64, i64 12, !35, i64 16}
!76 = !{!"RecastData", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !64, i64 24, !64, i64 28, !64, i64 32, !64, i64 36, !40, i64 40, !64, i64 44, !64, i64 48, !61, i64 52, !61, i64 54}
!77 = !{!"UnitSettings", !64, i64 0, !36, i64 4, !36, i64 5, !61, i64 6}
!78 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!79 = !{!"long", !36, i64 0}
!80 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!81 = !{!56, !35, i64 0}
!82 = !{!83, !35, i64 88}
!83 = !{!"DagNode", !40, i64 0, !61, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !79, i64 56, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !40, i64 112, !36, i64 116, !61, i64 118}
!84 = !{!85, !35, i64 32}
!85 = !{!"DagAdjList", !35, i64 0, !61, i64 8, !40, i64 12, !40, i64 16, !35, i64 24, !35, i64 32}
!86 = distinct !{!86, !46, !47}
!87 = !{!83, !35, i64 96}
!88 = distinct !{!88, !46, !47}
!89 = !{!83, !35, i64 104}
!90 = distinct !{!90, !46, !47}
!91 = !{!56, !35, i64 16}
!92 = !{!83, !35, i64 24}
!93 = !{!83, !40, i64 0}
!94 = !{!61, !61, i64 0}
!95 = !{!83, !61, i64 4}
!96 = !{!56, !40, i64 24}
!97 = !{!56, !35, i64 8}
!98 = !{!99, !35, i64 32}
!99 = !{!"Base", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !61, i64 28, !61, i64 30, !35, i64 32}
!100 = !{!101, !35, i64 232}
!101 = !{!"Object", !60, i64 0, !35, i64 120, !35, i64 128, !61, i64 136, !61, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !102, i64 312, !35, i64 360, !57, i64 368, !57, i64 384, !57, i64 400, !57, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !64, i64 616, !64, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !61, i64 948, !61, i64 950, !61, i64 952, !61, i64 954, !61, i64 956, !61, i64 958, !61, i64 960, !61, i64 962, !61, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !64, i64 988, !64, i64 992, !64, i64 996, !64, i64 1000, !64, i64 1004, !64, i64 1008, !64, i64 1012, !64, i64 1016, !64, i64 1020, !64, i64 1024, !64, i64 1028, !64, i64 1032, !61, i64 1036, !61, i64 1038, !61, i64 1040, !36, i64 1042, !36, i64 1043, !61, i64 1044, !36, i64 1046, !36, i64 1047, !64, i64 1048, !64, i64 1052, !57, i64 1056, !57, i64 1072, !57, i64 1088, !57, i64 1104, !64, i64 1120, !61, i64 1124, !61, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !61, i64 1162, !36, i64 1164, !57, i64 1176, !57, i64 1192, !57, i64 1208, !57, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !61, i64 1266, !64, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !79, i64 1304, !79, i64 1312, !40, i64 1320, !40, i64 1324, !57, i64 1328, !57, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !57, i64 1400, !35, i64 1416}
!102 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !61, i64 16, !61, i64 18, !61, i64 20, !61, i64 22, !61, i64 24, !61, i64 26, !61, i64 28, !61, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!103 = !{!101, !35, i64 1256}
!104 = distinct !{!104, !46, !47}
!105 = !{!85, !35, i64 0}
!106 = !{!85, !61, i64 8}
!107 = distinct !{!107, !46, !47}
!108 = !{!83, !79, i64 56}
!109 = !{!101, !79, i64 1312}
!110 = distinct !{!110, !46, !47}
!111 = distinct !{!111, !46, !47}
!112 = distinct !{!112, !46, !47}
!113 = !{!101, !35, i64 296}
!114 = !{!85, !40, i64 12}
!115 = distinct !{!115, !46, !47}
!116 = !{!85, !35, i64 24}
!117 = distinct !{!117, !46, !47}
!118 = !{!83, !35, i64 32}
!119 = !{!83, !40, i64 40}
!120 = !{!101, !61, i64 136}
!121 = !{!101, !35, i64 288}
!122 = distinct !{!122, !46, !47}
!123 = !{!124, !35, i64 104}
!124 = !{!"bConstraintTypeInfo", !61, i64 0, !61, i64 2, !36, i64 4, !36, i64 36, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128}
!125 = !{!126, !35, i64 16}
!126 = !{!"bConstraintTarget", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !61, i64 152, !61, i64 154, !61, i64 156, !61, i64 158}
!127 = !{!36, !36, i64 0}
!128 = !{!129, !61, i64 24}
!129 = !{!"bConstraint", !35, i64 0, !35, i64 8, !35, i64 16, !61, i64 24, !61, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !61, i64 94, !64, i64 96, !64, i64 100, !35, i64 104, !64, i64 112, !64, i64 116}
!130 = distinct !{!130, !46, !47}
!131 = !{!124, !35, i64 112}
!132 = distinct !{!132, !46, !47}
!133 = !{!101, !35, i64 120}
!134 = !{!135, !35, i64 120}
!135 = !{!"Key", !60, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !40, i64 168, !40, i64 172, !57, i64 176, !35, i64 192, !35, i64 200, !61, i64 208, !61, i64 210, !61, i64 212, !61, i64 214, !64, i64 216, !40, i64 220}
!136 = !{!101, !35, i64 416}
!137 = !{!138, !40, i64 16}
!138 = !{!"ModifierData", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!139 = !{!140, !35, i64 168}
!140 = !{!"ModifierTypeInfo", !36, i64 0, !36, i64 32, !40, i64 64, !40, i64 68, !40, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208}
!141 = !{!138, !35, i64 0}
!142 = distinct !{!142, !46, !47}
!143 = !{!101, !35, i64 216}
!144 = !{!101, !61, i64 138}
!145 = !{!146, !40, i64 268}
!146 = !{!"Curve", !60, i64 0, !35, i64 120, !35, i64 128, !57, i64 136, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !61, i64 244, !61, i64 246, !61, i64 248, !61, i64 250, !64, i64 252, !64, i64 256, !40, i64 260, !61, i64 264, !61, i64 266, !40, i64 268, !64, i64 272, !64, i64 276, !64, i64 280, !61, i64 284, !61, i64 286, !61, i64 288, !61, i64 290, !40, i64 292, !40, i64 296, !36, i64 300, !61, i64 304, !36, i64 306, !36, i64 307, !64, i64 308, !64, i64 312, !64, i64 316, !64, i64 320, !64, i64 324, !64, i64 328, !64, i64 332, !64, i64 336, !64, i64 340, !64, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !35, i64 368, !35, i64 376, !36, i64 384, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !35, i64 480, !40, i64 488, !40, i64 492, !35, i64 496, !147, i64 504, !64, i64 512, !64, i64 516, !64, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!147 = !{!"CharInfo", !61, i64 0, !61, i64 2, !36, i64 4, !36, i64 5, !61, i64 6}
!148 = !{!101, !61, i64 952}
!149 = !{!150, !35, i64 16}
!150 = !{!"GroupObject", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !61, i64 32, !36, i64 34}
!151 = distinct !{!151, !46, !47}
!152 = !{!101, !35, i64 1224}
!153 = !{!101, !35, i64 1368}
!154 = !{!155, !35, i64 184}
!155 = !{!"Camera", !60, i64 0, !35, i64 120, !36, i64 128, !36, i64 129, !61, i64 130, !64, i64 132, !64, i64 136, !64, i64 140, !64, i64 144, !64, i64 148, !64, i64 152, !64, i64 156, !64, i64 160, !64, i64 164, !64, i64 168, !64, i64 172, !35, i64 176, !35, i64 184, !36, i64 192, !36, i64 193}
!156 = !{!146, !35, i64 160}
!157 = !{!146, !35, i64 168}
!158 = !{!159, !35, i64 0}
!159 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !57, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !61, i64 2084, !61, i64 2086, !61, i64 2088, !36, i64 2090, !61, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!160 = !{!161, !35, i64 1888}
!161 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !61, i64 1040, !61, i64 1042, !61, i64 1044, !61, i64 1046, !79, i64 1048, !36, i64 1056, !61, i64 1072, !35, i64 1080, !57, i64 1088, !57, i64 1104, !57, i64 1120, !57, i64 1136, !57, i64 1152, !57, i64 1168, !57, i64 1184, !57, i64 1200, !57, i64 1216, !57, i64 1232, !57, i64 1248, !57, i64 1264, !57, i64 1280, !57, i64 1296, !57, i64 1312, !57, i64 1328, !57, i64 1344, !57, i64 1360, !57, i64 1376, !57, i64 1392, !57, i64 1408, !57, i64 1424, !57, i64 1440, !57, i64 1456, !57, i64 1472, !57, i64 1488, !57, i64 1504, !57, i64 1520, !57, i64 1536, !57, i64 1552, !57, i64 1568, !57, i64 1584, !57, i64 1600, !57, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!162 = !{!163, !35, i64 16}
!163 = !{!"DupliObject", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 100, !61, i64 108, !36, i64 110, !36, i64 111, !36, i64 112, !35, i64 144}
!164 = distinct !{!164, !46, !47}
!165 = !{!146, !35, i64 176}
!166 = !{!83, !61, i64 118}
!167 = !{!101, !40, i64 456}
!168 = !{!169, !61, i64 98}
!169 = !{!"Material", !60, i64 0, !35, i64 120, !61, i64 128, !61, i64 130, !64, i64 132, !64, i64 136, !64, i64 140, !64, i64 144, !64, i64 148, !64, i64 152, !64, i64 156, !64, i64 160, !64, i64 164, !64, i64 168, !64, i64 172, !64, i64 176, !64, i64 180, !64, i64 184, !64, i64 188, !64, i64 192, !64, i64 196, !64, i64 200, !64, i64 204, !64, i64 208, !64, i64 212, !64, i64 216, !64, i64 220, !170, i64 224, !171, i64 312, !64, i64 328, !64, i64 332, !64, i64 336, !64, i64 340, !64, i64 344, !64, i64 348, !64, i64 352, !61, i64 356, !61, i64 358, !61, i64 360, !36, i64 362, !36, i64 363, !64, i64 364, !64, i64 368, !61, i64 372, !61, i64 374, !64, i64 376, !64, i64 380, !64, i64 384, !64, i64 388, !61, i64 392, !61, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !61, i64 412, !61, i64 414, !61, i64 416, !61, i64 418, !64, i64 420, !64, i64 424, !64, i64 428, !64, i64 432, !64, i64 436, !64, i64 440, !64, i64 444, !64, i64 448, !64, i64 452, !64, i64 456, !36, i64 460, !64, i64 524, !64, i64 528, !64, i64 532, !40, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !61, i64 544, !61, i64 546, !61, i64 548, !36, i64 550, !36, i64 551, !61, i64 552, !61, i64 554, !64, i64 556, !64, i64 560, !36, i64 564, !64, i64 580, !64, i64 584, !61, i64 588, !61, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !61, i64 612, !61, i64 614, !64, i64 616, !64, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !64, i64 800, !64, i64 804, !64, i64 808, !64, i64 812, !64, i64 816, !61, i64 820, !61, i64 822, !36, i64 824, !36, i64 836, !64, i64 848, !64, i64 852, !64, i64 856, !64, i64 860, !64, i64 864, !64, i64 868, !64, i64 872, !61, i64 876, !61, i64 878, !40, i64 880, !61, i64 884, !61, i64 886, !36, i64 888, !61, i64 904, !61, i64 906, !61, i64 908, !61, i64 910, !61, i64 912, !36, i64 914, !35, i64 920, !57, i64 928}
!170 = !{!"VolumeSettings", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !64, i64 52, !64, i64 56, !64, i64 60, !61, i64 64, !61, i64 66, !61, i64 68, !61, i64 70, !64, i64 72, !64, i64 76, !64, i64 80, !64, i64 84}
!171 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!172 = !{!169, !35, i64 120}
!173 = !{!169, !35, i64 768}
!174 = distinct !{!174, !46, !47}
!175 = !{!176, !61, i64 98}
!176 = !{!"Lamp", !60, i64 0, !35, i64 120, !61, i64 128, !61, i64 130, !40, i64 132, !61, i64 136, !61, i64 138, !64, i64 140, !64, i64 144, !64, i64 148, !64, i64 152, !64, i64 156, !64, i64 160, !64, i64 164, !64, i64 168, !64, i64 172, !64, i64 176, !64, i64 180, !64, i64 184, !64, i64 188, !64, i64 192, !64, i64 196, !35, i64 200, !61, i64 208, !61, i64 210, !64, i64 212, !64, i64 216, !64, i64 220, !64, i64 224, !64, i64 228, !64, i64 232, !64, i64 236, !61, i64 240, !61, i64 242, !61, i64 244, !61, i64 246, !36, i64 248, !36, i64 249, !61, i64 250, !61, i64 252, !61, i64 254, !61, i64 256, !61, i64 258, !64, i64 260, !64, i64 264, !64, i64 268, !64, i64 272, !61, i64 276, !61, i64 278, !61, i64 280, !61, i64 282, !61, i64 284, !61, i64 286, !64, i64 288, !64, i64 292, !64, i64 296, !64, i64 300, !64, i64 304, !64, i64 308, !64, i64 312, !64, i64 316, !64, i64 320, !64, i64 324, !64, i64 328, !64, i64 332, !64, i64 336, !61, i64 340, !36, i64 342, !35, i64 344, !36, i64 352, !61, i64 496, !61, i64 498, !36, i64 500, !35, i64 504, !35, i64 512}
!177 = !{!176, !35, i64 120}
!178 = !{!176, !35, i64 512}
!179 = !{!180, !35, i64 16}
!180 = !{!"ParticleSystem", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !57, i64 72, !57, i64 88, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !57, i64 152, !36, i64 168, !36, i64 232, !64, i64 296, !64, i64 300, !64, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !61, i64 340, !61, i64 342, !61, i64 344, !61, i64 346, !36, i64 348, !36, i64 540, !61, i64 564, !61, i64 566, !35, i64 568, !35, i64 576, !57, i64 584, !35, i64 600, !35, i64 608, !40, i64 616, !40, i64 620, !35, i64 624, !35, i64 632, !35, i64 640, !64, i64 648, !64, i64 652}
!181 = !{!182, !61, i64 168}
!182 = !{!"ParticleSettings", !60, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !40, i64 152, !40, i64 156, !61, i64 160, !61, i64 162, !61, i64 164, !61, i64 166, !61, i64 168, !61, i64 170, !61, i64 172, !61, i64 174, !40, i64 176, !40, i64 180, !61, i64 184, !61, i64 186, !61, i64 188, !61, i64 190, !61, i64 192, !61, i64 194, !61, i64 196, !61, i64 198, !61, i64 200, !61, i64 202, !61, i64 204, !61, i64 206, !61, i64 208, !61, i64 210, !61, i64 212, !61, i64 214, !61, i64 216, !61, i64 218, !61, i64 220, !61, i64 222, !61, i64 224, !61, i64 226, !61, i64 228, !61, i64 230, !64, i64 232, !64, i64 236, !36, i64 240, !36, i64 248, !64, i64 256, !64, i64 260, !64, i64 264, !61, i64 268, !61, i64 270, !64, i64 272, !64, i64 276, !64, i64 280, !64, i64 284, !64, i64 288, !64, i64 292, !64, i64 296, !64, i64 300, !64, i64 304, !64, i64 308, !64, i64 312, !64, i64 316, !36, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !61, i64 340, !36, i64 342, !64, i64 348, !64, i64 352, !64, i64 356, !64, i64 360, !64, i64 364, !64, i64 368, !64, i64 372, !36, i64 376, !64, i64 388, !64, i64 392, !64, i64 396, !64, i64 400, !64, i64 404, !64, i64 408, !64, i64 412, !36, i64 416, !64, i64 428, !64, i64 432, !64, i64 436, !64, i64 440, !40, i64 444, !40, i64 448, !64, i64 452, !64, i64 456, !64, i64 460, !64, i64 464, !64, i64 468, !64, i64 472, !64, i64 476, !64, i64 480, !64, i64 484, !64, i64 488, !64, i64 492, !64, i64 496, !64, i64 500, !64, i64 504, !64, i64 508, !64, i64 512, !64, i64 516, !64, i64 520, !64, i64 524, !64, i64 528, !64, i64 532, !64, i64 536, !64, i64 540, !64, i64 544, !64, i64 548, !36, i64 552, !64, i64 560, !64, i64 564, !40, i64 568, !40, i64 572, !36, i64 576, !35, i64 720, !57, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !61, i64 792, !36, i64 794}
!183 = !{!184, !35, i64 16}
!184 = !{!"ParticleTarget", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !61, i64 28, !61, i64 30, !64, i64 32, !64, i64 36}
!185 = !{!184, !40, i64 24}
!186 = distinct !{!186, !46, !47}
!187 = !{!182, !61, i64 192}
!188 = !{!182, !35, i64 752}
!189 = !{!182, !35, i64 720}
!190 = distinct !{!190, !46, !47}
!191 = !{!182, !35, i64 144}
!192 = !{!193, !35, i64 32}
!193 = !{!"EffectorCache", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !36, i64 64, !36, i64 80, !64, i64 92, !36, i64 96, !64, i64 108, !40, i64 112}
!194 = !{!193, !35, i64 24}
!195 = distinct !{!195, !46, !47}
!196 = !{!182, !35, i64 128}
!197 = distinct !{!197, !46, !47}
!198 = !{!199, !40, i64 16}
!199 = !{!"BoidRule", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24}
!200 = distinct !{!200, !46, !47}
!201 = !{!180, !35, i64 0}
!202 = distinct !{!202, !46, !47}
!203 = !{!124, !61, i64 0}
!204 = !{!129, !35, i64 16}
!205 = !{!206, !35, i64 0}
!206 = !{!"bFollowTrackConstraint", !35, i64 0, !36, i64 8, !40, i64 72, !40, i64 76, !36, i64 80, !35, i64 144, !35, i64 152}
!207 = !{!206, !40, i64 72}
!208 = !{!206, !35, i64 152}
!209 = !{!59, !35, i64 128}
!210 = distinct !{!210, !46, !47}
!211 = distinct !{!211, !46, !47}
!212 = !{!213, !61, i64 98}
!213 = !{!"Group", !60, i64 0, !57, i64 120, !40, i64 136, !36, i64 140}
!214 = distinct !{!214, !46, !47}
!215 = distinct !{!215, !46, !47}
!216 = !{!83, !40, i64 76}
!217 = !{!83, !40, i64 80}
!218 = distinct !{!218, !46, !47}
!219 = distinct !{!219, !46, !47}
!220 = distinct !{!220, !46, !47}
!221 = distinct !{!221, !46, !47}
!222 = distinct !{!222, !46, !47}
!223 = distinct !{!223, !46, !47}
!224 = distinct !{!224, !46, !47}
!225 = distinct !{!225, !46, !47}
!226 = distinct !{!226, !46, !47}
!227 = distinct !{!227, !46, !47}
!228 = distinct !{!228, !46, !47}
!229 = !{!59, !35, i64 152}
!230 = distinct !{!230, !46, !47}
!231 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!232 = !{!101, !61, i64 98}
!233 = !{!101, !35, i64 16}
!234 = distinct !{!234, !46, !47}
!235 = distinct !{!235, !46, !47}
!236 = distinct !{!236, !46, !47}
!237 = distinct !{!237, !46, !47}
!238 = distinct !{!238, !46, !47}
!239 = distinct !{!239, !46, !47}
!240 = !{!159, !40, i64 2100}
!241 = distinct !{!241, !46, !47}
!242 = !{!59, !61, i64 4378}
!243 = !{!56, !40, i64 32}
!244 = !{!83, !40, i64 64}
!245 = distinct !{!245, !46, !47}
!246 = !{!101, !36, i64 1161}
!247 = !{!60, !61, i64 98}
!248 = distinct !{!248, !46, !47}
!249 = !{!59, !35, i64 248}
!250 = !{!99, !40, i64 16}
!251 = distinct !{!251, !46, !47}
!252 = !{!253, !35, i64 240}
!253 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !61, i64 172, !61, i64 174, !61, i64 176, !61, i64 178, !61, i64 180, !61, i64 182, !61, i64 184, !61, i64 186, !36, i64 188, !57, i64 200, !57, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !57, i64 264, !64, i64 280, !64, i64 284, !64, i64 288, !64, i64 292, !64, i64 296, !64, i64 300, !64, i64 304, !40, i64 308, !36, i64 312, !61, i64 376, !61, i64 378, !64, i64 380, !64, i64 384, !61, i64 388, !61, i64 390, !35, i64 392, !69, i64 400, !69, i64 416, !69, i64 432, !61, i64 448, !61, i64 450, !40, i64 452, !35, i64 456}
!254 = !{!253, !61, i64 376}
!255 = !{!256, !40, i64 96}
!256 = !{!"SceneRenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !64, i64 124, !257, i64 128}
!257 = !{!"FreestyleConfig", !57, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !64, i64 28, !64, i64 32, !64, i64 36, !57, i64 40}
!258 = distinct !{!258, !46, !47}
!259 = !{!85, !40, i64 16}
!260 = distinct !{!260, !46, !47}
!261 = !{!101, !40, i64 944}
!262 = !{!83, !40, i64 48}
!263 = distinct !{!263, !46, !47}
!264 = !{!265, !35, i64 88}
!265 = !{!"TimeMarker", !35, i64 0, !35, i64 8, !40, i64 16, !36, i64 20, !40, i64 84, !35, i64 88}
!266 = distinct !{!266, !46, !47}
!267 = distinct !{!267, !46, !47}
!268 = distinct !{!268, !46, !47}
!269 = distinct !{!269, !46, !47}
!270 = distinct !{!270, !46, !47}
!271 = !{!83, !40, i64 44}
!272 = distinct !{!272, !46, !47}
!273 = distinct !{!273, !46, !47}
!274 = !{!59, !35, i64 144}
!275 = distinct !{!275, !46, !47}
!276 = distinct !{!276, !46, !47}
!277 = !{!150, !61, i64 32}
!278 = distinct !{!278, !46, !47}
!279 = distinct !{!279, !46, !47}
!280 = !{!101, !35, i64 1176}
!281 = distinct !{!281, !46, !47}
!282 = !{!129, !35, i64 0}
!283 = distinct !{!283, !46, !47}
!284 = !{!285, !35, i64 0}
!285 = !{!"AnimData", !35, i64 0, !35, i64 8, !35, i64 16, !57, i64 24, !35, i64 40, !57, i64 48, !57, i64 64, !40, i64 80, !40, i64 84, !61, i64 88, !61, i64 90, !64, i64 92}
!286 = !{!287, !35, i64 120}
!287 = !{!"bAction", !60, i64 0, !57, i64 120, !57, i64 136, !57, i64 152, !57, i64 168, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196}
!288 = !{!289, !35, i64 16}
!289 = !{!"NlaTrack", !35, i64 0, !35, i64 8, !57, i64 16, !40, i64 32, !40, i64 36, !36, i64 40}
!290 = distinct !{!290, !46, !47}
!291 = !{!285, !35, i64 48}
!292 = !{!285, !40, i64 84}
!293 = distinct !{!293, !46, !47}
!294 = !{!295, !35, i64 80}
!295 = !{!"FCurve", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !57, i64 32, !35, i64 48, !35, i64 56, !40, i64 64, !64, i64 68, !61, i64 72, !61, i64 74, !40, i64 76, !35, i64 80, !40, i64 88, !36, i64 92, !64, i64 104, !64, i64 108}
!296 = distinct !{!296, !46, !47}
!297 = distinct !{!297, !46, !47}
!298 = !{!299, !61, i64 24}
!299 = !{!"bPose", !57, i64 0, !35, i64 16, !61, i64 24, !61, i64 26, !40, i64 28, !40, i64 32, !64, i64 36, !36, i64 40, !36, i64 52, !57, i64 64, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !102, i64 104, !36, i64 152}
!300 = !{!301, !35, i64 144}
!301 = !{!"Mesh", !60, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !302, i64 280, !302, i64 480, !302, i64 680, !302, i64 880, !302, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !40, i64 1344, !61, i64 1348, !61, i64 1350, !64, i64 1352, !40, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !61, i64 1366, !35, i64 1368}
!302 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!303 = !{!101, !36, i64 1265}
!304 = !{!146, !35, i64 192}
!305 = !{!57, !35, i64 0}
!306 = !{!146, !35, i64 368}
!307 = !{!146, !35, i64 448}
!308 = !{!309, !35, i64 192}
!309 = !{!"Lattice", !60, i64 0, !35, i64 120, !61, i64 128, !61, i64 130, !61, i64 132, !61, i64 134, !61, i64 136, !61, i64 138, !61, i64 140, !61, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !40, i64 148, !64, i64 152, !64, i64 156, !64, i64 160, !64, i64 164, !64, i64 168, !64, i64 172, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !35, i64 272}
!310 = !{!101, !36, i64 1047}
!311 = distinct !{!311, !46, !47}
!312 = distinct !{!312, !46, !47}
!313 = distinct !{!313, !46, !47}
!314 = distinct !{!314, !46, !47}
!315 = distinct !{!315, !46, !47}
!316 = distinct !{!316, !46, !47}
!317 = distinct !{!317, !46, !47}
!318 = !{!319, !35, i64 16}
!319 = !{!"DagSceneLayer", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24}
!320 = !{!319, !40, i64 24}
!321 = distinct !{!321, !46, !47}
!322 = !{!40, !40, i64 0}
!323 = !{!59, !40, i64 240}
!324 = !{!101, !35, i64 240}
!325 = distinct !{!325, !46, !47}
!326 = distinct !{!326, !46, !47}
!327 = !{!161, !35, i64 1600}
!328 = !{!329, !35, i64 0}
!329 = !{!"Mask", !60, i64 0, !35, i64 120, !57, i64 128, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164}
!330 = distinct !{!330, !46, !47}
!331 = !{!161, !35, i64 1552}
!332 = !{!333, !35, i64 24}
!333 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !61, i64 104, !61, i64 106, !61, i64 108, !61, i64 110, !61, i64 112, !61, i64 114, !61, i64 116, !61, i64 118, !61, i64 120, !61, i64 122, !61, i64 124, !61, i64 126, !40, i64 128, !61, i64 132, !61, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !40, i64 160, !40, i64 164, !35, i64 168, !57, i64 176, !57, i64 192, !57, i64 208, !57, i64 224, !57, i64 240}
!334 = !{!335, !35, i64 184}
!335 = !{!"bScreen", !60, i64 0, !57, i64 120, !57, i64 136, !57, i64 152, !57, i64 168, !35, i64 184, !35, i64 192, !40, i64 200, !40, i64 204, !61, i64 208, !61, i64 210, !61, i64 212, !61, i64 214, !61, i64 216, !61, i64 218, !61, i64 220, !61, i64 222, !61, i64 224, !61, i64 226, !61, i64 228, !61, i64 230, !35, i64 232, !35, i64 240}
!336 = !{!59, !61, i64 98}
!337 = distinct !{!337, !46, !47}
!338 = distinct !{!338, !46, !47}
!339 = !{!161, !35, i64 1088}
!340 = !{!59, !40, i64 232}
!341 = !{!101, !35, i64 248}
!342 = distinct !{!342, !46, !47}
!343 = distinct !{!343, !46, !47}
!344 = !{!60, !35, i64 0}
!345 = distinct !{!345, !46, !47}
!346 = distinct !{!346, !46, !47}
!347 = !{!60, !40, i64 100}
!348 = distinct !{!348, !46, !47}
!349 = !{!350, !35, i64 0}
!350 = !{!"", !35, i64 0, !36, i64 8}
!351 = !{!350, !36, i64 8}
!352 = !{!353, !35, i64 16}
!353 = !{!"MTex", !61, i64 0, !61, i64 2, !61, i64 4, !61, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !64, i64 116, !61, i64 120, !61, i64 122, !61, i64 124, !61, i64 126, !61, i64 128, !61, i64 130, !36, i64 132, !36, i64 133, !64, i64 140, !64, i64 144, !64, i64 148, !64, i64 152, !64, i64 156, !64, i64 160, !64, i64 164, !64, i64 168, !64, i64 172, !64, i64 176, !64, i64 180, !64, i64 184, !64, i64 188, !64, i64 192, !64, i64 196, !64, i64 200, !64, i64 204, !64, i64 208, !64, i64 212, !64, i64 216, !64, i64 220, !64, i64 224, !64, i64 228, !64, i64 232, !64, i64 236, !64, i64 240, !64, i64 244, !64, i64 248, !64, i64 252, !64, i64 256, !64, i64 260, !64, i64 264, !64, i64 268, !64, i64 272, !64, i64 276, !64, i64 280, !64, i64 284, !64, i64 288, !64, i64 292, !64, i64 296, !64, i64 300, !64, i64 304, !64, i64 308}
!354 = !{!353, !61, i64 2}
!355 = !{!180, !61, i64 340}
!356 = distinct !{!356, !46, !47}
!357 = distinct !{!357, !46, !47}
!358 = distinct !{!358, !46, !47}
!359 = !{!101, !61, i64 948}
!360 = distinct !{!360, !46, !47}
!361 = distinct !{!361, !46, !47}
!362 = distinct !{!362, !46, !47}
!363 = !{!59, !35, i64 168}
!364 = !{!101, !40, i64 432}
!365 = !{!101, !35, i64 1296}
!366 = distinct !{!366, !46, !47}
!367 = distinct !{!367, !46, !47}
!368 = distinct !{!368, !46, !47}
!369 = !{!370, !40, i64 256}
!370 = !{!"bNodeTree", !60, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !57, i64 224, !57, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !61, i64 276, !61, i64 278, !40, i64 280, !40, i64 284, !61, i64 288, !61, i64 290, !40, i64 292, !69, i64 296, !57, i64 312, !57, i64 328, !35, i64 344, !371, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!371 = !{!"bNodeInstanceKey", !40, i64 0}
!372 = distinct !{!372, !46, !47}
!373 = distinct !{!373, !46, !47}
!374 = distinct !{!374, !46, !47}
!375 = distinct !{!375, !46, !47}
!376 = distinct !{!376, !46, !47}
!377 = !{!370, !61, i64 98}
!378 = distinct !{!378, !46, !47}
!379 = distinct !{!379, !46, !47}
!380 = distinct !{!380, !46, !47}
!381 = !{!146, !35, i64 456}
!382 = !{!146, !35, i64 464}
!383 = !{!146, !35, i64 472}
!384 = distinct !{!384, !46, !47}
!385 = !{!386, !35, i64 128}
!386 = !{!"bPoseChannel", !35, i64 0, !35, i64 8, !35, i64 16, !57, i64 24, !36, i64 40, !61, i64 104, !61, i64 106, !61, i64 108, !61, i64 110, !36, i64 112, !36, i64 113, !36, i64 114, !35, i64 120, !35, i64 128, !35, i64 136, !57, i64 144, !57, i64 160, !35, i64 176, !35, i64 184, !35, i64 192, !36, i64 200, !36, i64 212, !36, i64 224, !36, i64 236, !36, i64 252, !64, i64 264, !61, i64 268, !61, i64 270, !36, i64 272, !36, i64 336, !36, i64 400, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !64, i64 524, !64, i64 528, !64, i64 532, !35, i64 536}
!387 = !{!388, !61, i64 10}
!388 = !{!"bKinematicConstraint", !35, i64 0, !61, i64 8, !61, i64 10, !61, i64 12, !61, i64 14, !36, i64 16, !35, i64 80, !36, i64 88, !64, i64 152, !64, i64 156, !64, i64 160, !36, i64 164, !61, i64 176, !61, i64 178, !64, i64 180}
!389 = !{!388, !61, i64 12}
!390 = distinct !{!390, !46, !47}
!391 = distinct !{!391, !46, !47}
!392 = distinct !{!392, !46, !47}
!393 = distinct !{!393, !46, !47}
!394 = distinct !{!394, !46, !47}
!395 = distinct !{!395, !46, !47}
!396 = distinct !{!396, !46, !47}
!397 = !{!299, !35, i64 0}
!398 = distinct !{!398, !46, !47}
!399 = !{!56, !36, i64 28}
!400 = distinct !{!400, !46, !47}
!401 = distinct !{!401, !46, !47}
!402 = distinct !{!402, !46, !47}
!403 = distinct !{!403, !46, !47}
!404 = distinct !{!404, !46, !47}
!405 = !{i32 0, i32 2}
!406 = distinct !{!406, !46, !47}
!407 = distinct !{!407, !46, !47}
!408 = distinct !{!408, !46, !47}
!409 = distinct !{!409, !46, !47}
!410 = !{!83, !40, i64 112}
!411 = !{!83, !36, i64 116}
!412 = distinct !{!412, !46, !47}
!413 = distinct !{!413, !46, !47}
!414 = distinct !{!414, !46, !47}
!415 = distinct !{!415, !46, !47}
!416 = distinct !{!416, !46, !47}
!417 = distinct !{!417, !46, !47}
!418 = !{!295, !35, i64 24}
!419 = distinct !{!419, !46, !47}
!420 = !{!421, !61, i64 528}
!421 = !{!"DriverVar", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !61, i64 528, !61, i64 530, !64, i64 532}
!422 = !{!423, !35, i64 0}
!423 = !{!"DriverTarget", !35, i64 0, !35, i64 8, !36, i64 16, !61, i64 48, !61, i64 50, !40, i64 52}
!424 = !{!423, !35, i64 8}
!425 = !{!423, !61, i64 50}
!426 = distinct !{!426, !46, !47}
!427 = !{!428, !35, i64 0}
!428 = !{!"EffectorWeights", !35, i64 0, !36, i64 8, !64, i64 64, !61, i64 68, !36, i64 70, !40, i64 76}
!429 = distinct !{!429, !46, !47}
!430 = distinct !{!430, !46, !47}
!431 = distinct !{!431, !46, !47}
!432 = !{!101, !35, i64 1240}
!433 = !{!434, !61, i64 4}
!434 = !{!"PartDeflect", !40, i64 0, !61, i64 4, !61, i64 6, !61, i64 8, !61, i64 10, !61, i64 12, !61, i64 14, !61, i64 16, !61, i64 18, !64, i64 20, !64, i64 24, !64, i64 28, !64, i64 32, !64, i64 36, !64, i64 40, !64, i64 44, !64, i64 48, !64, i64 52, !64, i64 56, !64, i64 60, !64, i64 64, !64, i64 68, !64, i64 72, !64, i64 76, !64, i64 80, !64, i64 84, !64, i64 88, !64, i64 92, !64, i64 96, !64, i64 100, !64, i64 104, !64, i64 108, !64, i64 112, !64, i64 116, !64, i64 120, !64, i64 124, !35, i64 128, !35, i64 136, !64, i64 144, !40, i64 148, !35, i64 152}
!435 = !{!434, !61, i64 6}
!436 = !{!370, !35, i64 120}
!437 = !{!253, !61, i64 172}
!438 = distinct !{!438, !46, !47}
!439 = distinct !{!439, !46, !47}
!440 = distinct !{!440, !46, !47}
!441 = distinct !{!441, !46, !47}
