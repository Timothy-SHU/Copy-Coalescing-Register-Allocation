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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.DagNode = type { i32, i16, float, float, float, ptr, ptr, i32, i32, i32, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i16 }
%struct.DagAdjList = type { ptr, i16, i32, i32, ptr, ptr }
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
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
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
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_init() local_unnamed_addr #0 {
  tail call void @BLI_spin_init(ptr noundef nonnull @threaded_update_lock) #20
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_exit() local_unnamed_addr #0 {
  tail call void @BLI_spin_end(ptr noundef nonnull @threaded_update_lock) #20
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @queue_create(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 32, ptr noundef nonnull @.str) #20
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 32, ptr noundef nonnull @.str) #20
  %6 = getelementptr inbounds %struct.DagNodeQueue, ptr %3, i64 0, i32 4
  store ptr %5, ptr %6, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 16, ptr noundef nonnull @.str.1) #20
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
  %15 = tail call ptr %14(i64 noundef 16, ptr noundef nonnull @.str.2) #20
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
  %23 = phi ptr [ %9, %1 ], [ %16, %12 ]
  %24 = getelementptr inbounds %struct.DagNodeQueue, ptr %23, i64 0, i32 2
  store i32 %0, ptr %24, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @queue_raz(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.DagNodeQueue, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %6, i64 0, i32 1
  %9 = select i1 %7, ptr %4, ptr %8
  store ptr %2, ptr %9, align 8, !tbaa !34
  store ptr null, ptr %2, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.DagNodeQueue, ptr %4, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !47
  %12 = add nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %1, %16
  %17 = phi ptr [ %21, %16 ], [ %14, %1 ]
  %18 = phi i32 [ %19, %16 ], [ %12, %1 ]
  store ptr null, ptr %17, align 8, !tbaa !48
  %19 = add nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %16, !llvm.loop !49

23:                                               ; preds = %16, %1
  %24 = phi i32 [ %12, %1 ], [ %19, %16 ]
  %25 = phi ptr [ %2, %1 ], [ %17, %16 ]
  store i32 %24, ptr %10, align 8, !tbaa !47
  store ptr %25, ptr %5, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 2
  store i32 0, ptr %26, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @queue_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef nonnull %5) #20
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %4, !llvm.loop !50

10:                                               ; preds = %4, %1
  %11 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %10, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %16) #20
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %15, !llvm.loop !51

21:                                               ; preds = %15
  %22 = load ptr, ptr %11, align 8, !tbaa !38
  br label %23

23:                                               ; preds = %21, %10
  %24 = phi ptr [ %22, %21 ], [ %12, %10 ]
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef %24) #20
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_queue(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load ptr, ptr @stderr, align 8, !tbaa !34
  %6 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 18, i64 1, ptr %5) #21
  br label %59

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
  %21 = load i32, ptr %20, align 8, !tbaa !47
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 8, !tbaa !47
  br label %43

23:                                               ; preds = %7
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %25 = tail call ptr %24(i64 noundef 16, ptr noundef nonnull @.str.4) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %26 = load ptr, ptr %8, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.DagNodeQueue, ptr %26, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !41
  store ptr %25, ptr %26, align 8, !tbaa !42
  br label %28

28:                                               ; preds = %23, %28
  %29 = phi i32 [ 1, %23 ], [ %36, %28 ]
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %31 = tail call ptr %30(i64 noundef 16, ptr noundef nonnull @.str.5) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %32 = load ptr, ptr %8, align 8, !tbaa !38
  %33 = getelementptr inbounds %struct.DagNodeQueue, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %34, i64 0, i32 1
  store ptr %31, ptr %35, align 8, !tbaa !43
  store ptr %31, ptr %33, align 8, !tbaa !41
  %36 = add nuw nsw i32 %29, 1
  %37 = icmp eq i32 %36, 50
  br i1 %37, label %38, label %28, !llvm.loop !52

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.DagNodeQueue, ptr %32, i64 0, i32 2
  store i32 50, ptr %39, align 8, !tbaa !47
  %40 = load ptr, ptr %32, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  store ptr %42, ptr %32, align 8, !tbaa !42
  br label %43

43:                                               ; preds = %38, %19
  %44 = phi ptr [ %10, %19 ], [ %40, %38 ]
  %45 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %44, i64 0, i32 1
  store ptr null, ptr %45, align 8, !tbaa !43
  store ptr %1, ptr %44, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !41
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %47, i64 0, i32 1
  store ptr %44, ptr %50, align 8, !tbaa !43
  br label %51

51:                                               ; preds = %49, %43
  store ptr %44, ptr %46, align 8, !tbaa !41
  %52 = load ptr, ptr %0, align 8, !tbaa !42
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store ptr %44, ptr %0, align 8, !tbaa !42
  br label %55

55:                                               ; preds = %54, %51
  %56 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !47
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !47
  br label %59

59:                                               ; preds = %55, %4
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
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
  %16 = load i32, ptr %15, align 8, !tbaa !47
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 8, !tbaa !47
  br label %38

18:                                               ; preds = %2
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %20 = tail call ptr %19(i64 noundef 16, ptr noundef nonnull @.str.4) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %21 = load ptr, ptr %3, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.DagNodeQueue, ptr %21, i64 0, i32 1
  store ptr %20, ptr %22, align 8, !tbaa !41
  store ptr %20, ptr %21, align 8, !tbaa !42
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i32 [ 1, %18 ], [ %31, %23 ]
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %26 = tail call ptr %25(i64 noundef 16, ptr noundef nonnull @.str.5) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %27 = load ptr, ptr %3, align 8, !tbaa !38
  %28 = getelementptr inbounds %struct.DagNodeQueue, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %29, i64 0, i32 1
  store ptr %26, ptr %30, align 8, !tbaa !43
  store ptr %26, ptr %28, align 8, !tbaa !41
  %31 = add nuw nsw i32 %24, 1
  %32 = icmp eq i32 %31, 50
  br i1 %32, label %33, label %23, !llvm.loop !53

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.DagNodeQueue, ptr %27, i64 0, i32 2
  store i32 50, ptr %34, align 8, !tbaa !47
  %35 = load ptr, ptr %27, align 8, !tbaa !42
  %36 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  store ptr %37, ptr %27, align 8, !tbaa !42
  br label %38

38:                                               ; preds = %33, %14
  %39 = phi ptr [ %5, %14 ], [ %35, %33 ]
  %40 = load ptr, ptr %0, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %39, i64 0, i32 1
  store ptr %40, ptr %41, align 8, !tbaa !43
  store ptr %1, ptr %39, align 8, !tbaa !48
  store ptr %39, ptr %0, align 8, !tbaa !42
  %42 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !41
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store ptr %39, ptr %42, align 8, !tbaa !41
  br label %46

46:                                               ; preds = %45, %38
  %47 = getelementptr inbounds %struct.DagNodeQueue, ptr %0, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !47
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !47
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
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
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %12, align 8, !tbaa !47
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
  %27 = load ptr, ptr %2, align 8, !tbaa !48
  %28 = getelementptr inbounds %struct.DagNodeQueue, ptr %16, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %29 = load i32, ptr %28, align 8, !tbaa !47
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !47
  br label %34

31:                                               ; preds = %1
  %32 = load ptr, ptr @stderr, align 8, !tbaa !34
  %33 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 12, i64 1, ptr %32) #21
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi ptr [ %27, %26 ], [ null, %31 ]
  ret ptr %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_top_node_queue(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @dag_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 40, ptr noundef nonnull @.str.7) #20
  %3 = getelementptr inbounds %struct.DagForest, ptr %2, i64 0, i32 5
  store i8 1, ptr %3, align 4, !tbaa !54
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_dag(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 31
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free_forest(ptr noundef nonnull %5) #22
  br label %10

8:                                                ; preds = %3
  %9 = tail call ptr @dag_init() #22
  store ptr %9, ptr %4, align 8, !tbaa !57
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi ptr [ %5, %7 ], [ %9, %8 ]
  tail call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 16717, i8 noundef zeroext 0) #20
  tail call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 16716, i8 noundef zeroext 0) #20
  tail call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 21063, i8 noundef zeroext 0) #20
  %12 = tail call ptr @dag_add_node(ptr noundef %11, ptr noundef nonnull %1) #22
  %13 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %10
  %17 = sext i16 %2 to i32
  br label %18

18:                                               ; preds = %16, %31
  %19 = phi ptr [ %14, %16 ], [ %32, %31 ]
  %20 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  tail call fastcc void @build_dag_object(ptr noundef %11, ptr noundef %12, ptr noundef %1, ptr noundef %21, i32 noundef %17) #22
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call fastcc void @build_dag_object(ptr noundef %11, ptr noundef %12, ptr noundef %1, ptr noundef nonnull %23, i32 noundef %17) #22
  br label %26

26:                                               ; preds = %25, %18
  %27 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 112
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call fastcc void @build_dag_group(ptr noundef %11, ptr noundef %12, ptr noundef %1, ptr noundef nonnull %28, i16 noundef signext %2) #22
  br label %31

31:                                               ; preds = %26, %30
  %32 = load ptr, ptr %19, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %18, !llvm.loop !86

34:                                               ; preds = %31, %10
  tail call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 21063, i8 noundef zeroext 0) #20
  %35 = load ptr, ptr %4, align 8, !tbaa !57
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %103, label %39

38:                                               ; preds = %70
  br i1 %37, label %103, label %74

39:                                               ; preds = %34, %70
  %40 = phi ptr [ %72, %70 ], [ %36, %34 ]
  %41 = getelementptr inbounds %struct.DagNode, ptr %40, i64 0, i32 1
  %42 = load i16, ptr %41, align 4, !tbaa !87
  %43 = icmp eq i16 %42, 16975
  br i1 %43, label %44, label %70

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.DagNode, ptr %40, i64 0, i32 16
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %64, label %48

48:                                               ; preds = %44, %60
  %49 = phi ptr [ %62, %60 ], [ %46, %44 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !89
  %51 = getelementptr inbounds %struct.DagNode, ptr %50, i64 0, i32 1
  %52 = load i16, ptr %51, align 4, !tbaa !87
  %53 = icmp eq i16 %52, 16975
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.DagAdjList, ptr %49, i64 0, i32 1
  %56 = load i16, ptr %55, align 8, !tbaa !91
  %57 = sext i16 %56 to i32
  %58 = load i32, ptr %50, align 8, !tbaa !92
  %59 = or i32 %58, %57
  store i32 %59, ptr %50, align 8, !tbaa !92
  br label %60

60:                                               ; preds = %48, %54
  %61 = getelementptr inbounds %struct.DagAdjList, ptr %49, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %48, !llvm.loop !93

64:                                               ; preds = %60, %44
  %65 = getelementptr inbounds %struct.DagNode, ptr %40, i64 0, i32 10
  %66 = load i64, ptr %65, align 8, !tbaa !94
  %67 = getelementptr inbounds %struct.DagNode, ptr %40, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !95
  %69 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 122
  store i64 %66, ptr %69, align 8, !tbaa !96
  br label %70

70:                                               ; preds = %39, %64
  %71 = getelementptr inbounds %struct.DagNode, ptr %40, i64 0, i32 18
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %38, label %39, !llvm.loop !97

74:                                               ; preds = %38, %99
  %75 = phi ptr [ %101, %99 ], [ %36, %38 ]
  %76 = getelementptr inbounds %struct.DagNode, ptr %75, i64 0, i32 1
  %77 = load i16, ptr %76, align 4, !tbaa !87
  %78 = icmp eq i16 %77, 16975
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.DagNode, ptr %75, i64 0, i32 16
  %81 = load ptr, ptr %80, align 8, !tbaa !34
  %82 = icmp eq ptr %81, null
  br i1 %82, label %99, label %83

83:                                               ; preds = %79, %95
  %84 = phi ptr [ %97, %95 ], [ %81, %79 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !89
  %86 = getelementptr inbounds %struct.DagNode, ptr %85, i64 0, i32 1
  %87 = load i16, ptr %86, align 4, !tbaa !87
  %88 = icmp eq i16 %87, 16975
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i32, ptr %85, align 8, !tbaa !92
  %91 = getelementptr inbounds %struct.DagAdjList, ptr %84, i64 0, i32 1
  %92 = load i16, ptr %91, align 8, !tbaa !91
  %93 = trunc i32 %90 to i16
  %94 = or i16 %92, %93
  store i16 %94, ptr %91, align 8, !tbaa !91
  br label %95

95:                                               ; preds = %83, %89
  %96 = getelementptr inbounds %struct.DagAdjList, ptr %84, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %83, !llvm.loop !98

99:                                               ; preds = %95, %79, %74
  %100 = getelementptr inbounds %struct.DagNode, ptr %75, i64 0, i32 18
  %101 = load ptr, ptr %100, align 8, !tbaa !34
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %74, !llvm.loop !99

103:                                              ; preds = %99, %34, %38
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_forest(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !100
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1, %25
  %5 = phi ptr [ %27, %25 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %4 ]
  %11 = getelementptr inbounds %struct.DagAdjList, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %10) #20
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %9, !llvm.loop !103

15:                                               ; preds = %9, %4
  %16 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !104
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %22, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.DagAdjList, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef nonnull %20) #20
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %19, !llvm.loop !105

25:                                               ; preds = %19, %15
  %26 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 18
  %27 = load ptr, ptr %26, align 8, !tbaa !106
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %5) #20
  %29 = icmp eq ptr %27, null
  br i1 %29, label %30, label %4, !llvm.loop !107

30:                                               ; preds = %25, %1
  %31 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !108
  tail call void @BLI_ghash_free(ptr noundef %32, ptr noundef null, ptr noundef null) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BKE_main_id_tag_idcode(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @dag_add_node(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 120, ptr noundef nonnull @.str.8) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DagNode, ptr %4, i64 0, i32 5
  store ptr %1, ptr %7, align 8, !tbaa !95
  store i32 0, ptr %4, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 4, !tbaa !54
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !109
  %14 = getelementptr inbounds %struct.DagNode, ptr %4, i64 0, i32 1
  store i16 %13, ptr %14, align 4, !tbaa !87
  br label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !110
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  br i1 %18, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %19, align 8, !tbaa !111
  %22 = getelementptr inbounds %struct.DagNode, ptr %21, i64 0, i32 18
  store ptr %4, ptr %22, align 8, !tbaa !106
  store ptr %4, ptr %19, align 8, !tbaa !111
  %23 = add nsw i32 %17, 1
  br label %25

24:                                               ; preds = %15
  store ptr %4, ptr %19, align 8, !tbaa !111
  store ptr %4, ptr %0, align 8, !tbaa !100
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ 1, %24 ], [ %23, %20 ]
  store i32 %26, ptr %16, align 8, !tbaa !110
  %27 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !108
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.9) #20
  store ptr %31, ptr %27, align 8, !tbaa !108
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi ptr [ %31, %30 ], [ %28, %25 ]
  tail call void @BLI_ghash_insert(ptr noundef %33, ptr noundef %1, ptr noundef nonnull %4) #20
  br label %34

34:                                               ; preds = %32, %2
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_dag_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !112 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = tail call ptr @dag_get_node(ptr noundef %0, ptr noundef %3) #22
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  %12 = icmp eq ptr %11, null
  %13 = and i32 %4, 2
  %14 = icmp eq i32 %13, 0
  %15 = or i1 %14, %12
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  %17 = tail call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %11) #22
  tail call void @dag_add_relation(ptr poison, ptr noundef %9, ptr noundef %17, i16 noundef signext 2, ptr noundef nonnull @.str.24) #22
  %18 = getelementptr inbounds %struct.DagNode, ptr %17, i64 0, i32 6
  store ptr %3, ptr %18, align 8, !tbaa !114
  %19 = getelementptr inbounds %struct.DagNode, ptr %17, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !115
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !115
  br label %22

22:                                               ; preds = %16, %5
  %23 = getelementptr inbounds %struct.DagNode, ptr %9, i64 0, i32 10
  store i64 0, ptr %23, align 8, !tbaa !94
  %24 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !116
  %26 = icmp eq i16 %25, 25
  br i1 %26, label %27, label %93

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %29 = load ptr, ptr %28, align 8, !tbaa !117
  %30 = icmp eq ptr %29, null
  br i1 %30, label %93, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %29, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %93, label %37

34:                                               ; preds = %90, %37
  %35 = load ptr, ptr %38, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %93, label %37, !llvm.loop !118

37:                                               ; preds = %31, %34
  %38 = phi ptr [ %35, %34 ], [ %32, %31 ]
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %34, label %42

42:                                               ; preds = %37, %90
  %43 = phi ptr [ %91, %90 ], [ %40, %37 ]
  %44 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %43) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %90, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %44, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !119
  %49 = icmp eq ptr %48, null
  br i1 %49, label %90, label %50

50:                                               ; preds = %46
  %51 = call i32 %48(ptr noundef nonnull %43, ptr noundef nonnull %6) #20
  %52 = load ptr, ptr %6, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %85, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %44, i64 0, i32 2
  %56 = getelementptr inbounds %struct.bConstraint, ptr %43, i64 0, i32 3
  br label %57

57:                                               ; preds = %54, %82
  %58 = phi ptr [ %52, %54 ], [ %83, %82 ]
  %59 = getelementptr inbounds %struct.bConstraintTarget, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !121
  %61 = icmp eq ptr %60, null
  %62 = icmp eq ptr %60, %3
  %63 = or i1 %61, %62
  br i1 %63, label %82, label %64

64:                                               ; preds = %57
  %65 = call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %60) #22
  %66 = getelementptr inbounds %struct.bConstraintTarget, ptr %58, i64 0, i32 3
  %67 = load i8, ptr %66, align 8, !tbaa !123
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %64
  call void @dag_add_relation(ptr poison, ptr noundef %65, ptr noundef %9, i16 noundef signext 40, ptr noundef nonnull %55) #22
  %70 = load ptr, ptr %59, align 8, !tbaa !121
  %71 = getelementptr inbounds %struct.Object, ptr %70, i64 0, i32 3
  %72 = load i16, ptr %71, align 8, !tbaa !116
  %73 = icmp eq i16 %72, 1
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.DagNode, ptr %65, i64 0, i32 10
  %76 = load i64, ptr %75, align 8, !tbaa !94
  %77 = or i64 %76, 4
  store i64 %77, ptr %75, align 8, !tbaa !94
  br label %82

78:                                               ; preds = %64
  %79 = load i16, ptr %56, align 8, !tbaa !124
  switch i16 %79, label %81 [
    i16 4, label %80
    i16 18, label %80
    i16 22, label %80
  ]

80:                                               ; preds = %78, %78, %78
  call void @dag_add_relation(ptr poison, ptr noundef %65, ptr noundef %9, i16 noundef signext 40, ptr noundef nonnull %55) #22
  br label %82

81:                                               ; preds = %78
  call void @dag_add_relation(ptr poison, ptr noundef %65, ptr noundef %9, i16 noundef signext 8, ptr noundef nonnull %55) #22
  br label %82

82:                                               ; preds = %57, %80, %81, %69, %74
  %83 = load ptr, ptr %58, align 8, !tbaa !34
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %57, !llvm.loop !126

85:                                               ; preds = %82, %50
  %86 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %44, i64 0, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !127
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  call void %87(ptr noundef nonnull %43, ptr noundef nonnull %6, i8 noundef zeroext 1) #20
  br label %90

90:                                               ; preds = %85, %89, %46, %42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  %91 = load ptr, ptr %43, align 8, !tbaa !34
  %92 = icmp eq ptr %91, null
  br i1 %92, label %34, label %42, !llvm.loop !128

93:                                               ; preds = %34, %31, %27, %22
  %94 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !129
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i16, ptr %24, align 8, !tbaa !116
  %99 = icmp eq i16 %98, 25
  %100 = zext i1 %99 to i32
  call fastcc void @dag_add_driver_relation(ptr noundef nonnull %95, ptr noundef %0, ptr noundef %9, i32 noundef %100) #22
  br label %101

101:                                              ; preds = %97, %93
  %102 = call ptr @BKE_key_from_object(ptr noundef nonnull %3) #20
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.Key, ptr %102, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !130
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call fastcc void @dag_add_driver_relation(ptr noundef nonnull %106, ptr noundef %0, ptr noundef %9, i32 noundef 1) #22
  br label %109

109:                                              ; preds = %108, %104, %101
  %110 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 26
  %111 = load ptr, ptr %110, align 8, !tbaa !132
  %112 = icmp eq ptr %111, null
  br i1 %112, label %125, label %113

113:                                              ; preds = %109, %122
  %114 = phi ptr [ %123, %122 ], [ %111, %109 ]
  %115 = getelementptr inbounds %struct.ModifierData, ptr %114, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !133
  %117 = call ptr @modifierType_getInfo(i32 noundef %116) #20
  %118 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %117, i64 0, i32 16
  %119 = load ptr, ptr %118, align 8, !tbaa !135
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %113
  call void %119(ptr noundef nonnull %114, ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %9) #20
  br label %122

122:                                              ; preds = %121, %113
  %123 = load ptr, ptr %114, align 8, !tbaa !137
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %113, !llvm.loop !138

125:                                              ; preds = %122, %109
  %126 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 9
  %127 = load ptr, ptr %126, align 8, !tbaa !139
  %128 = icmp eq ptr %127, null
  br i1 %128, label %164, label %129

129:                                              ; preds = %125
  %130 = call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %127) #22
  %131 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 4
  %132 = load i16, ptr %131, align 2, !tbaa !140
  switch i16 %132, label %139 [
    i16 4, label %133
    i16 5, label %134
    i16 6, label %134
    i16 7, label %138
  ]

133:                                              ; preds = %129
  call void @dag_add_relation(ptr poison, ptr noundef %130, ptr noundef %9, i16 noundef signext 36, ptr noundef nonnull @.str.25) #22
  br label %154

134:                                              ; preds = %129, %129
  call void @dag_add_relation(ptr poison, ptr noundef %130, ptr noundef %9, i16 noundef signext 20, ptr noundef nonnull @.str.26) #22
  %135 = getelementptr inbounds %struct.DagNode, ptr %130, i64 0, i32 10
  %136 = load i64, ptr %135, align 8, !tbaa !94
  %137 = or i64 %136, 128
  store i64 %137, ptr %135, align 8, !tbaa !94
  br label %154

138:                                              ; preds = %129
  call void @dag_add_relation(ptr poison, ptr noundef %130, ptr noundef %9, i16 noundef signext 20, ptr noundef nonnull @.str.27) #22
  br label %154

139:                                              ; preds = %129
  %140 = load ptr, ptr %126, align 8, !tbaa !139
  %141 = getelementptr inbounds %struct.Object, ptr %140, i64 0, i32 3
  %142 = load i16, ptr %141, align 8, !tbaa !116
  switch i16 %142, label %153 [
    i16 22, label %143
    i16 2, label %144
  ]

143:                                              ; preds = %139
  call void @dag_add_relation(ptr poison, ptr noundef %130, ptr noundef %9, i16 noundef signext 36, ptr noundef nonnull @.str.28) #22
  br label %154

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.Object, ptr %140, i64 0, i32 19
  %146 = load ptr, ptr %145, align 8, !tbaa !113
  %147 = getelementptr inbounds %struct.Curve, ptr %146, i64 0, i32 23
  %148 = load i32, ptr %147, align 4, !tbaa !141
  %149 = and i32 %148, 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %144
  call void @dag_add_relation(ptr poison, ptr noundef %130, ptr noundef %9, i16 noundef signext 20, ptr noundef nonnull @.str.29) #22
  br label %154

152:                                              ; preds = %144
  call void @dag_add_relation(ptr poison, ptr noundef %130, ptr noundef %9, i16 noundef signext 4, ptr noundef nonnull @.str.29) #22
  br label %154

153:                                              ; preds = %139
  call void @dag_add_relation(ptr poison, ptr noundef %130, ptr noundef %9, i16 noundef signext 4, ptr noundef nonnull @.str.25) #22
  br label %154

154:                                              ; preds = %151, %152, %143, %153, %138, %134, %133
  %155 = load i16, ptr %24, align 8, !tbaa !116
  %156 = icmp eq i16 %155, 5
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load ptr, ptr %126, align 8, !tbaa !139
  %159 = getelementptr inbounds %struct.Object, ptr %158, i64 0, i32 55
  %160 = load i16, ptr %159, align 8, !tbaa !144
  %161 = and i16 %160, 16
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %157
  call void @dag_add_relation(ptr poison, ptr noundef %130, ptr noundef %9, i16 noundef signext 36, ptr noundef nonnull @.str.30) #22
  br label %164

164:                                              ; preds = %154, %157, %163, %125
  %165 = phi i32 [ 1, %125 ], [ 0, %163 ], [ 0, %157 ], [ 0, %154 ]
  %166 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 11
  %167 = load ptr, ptr %166, align 8, !tbaa !82
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %167) #22
  call void @dag_add_relation(ptr poison, ptr noundef %9, ptr noundef %170, i16 noundef signext 36, ptr noundef nonnull @.str.31) #22
  br label %171

171:                                              ; preds = %169, %164
  %172 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %173 = load i16, ptr %172, align 8, !tbaa !144
  %174 = and i16 %173, 256
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %194, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 112
  %178 = load ptr, ptr %177, align 8, !tbaa !85
  %179 = icmp eq ptr %178, null
  br i1 %179, label %194, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.Group, ptr %178, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !34
  %183 = icmp eq ptr %182, null
  br i1 %183, label %194, label %184

184:                                              ; preds = %180, %191
  %185 = phi ptr [ %192, %191 ], [ %182, %180 ]
  %186 = getelementptr inbounds %struct.GroupObject, ptr %185, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !145
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %184
  %190 = call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %187) #22
  call void @dag_add_relation(ptr poison, ptr noundef %190, ptr noundef %9, i16 noundef signext 4, ptr noundef nonnull @.str.32) #22
  br label %191

191:                                              ; preds = %184, %189
  %192 = load ptr, ptr %185, align 8, !tbaa !34
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %184, !llvm.loop !147

194:                                              ; preds = %191, %180, %176, %171
  %195 = load i16, ptr %24, align 8, !tbaa !116
  switch i16 %195, label %219 [
    i16 1, label %196
    i16 2, label %196
    i16 22, label %196
  ]

196:                                              ; preds = %194, %194, %194
  %197 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 109
  %198 = load ptr, ptr %197, align 8, !tbaa !148
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %209

200:                                              ; preds = %196
  %201 = call zeroext i8 @modifiers_isModifierEnabled(ptr noundef nonnull %3, i32 noundef 10) #20
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = call zeroext i8 @modifiers_isModifierEnabled(ptr noundef nonnull %3, i32 noundef 22) #20
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = call zeroext i8 @modifiers_isModifierEnabled(ptr noundef nonnull %3, i32 noundef 40) #20
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %206, %203, %200, %196
  call fastcc void @dag_add_collision_field_relation(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %9, i32 noundef 0, i8 noundef zeroext 0) #22
  br label %219

210:                                              ; preds = %206
  %211 = call zeroext i8 @modifiers_isModifierEnabled(ptr noundef nonnull %3, i32 noundef 31) #20
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  call fastcc void @dag_add_collision_field_relation(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %9, i32 noundef 13, i8 noundef zeroext 0) #22
  br label %219

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 128
  %216 = load ptr, ptr %215, align 8, !tbaa !149
  %217 = icmp eq ptr %216, null
  br i1 %217, label %219, label %218

218:                                              ; preds = %214
  call fastcc void @dag_add_collision_field_relation(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %9, i32 noundef 0, i8 noundef zeroext 1) #22
  br label %219

219:                                              ; preds = %194, %209, %214, %218, %213
  %220 = load ptr, ptr %10, align 8, !tbaa !113
  %221 = icmp eq ptr %220, null
  br i1 %221, label %226, label %222

222:                                              ; preds = %219
  %223 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %220) #20
  %224 = icmp eq ptr %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %222
  call fastcc void @dag_add_driver_relation(ptr noundef nonnull %223, ptr noundef %0, ptr noundef %9, i32 noundef 1) #22
  br label %226

226:                                              ; preds = %222, %225, %219
  %227 = load i16, ptr %24, align 8, !tbaa !116
  switch i16 %227, label %284 [
    i16 11, label %228
    i16 5, label %235
    i16 2, label %240
    i16 4, label %240
  ]

228:                                              ; preds = %226
  %229 = load ptr, ptr %10, align 8, !tbaa !113
  %230 = getelementptr inbounds %struct.Camera, ptr %229, i64 0, i32 17
  %231 = load ptr, ptr %230, align 8, !tbaa !150
  %232 = icmp eq ptr %231, null
  br i1 %232, label %284, label %233

233:                                              ; preds = %228
  %234 = call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %231) #22
  call void @dag_add_relation(ptr poison, ptr noundef %234, ptr noundef %9, i16 noundef signext 4, ptr noundef nonnull @.str.33) #22
  br label %284

235:                                              ; preds = %226
  %236 = call ptr @BKE_mball_basis_find(ptr noundef %2, ptr noundef nonnull %3) #20
  %237 = icmp eq ptr %236, %3
  br i1 %237, label %284, label %238

238:                                              ; preds = %235
  %239 = call ptr @dag_get_node(ptr noundef %0, ptr noundef %236) #22
  call void @dag_add_relation(ptr poison, ptr noundef %9, ptr noundef %239, i16 noundef signext 40, ptr noundef nonnull @.str.34) #22
  br label %284

240:                                              ; preds = %226, %226
  %241 = load ptr, ptr %10, align 8, !tbaa !113
  %242 = getelementptr inbounds %struct.Curve, ptr %241, i64 0, i32 5
  %243 = load ptr, ptr %242, align 8, !tbaa !152
  %244 = icmp eq ptr %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %240
  %246 = call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %243) #22
  call void @dag_add_relation(ptr poison, ptr noundef %246, ptr noundef %9, i16 noundef signext 40, ptr noundef nonnull @.str.35) #22
  br label %247

247:                                              ; preds = %245, %240
  %248 = getelementptr inbounds %struct.Curve, ptr %241, i64 0, i32 6
  %249 = load ptr, ptr %248, align 8, !tbaa !153
  %250 = icmp eq ptr %249, null
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %249) #22
  call void @dag_add_relation(ptr poison, ptr noundef %252, ptr noundef %9, i16 noundef signext 40, ptr noundef nonnull @.str.36) #22
  br label %253

253:                                              ; preds = %251, %247
  %254 = load i16, ptr %24, align 8, !tbaa !116
  %255 = icmp eq i16 %254, 4
  br i1 %255, label %256, label %284

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.Curve, ptr %241, i64 0, i32 54
  %258 = load i8, ptr %257, align 8, !tbaa !123
  %259 = icmp eq i8 %258, 10
  br i1 %259, label %275, label %260

260:                                              ; preds = %256
  %261 = load ptr, ptr @G, align 8, !tbaa !154
  %262 = getelementptr inbounds %struct.Main, ptr %261, i64 0, i32 46
  %263 = load ptr, ptr %262, align 8, !tbaa !156
  %264 = call ptr @object_duplilist(ptr noundef %263, ptr noundef %2, ptr noundef nonnull %3) #20
  %265 = load ptr, ptr %264, align 8, !tbaa !34
  %266 = icmp eq ptr %265, null
  br i1 %266, label %274, label %267

267:                                              ; preds = %260, %267
  %268 = phi ptr [ %272, %267 ], [ %265, %260 ]
  %269 = getelementptr inbounds %struct.DupliObject, ptr %268, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !158
  %271 = call ptr @dag_get_node(ptr noundef %0, ptr noundef %270) #22
  call void @dag_add_relation(ptr poison, ptr noundef %9, ptr noundef %271, i16 noundef signext 40, ptr noundef nonnull @.str.37) #22
  %272 = load ptr, ptr %268, align 8, !tbaa !34
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %267, !llvm.loop !160

274:                                              ; preds = %267, %260
  call void @free_object_duplilist(ptr noundef nonnull %264) #20
  br label %275

275:                                              ; preds = %274, %256
  %276 = getelementptr inbounds %struct.Curve, ptr %241, i64 0, i32 7
  %277 = load ptr, ptr %276, align 8, !tbaa !161
  %278 = icmp eq ptr %277, null
  br i1 %278, label %284, label %279

279:                                              ; preds = %275
  %280 = call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %277) #22
  %281 = getelementptr inbounds %struct.DagNode, ptr %280, i64 0, i32 21
  %282 = load i16, ptr %281, align 2, !tbaa !162
  %283 = or i16 %282, 1
  store i16 %283, ptr %281, align 2, !tbaa !162
  call void @dag_add_relation(ptr poison, ptr noundef %280, ptr noundef %9, i16 noundef signext 40, ptr noundef nonnull @.str.38) #22
  br label %284

284:                                              ; preds = %253, %279, %275, %235, %238, %228, %233, %226
  %285 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %286 = load i32, ptr %285, align 8, !tbaa !163
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %300, label %288

288:                                              ; preds = %284
  %289 = icmp slt i32 %286, 1
  br i1 %289, label %305, label %290

290:                                              ; preds = %288, %296
  %291 = phi i32 [ %297, %296 ], [ 1, %288 ]
  %292 = trunc i32 %291 to i16
  %293 = call ptr @give_current_material(ptr noundef nonnull %3, i16 noundef signext %292) #20
  %294 = icmp eq ptr %293, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %290
  call fastcc void @dag_add_material_driver_relations(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %293) #22
  br label %296

296:                                              ; preds = %295, %290
  %297 = add nuw nsw i32 %291, 1
  %298 = load i32, ptr %285, align 8, !tbaa !163
  %299 = icmp slt i32 %291, %298
  br i1 %299, label %290, label %305, !llvm.loop !164

300:                                              ; preds = %284
  %301 = load i16, ptr %24, align 8, !tbaa !116
  %302 = icmp eq i16 %301, 10
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  %304 = load ptr, ptr %10, align 8, !tbaa !113
  call fastcc void @dag_add_lamp_driver_relations(ptr noundef %0, ptr noundef %9, ptr noundef %304) #22
  br label %305

305:                                              ; preds = %296, %288, %300, %303
  %306 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 109
  %307 = load ptr, ptr %306, align 8, !tbaa !148
  %308 = icmp eq ptr %307, null
  br i1 %308, label %433, label %309

309:                                              ; preds = %305, %430
  %310 = phi ptr [ %431, %430 ], [ %307, %305 ]
  %311 = getelementptr inbounds %struct.ParticleSystem, ptr %310, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  store ptr null, ptr %7, align 8, !tbaa !34
  call void @dag_add_relation(ptr poison, ptr noundef %9, ptr noundef %9, i16 noundef signext 8, ptr noundef nonnull @.str.39) #22
  %313 = call i32 @psys_check_enabled(ptr noundef %3, ptr noundef nonnull %310) #20
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %430, label %315

315:                                              ; preds = %309
  %316 = getelementptr inbounds %struct.ParticleSettings, ptr %312, i64 0, i32 11
  %317 = load i16, ptr %316, align 8, !tbaa !167
  %318 = and i16 %317, -2
  %319 = icmp eq i16 %318, 2
  br i1 %319, label %320, label %342

320:                                              ; preds = %315
  %321 = getelementptr inbounds %struct.ParticleSystem, ptr %310, i64 0, i32 17
  %322 = load ptr, ptr %321, align 8, !tbaa !34
  %323 = icmp eq ptr %322, null
  br i1 %323, label %342, label %324

324:                                              ; preds = %320, %339
  %325 = phi ptr [ %340, %339 ], [ %322, %320 ]
  %326 = getelementptr inbounds %struct.ParticleTarget, ptr %325, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !169
  %328 = icmp eq ptr %327, null
  br i1 %328, label %339, label %329

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.Object, ptr %327, i64 0, i32 109
  %331 = getelementptr inbounds %struct.ParticleTarget, ptr %325, i64 0, i32 3
  %332 = load i32, ptr %331, align 8, !tbaa !171
  %333 = add nsw i32 %332, -1
  %334 = call ptr @BLI_findlink(ptr noundef nonnull %330, i32 noundef %333) #20
  %335 = icmp eq ptr %334, null
  br i1 %335, label %339, label %336

336:                                              ; preds = %329
  %337 = load ptr, ptr %326, align 8, !tbaa !169
  %338 = call ptr @dag_get_node(ptr noundef %0, ptr noundef %337) #22
  call void @dag_add_relation(ptr poison, ptr noundef %338, ptr noundef %9, i16 noundef signext 40, ptr noundef nonnull @.str.40) #22
  br label %339

339:                                              ; preds = %324, %329, %336
  %340 = load ptr, ptr %325, align 8, !tbaa !34
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %324, !llvm.loop !172

342:                                              ; preds = %339, %320, %315
  %343 = getelementptr inbounds %struct.ParticleSettings, ptr %312, i64 0, i32 21
  %344 = load i16, ptr %343, align 8, !tbaa !173
  %345 = icmp eq i16 %344, 7
  br i1 %345, label %346, label %359

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.ParticleSettings, ptr %312, i64 0, i32 125
  %348 = load ptr, ptr %347, align 8, !tbaa !174
  %349 = icmp eq ptr %348, null
  br i1 %349, label %357, label %350

350:                                              ; preds = %346
  %351 = call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %348) #22
  call void @dag_add_relation(ptr poison, ptr noundef %9, ptr noundef %351, i16 noundef signext 4, ptr noundef nonnull @.str.41) #22
  %352 = load ptr, ptr %347, align 8, !tbaa !174
  %353 = getelementptr inbounds %struct.Object, ptr %352, i64 0, i32 3
  %354 = load i16, ptr %353, align 8, !tbaa !116
  %355 = icmp eq i16 %354, 5
  br i1 %355, label %356, label %357

356:                                              ; preds = %350
  call void @dag_add_relation(ptr poison, ptr noundef %9, ptr noundef %351, i16 noundef signext 32, ptr noundef nonnull @.str.41) #22
  br label %357

357:                                              ; preds = %346, %356, %350
  %358 = load i16, ptr %343, align 8, !tbaa !173
  br label %359

359:                                              ; preds = %357, %342
  %360 = phi i16 [ %358, %357 ], [ %344, %342 ]
  %361 = icmp eq i16 %360, 8
  br i1 %361, label %362, label %377

362:                                              ; preds = %359
  %363 = getelementptr inbounds %struct.ParticleSettings, ptr %312, i64 0, i32 122
  %364 = load ptr, ptr %363, align 8, !tbaa !175
  %365 = icmp eq ptr %364, null
  br i1 %365, label %377, label %366

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.Group, ptr %364, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !34
  %369 = icmp eq ptr %368, null
  br i1 %369, label %377, label %370

370:                                              ; preds = %366, %370
  %371 = phi ptr [ %375, %370 ], [ %368, %366 ]
  %372 = getelementptr inbounds %struct.GroupObject, ptr %371, i64 0, i32 2
  %373 = load ptr, ptr %372, align 8, !tbaa !145
  %374 = call ptr @dag_get_node(ptr noundef %0, ptr noundef %373) #22
  call void @dag_add_relation(ptr poison, ptr noundef %374, ptr noundef %9, i16 noundef signext 4, ptr noundef nonnull @.str.42) #22
  %375 = load ptr, ptr %371, align 8, !tbaa !34
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %370, !llvm.loop !176

377:                                              ; preds = %370, %366, %362, %359
  %378 = getelementptr inbounds %struct.ParticleSettings, ptr %312, i64 0, i32 4
  %379 = load ptr, ptr %378, align 8, !tbaa !177
  %380 = call ptr @pdInitEffectors(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %310, ptr noundef %379, i8 noundef zeroext 0) #20
  store ptr %380, ptr %7, align 8, !tbaa !34
  %381 = icmp eq ptr %380, null
  br i1 %381, label %397, label %382

382:                                              ; preds = %377
  %383 = load ptr, ptr %380, align 8, !tbaa !34
  %384 = icmp eq ptr %383, null
  br i1 %384, label %397, label %385

385:                                              ; preds = %382, %394
  %386 = phi ptr [ %395, %394 ], [ %383, %382 ]
  %387 = getelementptr inbounds %struct.EffectorCache, ptr %386, i64 0, i32 4
  %388 = load ptr, ptr %387, align 8, !tbaa !178
  %389 = icmp eq ptr %388, null
  br i1 %389, label %394, label %390

390:                                              ; preds = %385
  %391 = getelementptr inbounds %struct.EffectorCache, ptr %386, i64 0, i32 3
  %392 = load ptr, ptr %391, align 8, !tbaa !180
  %393 = call ptr @dag_get_node(ptr noundef %0, ptr noundef %392) #22
  call void @dag_add_relation(ptr poison, ptr noundef %393, ptr noundef %9, i16 noundef signext 40, ptr noundef nonnull @.str.43) #22
  br label %394

394:                                              ; preds = %385, %390
  %395 = load ptr, ptr %386, align 8, !tbaa !34
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %385, !llvm.loop !181

397:                                              ; preds = %394, %382, %377
  call void @pdEndEffectors(ptr noundef nonnull %7) #20
  %398 = getelementptr inbounds %struct.ParticleSettings, ptr %312, i64 0, i32 2
  %399 = load ptr, ptr %398, align 8, !tbaa !182
  %400 = icmp eq ptr %399, null
  br i1 %400, label %430, label %401

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.BoidSettings, ptr %399, i64 0, i32 22
  %403 = load ptr, ptr %402, align 8, !tbaa !34
  %404 = icmp eq ptr %403, null
  br i1 %404, label %430, label %408

405:                                              ; preds = %427, %408
  %406 = load ptr, ptr %409, align 8, !tbaa !34
  %407 = icmp eq ptr %406, null
  br i1 %407, label %430, label %408, !llvm.loop !183

408:                                              ; preds = %401, %405
  %409 = phi ptr [ %406, %405 ], [ %403, %401 ]
  %410 = getelementptr inbounds %struct.BoidState, ptr %409, i64 0, i32 2
  %411 = load ptr, ptr %410, align 8, !tbaa !34
  %412 = icmp eq ptr %411, null
  br i1 %412, label %405, label %413

413:                                              ; preds = %408, %427
  %414 = phi ptr [ %428, %427 ], [ %411, %408 ]
  %415 = getelementptr inbounds %struct.BoidRule, ptr %414, i64 0, i32 2
  %416 = load i32, ptr %415, align 8, !tbaa !184
  switch i32 %416, label %427 [
    i32 2, label %417
    i32 6, label %419
  ]

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %414, i64 0, i32 1
  br label %421

419:                                              ; preds = %413
  %420 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %414, i64 0, i32 1
  br label %421

421:                                              ; preds = %419, %417
  %422 = phi ptr [ %418, %417 ], [ %420, %419 ]
  %423 = load ptr, ptr %422, align 8, !tbaa !34
  %424 = icmp eq ptr %423, null
  br i1 %424, label %427, label %425

425:                                              ; preds = %421
  %426 = call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %423) #22
  call void @dag_add_relation(ptr poison, ptr noundef %426, ptr noundef %9, i16 noundef signext 8, ptr noundef nonnull @.str.44) #22
  br label %427

427:                                              ; preds = %413, %425, %421
  %428 = load ptr, ptr %414, align 8, !tbaa !34
  %429 = icmp eq ptr %428, null
  br i1 %429, label %405, label %413, !llvm.loop !186

430:                                              ; preds = %405, %401, %397, %309
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  %431 = load ptr, ptr %310, align 8, !tbaa !187
  %432 = icmp eq ptr %431, null
  br i1 %432, label %433, label %309, !llvm.loop !188

433:                                              ; preds = %430, %305
  %434 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 106
  %435 = load ptr, ptr %434, align 8, !tbaa !34
  %436 = icmp eq ptr %435, null
  br i1 %436, label %531, label %437

437:                                              ; preds = %433
  %438 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 2
  br label %439

439:                                              ; preds = %437, %527
  %440 = phi ptr [ %435, %437 ], [ %529, %527 ]
  %441 = phi i32 [ %165, %437 ], [ %528, %527 ]
  %442 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %440) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %443 = icmp eq ptr %442, null
  br i1 %443, label %527, label %444

444:                                              ; preds = %439
  %445 = load i16, ptr %442, align 8, !tbaa !189
  %446 = add i16 %445, -26
  %447 = icmp ult i16 %446, 3
  br i1 %447, label %448, label %481

448:                                              ; preds = %444
  switch i16 %445, label %480 [
    i16 26, label %449
    i16 28, label %474
  ]

449:                                              ; preds = %448
  %450 = getelementptr inbounds %struct.bConstraint, ptr %440, i64 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !190
  %452 = load ptr, ptr %451, align 8, !tbaa !191
  %453 = icmp eq ptr %452, null
  br i1 %453, label %454, label %459

454:                                              ; preds = %449
  %455 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %451, i64 0, i32 2
  %456 = load i32, ptr %455, align 8, !tbaa !193
  %457 = and i32 %456, 1
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %464, label %459

459:                                              ; preds = %454, %449
  %460 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %451, i64 0, i32 1
  %461 = load i8, ptr %460, align 8, !tbaa !123
  %462 = icmp ne i8 %461, 0
  %463 = zext i1 %462 to i32
  br label %464

464:                                              ; preds = %459, %454
  %465 = phi i32 [ 0, %454 ], [ %463, %459 ]
  %466 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %451, i64 0, i32 6
  %467 = load ptr, ptr %466, align 8, !tbaa !194
  %468 = icmp eq ptr %467, null
  br i1 %468, label %472, label %469

469:                                              ; preds = %464
  %470 = call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %467) #22
  %471 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %442, i64 0, i32 2
  call void @dag_add_relation(ptr poison, ptr noundef %470, ptr noundef %9, i16 noundef signext 20, ptr noundef nonnull %471) #22
  br label %472

472:                                              ; preds = %464, %469
  %473 = icmp eq i32 %465, 0
  br i1 %473, label %480, label %474

474:                                              ; preds = %448, %472
  %475 = load ptr, ptr %438, align 8, !tbaa !195
  %476 = icmp eq ptr %475, null
  br i1 %476, label %480, label %477

477:                                              ; preds = %474
  %478 = call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %475) #22
  %479 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %442, i64 0, i32 2
  call void @dag_add_relation(ptr poison, ptr noundef %478, ptr noundef %9, i16 noundef signext 20, ptr noundef nonnull %479) #22
  br label %480

480:                                              ; preds = %448, %477, %474, %472
  call void @dag_add_relation(ptr poison, ptr noundef %1, ptr noundef %9, i16 noundef signext 1, ptr noundef nonnull @.str.45) #22
  br label %527

481:                                              ; preds = %444
  %482 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %442, i64 0, i32 8
  %483 = load ptr, ptr %482, align 8, !tbaa !119
  %484 = icmp eq ptr %483, null
  br i1 %484, label %527, label %485

485:                                              ; preds = %481
  %486 = call i32 %483(ptr noundef nonnull %440, ptr noundef nonnull %8) #20
  %487 = load ptr, ptr %8, align 8, !tbaa !34
  %488 = icmp eq ptr %487, null
  br i1 %488, label %521, label %489

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.bConstraint, ptr %440, i64 0, i32 3
  %491 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %442, i64 0, i32 2
  br label %492

492:                                              ; preds = %489, %517
  %493 = phi ptr [ %487, %489 ], [ %519, %517 ]
  %494 = phi i32 [ %441, %489 ], [ %518, %517 ]
  %495 = getelementptr inbounds %struct.bConstraintTarget, ptr %493, i64 0, i32 2
  %496 = load ptr, ptr %495, align 8, !tbaa !121
  %497 = icmp eq ptr %496, null
  br i1 %497, label %517, label %498

498:                                              ; preds = %492
  %499 = call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %496) #22
  %500 = load i16, ptr %490, align 8, !tbaa !124
  switch i16 %500, label %502 [
    i16 4, label %501
    i16 18, label %501
  ]

501:                                              ; preds = %498, %498
  call void @dag_add_relation(ptr poison, ptr noundef %499, ptr noundef %9, i16 noundef signext 20, ptr noundef nonnull %491) #22
  br label %517

502:                                              ; preds = %498
  %503 = getelementptr inbounds %struct.Object, ptr %496, i64 0, i32 3
  %504 = load i16, ptr %503, align 8, !tbaa !116
  switch i16 %504, label %516 [
    i16 25, label %505
    i16 1, label %505
    i16 22, label %505
  ]

505:                                              ; preds = %502, %502, %502
  %506 = getelementptr inbounds %struct.bConstraintTarget, ptr %493, i64 0, i32 3
  %507 = load i8, ptr %506, align 8, !tbaa !123
  %508 = icmp eq i8 %507, 0
  br i1 %508, label %516, label %509

509:                                              ; preds = %505
  call void @dag_add_relation(ptr poison, ptr noundef %499, ptr noundef %9, i16 noundef signext 20, ptr noundef nonnull %491) #22
  %510 = load i16, ptr %503, align 8, !tbaa !116
  %511 = icmp eq i16 %510, 1
  br i1 %511, label %512, label %517

512:                                              ; preds = %509
  %513 = getelementptr inbounds %struct.DagNode, ptr %499, i64 0, i32 10
  %514 = load i64, ptr %513, align 8, !tbaa !94
  %515 = or i64 %514, 4
  store i64 %515, ptr %513, align 8, !tbaa !94
  br label %517

516:                                              ; preds = %502, %505
  call void @dag_add_relation(ptr poison, ptr noundef %499, ptr noundef %9, i16 noundef signext 4, ptr noundef nonnull %491) #22
  br label %517

517:                                              ; preds = %501, %509, %512, %516, %492
  %518 = phi i32 [ %494, %492 ], [ 0, %516 ], [ 0, %512 ], [ 0, %509 ], [ 0, %501 ]
  %519 = load ptr, ptr %493, align 8, !tbaa !34
  %520 = icmp eq ptr %519, null
  br i1 %520, label %521, label %492, !llvm.loop !196

521:                                              ; preds = %517, %485
  %522 = phi i32 [ %441, %485 ], [ %518, %517 ]
  %523 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %442, i64 0, i32 9
  %524 = load ptr, ptr %523, align 8, !tbaa !127
  %525 = icmp eq ptr %524, null
  br i1 %525, label %527, label %526

526:                                              ; preds = %521
  call void %524(ptr noundef nonnull %440, ptr noundef nonnull %8, i8 noundef zeroext 1) #20
  br label %527

527:                                              ; preds = %480, %521, %526, %481, %439
  %528 = phi i32 [ %441, %439 ], [ 0, %480 ], [ %522, %526 ], [ %522, %521 ], [ %441, %481 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #23
  %529 = load ptr, ptr %440, align 8, !tbaa !34
  %530 = icmp eq ptr %529, null
  br i1 %530, label %531, label %439, !llvm.loop !197

531:                                              ; preds = %527, %433
  %532 = phi i32 [ %165, %433 ], [ %528, %527 ]
  %533 = icmp eq i32 %532, 1
  br i1 %533, label %534, label %535

534:                                              ; preds = %531
  call void @dag_add_relation(ptr poison, ptr noundef %1, ptr noundef %9, i16 noundef signext 1, ptr noundef nonnull @.str.45) #22
  br label %535

535:                                              ; preds = %534, %531
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_dag_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i16 noundef signext %4) unnamed_addr #0 !PGOFuncName !198 {
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !199
  %8 = and i16 %7, 1024
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = or disjoint i16 %7, 1024
  store i16 %11, ptr %6, align 2, !tbaa !199
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
  %20 = load ptr, ptr %19, align 8, !tbaa !145
  tail call fastcc void @build_dag_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %20, i32 noundef %16) #22
  %21 = load ptr, ptr %19, align 8, !tbaa !145
  %22 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 112
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  tail call fastcc void @build_dag_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %23, i16 noundef signext %4) #22
  br label %26

26:                                               ; preds = %17, %25
  %27 = load ptr, ptr %18, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17, !llvm.loop !201

29:                                               ; preds = %26, %10, %5
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @dag_find_node(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %4, ptr noundef %1) #20
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @dag_get_node(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @dag_find_node(ptr noundef %0, ptr noundef %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @dag_add_node(ptr noundef %0, ptr noundef %1) #22
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %3, %2 ], [ %6, %5 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @dag_get_sub_node(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !100
  %4 = getelementptr inbounds %struct.DagNode, ptr %3, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !89
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %13, label %22

10:                                               ; preds = %22
  %11 = load ptr, ptr %25, align 8, !tbaa !89
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %22, !llvm.loop !202

13:                                               ; preds = %10, %7
  %14 = phi ptr [ %5, %7 ], [ %25, %10 ]
  %15 = phi ptr [ null, %7 ], [ %23, %10 ]
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.DagAdjList, ptr %14, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  %19 = getelementptr inbounds %struct.DagAdjList, ptr %15, i64 0, i32 5
  %20 = select i1 %16, ptr %4, ptr %19
  store ptr %18, ptr %20, align 8, !tbaa !34
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %21(ptr noundef nonnull %14) #20
  br label %27

22:                                               ; preds = %7, %10
  %23 = phi ptr [ %25, %10 ], [ %5, %7 ]
  %24 = getelementptr inbounds %struct.DagAdjList, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %10, !llvm.loop !202

27:                                               ; preds = %22, %13, %2
  %28 = tail call ptr @dag_find_node(ptr noundef nonnull %0, ptr noundef %1) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call ptr @dag_add_node(ptr noundef nonnull %0, ptr noundef %1) #22
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi ptr [ %28, %27 ], [ %31, %30 ]
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dag_add_relation(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  tail call fastcc void @dag_add_parent_relation(ptr noundef %1, ptr noundef %2, i16 noundef signext %3, ptr noundef %4) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5, %20
  %10 = phi ptr [ %22, %20 ], [ %7, %5 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.DagAdjList, ptr %10, i64 0, i32 1
  %15 = load i16, ptr %14, align 8, !tbaa !91
  %16 = or i16 %15, %3
  store i16 %16, ptr %14, align 8, !tbaa !91
  %17 = getelementptr inbounds %struct.DagAdjList, ptr %10, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !203
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !203
  br label %32

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.DagAdjList, ptr %10, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %9, !llvm.loop !204

24:                                               ; preds = %20, %5
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %26 = tail call ptr %25(i64 noundef 40, ptr noundef nonnull @.str.10) #20
  store ptr %2, ptr %26, align 8, !tbaa !89
  %27 = getelementptr inbounds %struct.DagAdjList, ptr %26, i64 0, i32 1
  store i16 %3, ptr %27, align 8, !tbaa !91
  %28 = getelementptr inbounds %struct.DagAdjList, ptr %26, i64 0, i32 2
  store i32 1, ptr %28, align 4, !tbaa !203
  %29 = load ptr, ptr %6, align 8, !tbaa !101
  %30 = getelementptr inbounds %struct.DagAdjList, ptr %26, i64 0, i32 5
  store ptr %29, ptr %30, align 8, !tbaa !102
  %31 = getelementptr inbounds %struct.DagAdjList, ptr %26, i64 0, i32 4
  store ptr %4, ptr %31, align 8, !tbaa !205
  store ptr %26, ptr %6, align 8, !tbaa !101
  br label %32

32:                                               ; preds = %24, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_add_parent_relation(ptr noundef %0, ptr nocapture noundef %1, i16 noundef signext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !206 {
  %5 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4, %19
  %9 = phi ptr [ %21, %19 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.DagAdjList, ptr %9, i64 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !91
  %15 = or i16 %14, %2
  store i16 %15, ptr %13, align 8, !tbaa !91
  %16 = getelementptr inbounds %struct.DagAdjList, ptr %9, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !203
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !203
  br label %31

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.DagAdjList, ptr %9, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8, !llvm.loop !207

23:                                               ; preds = %19, %4
  %24 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %25 = tail call ptr %24(i64 noundef 40, ptr noundef nonnull @.str.10) #20
  store ptr %0, ptr %25, align 8, !tbaa !89
  %26 = getelementptr inbounds %struct.DagAdjList, ptr %25, i64 0, i32 1
  store i16 %2, ptr %26, align 8, !tbaa !91
  %27 = getelementptr inbounds %struct.DagAdjList, ptr %25, i64 0, i32 2
  store i32 1, ptr %27, align 4, !tbaa !203
  %28 = load ptr, ptr %5, align 8, !tbaa !104
  %29 = getelementptr inbounds %struct.DagAdjList, ptr %25, i64 0, i32 5
  store ptr %28, ptr %29, align 8, !tbaa !102
  %30 = getelementptr inbounds %struct.DagAdjList, ptr %25, i64 0, i32 4
  store ptr %3, ptr %30, align 8, !tbaa !205
  store ptr %25, ptr %5, align 8, !tbaa !104
  br label %31

31:                                               ; preds = %23, %12
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @graph_print_queue(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %18, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr @stderr, align 8, !tbaa !34
  %7 = load ptr, ptr %5, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.DagNode, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %7, align 8, !tbaa !92
  %12 = getelementptr inbounds %struct.DagNode, ptr %7, i64 0, i32 14
  %13 = load i32, ptr %12, align 4, !tbaa !208
  %14 = getelementptr inbounds %struct.DagNode, ptr %7, i64 0, i32 15
  %15 = load i32, ptr %14, align 8, !tbaa !209
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull %10, i32 noundef %11, i32 noundef %13, i32 noundef %15) #24
  %17 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %4, !llvm.loop !210

20:                                               ; preds = %4, %1
  %21 = load ptr, ptr @stderr, align 8, !tbaa !34
  %22 = tail call i32 @fputc(i32 10, ptr %21)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @graph_print_queue_dist(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %57, label %4

4:                                                ; preds = %1, %49
  %5 = phi ptr [ %55, %49 ], [ %2, %1 ]
  %6 = load ptr, ptr @stderr, align 8, !tbaa !34
  %7 = load ptr, ptr %5, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.DagNode, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = getelementptr inbounds %struct.DagNode, ptr %7, i64 0, i32 14
  %12 = load i32, ptr %11, align 4, !tbaa !208
  %13 = getelementptr inbounds %struct.DagNode, ptr %7, i64 0, i32 15
  %14 = load i32, ptr %13, align 8, !tbaa !209
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef nonnull %10, i32 noundef %12, i32 noundef %14) #24
  %16 = load ptr, ptr %5, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.DagNode, ptr %16, i64 0, i32 14
  %18 = load i32, ptr %17, align 4, !tbaa !208
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %30

20:                                               ; preds = %4, %20
  %21 = phi i32 [ %24, %20 ], [ 0, %4 ]
  %22 = load ptr, ptr @stderr, align 8, !tbaa !34
  %23 = tail call i32 @fputc(i32 noundef 32, ptr noundef %22) #22
  %24 = add nuw nsw i32 %21, 1
  %25 = load ptr, ptr %5, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.DagNode, ptr %25, i64 0, i32 14
  %27 = load i32, ptr %26, align 4, !tbaa !208
  %28 = add nsw i32 %27, -1
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %20, label %30, !llvm.loop !211

30:                                               ; preds = %20, %4
  %31 = phi i32 [ 0, %4 ], [ %24, %20 ]
  %32 = load ptr, ptr @stderr, align 8, !tbaa !34
  %33 = tail call i32 @fputc(i32 noundef 124, ptr noundef %32) #22
  %34 = load ptr, ptr %5, align 8, !tbaa !48
  %35 = getelementptr inbounds %struct.DagNode, ptr %34, i64 0, i32 15
  %36 = load i32, ptr %35, align 8, !tbaa !209
  %37 = add nsw i32 %36, -2
  %38 = icmp slt i32 %31, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30, %39
  %40 = phi i32 [ %43, %39 ], [ %31, %30 ]
  %41 = load ptr, ptr @stderr, align 8, !tbaa !34
  %42 = tail call i32 @fputc(i32 noundef 45, ptr noundef %41) #22
  %43 = add nuw nsw i32 %40, 1
  %44 = load ptr, ptr %5, align 8, !tbaa !48
  %45 = getelementptr inbounds %struct.DagNode, ptr %44, i64 0, i32 15
  %46 = load i32, ptr %45, align 8, !tbaa !209
  %47 = add nsw i32 %46, -2
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %39, label %49, !llvm.loop !212

49:                                               ; preds = %39, %30
  %50 = load ptr, ptr @stderr, align 8, !tbaa !34
  %51 = tail call i32 @fputc(i32 noundef 124, ptr noundef %50) #22
  %52 = load ptr, ptr @stderr, align 8, !tbaa !34
  %53 = tail call i32 @fputc(i32 noundef 10, ptr noundef %52) #22
  %54 = getelementptr inbounds %struct.DagNodeQueueElem, ptr %5, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %4, !llvm.loop !213

57:                                               ; preds = %49, %1
  %58 = load ptr, ptr @stderr, align 8, !tbaa !34
  %59 = tail call i32 @fputc(i32 10, ptr %58)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @graph_print_adj_list(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1, %26
  %5 = phi ptr [ %30, %26 ], [ %2, %1 ]
  %6 = load ptr, ptr @stderr, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %5, align 8, !tbaa !92
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef nonnull %9, i32 noundef %10) #24
  %12 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 16
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %4, %15
  %16 = phi ptr [ %24, %15 ], [ %13, %4 ]
  %17 = load ptr, ptr @stderr, align 8, !tbaa !34
  %18 = load ptr, ptr %16, align 8, !tbaa !89
  %19 = getelementptr inbounds %struct.DagNode, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.15, ptr noundef nonnull %21) #24
  %23 = getelementptr inbounds %struct.DagAdjList, ptr %16, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %15, !llvm.loop !214

26:                                               ; preds = %15, %4
  %27 = load ptr, ptr @stderr, align 8, !tbaa !34
  %28 = tail call i32 @fputc(i32 10, ptr %27)
  %29 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %4, !llvm.loop !215

32:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @DAG_editors_update_cb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 {
  store ptr %0, ptr @EditorsUpdateIDCb, align 8, !tbaa !34
  store ptr %1, ptr @EditorsUpdateSceneCb, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_relations_tag_update(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call fastcc void @dag_scene_free(ptr noundef nonnull %6) #22
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !216

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_scene_free(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !217 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @free_forest(ptr noundef nonnull %3) #22
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %7 = load ptr, ptr %2, align 8, !tbaa !57
  tail call void %6(ptr noundef %7) #20
  store ptr null, ptr %2, align 8, !tbaa !57
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_scene_relations_rebuild(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @dag_scene_free(ptr noundef %1) #22
  tail call void @DAG_scene_relations_update(ptr noundef %0, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_scene_relations_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @dag_scene_build(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_scene_build(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !218 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %3) #22
  %4 = tail call ptr @build_dag(ptr noundef %0, ptr noundef %1, i16 noundef signext 61) #22
  %5 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  tail call fastcc void @dag_check_cycle(ptr noundef %6) #22
  %7 = tail call ptr @queue_create(i32 noundef 50) #22
  %8 = load ptr, ptr %5, align 8, !tbaa !57
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %2 ]
  store i32 0, ptr %12, align 8, !tbaa !92
  %13 = getelementptr inbounds %struct.DagNode, ptr %12, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !219

16:                                               ; preds = %11, %2
  store i32 1, ptr %9, align 8, !tbaa !92
  tail call void @push_stack(ptr noundef %7, ptr noundef nonnull %9) #22
  %17 = getelementptr inbounds %struct.DagNodeQueue, ptr %7, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !47
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %62, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  br label %22

22:                                               ; preds = %20, %58
  %23 = phi i32 [ 2, %20 ], [ %59, %58 ]
  %24 = call ptr @get_top_node_queue(ptr noundef nonnull %7) #22
  %25 = getelementptr inbounds %struct.DagNode, ptr %24, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %32

28:                                               ; preds = %32
  %29 = getelementptr inbounds %struct.DagAdjList, ptr %33, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32, !llvm.loop !220

32:                                               ; preds = %22, %28
  %33 = phi ptr [ %30, %28 ], [ %26, %22 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !89
  %35 = load i32, ptr %34, align 8, !tbaa !92
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %28

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.DagNode, ptr %34, i64 0, i32 14
  store i32 %23, ptr %38, align 4, !tbaa !208
  store i32 1, ptr %34, align 8, !tbaa !92
  %39 = add nsw i32 %23, 1
  call void @push_stack(ptr noundef %7, ptr noundef nonnull %34) #22
  br label %58

40:                                               ; preds = %28
  %41 = icmp eq ptr %24, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %22, %40
  %43 = call ptr @pop_queue(ptr noundef %7) #22
  %44 = getelementptr inbounds %struct.DagNode, ptr %43, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !95
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %62, label %47

47:                                               ; preds = %42
  store i32 2, ptr %43, align 8, !tbaa !92
  %48 = add nsw i32 %23, 1
  br label %49

49:                                               ; preds = %53, %47
  %50 = phi ptr [ %21, %47 ], [ %51, %53 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Base, ptr %51, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !80
  %56 = icmp eq ptr %55, %45
  br i1 %56, label %57, label %49, !llvm.loop !221

57:                                               ; preds = %53
  call void @BLI_remlink(ptr noundef nonnull %21, ptr noundef nonnull %51) #20
  call void @BLI_addhead(ptr noundef nonnull %3, ptr noundef nonnull %51) #20
  br label %58

58:                                               ; preds = %49, %37, %57, %40
  %59 = phi i32 [ %48, %57 ], [ %23, %40 ], [ %39, %37 ], [ %48, %49 ]
  %60 = load i32, ptr %17, align 8, !tbaa !47
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %22, !llvm.loop !222

62:                                               ; preds = %58, %42, %16
  %63 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !223
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %62, %66
  %67 = phi ptr [ %72, %66 ], [ %64, %62 ]
  call void @BLI_remlink(ptr noundef nonnull %63, ptr noundef nonnull %67) #20
  call void @BLI_addhead(ptr noundef nonnull %3, ptr noundef nonnull %67) #20
  %68 = getelementptr inbounds %struct.Base, ptr %67, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !80
  %70 = getelementptr inbounds %struct.ID, ptr %69, i64 0, i32 4
  %71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %70) #22
  %72 = load ptr, ptr %63, align 8, !tbaa !223
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %66, !llvm.loop !224

74:                                               ; preds = %66, %62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !225
  call void @queue_delete(ptr noundef %7) #22
  call fastcc void @scene_sort_groups(ptr noundef %0, ptr noundef nonnull %1) #22
  %75 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !226
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %74
  %79 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %80 = load ptr, ptr %63, align 8, !tbaa !34
  %81 = icmp eq ptr %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %78, %82
  %83 = phi ptr [ %88, %82 ], [ %80, %78 ]
  %84 = getelementptr inbounds %struct.Base, ptr %83, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !80
  %86 = getelementptr inbounds %struct.ID, ptr %85, i64 0, i32 4
  %87 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef nonnull %86) #22
  %88 = load ptr, ptr %83, align 8, !tbaa !34
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %82, !llvm.loop !227

90:                                               ; preds = %82, %78, %74
  %91 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 33
  %92 = load i16, ptr %91, align 2, !tbaa !228
  %93 = or i16 %92, 1
  store i16 %93, ptr %91, align 2, !tbaa !228
  call fastcc void @dag_invisible_dependencies_check_flush(ptr noundef %0, ptr noundef %1) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_scene_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @free_forest(ptr noundef nonnull %3) #22
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %7 = load ptr, ptr %2, align 8, !tbaa !57
  tail call void %6(ptr noundef %7) #20
  store ptr null, ptr %2, align 8, !tbaa !57
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_scene_flush_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  tail call void @DAG_scene_relations_update(ptr noundef %0, ptr noundef nonnull %1) #22
  %10 = load ptr, ptr %5, align 8, !tbaa !57
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  tail call fastcc void @dag_scene_flush_layers(ptr noundef nonnull %1, i32 noundef %2) #22
  %14 = load ptr, ptr %5, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.DagForest, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !229
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !229
  %18 = getelementptr inbounds %struct.DagNode, ptr %13, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %11, %32
  %22 = phi ptr [ %34, %32 ], [ %19, %11 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !89
  %24 = getelementptr inbounds %struct.DagNode, ptr %23, i64 0, i32 11
  %25 = load i32, ptr %24, align 8, !tbaa !230
  %26 = icmp eq i32 %25, %17
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.DagNode, ptr %23, i64 0, i32 1
  %29 = load i16, ptr %28, align 4, !tbaa !87
  %30 = icmp eq i16 %29, 16975
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call fastcc void @flush_update_node(ptr noundef %0, ptr noundef nonnull %23, i32 noundef %2, i32 noundef %17) #22
  br label %32

32:                                               ; preds = %21, %27, %31
  %33 = getelementptr inbounds %struct.DagAdjList, ptr %22, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %21, !llvm.loop !231

36:                                               ; preds = %32, %11
  %37 = icmp eq i16 %3, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %36
  %39 = load ptr, ptr %5, align 8, !tbaa !57
  %40 = getelementptr inbounds %struct.DagForest, ptr %39, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !229
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !229
  %43 = load ptr, ptr %18, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %75, label %45

45:                                               ; preds = %38, %71
  %46 = phi ptr [ %73, %71 ], [ %43, %38 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !89
  %48 = getelementptr inbounds %struct.DagNode, ptr %47, i64 0, i32 11
  %49 = load i32, ptr %48, align 8, !tbaa !230
  %50 = icmp eq i32 %49, %42
  br i1 %50, label %71, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.DagNode, ptr %47, i64 0, i32 1
  %53 = load i16, ptr %52, align 4, !tbaa !87
  %54 = icmp eq i16 %53, 16975
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.DagNode, ptr %47, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 103
  %59 = load i8, ptr %58, align 1, !tbaa !232
  %60 = and i8 %59, 7
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %55
  %63 = tail call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef nonnull %57, i32 noundef 0) #20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i8, ptr %58, align 1, !tbaa !232
  %67 = or i8 %66, 2
  store i8 %67, ptr %58, align 1, !tbaa !232
  tail call fastcc void @lib_id_recalc_data_tag(ptr noundef %0, ptr noundef nonnull %57) #22
  br label %68

68:                                               ; preds = %65, %62
  %69 = load ptr, ptr %46, align 8, !tbaa !89
  tail call fastcc void @flush_pointcache_reset(ptr noundef %0, ptr noundef %1, ptr noundef %69, i32 noundef %42, i32 noundef %2, i8 noundef zeroext 1) #22
  br label %71

70:                                               ; preds = %55
  tail call fastcc void @flush_pointcache_reset(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %47, i32 noundef %42, i32 noundef %2, i8 noundef zeroext 0) #22
  br label %71

71:                                               ; preds = %45, %51, %70, %68
  %72 = getelementptr inbounds %struct.DagAdjList, ptr %46, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %45, !llvm.loop !233

75:                                               ; preds = %71, %38, %36
  tail call fastcc void @dag_tag_renderlayers(ptr noundef %1, i32 noundef %2) #22
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_scene_flush_layers(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !234 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = getelementptr inbounds %struct.DagNode, ptr %5, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %13, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.DagAdjList, ptr %10, i64 0, i32 3
  store i32 0, ptr %11, align 8, !tbaa !235
  %12 = getelementptr inbounds %struct.DagAdjList, ptr %10, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9, !llvm.loop !236

15:                                               ; preds = %9, %2
  %16 = getelementptr inbounds %struct.DagForest, ptr %4, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !229
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !229
  %19 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %15, %22
  %23 = phi ptr [ %32, %22 ], [ %20, %15 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.Base, ptr %23, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  %27 = tail call ptr @dag_get_node(ptr noundef %24, ptr noundef %26) #22
  %28 = load ptr, ptr %25, align 8, !tbaa !80
  %29 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 52
  %30 = load i32, ptr %29, align 8, !tbaa !237
  %31 = getelementptr inbounds %struct.DagNode, ptr %27, i64 0, i32 9
  store i32 %30, ptr %31, align 8, !tbaa !238
  %32 = load ptr, ptr %23, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %22, !llvm.loop !239

34:                                               ; preds = %22, %15
  %35 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !195
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %3, align 8, !tbaa !57
  %40 = tail call ptr @dag_get_node(ptr noundef %39, ptr noundef nonnull %36) #22
  %41 = getelementptr inbounds %struct.DagNode, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !238
  %43 = or i32 %42, %1
  store i32 %43, ptr %41, align 8, !tbaa !238
  br label %44

44:                                               ; preds = %38, %34
  %45 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 24
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %62, %44
  %49 = load ptr, ptr %6, align 8, !tbaa !34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %81, label %65

51:                                               ; preds = %44, %62
  %52 = phi ptr [ %63, %62 ], [ %46, %44 ]
  %53 = getelementptr inbounds %struct.TimeMarker, ptr %52, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !240
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %3, align 8, !tbaa !57
  %58 = tail call ptr @dag_get_node(ptr noundef %57, ptr noundef nonnull %54) #22
  %59 = getelementptr inbounds %struct.DagNode, ptr %58, i64 0, i32 9
  %60 = load i32, ptr %59, align 8, !tbaa !238
  %61 = or i32 %60, %1
  store i32 %61, ptr %59, align 8, !tbaa !238
  br label %62

62:                                               ; preds = %51, %56
  %63 = load ptr, ptr %52, align 8, !tbaa !34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %48, label %51, !llvm.loop !242

65:                                               ; preds = %48, %77
  %66 = phi ptr [ %79, %77 ], [ %49, %48 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !89
  %68 = getelementptr inbounds %struct.DagNode, ptr %67, i64 0, i32 11
  %69 = load i32, ptr %68, align 8, !tbaa !230
  %70 = icmp eq i32 %69, %18
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.DagNode, ptr %67, i64 0, i32 1
  %73 = load i16, ptr %72, align 4, !tbaa !87
  %74 = icmp eq i16 %73, 16975
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = tail call fastcc i32 @flush_layer_node(ptr noundef nonnull %67, i32 noundef %18) #22
  br label %77

77:                                               ; preds = %65, %71, %75
  %78 = getelementptr inbounds %struct.DagAdjList, ptr %66, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !34
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %65, !llvm.loop !243

81:                                               ; preds = %77, %48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flush_update_node(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !244 {
  %5 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 11
  store i32 %3, ptr %5, align 8, !tbaa !230
  %6 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %7, null
  br i1 %8, label %100, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 103
  %11 = load i8, ptr %10, align 1, !tbaa !232
  %12 = and i8 %11, 7
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %100, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !238
  %17 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %86, label %20

20:                                               ; preds = %14, %81
  %21 = phi ptr [ %84, %81 ], [ %18, %14 ]
  %22 = phi i32 [ %26, %81 ], [ %16, %14 ]
  %23 = phi i8 [ %82, %81 ], [ 0, %14 ]
  %24 = getelementptr inbounds %struct.DagAdjList, ptr %21, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !235
  %26 = or i32 %25, %22
  %27 = and i32 %25, %2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %81, label %29

29:                                               ; preds = %20
  %30 = load ptr, ptr %21, align 8, !tbaa !89
  %31 = getelementptr inbounds %struct.DagNode, ptr %30, i64 0, i32 1
  %32 = load i16, ptr %31, align 4, !tbaa !87
  %33 = icmp eq i16 %32, 16975
  br i1 %33, label %34, label %81

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.DagNode, ptr %30, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  %37 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 103
  %38 = load i8, ptr %37, align 1, !tbaa !232
  %39 = load i8, ptr %10, align 1, !tbaa !232
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.DagAdjList, ptr %21, i64 0, i32 1
  %44 = load i16, ptr %43, align 8, !tbaa !91
  %45 = and i16 %44, 4
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = or i8 %38, 1
  store i8 %48, ptr %37, align 1, !tbaa !232
  tail call fastcc void @lib_id_recalc_tag(ptr noundef %0, ptr noundef nonnull %36) #22
  %49 = load i16, ptr %43, align 8, !tbaa !91
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i16 [ %49, %47 ], [ %44, %42 ]
  %52 = and i16 %51, 8
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i8, ptr %37, align 1, !tbaa !232
  %56 = or i8 %55, 2
  store i8 %56, ptr %37, align 1, !tbaa !232
  tail call fastcc void @lib_id_recalc_data_tag(ptr noundef %0, ptr noundef nonnull %36) #22
  br label %57

57:                                               ; preds = %50, %54, %34
  %58 = load i8, ptr %10, align 1, !tbaa !232
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.DagAdjList, ptr %21, i64 0, i32 1
  %63 = load i16, ptr %62, align 8, !tbaa !91
  %64 = and i16 %63, 16
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i8, ptr %37, align 1, !tbaa !232
  %68 = or i8 %67, 1
  store i8 %68, ptr %37, align 1, !tbaa !232
  tail call fastcc void @lib_id_recalc_tag(ptr noundef %0, ptr noundef nonnull %36) #22
  %69 = load i16, ptr %62, align 8, !tbaa !91
  br label %70

70:                                               ; preds = %66, %61
  %71 = phi i16 [ %69, %66 ], [ %63, %61 ]
  %72 = and i16 %71, 32
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i8, ptr %37, align 1, !tbaa !232
  %76 = or i8 %75, 2
  store i8 %76, ptr %37, align 1, !tbaa !232
  tail call fastcc void @lib_id_recalc_data_tag(ptr noundef %0, ptr noundef nonnull %36) #22
  br label %77

77:                                               ; preds = %70, %74, %57
  %78 = load i8, ptr %37, align 1, !tbaa !232
  %79 = icmp eq i8 %38, %78
  %80 = select i1 %79, i8 %23, i8 1
  br label %81

81:                                               ; preds = %77, %20, %29
  %82 = phi i8 [ %23, %29 ], [ %23, %20 ], [ %80, %77 ]
  %83 = getelementptr inbounds %struct.DagAdjList, ptr %21, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !34
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %20, !llvm.loop !245

86:                                               ; preds = %81, %14
  %87 = phi i8 [ 0, %14 ], [ %82, %81 ]
  %88 = phi i32 [ %16, %14 ], [ %26, %81 ]
  %89 = and i32 %88, %2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i8, ptr %10, align 1, !tbaa !232
  %93 = and i8 %92, 2
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  tail call void @BKE_object_free_derived_caches(ptr noundef nonnull %7) #20
  %96 = load i8, ptr %10, align 1, !tbaa !232
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi i8 [ %96, %95 ], [ %92, %91 ]
  %99 = and i8 %98, -8
  store i8 %99, ptr %10, align 1, !tbaa !232
  br label %100

100:                                              ; preds = %86, %97, %9, %4
  %101 = phi i8 [ %87, %97 ], [ %87, %86 ], [ 0, %9 ], [ 0, %4 ]
  %102 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 16
  %103 = load ptr, ptr %102, align 8, !tbaa !34
  %104 = icmp eq ptr %103, null
  br i1 %104, label %151, label %110

105:                                              ; preds = %135
  %106 = load ptr, ptr %102, align 8, !tbaa !34
  %107 = icmp eq ptr %106, null
  br i1 %107, label %151, label %108

108:                                              ; preds = %105
  %109 = icmp eq i8 %101, 0
  br label %139

110:                                              ; preds = %100, %135
  %111 = phi ptr [ %137, %135 ], [ %103, %100 ]
  %112 = getelementptr inbounds %struct.DagAdjList, ptr %111, i64 0, i32 3
  %113 = load i32, ptr %112, align 8, !tbaa !235
  %114 = and i32 %113, %2
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %110
  %117 = load ptr, ptr %111, align 8, !tbaa !89
  %118 = getelementptr inbounds %struct.DagNode, ptr %117, i64 0, i32 1
  %119 = load i16, ptr %118, align 4, !tbaa !87
  %120 = icmp eq i16 %119, 16975
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.DagNode, ptr %117, i64 0, i32 5
  %123 = load ptr, ptr %122, align 8, !tbaa !95
  %124 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 103
  %125 = load i8, ptr %124, align 1, !tbaa !232
  %126 = and i8 %125, 7
  %127 = icmp eq i8 %126, 1
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.DagAdjList, ptr %111, i64 0, i32 1
  %130 = load i16, ptr %129, align 8, !tbaa !91
  %131 = and i16 %130, 40
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %128
  %134 = or disjoint i8 %125, 2
  store i8 %134, ptr %124, align 1, !tbaa !232
  tail call fastcc void @lib_id_recalc_data_tag(ptr noundef %0, ptr noundef nonnull %123) #22
  br label %135

135:                                              ; preds = %110, %121, %133, %128, %116
  %136 = getelementptr inbounds %struct.DagAdjList, ptr %111, i64 0, i32 5
  %137 = load ptr, ptr %136, align 8, !tbaa !34
  %138 = icmp eq ptr %137, null
  br i1 %138, label %105, label %110, !llvm.loop !246

139:                                              ; preds = %108, %147
  %140 = phi ptr [ %106, %108 ], [ %149, %147 ]
  %141 = load ptr, ptr %140, align 8, !tbaa !89
  br i1 %109, label %142, label %146

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.DagNode, ptr %141, i64 0, i32 11
  %144 = load i32, ptr %143, align 8, !tbaa !230
  %145 = icmp eq i32 %144, %3
  br i1 %145, label %147, label %146

146:                                              ; preds = %142, %139
  tail call fastcc void @flush_update_node(ptr noundef %0, ptr noundef %141, i32 noundef %2, i32 noundef %3) #22
  br label %147

147:                                              ; preds = %142, %146
  %148 = getelementptr inbounds %struct.DagAdjList, ptr %140, i64 0, i32 5
  %149 = load ptr, ptr %148, align 8, !tbaa !34
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %139, !llvm.loop !247

151:                                              ; preds = %147, %100, %105
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_ptcache_object_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @lib_id_recalc_data_tag(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !248 {
  %3 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %4 = load i16, ptr %3, align 2, !tbaa !249
  %5 = or i16 %4, 8192
  store i16 %5, ptr %3, align 2, !tbaa !249
  %6 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !109
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext %7) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flush_pointcache_reset(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !250 {
  %7 = getelementptr inbounds %struct.DagNode, ptr %2, i64 0, i32 11
  store i32 %3, ptr %7, align 8, !tbaa !230
  %8 = getelementptr inbounds %struct.DagNode, ptr %2, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %6
  %12 = icmp eq i8 %5, 0
  br label %13

13:                                               ; preds = %11, %48
  %14 = phi ptr [ %9, %11 ], [ %50, %48 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.DagNode, ptr %15, i64 0, i32 1
  %17 = load i16, ptr %16, align 4, !tbaa !87
  %18 = icmp eq i16 %17, 16975
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.DagNode, ptr %15, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !230
  %22 = icmp eq i32 %21, %3
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.DagNode, ptr %15, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  br i1 %12, label %26, label %31

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 103
  %28 = load i8, ptr %27, align 1, !tbaa !232
  %29 = and i8 %28, 7
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %26, %23
  %32 = tail call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef %25, i32 noundef 0) #20
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr %14, align 8, !tbaa !89
  br i1 %33, label %45, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.DagNode, ptr %34, i64 0, i32 8
  %37 = load i32, ptr %36, align 4, !tbaa !251
  %38 = and i32 %37, %4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 103
  %42 = load i8, ptr %41, align 1, !tbaa !232
  %43 = or i8 %42, 2
  store i8 %43, ptr %41, align 1, !tbaa !232
  tail call fastcc void @lib_id_recalc_data_tag(ptr noundef %0, ptr noundef %25) #22
  %44 = load ptr, ptr %14, align 8, !tbaa !89
  br label %45

45:                                               ; preds = %35, %40, %31
  %46 = phi ptr [ %34, %35 ], [ %44, %40 ], [ %34, %31 ]
  tail call fastcc void @flush_pointcache_reset(ptr noundef %0, ptr noundef %1, ptr noundef %46, i32 noundef %3, i32 noundef %4, i8 noundef zeroext 1) #22
  br label %48

47:                                               ; preds = %26
  tail call fastcc void @flush_pointcache_reset(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15, i32 noundef %3, i32 noundef %4, i8 noundef zeroext 0) #22
  br label %48

48:                                               ; preds = %13, %45, %47, %19
  %49 = getelementptr inbounds %struct.DagAdjList, ptr %14, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %13, !llvm.loop !252

52:                                               ; preds = %48, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_tag_renderlayers(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !253 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !254
  %5 = icmp eq ptr %4, null
  br i1 %5, label %57, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6, %25
  %11 = phi ptr [ %27, %25 ], [ %8, %6 ]
  %12 = phi i32 [ %26, %25 ], [ 0, %6 ]
  %13 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !255
  %15 = and i32 %14, %1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Base, ptr %11, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !80
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 103
  %21 = load i8, ptr %20, align 1, !tbaa !232
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 0, i32 %14
  %24 = or i32 %23, %12
  br label %25

25:                                               ; preds = %17, %10
  %26 = phi i32 [ %12, %10 ], [ %24, %17 ]
  %27 = load ptr, ptr %11, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10, !llvm.loop !256

29:                                               ; preds = %25, %6
  %30 = phi i32 [ 0, %6 ], [ %26, %25 ]
  %31 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %57, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  br label %36

36:                                               ; preds = %34, %54
  %37 = phi ptr [ %32, %34 ], [ %55, %54 ]
  %38 = getelementptr inbounds %struct.bNode, ptr %37, i64 0, i32 20
  %39 = load ptr, ptr %38, align 8, !tbaa !257
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.bNode, ptr %37, i64 0, i32 33
  %43 = load i16, ptr %42, align 8, !tbaa !259
  %44 = sext i16 %43 to i32
  %45 = tail call ptr @BLI_findlink(ptr noundef nonnull %35, i32 noundef %44) #20
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.SceneRenderLayer, ptr %45, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !260
  %50 = and i32 %49, %30
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %3, align 8, !tbaa !254
  tail call void @nodeUpdate(ptr noundef %53, ptr noundef nonnull %37) #20
  br label %54

54:                                               ; preds = %41, %47, %52, %36
  %55 = load ptr, ptr %37, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %36, !llvm.loop !263

57:                                               ; preds = %54, %29, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_scene_update_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  tail call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 21063, i8 noundef zeroext 0) #20
  store ptr %1, ptr %6, align 8, !tbaa !34
  %7 = call ptr @_setlooper_base_step(ptr noundef nonnull %6, ptr noundef null) #20
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
  %16 = load ptr, ptr %15, align 8, !tbaa !80
  br i1 %10, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 8, !tbaa !34
  call fastcc void @dag_object_time_update_flags(ptr noundef %0, ptr noundef %18, ptr noundef %16) #22
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 112
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  call fastcc void @dag_group_update_flags(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %21, i8 noundef zeroext %3) #22
  br label %24

24:                                               ; preds = %19, %23
  %25 = call ptr @_setlooper_base_step(ptr noundef nonnull %6, ptr noundef nonnull %14) #20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %11, label %13, !llvm.loop !264

27:                                               ; preds = %11, %27
  %28 = phi ptr [ %31, %27 ], [ %1, %11 ]
  call void @DAG_scene_flush_update(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %2, i16 noundef signext 1) #22
  %29 = load ptr, ptr %6, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !265
  store ptr %31, ptr %6, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %27, !llvm.loop !266

33:                                               ; preds = %27, %11
  %34 = icmp eq i8 %3, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %33
  store ptr %1, ptr %6, align 8, !tbaa !34
  %36 = call ptr @_setlooper_base_step(ptr noundef nonnull %6, ptr noundef null) #20
  %37 = icmp eq ptr %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %35, %48
  %39 = phi ptr [ %49, %48 ], [ %36, %35 ]
  %40 = getelementptr inbounds %struct.Base, ptr %39, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !80
  %42 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 103
  %43 = load i8, ptr %42, align 1, !tbaa !232
  %44 = and i8 %43, 7
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = or i8 %43, 4
  store i8 %47, ptr %42, align 1, !tbaa !232
  br label %48

48:                                               ; preds = %38, %46
  %49 = call ptr @_setlooper_base_step(ptr noundef nonnull %6, ptr noundef nonnull %39) #20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %38, !llvm.loop !267

51:                                               ; preds = %48, %35
  %52 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !195
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  call fastcc void @dag_object_time_update_flags(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %53) #22
  br label %56

56:                                               ; preds = %51, %55, %33
  %57 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %85, label %60

60:                                               ; preds = %56, %82
  %61 = phi ptr [ %83, %82 ], [ %58, %56 ]
  %62 = getelementptr inbounds %struct.ID, ptr %61, i64 0, i32 5
  %63 = load i16, ptr %62, align 2, !tbaa !199
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
  %73 = load ptr, ptr %72, align 8, !tbaa !145
  %74 = getelementptr inbounds %struct.Object, ptr %73, i64 0, i32 103
  %75 = load i8, ptr %74, align 1, !tbaa !232
  %76 = zext i8 %75 to i16
  %77 = getelementptr inbounds %struct.GroupObject, ptr %71, i64 0, i32 4
  store i16 %76, ptr %77, align 8, !tbaa !268
  %78 = load ptr, ptr %71, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %70, !llvm.loop !269

80:                                               ; preds = %70, %66
  %81 = and i16 %63, -1025
  store i16 %81, ptr %62, align 2, !tbaa !199
  br label %82

82:                                               ; preds = %60, %80
  %83 = load ptr, ptr %61, align 8, !tbaa !34
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %60, !llvm.loop !270

85:                                               ; preds = %82, %56
  %86 = icmp eq i8 %4, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %85
  call fastcc void @dag_invisible_dependencies_check_flush(ptr noundef %0, ptr noundef %1) #22
  br label %88

88:                                               ; preds = %87, %85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  ret void
}

; Function Attrs: optsize
declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_object_time_update_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !271 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 106
  %6 = load ptr, ptr %5, align 8, !tbaa !272
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  br label %10

10:                                               ; preds = %8, %43
  %11 = phi ptr [ %6, %8 ], [ %44, %43 ]
  %12 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %10
  %15 = load i16, ptr %12, align 8, !tbaa !189
  %16 = add i16 %15, -26
  %17 = icmp ult i16 %16, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i8, ptr %9, align 1, !tbaa !232
  %20 = or i8 %19, 1
  store i8 %20, ptr %9, align 1, !tbaa !232
  br label %43

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %12, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !119
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = call i32 %23(ptr noundef nonnull %11, ptr noundef nonnull %4) #20
  br label %27

27:                                               ; preds = %31, %25
  %28 = phi ptr [ %4, %25 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.bConstraintTarget, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !121
  %34 = icmp eq ptr %33, null
  br i1 %34, label %27, label %35, !llvm.loop !273

35:                                               ; preds = %31
  %36 = load i8, ptr %9, align 1, !tbaa !232
  %37 = or i8 %36, 1
  store i8 %37, ptr %9, align 1, !tbaa !232
  br label %38

38:                                               ; preds = %27, %35
  %39 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %12, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !127
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call void %40(ptr noundef nonnull %11, ptr noundef nonnull %4, i8 noundef zeroext 1) #20
  br label %43

43:                                               ; preds = %18, %38, %42, %21, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #23
  %44 = load ptr, ptr %11, align 8, !tbaa !274
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %10, !llvm.loop !275

46:                                               ; preds = %43, %3
  %47 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !139
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Object, ptr %48, i64 0, i32 3
  %52 = load i16, ptr %51, align 8, !tbaa !116
  switch i16 %52, label %57 [
    i16 2, label %53
    i16 25, label %53
  ]

53:                                               ; preds = %50, %50
  %54 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %55 = load i8, ptr %54, align 1, !tbaa !232
  %56 = or i8 %55, 1
  store i8 %56, ptr %54, align 1, !tbaa !232
  br label %57

57:                                               ; preds = %50, %53, %46
  %58 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !129
  %60 = call fastcc signext i16 @animdata_use_time(ptr noundef %59) #22, !range !276
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %64 = load i8, ptr %63, align 1, !tbaa !232
  %65 = or i8 %64, 1
  store i8 %65, ptr %63, align 1, !tbaa !232
  %66 = getelementptr inbounds %struct.AnimData, ptr %59, i64 0, i32 8
  %67 = load i32, ptr %66, align 4, !tbaa !277
  %68 = or i32 %67, 2
  store i32 %68, ptr %66, align 4, !tbaa !277
  br label %71

69:                                               ; preds = %57
  %70 = icmp eq ptr %59, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %62, %69
  %72 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %73 = load i16, ptr %72, align 8, !tbaa !116
  %74 = icmp eq i16 %73, 25
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %77 = load i8, ptr %76, align 1, !tbaa !232
  %78 = or i8 %77, 2
  store i8 %78, ptr %76, align 1, !tbaa !232
  br label %79

79:                                               ; preds = %75, %71, %69
  %80 = call fastcc i32 @object_modifiers_use_time(ptr noundef nonnull %2) #22, !range !279
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %84 = load i8, ptr %83, align 1, !tbaa !232
  %85 = or i8 %84, 2
  store i8 %85, ptr %83, align 1, !tbaa !232
  br label %86

86:                                               ; preds = %82, %79
  %87 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %88 = load ptr, ptr %87, align 8, !tbaa !117
  %89 = icmp eq ptr %88, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.bPose, ptr %88, i64 0, i32 2
  %92 = load i16, ptr %91, align 8, !tbaa !280
  %93 = and i16 %92, 8
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %97 = load i8, ptr %96, align 1, !tbaa !232
  %98 = or i8 %97, 2
  store i8 %98, ptr %96, align 1, !tbaa !232
  br label %99

99:                                               ; preds = %95, %90, %86
  %100 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 128
  %101 = load ptr, ptr %100, align 8, !tbaa !149
  %102 = icmp eq ptr %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = call zeroext i8 @BKE_scene_check_rigidbody_active(ptr noundef %1) #20
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %108 = load i8, ptr %107, align 1, !tbaa !232
  %109 = or i8 %108, 1
  store i8 %109, ptr %107, align 1, !tbaa !232
  br label %110

110:                                              ; preds = %106, %103, %99
  %111 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %112 = load ptr, ptr %111, align 8, !tbaa !113
  %113 = call ptr @BKE_animdata_from_id(ptr noundef %112) #20
  %114 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %115 = load i16, ptr %114, align 8, !tbaa !116
  switch i16 %115, label %186 [
    i16 1, label %116
    i16 2, label %134
    i16 3, label %134
    i16 4, label %144
    i16 22, label %157
    i16 5, label %167
    i16 0, label %172
  ]

116:                                              ; preds = %110
  %117 = load ptr, ptr %111, align 8, !tbaa !113
  %118 = getelementptr inbounds %struct.Mesh, ptr %117, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !282
  %120 = icmp eq ptr %119, null
  br i1 %120, label %130, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 114
  %123 = load i8, ptr %122, align 1, !tbaa !285
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %128 = load i8, ptr %127, align 1, !tbaa !232
  %129 = or i8 %128, 2
  store i8 %129, ptr %127, align 1, !tbaa !232
  br label %130

130:                                              ; preds = %121, %126, %116
  %131 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 109
  %132 = load ptr, ptr %131, align 8, !tbaa !148
  %133 = icmp eq ptr %132, null
  br i1 %133, label %186, label %182

134:                                              ; preds = %110, %110
  %135 = load ptr, ptr %111, align 8, !tbaa !113
  %136 = getelementptr inbounds %struct.Curve, ptr %135, i64 0, i32 9
  %137 = load ptr, ptr %136, align 8, !tbaa !286
  %138 = icmp eq ptr %137, null
  br i1 %138, label %186, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 114
  %141 = load i8, ptr %140, align 1, !tbaa !285
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %182, label %186

144:                                              ; preds = %110
  %145 = load ptr, ptr %111, align 8, !tbaa !113
  %146 = getelementptr inbounds %struct.Curve, ptr %145, i64 0, i32 3
  %147 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %146) #22, !range !287
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %186, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.Curve, ptr %145, i64 0, i32 52
  %151 = load ptr, ptr %150, align 8, !tbaa !288
  %152 = icmp eq ptr %151, null
  br i1 %152, label %186, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.Curve, ptr %145, i64 0, i32 55
  %155 = load ptr, ptr %154, align 8, !tbaa !289
  %156 = icmp eq ptr %155, null
  br i1 %156, label %186, label %182

157:                                              ; preds = %110
  %158 = load ptr, ptr %111, align 8, !tbaa !113
  %159 = getelementptr inbounds %struct.Lattice, ptr %158, i64 0, i32 23
  %160 = load ptr, ptr %159, align 8, !tbaa !290
  %161 = icmp eq ptr %160, null
  br i1 %161, label %186, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 114
  %164 = load i8, ptr %163, align 1, !tbaa !285
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %182, label %186

167:                                              ; preds = %110
  %168 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 55
  %169 = load i16, ptr %168, align 8, !tbaa !144
  %170 = and i16 %169, 2840
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %186, label %182

172:                                              ; preds = %110
  %173 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 88
  %174 = load i8, ptr %173, align 1, !tbaa !292
  %175 = icmp eq i8 %174, 8
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load ptr, ptr %111, align 8, !tbaa !113
  %178 = icmp eq ptr %177, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %176
  %180 = call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %177) #20
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %179, %167, %162, %153, %139, %130
  %183 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %184 = load i8, ptr %183, align 1, !tbaa !232
  %185 = or i8 %184, 2
  store i8 %185, ptr %183, align 1, !tbaa !232
  br label %186

186:                                              ; preds = %182, %172, %176, %179, %167, %157, %162, %144, %149, %153, %134, %139, %130, %110
  %187 = call fastcc signext i16 @animdata_use_time(ptr noundef %113) #22, !range !276
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %191 = load i8, ptr %190, align 1, !tbaa !232
  %192 = or i8 %191, 2
  store i8 %192, ptr %190, align 1, !tbaa !232
  %193 = getelementptr inbounds %struct.AnimData, ptr %113, i64 0, i32 8
  %194 = load i32, ptr %193, align 4, !tbaa !277
  %195 = or i32 %194, 2
  store i32 %195, ptr %193, align 4, !tbaa !277
  br label %196

196:                                              ; preds = %189, %186
  %197 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 109
  %198 = load ptr, ptr %197, align 8, !tbaa !148
  %199 = icmp eq ptr %198, null
  br i1 %199, label %211, label %200

200:                                              ; preds = %196, %208
  %201 = phi ptr [ %209, %208 ], [ %198, %196 ]
  %202 = call i32 @psys_check_enabled(ptr noundef %2, ptr noundef nonnull %201) #20
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %206 = load i8, ptr %205, align 1, !tbaa !232
  %207 = or i8 %206, 2
  store i8 %207, ptr %205, align 1, !tbaa !232
  br label %211

208:                                              ; preds = %200
  %209 = load ptr, ptr %201, align 8, !tbaa !187
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %200, !llvm.loop !293

211:                                              ; preds = %208, %204, %196
  %212 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %213 = load i8, ptr %212, align 1, !tbaa !232
  %214 = and i8 %213, 1
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %211
  call fastcc void @lib_id_recalc_tag(ptr noundef %0, ptr noundef nonnull %2) #22
  %217 = load i8, ptr %212, align 1, !tbaa !232
  br label %218

218:                                              ; preds = %216, %211
  %219 = phi i8 [ %217, %216 ], [ %213, %211 ]
  %220 = and i8 %219, 2
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %218
  call fastcc void @lib_id_recalc_data_tag(ptr noundef %0, ptr noundef nonnull %2) #22
  br label %223

223:                                              ; preds = %222, %218
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_group_update_flags(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !294 {
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 5
  %6 = load i16, ptr %5, align 2, !tbaa !199
  %7 = and i16 %6, 1024
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %4
  %10 = or disjoint i16 %6, 1024
  store i16 %10, ptr %5, align 2, !tbaa !199
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
  %20 = load ptr, ptr %19, align 8, !tbaa !145
  tail call fastcc void @dag_object_time_update_flags(ptr noundef %0, ptr noundef %1, ptr noundef %20) #22
  br label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds %struct.GroupObject, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !145
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 112
  %25 = load ptr, ptr %24, align 8, !tbaa !85
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call fastcc void @dag_group_update_flags(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %25, i8 noundef zeroext %3) #22
  br label %28

28:                                               ; preds = %21, %27
  %29 = load ptr, ptr %17, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %16, !llvm.loop !295

31:                                               ; preds = %28, %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_invisible_dependencies_check_flush(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !296 {
  %3 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 16975) #22, !range !297
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 17741) #22, !range !297
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 21827) #22, !range !297
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 16973) #22, !range !297
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 21580) #22, !range !297
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %11, %8, %5, %2
  tail call fastcc void @dag_invisible_dependencies_flush(ptr noundef %1) #22
  br label %18

18:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_on_visible_update(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  call fastcc void @dag_current_scene_layers(ptr noundef %0, ptr noundef nonnull %3) #22
  %5 = load ptr, ptr %3, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %80, label %7

7:                                                ; preds = %2, %74
  %8 = phi ptr [ %78, %74 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.DagSceneLayer, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %11 = getelementptr inbounds %struct.DagSceneLayer, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !300
  store ptr %10, ptr %4, align 8, !tbaa !34
  %13 = icmp eq ptr %10, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %7, %14
  %15 = phi ptr [ %18, %14 ], [ %10, %7 ]
  call fastcc void @dag_scene_flush_layers(ptr noundef nonnull %15, i32 noundef %12) #22
  %16 = load ptr, ptr %4, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.Scene, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !265
  store ptr %18, ptr %4, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %14, !llvm.loop !301

20:                                               ; preds = %14, %7
  call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 21063, i8 noundef zeroext 0) #20
  store ptr %10, ptr %4, align 8, !tbaa !34
  %21 = call ptr @_setlooper_base_step(ptr noundef nonnull %4, ptr noundef null) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %74, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 14
  br label %25

25:                                               ; preds = %23, %71
  %26 = phi ptr [ %21, %23 ], [ %72, %71 ]
  %27 = getelementptr inbounds %struct.Base, ptr %26, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !80
  %29 = load ptr, ptr %4, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 31
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = call ptr @dag_get_node(ptr noundef nonnull %31, ptr noundef %28) #22
  br label %35

35:                                               ; preds = %25, %33
  %36 = phi ptr [ %34, %33 ], [ null, %25 ]
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct.DagNode, ptr %36, i64 0, i32 8
  %39 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 52
  %40 = select i1 %37, ptr %39, ptr %38
  %41 = load i32, ptr %40, align 4, !tbaa !302
  %42 = load i32, ptr %24, align 8, !tbaa !303
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = and i32 %44, %12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 3
  %49 = load i16, ptr %48, align 8, !tbaa !116
  switch i16 %49, label %54 [
    i16 1, label %50
    i16 2, label %50
    i16 3, label %50
    i16 4, label %50
    i16 5, label %50
    i16 22, label %50
  ]

50:                                               ; preds = %47, %47, %47, %47, %47, %47
  %51 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 103
  %52 = load i8, ptr %51, align 1, !tbaa !232
  %53 = or i8 %52, 2
  store i8 %53, ptr %51, align 1, !tbaa !232
  call fastcc void @lib_id_recalc_tag(ptr noundef %0, ptr noundef nonnull %28) #22
  br label %54

54:                                               ; preds = %47, %50
  %55 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 11
  %56 = load ptr, ptr %55, align 8, !tbaa !82
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 12
  %60 = load ptr, ptr %59, align 8, !tbaa !304
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 103
  %64 = load i8, ptr %63, align 1, !tbaa !232
  %65 = or i8 %64, 2
  store i8 %65, ptr %63, align 1, !tbaa !232
  call fastcc void @lib_id_recalc_tag(ptr noundef %0, ptr noundef nonnull %28) #22
  br label %66

66:                                               ; preds = %62, %58, %54
  %67 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 112
  %68 = load ptr, ptr %67, align 8, !tbaa !85
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call fastcc void @dag_group_on_visible_update(ptr noundef nonnull %68) #22
  br label %71

71:                                               ; preds = %35, %70, %66
  %72 = call ptr @_setlooper_base_step(ptr noundef nonnull %4, ptr noundef nonnull %26) #20
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %25, !llvm.loop !305

74:                                               ; preds = %71, %20
  call void @BKE_main_id_tag_idcode(ptr noundef %0, i16 noundef signext 21063, i8 noundef zeroext 0) #20
  call void @DAG_scene_update_flags(ptr noundef %0, ptr noundef %10, i32 noundef %12, i8 noundef zeroext %1, i8 noundef zeroext 1) #22
  %75 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 14
  %76 = load i32, ptr %75, align 8, !tbaa !303
  %77 = or i32 %76, %12
  store i32 %77, ptr %75, align 8, !tbaa !303
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  %78 = load ptr, ptr %8, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %7, !llvm.loop !306

80:                                               ; preds = %74, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #20
  call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext 16975) #22
  %81 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  %82 = load ptr, ptr %81, align 8, !tbaa !307
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %80, %84
  %85 = phi ptr [ %86, %84 ], [ %82, %80 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %85, i16 noundef signext 0) #22
  %86 = load ptr, ptr %85, align 8, !tbaa !308
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %84, !llvm.loop !310

88:                                               ; preds = %84, %80
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_current_scene_layers(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !311 {
  tail call fastcc void @BLI_listbase_clear(ptr noundef %1) #22
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %4 = load ptr, ptr %3, align 8, !tbaa !312
  %5 = icmp eq ptr %4, null
  br i1 %5, label %52, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  tail call void @BKE_main_id_flag_listbase(ptr noundef nonnull %7, i16 noundef signext 1024, i8 noundef zeroext 1) #20
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %61, label %11

11:                                               ; preds = %6, %49
  %12 = phi ptr [ %50, %49 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.wmWindow, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !313
  %15 = icmp eq ptr %14, null
  br i1 %15, label %49, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bScreen, ptr %14, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !315
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 31
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 5
  %24 = load i16, ptr %23, align 2, !tbaa !317
  %25 = and i16 %24, 1024
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %29 = tail call ptr %28(i64 noundef 32, ptr noundef nonnull @.str.53) #20
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %29) #20
  %30 = getelementptr inbounds %struct.DagSceneLayer, ptr %29, i64 0, i32 2
  store ptr %18, ptr %30, align 8, !tbaa !298
  %31 = load ptr, ptr %13, align 8, !tbaa !313
  %32 = tail call i32 @BKE_screen_visible_layers(ptr noundef %31, ptr noundef nonnull %18) #20
  %33 = getelementptr inbounds %struct.DagSceneLayer, ptr %29, i64 0, i32 3
  store i32 %32, ptr %33, align 8, !tbaa !300
  %34 = load i16, ptr %23, align 2, !tbaa !317
  %35 = and i16 %34, -1025
  store i16 %35, ptr %23, align 2, !tbaa !317
  br label %49

36:                                               ; preds = %22, %40
  %37 = phi ptr [ %38, %40 ], [ %1, %22 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.DagSceneLayer, ptr %38, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !298
  %43 = icmp eq ptr %42, %18
  br i1 %43, label %44, label %36, !llvm.loop !318

44:                                               ; preds = %40
  %45 = tail call i32 @BKE_screen_visible_layers(ptr noundef nonnull %14, ptr noundef %18) #20
  %46 = getelementptr inbounds %struct.DagSceneLayer, ptr %38, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !300
  %48 = or i32 %47, %45
  store i32 %48, ptr %46, align 8, !tbaa !300
  br label %49

49:                                               ; preds = %36, %27, %44, %11, %16
  %50 = load ptr, ptr %12, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %11, !llvm.loop !319

52:                                               ; preds = %2
  %53 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %54 = tail call ptr %53(i64 noundef 32, ptr noundef nonnull @.str.53) #20
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %54) #20
  %55 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %56 = load ptr, ptr %55, align 8, !tbaa !320
  %57 = getelementptr inbounds %struct.DagSceneLayer, ptr %54, i64 0, i32 2
  store ptr %56, ptr %57, align 8, !tbaa !298
  %58 = getelementptr inbounds %struct.Scene, ptr %56, i64 0, i32 12
  %59 = load i32, ptr %58, align 8, !tbaa !321
  %60 = getelementptr inbounds %struct.DagSceneLayer, ptr %54, i64 0, i32 3
  store i32 %59, ptr %60, align 8, !tbaa !300
  br label %61

61:                                               ; preds = %49, %6, %52
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @lib_id_recalc_tag(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !PGOFuncName !322 {
  %3 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %4 = load i16, ptr %3, align 2, !tbaa !249
  %5 = or i16 %4, 4096
  store i16 %5, ptr %3, align 2, !tbaa !249
  %6 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !109
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext %7) #22
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @dag_group_on_visible_update(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !323 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 2, !tbaa !199
  %4 = and i16 %3, 1024
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %49

6:                                                ; preds = %1
  %7 = or disjoint i16 %3, 1024
  store i16 %7, ptr %2, align 2, !tbaa !199
  %8 = getelementptr inbounds %struct.Group, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %6, %46
  %12 = phi ptr [ %47, %46 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.GroupObject, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !145
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !116
  switch i16 %16, label %26 [
    i16 1, label %17
    i16 2, label %17
    i16 3, label %17
    i16 4, label %17
    i16 5, label %17
    i16 22, label %17
  ]

17:                                               ; preds = %11, %11, %11, %11, %11, %11
  %18 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 103
  %19 = load i8, ptr %18, align 1, !tbaa !232
  %20 = or i8 %19, 2
  store i8 %20, ptr %18, align 1, !tbaa !232
  %21 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 5
  %22 = load i16, ptr %21, align 2, !tbaa !324
  %23 = or i16 %22, 1024
  store i16 %23, ptr %21, align 2, !tbaa !324
  %24 = load ptr, ptr @G, align 8, !tbaa !154
  tail call fastcc void @lib_id_recalc_tag(ptr noundef %24, ptr noundef nonnull %14) #22
  %25 = load ptr, ptr %13, align 8, !tbaa !145
  br label %26

26:                                               ; preds = %11, %17
  %27 = phi ptr [ %14, %11 ], [ %25, %17 ]
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 13
  %29 = load ptr, ptr %28, align 8, !tbaa !325
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 103
  %33 = load i8, ptr %32, align 1, !tbaa !232
  %34 = or i8 %33, 1
  store i8 %34, ptr %32, align 1, !tbaa !232
  %35 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 5
  %36 = load i16, ptr %35, align 2, !tbaa !324
  %37 = or i16 %36, 1024
  store i16 %37, ptr %35, align 2, !tbaa !324
  %38 = load ptr, ptr @G, align 8, !tbaa !154
  tail call fastcc void @lib_id_recalc_tag(ptr noundef %38, ptr noundef nonnull %27) #22
  %39 = load ptr, ptr %13, align 8, !tbaa !145
  br label %40

40:                                               ; preds = %31, %26
  %41 = phi ptr [ %39, %31 ], [ %27, %26 ]
  %42 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 112
  %43 = load ptr, ptr %42, align 8, !tbaa !85
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call fastcc void @dag_group_on_visible_update(ptr noundef nonnull %43) #22
  br label %46

46:                                               ; preds = %40, %45
  %47 = load ptr, ptr %12, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %11, !llvm.loop !326

49:                                               ; preds = %46, %6, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(argmem: write) uwtable
define dso_local void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #10 {
  %3 = icmp eq i16 %1, 21582
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext 16717) #22
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext 17748) #22
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext 16716) #22
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext 20311) #22
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext 17235) #22
  br label %5

5:                                                ; preds = %4, %2
  %6 = and i16 %1, 255
  %7 = zext nneg i16 %6 to i64
  %8 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %7
  store i8 1, ptr %8, align 1, !tbaa !123
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #5 {
  %3 = load ptr, ptr @G, align 8, !tbaa !154
  tail call void @DAG_id_tag_update_ex(ptr noundef %3, ptr noundef %0, i16 noundef signext %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_ids_flush_tagged(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %3) #23
  call fastcc void @dag_current_scene_layers(ptr noundef %0, ptr noundef nonnull %2) #22
  %4 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %2) #22, !range !287
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %64

6:                                                ; preds = %1
  %7 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %3) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %63, label %9

9:                                                ; preds = %6
  %10 = sext i32 %7 to i64
  br label %11

11:                                               ; preds = %9, %46
  %12 = phi i64 [ %10, %9 ], [ %14, %46 ]
  %13 = phi i8 [ 0, %9 ], [ %47, %46 ]
  %14 = add nsw i64 %12, -1
  %15 = getelementptr inbounds [35 x ptr], ptr %3, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = load ptr, ptr %16, align 8, !tbaa !327
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4
  %21 = load i8, ptr %20, align 8, !tbaa !123
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !123
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %19, %42
  %27 = phi i8 [ %43, %42 ], [ %13, %19 ]
  %28 = phi ptr [ %44, %42 ], [ %17, %19 ]
  %29 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 5
  %30 = load i16, ptr %29, align 2, !tbaa !249
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
  %39 = load ptr, ptr %38, align 8, !tbaa !298
  call fastcc void @dag_id_flush_update(ptr noundef %0, ptr noundef %39, ptr noundef nonnull %28) #22
  %40 = load ptr, ptr %37, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %36, !llvm.loop !328

42:                                               ; preds = %36, %33, %26
  %43 = phi i8 [ %27, %26 ], [ 1, %33 ], [ 1, %36 ]
  %44 = load ptr, ptr %28, align 8, !tbaa !329
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %26

46:                                               ; preds = %42, %19, %11
  %47 = phi i8 [ %13, %19 ], [ %13, %11 ], [ %43, %42 ]
  %48 = and i64 %14, 4294967295
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %11, !llvm.loop !330

50:                                               ; preds = %46
  %51 = icmp eq i8 %47, 0
  %52 = load ptr, ptr %2, align 8
  %53 = icmp eq ptr %52, null
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %50, %55
  %56 = phi ptr [ %61, %55 ], [ %52, %50 ]
  %57 = getelementptr inbounds %struct.DagSceneLayer, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !298
  %59 = getelementptr inbounds %struct.DagSceneLayer, ptr %56, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !300
  call void @DAG_scene_flush_update(ptr noundef %0, ptr noundef %58, i32 noundef %60, i16 noundef signext 0) #22
  %61 = load ptr, ptr %56, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %55, !llvm.loop !331

63:                                               ; preds = %55, %6, %50
  call void @BLI_freelistN(ptr noundef nonnull %2) #20
  br label %64

64:                                               ; preds = %1, %63
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !332 {
  %2 = load ptr, ptr %0, align 8, !tbaa !327
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @set_listbasepointers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_id_flush_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !333 {
  %4 = alloca %struct.anon, align 8
  %5 = alloca %struct.NodeTreeIterStore, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !109
  %10 = icmp eq i16 %9, 16975
  br i1 %10, label %11, label %33

11:                                               ; preds = %3
  %12 = tail call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0) #20
  %13 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %14 = load i8, ptr %13, align 1, !tbaa !232
  %15 = and i8 %14, 7
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i16, ptr %8, align 8, !tbaa !109
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext %18) #22
  %19 = load i8, ptr %13, align 1, !tbaa !232
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi i8 [ %19, %17 ], [ %14, %11 ]
  %22 = and i8 %21, 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !113
  %27 = icmp eq ptr %26, null
  br i1 %27, label %280, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !334
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call fastcc void @dag_editors_id_update(ptr noundef %0, ptr noundef nonnull %26) #22
  br label %280

33:                                               ; preds = %28, %20, %3
  %34 = phi ptr [ null, %3 ], [ %2, %20 ], [ %2, %28 ]
  %35 = phi ptr [ %2, %3 ], [ %2, %20 ], [ %26, %28 ]
  %36 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 4
  %37 = load i16, ptr %36, align 8, !tbaa !109
  switch i16 %37, label %271 [
    i16 21827, label %38
    i16 21580, label %38
    i16 21057, label %38
    i16 19283, label %38
    i16 17741, label %38
    i16 16973, label %38
    i16 16716, label %38
    i16 16707, label %38
    i16 17748, label %58
    i16 17739, label %122
    i16 16720, label %141
    i16 16717, label %164
    i16 17229, label %183
    i16 19785, label %226
    i16 21325, label %253
  ]

38:                                               ; preds = %33, %33, %33, %33, %33, %33, %33, %33
  %39 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %38, %54
  %43 = phi ptr [ %55, %54 ], [ %40, %38 ]
  %44 = icmp eq ptr %43, %34
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 19
  %47 = load ptr, ptr %46, align 8, !tbaa !113
  %48 = icmp eq ptr %47, %35
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 103
  %51 = load i8, ptr %50, align 1, !tbaa !232
  %52 = or i8 %51, 2
  store i8 %52, ptr %50, align 1, !tbaa !232
  tail call fastcc void @lib_id_recalc_data_tag(ptr noundef %0, ptr noundef nonnull %43) #22
  %53 = tail call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef nonnull %43, i32 noundef 0) #20
  br label %54

54:                                               ; preds = %42, %45, %49
  %55 = load ptr, ptr %43, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %42, !llvm.loop !335

57:                                               ; preds = %54, %38
  switch i16 %37, label %271 [
    i16 17748, label %58
    i16 17739, label %122
    i16 16720, label %141
    i16 16717, label %164
    i16 17229, label %183
    i16 19785, label %226
    i16 21325, label %253
  ]

58:                                               ; preds = %33, %57
  %59 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %60 = load ptr, ptr %59, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %164, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 1
  br label %64

64:                                               ; preds = %62, %118
  %65 = phi ptr [ %60, %62 ], [ %119, %118 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  store ptr %35, ptr %4, align 8, !tbaa !336
  store i8 0, ptr %63, align 8, !tbaa !338
  call void @modifiers_foreachIDLink(ptr noundef nonnull %65, ptr noundef nonnull @dag_id_flush_update__isDependentTexture, ptr noundef nonnull %4) #20
  %66 = load i8, ptr %63, align 8, !tbaa !338
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 103
  %70 = load i8, ptr %69, align 1, !tbaa !232
  %71 = or i8 %70, 2
  store i8 %71, ptr %69, align 1, !tbaa !232
  call fastcc void @lib_id_recalc_data_tag(ptr noundef %0, ptr noundef nonnull %65) #22
  br label %72

72:                                               ; preds = %68, %64
  %73 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 109
  %74 = load ptr, ptr %73, align 8, !tbaa !148
  %75 = icmp eq ptr %74, null
  br i1 %75, label %118, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 103
  br label %78

78:                                               ; preds = %76, %115
  %79 = phi ptr [ %74, %76 ], [ %116, %115 ]
  %80 = getelementptr inbounds %struct.ParticleSystem, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !165
  %82 = getelementptr inbounds %struct.ParticleSettings, ptr %81, i64 0, i32 121
  %83 = getelementptr inbounds %struct.ParticleSystem, ptr %79, i64 0, i32 31
  br label %84

84:                                               ; preds = %78, %111
  %85 = phi i32 [ 0, %78 ], [ %112, %111 ]
  %86 = phi ptr [ %82, %78 ], [ %113, %111 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %111, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.MTex, ptr %87, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !339
  %92 = icmp eq ptr %91, %35
  br i1 %92, label %93, label %111

93:                                               ; preds = %89
  %94 = load i8, ptr %77, align 1, !tbaa !232
  %95 = or i8 %94, 2
  store i8 %95, ptr %77, align 1, !tbaa !232
  call fastcc void @lib_id_recalc_data_tag(ptr noundef %0, ptr noundef nonnull %65) #22
  %96 = getelementptr inbounds %struct.MTex, ptr %87, i64 0, i32 1
  %97 = load i16, ptr %96, align 2, !tbaa !341
  %98 = and i16 %97, 15
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = load i16, ptr %83, align 4, !tbaa !342
  %102 = or i16 %101, 16
  store i16 %102, ptr %83, align 4, !tbaa !342
  br label %103

103:                                              ; preds = %100, %93
  %104 = and i16 %97, 912
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i16, ptr %83, align 4, !tbaa !342
  %108 = or i16 %107, 64
  store i16 %108, ptr %83, align 4, !tbaa !342
  br label %109

109:                                              ; preds = %106, %103
  %110 = call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef nonnull %65, i32 noundef 0) #20
  br label %111

111:                                              ; preds = %84, %89, %109
  %112 = add nuw nsw i32 %85, 1
  %113 = getelementptr inbounds ptr, ptr %86, i64 1
  %114 = icmp eq i32 %112, 18
  br i1 %114, label %115, label %84, !llvm.loop !343

115:                                              ; preds = %111
  %116 = load ptr, ptr %79, align 8, !tbaa !187
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %78, !llvm.loop !344

118:                                              ; preds = %115, %72
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #23
  %119 = load ptr, ptr %65, align 8, !tbaa !34
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %64, !llvm.loop !345

121:                                              ; preds = %118
  switch i16 %37, label %271 [
    i16 17739, label %122
    i16 16720, label %141
    i16 17748, label %164
    i16 16717, label %164
    i16 17229, label %183
    i16 19785, label %226
    i16 21325, label %253
  ]

122:                                              ; preds = %33, %57, %121
  %123 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %124 = load ptr, ptr %123, align 8, !tbaa !34
  %125 = icmp eq ptr %124, null
  br i1 %125, label %271, label %126

126:                                              ; preds = %122, %137
  %127 = phi ptr [ %138, %137 ], [ %124, %122 ]
  %128 = call ptr @BKE_key_from_object(ptr noundef nonnull %127) #20
  %129 = icmp ne ptr %127, %34
  %130 = icmp eq ptr %128, %35
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.Object, ptr %127, i64 0, i32 53
  %134 = load i16, ptr %133, align 4, !tbaa !346
  %135 = or i16 %134, 3
  store i16 %135, ptr %133, align 4, !tbaa !346
  call fastcc void @lib_id_recalc_tag(ptr noundef %0, ptr noundef nonnull %127) #22
  call fastcc void @lib_id_recalc_data_tag(ptr noundef %0, ptr noundef nonnull %127) #22
  %136 = call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef nonnull %127, i32 noundef 0) #20
  br label %137

137:                                              ; preds = %126, %132
  %138 = load ptr, ptr %127, align 8, !tbaa !34
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %126, !llvm.loop !347

140:                                              ; preds = %137
  switch i16 %37, label %271 [
    i16 16720, label %141
    i16 17748, label %164
    i16 16717, label %164
    i16 17229, label %183
    i16 19785, label %226
    i16 21325, label %253
  ]

141:                                              ; preds = %33, %57, %121, %140
  %142 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %143 = load ptr, ptr %142, align 8, !tbaa !34
  %144 = icmp eq ptr %143, null
  br i1 %144, label %271, label %148

145:                                              ; preds = %160, %148
  %146 = load ptr, ptr %149, align 8, !tbaa !34
  %147 = icmp eq ptr %146, null
  br i1 %147, label %163, label %148, !llvm.loop !348

148:                                              ; preds = %141, %145
  %149 = phi ptr [ %146, %145 ], [ %143, %141 ]
  %150 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 109
  %151 = load ptr, ptr %150, align 8, !tbaa !34
  %152 = icmp eq ptr %151, null
  br i1 %152, label %145, label %153

153:                                              ; preds = %148, %160
  %154 = phi ptr [ %161, %160 ], [ %151, %148 ]
  %155 = getelementptr inbounds %struct.ParticleSystem, ptr %154, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !165
  %157 = icmp eq ptr %156, %35
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = call i32 @BKE_ptcache_object_reset(ptr noundef %1, ptr noundef nonnull %149, i32 noundef 0) #20
  br label %160

160:                                              ; preds = %153, %158
  %161 = load ptr, ptr %154, align 8, !tbaa !34
  %162 = icmp eq ptr %161, null
  br i1 %162, label %145, label %153, !llvm.loop !349

163:                                              ; preds = %145
  switch i16 %37, label %271 [
    i16 17748, label %164
    i16 16717, label %164
    i16 17229, label %183
    i16 19785, label %226
    i16 21325, label %253
  ]

164:                                              ; preds = %58, %33, %57, %121, %121, %140, %140, %163, %163
  %165 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  %166 = load ptr, ptr %165, align 8, !tbaa !350
  %167 = icmp eq ptr %166, null
  br i1 %167, label %181, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.Base, ptr %166, i64 0, i32 7
  %170 = load ptr, ptr %169, align 8, !tbaa !80
  %171 = icmp eq ptr %170, null
  br i1 %171, label %181, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.Object, ptr %170, i64 0, i32 27
  %174 = load i32, ptr %173, align 8, !tbaa !351
  %175 = and i32 %174, 16
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  call void @BKE_texpaint_slots_refresh_object(ptr noundef nonnull %1, ptr noundef nonnull %170) #20
  %178 = call zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef nonnull %1, ptr noundef nonnull %170, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #20
  %179 = getelementptr inbounds %struct.Object, ptr %170, i64 0, i32 120
  %180 = load ptr, ptr %179, align 8, !tbaa !352
  call void @GPU_drawobject_free(ptr noundef %180) #20
  br label %181

181:                                              ; preds = %164, %168, %172, %177
  %182 = icmp eq i16 %37, 17229
  br i1 %182, label %183, label %271

183:                                              ; preds = %181, %33, %57, %121, %140, %163
  %184 = getelementptr inbounds %struct.MovieClip, ptr %35, i64 0, i32 11
  call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %184) #20
  %185 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %186 = load ptr, ptr %185, align 8, !tbaa !34
  %187 = icmp eq ptr %186, null
  br i1 %187, label %207, label %188

188:                                              ; preds = %183, %204
  %189 = phi ptr [ %205, %204 ], [ %186, %183 ]
  %190 = getelementptr inbounds %struct.Object, ptr %189, i64 0, i32 106
  br label %191

191:                                              ; preds = %195, %188
  %192 = phi ptr [ %190, %188 ], [ %193, %195 ]
  %193 = load ptr, ptr %192, align 8, !tbaa !34
  %194 = icmp eq ptr %193, null
  br i1 %194, label %204, label %195

195:                                              ; preds = %191
  %196 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %193) #20
  %197 = load i16, ptr %196, align 8, !tbaa !189
  %198 = add i16 %197, -26
  %199 = icmp ult i16 %198, 3
  br i1 %199, label %200, label %191, !llvm.loop !353

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.Object, ptr %189, i64 0, i32 103
  %202 = load i8, ptr %201, align 1, !tbaa !232
  %203 = or i8 %202, 1
  store i8 %203, ptr %201, align 1, !tbaa !232
  call fastcc void @lib_id_recalc_tag(ptr noundef %0, ptr noundef nonnull %189) #22
  br label %204

204:                                              ; preds = %191, %200
  %205 = load ptr, ptr %189, align 8, !tbaa !34
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %188, !llvm.loop !354

207:                                              ; preds = %204, %183
  %208 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 18
  %209 = load ptr, ptr %208, align 8, !tbaa !254
  %210 = icmp eq ptr %209, null
  br i1 %210, label %225, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.bNodeTree, ptr %209, i64 0, i32 7
  %213 = load ptr, ptr %212, align 8, !tbaa !34
  %214 = icmp eq ptr %213, null
  br i1 %214, label %225, label %215

215:                                              ; preds = %211, %222
  %216 = phi ptr [ %223, %222 ], [ %213, %211 ]
  %217 = getelementptr inbounds %struct.bNode, ptr %216, i64 0, i32 20
  %218 = load ptr, ptr %217, align 8, !tbaa !257
  %219 = icmp eq ptr %218, %35
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load ptr, ptr %208, align 8, !tbaa !254
  call void @nodeUpdate(ptr noundef %221, ptr noundef nonnull %216) #20
  br label %222

222:                                              ; preds = %215, %220
  %223 = load ptr, ptr %216, align 8, !tbaa !34
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %215, !llvm.loop !355

225:                                              ; preds = %222, %211, %207
  switch i16 %37, label %271 [
    i16 19785, label %226
    i16 21325, label %253
  ]

226:                                              ; preds = %33, %57, %121, %140, %163, %225
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %5, ptr noundef %0) #20
  %227 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %228 = icmp eq i8 %227, 1
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #23
  br label %271

230:                                              ; preds = %226, %248
  %231 = load ptr, ptr %6, align 8, !tbaa !34
  %232 = icmp eq ptr %231, null
  br i1 %232, label %248, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.bNodeTree, ptr %231, i64 0, i32 9
  %235 = load i32, ptr %234, align 8, !tbaa !356
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.bNodeTree, ptr %231, i64 0, i32 7
  br label %239

239:                                              ; preds = %243, %237
  %240 = phi ptr [ %238, %237 ], [ %241, %243 ]
  %241 = load ptr, ptr %240, align 8, !tbaa !34
  %242 = icmp eq ptr %241, null
  br i1 %242, label %248, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.bNode, ptr %241, i64 0, i32 20
  %245 = load ptr, ptr %244, align 8, !tbaa !257
  %246 = icmp eq ptr %245, %35
  br i1 %246, label %247, label %239, !llvm.loop !359

247:                                              ; preds = %243
  call fastcc void @lib_id_recalc_tag(ptr noundef %0, ptr noundef nonnull %231) #22
  br label %248

248:                                              ; preds = %239, %247, %233, %230
  %249 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %250 = icmp eq i8 %249, 1
  br i1 %250, label %230, label %251, !llvm.loop !360

251:                                              ; preds = %248
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #23
  %252 = icmp eq i16 %37, 21325
  br i1 %252, label %253, label %271

253:                                              ; preds = %33, %57, %121, %140, %163, %225, %251
  %254 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 18
  %255 = load ptr, ptr %254, align 8, !tbaa !254
  %256 = icmp eq ptr %255, null
  br i1 %256, label %271, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.bNodeTree, ptr %255, i64 0, i32 7
  %259 = load ptr, ptr %258, align 8, !tbaa !34
  %260 = icmp eq ptr %259, null
  br i1 %260, label %271, label %261

261:                                              ; preds = %257, %268
  %262 = phi ptr [ %269, %268 ], [ %259, %257 ]
  %263 = getelementptr inbounds %struct.bNode, ptr %262, i64 0, i32 20
  %264 = load ptr, ptr %263, align 8, !tbaa !257
  %265 = icmp eq ptr %264, %35
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = load ptr, ptr %254, align 8, !tbaa !254
  call void @nodeUpdate(ptr noundef %267, ptr noundef nonnull %262) #20
  br label %268

268:                                              ; preds = %261, %266
  %269 = load ptr, ptr %262, align 8, !tbaa !34
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %261, !llvm.loop !361

271:                                              ; preds = %268, %141, %122, %229, %257, %181, %33, %57, %121, %140, %163, %225, %253, %251
  %272 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !195
  %274 = icmp eq ptr %273, %35
  br i1 %274, label %275, label %279

275:                                              ; preds = %271
  %276 = call ptr @BKE_object_movieclip_get(ptr noundef nonnull %1, ptr noundef nonnull %35, i8 noundef zeroext 1) #20
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %275
  call fastcc void @dag_id_flush_update(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %276) #22
  br label %279

279:                                              ; preds = %275, %278, %271
  call fastcc void @dag_editors_id_update(ptr noundef %0, ptr noundef nonnull %35) #22
  br label %280

280:                                              ; preds = %24, %32, %279
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_ids_check_recalc(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %4) #23
  %5 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %4) #20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = sext i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %23
  %10 = phi i64 [ %8, %7 ], [ %11, %23 ]
  %11 = add nsw i64 %10, -1
  %12 = getelementptr inbounds [35 x ptr], ptr %4, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = load ptr, ptr %13, align 8, !tbaa !327
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4
  %18 = load i8, ptr %17, align 8, !tbaa !123
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !123
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %9, %16
  %24 = and i64 %11, 4294967295
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %9

26:                                               ; preds = %23, %16, %3
  %27 = phi i8 [ 0, %3 ], [ 1, %16 ], [ 0, %23 ]
  %28 = or i8 %27, %2
  %29 = icmp ne i8 %28, 0
  %30 = zext i1 %29 to i32
  call fastcc void @dag_editors_scene_update(ptr noundef %0, ptr noundef %1, i32 noundef %30) #22
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_editors_scene_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !362 {
  %4 = load ptr, ptr @EditorsUpdateSceneCb, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void %4(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_ids_clear_recalc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [35 x ptr], align 16
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %2) #23
  %4 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 16975) #22, !range !297
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %44, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  call fastcc void @dag_current_scene_layers(ptr noundef %0, ptr noundef nonnull %3) #22
  %7 = load ptr, ptr %3, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %6, %36
  %10 = phi ptr [ %38, %36 ], [ %7, %6 ]
  %11 = phi i8 [ %37, %36 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.DagSceneLayer, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !298
  %14 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 31
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp ne ptr %16, null
  %18 = icmp eq i8 %11, 0
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %36

20:                                               ; preds = %9, %32
  %21 = phi ptr [ %34, %32 ], [ %16, %9 ]
  %22 = getelementptr inbounds %struct.DagNode, ptr %21, i64 0, i32 1
  %23 = load i16, ptr %22, align 4, !tbaa !87
  %24 = icmp eq i16 %23, 16975
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.DagNode, ptr %21, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 103
  %29 = load i8, ptr %28, align 1, !tbaa !232
  %30 = and i8 %29, 7
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25, %20
  %33 = getelementptr inbounds %struct.DagNode, ptr %21, i64 0, i32 18
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %20, !llvm.loop !363

36:                                               ; preds = %32, %25, %9
  %37 = phi i8 [ %11, %9 ], [ 1, %25 ], [ 0, %32 ]
  %38 = load ptr, ptr %10, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %9, !llvm.loop !364

40:                                               ; preds = %36
  %41 = icmp eq i8 %37, 0
  br label %42

42:                                               ; preds = %40, %6
  %43 = phi i1 [ true, %6 ], [ %41, %40 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  br label %44

44:                                               ; preds = %42, %1
  %45 = phi i1 [ %43, %42 ], [ true, %1 ]
  %46 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %2) #20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %88, label %48

48:                                               ; preds = %44
  %49 = sext i32 %46 to i64
  br label %50

50:                                               ; preds = %48, %85
  %51 = phi i64 [ %49, %48 ], [ %52, %85 ]
  %52 = add nsw i64 %51, -1
  %53 = getelementptr inbounds [35 x ptr], ptr %2, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = load ptr, ptr %54, align 8, !tbaa !327
  %56 = icmp eq ptr %55, null
  br i1 %56, label %85, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.ID, ptr %55, i64 0, i32 4
  %59 = load i8, ptr %58, align 8, !tbaa !123
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !123
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %57, %82
  %65 = phi ptr [ %83, %82 ], [ %55, %57 ]
  %66 = getelementptr inbounds %struct.ID, ptr %65, i64 0, i32 5
  %67 = load i16, ptr %66, align 2, !tbaa !249
  %68 = and i16 %67, 12288
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = and i16 %67, -12289
  store i16 %71, ptr %66, align 2, !tbaa !249
  br label %72

72:                                               ; preds = %70, %64
  %73 = call ptr @ntreeFromID(ptr noundef nonnull %65) #20
  %74 = icmp eq ptr %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.ID, ptr %73, i64 0, i32 5
  %77 = load i16, ptr %76, align 2, !tbaa !365
  %78 = and i16 %77, 12288
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = and i16 %77, -12289
  store i16 %81, ptr %76, align 2, !tbaa !365
  br label %82

82:                                               ; preds = %72, %75, %80
  %83 = load ptr, ptr %65, align 8, !tbaa !329
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %64

85:                                               ; preds = %82, %57, %50
  %86 = and i64 %52, 4294967295
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %50, !llvm.loop !366

88:                                               ; preds = %85, %44
  %89 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %89, i8 0, i64 256, i1 false)
  br i1 %45, label %91, label %90

90:                                               ; preds = %88
  call void @DAG_id_type_tag(ptr noundef nonnull %0, i16 noundef signext 16975) #22
  br label %91

91:                                               ; preds = %90, %88
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @DAG_id_type_tagged(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #11 {
  %3 = and i16 %1, 255
  %4 = zext nneg i16 %3 to i64
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 45, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !123
  %7 = zext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @ntreeFromID(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @DAG_id_tag_update_ex(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %103, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !226
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %11 = sext i16 %2 to i32
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull @__func__.DAG_id_tag_update_ex, ptr noundef nonnull %10, i32 noundef %11) #22
  br label %13

13:                                               ; preds = %9, %5
  %14 = icmp eq i16 %2, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = zext i16 %2 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call fastcc void @lib_id_recalc_tag(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %20

20:                                               ; preds = %19, %15
  %21 = and i32 %16, 250
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  tail call fastcc void @lib_id_recalc_data_tag(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %25

24:                                               ; preds = %13
  tail call fastcc void @lib_id_recalc_tag(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %103

25:                                               ; preds = %20, %23
  %26 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %27 = load i16, ptr %26, align 8, !tbaa !109
  switch i16 %27, label %103 [
    i16 16975, label %28
    i16 16720, label %34
    i16 18006, label %66
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 103
  %30 = load i8, ptr %29, align 1, !tbaa !232
  %31 = trunc i16 %2 to i8
  %32 = and i8 %31, 7
  %33 = or i8 %30, %32
  store i8 %33, ptr %29, align 1, !tbaa !232
  br label %103

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %103, label %38

38:                                               ; preds = %34
  %39 = trunc i16 %2 to i8
  %40 = and i8 %39, 7
  %41 = and i16 %2, 248
  br label %45

42:                                               ; preds = %63, %45
  %43 = load ptr, ptr %46, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %103, label %45, !llvm.loop !367

45:                                               ; preds = %38, %42
  %46 = phi ptr [ %36, %38 ], [ %43, %42 ]
  %47 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 109
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %42, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 103
  br label %52

52:                                               ; preds = %50, %63
  %53 = phi ptr [ %48, %50 ], [ %64, %63 ]
  %54 = getelementptr inbounds %struct.ParticleSystem, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !165
  %56 = icmp eq ptr %55, %1
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i8, ptr %51, align 1, !tbaa !232
  %59 = or i8 %58, %40
  store i8 %59, ptr %51, align 1, !tbaa !232
  %60 = getelementptr inbounds %struct.ParticleSystem, ptr %53, i64 0, i32 31
  %61 = load i16, ptr %60, align 4, !tbaa !342
  %62 = or i16 %61, %41
  store i16 %62, ptr %60, align 4, !tbaa !342
  tail call fastcc void @lib_id_recalc_tag(ptr noundef %0, ptr noundef nonnull %46) #22
  tail call fastcc void @lib_id_recalc_data_tag(ptr noundef %0, ptr noundef nonnull %46) #22
  br label %63

63:                                               ; preds = %52, %57
  %64 = load ptr, ptr %53, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %42, label %52, !llvm.loop !368

66:                                               ; preds = %25
  %67 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %103, label %70

70:                                               ; preds = %66
  %71 = trunc i16 %2 to i8
  %72 = and i8 %71, 7
  br label %73

73:                                               ; preds = %70, %100
  %74 = phi ptr [ %68, %70 ], [ %101, %100 ]
  %75 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 3
  %76 = load i16, ptr %75, align 8, !tbaa !116
  %77 = icmp eq i16 %76, 4
  br i1 %77, label %78, label %100

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 19
  %80 = load ptr, ptr %79, align 8, !tbaa !113
  %81 = getelementptr inbounds %struct.Curve, ptr %80, i64 0, i32 55
  %82 = load ptr, ptr %81, align 8, !tbaa !289
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.Curve, ptr %80, i64 0, i32 56
  %86 = load ptr, ptr %85, align 8, !tbaa !369
  %87 = icmp eq ptr %86, %1
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.Curve, ptr %80, i64 0, i32 57
  %90 = load ptr, ptr %89, align 8, !tbaa !370
  %91 = icmp eq ptr %90, %1
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.Curve, ptr %80, i64 0, i32 58
  %94 = load ptr, ptr %93, align 8, !tbaa !371
  %95 = icmp eq ptr %94, %1
  br i1 %95, label %96, label %100

96:                                               ; preds = %92, %88, %84, %78
  %97 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 103
  %98 = load i8, ptr %97, align 1, !tbaa !232
  %99 = or i8 %98, %72
  store i8 %99, ptr %97, align 1, !tbaa !232
  br label %100

100:                                              ; preds = %92, %96, %73
  %101 = load ptr, ptr %74, align 8, !tbaa !34
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %73, !llvm.loop !372

103:                                              ; preds = %100, %42, %66, %34, %24, %28, %25, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_pose_sort(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  %6 = tail call ptr @dag_init() #22
  %7 = getelementptr inbounds %struct.DagForest, ptr %6, i64 0, i32 5
  store i8 0, ptr %7, align 4, !tbaa !54
  %8 = tail call ptr @dag_add_node(ptr noundef %6, ptr noundef null) #22
  %9 = load ptr, ptr %5, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %98, label %11

11:                                               ; preds = %1, %95
  %12 = phi ptr [ %96, %95 ], [ %9, %1 ]
  %13 = call ptr @dag_get_node(ptr noundef %6, ptr noundef nonnull %12) #22
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !373
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = call ptr @dag_get_node(ptr noundef %6, ptr noundef nonnull %15) #22
  call void @dag_add_relation(ptr poison, ptr noundef %18, ptr noundef %13, i16 noundef signext 0, ptr noundef nonnull @.str.18) #22
  br label %19

19:                                               ; preds = %17, %11
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %93, label %23

23:                                               ; preds = %19, %90
  %24 = phi ptr [ %91, %90 ], [ %21, %19 ]
  %25 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %24) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %90, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %25, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !119
  %30 = icmp eq ptr %29, null
  br i1 %30, label %90, label %31

31:                                               ; preds = %27
  %32 = call i32 %29(ptr noundef nonnull %24, ptr noundef nonnull %3) #20
  %33 = load ptr, ptr %3, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %85, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bConstraint, ptr %24, i64 0, i32 3
  %37 = getelementptr inbounds %struct.bConstraint, ptr %24, i64 0, i32 2
  br label %38

38:                                               ; preds = %35, %82
  %39 = phi ptr [ %33, %35 ], [ %83, %82 ]
  %40 = getelementptr inbounds %struct.bConstraintTarget, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !121
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %82

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %39, i64 0, i32 3
  %45 = load i8, ptr %44, align 8, !tbaa !123
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %82, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %4, align 8, !tbaa !117
  %49 = call ptr @BKE_pose_channel_find_name(ptr noundef %48, ptr noundef nonnull %44) #20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %82, label %51

51:                                               ; preds = %47
  %52 = call ptr @dag_get_node(ptr noundef %6, ptr noundef nonnull %49) #22
  call void @dag_add_relation(ptr poison, ptr noundef %52, ptr noundef %13, i16 noundef signext 0, ptr noundef nonnull @.str.19) #22
  %53 = load i16, ptr %36, align 8, !tbaa !124
  %54 = icmp eq i16 %53, 3
  br i1 %54, label %55, label %82

55:                                               ; preds = %51
  %56 = load ptr, ptr %37, align 8, !tbaa !190
  %57 = getelementptr inbounds %struct.bKinematicConstraint, ptr %56, i64 0, i32 2
  %58 = load i16, ptr %57, align 2, !tbaa !375
  %59 = and i16 %58, 1
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load ptr, ptr %14, align 8, !tbaa !373
  br label %63

63:                                               ; preds = %55, %61
  %64 = phi ptr [ %62, %61 ], [ %12, %55 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %82, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.bKinematicConstraint, ptr %56, i64 0, i32 3
  br label %68

68:                                               ; preds = %66, %78
  %69 = phi i32 [ 0, %66 ], [ %72, %78 ]
  %70 = phi ptr [ %64, %66 ], [ %80, %78 ]
  %71 = call ptr @dag_get_node(ptr noundef %6, ptr noundef nonnull %70) #22
  call void @dag_add_relation(ptr poison, ptr noundef %52, ptr noundef %71, i16 noundef signext 0, ptr noundef nonnull @.str.20) #22
  %72 = add nuw nsw i32 %69, 1
  %73 = load i16, ptr %67, align 4, !tbaa !377
  %74 = sext i16 %73 to i32
  %75 = icmp eq i32 %72, %74
  %76 = icmp ugt i32 %69, 254
  %77 = or i1 %76, %75
  br i1 %77, label %82, label %78

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.bPoseChannel, ptr %70, i64 0, i32 13
  %80 = load ptr, ptr %79, align 8, !tbaa !373
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %68, !llvm.loop !378

82:                                               ; preds = %78, %68, %63, %47, %51, %38, %43
  %83 = load ptr, ptr %39, align 8, !tbaa !34
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %38, !llvm.loop !379

85:                                               ; preds = %82, %31
  %86 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %25, i64 0, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !127
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  call void %87(ptr noundef nonnull %24, ptr noundef nonnull %3, i8 noundef zeroext 1) #20
  br label %90

90:                                               ; preds = %85, %89, %27, %23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  %91 = load ptr, ptr %24, align 8, !tbaa !34
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %23, !llvm.loop !380

93:                                               ; preds = %90, %19
  br i1 %16, label %94, label %95

94:                                               ; preds = %93
  call void @dag_add_relation(ptr poison, ptr noundef %8, ptr noundef %13, i16 noundef signext 0, ptr noundef nonnull @.str.21) #22
  br label %95

95:                                               ; preds = %94, %93
  %96 = load ptr, ptr %12, align 8, !tbaa !34
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %11, !llvm.loop !381

98:                                               ; preds = %95, %1
  call fastcc void @dag_check_cycle(ptr noundef %6) #22
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %2) #22
  %99 = call ptr @queue_create(i32 noundef 50) #22
  %100 = load ptr, ptr %6, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %98, %102
  %103 = phi ptr [ %105, %102 ], [ %100, %98 ]
  store i32 0, ptr %103, align 8, !tbaa !92
  %104 = getelementptr inbounds %struct.DagNode, ptr %103, i64 0, i32 18
  %105 = load ptr, ptr %104, align 8, !tbaa !34
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %102, !llvm.loop !382

107:                                              ; preds = %102, %98
  store i32 1, ptr %8, align 8, !tbaa !92
  call void @push_stack(ptr noundef %99, ptr noundef nonnull %8) #22
  %108 = getelementptr inbounds %struct.DagNodeQueue, ptr %99, i64 0, i32 2
  %109 = load i32, ptr %108, align 8, !tbaa !47
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %138, label %111

111:                                              ; preds = %107, %135
  %112 = call ptr @get_top_node_queue(ptr noundef nonnull %99) #22
  %113 = getelementptr inbounds %struct.DagNode, ptr %112, i64 0, i32 16
  %114 = load ptr, ptr %113, align 8, !tbaa !34
  %115 = icmp eq ptr %114, null
  br i1 %115, label %128, label %120

116:                                              ; preds = %120
  %117 = getelementptr inbounds %struct.DagAdjList, ptr %121, i64 0, i32 5
  %118 = load ptr, ptr %117, align 8, !tbaa !34
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120, !llvm.loop !383

120:                                              ; preds = %111, %116
  %121 = phi ptr [ %118, %116 ], [ %114, %111 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !89
  %123 = load i32, ptr %122, align 8, !tbaa !92
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %116

125:                                              ; preds = %120
  store i32 1, ptr %122, align 8, !tbaa !92
  call void @push_stack(ptr noundef %99, ptr noundef nonnull %122) #22
  br label %135

126:                                              ; preds = %116
  %127 = icmp eq ptr %112, null
  br i1 %127, label %135, label %128

128:                                              ; preds = %111, %126
  %129 = call ptr @pop_queue(ptr noundef %99) #22
  %130 = getelementptr inbounds %struct.DagNode, ptr %129, i64 0, i32 5
  %131 = load ptr, ptr %130, align 8, !tbaa !95
  %132 = icmp eq ptr %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  store i32 2, ptr %129, align 8, !tbaa !92
  call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %131) #20
  %134 = load ptr, ptr %130, align 8, !tbaa !95
  call void @BLI_addhead(ptr noundef nonnull %2, ptr noundef %134) #20
  br label %135

135:                                              ; preds = %125, %133, %126
  %136 = load i32, ptr %108, align 8, !tbaa !47
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %111, !llvm.loop !384

138:                                              ; preds = %135, %128, %107
  %139 = load ptr, ptr %5, align 8, !tbaa !385
  %140 = icmp eq ptr %139, null
  br i1 %140, label %147, label %141

141:                                              ; preds = %138, %141
  %142 = phi ptr [ %145, %141 ], [ %139, %138 ]
  call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef nonnull %142) #20
  call void @BLI_addhead(ptr noundef nonnull %2, ptr noundef nonnull %142) #20
  %143 = getelementptr inbounds %struct.bPoseChannel, ptr %142, i64 0, i32 4
  %144 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %143) #22
  %145 = load ptr, ptr %5, align 8, !tbaa !385
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %141, !llvm.loop !386

147:                                              ; preds = %141, %138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !225
  call void @queue_delete(ptr noundef %99) #22
  call void @free_forest(ptr noundef nonnull %6) #22
  %148 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %148(ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_check_cycle(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !387 {
  %2 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 3
  store i8 1, ptr %2, align 4, !tbaa !388
  %3 = load i1, ptr @dag_print_dependencies, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  br i1 %3, label %5, label %14

5:                                                ; preds = %1
  %6 = icmp eq ptr %4, null
  br i1 %6, label %90, label %7

7:                                                ; preds = %5, %7
  %8 = phi ptr [ %10, %7 ], [ %4, %5 ]
  tail call fastcc void @dag_node_print_dependencies(ptr noundef nonnull %0, ptr noundef nonnull %8) #22
  %9 = getelementptr inbounds %struct.DagNode, ptr %8, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !389

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi ptr [ %13, %12 ], [ %4, %1 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %90, label %18

17:                                               ; preds = %18
  br i1 %16, label %90, label %26

18:                                               ; preds = %14, %18
  %19 = phi ptr [ %21, %18 ], [ %15, %14 ]
  store i32 0, ptr %19, align 8, !tbaa !92
  %20 = getelementptr inbounds %struct.DagNode, ptr %19, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %17, label %18, !llvm.loop !390

23:                                               ; preds = %33
  %24 = load ptr, ptr %0, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %90, label %40

26:                                               ; preds = %17, %33
  %27 = phi ptr [ %35, %33 ], [ %15, %17 ]
  %28 = load i32, ptr %27, align 8, !tbaa !92
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = tail call fastcc i32 @dag_node_recurs_level(ptr noundef nonnull %27, i32 noundef 0) #22
  %32 = getelementptr inbounds %struct.DagNode, ptr %27, i64 0, i32 7
  store i32 %31, ptr %32, align 8, !tbaa !115
  br label %33

33:                                               ; preds = %26, %30
  %34 = getelementptr inbounds %struct.DagNode, ptr %27, i64 0, i32 18
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %23, label %26, !llvm.loop !391

37:                                               ; preds = %71
  %38 = load ptr, ptr %0, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %90, label %75

40:                                               ; preds = %23, %71
  %41 = phi ptr [ %73, %71 ], [ %24, %23 ]
  %42 = getelementptr inbounds %struct.DagNode, ptr %41, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %71, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.DagNode, ptr %41, i64 0, i32 7
  %47 = getelementptr inbounds %struct.DagNode, ptr %41, i64 0, i32 5
  br label %48

48:                                               ; preds = %45, %67
  %49 = phi ptr [ %43, %45 ], [ %69, %67 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !89
  %51 = getelementptr inbounds %struct.DagNode, ptr %50, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !115
  %53 = load i32, ptr %46, align 8, !tbaa !115
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load ptr, ptr %47, align 8, !tbaa !95
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.DagNode, ptr %50, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !95
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  store i8 0, ptr %2, align 4, !tbaa !388
  %63 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.60)
  %64 = load ptr, ptr %49, align 8, !tbaa !89
  %65 = getelementptr inbounds %struct.DagAdjList, ptr %49, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !205
  tail call fastcc void @dag_node_print_dependency_cycle(ptr noundef nonnull %0, ptr noundef %64, ptr noundef nonnull %41, ptr noundef %66) #22
  br label %67

67:                                               ; preds = %48, %62, %58, %55
  %68 = getelementptr inbounds %struct.DagAdjList, ptr %49, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %48, !llvm.loop !392

71:                                               ; preds = %67, %40
  %72 = getelementptr inbounds %struct.DagNode, ptr %41, i64 0, i32 18
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %37, label %40, !llvm.loop !393

75:                                               ; preds = %37, %86
  %76 = phi ptr [ %88, %86 ], [ %38, %37 ]
  %77 = getelementptr inbounds %struct.DagNode, ptr %76, i64 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !104
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %75, %80
  %81 = phi ptr [ %83, %80 ], [ %78, %75 ]
  %82 = getelementptr inbounds %struct.DagAdjList, ptr %81, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !102
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %84(ptr noundef nonnull %81) #20
  store ptr %83, ptr %77, align 8, !tbaa !104
  %85 = icmp eq ptr %83, null
  br i1 %85, label %86, label %80, !llvm.loop !394

86:                                               ; preds = %80, %75
  %87 = getelementptr inbounds %struct.DagNode, ptr %76, i64 0, i32 18
  %88 = load ptr, ptr %87, align 8, !tbaa !34
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %75, !llvm.loop !395

90:                                               ; preds = %86, %5, %14, %17, %23, %37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #13 !PGOFuncName !396 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_threaded_update_begin(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 31
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %9

8:                                                ; preds = %9
  br i1 %7, label %37, label %16

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %14, %9 ], [ %6, %3 ]
  %11 = getelementptr inbounds %struct.DagNode, ptr %10, i64 0, i32 19
  store i32 0, ptr %11, align 8, !tbaa !397
  %12 = getelementptr inbounds %struct.DagNode, ptr %10, i64 0, i32 20
  store i8 0, ptr %12, align 4, !tbaa !398
  %13 = getelementptr inbounds %struct.DagNode, ptr %10, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %9, !llvm.loop !399

16:                                               ; preds = %8, %33
  %17 = phi ptr [ %35, %33 ], [ %6, %8 ]
  %18 = getelementptr inbounds %struct.DagNode, ptr %17, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %16, %29
  %22 = phi ptr [ %31, %29 ], [ %19, %16 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !89
  %24 = icmp eq ptr %23, %17
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.DagNode, ptr %23, i64 0, i32 19
  %27 = load i32, ptr %26, align 8, !tbaa !397
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !397
  br label %29

29:                                               ; preds = %21, %25
  %30 = getelementptr inbounds %struct.DagAdjList, ptr %22, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %21, !llvm.loop !400

33:                                               ; preds = %29, %16
  %34 = getelementptr inbounds %struct.DagNode, ptr %17, i64 0, i32 18
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %16, !llvm.loop !401

37:                                               ; preds = %33, %3, %8
  tail call void @BLI_spin_lock(ptr noundef nonnull @threaded_update_lock) #20
  %38 = load ptr, ptr %4, align 8, !tbaa !57
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %37, %48
  %42 = phi ptr [ %50, %48 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.DagNode, ptr %42, i64 0, i32 19
  %44 = load i32, ptr %43, align 8, !tbaa !397
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.DagNode, ptr %42, i64 0, i32 20
  store i8 1, ptr %47, align 4, !tbaa !398
  tail call void %1(ptr noundef nonnull %42, ptr noundef %2) #20
  br label %48

48:                                               ; preds = %41, %46
  %49 = getelementptr inbounds %struct.DagNode, ptr %42, i64 0, i32 18
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %41, !llvm.loop !402

52:                                               ; preds = %48, %37
  tail call void @BLI_spin_unlock(ptr noundef nonnull @threaded_update_lock) #20
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_threaded_update_handle_node_updated(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3, %21
  %8 = phi ptr [ %23, %21 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.DagNode, ptr %9, i64 0, i32 19
  %13 = load i32, ptr %12, align 4, !tbaa !302
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 4, !tbaa !302
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  tail call void @BLI_spin_lock(ptr noundef nonnull @threaded_update_lock) #20
  %17 = getelementptr inbounds %struct.DagNode, ptr %9, i64 0, i32 20
  %18 = load i8, ptr %17, align 4, !tbaa !398
  %19 = icmp eq i8 %18, 0
  store i8 1, ptr %17, align 4, !tbaa !398
  tail call void @BLI_spin_unlock(ptr noundef nonnull @threaded_update_lock) #20
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void %1(ptr noundef nonnull %9, ptr noundef %2) #20
  br label %21

21:                                               ; preds = %16, %20, %11, %7
  %22 = getelementptr inbounds %struct.DagAdjList, ptr %8, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !403

25:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DAG_print_dependencies(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  store i1 true, ptr @dag_print_dependencies, align 4
  %4 = icmp eq ptr %2, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !351
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %11) #22
  tail call void @DAG_pose_sort(ptr noundef nonnull %2) #22
  br label %16

13:                                               ; preds = %5, %3
  %14 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %14) #22
  tail call void @DAG_scene_relations_rebuild(ptr noundef %0, ptr noundef %1) #22
  br label %16

16:                                               ; preds = %13, %10
  store i1 false, ptr @dag_print_dependencies, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @DAG_get_node_object(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 4, !tbaa !87
  %4 = icmp eq i16 %3, 16975
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @DAG_get_node_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 31
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = tail call fastcc ptr @dag_node_name(ptr noundef %4, ptr noundef %1) #22
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @dag_node_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !404 {
  %3 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DagForest, ptr %0, i64 0, i32 5
  %8 = load i8, ptr %7, align 4, !tbaa !54
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  br label %14

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 4
  br label %14

14:                                               ; preds = %2, %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ], [ @.str.58, %2 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local signext i16 @DAG_get_eval_flags_for_object(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi ptr [ %0, %2 ], [ %16, %14 ]
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 31
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @dag_find_node(ptr noundef nonnull %6, ptr noundef %1) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.DagNode, ptr %9, i64 0, i32 21
  %13 = load i16, ptr %12, align 2, !tbaa !162
  br label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !265
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %3

18:                                               ; preds = %14, %3, %11
  %19 = phi i16 [ %13, %11 ], [ 0, %3 ], [ 0, %14 ]
  ret i16 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @DAG_is_acyclic(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.DagForest, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 4, !tbaa !388
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_add_driver_relation(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !405 {
  %5 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %85, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %3, 0
  br label %13

10:                                               ; preds = %31, %24
  %11 = load ptr, ptr %14, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %85, label %13, !llvm.loop !406

13:                                               ; preds = %8, %10
  %14 = phi ptr [ %6, %8 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !407
  br i1 %9, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !409
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) @.str.46) #25
  %23 = icmp ne ptr %22, null
  br label %24

24:                                               ; preds = %17, %21, %13
  %25 = phi i1 [ true, %13 ], [ false, %17 ], [ %23, %21 ]
  %26 = load ptr, ptr %16, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %10, label %28

28:                                               ; preds = %24
  %29 = select i1 %25, i16 32, i16 16
  %30 = select i1 %25, i16 8, i16 4
  br label %34

31:                                               ; preds = %79, %34
  %32 = load ptr, ptr %35, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %10, label %34, !llvm.loop !410

34:                                               ; preds = %28, %31
  %35 = phi ptr [ %26, %28 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.DriverVar, ptr %35, i64 0, i32 4
  %37 = load i16, ptr %36, align 8, !tbaa !411
  %38 = icmp sgt i16 %37, 0
  br i1 %38, label %39, label %31

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.DriverVar, ptr %35, i64 0, i32 3
  br label %41

41:                                               ; preds = %39, %79
  %42 = phi i32 [ %80, %79 ], [ 0, %39 ]
  %43 = phi ptr [ %81, %79 ], [ %40, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !413
  %45 = icmp eq ptr %44, null
  br i1 %45, label %79, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ID, ptr %44, i64 0, i32 4
  %48 = load i16, ptr %47, align 8, !tbaa !109
  %49 = icmp eq i16 %48, 16975
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %44) #22
  %52 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 3
  %53 = load i16, ptr %52, align 8, !tbaa !116
  %54 = icmp eq i16 %53, 25
  %55 = getelementptr inbounds %struct.DriverTarget, ptr %43, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !415
  br i1 %54, label %57, label %71

57:                                               ; preds = %50
  %58 = icmp eq ptr %56, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(1) @.str.47) #25
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %59, %57
  %63 = getelementptr inbounds %struct.DriverTarget, ptr %43, i64 0, i32 4
  %64 = load i16, ptr %63, align 2, !tbaa !416
  %65 = and i16 %64, 1
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.DriverTarget, ptr %43, i64 0, i32 2
  %69 = load i8, ptr %68, align 8, !tbaa !123
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %50, %67, %62
  %72 = icmp eq ptr %56, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %71
  %74 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(1) @.str.49) #25
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %71
  br label %77

77:                                               ; preds = %73, %59, %67, %76
  %78 = phi i16 [ %30, %76 ], [ %29, %67 ], [ %29, %59 ], [ %29, %73 ]
  tail call void @dag_add_relation(ptr poison, ptr noundef %51, ptr noundef %2, i16 noundef signext %78, ptr noundef nonnull @.str.48) #22
  br label %79

79:                                               ; preds = %77, %41, %46
  %80 = add nuw nsw i32 %42, 1
  %81 = getelementptr inbounds %struct.DriverTarget, ptr %43, i64 1
  %82 = load i16, ptr %36, align 8, !tbaa !411
  %83 = sext i16 %82 to i32
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %41, label %31, !llvm.loop !417

85:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @modifiers_isModifierEnabled(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_add_collision_field_relation(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !418 {
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
  %15 = load ptr, ptr %14, align 8, !tbaa !165
  %16 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !177
  %18 = load ptr, ptr %17, align 8, !tbaa !419
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
  %27 = load ptr, ptr %26, align 8, !tbaa !145
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 52
  %29 = load i32, ptr %28, align 8, !tbaa !237
  %30 = load i32, ptr %11, align 8, !tbaa !237
  %31 = and i32 %30, %29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  tail call fastcc void @check_and_create_collision_relation(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %27, i32 noundef %4, i8 noundef zeroext %5) #22
  br label %34

34:                                               ; preds = %24, %33
  %35 = load ptr, ptr %25, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %24, !llvm.loop !421

37:                                               ; preds = %34, %20, %12
  %38 = load ptr, ptr %13, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %12, !llvm.loop !422

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
  %49 = load i32, ptr %48, align 8, !tbaa !255
  %50 = load i32, ptr %45, align 8, !tbaa !237
  %51 = and i32 %50, %49
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.Base, ptr %47, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !80
  tail call fastcc void @check_and_create_collision_relation(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %55, i32 noundef %4, i8 noundef zeroext %5) #22
  br label %56

56:                                               ; preds = %46, %53
  %57 = load ptr, ptr %47, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %46, !llvm.loop !423

59:                                               ; preds = %56, %40
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_mball_basis_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_add_material_driver_relations(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !424 {
  %4 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !425
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = or disjoint i16 %5, 1024
  store i16 %9, ptr %4, align 2, !tbaa !425
  %10 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !429
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @dag_add_driver_relation(ptr noundef nonnull %11, ptr noundef %0, ptr noundef %1, i32 noundef 1) #22
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 103
  %16 = load ptr, ptr %15, align 8, !tbaa !430
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @dag_add_shader_nodetree_driver_relations(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %16) #22
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i16, ptr %4, align 2, !tbaa !425
  %21 = and i16 %20, -1025
  store i16 %21, ptr %4, align 2, !tbaa !425
  br label %22

22:                                               ; preds = %3, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_add_lamp_driver_relations(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !431 {
  %4 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !432
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = or disjoint i16 %5, 1024
  store i16 %9, ptr %4, align 2, !tbaa !432
  %10 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !434
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @dag_add_driver_relation(ptr noundef nonnull %11, ptr noundef %0, ptr noundef %1, i32 noundef 1) #22
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %struct.Lamp, ptr %2, i64 0, i32 74
  %16 = load ptr, ptr %15, align 8, !tbaa !435
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @dag_add_shader_nodetree_driver_relations(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %16) #22
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i16, ptr %4, align 2, !tbaa !432
  %21 = and i16 %20, -1025
  store i16 %21, ptr %4, align 2, !tbaa !432
  br label %22

22:                                               ; preds = %3, %19
  ret void
}

; Function Attrs: optsize
declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pdInitEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pdEndEffectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_and_create_collision_relation(ptr nocapture noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !436 {
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %8 = load ptr, ptr %7, align 8, !tbaa !437
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 1
  %12 = load i16, ptr %11, align 4, !tbaa !438
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 2
  %16 = load i16, ptr %15, align 2, !tbaa !440
  %17 = icmp eq i16 %16, 0
  %18 = icmp eq ptr %3, %1
  %19 = or i1 %18, %17
  br i1 %19, label %37, label %22

20:                                               ; preds = %10
  %21 = icmp eq ptr %3, %1
  br i1 %21, label %37, label %22

22:                                               ; preds = %14, %20
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 2
  %26 = load i16, ptr %25, align 2, !tbaa !440
  %27 = sext i16 %26 to i32
  %28 = icmp eq i32 %27, %4
  br i1 %28, label %37, label %29

29:                                               ; preds = %24, %22
  %30 = icmp eq i8 %5, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.PartDeflect, ptr %8, i64 0, i32 2
  %33 = load i16, ptr %32, align 2, !tbaa !440
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %29
  %36 = tail call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %3) #22
  tail call void @dag_add_relation(ptr poison, ptr noundef %36, ptr noundef %2, i16 noundef signext 40, ptr noundef nonnull @.str.50) #22
  br label %37

37:                                               ; preds = %6, %14, %20, %35, %24, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_add_shader_nodetree_driver_relations(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !441 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !442
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @dag_add_driver_relation(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, i32 noundef 1) #22
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8, %27
  %13 = phi ptr [ %28, %27 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !257
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !109
  %20 = icmp eq i16 %19, 16717
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call fastcc void @dag_add_material_driver_relations(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15) #22
  br label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 8
  %24 = load i16, ptr %23, align 4, !tbaa !443
  %25 = icmp eq i16 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call fastcc void @dag_add_shader_nodetree_driver_relations(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15) #22
  br label %27

27:                                               ; preds = %12, %22, %26, %21
  %28 = load ptr, ptr %13, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %12, !llvm.loop !444

30:                                               ; preds = %27, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scene_sort_groups(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !445 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %13, %7 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 5
  %10 = load i16, ptr %9, align 2, !tbaa !324
  %11 = and i16 %10, -1025
  store i16 %11, ptr %9, align 2, !tbaa !324
  %12 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !446
  %13 = load ptr, ptr %8, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7, !llvm.loop !447

15:                                               ; preds = %7, %2
  %16 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %26, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.Base, ptr %20, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 5
  %24 = load i16, ptr %23, align 2, !tbaa !324
  %25 = or i16 %24, 1024
  store i16 %25, ptr %23, align 2, !tbaa !324
  %26 = load ptr, ptr %20, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !llvm.loop !448

28:                                               ; preds = %19, %15
  %29 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %74, label %32

32:                                               ; preds = %28, %71
  %33 = phi ptr [ %72, %71 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.Group, ptr %33, i64 0, i32 1
  br label %35

35:                                               ; preds = %39, %32
  %36 = phi ptr [ %34, %32 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.GroupObject, ptr %37, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !145
  %42 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 5
  %43 = load i16, ptr %42, align 2, !tbaa !324
  %44 = and i16 %43, 1024
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %71, label %35, !llvm.loop !449

46:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %47 = load ptr, ptr %34, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %52, %46
  %50 = load ptr, ptr %16, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %70, label %59

52:                                               ; preds = %46, %52
  %53 = phi ptr [ %57, %52 ], [ %47, %46 ]
  %54 = getelementptr inbounds %struct.GroupObject, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !145
  %56 = getelementptr inbounds %struct.ID, ptr %55, i64 0, i32 2
  store ptr %53, ptr %56, align 8, !tbaa !446
  %57 = load ptr, ptr %53, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %49, label %52, !llvm.loop !450

59:                                               ; preds = %49, %67
  %60 = phi ptr [ %68, %67 ], [ %50, %49 ]
  %61 = getelementptr inbounds %struct.Base, ptr %60, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !80
  %63 = getelementptr inbounds %struct.ID, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !446
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  store ptr null, ptr %63, align 8, !tbaa !446
  call void @BLI_remlink(ptr noundef nonnull %34, ptr noundef nonnull %64) #20
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %64) #20
  br label %67

67:                                               ; preds = %59, %66
  %68 = load ptr, ptr %60, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %59, !llvm.loop !451

70:                                               ; preds = %67, %49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !225
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  br label %71

71:                                               ; preds = %39, %70
  %72 = load ptr, ptr %33, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %32, !llvm.loop !452

74:                                               ; preds = %71, %28
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @flush_layer_node(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !453 {
  %3 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 11
  store i32 %1, ptr %3, align 8, !tbaa !230
  %4 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !238
  %6 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 8
  store i32 %5, ptr %6, align 4, !tbaa !251
  %7 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %2, %31
  %11 = phi i32 [ %32, %31 ], [ %5, %2 ]
  %12 = phi ptr [ %34, %31 ], [ %8, %2 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = getelementptr inbounds %struct.DagNode, ptr %13, i64 0, i32 1
  %15 = load i16, ptr %14, align 4, !tbaa !87
  %16 = icmp eq i16 %15, 16975
  br i1 %16, label %17, label %31

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.DagNode, ptr %13, i64 0, i32 11
  %19 = load i32, ptr %18, align 8, !tbaa !230
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @flush_layer_node(ptr noundef nonnull %13, i32 noundef %1) #22
  br label %26

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.DagNode, ptr %13, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !251
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ %25, %23 ], [ %22, %21 ]
  %28 = getelementptr inbounds %struct.DagAdjList, ptr %12, i64 0, i32 3
  store i32 %27, ptr %28, align 8
  %29 = load i32, ptr %6, align 4, !tbaa !251
  %30 = or i32 %29, %27
  store i32 %30, ptr %6, align 4, !tbaa !251
  br label %31

31:                                               ; preds = %10, %26
  %32 = phi i32 [ %11, %10 ], [ %30, %26 ]
  %33 = getelementptr inbounds %struct.DagAdjList, ptr %12, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %10, !llvm.loop !454

36:                                               ; preds = %31, %2
  %37 = phi i32 [ %5, %2 ], [ %32, %31 ]
  ret i32 %37
}

; Function Attrs: optsize
declare void @BKE_object_free_derived_caches(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @nodeUpdate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc signext i16 @animdata_use_time(ptr noundef readonly %0) unnamed_addr #16 !PGOFuncName !455 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !456
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bAction, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !457
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %6, %3
  %11 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ %11, %10 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.NlaTrack, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !459
  %19 = icmp eq ptr %18, null
  br i1 %19, label %12, label %25, !llvm.loop !461

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !462
  %23 = icmp ne ptr %22, null
  %24 = zext i1 %23 to i16
  br label %25

25:                                               ; preds = %16, %20, %6, %1
  %26 = phi i16 [ 0, %1 ], [ 1, %6 ], [ %24, %20 ], [ 1, %16 ]
  ret i16 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @object_modifiers_use_time(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !463 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @modifier_dependsOnTime(ptr noundef nonnull %5) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %3, label %47, !llvm.loop !464

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = icmp eq ptr %12, null
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !456
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bAction, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %17, %29
  %22 = phi ptr [ %30, %29 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !409
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) @.str.46) #25
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %21, %26
  %30 = load ptr, ptr %22, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21, !llvm.loop !465

32:                                               ; preds = %29, %17, %14
  %33 = getelementptr inbounds %struct.AnimData, ptr %12, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %32, %44
  %37 = phi ptr [ %45, %44 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !409
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) @.str.46) #25
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %36, %41
  %45 = load ptr, ptr %37, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %36, !llvm.loop !466

47:                                               ; preds = %7, %26, %44, %41, %32, %10
  %48 = phi i32 [ 0, %10 ], [ 0, %32 ], [ 0, %44 ], [ 1, %41 ], [ 1, %26 ], [ 1, %7 ]
  ret i32 %48
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_check_rigidbody_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @modifier_dependsOnTime(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_invisible_dependencies_flush(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !467 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @queue_create(i32 noundef 50) #22
  br label %81

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %11, %8 ], [ %4, %1 ]
  store i32 0, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.DagNode, ptr %9, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !468

13:                                               ; preds = %8
  %14 = tail call ptr @queue_create(i32 noundef 50) #22
  br i1 %5, label %81, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.DagNodeQueue, ptr %14, i64 0, i32 2
  br label %17

17:                                               ; preds = %15, %77
  %18 = phi ptr [ %4, %15 ], [ %79, %77 ]
  %19 = load i32, ptr %18, align 8, !tbaa !92
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %77

21:                                               ; preds = %17
  tail call void @push_stack(ptr noundef %14, ptr noundef nonnull %18) #22
  store i32 1, ptr %18, align 8, !tbaa !92
  %22 = load i32, ptr %16, align 8, !tbaa !47
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %77, label %24

24:                                               ; preds = %21, %74
  %25 = tail call ptr @get_top_node_queue(ptr noundef nonnull %14) #22
  %26 = getelementptr inbounds %struct.DagNode, ptr %25, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %33

29:                                               ; preds = %33
  %30 = getelementptr inbounds %struct.DagAdjList, ptr %34, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33, !llvm.loop !469

33:                                               ; preds = %24, %29
  %34 = phi ptr [ %31, %29 ], [ %27, %24 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !89
  %36 = load i32, ptr %35, align 8, !tbaa !92
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %29

38:                                               ; preds = %33
  store i32 1, ptr %35, align 8, !tbaa !92
  tail call void @push_stack(ptr noundef %14, ptr noundef nonnull %35) #22
  br label %74

39:                                               ; preds = %29, %24
  %40 = tail call ptr @pop_queue(ptr noundef %14) #22
  %41 = getelementptr inbounds %struct.DagNode, ptr %40, i64 0, i32 1
  %42 = load i16, ptr %41, align 4, !tbaa !87
  %43 = icmp eq i16 %42, 16975
  br i1 %43, label %44, label %73

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.DagNode, ptr %40, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !95
  %47 = tail call fastcc zeroext i8 @check_object_needs_evaluation(ptr noundef %46) #22, !range !287
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.DagNode, ptr %40, i64 0, i32 16
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %73, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 103
  br label %55

55:                                               ; preds = %53, %69
  %56 = phi ptr [ %51, %53 ], [ %71, %69 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !89
  %58 = getelementptr inbounds %struct.DagNode, ptr %57, i64 0, i32 1
  %59 = load i16, ptr %58, align 4, !tbaa !87
  %60 = icmp eq i16 %59, 16975
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.DagNode, ptr %57, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !95
  %64 = tail call fastcc zeroext i8 @check_object_tagged_for_update(ptr noundef %63) #22, !range !287
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i8, ptr %54, align 1, !tbaa !232
  %68 = or i8 %67, 3
  store i8 %68, ptr %54, align 1, !tbaa !232
  br label %69

69:                                               ; preds = %61, %66, %55
  %70 = getelementptr inbounds %struct.DagAdjList, ptr %56, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %55, !llvm.loop !470

73:                                               ; preds = %69, %49, %44, %39
  store i32 2, ptr %18, align 8, !tbaa !92
  br label %74

74:                                               ; preds = %38, %73
  %75 = load i32, ptr %16, align 8, !tbaa !47
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %24, !llvm.loop !471

77:                                               ; preds = %74, %21, %17
  %78 = getelementptr inbounds %struct.DagNode, ptr %18, i64 0, i32 18
  %79 = load ptr, ptr %78, align 8, !tbaa !106
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %17, !llvm.loop !472

81:                                               ; preds = %77, %6, %13
  %82 = phi ptr [ %7, %6 ], [ %14, %13 ], [ %14, %77 ]
  tail call void @queue_delete(ptr noundef %82) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @check_object_needs_evaluation(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !473 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 103
  %3 = load i8, ptr %2, align 1, !tbaa !232
  %4 = and i8 %3, 7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !116
  switch i16 %8, label %18 [
    i16 1, label %9
    i16 2, label %11
    i16 3, label %11
    i16 4, label %11
    i16 5, label %11
    i16 22, label %11
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  br label %13

11:                                               ; preds = %6, %6, %6, %6, %6
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  br label %13

13:                                               ; preds = %9, %11
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %13, %6, %1
  %19 = phi i8 [ 0, %1 ], [ 0, %6 ], [ %17, %13 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @check_object_tagged_for_update(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !474 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 103
  %3 = load i8, ptr %2, align 1, !tbaa !232
  %4 = and i8 %3, 7
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !116
  switch i16 %8, label %17 [
    i16 1, label %9
    i16 2, label %9
    i16 3, label %9
    i16 4, label %9
    i16 5, label %9
    i16 22, label %9
  ]

9:                                                ; preds = %6, %6, %6, %6, %6, %6
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  %12 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 5
  %13 = load i16, ptr %12, align 2, !tbaa !249
  %14 = and i16 %13, 12288
  %15 = icmp ne i16 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %6, %1, %9
  %18 = phi i8 [ %16, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %18
}

; Function Attrs: optsize
declare void @BKE_main_id_flag_listbase(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_screen_visible_layers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dag_editors_id_update(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !475 {
  %3 = load ptr, ptr @EditorsUpdateIDCb, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void %3(ptr noundef %0, ptr noundef %1) #20
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @modifiers_foreachIDLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @dag_id_flush_update__isDependentTexture(ptr nocapture noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #17 !PGOFuncName !476 {
  %4 = load ptr, ptr %2, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !109
  %9 = icmp eq i16 %8, 17748
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !336
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 1
  store i8 1, ptr %14, align 8, !tbaa !338
  br label %15

15:                                               ; preds = %10, %13, %6, %3
  ret void
}

; Function Attrs: optsize
declare void @BKE_texpaint_slots_refresh_object(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_proj_mesh_data_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_drawobject_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_dopesheet_tag_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dag_node_print_dependencies(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !477 {
  %3 = tail call fastcc ptr @dag_node_name(ptr noundef %0, ptr noundef %1) #22
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull %3) #22
  %5 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %16, %8 ], [ %6, %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = tail call fastcc ptr @dag_node_name(ptr noundef %0, ptr noundef %10) #22
  %12 = getelementptr inbounds %struct.DagAdjList, ptr %9, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !205
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, ptr noundef nonnull %11, ptr noundef %13) #22
  %15 = getelementptr inbounds %struct.DagAdjList, ptr %9, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !478

18:                                               ; preds = %8, %2
  %19 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @dag_node_recurs_level(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !479 {
  store i32 2, ptr %0, align 8, !tbaa !92
  %3 = add nsw i32 %1, 1
  %4 = getelementptr inbounds %struct.DagNode, ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2, %20
  %8 = phi ptr [ %25, %20 ], [ %5, %2 ]
  %9 = phi i32 [ %23, %20 ], [ %3, %2 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !89
  %11 = load i32, ptr %10, align 8, !tbaa !92
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @dag_node_recurs_level(ptr noundef nonnull %10, i32 noundef %3) #22
  %15 = load ptr, ptr %8, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.DagNode, ptr %15, i64 0, i32 7
  store i32 %14, ptr %16, align 8, !tbaa !115
  br label %20

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.DagNode, ptr %10, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !115
  br label %20

20:                                               ; preds = %13, %17
  %21 = phi i32 [ %14, %13 ], [ %19, %17 ]
  %22 = add nsw i32 %21, %3
  %23 = tail call i32 @llvm.smax.i32(i32 %9, i32 %22)
  %24 = getelementptr inbounds %struct.DagAdjList, ptr %8, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %7, !llvm.loop !480

27:                                               ; preds = %20, %2
  %28 = phi i32 [ %3, %2 ], [ %23, %20 ]
  ret i32 %28
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dag_node_print_dependency_cycle(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 !PGOFuncName !481 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %10, %7 ], [ %5, %4 ]
  store i32 0, ptr %8, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.DagNode, ptr %8, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !482

12:                                               ; preds = %7, %4
  %13 = tail call fastcc ptr @dag_node_name(ptr noundef nonnull %0, ptr noundef %2) #22
  %14 = tail call fastcc ptr @dag_node_name(ptr noundef nonnull %0, ptr noundef %1) #22
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %3) #22
  %16 = tail call fastcc i32 @dag_node_print_dependency_recurs(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #22, !range !279
  %17 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @dag_node_print_dependency_recurs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 !PGOFuncName !483 {
  %4 = load i32, ptr %1, align 8, !tbaa !92
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  store i32 2, ptr %1, align 8, !tbaa !92
  %7 = icmp eq ptr %1, %2
  br i1 %7, label %28, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.DagNode, ptr %1, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8, %24
  %13 = phi ptr [ %26, %24 ], [ %10, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  %15 = tail call fastcc i32 @dag_node_print_dependency_recurs(ptr noundef %0, ptr noundef %14, ptr noundef %2) #22, !range !279
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @dag_node_name(ptr noundef %0, ptr noundef nonnull %1) #22
  %19 = load ptr, ptr %13, align 8, !tbaa !89
  %20 = tail call fastcc ptr @dag_node_name(ptr noundef %0, ptr noundef %19) #22
  %21 = getelementptr inbounds %struct.DagAdjList, ptr %13, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !205
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef nonnull %18, ptr noundef nonnull %20, ptr noundef %22) #22
  br label %28

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.DagAdjList, ptr %13, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12, !llvm.loop !484

28:                                               ; preds = %24, %8, %6, %3, %17
  %29 = phi i32 [ 1, %17 ], [ 0, %3 ], [ 1, %6 ], [ 0, %8 ], [ 0, %24 ]
  ret i32 %29
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind optsize }
attributes #21 = { cold }
attributes #22 = { optsize }
attributes #23 = { nounwind }
attributes #24 = { cold optsize }
attributes #25 = { nounwind optsize willreturn memory(read) }

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
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!39, !40, i64 16}
!48 = !{!44, !35, i64 0}
!49 = distinct !{!49, !46}
!50 = distinct !{!50, !46}
!51 = distinct !{!51, !46}
!52 = distinct !{!52, !46}
!53 = distinct !{!53, !46}
!54 = !{!55, !36, i64 36}
!55 = !{!"DagForest", !56, i64 0, !35, i64 16, !40, i64 24, !36, i64 28, !40, i64 32, !36, i64 36}
!56 = !{!"ListBase", !35, i64 0, !35, i64 8}
!57 = !{!58, !35, i64 4368}
!58 = !{!"Scene", !59, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !56, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !60, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !61, i64 280, !71, i64 4264, !56, i64 4296, !56, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !60, i64 4376, !60, i64 4378, !40, i64 4380, !56, i64 4384, !72, i64 4400, !73, i64 4416, !76, i64 4600, !35, i64 4608, !77, i64 4616, !35, i64 4640, !78, i64 4648, !78, i64 4656, !64, i64 4664, !65, i64 4824, !79, i64 4888, !35, i64 4952}
!59 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !60, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!60 = !{!"short", !36, i64 0}
!61 = !{!"RenderData", !62, i64 0, !35, i64 248, !35, i64 256, !66, i64 264, !67, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !63, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !60, i64 432, !60, i64 434, !63, i64 436, !63, i64 440, !63, i64 444, !63, i64 448, !63, i64 452, !60, i64 456, !60, i64 458, !60, i64 460, !60, i64 462, !60, i64 464, !60, i64 466, !40, i64 468, !60, i64 472, !60, i64 474, !60, i64 476, !60, i64 478, !60, i64 480, !60, i64 482, !40, i64 484, !40, i64 488, !60, i64 492, !60, i64 494, !40, i64 496, !40, i64 500, !60, i64 504, !60, i64 506, !60, i64 508, !60, i64 510, !60, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !60, i64 528, !60, i64 530, !60, i64 532, !60, i64 534, !60, i64 536, !60, i64 538, !60, i64 540, !60, i64 542, !68, i64 544, !68, i64 560, !69, i64 576, !56, i64 592, !60, i64 608, !60, i64 610, !63, i64 612, !63, i64 616, !63, i64 620, !63, i64 624, !40, i64 628, !63, i64 632, !63, i64 636, !63, i64 640, !63, i64 644, !60, i64 648, !60, i64 650, !60, i64 652, !60, i64 654, !60, i64 656, !60, i64 658, !63, i64 660, !63, i64 664, !60, i64 668, !60, i64 670, !63, i64 672, !63, i64 676, !36, i64 680, !40, i64 1704, !60, i64 1708, !60, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !60, i64 2524, !60, i64 2526, !63, i64 2528, !63, i64 2532, !60, i64 2536, !60, i64 2538, !63, i64 2540, !60, i64 2544, !60, i64 2546, !40, i64 2548, !60, i64 2552, !60, i64 2554, !60, i64 2556, !60, i64 2558, !63, i64 2560, !63, i64 2564, !35, i64 2568, !40, i64 2576, !63, i64 2580, !36, i64 2584, !70, i64 2616, !40, i64 3976, !40, i64 3980}
!62 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !60, i64 8, !60, i64 10, !63, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !64, i64 24, !65, i64 184}
!63 = !{!"float", !36, i64 0}
!64 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !63, i64 136, !63, i64 140, !35, i64 144, !35, i64 152}
!65 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!66 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !60, i64 48, !60, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!67 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !63, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!68 = !{!"rctf", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12}
!69 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!70 = !{!"BakeData", !62, i64 0, !36, i64 248, !60, i64 1272, !60, i64 1274, !60, i64 1276, !60, i64 1278, !63, i64 1280, !63, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!71 = !{!"AudioData", !40, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !40, i64 16, !60, i64 20, !60, i64 22, !63, i64 24, !63, i64 28}
!72 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!73 = !{!"GameData", !72, i64 0, !60, i64 16, !60, i64 18, !60, i64 20, !60, i64 22, !60, i64 24, !60, i64 26, !60, i64 28, !60, i64 30, !60, i64 32, !36, i64 34, !74, i64 40, !60, i64 64, !60, i64 66, !63, i64 68, !75, i64 72, !63, i64 128, !63, i64 132, !40, i64 136, !60, i64 140, !60, i64 142, !60, i64 144, !60, i64 146, !60, i64 148, !60, i64 150, !60, i64 152, !60, i64 154, !60, i64 156, !60, i64 158, !60, i64 160, !60, i64 162, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180}
!74 = !{!"GameDome", !60, i64 0, !60, i64 2, !60, i64 4, !60, i64 6, !63, i64 8, !63, i64 12, !35, i64 16}
!75 = !{!"RecastData", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !63, i64 20, !63, i64 24, !63, i64 28, !63, i64 32, !63, i64 36, !40, i64 40, !63, i64 44, !63, i64 48, !60, i64 52, !60, i64 54}
!76 = !{!"UnitSettings", !63, i64 0, !36, i64 4, !36, i64 5, !60, i64 6}
!77 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!78 = !{!"long", !36, i64 0}
!79 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!80 = !{!81, !35, i64 32}
!81 = !{!"Base", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !60, i64 28, !60, i64 30, !35, i64 32}
!82 = !{!83, !35, i64 232}
!83 = !{!"Object", !59, i64 0, !35, i64 120, !35, i64 128, !60, i64 136, !60, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !84, i64 312, !35, i64 360, !56, i64 368, !56, i64 384, !56, i64 400, !56, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !63, i64 616, !63, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !60, i64 948, !60, i64 950, !60, i64 952, !60, i64 954, !60, i64 956, !60, i64 958, !60, i64 960, !60, i64 962, !60, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !63, i64 988, !63, i64 992, !63, i64 996, !63, i64 1000, !63, i64 1004, !63, i64 1008, !63, i64 1012, !63, i64 1016, !63, i64 1020, !63, i64 1024, !63, i64 1028, !63, i64 1032, !60, i64 1036, !60, i64 1038, !60, i64 1040, !36, i64 1042, !36, i64 1043, !60, i64 1044, !36, i64 1046, !36, i64 1047, !63, i64 1048, !63, i64 1052, !56, i64 1056, !56, i64 1072, !56, i64 1088, !56, i64 1104, !63, i64 1120, !60, i64 1124, !60, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !60, i64 1162, !36, i64 1164, !56, i64 1176, !56, i64 1192, !56, i64 1208, !56, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !60, i64 1266, !63, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !78, i64 1304, !78, i64 1312, !40, i64 1320, !40, i64 1324, !56, i64 1328, !56, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !56, i64 1400, !35, i64 1416}
!84 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !60, i64 16, !60, i64 18, !60, i64 20, !60, i64 22, !60, i64 24, !60, i64 26, !60, i64 28, !60, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!85 = !{!83, !35, i64 1256}
!86 = distinct !{!86, !46}
!87 = !{!88, !60, i64 4}
!88 = !{!"DagNode", !40, i64 0, !60, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !78, i64 56, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !40, i64 112, !36, i64 116, !60, i64 118}
!89 = !{!90, !35, i64 0}
!90 = !{!"DagAdjList", !35, i64 0, !60, i64 8, !40, i64 12, !40, i64 16, !35, i64 24, !35, i64 32}
!91 = !{!90, !60, i64 8}
!92 = !{!88, !40, i64 0}
!93 = distinct !{!93, !46}
!94 = !{!88, !78, i64 56}
!95 = !{!88, !35, i64 24}
!96 = !{!83, !78, i64 1312}
!97 = distinct !{!97, !46}
!98 = distinct !{!98, !46}
!99 = distinct !{!99, !46}
!100 = !{!55, !35, i64 0}
!101 = !{!88, !35, i64 88}
!102 = !{!90, !35, i64 32}
!103 = distinct !{!103, !46}
!104 = !{!88, !35, i64 96}
!105 = distinct !{!105, !46}
!106 = !{!88, !35, i64 104}
!107 = distinct !{!107, !46}
!108 = !{!55, !35, i64 16}
!109 = !{!60, !60, i64 0}
!110 = !{!55, !40, i64 24}
!111 = !{!55, !35, i64 8}
!112 = !{!"depsgraph.c:build_dag_object"}
!113 = !{!83, !35, i64 296}
!114 = !{!88, !35, i64 32}
!115 = !{!88, !40, i64 40}
!116 = !{!83, !60, i64 136}
!117 = !{!83, !35, i64 288}
!118 = distinct !{!118, !46}
!119 = !{!120, !35, i64 104}
!120 = !{!"bConstraintTypeInfo", !60, i64 0, !60, i64 2, !36, i64 4, !36, i64 36, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128}
!121 = !{!122, !35, i64 16}
!122 = !{!"bConstraintTarget", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !60, i64 152, !60, i64 154, !60, i64 156, !60, i64 158}
!123 = !{!36, !36, i64 0}
!124 = !{!125, !60, i64 24}
!125 = !{!"bConstraint", !35, i64 0, !35, i64 8, !35, i64 16, !60, i64 24, !60, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !60, i64 94, !63, i64 96, !63, i64 100, !35, i64 104, !63, i64 112, !63, i64 116}
!126 = distinct !{!126, !46}
!127 = !{!120, !35, i64 112}
!128 = distinct !{!128, !46}
!129 = !{!83, !35, i64 120}
!130 = !{!131, !35, i64 120}
!131 = !{!"Key", !59, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !40, i64 168, !40, i64 172, !56, i64 176, !35, i64 192, !35, i64 200, !60, i64 208, !60, i64 210, !60, i64 212, !60, i64 214, !63, i64 216, !40, i64 220}
!132 = !{!83, !35, i64 416}
!133 = !{!134, !40, i64 16}
!134 = !{!"ModifierData", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!135 = !{!136, !35, i64 168}
!136 = !{!"ModifierTypeInfo", !36, i64 0, !36, i64 32, !40, i64 64, !40, i64 68, !40, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208}
!137 = !{!134, !35, i64 0}
!138 = distinct !{!138, !46}
!139 = !{!83, !35, i64 216}
!140 = !{!83, !60, i64 138}
!141 = !{!142, !40, i64 268}
!142 = !{!"Curve", !59, i64 0, !35, i64 120, !35, i64 128, !56, i64 136, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !60, i64 244, !60, i64 246, !60, i64 248, !60, i64 250, !63, i64 252, !63, i64 256, !40, i64 260, !60, i64 264, !60, i64 266, !40, i64 268, !63, i64 272, !63, i64 276, !63, i64 280, !60, i64 284, !60, i64 286, !60, i64 288, !60, i64 290, !40, i64 292, !40, i64 296, !36, i64 300, !60, i64 304, !36, i64 306, !36, i64 307, !63, i64 308, !63, i64 312, !63, i64 316, !63, i64 320, !63, i64 324, !63, i64 328, !63, i64 332, !63, i64 336, !63, i64 340, !63, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !35, i64 368, !35, i64 376, !36, i64 384, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !35, i64 480, !40, i64 488, !40, i64 492, !35, i64 496, !143, i64 504, !63, i64 512, !63, i64 516, !63, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!143 = !{!"CharInfo", !60, i64 0, !60, i64 2, !36, i64 4, !36, i64 5, !60, i64 6}
!144 = !{!83, !60, i64 952}
!145 = !{!146, !35, i64 16}
!146 = !{!"GroupObject", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !60, i64 32, !36, i64 34}
!147 = distinct !{!147, !46}
!148 = !{!83, !35, i64 1224}
!149 = !{!83, !35, i64 1368}
!150 = !{!151, !35, i64 184}
!151 = !{!"Camera", !59, i64 0, !35, i64 120, !36, i64 128, !36, i64 129, !60, i64 130, !63, i64 132, !63, i64 136, !63, i64 140, !63, i64 144, !63, i64 148, !63, i64 152, !63, i64 156, !63, i64 160, !63, i64 164, !63, i64 168, !63, i64 172, !35, i64 176, !35, i64 184, !36, i64 192, !36, i64 193}
!152 = !{!142, !35, i64 160}
!153 = !{!142, !35, i64 168}
!154 = !{!155, !35, i64 0}
!155 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !56, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !60, i64 2084, !60, i64 2086, !60, i64 2088, !36, i64 2090, !60, i64 2092, !40, i64 2096, !40, i64 2100, !36, i64 2104, !40, i64 2108, !40, i64 2112, !36, i64 2116}
!156 = !{!157, !35, i64 1888}
!157 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !60, i64 1040, !60, i64 1042, !60, i64 1044, !60, i64 1046, !78, i64 1048, !36, i64 1056, !60, i64 1072, !35, i64 1080, !56, i64 1088, !56, i64 1104, !56, i64 1120, !56, i64 1136, !56, i64 1152, !56, i64 1168, !56, i64 1184, !56, i64 1200, !56, i64 1216, !56, i64 1232, !56, i64 1248, !56, i64 1264, !56, i64 1280, !56, i64 1296, !56, i64 1312, !56, i64 1328, !56, i64 1344, !56, i64 1360, !56, i64 1376, !56, i64 1392, !56, i64 1408, !56, i64 1424, !56, i64 1440, !56, i64 1456, !56, i64 1472, !56, i64 1488, !56, i64 1504, !56, i64 1520, !56, i64 1536, !56, i64 1552, !56, i64 1568, !56, i64 1584, !56, i64 1600, !56, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!158 = !{!159, !35, i64 16}
!159 = !{!"DupliObject", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 100, !60, i64 108, !36, i64 110, !36, i64 111, !36, i64 112, !35, i64 144}
!160 = distinct !{!160, !46}
!161 = !{!142, !35, i64 176}
!162 = !{!88, !60, i64 118}
!163 = !{!83, !40, i64 456}
!164 = distinct !{!164, !46}
!165 = !{!166, !35, i64 16}
!166 = !{!"ParticleSystem", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !56, i64 72, !56, i64 88, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !56, i64 152, !36, i64 168, !36, i64 232, !63, i64 296, !63, i64 300, !63, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !60, i64 340, !60, i64 342, !60, i64 344, !60, i64 346, !36, i64 348, !36, i64 540, !60, i64 564, !60, i64 566, !35, i64 568, !35, i64 576, !56, i64 584, !35, i64 600, !35, i64 608, !40, i64 616, !40, i64 620, !35, i64 624, !35, i64 632, !35, i64 640, !63, i64 648, !63, i64 652}
!167 = !{!168, !60, i64 168}
!168 = !{!"ParticleSettings", !59, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !40, i64 152, !40, i64 156, !60, i64 160, !60, i64 162, !60, i64 164, !60, i64 166, !60, i64 168, !60, i64 170, !60, i64 172, !60, i64 174, !40, i64 176, !40, i64 180, !60, i64 184, !60, i64 186, !60, i64 188, !60, i64 190, !60, i64 192, !60, i64 194, !60, i64 196, !60, i64 198, !60, i64 200, !60, i64 202, !60, i64 204, !60, i64 206, !60, i64 208, !60, i64 210, !60, i64 212, !60, i64 214, !60, i64 216, !60, i64 218, !60, i64 220, !60, i64 222, !60, i64 224, !60, i64 226, !60, i64 228, !60, i64 230, !63, i64 232, !63, i64 236, !36, i64 240, !36, i64 248, !63, i64 256, !63, i64 260, !63, i64 264, !60, i64 268, !60, i64 270, !63, i64 272, !63, i64 276, !63, i64 280, !63, i64 284, !63, i64 288, !63, i64 292, !63, i64 296, !63, i64 300, !63, i64 304, !63, i64 308, !63, i64 312, !63, i64 316, !36, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !60, i64 340, !36, i64 342, !63, i64 348, !63, i64 352, !63, i64 356, !63, i64 360, !63, i64 364, !63, i64 368, !63, i64 372, !36, i64 376, !63, i64 388, !63, i64 392, !63, i64 396, !63, i64 400, !63, i64 404, !63, i64 408, !63, i64 412, !36, i64 416, !63, i64 428, !63, i64 432, !63, i64 436, !63, i64 440, !40, i64 444, !40, i64 448, !63, i64 452, !63, i64 456, !63, i64 460, !63, i64 464, !63, i64 468, !63, i64 472, !63, i64 476, !63, i64 480, !63, i64 484, !63, i64 488, !63, i64 492, !63, i64 496, !63, i64 500, !63, i64 504, !63, i64 508, !63, i64 512, !63, i64 516, !63, i64 520, !63, i64 524, !63, i64 528, !63, i64 532, !63, i64 536, !63, i64 540, !63, i64 544, !63, i64 548, !36, i64 552, !63, i64 560, !63, i64 564, !40, i64 568, !40, i64 572, !36, i64 576, !35, i64 720, !56, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !60, i64 792, !36, i64 794}
!169 = !{!170, !35, i64 16}
!170 = !{!"ParticleTarget", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !60, i64 28, !60, i64 30, !63, i64 32, !63, i64 36}
!171 = !{!170, !40, i64 24}
!172 = distinct !{!172, !46}
!173 = !{!168, !60, i64 192}
!174 = !{!168, !35, i64 752}
!175 = !{!168, !35, i64 720}
!176 = distinct !{!176, !46}
!177 = !{!168, !35, i64 144}
!178 = !{!179, !35, i64 32}
!179 = !{!"EffectorCache", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !36, i64 64, !36, i64 80, !63, i64 92, !36, i64 96, !63, i64 108, !40, i64 112}
!180 = !{!179, !35, i64 24}
!181 = distinct !{!181, !46}
!182 = !{!168, !35, i64 128}
!183 = distinct !{!183, !46}
!184 = !{!185, !40, i64 16}
!185 = !{!"BoidRule", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !36, i64 24}
!186 = distinct !{!186, !46}
!187 = !{!166, !35, i64 0}
!188 = distinct !{!188, !46}
!189 = !{!120, !60, i64 0}
!190 = !{!125, !35, i64 16}
!191 = !{!192, !35, i64 0}
!192 = !{!"bFollowTrackConstraint", !35, i64 0, !36, i64 8, !40, i64 72, !40, i64 76, !36, i64 80, !35, i64 144, !35, i64 152}
!193 = !{!192, !40, i64 72}
!194 = !{!192, !35, i64 152}
!195 = !{!58, !35, i64 128}
!196 = distinct !{!196, !46}
!197 = distinct !{!197, !46}
!198 = !{!"depsgraph.c:build_dag_group"}
!199 = !{!200, !60, i64 98}
!200 = !{!"Group", !59, i64 0, !56, i64 120, !40, i64 136, !36, i64 140}
!201 = distinct !{!201, !46}
!202 = distinct !{!202, !46}
!203 = !{!90, !40, i64 12}
!204 = distinct !{!204, !46}
!205 = !{!90, !35, i64 24}
!206 = !{!"depsgraph.c:dag_add_parent_relation"}
!207 = distinct !{!207, !46}
!208 = !{!88, !40, i64 76}
!209 = !{!88, !40, i64 80}
!210 = distinct !{!210, !46}
!211 = distinct !{!211, !46}
!212 = distinct !{!212, !46}
!213 = distinct !{!213, !46}
!214 = distinct !{!214, !46}
!215 = distinct !{!215, !46}
!216 = distinct !{!216, !46}
!217 = !{!"depsgraph.c:dag_scene_free"}
!218 = !{!"depsgraph.c:dag_scene_build"}
!219 = distinct !{!219, !46}
!220 = distinct !{!220, !46}
!221 = distinct !{!221, !46}
!222 = distinct !{!222, !46}
!223 = !{!58, !35, i64 152}
!224 = distinct !{!224, !46}
!225 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!226 = !{!155, !40, i64 2100}
!227 = distinct !{!227, !46}
!228 = !{!58, !60, i64 4378}
!229 = !{!55, !40, i64 32}
!230 = !{!88, !40, i64 64}
!231 = distinct !{!231, !46}
!232 = !{!83, !36, i64 1161}
!233 = distinct !{!233, !46}
!234 = !{!"depsgraph.c:dag_scene_flush_layers"}
!235 = !{!90, !40, i64 16}
!236 = distinct !{!236, !46}
!237 = !{!83, !40, i64 944}
!238 = !{!88, !40, i64 48}
!239 = distinct !{!239, !46}
!240 = !{!241, !35, i64 88}
!241 = !{!"TimeMarker", !35, i64 0, !35, i64 8, !40, i64 16, !36, i64 20, !40, i64 84, !35, i64 88}
!242 = distinct !{!242, !46}
!243 = distinct !{!243, !46}
!244 = !{!"depsgraph.c:flush_update_node"}
!245 = distinct !{!245, !46}
!246 = distinct !{!246, !46}
!247 = distinct !{!247, !46}
!248 = !{!"depsgraph.c:lib_id_recalc_data_tag"}
!249 = !{!59, !60, i64 98}
!250 = !{!"depsgraph.c:flush_pointcache_reset"}
!251 = !{!88, !40, i64 44}
!252 = distinct !{!252, !46}
!253 = !{!"depsgraph.c:dag_tag_renderlayers"}
!254 = !{!58, !35, i64 248}
!255 = !{!81, !40, i64 16}
!256 = distinct !{!256, !46}
!257 = !{!258, !35, i64 240}
!258 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !60, i64 172, !60, i64 174, !60, i64 176, !60, i64 178, !60, i64 180, !60, i64 182, !60, i64 184, !60, i64 186, !36, i64 188, !56, i64 200, !56, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !56, i64 264, !63, i64 280, !63, i64 284, !63, i64 288, !63, i64 292, !63, i64 296, !63, i64 300, !63, i64 304, !40, i64 308, !36, i64 312, !60, i64 376, !60, i64 378, !63, i64 380, !63, i64 384, !60, i64 388, !60, i64 390, !35, i64 392, !68, i64 400, !68, i64 416, !68, i64 432, !60, i64 448, !60, i64 450, !40, i64 452, !35, i64 456}
!259 = !{!258, !60, i64 376}
!260 = !{!261, !40, i64 96}
!261 = !{!"SceneRenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !63, i64 124, !262, i64 128}
!262 = !{!"FreestyleConfig", !56, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !63, i64 28, !63, i64 32, !63, i64 36, !56, i64 40}
!263 = distinct !{!263, !46}
!264 = distinct !{!264, !46}
!265 = !{!58, !35, i64 144}
!266 = distinct !{!266, !46}
!267 = distinct !{!267, !46}
!268 = !{!146, !60, i64 32}
!269 = distinct !{!269, !46}
!270 = distinct !{!270, !46}
!271 = !{!"depsgraph.c:dag_object_time_update_flags"}
!272 = !{!83, !35, i64 1176}
!273 = distinct !{!273, !46}
!274 = !{!125, !35, i64 0}
!275 = distinct !{!275, !46}
!276 = !{i16 0, i16 2}
!277 = !{!278, !40, i64 84}
!278 = !{!"AnimData", !35, i64 0, !35, i64 8, !35, i64 16, !56, i64 24, !35, i64 40, !56, i64 48, !56, i64 64, !40, i64 80, !40, i64 84, !60, i64 88, !60, i64 90, !63, i64 92}
!279 = !{i32 0, i32 2}
!280 = !{!281, !60, i64 24}
!281 = !{!"bPose", !56, i64 0, !35, i64 16, !60, i64 24, !60, i64 26, !40, i64 28, !40, i64 32, !63, i64 36, !36, i64 40, !36, i64 52, !56, i64 64, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !84, i64 104, !36, i64 152}
!282 = !{!283, !35, i64 144}
!283 = !{!"Mesh", !59, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !284, i64 280, !284, i64 480, !284, i64 680, !284, i64 880, !284, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !40, i64 1344, !60, i64 1348, !60, i64 1350, !63, i64 1352, !40, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !60, i64 1366, !35, i64 1368}
!284 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!285 = !{!83, !36, i64 1265}
!286 = !{!142, !35, i64 192}
!287 = !{i8 0, i8 2}
!288 = !{!142, !35, i64 368}
!289 = !{!142, !35, i64 448}
!290 = !{!291, !35, i64 192}
!291 = !{!"Lattice", !59, i64 0, !35, i64 120, !60, i64 128, !60, i64 130, !60, i64 132, !60, i64 134, !60, i64 136, !60, i64 138, !60, i64 140, !60, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !40, i64 148, !63, i64 152, !63, i64 156, !63, i64 160, !63, i64 164, !63, i64 168, !63, i64 172, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !35, i64 272}
!292 = !{!83, !36, i64 1047}
!293 = distinct !{!293, !46}
!294 = !{!"depsgraph.c:dag_group_update_flags"}
!295 = distinct !{!295, !46}
!296 = !{!"depsgraph.c:dag_invisible_dependencies_check_flush"}
!297 = !{i32 0, i32 256}
!298 = !{!299, !35, i64 16}
!299 = !{!"DagSceneLayer", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24}
!300 = !{!299, !40, i64 24}
!301 = distinct !{!301, !46}
!302 = !{!40, !40, i64 0}
!303 = !{!58, !40, i64 240}
!304 = !{!83, !35, i64 240}
!305 = distinct !{!305, !46}
!306 = distinct !{!306, !46}
!307 = !{!157, !35, i64 1600}
!308 = !{!309, !35, i64 0}
!309 = !{!"Mask", !59, i64 0, !35, i64 120, !56, i64 128, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164}
!310 = distinct !{!310, !46}
!311 = !{!"depsgraph.c:dag_current_scene_layers"}
!312 = !{!157, !35, i64 1552}
!313 = !{!314, !35, i64 24}
!314 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !60, i64 104, !60, i64 106, !60, i64 108, !60, i64 110, !60, i64 112, !60, i64 114, !60, i64 116, !60, i64 118, !60, i64 120, !60, i64 122, !60, i64 124, !60, i64 126, !40, i64 128, !60, i64 132, !60, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !40, i64 160, !40, i64 164, !35, i64 168, !56, i64 176, !56, i64 192, !56, i64 208, !56, i64 224, !56, i64 240}
!315 = !{!316, !35, i64 184}
!316 = !{!"bScreen", !59, i64 0, !56, i64 120, !56, i64 136, !56, i64 152, !56, i64 168, !35, i64 184, !35, i64 192, !40, i64 200, !40, i64 204, !60, i64 208, !60, i64 210, !60, i64 212, !60, i64 214, !60, i64 216, !60, i64 218, !60, i64 220, !60, i64 222, !60, i64 224, !60, i64 226, !60, i64 228, !60, i64 230, !35, i64 232, !35, i64 240}
!317 = !{!58, !60, i64 98}
!318 = distinct !{!318, !46}
!319 = distinct !{!319, !46}
!320 = !{!157, !35, i64 1088}
!321 = !{!58, !40, i64 232}
!322 = !{!"depsgraph.c:lib_id_recalc_tag"}
!323 = !{!"depsgraph.c:dag_group_on_visible_update"}
!324 = !{!83, !60, i64 98}
!325 = !{!83, !35, i64 248}
!326 = distinct !{!326, !46}
!327 = !{!56, !35, i64 0}
!328 = distinct !{!328, !46}
!329 = !{!59, !35, i64 0}
!330 = distinct !{!330, !46}
!331 = distinct !{!331, !46}
!332 = !{!"depsgraph.c:BLI_listbase_is_empty"}
!333 = !{!"depsgraph.c:dag_id_flush_update"}
!334 = !{!59, !40, i64 100}
!335 = distinct !{!335, !46}
!336 = !{!337, !35, i64 0}
!337 = !{!"", !35, i64 0, !36, i64 8}
!338 = !{!337, !36, i64 8}
!339 = !{!340, !35, i64 16}
!340 = !{!"MTex", !60, i64 0, !60, i64 2, !60, i64 4, !60, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !63, i64 116, !60, i64 120, !60, i64 122, !60, i64 124, !60, i64 126, !60, i64 128, !60, i64 130, !36, i64 132, !36, i64 133, !63, i64 140, !63, i64 144, !63, i64 148, !63, i64 152, !63, i64 156, !63, i64 160, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180, !63, i64 184, !63, i64 188, !63, i64 192, !63, i64 196, !63, i64 200, !63, i64 204, !63, i64 208, !63, i64 212, !63, i64 216, !63, i64 220, !63, i64 224, !63, i64 228, !63, i64 232, !63, i64 236, !63, i64 240, !63, i64 244, !63, i64 248, !63, i64 252, !63, i64 256, !63, i64 260, !63, i64 264, !63, i64 268, !63, i64 272, !63, i64 276, !63, i64 280, !63, i64 284, !63, i64 288, !63, i64 292, !63, i64 296, !63, i64 300, !63, i64 304, !63, i64 308}
!341 = !{!340, !60, i64 2}
!342 = !{!166, !60, i64 340}
!343 = distinct !{!343, !46}
!344 = distinct !{!344, !46}
!345 = distinct !{!345, !46}
!346 = !{!83, !60, i64 948}
!347 = distinct !{!347, !46}
!348 = distinct !{!348, !46}
!349 = distinct !{!349, !46}
!350 = !{!58, !35, i64 168}
!351 = !{!83, !40, i64 432}
!352 = !{!83, !35, i64 1296}
!353 = distinct !{!353, !46}
!354 = distinct !{!354, !46}
!355 = distinct !{!355, !46}
!356 = !{!357, !40, i64 256}
!357 = !{!"bNodeTree", !59, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !56, i64 224, !56, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !60, i64 276, !60, i64 278, !40, i64 280, !40, i64 284, !60, i64 288, !60, i64 290, !40, i64 292, !68, i64 296, !56, i64 312, !56, i64 328, !35, i64 344, !358, i64 352, !40, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!358 = !{!"bNodeInstanceKey", !40, i64 0}
!359 = distinct !{!359, !46}
!360 = distinct !{!360, !46}
!361 = distinct !{!361, !46}
!362 = !{!"depsgraph.c:dag_editors_scene_update"}
!363 = distinct !{!363, !46}
!364 = distinct !{!364, !46}
!365 = !{!357, !60, i64 98}
!366 = distinct !{!366, !46}
!367 = distinct !{!367, !46}
!368 = distinct !{!368, !46}
!369 = !{!142, !35, i64 456}
!370 = !{!142, !35, i64 464}
!371 = !{!142, !35, i64 472}
!372 = distinct !{!372, !46}
!373 = !{!374, !35, i64 128}
!374 = !{!"bPoseChannel", !35, i64 0, !35, i64 8, !35, i64 16, !56, i64 24, !36, i64 40, !60, i64 104, !60, i64 106, !60, i64 108, !60, i64 110, !36, i64 112, !36, i64 113, !36, i64 114, !35, i64 120, !35, i64 128, !35, i64 136, !56, i64 144, !56, i64 160, !35, i64 176, !35, i64 184, !35, i64 192, !36, i64 200, !36, i64 212, !36, i64 224, !36, i64 236, !36, i64 252, !63, i64 264, !60, i64 268, !60, i64 270, !36, i64 272, !36, i64 336, !36, i64 400, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !63, i64 524, !63, i64 528, !63, i64 532, !35, i64 536}
!375 = !{!376, !60, i64 10}
!376 = !{!"bKinematicConstraint", !35, i64 0, !60, i64 8, !60, i64 10, !60, i64 12, !60, i64 14, !36, i64 16, !35, i64 80, !36, i64 88, !63, i64 152, !63, i64 156, !63, i64 160, !36, i64 164, !60, i64 176, !60, i64 178, !63, i64 180}
!377 = !{!376, !60, i64 12}
!378 = distinct !{!378, !46}
!379 = distinct !{!379, !46}
!380 = distinct !{!380, !46}
!381 = distinct !{!381, !46}
!382 = distinct !{!382, !46}
!383 = distinct !{!383, !46}
!384 = distinct !{!384, !46}
!385 = !{!281, !35, i64 0}
!386 = distinct !{!386, !46}
!387 = !{!"depsgraph.c:dag_check_cycle"}
!388 = !{!55, !36, i64 28}
!389 = distinct !{!389, !46}
!390 = distinct !{!390, !46}
!391 = distinct !{!391, !46}
!392 = distinct !{!392, !46}
!393 = distinct !{!393, !46}
!394 = distinct !{!394, !46}
!395 = distinct !{!395, !46}
!396 = !{!"depsgraph.c:BLI_listbase_clear"}
!397 = !{!88, !40, i64 112}
!398 = !{!88, !36, i64 116}
!399 = distinct !{!399, !46}
!400 = distinct !{!400, !46}
!401 = distinct !{!401, !46}
!402 = distinct !{!402, !46}
!403 = distinct !{!403, !46}
!404 = !{!"depsgraph.c:dag_node_name"}
!405 = !{!"depsgraph.c:dag_add_driver_relation"}
!406 = distinct !{!406, !46}
!407 = !{!408, !35, i64 24}
!408 = !{!"FCurve", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !56, i64 32, !35, i64 48, !35, i64 56, !40, i64 64, !63, i64 68, !60, i64 72, !60, i64 74, !40, i64 76, !35, i64 80, !40, i64 88, !36, i64 92, !63, i64 104, !63, i64 108}
!409 = !{!408, !35, i64 80}
!410 = distinct !{!410, !46}
!411 = !{!412, !60, i64 528}
!412 = !{!"DriverVar", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !60, i64 528, !60, i64 530, !63, i64 532}
!413 = !{!414, !35, i64 0}
!414 = !{!"DriverTarget", !35, i64 0, !35, i64 8, !36, i64 16, !60, i64 48, !60, i64 50, !40, i64 52}
!415 = !{!414, !35, i64 8}
!416 = !{!414, !60, i64 50}
!417 = distinct !{!417, !46}
!418 = !{!"depsgraph.c:dag_add_collision_field_relation"}
!419 = !{!420, !35, i64 0}
!420 = !{!"EffectorWeights", !35, i64 0, !36, i64 8, !63, i64 64, !60, i64 68, !36, i64 70, !40, i64 76}
!421 = distinct !{!421, !46}
!422 = distinct !{!422, !46}
!423 = distinct !{!423, !46}
!424 = !{!"depsgraph.c:dag_add_material_driver_relations"}
!425 = !{!426, !60, i64 98}
!426 = !{!"Material", !59, i64 0, !35, i64 120, !60, i64 128, !60, i64 130, !63, i64 132, !63, i64 136, !63, i64 140, !63, i64 144, !63, i64 148, !63, i64 152, !63, i64 156, !63, i64 160, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180, !63, i64 184, !63, i64 188, !63, i64 192, !63, i64 196, !63, i64 200, !63, i64 204, !63, i64 208, !63, i64 212, !63, i64 216, !63, i64 220, !427, i64 224, !428, i64 312, !63, i64 328, !63, i64 332, !63, i64 336, !63, i64 340, !63, i64 344, !63, i64 348, !63, i64 352, !60, i64 356, !60, i64 358, !60, i64 360, !36, i64 362, !36, i64 363, !63, i64 364, !63, i64 368, !60, i64 372, !60, i64 374, !63, i64 376, !63, i64 380, !63, i64 384, !63, i64 388, !60, i64 392, !60, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !60, i64 412, !60, i64 414, !60, i64 416, !60, i64 418, !63, i64 420, !63, i64 424, !63, i64 428, !63, i64 432, !63, i64 436, !63, i64 440, !63, i64 444, !63, i64 448, !63, i64 452, !63, i64 456, !36, i64 460, !63, i64 524, !63, i64 528, !63, i64 532, !40, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !60, i64 544, !60, i64 546, !60, i64 548, !36, i64 550, !36, i64 551, !60, i64 552, !60, i64 554, !63, i64 556, !63, i64 560, !36, i64 564, !63, i64 580, !63, i64 584, !60, i64 588, !60, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !60, i64 612, !60, i64 614, !63, i64 616, !63, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !63, i64 800, !63, i64 804, !63, i64 808, !63, i64 812, !63, i64 816, !60, i64 820, !60, i64 822, !36, i64 824, !36, i64 836, !63, i64 848, !63, i64 852, !63, i64 856, !63, i64 860, !63, i64 864, !63, i64 868, !63, i64 872, !60, i64 876, !60, i64 878, !40, i64 880, !60, i64 884, !60, i64 886, !36, i64 888, !60, i64 904, !60, i64 906, !60, i64 908, !60, i64 910, !60, i64 912, !36, i64 914, !35, i64 920, !56, i64 928}
!427 = !{!"VolumeSettings", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !63, i64 52, !63, i64 56, !63, i64 60, !60, i64 64, !60, i64 66, !60, i64 68, !60, i64 70, !63, i64 72, !63, i64 76, !63, i64 80, !63, i64 84}
!428 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!429 = !{!426, !35, i64 120}
!430 = !{!426, !35, i64 768}
!431 = !{!"depsgraph.c:dag_add_lamp_driver_relations"}
!432 = !{!433, !60, i64 98}
!433 = !{!"Lamp", !59, i64 0, !35, i64 120, !60, i64 128, !60, i64 130, !40, i64 132, !60, i64 136, !60, i64 138, !63, i64 140, !63, i64 144, !63, i64 148, !63, i64 152, !63, i64 156, !63, i64 160, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180, !63, i64 184, !63, i64 188, !63, i64 192, !63, i64 196, !35, i64 200, !60, i64 208, !60, i64 210, !63, i64 212, !63, i64 216, !63, i64 220, !63, i64 224, !63, i64 228, !63, i64 232, !63, i64 236, !60, i64 240, !60, i64 242, !60, i64 244, !60, i64 246, !36, i64 248, !36, i64 249, !60, i64 250, !60, i64 252, !60, i64 254, !60, i64 256, !60, i64 258, !63, i64 260, !63, i64 264, !63, i64 268, !63, i64 272, !60, i64 276, !60, i64 278, !60, i64 280, !60, i64 282, !60, i64 284, !60, i64 286, !63, i64 288, !63, i64 292, !63, i64 296, !63, i64 300, !63, i64 304, !63, i64 308, !63, i64 312, !63, i64 316, !63, i64 320, !63, i64 324, !63, i64 328, !63, i64 332, !63, i64 336, !60, i64 340, !36, i64 342, !35, i64 344, !36, i64 352, !60, i64 496, !60, i64 498, !36, i64 500, !35, i64 504, !35, i64 512}
!434 = !{!433, !35, i64 120}
!435 = !{!433, !35, i64 512}
!436 = !{!"depsgraph.c:check_and_create_collision_relation"}
!437 = !{!83, !35, i64 1240}
!438 = !{!439, !60, i64 4}
!439 = !{!"PartDeflect", !40, i64 0, !60, i64 4, !60, i64 6, !60, i64 8, !60, i64 10, !60, i64 12, !60, i64 14, !60, i64 16, !60, i64 18, !63, i64 20, !63, i64 24, !63, i64 28, !63, i64 32, !63, i64 36, !63, i64 40, !63, i64 44, !63, i64 48, !63, i64 52, !63, i64 56, !63, i64 60, !63, i64 64, !63, i64 68, !63, i64 72, !63, i64 76, !63, i64 80, !63, i64 84, !63, i64 88, !63, i64 92, !63, i64 96, !63, i64 100, !63, i64 104, !63, i64 108, !63, i64 112, !63, i64 116, !63, i64 120, !63, i64 124, !35, i64 128, !35, i64 136, !63, i64 144, !40, i64 148, !35, i64 152}
!440 = !{!439, !60, i64 6}
!441 = !{!"depsgraph.c:dag_add_shader_nodetree_driver_relations"}
!442 = !{!357, !35, i64 120}
!443 = !{!258, !60, i64 172}
!444 = distinct !{!444, !46}
!445 = !{!"depsgraph.c:scene_sort_groups"}
!446 = !{!83, !35, i64 16}
!447 = distinct !{!447, !46}
!448 = distinct !{!448, !46}
!449 = distinct !{!449, !46}
!450 = distinct !{!450, !46}
!451 = distinct !{!451, !46}
!452 = distinct !{!452, !46}
!453 = !{!"depsgraph.c:flush_layer_node"}
!454 = distinct !{!454, !46}
!455 = !{!"depsgraph.c:animdata_use_time"}
!456 = !{!278, !35, i64 0}
!457 = !{!458, !35, i64 120}
!458 = !{!"bAction", !59, i64 0, !56, i64 120, !56, i64 136, !56, i64 152, !56, i64 168, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196}
!459 = !{!460, !35, i64 16}
!460 = !{!"NlaTrack", !35, i64 0, !35, i64 8, !56, i64 16, !40, i64 32, !40, i64 36, !36, i64 40}
!461 = distinct !{!461, !46}
!462 = !{!278, !35, i64 48}
!463 = !{!"depsgraph.c:object_modifiers_use_time"}
!464 = distinct !{!464, !46}
!465 = distinct !{!465, !46}
!466 = distinct !{!466, !46}
!467 = !{!"depsgraph.c:dag_invisible_dependencies_flush"}
!468 = distinct !{!468, !46}
!469 = distinct !{!469, !46}
!470 = distinct !{!470, !46}
!471 = distinct !{!471, !46}
!472 = distinct !{!472, !46}
!473 = !{!"depsgraph.c:check_object_needs_evaluation"}
!474 = !{!"depsgraph.c:check_object_tagged_for_update"}
!475 = !{!"depsgraph.c:dag_editors_id_update"}
!476 = !{!"depsgraph.c:dag_id_flush_update__isDependentTexture"}
!477 = !{!"depsgraph.c:dag_node_print_dependencies"}
!478 = distinct !{!478, !46}
!479 = !{!"depsgraph.c:dag_node_recurs_level"}
!480 = distinct !{!480, !46}
!481 = !{!"depsgraph.c:dag_node_print_dependency_cycle"}
!482 = distinct !{!482, !46}
!483 = !{!"depsgraph.c:dag_node_print_dependency_recurs"}
!484 = distinct !{!484, !46}
