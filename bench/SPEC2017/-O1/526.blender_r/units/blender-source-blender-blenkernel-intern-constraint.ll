; ModuleID = 'blender/source/blender/blenkernel/intern/constraint.c'
source_filename = "blender/source/blender/blenkernel/intern/constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bConstraintOb = type { ptr, ptr, ptr, [4 x [4 x float]], [4 x [4 x float]], i16, i16 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.bChildOfConstraint = type { ptr, i32, i32, [4 x [4 x float]], [64 x i8] }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MDeformWeight = type { i32, float }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.DispList = type { ptr, ptr, i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.bTrackToConstraint = type { ptr, i32, i32, i32, i32, [64 x i8] }
%struct.bKinematicConstraint = type { ptr, i16, i16, i16, i16, [64 x i8], ptr, [64 x i8], float, float, float, [3 x float], i16, i16, float }
%struct.bFollowPathConstraint = type { ptr, float, float, i32, i16, i16 }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.bRotLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.bLocLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.bSizeLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.bRotateLikeConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.bLocateLikeConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.bSizeLikeConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.bPythonConstraint = type { ptr, ptr, i32, i32, %struct.ListBase, ptr, [64 x i8] }
%struct.IDProperty = type { ptr, ptr, i8, i8, i16, [64 x i8], i32, %struct.IDPropertyData, i32, i32 }
%struct.IDPropertyData = type { ptr, %struct.ListBase, i32, i32 }
%struct.bActionConstraint = type { ptr, i16, i16, i32, i32, float, float, i32, ptr, [64 x i8] }
%struct.bLockTrackConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.bDistLimitConstraint = type { ptr, [64 x i8], float, float, i16, i16, i32 }
%struct.bStretchToConstraint = type { ptr, i32, i32, i32, float, float, float, float, float, [64 x i8] }
%struct.bMinMaxConstraint = type { ptr, i32, float, i32, i16, i16, i16, i16, [3 x float], [64 x i8] }
%struct.bRigidBodyJointConstraint = type { ptr, ptr, i32, float, float, float, float, float, float, [6 x float], [6 x float], float, i16, i16, i16, i16 }
%struct.bClampToConstraint = type { ptr, i32, i32 }
%struct.bTransformConstraint = type { ptr, [64 x i8], i16, i16, [3 x i8], i8, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.bShrinkwrapConstraint = type { ptr, float, i16, i8, i8, float, [4 x i8] }
%struct.SpaceTransform = type { [4 x [4 x float]], [4 x [4 x float]] }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.bDampTrackConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.bSplineIKConstraint = type { ptr, ptr, i16, i16, i16, i16 }
%struct.bTransLikeConstraint = type { ptr, [64 x i8] }
%struct.bSameVolumeConstraint = type { i32, float }
%struct.bPivotConstraint = type { ptr, [64 x i8], [3 x float], i16, i16 }
%struct.bFollowTrackConstraint = type { ptr, [64 x i8], i32, i32, [64 x i8], ptr, ptr }
%struct.CameraParams = type { i8, float, float, float, float, float, float, float, float, float, i32, float, float, i32, i32, i32, float, float, float, %struct.rctf, [4 x [4 x float]] }
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
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.bCameraSolverConstraint = type { ptr, i32, i32 }
%struct.bObjectSolverConstraint = type { ptr, i32, i32, [64 x i8], [4 x [4 x float]], ptr }

@.str = private unnamed_addr constant [6 x i8] c"Const\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"bConstraintOb\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@CTI_INIT = internal unnamed_addr global i1 false, align 2
@constraintsTypeInfo = internal unnamed_addr global [29 x ptr] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [57 x i8] c"No valid constraint type-info data available. Type = %i\0A\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"tempConstraintOb\00", align 1
@CTI_CHILDOF = internal global %struct.bConstraintTypeInfo { i16 1, i16 144, [32 x i8] c"Child Of\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bChildOfConstraint\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @childof_id_looper, ptr null, ptr @childof_new_data, ptr @childof_get_tars, ptr @childof_flush_tars, ptr @default_get_tarmat, ptr @childof_evaluate }, align 8
@CTI_TRACKTO = internal global %struct.bConstraintTypeInfo { i16 2, i16 88, [32 x i8] c"Track To\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bTrackToConstraint\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @trackto_id_looper, ptr null, ptr @trackto_new_data, ptr @trackto_get_tars, ptr @trackto_flush_tars, ptr @default_get_tarmat, ptr @trackto_evaluate }, align 8
@CTI_KINEMATIC = internal global %struct.bConstraintTypeInfo { i16 3, i16 184, [32 x i8] c"IK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bKinematicConstraint\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @kinematic_id_looper, ptr null, ptr @kinematic_new_data, ptr @kinematic_get_tars, ptr @kinematic_flush_tars, ptr @kinematic_get_tarmat, ptr null }, align 8
@CTI_FOLLOWPATH = internal global %struct.bConstraintTypeInfo { i16 4, i16 24, [32 x i8] c"Follow Path\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bFollowPathConstraint\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @followpath_id_looper, ptr null, ptr @followpath_new_data, ptr @followpath_get_tars, ptr @followpath_flush_tars, ptr @followpath_get_tarmat, ptr @followpath_evaluate }, align 8
@CTI_ROTLIMIT = internal global %struct.bConstraintTypeInfo { i16 5, i16 28, [32 x i8] c"Limit Rotation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bRotLimitConstraint\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rotlimit_evaluate }, align 8
@CTI_LOCLIMIT = internal global %struct.bConstraintTypeInfo { i16 6, i16 28, [32 x i8] c"Limit Location\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bLocLimitConstraint\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @loclimit_evaluate }, align 8
@CTI_SIZELIMIT = internal global %struct.bConstraintTypeInfo { i16 7, i16 28, [32 x i8] c"Limit Scale\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bSizeLimitConstraint\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sizelimit_evaluate }, align 8
@CTI_ROTLIKE = internal global %struct.bConstraintTypeInfo { i16 8, i16 80, [32 x i8] c"Copy Rotation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bRotateLikeConstraint\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @rotlike_id_looper, ptr null, ptr @rotlike_new_data, ptr @rotlike_get_tars, ptr @rotlike_flush_tars, ptr @default_get_tarmat, ptr @rotlike_evaluate }, align 8
@CTI_LOCLIKE = internal global %struct.bConstraintTypeInfo { i16 9, i16 80, [32 x i8] c"Copy Location\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bLocateLikeConstraint\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @loclike_id_looper, ptr null, ptr @loclike_new_data, ptr @loclike_get_tars, ptr @loclike_flush_tars, ptr @default_get_tarmat, ptr @loclike_evaluate }, align 8
@CTI_SIZELIKE = internal global %struct.bConstraintTypeInfo { i16 10, i16 80, [32 x i8] c"Copy Scale\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bSizeLikeConstraint\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @sizelike_id_looper, ptr null, ptr @sizelike_new_data, ptr @sizelike_get_tars, ptr @sizelike_flush_tars, ptr @default_get_tarmat, ptr @sizelike_evaluate }, align 8
@CTI_PYTHON = internal global %struct.bConstraintTypeInfo { i16 11, i16 112, [32 x i8] c"Script\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bPythonConstraint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pycon_free, ptr @pycon_id_looper, ptr @pycon_copy, ptr @pycon_new_data, ptr @pycon_get_tars, ptr null, ptr @pycon_get_tarmat, ptr @pycon_evaluate }, align 8
@CTI_ACTION = internal global %struct.bConstraintTypeInfo { i16 12, i16 104, [32 x i8] c"Action\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bActionConstraint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @actcon_id_looper, ptr null, ptr @actcon_new_data, ptr @actcon_get_tars, ptr @actcon_flush_tars, ptr @actcon_get_tarmat, ptr @actcon_evaluate }, align 8
@CTI_LOCKTRACK = internal global %struct.bConstraintTypeInfo { i16 13, i16 80, [32 x i8] c"Locked Track\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bLockTrackConstraint\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @locktrack_id_looper, ptr null, ptr @locktrack_new_data, ptr @locktrack_get_tars, ptr @locktrack_flush_tars, ptr @default_get_tarmat, ptr @locktrack_evaluate }, align 8
@CTI_DISTLIMIT = internal global %struct.bConstraintTypeInfo { i16 14, i16 88, [32 x i8] c"Limit Distance\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bDistLimitConstraint\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @distlimit_id_looper, ptr null, ptr @distlimit_new_data, ptr @distlimit_get_tars, ptr @distlimit_flush_tars, ptr @default_get_tarmat, ptr @distlimit_evaluate }, align 8
@CTI_STRETCHTO = internal global %struct.bConstraintTypeInfo { i16 15, i16 104, [32 x i8] c"Stretch To\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bStretchToConstraint\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @stretchto_id_looper, ptr null, ptr @stretchto_new_data, ptr @stretchto_get_tars, ptr @stretchto_flush_tars, ptr @default_get_tarmat, ptr @stretchto_evaluate }, align 8
@CTI_MINMAX = internal global %struct.bConstraintTypeInfo { i16 16, i16 104, [32 x i8] c"Floor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bMinMaxConstraint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @minmax_id_looper, ptr null, ptr @minmax_new_data, ptr @minmax_get_tars, ptr @minmax_flush_tars, ptr @default_get_tarmat, ptr @minmax_evaluate }, align 8
@CTI_RIGIDBODYJOINT = internal global %struct.bConstraintTypeInfo { i16 17, i16 104, [32 x i8] c"Rigid Body Joint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bRigidBodyJointConstraint\00\00\00\00\00\00\00", ptr null, ptr @rbj_id_looper, ptr null, ptr @rbj_new_data, ptr @rbj_get_tars, ptr @rbj_flush_tars, ptr @default_get_tarmat, ptr null }, align 8
@CTI_CLAMPTO = internal global %struct.bConstraintTypeInfo { i16 18, i16 16, [32 x i8] c"Clamp To\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bClampToConstraint\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @clampto_id_looper, ptr null, ptr null, ptr @clampto_get_tars, ptr @clampto_flush_tars, ptr @clampto_get_tarmat, ptr @clampto_evaluate }, align 8
@CTI_TRANSFORM = internal global %struct.bConstraintTypeInfo { i16 19, i16 224, [32 x i8] c"Transformation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bTransformConstraint\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @transform_id_looper, ptr null, ptr @transform_new_data, ptr @transform_get_tars, ptr @transform_flush_tars, ptr @default_get_tarmat, ptr @transform_evaluate }, align 8
@CTI_SHRINKWRAP = internal global %struct.bConstraintTypeInfo { i16 20, i16 24, [32 x i8] c"Shrinkwrap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bShrinkwrapConstraint\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @shrinkwrap_id_looper, ptr null, ptr @shrinkwrap_new_data, ptr @shrinkwrap_get_tars, ptr @shrinkwrap_flush_tars, ptr @shrinkwrap_get_tarmat, ptr @shrinkwrap_evaluate }, align 8
@CTI_DAMPTRACK = internal global %struct.bConstraintTypeInfo { i16 21, i16 80, [32 x i8] c"Damped Track\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bDampTrackConstraint\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @damptrack_id_looper, ptr null, ptr @damptrack_new_data, ptr @damptrack_get_tars, ptr @damptrack_flush_tars, ptr @default_get_tarmat, ptr @damptrack_evaluate }, align 8
@CTI_SPLINEIK = internal global %struct.bConstraintTypeInfo { i16 22, i16 24, [32 x i8] c"Spline IK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bSplineIKConstraint\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @splineik_free, ptr @splineik_id_looper, ptr @splineik_copy, ptr @splineik_new_data, ptr @splineik_get_tars, ptr @splineik_flush_tars, ptr @splineik_get_tarmat, ptr null }, align 8
@CTI_TRANSLIKE = internal global %struct.bConstraintTypeInfo { i16 23, i16 72, [32 x i8] c"Copy Transforms\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bTransLikeConstraint\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @translike_id_looper, ptr null, ptr null, ptr @translike_get_tars, ptr @translike_flush_tars, ptr @default_get_tarmat, ptr @translike_evaluate }, align 8
@CTI_SAMEVOL = internal global %struct.bConstraintTypeInfo { i16 24, i16 8, [32 x i8] c"Maintain Volume\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bSameVolumeConstraint\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @samevolume_new_data, ptr null, ptr null, ptr null, ptr @samevolume_evaluate }, align 8
@CTI_PIVOT = internal global %struct.bConstraintTypeInfo { i16 25, i16 88, [32 x i8] c"Pivot\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bPivotConstraint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @pivotcon_id_looper, ptr null, ptr null, ptr @pivotcon_get_tars, ptr @pivotcon_flush_tars, ptr @default_get_tarmat, ptr @pivotcon_evaluate }, align 8
@CTI_FOLLOWTRACK = internal global %struct.bConstraintTypeInfo { i16 26, i16 160, [32 x i8] c"Follow Track\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bFollowTrackConstraint\00\00\00\00\00\00\00\00\00\00", ptr null, ptr @followtrack_id_looper, ptr null, ptr @followtrack_new_data, ptr null, ptr null, ptr null, ptr @followtrack_evaluate }, align 8
@CTI_CAMERASOLVER = internal global %struct.bConstraintTypeInfo { i16 27, i16 16, [32 x i8] c"Camera Solver\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bCameraSolverConstraint\00\00\00\00\00\00\00\00\00", ptr null, ptr @camerasolver_id_looper, ptr null, ptr @camerasolver_new_data, ptr null, ptr null, ptr null, ptr @camerasolver_evaluate }, align 8
@CTI_OBJECTSOLVER = internal global %struct.bConstraintTypeInfo { i16 28, i16 152, [32 x i8] c"Object Solver\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"bObjectSolverConstraint\00\00\00\00\00\00\00\00\00", ptr null, ptr @objectsolver_id_looper, ptr null, ptr @objectsolver_new_data, ptr null, ptr null, ptr null, ptr @objectsolver_evaluate }, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"tempConstraintTarget\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"PyConstraintProps\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"do Action Constraint %s - Ob %s Pchan %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pose\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Error: unknown owner type for Action Constraint\00", align 1
@track_dir_vecs = internal unnamed_addr constant [6 x [3 x float]] [[3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00]], align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"Constraint\00", align 1
@switch.table.trackto_evaluate = private unnamed_addr constant [5 x float] [float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 1.000000e+00, float -1.000000e+00], align 4
@switch.table.shrinkwrap_get_tarmat = private unnamed_addr constant [6 x i64] [i64 0, i64 1, i64 2, i64 0, i64 1, i64 2], align 8
@switch.table.shrinkwrap_get_tarmat.10 = private unnamed_addr constant [6 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00], align 4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_constraint_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_uniquename(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 30, i32 noundef 64) #17
  ret void
}

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_constraints_make_evalob(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 160, ptr noundef nonnull @.str.1) #17
  store ptr %0, ptr %6, align 8, !tbaa !38
  switch i16 %3, label %40 [
    i16 1, label %7
    i16 2, label %20
  ]

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 5
  store i16 %3, ptr %11, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 6
  store i16 1, ptr %12, align 2, !tbaa !43
  %13 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %14) #17
  br label %17

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  tail call void @unit_m4(ptr noundef nonnull %16) #17
  br label %17

17:                                               ; preds = %15, %9
  %18 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 4
  %19 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  tail call void @copy_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %19) #17
  br label %43

20:                                               ; preds = %4
  %21 = icmp ne ptr %1, null
  %22 = icmp ne ptr %2, null
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 1
  store ptr %1, ptr %25, align 8, !tbaa !41
  %26 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 2
  store ptr %2, ptr %26, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 5
  store i16 %3, ptr %27, align 8, !tbaa !42
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 26
  %29 = load i16, ptr %28, align 4, !tbaa !45
  %30 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 6
  %31 = tail call i16 @llvm.smax.i16(i16 %29, i16 1)
  store i16 %31, ptr %30, align 2, !tbaa !43
  %32 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29
  tail call void @mul_m4_m4m4(ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %34) #17
  br label %37

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  tail call void @unit_m4(ptr noundef nonnull %36) #17
  br label %37

37:                                               ; preds = %35, %24
  %38 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 4
  %39 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  tail call void @copy_m4_m4(ptr noundef nonnull %38, ptr noundef nonnull %39) #17
  br label %43

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  tail call void @unit_m4(ptr noundef nonnull %41) #17
  %42 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %42) #17
  br label %43

43:                                               ; preds = %40, %37, %17
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @unit_m4(ptr noundef) local_unnamed_addr #1

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_constraints_clear_evalob(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bConstraintOb, ptr %0, i64 0, i32 4
  %7 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %6) #17
  %8 = getelementptr inbounds %struct.bConstraintOb, ptr %0, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #17
  %9 = getelementptr inbounds %struct.bConstraintOb, ptr %0, i64 0, i32 5
  %10 = load i16, ptr %9, align 8, !tbaa !42
  switch i16 %10, label %35 [
    i16 1, label %11
    i16 2, label %19
  ]

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bConstraintOb, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %8) #17
  %17 = load ptr, ptr %12, align 8, !tbaa !41
  %18 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 49
  br label %32

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.bConstraintOb, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bConstraintOb, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %25, i64 0, i32 29
  %29 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 50
  call void @mul_m4_m4m4(ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %8) #17
  %30 = load ptr, ptr %24, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 30
  br label %32

32:                                               ; preds = %15, %27
  %33 = phi ptr [ %31, %27 ], [ %18, %15 ]
  %34 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %33, ptr noundef nonnull %2) #17
  br label %35

35:                                               ; preds = %32, %19, %23, %11, %5
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %36(ptr noundef nonnull %0) #17
  br label %37

37:                                               ; preds = %1, %35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  ret void
}

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_constraint_mat_convertspace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  %8 = icmp eq ptr %0, null
  %9 = icmp eq ptr %2, null
  %10 = or i1 %8, %9
  %11 = icmp eq i16 %3, %4
  %12 = or i1 %10, %11
  br i1 %12, label %83, label %13

13:                                               ; preds = %5
  %14 = icmp eq ptr %1, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %13
  switch i16 %3, label %83 [
    i16 0, label %16
    i16 2, label %22
    i16 1, label %37
    i16 3, label %44
  ]

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %18 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %17) #17
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %7, ptr noundef %2) #17
  %19 = and i16 %4, -3
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %83

21:                                               ; preds = %16
  call void @BKE_constraint_mat_convertspace(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext 2, i16 noundef signext %4)
  br label %83

22:                                               ; preds = %15
  switch i16 %4, label %83 [
    i16 0, label %23
    i16 1, label %25
    i16 3, label %30
  ]

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %24, ptr noundef %2) #17
  br label %83

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %83, label %29

29:                                               ; preds = %25
  tail call void @BKE_armature_mat_pose_to_bone(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %2) #17
  br label %83

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = icmp eq ptr %32, null
  br i1 %33, label %83, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Bone, ptr %32, i64 0, i32 13
  %36 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %35) #17
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %7, ptr noundef %2) #17
  br label %83

37:                                               ; preds = %15
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @BKE_armature_mat_bone_to_pose(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %2) #17
  br label %42

42:                                               ; preds = %41, %37
  switch i16 %4, label %83 [
    i16 3, label %43
    i16 0, label %43
  ]

43:                                               ; preds = %42, %42
  tail call void @BKE_constraint_mat_convertspace(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext 2, i16 noundef signext %4)
  br label %83

44:                                               ; preds = %15
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Bone, ptr %46, i64 0, i32 13
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %49) #17
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %6) #17
  br label %50

50:                                               ; preds = %48, %44
  %51 = icmp ult i16 %4, 2
  br i1 %51, label %52, label %83

52:                                               ; preds = %50
  call void @BKE_constraint_mat_convertspace(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext 2, i16 noundef signext %4)
  br label %83

53:                                               ; preds = %13
  %54 = icmp eq i16 %3, 0
  %55 = icmp eq i16 %4, 1
  %56 = and i1 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !50
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 47
  %63 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %62, ptr noundef nonnull %63) #17
  call void @invert_m4_m4_safe(ptr noundef nonnull %7, ptr noundef nonnull %6) #17
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %7, ptr noundef %2) #17
  br label %83

64:                                               ; preds = %57
  call void @BKE_object_to_mat4(ptr noundef %0, ptr noundef nonnull %6) #17
  call void @normalize_m4(ptr noundef nonnull %6) #17
  %65 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  store float 0.000000e+00, ptr %65, align 16, !tbaa !56
  %66 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 1
  store float 0.000000e+00, ptr %66, align 4, !tbaa !56
  %67 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 2
  store float 0.000000e+00, ptr %67, align 8, !tbaa !56
  call void @invert_m4_m4_safe(ptr noundef nonnull %7, ptr noundef nonnull %6) #17
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %7, ptr noundef %2) #17
  br label %83

68:                                               ; preds = %53
  %69 = icmp eq i16 %3, 1
  %70 = icmp eq i16 %4, 0
  %71 = and i1 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !50
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 47
  %78 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %77, ptr noundef nonnull %78) #17
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %6, ptr noundef %2) #17
  br label %83

79:                                               ; preds = %72
  call void @BKE_object_to_mat4(ptr noundef %0, ptr noundef nonnull %6) #17
  call void @normalize_m4(ptr noundef nonnull %6) #17
  %80 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  store float 0.000000e+00, ptr %80, align 16, !tbaa !56
  %81 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 1
  store float 0.000000e+00, ptr %81, align 4, !tbaa !56
  %82 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 2
  store float 0.000000e+00, ptr %82, align 8, !tbaa !56
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %6, ptr noundef %2) #17
  br label %83

83:                                               ; preds = %52, %50, %43, %23, %34, %30, %25, %29, %21, %16, %15, %68, %79, %76, %61, %64, %22, %42, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  ret void
}

declare void @BKE_armature_mat_pose_to_bone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_armature_mat_bone_to_pose(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @invert_m4_m4_safe(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_object_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @normalize_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @BKE_constraint_typeinfo_from_type(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i1, ptr @CTI_INIT, align 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store ptr null, ptr @constraintsTypeInfo, align 16, !tbaa !34
  store ptr @CTI_CHILDOF, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 1), align 8, !tbaa !34
  store ptr @CTI_TRACKTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 2), align 16, !tbaa !34
  store ptr @CTI_KINEMATIC, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @CTI_FOLLOWPATH, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @CTI_ROTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @CTI_LOCLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @CTI_SIZELIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @CTI_ROTLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @CTI_LOCLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @CTI_SIZELIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @CTI_PYTHON, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @CTI_ACTION, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @CTI_LOCKTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @CTI_DISTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @CTI_STRETCHTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @CTI_MINMAX, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @CTI_RIGIDBODYJOINT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @CTI_CLAMPTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @CTI_TRANSFORM, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @CTI_SHRINKWRAP, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @CTI_DAMPTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @CTI_SPLINEIK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @CTI_TRANSLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @CTI_SAMEVOL, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @CTI_PIVOT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @CTI_FOLLOWTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @CTI_CAMERASOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @CTI_OBJECTSOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store i1 true, ptr @CTI_INIT, align 2
  br label %4

4:                                                ; preds = %3, %1
  %5 = icmp ult i32 %0, 29
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = zext nneg i32 %0 to i64
  %8 = getelementptr inbounds [29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  br label %12

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %0)
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %9, %6 ], [ null, %10 ]
  ret ptr %13
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @BKE_constraint_typeinfo_get(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !57
  %6 = sext i16 %5 to i32
  %7 = load i1, ptr @CTI_INIT, align 2
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  store ptr null, ptr @constraintsTypeInfo, align 16, !tbaa !34
  store ptr @CTI_CHILDOF, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 1), align 8, !tbaa !34
  store ptr @CTI_TRACKTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 2), align 16, !tbaa !34
  store ptr @CTI_KINEMATIC, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @CTI_FOLLOWPATH, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @CTI_ROTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @CTI_LOCLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @CTI_SIZELIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @CTI_ROTLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @CTI_LOCLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @CTI_SIZELIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @CTI_PYTHON, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @CTI_ACTION, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @CTI_LOCKTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @CTI_DISTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @CTI_STRETCHTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @CTI_MINMAX, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @CTI_RIGIDBODYJOINT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @CTI_CLAMPTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @CTI_TRANSFORM, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @CTI_SHRINKWRAP, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @CTI_DAMPTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @CTI_SPLINEIK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @CTI_TRANSLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @CTI_SAMEVOL, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @CTI_PIVOT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @CTI_FOLLOWTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @CTI_CAMERASOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @CTI_OBJECTSOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store i1 true, ptr @CTI_INIT, align 2
  br label %9

9:                                                ; preds = %8, %3
  %10 = icmp ult i16 %5, 29
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = zext nneg i32 %6 to i64
  %13 = getelementptr inbounds [29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  br label %17

15:                                               ; preds = %9
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %6)
  br label %17

17:                                               ; preds = %15, %11, %1
  %18 = phi ptr [ null, %1 ], [ %14, %11 ], [ null, %15 ]
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_constraint_free_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !57
  %10 = sext i16 %9 to i32
  %11 = load i1, ptr @CTI_INIT, align 2
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store ptr null, ptr @constraintsTypeInfo, align 16, !tbaa !34
  store ptr @CTI_CHILDOF, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 1), align 8, !tbaa !34
  store ptr @CTI_TRACKTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 2), align 16, !tbaa !34
  store ptr @CTI_KINEMATIC, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @CTI_FOLLOWPATH, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @CTI_ROTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @CTI_LOCLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @CTI_SIZELIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @CTI_ROTLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @CTI_LOCLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @CTI_SIZELIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @CTI_PYTHON, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @CTI_ACTION, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @CTI_LOCKTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @CTI_DISTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @CTI_STRETCHTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @CTI_MINMAX, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @CTI_RIGIDBODYJOINT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @CTI_CLAMPTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @CTI_TRANSFORM, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @CTI_SHRINKWRAP, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @CTI_DAMPTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @CTI_SPLINEIK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @CTI_TRANSLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @CTI_SAMEVOL, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @CTI_PIVOT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @CTI_FOLLOWTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @CTI_CAMERASOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @CTI_OBJECTSOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store i1 true, ptr @CTI_INIT, align 2
  br label %13

13:                                               ; preds = %12, %7
  %14 = icmp ult i16 %9, 29
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = zext nneg i32 %10 to i64
  %17 = getelementptr inbounds [29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  br label %21

19:                                               ; preds = %13
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %10)
  br label %21

21:                                               ; preds = %19, %15, %5
  %22 = phi ptr [ null, %5 ], [ %18, %15 ], [ null, %19 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %22, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef %0) #17
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %22, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void %31(ptr noundef %0, ptr noundef nonnull @con_unlink_refs_cb, ptr noundef null) #17
  br label %34

34:                                               ; preds = %29, %33, %21
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %36 = load ptr, ptr %2, align 8, !tbaa !59
  tail call void %35(ptr noundef %36) #17
  br label %37

37:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @con_unlink_refs_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture readnone %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp ne ptr %5, null
  %7 = icmp ne i8 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @id_us_min(ptr noundef nonnull %5) #17
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_constraints_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @BKE_constraint_free_data(ptr noundef nonnull %5)
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !63

8:                                                ; preds = %4, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #17
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_constraint_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @BKE_constraint_free_data(ptr noundef nonnull %1)
  tail call void @BLI_freelinkN(ptr noundef %0, ptr noundef nonnull %1) #17
  br label %5

5:                                                ; preds = %2, %4
  %6 = phi i8 [ 1, %4 ], [ 0, %2 ]
  ret i8 %6
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_constraint_add_for_pose(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc ptr @add_new_constraint(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext %3)
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ %7, %6 ], [ null, %4 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @add_new_constraint(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 120, ptr noundef nonnull @.str.9) #17
  %7 = sext i16 %3 to i32
  %8 = load i1, ptr @CTI_INIT, align 2
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  store ptr null, ptr @constraintsTypeInfo, align 16, !tbaa !34
  store ptr @CTI_CHILDOF, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 1), align 8, !tbaa !34
  store ptr @CTI_TRACKTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 2), align 16, !tbaa !34
  store ptr @CTI_KINEMATIC, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @CTI_FOLLOWPATH, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @CTI_ROTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @CTI_LOCLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @CTI_SIZELIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @CTI_ROTLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @CTI_LOCLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @CTI_SIZELIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @CTI_PYTHON, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @CTI_ACTION, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @CTI_LOCKTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @CTI_DISTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @CTI_STRETCHTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @CTI_MINMAX, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @CTI_RIGIDBODYJOINT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @CTI_CLAMPTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @CTI_TRANSFORM, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @CTI_SHRINKWRAP, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @CTI_DAMPTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @CTI_SPLINEIK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @CTI_TRANSLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @CTI_SAMEVOL, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @CTI_PIVOT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @CTI_FOLLOWTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @CTI_CAMERASOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @CTI_OBJECTSOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store i1 true, ptr @CTI_INIT, align 2
  br label %10

10:                                               ; preds = %9, %4
  %11 = icmp ult i16 %3, 29
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = zext nneg i32 %7 to i64
  %14 = getelementptr inbounds [29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  br label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %7)
  br label %18

18:                                               ; preds = %12, %16
  %19 = phi ptr [ %15, %12 ], [ null, %16 ]
  %20 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 3
  store i16 %3, ptr %20, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 4
  %22 = load i16, ptr %21, align 2, !tbaa !66
  %23 = or i16 %22, 1
  store i16 %23, ptr %21, align 2, !tbaa !66
  %24 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 9
  store float 1.000000e+00, ptr %24, align 8, !tbaa !67
  %25 = icmp eq ptr %19, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %19, i64 0, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !68
  %30 = sext i16 %29 to i64
  %31 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %19, i64 0, i32 3
  %32 = tail call ptr %27(i64 noundef %30, ptr noundef nonnull %31) #17
  %33 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %19, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !69
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  tail call void %35(ptr noundef %32) #17
  br label %38

38:                                               ; preds = %37, %26
  %39 = icmp eq ptr %2, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = load i8, ptr %2, align 1, !tbaa !70
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40, %38
  %44 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %19, i64 0, i32 2
  br label %51

45:                                               ; preds = %18
  %46 = icmp eq ptr %2, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %45
  %48 = load i8, ptr %2, align 1, !tbaa !70
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, ptr @.str, ptr %2
  br label %51

51:                                               ; preds = %40, %43, %45, %47
  %52 = phi ptr [ %44, %43 ], [ %2, %40 ], [ @.str, %45 ], [ %50, %47 ]
  %53 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 7
  %54 = tail call ptr @BLI_strncpy(ptr noundef nonnull %53, ptr noundef %52, i64 noundef 64) #17
  %55 = icmp ne ptr %1, null
  %56 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 3
  %57 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  %58 = select i1 %55, ptr %56, ptr %57
  tail call void @BLI_addtail(ptr noundef nonnull %58, ptr noundef %6) #17
  tail call void @BLI_uniquename(ptr noundef nonnull %58, ptr noundef %6, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 30, i32 noundef 64) #17
  %59 = icmp eq ptr %0, null
  br i1 %59, label %85, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %62 = load ptr, ptr %61, align 8, !tbaa !71
  %63 = icmp eq ptr %62, null
  br i1 %63, label %85, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %66 = load ptr, ptr %65, align 8, !tbaa !72
  %67 = icmp ne ptr %66, null
  %68 = and i1 %55, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %71 = load ptr, ptr %70, align 8, !tbaa !49
  %72 = icmp eq ptr %71, null
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %75 = load ptr, ptr %74, align 8, !tbaa !73
  %76 = getelementptr inbounds %struct.Bone, ptr %71, i64 0, i32 25
  %77 = load i32, ptr %76, align 8, !tbaa !74
  %78 = getelementptr inbounds %struct.bArmature, ptr %75, i64 0, i32 16
  %79 = load i32, ptr %78, align 4, !tbaa !76
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %73, %64
  %83 = load i16, ptr %21, align 2, !tbaa !66
  %84 = or i16 %83, 256
  store i16 %84, ptr %21, align 2, !tbaa !66
  br label %85

85:                                               ; preds = %69, %73, %60, %51, %82
  %86 = load ptr, ptr %58, align 8, !tbaa !34
  %87 = icmp eq ptr %86, null
  br i1 %87, label %98, label %88

88:                                               ; preds = %85, %88
  %89 = phi ptr [ %96, %88 ], [ %86, %85 ]
  %90 = icmp eq ptr %89, %6
  %91 = getelementptr inbounds %struct.bConstraint, ptr %89, i64 0, i32 4
  %92 = load i16, ptr %91, align 2, !tbaa !66
  %93 = and i16 %92, -17
  %94 = select i1 %90, i16 16, i16 0
  %95 = or disjoint i16 %93, %94
  store i16 %95, ptr %91, align 2, !tbaa !66
  %96 = load ptr, ptr %89, align 8, !tbaa !34
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %88, !llvm.loop !78

98:                                               ; preds = %88, %85
  %99 = icmp eq i16 %3, 1
  %100 = and i1 %55, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 5
  store i8 2, ptr %102, align 4, !tbaa !79
  %103 = load i16, ptr %21, align 2, !tbaa !66
  %104 = or i16 %103, 64
  store i16 %104, ptr %21, align 2, !tbaa !66
  br label %105

105:                                              ; preds = %101, %98
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_constraint_add_for_object(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @add_new_constraint(ptr noundef %0, ptr noundef null, ptr noundef %1, i16 noundef signext %2)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_constraints_relink(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1, %27
  %5 = phi ptr [ %28, %27 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !57
  %8 = sext i16 %7 to i32
  %9 = load i1, ptr @CTI_INIT, align 2
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  store ptr null, ptr @constraintsTypeInfo, align 16, !tbaa !34
  store ptr @CTI_CHILDOF, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 1), align 8, !tbaa !34
  store ptr @CTI_TRACKTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 2), align 16, !tbaa !34
  store ptr @CTI_KINEMATIC, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @CTI_FOLLOWPATH, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @CTI_ROTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @CTI_LOCLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @CTI_SIZELIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @CTI_ROTLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @CTI_LOCLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @CTI_SIZELIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @CTI_PYTHON, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @CTI_ACTION, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @CTI_LOCKTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @CTI_DISTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @CTI_STRETCHTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @CTI_MINMAX, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @CTI_RIGIDBODYJOINT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @CTI_CLAMPTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @CTI_TRANSFORM, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @CTI_SHRINKWRAP, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @CTI_DAMPTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @CTI_SPLINEIK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @CTI_TRANSLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @CTI_SAMEVOL, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @CTI_PIVOT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @CTI_FOLLOWTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @CTI_CAMERASOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @CTI_OBJECTSOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store i1 true, ptr @CTI_INIT, align 2
  br label %11

11:                                               ; preds = %10, %4
  %12 = icmp ult i16 %7, 29
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = zext nneg i32 %8 to i64
  %15 = getelementptr inbounds [29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  br label %19

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %8)
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %16, %13 ], [ null, %17 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %20, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void %24(ptr noundef nonnull %5, ptr noundef nonnull @con_relink_id_cb, ptr noundef null) #17
  br label %27

27:                                               ; preds = %26, %22, %19
  %28 = load ptr, ptr %5, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %4, !llvm.loop !80

30:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_constraints_id_loop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %3, %29
  %7 = phi ptr [ %30, %29 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.bConstraint, ptr %7, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !57
  %10 = sext i16 %9 to i32
  %11 = load i1, ptr @CTI_INIT, align 2
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  store ptr null, ptr @constraintsTypeInfo, align 16, !tbaa !34
  store ptr @CTI_CHILDOF, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 1), align 8, !tbaa !34
  store ptr @CTI_TRACKTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 2), align 16, !tbaa !34
  store ptr @CTI_KINEMATIC, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @CTI_FOLLOWPATH, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @CTI_ROTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @CTI_LOCLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @CTI_SIZELIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @CTI_ROTLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @CTI_LOCLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @CTI_SIZELIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @CTI_PYTHON, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @CTI_ACTION, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @CTI_LOCKTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @CTI_DISTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @CTI_STRETCHTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @CTI_MINMAX, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @CTI_RIGIDBODYJOINT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @CTI_CLAMPTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @CTI_TRANSFORM, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @CTI_SHRINKWRAP, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @CTI_DAMPTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @CTI_SPLINEIK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @CTI_TRANSLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @CTI_SAMEVOL, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @CTI_PIVOT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @CTI_FOLLOWTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @CTI_CAMERASOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @CTI_OBJECTSOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store i1 true, ptr @CTI_INIT, align 2
  br label %13

13:                                               ; preds = %12, %6
  %14 = icmp ult i16 %9, 29
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = zext nneg i32 %10 to i64
  %17 = getelementptr inbounds [29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  br label %21

19:                                               ; preds = %13
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %10)
  br label %21

21:                                               ; preds = %15, %19
  %22 = phi ptr [ %18, %15 ], [ null, %19 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %22, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #17
  br label %29

29:                                               ; preds = %24, %28, %21
  %30 = load ptr, ptr %7, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %6, !llvm.loop !80

32:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @con_relink_id_cb(ptr nocapture readnone %0, ptr nocapture noundef %1, i8 zeroext %2, ptr nocapture readnone %3) #5 {
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store ptr %9, ptr %1, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %11, %7, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_constraints_copy(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  tail call void @BLI_duplicatelist(ptr noundef nonnull %0, ptr noundef %1) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp ne ptr %4, null
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %55

9:                                                ; preds = %3
  %10 = icmp eq i8 %2, 0
  br label %11

11:                                               ; preds = %9, %49
  %12 = phi ptr [ %5, %9 ], [ %51, %49 ]
  %13 = phi ptr [ %4, %9 ], [ %50, %49 ]
  %14 = getelementptr inbounds %struct.bConstraint, ptr %13, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !57
  %16 = sext i16 %15 to i32
  %17 = load i1, ptr @CTI_INIT, align 2
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store ptr null, ptr @constraintsTypeInfo, align 16, !tbaa !34
  store ptr @CTI_CHILDOF, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 1), align 8, !tbaa !34
  store ptr @CTI_TRACKTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 2), align 16, !tbaa !34
  store ptr @CTI_KINEMATIC, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @CTI_FOLLOWPATH, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @CTI_ROTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @CTI_LOCLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @CTI_SIZELIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @CTI_ROTLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @CTI_LOCLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @CTI_SIZELIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @CTI_PYTHON, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @CTI_ACTION, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @CTI_LOCKTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @CTI_DISTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @CTI_STRETCHTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @CTI_MINMAX, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @CTI_RIGIDBODYJOINT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @CTI_CLAMPTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @CTI_TRANSFORM, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @CTI_SHRINKWRAP, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @CTI_DAMPTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @CTI_SPLINEIK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @CTI_TRANSLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @CTI_SAMEVOL, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @CTI_PIVOT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @CTI_FOLLOWTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @CTI_CAMERASOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @CTI_OBJECTSOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store i1 true, ptr @CTI_INIT, align 2
  br label %19

19:                                               ; preds = %18, %11
  %20 = icmp ult i16 %15, 29
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = zext nneg i32 %16 to i64
  %23 = getelementptr inbounds [29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  br label %27

25:                                               ; preds = %19
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %16)
  br label %27

27:                                               ; preds = %21, %25
  %28 = phi ptr [ %24, %21 ], [ null, %25 ]
  %29 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.bConstraint, ptr %13, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = tail call ptr %29(ptr noundef %31) #17
  store ptr %32, ptr %30, align 8, !tbaa !59
  %33 = icmp eq ptr %28, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %28, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !82
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void %36(ptr noundef nonnull %13, ptr noundef nonnull %12) #17
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %28, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !62
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void %41(ptr noundef nonnull %13, ptr noundef nonnull @con_fix_copied_refs_cb, ptr noundef null) #17
  br label %44

44:                                               ; preds = %43, %39
  br i1 %10, label %49, label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %40, align 8, !tbaa !62
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void %46(ptr noundef nonnull %13, ptr noundef nonnull @con_extern_cb, ptr noundef null) #17
  br label %49

49:                                               ; preds = %44, %48, %45, %27
  %50 = load ptr, ptr %13, align 8, !tbaa !34
  %51 = load ptr, ptr %12, align 8, !tbaa !34
  %52 = icmp ne ptr %50, null
  %53 = icmp ne ptr %51, null
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %11, label %55, !llvm.loop !83

55:                                               ; preds = %49, %3
  ret void
}

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @con_fix_copied_refs_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture readnone %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp ne ptr %5, null
  %7 = icmp ne i8 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @id_us_plus(ptr noundef nonnull %5) #17
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @con_extern_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i8 zeroext %2, ptr nocapture readnone %3) #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @id_lib_extern(ptr noundef nonnull %5) #17
  br label %12

12:                                               ; preds = %11, %7, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_constraints_find_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_findstring(ptr noundef %0, ptr noundef %1, i32 noundef 30) #17
  ret ptr %3
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_constraints_active_get(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %5, %7 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !66
  %10 = and i16 %9, 16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %3, label %12, !llvm.loop !85

12:                                               ; preds = %3, %7, %1
  %13 = phi ptr [ null, %1 ], [ %5, %7 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_constraints_active_set(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %15, %7 ], [ %5, %4 ]
  %9 = icmp eq ptr %8, %1
  %10 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 4
  %11 = load i16, ptr %10, align 2, !tbaa !66
  %12 = and i16 %11, -17
  %13 = select i1 %9, i16 16, i16 0
  %14 = or disjoint i16 %12, %13
  store i16 %14, ptr %10, align 2, !tbaa !66
  %15 = load ptr, ptr %8, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !78

17:                                               ; preds = %7, %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_constraints_proxylocal_extract(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !86
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %13
  %6 = phi ptr [ %7, %13 ], [ %3, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !66
  %10 = and i16 %9, 256
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %6) #17
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %6) #17
  br label %13

13:                                               ; preds = %5, %12
  %14 = icmp eq ptr %7, null
  br i1 %14, label %15, label %5, !llvm.loop !88

15:                                               ; preds = %13, %2
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_constraints_proxylocked_owner(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %1, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 25
  %22 = load i32, ptr %21, align 8, !tbaa !74
  %23 = getelementptr inbounds %struct.bArmature, ptr %20, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !76
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18, %14
  br label %28

28:                                               ; preds = %2, %4, %27, %18, %8
  %29 = phi i8 [ 1, %8 ], [ 1, %18 ], [ 0, %27 ], [ 0, %4 ], [ 0, %2 ]
  ret i8 %29
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_constraint_target_matrix_get(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3, ptr noundef %4, ptr noundef %5, float noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ListBase, align 8
  %9 = icmp eq ptr %1, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bConstraint, ptr %1, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !57
  %13 = sext i16 %12 to i32
  %14 = load i1, ptr @CTI_INIT, align 2
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store ptr null, ptr @constraintsTypeInfo, align 16, !tbaa !34
  store ptr @CTI_CHILDOF, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 1), align 8, !tbaa !34
  store ptr @CTI_TRACKTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 2), align 16, !tbaa !34
  store ptr @CTI_KINEMATIC, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @CTI_FOLLOWPATH, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @CTI_ROTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @CTI_LOCLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @CTI_SIZELIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @CTI_ROTLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @CTI_LOCLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @CTI_SIZELIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @CTI_PYTHON, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @CTI_ACTION, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @CTI_LOCKTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @CTI_DISTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @CTI_STRETCHTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @CTI_MINMAX, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @CTI_RIGIDBODYJOINT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @CTI_CLAMPTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @CTI_TRANSFORM, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @CTI_SHRINKWRAP, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @CTI_DAMPTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @CTI_SPLINEIK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @CTI_TRANSLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @CTI_SAMEVOL, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @CTI_PIVOT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @CTI_FOLLOWTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @CTI_CAMERASOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @CTI_OBJECTSOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store i1 true, ptr @CTI_INIT, align 2
  br label %16

16:                                               ; preds = %15, %10
  %17 = icmp ult i16 %12, 29
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = zext nneg i32 %13 to i64
  %20 = getelementptr inbounds [29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  br label %24

22:                                               ; preds = %16
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %13)
  br label %24

24:                                               ; preds = %22, %18, %7
  %25 = phi ptr [ null, %7 ], [ %21, %18 ], [ null, %22 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %74, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %25, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !89
  %30 = icmp eq ptr %29, null
  br i1 %30, label %74, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %33 = tail call ptr %32(i64 noundef 160, ptr noundef nonnull @.str.3) #17
  %34 = getelementptr inbounds %struct.bConstraintOb, ptr %33, i64 0, i32 5
  store i16 %3, ptr %34, align 8, !tbaa !42
  store ptr %0, ptr %33, align 8, !tbaa !38
  switch i16 %3, label %55 [
    i16 1, label %35
    i16 2, label %45
  ]

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bConstraintOb, ptr %33, i64 0, i32 1
  store ptr %4, ptr %36, align 8, !tbaa !41
  %37 = getelementptr inbounds %struct.bConstraintOb, ptr %33, i64 0, i32 2
  store ptr null, ptr %37, align 8, !tbaa !44
  %38 = icmp eq ptr %4, null
  %39 = getelementptr inbounds %struct.bConstraintOb, ptr %33, i64 0, i32 3
  br i1 %38, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %39, ptr noundef nonnull %41) #17
  %42 = getelementptr inbounds %struct.bConstraintOb, ptr %33, i64 0, i32 4
  tail call void @copy_m4_m4(ptr noundef nonnull %42, ptr noundef nonnull %39) #17
  br label %55

43:                                               ; preds = %35
  tail call void @unit_m4(ptr noundef nonnull %39) #17
  %44 = getelementptr inbounds %struct.bConstraintOb, ptr %33, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %44) #17
  br label %55

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.bConstraintOb, ptr %33, i64 0, i32 1
  store ptr null, ptr %46, align 8, !tbaa !41
  %47 = getelementptr inbounds %struct.bConstraintOb, ptr %33, i64 0, i32 2
  store ptr %4, ptr %47, align 8, !tbaa !44
  %48 = icmp eq ptr %4, null
  %49 = getelementptr inbounds %struct.bConstraintOb, ptr %33, i64 0, i32 3
  br i1 %48, label %53, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 29
  tail call void @copy_m4_m4(ptr noundef nonnull %49, ptr noundef nonnull %51) #17
  %52 = getelementptr inbounds %struct.bConstraintOb, ptr %33, i64 0, i32 4
  tail call void @copy_m4_m4(ptr noundef nonnull %52, ptr noundef nonnull %49) #17
  br label %55

53:                                               ; preds = %45
  tail call void @unit_m4(ptr noundef nonnull %49) #17
  %54 = getelementptr inbounds %struct.bConstraintOb, ptr %33, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %54) #17
  br label %55

55:                                               ; preds = %50, %53, %40, %43, %31
  %56 = load ptr, ptr %28, align 8, !tbaa !89
  %57 = call i32 %56(ptr noundef %1, ptr noundef nonnull %8) #17
  %58 = call ptr @BLI_findlink(ptr noundef nonnull %8, i32 noundef %2) #17
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %25, i64 0, i32 10
  %62 = load ptr, ptr %61, align 8, !tbaa !90
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  call void %62(ptr noundef %1, ptr noundef nonnull %33, ptr noundef nonnull %58, float noundef %6) #17
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr inbounds %struct.bConstraintTarget, ptr %58, i64 0, i32 4
  call void @copy_m4_m4(ptr noundef %5, ptr noundef nonnull %66) #17
  br label %67

67:                                               ; preds = %65, %55
  %68 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %25, i64 0, i32 9
  %69 = load ptr, ptr %68, align 8, !tbaa !91
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  call void %69(ptr noundef %1, ptr noundef nonnull %8, i8 noundef zeroext 1) #17
  br label %72

72:                                               ; preds = %71, %67
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %73(ptr noundef nonnull %33) #17
  br label %75

74:                                               ; preds = %27, %24
  tail call void @unit_m4(ptr noundef %5) #17
  br label %75

75:                                               ; preds = %74, %72
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_constraint_targets_for_solving_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !57
  %9 = sext i16 %8 to i32
  %10 = load i1, ptr @CTI_INIT, align 2
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store ptr null, ptr @constraintsTypeInfo, align 16, !tbaa !34
  store ptr @CTI_CHILDOF, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 1), align 8, !tbaa !34
  store ptr @CTI_TRACKTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 2), align 16, !tbaa !34
  store ptr @CTI_KINEMATIC, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @CTI_FOLLOWPATH, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @CTI_ROTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @CTI_LOCLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @CTI_SIZELIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @CTI_ROTLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @CTI_LOCLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @CTI_SIZELIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @CTI_PYTHON, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @CTI_ACTION, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @CTI_LOCKTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @CTI_DISTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @CTI_STRETCHTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @CTI_MINMAX, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @CTI_RIGIDBODYJOINT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @CTI_CLAMPTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @CTI_TRANSFORM, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @CTI_SHRINKWRAP, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @CTI_DAMPTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @CTI_SPLINEIK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @CTI_TRANSLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @CTI_SAMEVOL, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @CTI_PIVOT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @CTI_FOLLOWTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @CTI_CAMERASOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @CTI_OBJECTSOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store i1 true, ptr @CTI_INIT, align 2
  br label %12

12:                                               ; preds = %11, %6
  %13 = icmp ult i16 %8, 29
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = zext nneg i32 %9 to i64
  %16 = getelementptr inbounds [29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  br label %20

18:                                               ; preds = %12
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %9)
  br label %20

20:                                               ; preds = %18, %14, %4
  %21 = phi ptr [ null, %4 ], [ %17, %14 ], [ null, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %21, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !89
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0, ptr noundef %2) #17
  %29 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %21, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !90
  %31 = icmp eq ptr %30, null
  %32 = load ptr, ptr %2, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %31, label %35, label %34

34:                                               ; preds = %27
  br i1 %33, label %46, label %36

35:                                               ; preds = %27
  br i1 %33, label %46, label %41

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %39, %36 ], [ %32, %34 ]
  %38 = load ptr, ptr %29, align 8, !tbaa !90
  tail call void %38(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %37, float noundef %3) #17
  %39 = load ptr, ptr %37, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %36, !llvm.loop !92

41:                                               ; preds = %35, %41
  %42 = phi ptr [ %44, %41 ], [ %32, %35 ]
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %42, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %43) #17
  %44 = load ptr, ptr %42, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %41, !llvm.loop !93

46:                                               ; preds = %36, %41, %34, %35, %23, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_constraints_solve(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %7 = icmp eq ptr %1, null
  br i1 %7, label %72, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %72, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %13 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 2
  br label %15

15:                                               ; preds = %11, %69
  %16 = phi ptr [ %9, %11 ], [ %70, %69 ]
  %17 = getelementptr inbounds %struct.bConstraint, ptr %16, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !57
  %19 = sext i16 %18 to i32
  %20 = load i1, ptr @CTI_INIT, align 2
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store ptr null, ptr @constraintsTypeInfo, align 16, !tbaa !34
  store ptr @CTI_CHILDOF, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 1), align 8, !tbaa !34
  store ptr @CTI_TRACKTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 2), align 16, !tbaa !34
  store ptr @CTI_KINEMATIC, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 3), align 8, !tbaa !34
  store ptr @CTI_FOLLOWPATH, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 4), align 16, !tbaa !34
  store ptr @CTI_ROTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 5), align 8, !tbaa !34
  store ptr @CTI_LOCLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 6), align 16, !tbaa !34
  store ptr @CTI_SIZELIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 7), align 8, !tbaa !34
  store ptr @CTI_ROTLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 8), align 16, !tbaa !34
  store ptr @CTI_LOCLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 9), align 8, !tbaa !34
  store ptr @CTI_SIZELIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 10), align 16, !tbaa !34
  store ptr @CTI_PYTHON, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 11), align 8, !tbaa !34
  store ptr @CTI_ACTION, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 12), align 16, !tbaa !34
  store ptr @CTI_LOCKTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 13), align 8, !tbaa !34
  store ptr @CTI_DISTLIMIT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 14), align 16, !tbaa !34
  store ptr @CTI_STRETCHTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 15), align 8, !tbaa !34
  store ptr @CTI_MINMAX, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 16), align 16, !tbaa !34
  store ptr @CTI_RIGIDBODYJOINT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 17), align 8, !tbaa !34
  store ptr @CTI_CLAMPTO, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 18), align 16, !tbaa !34
  store ptr @CTI_TRANSFORM, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 19), align 8, !tbaa !34
  store ptr @CTI_SHRINKWRAP, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 20), align 16, !tbaa !34
  store ptr @CTI_DAMPTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 21), align 8, !tbaa !34
  store ptr @CTI_SPLINEIK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 22), align 16, !tbaa !34
  store ptr @CTI_TRANSLIKE, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 23), align 8, !tbaa !34
  store ptr @CTI_SAMEVOL, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 24), align 16, !tbaa !34
  store ptr @CTI_PIVOT, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 25), align 8, !tbaa !34
  store ptr @CTI_FOLLOWTRACK, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 26), align 16, !tbaa !34
  store ptr @CTI_CAMERASOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 27), align 8, !tbaa !34
  store ptr @CTI_OBJECTSOLVER, ptr getelementptr inbounds ([29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 28), align 16, !tbaa !34
  store i1 true, ptr @CTI_INIT, align 2
  br label %22

22:                                               ; preds = %21, %15
  %23 = icmp ult i16 %18, 29
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = zext nneg i32 %19 to i64
  %26 = getelementptr inbounds [29 x ptr], ptr @constraintsTypeInfo, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  br label %30

28:                                               ; preds = %22
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %19)
  br label %30

30:                                               ; preds = %24, %28
  %31 = phi ptr [ %27, %24 ], [ null, %28 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %69, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.bConstraint, ptr %16, i64 0, i32 4
  %35 = load i16, ptr %34, align 2, !tbaa !66
  %36 = and i16 %35, 516
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %31, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !94
  %41 = icmp eq ptr %40, null
  br i1 %41, label %69, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bConstraint, ptr %16, i64 0, i32 9
  %44 = load float, ptr %43, align 8, !tbaa !67
  %45 = fcmp oeq float %44, 0.000000e+00
  br i1 %45, label %69, label %46

46:                                               ; preds = %42
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %12) #17
  %47 = load ptr, ptr %13, align 8, !tbaa !41
  %48 = load ptr, ptr %14, align 8, !tbaa !44
  %49 = getelementptr inbounds %struct.bConstraint, ptr %16, i64 0, i32 5
  %50 = load i8, ptr %49, align 4, !tbaa !79
  %51 = zext i8 %50 to i16
  call void @BKE_constraint_mat_convertspace(ptr noundef %47, ptr noundef %48, ptr noundef nonnull %12, i16 noundef signext 0, i16 noundef signext %51)
  call void @BKE_constraint_targets_for_solving_get(ptr noundef nonnull %16, ptr noundef nonnull %1, ptr noundef nonnull %5, float noundef %2)
  %52 = load ptr, ptr %39, align 8, !tbaa !94
  call void %52(ptr noundef nonnull %16, ptr noundef nonnull %1, ptr noundef nonnull %5) #17
  %53 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %31, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !91
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  call void %54(ptr noundef nonnull %16, ptr noundef nonnull %5, i8 noundef zeroext 1) #17
  br label %57

57:                                               ; preds = %56, %46
  %58 = load i16, ptr %34, align 2, !tbaa !66
  %59 = and i16 %58, 64
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load ptr, ptr %13, align 8, !tbaa !41
  %63 = load ptr, ptr %14, align 8, !tbaa !44
  %64 = load i8, ptr %49, align 4, !tbaa !79
  %65 = zext i8 %64 to i16
  call void @BKE_constraint_mat_convertspace(ptr noundef %62, ptr noundef %63, ptr noundef nonnull %12, i16 noundef signext %65, i16 noundef signext 0)
  br label %66

66:                                               ; preds = %61, %57
  %67 = fcmp olt float %44, 1.000000e+00
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %12) #17
  call void @blend_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %6, float noundef %44) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  br label %69

69:                                               ; preds = %66, %68, %42, %38, %33, %30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  %70 = load ptr, ptr %16, align 8, !tbaa !34
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %15, !llvm.loop !95

72:                                               ; preds = %69, %8, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret void
}

declare void @blend_m4_m4m4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @childof_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @childof_new_data(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bChildOfConstraint, ptr %0, i64 0, i32 1
  store i32 511, ptr %2, align 8, !tbaa !96
  %3 = getelementptr inbounds %struct.bChildOfConstraint, ptr %0, i64 0, i32 3
  tail call void @unit_m4(ptr noundef nonnull %3) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @childof_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !98
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bChildOfConstraint, ptr %8, i64 0, i32 4
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @childof_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !98
  %17 = getelementptr inbounds %struct.bChildOfConstraint, ptr %9, i64 0, i32 4
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @default_get_tarmat(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, float %3) #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 3
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 5
  %14 = load i16, ptr %13, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 10
  %16 = load float, ptr %15, align 4, !tbaa !108
  tail call fastcc void @constraint_target_to_mat4(ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %12, i16 noundef signext %14, float noundef %16)
  br label %19

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %18) #17
  br label %19

19:                                               ; preds = %4, %17, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @childof_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = load ptr, ptr %2, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %123, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  %20 = icmp eq ptr %19, null
  br i1 %20, label %123, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %22 = getelementptr inbounds %struct.bChildOfConstraint, ptr %14, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !96
  %24 = icmp eq i32 %23, 511
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bConstraintTarget, ptr %15, i64 0, i32 4
  %27 = getelementptr inbounds %struct.bChildOfConstraint, ptr %14, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %26, ptr noundef nonnull %27) #17
  %28 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %28, ptr noundef nonnull %4, ptr noundef nonnull %28) #17
  br label %122

29:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  %30 = getelementptr inbounds %struct.bChildOfConstraint, ptr %14, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %30) #17
  %31 = getelementptr inbounds %struct.bConstraintTarget, ptr %15, i64 0, i32 4
  %32 = getelementptr inbounds %struct.bConstraintTarget, ptr %15, i64 0, i32 4, i64 3
  %33 = load float, ptr %32, align 4, !tbaa !56
  store float %33, ptr %7, align 4, !tbaa !56
  %34 = getelementptr inbounds %struct.bConstraintTarget, ptr %15, i64 0, i32 4, i64 3, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !56
  %36 = getelementptr inbounds float, ptr %7, i64 1
  store float %35, ptr %36, align 4, !tbaa !56
  %37 = getelementptr inbounds %struct.bConstraintTarget, ptr %15, i64 0, i32 4, i64 3, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !56
  %39 = getelementptr inbounds float, ptr %7, i64 2
  store float %38, ptr %39, align 4, !tbaa !56
  %40 = getelementptr inbounds %struct.bConstraintTarget, ptr %15, i64 0, i32 8
  %41 = load i16, ptr %40, align 2, !tbaa !107
  call void @mat4_to_eulO(ptr noundef nonnull %8, i16 noundef signext %41, ptr noundef nonnull %31) #17
  call void @mat4_to_size(ptr noundef nonnull %9, ptr noundef nonnull %31) #17
  %42 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %43 = load float, ptr %42, align 16, !tbaa !56
  store float %43, ptr %10, align 4, !tbaa !56
  %44 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !56
  %46 = getelementptr inbounds float, ptr %10, i64 1
  store float %45, ptr %46, align 4, !tbaa !56
  %47 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 2
  %48 = load float, ptr %47, align 8, !tbaa !56
  %49 = getelementptr inbounds float, ptr %10, i64 2
  store float %48, ptr %49, align 4, !tbaa !56
  %50 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 6
  %51 = load i16, ptr %50, align 2, !tbaa !43
  call void @mat4_to_eulO(ptr noundef nonnull %11, i16 noundef signext %51, ptr noundef nonnull %5) #17
  call void @mat4_to_size(ptr noundef nonnull %12, ptr noundef nonnull %5) #17
  %52 = load i32, ptr %22, align 8, !tbaa !96
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %29
  store float 0.000000e+00, ptr %10, align 4, !tbaa !56
  store float 0.000000e+00, ptr %7, align 4, !tbaa !56
  br label %56

56:                                               ; preds = %55, %29
  %57 = and i32 %52, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store float 0.000000e+00, ptr %46, align 4, !tbaa !56
  store float 0.000000e+00, ptr %36, align 4, !tbaa !56
  br label %60

60:                                               ; preds = %59, %56
  %61 = and i32 %52, 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store float 0.000000e+00, ptr %49, align 4, !tbaa !56
  store float 0.000000e+00, ptr %39, align 4, !tbaa !56
  br label %64

64:                                               ; preds = %63, %60
  %65 = and i32 %52, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store float 0.000000e+00, ptr %11, align 4, !tbaa !56
  store float 0.000000e+00, ptr %8, align 4, !tbaa !56
  br label %68

68:                                               ; preds = %67, %64
  %69 = and i32 %52, 16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  store float 0.000000e+00, ptr %72, align 4, !tbaa !56
  %73 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float 0.000000e+00, ptr %73, align 4, !tbaa !56
  br label %74

74:                                               ; preds = %71, %68
  %75 = and i32 %52, 32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float 0.000000e+00, ptr %78, align 4, !tbaa !56
  %79 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %79, align 4, !tbaa !56
  br label %80

80:                                               ; preds = %77, %74
  %81 = and i32 %52, 64
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store float 1.000000e+00, ptr %12, align 4, !tbaa !56
  store float 1.000000e+00, ptr %9, align 4, !tbaa !56
  br label %84

84:                                               ; preds = %83, %80
  %85 = and i32 %52, 128
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  store float 1.000000e+00, ptr %88, align 4, !tbaa !56
  %89 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float 1.000000e+00, ptr %89, align 4, !tbaa !56
  br label %90

90:                                               ; preds = %87, %84
  %91 = and i32 %52, 256
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float 1.000000e+00, ptr %94, align 4, !tbaa !56
  %95 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 1.000000e+00, ptr %95, align 4, !tbaa !56
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i16, ptr %40, align 2, !tbaa !107
  call void @loc_eulO_size_to_mat4(ptr noundef nonnull %31, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i16 noundef signext %97) #17
  %98 = load i16, ptr %50, align 2, !tbaa !43
  call void @loc_eulO_size_to_mat4(ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i16 noundef signext %98) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %31, ptr noundef nonnull %5) #17
  %99 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %99) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %99, ptr noundef nonnull %4, ptr noundef nonnull %6) #17
  %100 = load i32, ptr %22, align 8, !tbaa !96
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %105 = load float, ptr %104, align 16, !tbaa !56
  %106 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  store float %105, ptr %106, align 8, !tbaa !56
  br label %107

107:                                              ; preds = %103, %96
  %108 = and i32 %100, 2
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !56
  %113 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  store float %112, ptr %113, align 4, !tbaa !56
  br label %114

114:                                              ; preds = %110, %107
  %115 = and i32 %100, 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 2
  %119 = load float, ptr %118, align 8, !tbaa !56
  %120 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  store float %119, ptr %120, align 8, !tbaa !56
  br label %121

121:                                              ; preds = %117, %114
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  br label %122

122:                                              ; preds = %121, %25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %123

123:                                              ; preds = %122, %17, %3
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @constraint_target_to_mat4(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [3 x float], align 4
  %16 = load i8, ptr %1, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef nonnull %19) #17
  br label %354

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !104
  switch i16 %22, label %329 [
    i16 1, label %23
    i16 22, label %215
  ]

23:                                               ; preds = %20
  %24 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #17
  %25 = tail call i32 @defgroup_name_index(ptr noundef %0, ptr noundef nonnull %1) #17
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef nonnull %26) #17
  %27 = icmp eq i32 %25, -1
  br i1 %27, label %214, label %28

28:                                               ; preds = %23
  %29 = icmp ne ptr %24, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = tail call ptr @CDDM_from_editbmesh(ptr noundef nonnull %24, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  br label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %34 = load ptr, ptr %33, align 8, !tbaa !109
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi ptr [ %31, %30 ], [ %34, %32 ]
  %37 = icmp ne ptr %36, null
  br i1 %37, label %38, label %209

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %36, i64 0, i32 50
  %40 = load ptr, ptr %39, align 8, !tbaa !110
  %41 = tail call ptr %40(ptr noundef nonnull %36, i32 noundef 2) #17
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %36, i64 0, i32 23
  %43 = load ptr, ptr %42, align 8, !tbaa !113
  %44 = tail call i32 %43(ptr noundef nonnull %36) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #17
  %45 = icmp eq ptr %41, null
  br i1 %45, label %208, label %46

46:                                               ; preds = %38
  %47 = icmp sgt i32 %44, 0
  br i1 %47, label %48, label %99

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %36, i64 0, i32 76
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %36, i64 0, i32 78
  %51 = getelementptr inbounds float, ptr %12, i64 1
  %52 = getelementptr inbounds float, ptr %8, i64 1
  %53 = getelementptr inbounds float, ptr %12, i64 2
  %54 = getelementptr inbounds float, ptr %8, i64 2
  %55 = getelementptr inbounds float, ptr %13, i64 1
  %56 = getelementptr inbounds float, ptr %9, i64 1
  %57 = getelementptr inbounds float, ptr %13, i64 2
  %58 = getelementptr inbounds float, ptr %9, i64 2
  br label %59

59:                                               ; preds = %48, %94
  %60 = phi float [ 0.000000e+00, %48 ], [ %95, %94 ]
  %61 = phi ptr [ %41, %48 ], [ %97, %94 ]
  %62 = phi i32 [ 0, %48 ], [ %96, %94 ]
  %63 = call ptr @defvert_find_index(ptr noundef nonnull %61, i32 noundef %25) #17
  %64 = icmp eq ptr %63, null
  br i1 %64, label %94, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.MDeformWeight, ptr %63, i64 0, i32 1
  %67 = load float, ptr %66, align 4, !tbaa !114
  %68 = fcmp ogt float %67, 0.000000e+00
  br i1 %68, label %69, label %94

69:                                               ; preds = %65
  %70 = load ptr, ptr %49, align 8, !tbaa !116
  call void %70(ptr noundef nonnull %36, i32 noundef %62, ptr noundef nonnull %12) #17
  %71 = load ptr, ptr %50, align 8, !tbaa !117
  call void %71(ptr noundef nonnull %36, i32 noundef %62, ptr noundef nonnull %13) #17
  %72 = load float, ptr %66, align 4, !tbaa !114
  %73 = load float, ptr %12, align 4, !tbaa !56
  %74 = load float, ptr %8, align 4, !tbaa !56
  %75 = call float @llvm.fmuladd.f32(float %73, float %72, float %74)
  store float %75, ptr %8, align 4, !tbaa !56
  %76 = load float, ptr %51, align 4, !tbaa !56
  %77 = load float, ptr %52, align 4, !tbaa !56
  %78 = call float @llvm.fmuladd.f32(float %76, float %72, float %77)
  store float %78, ptr %52, align 4, !tbaa !56
  %79 = load float, ptr %53, align 4, !tbaa !56
  %80 = load float, ptr %54, align 4, !tbaa !56
  %81 = call float @llvm.fmuladd.f32(float %79, float %72, float %80)
  store float %81, ptr %54, align 4, !tbaa !56
  %82 = load float, ptr %66, align 4, !tbaa !114
  %83 = load float, ptr %13, align 4, !tbaa !56
  %84 = load float, ptr %9, align 4, !tbaa !56
  %85 = call float @llvm.fmuladd.f32(float %83, float %82, float %84)
  store float %85, ptr %9, align 4, !tbaa !56
  %86 = load float, ptr %55, align 4, !tbaa !56
  %87 = load float, ptr %56, align 4, !tbaa !56
  %88 = call float @llvm.fmuladd.f32(float %86, float %82, float %87)
  store float %88, ptr %56, align 4, !tbaa !56
  %89 = load float, ptr %57, align 4, !tbaa !56
  %90 = load float, ptr %58, align 4, !tbaa !56
  %91 = call float @llvm.fmuladd.f32(float %89, float %82, float %90)
  store float %91, ptr %58, align 4, !tbaa !56
  %92 = load float, ptr %66, align 4, !tbaa !114
  %93 = fadd float %60, %92
  br label %94

94:                                               ; preds = %69, %65, %59
  %95 = phi float [ %93, %69 ], [ %60, %65 ], [ %60, %59 ]
  %96 = add nuw nsw i32 %62, 1
  %97 = getelementptr inbounds %struct.MDeformVert, ptr %61, i64 1
  %98 = icmp eq i32 %96, %44
  br i1 %98, label %99, label %59, !llvm.loop !118

99:                                               ; preds = %94, %46
  %100 = phi float [ 0.000000e+00, %46 ], [ %95, %94 ]
  %101 = fcmp ogt float %100, 0.000000e+00
  br i1 %101, label %102, label %120

102:                                              ; preds = %99
  %103 = fdiv float 1.000000e+00, %100
  %104 = load float, ptr %8, align 4, !tbaa !56
  %105 = fmul float %103, %104
  store float %105, ptr %8, align 4, !tbaa !56
  %106 = getelementptr inbounds float, ptr %8, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !56
  %108 = fmul float %103, %107
  store float %108, ptr %106, align 4, !tbaa !56
  %109 = getelementptr inbounds float, ptr %8, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !56
  %111 = fmul float %103, %110
  store float %111, ptr %109, align 4, !tbaa !56
  %112 = load float, ptr %9, align 4, !tbaa !56
  %113 = fmul float %103, %112
  store float %113, ptr %9, align 4, !tbaa !56
  %114 = getelementptr inbounds float, ptr %9, i64 1
  %115 = load float, ptr %114, align 4, !tbaa !56
  %116 = fmul float %103, %115
  store float %116, ptr %114, align 4, !tbaa !56
  %117 = getelementptr inbounds float, ptr %9, i64 2
  %118 = load float, ptr %117, align 4, !tbaa !56
  %119 = fmul float %103, %118
  store float %119, ptr %117, align 4, !tbaa !56
  br label %120

120:                                              ; preds = %102, %99
  call void @copy_m3_m4(ptr noundef nonnull %10, ptr noundef nonnull %26) #17
  %121 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %11, ptr noundef nonnull %10) #17
  call void @transpose_m3(ptr noundef nonnull %11) #17
  call void @mul_m3_v3(ptr noundef nonnull %11, ptr noundef nonnull %9) #17
  %122 = load float, ptr %9, align 4, !tbaa !56
  %123 = getelementptr inbounds float, ptr %9, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !56
  %125 = fmul float %124, %124
  %126 = call float @llvm.fmuladd.f32(float %122, float %122, float %125)
  %127 = getelementptr inbounds float, ptr %9, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !56
  %129 = call float @llvm.fmuladd.f32(float %128, float %128, float %126)
  %130 = fcmp ogt float %129, 0x38AA95A5C0000000
  br i1 %130, label %131, label %140

131:                                              ; preds = %120
  %132 = call float @sqrtf(float noundef %129) #17
  %133 = fdiv float 1.000000e+00, %132
  %134 = load float, ptr %9, align 4, !tbaa !56
  %135 = fmul float %134, %133
  store float %135, ptr %9, align 4, !tbaa !56
  %136 = load float, ptr %123, align 4, !tbaa !56
  %137 = fmul float %133, %136
  store float %137, ptr %123, align 4, !tbaa !56
  %138 = load float, ptr %127, align 4, !tbaa !56
  %139 = fmul float %133, %138
  br label %141

140:                                              ; preds = %120
  store float 0.000000e+00, ptr %9, align 4, !tbaa !56
  store float 0.000000e+00, ptr %123, align 4, !tbaa !56
  br label %141

141:                                              ; preds = %140, %131
  %142 = phi float [ 0.000000e+00, %140 ], [ %139, %131 ]
  store float %142, ptr %127, align 4, !tbaa !56
  %143 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !56
  %145 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1, i64 1
  %146 = load float, ptr %145, align 16, !tbaa !56
  %147 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !56
  %149 = load float, ptr %123, align 4, !tbaa !56
  %150 = fneg float %142
  %151 = fmul float %146, %150
  %152 = call float @llvm.fmuladd.f32(float %149, float %148, float %151)
  store float %152, ptr %2, align 4, !tbaa !56
  %153 = load float, ptr %9, align 4, !tbaa !56
  %154 = fneg float %153
  %155 = fmul float %148, %154
  %156 = call float @llvm.fmuladd.f32(float %142, float %144, float %155)
  %157 = getelementptr inbounds float, ptr %2, i64 1
  store float %156, ptr %157, align 4, !tbaa !56
  %158 = fneg float %149
  %159 = fmul float %144, %158
  %160 = call float @llvm.fmuladd.f32(float %153, float %146, float %159)
  %161 = getelementptr inbounds float, ptr %2, i64 2
  store float %160, ptr %161, align 4, !tbaa !56
  %162 = fmul float %156, %156
  %163 = call float @llvm.fmuladd.f32(float %152, float %152, float %162)
  %164 = call float @llvm.fmuladd.f32(float %160, float %160, float %163)
  %165 = call float @sqrtf(float noundef %164) #17
  %166 = fcmp olt float %165, 0x3F50624DE0000000
  br i1 %166, label %167, label %185

167:                                              ; preds = %141
  %168 = load float, ptr %11, align 16, !tbaa !56
  %169 = getelementptr inbounds float, ptr %11, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !56
  %171 = getelementptr inbounds float, ptr %11, i64 2
  %172 = load float, ptr %171, align 8, !tbaa !56
  %173 = load float, ptr %123, align 4, !tbaa !56
  %174 = load float, ptr %127, align 4, !tbaa !56
  %175 = fneg float %174
  %176 = fmul float %170, %175
  %177 = call float @llvm.fmuladd.f32(float %173, float %172, float %176)
  store float %177, ptr %2, align 4, !tbaa !56
  %178 = load float, ptr %9, align 4, !tbaa !56
  %179 = fneg float %178
  %180 = fmul float %172, %179
  %181 = call float @llvm.fmuladd.f32(float %174, float %168, float %180)
  store float %181, ptr %157, align 4, !tbaa !56
  %182 = fneg float %173
  %183 = fmul float %168, %182
  %184 = call float @llvm.fmuladd.f32(float %178, float %170, float %183)
  store float %184, ptr %161, align 4, !tbaa !56
  br label %185

185:                                              ; preds = %167, %141
  %186 = getelementptr inbounds [4 x float], ptr %2, i64 2
  %187 = load float, ptr %9, align 4, !tbaa !56
  store float %187, ptr %186, align 4, !tbaa !56
  %188 = load float, ptr %123, align 4, !tbaa !56
  %189 = getelementptr inbounds [4 x float], ptr %2, i64 2, i64 1
  store float %188, ptr %189, align 4, !tbaa !56
  %190 = load float, ptr %127, align 4, !tbaa !56
  %191 = getelementptr inbounds [4 x float], ptr %2, i64 2, i64 2
  store float %190, ptr %191, align 4, !tbaa !56
  %192 = getelementptr inbounds [4 x float], ptr %2, i64 1
  %193 = load float, ptr %161, align 4, !tbaa !56
  %194 = load float, ptr %157, align 4, !tbaa !56
  %195 = fneg float %190
  %196 = fmul float %194, %195
  %197 = call float @llvm.fmuladd.f32(float %188, float %193, float %196)
  store float %197, ptr %192, align 4, !tbaa !56
  %198 = load float, ptr %2, align 4, !tbaa !56
  %199 = fneg float %187
  %200 = fmul float %193, %199
  %201 = call float @llvm.fmuladd.f32(float %190, float %198, float %200)
  %202 = getelementptr inbounds [4 x float], ptr %2, i64 1, i64 1
  store float %201, ptr %202, align 4, !tbaa !56
  %203 = fneg float %188
  %204 = fmul float %198, %203
  %205 = call float @llvm.fmuladd.f32(float %187, float %194, float %204)
  %206 = getelementptr inbounds [4 x float], ptr %2, i64 1, i64 2
  store float %205, ptr %206, align 4, !tbaa !56
  call void @normalize_m4(ptr noundef nonnull %2) #17
  %207 = getelementptr inbounds [4 x float], ptr %2, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %207, ptr noundef nonnull %26, ptr noundef nonnull %8) #17
  br label %208

208:                                              ; preds = %185, %38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  br label %209

209:                                              ; preds = %208, %35
  %210 = and i1 %29, %37
  br i1 %210, label %211, label %214

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.DerivedMesh, ptr %36, i64 0, i32 95
  %213 = load ptr, ptr %212, align 8, !tbaa !119
  call void %213(ptr noundef nonnull %36) #17
  br label %214

214:                                              ; preds = %23, %209, %211
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  br label %354

215:                                              ; preds = %20
  %216 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %217 = load ptr, ptr %216, align 8, !tbaa !73
  %218 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %219 = load ptr, ptr %218, align 8, !tbaa !120
  %220 = icmp eq ptr %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %215
  %222 = tail call ptr @BKE_displist_find(ptr noundef nonnull %219, i32 noundef 7) #17
  br label %223

223:                                              ; preds = %221, %215
  %224 = phi ptr [ %222, %221 ], [ null, %215 ]
  %225 = icmp eq ptr %224, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.DispList, ptr %224, i64 0, i32 8
  %228 = load ptr, ptr %227, align 8, !tbaa !121
  br label %229

229:                                              ; preds = %226, %223
  %230 = phi ptr [ %228, %226 ], [ null, %223 ]
  %231 = getelementptr inbounds %struct.Lattice, ptr %217, i64 0, i32 21
  %232 = load ptr, ptr %231, align 8, !tbaa !123
  %233 = getelementptr inbounds %struct.Lattice, ptr %217, i64 0, i32 24
  %234 = load ptr, ptr %233, align 8, !tbaa !125
  %235 = getelementptr inbounds %struct.Lattice, ptr %217, i64 0, i32 2
  %236 = load i16, ptr %235, align 8, !tbaa !126
  %237 = sext i16 %236 to i32
  %238 = getelementptr inbounds %struct.Lattice, ptr %217, i64 0, i32 3
  %239 = load i16, ptr %238, align 2, !tbaa !127
  %240 = sext i16 %239 to i32
  %241 = mul nsw i32 %240, %237
  %242 = getelementptr inbounds %struct.Lattice, ptr %217, i64 0, i32 4
  %243 = load i16, ptr %242, align 4, !tbaa !128
  %244 = sext i16 %243 to i32
  %245 = mul i32 %241, %244
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %246 = tail call i32 @defgroup_name_index(ptr noundef %0, ptr noundef nonnull %1) #17
  %247 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef nonnull %247) #17
  %248 = icmp eq i32 %246, -1
  %249 = icmp eq ptr %234, null
  %250 = select i1 %248, i1 true, i1 %249
  br i1 %250, label %328, label %251

251:                                              ; preds = %229
  %252 = icmp sgt i32 %245, 0
  br i1 %252, label %253, label %305

253:                                              ; preds = %251
  %254 = getelementptr inbounds float, ptr %7, i64 1
  %255 = getelementptr inbounds float, ptr %6, i64 1
  %256 = getelementptr inbounds float, ptr %7, i64 2
  %257 = getelementptr inbounds float, ptr %6, i64 2
  br label %258

258:                                              ; preds = %253, %295
  %259 = phi ptr [ %230, %253 ], [ %301, %295 ]
  %260 = phi ptr [ %232, %253 ], [ %300, %295 ]
  %261 = phi i32 [ 0, %253 ], [ %302, %295 ]
  %262 = phi i32 [ 0, %253 ], [ %296, %295 ]
  %263 = phi ptr [ %234, %253 ], [ %303, %295 ]
  %264 = getelementptr inbounds %struct.MDeformVert, ptr %263, i64 0, i32 1
  %265 = load i32, ptr %264, align 8, !tbaa !129
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %295

267:                                              ; preds = %258
  %268 = icmp eq ptr %259, null
  %269 = select i1 %268, ptr %260, ptr %259
  br label %270

270:                                              ; preds = %267, %290
  %271 = phi i32 [ 0, %267 ], [ %292, %290 ]
  %272 = phi i32 [ %262, %267 ], [ %291, %290 ]
  %273 = tail call ptr @defvert_find_index(ptr noundef nonnull %263, i32 noundef %246) #17
  %274 = icmp eq ptr %273, null
  br i1 %274, label %290, label %275

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.MDeformWeight, ptr %273, i64 0, i32 1
  %277 = load float, ptr %276, align 4, !tbaa !114
  %278 = fcmp ogt float %277, 0.000000e+00
  br i1 %278, label %279, label %290

279:                                              ; preds = %275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %269, i64 12, i1 false)
  %280 = load float, ptr %7, align 4, !tbaa !56
  %281 = load float, ptr %6, align 4, !tbaa !56
  %282 = fadd float %280, %281
  store float %282, ptr %6, align 4, !tbaa !56
  %283 = load float, ptr %254, align 4, !tbaa !56
  %284 = load float, ptr %255, align 4, !tbaa !56
  %285 = fadd float %283, %284
  store float %285, ptr %255, align 4, !tbaa !56
  %286 = load float, ptr %256, align 4, !tbaa !56
  %287 = load float, ptr %257, align 4, !tbaa !56
  %288 = fadd float %286, %287
  store float %288, ptr %257, align 4, !tbaa !56
  %289 = add nsw i32 %272, 1
  br label %290

290:                                              ; preds = %279, %275, %270
  %291 = phi i32 [ %289, %279 ], [ %272, %275 ], [ %272, %270 ]
  %292 = add nuw nsw i32 %271, 1
  %293 = load i32, ptr %264, align 8, !tbaa !129
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %270, label %295, !llvm.loop !131

295:                                              ; preds = %290, %258
  %296 = phi i32 [ %262, %258 ], [ %291, %290 ]
  %297 = icmp eq ptr %259, null
  %298 = getelementptr inbounds float, ptr %259, i64 3
  %299 = zext i1 %297 to i64
  %300 = getelementptr inbounds %struct.BPoint, ptr %260, i64 %299
  %301 = select i1 %297, ptr null, ptr %298
  %302 = add nuw nsw i32 %261, 1
  %303 = getelementptr inbounds %struct.MDeformVert, ptr %263, i64 1
  %304 = icmp eq i32 %302, %245
  br i1 %304, label %305, label %258, !llvm.loop !132

305:                                              ; preds = %295, %251
  %306 = phi i32 [ 0, %251 ], [ %296, %295 ]
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %319, label %308

308:                                              ; preds = %305
  %309 = sitofp i32 %306 to float
  %310 = fdiv float 1.000000e+00, %309
  %311 = load float, ptr %6, align 4, !tbaa !56
  %312 = fmul float %310, %311
  store float %312, ptr %6, align 4, !tbaa !56
  %313 = getelementptr inbounds float, ptr %6, i64 1
  %314 = load float, ptr %313, align 4, !tbaa !56
  %315 = fmul float %310, %314
  store float %315, ptr %313, align 4, !tbaa !56
  %316 = getelementptr inbounds float, ptr %6, i64 2
  %317 = load float, ptr %316, align 4, !tbaa !56
  %318 = fmul float %310, %317
  store float %318, ptr %316, align 4, !tbaa !56
  br label %319

319:                                              ; preds = %308, %305
  call void @mul_v3_m4v3(ptr noundef nonnull %7, ptr noundef nonnull %247, ptr noundef nonnull %6) #17
  %320 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %321 = load float, ptr %7, align 4, !tbaa !56
  store float %321, ptr %320, align 4, !tbaa !56
  %322 = getelementptr inbounds float, ptr %7, i64 1
  %323 = load float, ptr %322, align 4, !tbaa !56
  %324 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 1
  store float %323, ptr %324, align 4, !tbaa !56
  %325 = getelementptr inbounds float, ptr %7, i64 2
  %326 = load float, ptr %325, align 4, !tbaa !56
  %327 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 2
  store float %326, ptr %327, align 4, !tbaa !56
  br label %328

328:                                              ; preds = %229, %319
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  br label %354

329:                                              ; preds = %20
  %330 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %331 = load ptr, ptr %330, align 8, !tbaa !72
  %332 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %331, ptr noundef nonnull %1) #17
  %333 = icmp eq ptr %332, null
  br i1 %333, label %352, label %334

334:                                              ; preds = %329
  %335 = fcmp olt float %4, 0x3EB0C6F7A0000000
  br i1 %335, label %336, label %339

336:                                              ; preds = %334
  %337 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %338 = getelementptr inbounds %struct.bPoseChannel, ptr %332, i64 0, i32 29
  tail call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %337, ptr noundef nonnull %338) #17
  br label %354

339:                                              ; preds = %334
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #17
  %340 = getelementptr inbounds %struct.bPoseChannel, ptr %332, i64 0, i32 31
  %341 = getelementptr inbounds %struct.bPoseChannel, ptr %332, i64 0, i32 32
  call void @interp_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %340, ptr noundef nonnull %341, float noundef %4) #17
  %342 = getelementptr inbounds %struct.bPoseChannel, ptr %332, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %342) #17
  %343 = getelementptr inbounds [4 x [4 x float]], ptr %14, i64 0, i64 3
  %344 = load float, ptr %15, align 4, !tbaa !56
  store float %344, ptr %343, align 16, !tbaa !56
  %345 = getelementptr inbounds float, ptr %15, i64 1
  %346 = load float, ptr %345, align 4, !tbaa !56
  %347 = getelementptr inbounds [4 x [4 x float]], ptr %14, i64 0, i64 3, i64 1
  store float %346, ptr %347, align 4, !tbaa !56
  %348 = getelementptr inbounds float, ptr %15, i64 2
  %349 = load float, ptr %348, align 4, !tbaa !56
  %350 = getelementptr inbounds [4 x [4 x float]], ptr %14, i64 0, i64 3, i64 2
  store float %349, ptr %350, align 8, !tbaa !56
  %351 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %351, ptr noundef nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #17
  br label %354

352:                                              ; preds = %329
  %353 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef nonnull %353) #17
  br label %354

354:                                              ; preds = %352, %339, %336, %214, %328, %18
  %355 = phi ptr [ null, %214 ], [ null, %328 ], [ null, %18 ], [ %332, %336 ], [ %332, %339 ], [ %332, %352 ]
  call void @BKE_constraint_mat_convertspace(ptr noundef %0, ptr noundef %355, ptr noundef %2, i16 noundef signext 0, i16 noundef signext %3)
  ret void
}

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @transpose_m3(ptr noundef) local_unnamed_addr #1

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

declare ptr @BKE_displist_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare void @mat4_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @loc_eulO_size_to_mat4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @trackto_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @trackto_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bTrackToConstraint, ptr %0, i64 0, i32 1
  store i32 1, ptr %2, align 8, !tbaa !133
  %3 = getelementptr inbounds %struct.bTrackToConstraint, ptr %0, i64 0, i32 2
  store i32 2, ptr %3, align 4, !tbaa !135
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @trackto_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !136
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bTrackToConstraint, ptr %8, i64 0, i32 5
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @trackto_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !136
  %17 = getelementptr inbounds %struct.bTrackToConstraint, ptr %9, i64 0, i32 5
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @trackto_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x [3 x float]], align 16
  %9 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = load ptr, ptr %2, align 8, !tbaa !86
  %12 = icmp eq ptr %11, null
  br i1 %12, label %204, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %204, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #17
  %18 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mat4_to_size(ptr noundef nonnull %7, ptr noundef nonnull %18) #17
  %19 = load float, ptr %7, align 4, !tbaa !56
  store float %19, ptr %18, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 1
  store float 0.000000e+00, ptr %20, align 4, !tbaa !56
  %21 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 2
  store float 0.000000e+00, ptr %21, align 8, !tbaa !56
  %22 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %22, align 8, !tbaa !56
  %23 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !56
  %25 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 1
  store float %24, ptr %25, align 4, !tbaa !56
  %26 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 2
  store float 0.000000e+00, ptr %26, align 8, !tbaa !56
  %27 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  store float 0.000000e+00, ptr %27, align 8, !tbaa !56
  %28 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 1
  store float 0.000000e+00, ptr %28, align 4, !tbaa !56
  %29 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !56
  %31 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 2
  store float %30, ptr %31, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 3
  %34 = load float, ptr %32, align 4, !tbaa !56
  %35 = load float, ptr %33, align 4, !tbaa !56
  %36 = fsub float %34, %35
  %37 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !56
  %39 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 3, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !56
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !56
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 3, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !56
  %46 = fsub float %43, %45
  %47 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 2
  %48 = getelementptr inbounds %struct.bTrackToConstraint, ptr %10, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !133
  %50 = trunc i32 %49 to i16
  %51 = getelementptr inbounds %struct.bTrackToConstraint, ptr %10, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !135
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds %struct.bTrackToConstraint, ptr %10, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %56 = fmul float %41, %41
  %57 = call float @llvm.fmuladd.f32(float %36, float %36, float %56)
  %58 = call float @llvm.fmuladd.f32(float %46, float %46, float %57)
  %59 = fcmp ogt float %58, 0x38AA95A5C0000000
  br i1 %59, label %60, label %69

60:                                               ; preds = %17
  %61 = call float @sqrtf(float noundef %58) #17
  %62 = fdiv float 1.000000e+00, %61
  %63 = fmul float %36, %62
  store float %63, ptr %4, align 4, !tbaa !56
  %64 = fmul float %41, %62
  %65 = getelementptr inbounds float, ptr %4, i64 1
  store float %64, ptr %65, align 4, !tbaa !56
  %66 = fmul float %46, %62
  %67 = getelementptr inbounds float, ptr %4, i64 2
  store float %66, ptr %67, align 4, !tbaa !56
  %68 = fcmp oeq float %61, 0.000000e+00
  br i1 %68, label %72, label %75

69:                                               ; preds = %17
  store float 0.000000e+00, ptr %4, align 4, !tbaa !56
  %70 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %70, align 4, !tbaa !56
  %71 = getelementptr inbounds float, ptr %4, i64 2
  store float 0.000000e+00, ptr %71, align 4, !tbaa !56
  br label %72

72:                                               ; preds = %69, %60
  store float 0.000000e+00, ptr %4, align 4, !tbaa !56
  %73 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0.000000e+00, ptr %73, align 4, !tbaa !56
  %74 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 1.000000e+00, ptr %74, align 4, !tbaa !56
  br label %75

75:                                               ; preds = %72, %60
  %76 = icmp sgt i16 %50, 2
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  %78 = add nsw i16 %50, -3
  br label %88

79:                                               ; preds = %75
  %80 = load float, ptr %4, align 4, !tbaa !56
  %81 = fneg float %80
  store float %81, ptr %4, align 4, !tbaa !56
  %82 = getelementptr inbounds float, ptr %4, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !56
  %84 = fneg float %83
  store float %84, ptr %82, align 4, !tbaa !56
  %85 = getelementptr inbounds float, ptr %4, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !56
  %87 = fneg float %86
  store float %87, ptr %85, align 4, !tbaa !56
  br label %88

88:                                               ; preds = %79, %77
  %89 = phi i16 [ %78, %77 ], [ %50, %79 ]
  %90 = and i32 %55, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load float, ptr %47, align 4, !tbaa !56
  store float %93, ptr %5, align 4, !tbaa !56
  %94 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 2, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !56
  %96 = getelementptr inbounds float, ptr %5, i64 1
  store float %95, ptr %96, align 4, !tbaa !56
  %97 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 2, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !56
  %99 = getelementptr inbounds float, ptr %5, i64 2
  store float %98, ptr %99, align 4, !tbaa !56
  br label %103

100:                                              ; preds = %88
  store float 0.000000e+00, ptr %5, align 4, !tbaa !56
  %101 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0.000000e+00, ptr %101, align 4, !tbaa !56
  %102 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 1.000000e+00, ptr %102, align 4, !tbaa !56
  br label %103

103:                                              ; preds = %100, %92
  call void @project_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %104 = load float, ptr %5, align 4, !tbaa !56
  %105 = load float, ptr %6, align 4, !tbaa !56
  %106 = fsub float %104, %105
  store float %106, ptr %6, align 4, !tbaa !56
  %107 = getelementptr inbounds float, ptr %5, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !56
  %109 = getelementptr inbounds float, ptr %6, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !56
  %111 = fsub float %108, %110
  store float %111, ptr %109, align 4, !tbaa !56
  %112 = getelementptr inbounds float, ptr %5, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !56
  %114 = getelementptr inbounds float, ptr %6, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !56
  %116 = fsub float %113, %115
  store float %116, ptr %114, align 4, !tbaa !56
  %117 = fmul float %111, %111
  %118 = call float @llvm.fmuladd.f32(float %106, float %106, float %117)
  %119 = call float @llvm.fmuladd.f32(float %116, float %116, float %118)
  %120 = fcmp ogt float %119, 0x38AA95A5C0000000
  br i1 %120, label %121, label %131

121:                                              ; preds = %103
  %122 = call float @sqrtf(float noundef %119) #17
  %123 = fdiv float 1.000000e+00, %122
  %124 = load float, ptr %6, align 4, !tbaa !56
  %125 = fmul float %124, %123
  store float %125, ptr %6, align 4, !tbaa !56
  %126 = load float, ptr %109, align 4, !tbaa !56
  %127 = fmul float %123, %126
  store float %127, ptr %109, align 4, !tbaa !56
  %128 = load float, ptr %114, align 4, !tbaa !56
  %129 = fmul float %123, %128
  %130 = fcmp oeq float %122, 0.000000e+00
  store float %129, ptr %114, align 4, !tbaa !56
  br i1 %130, label %132, label %133

131:                                              ; preds = %103
  store float 0.000000e+00, ptr %6, align 4, !tbaa !56
  store float 0.000000e+00, ptr %109, align 4, !tbaa !56
  store float 0.000000e+00, ptr %114, align 4, !tbaa !56
  br label %132

132:                                              ; preds = %131, %121
  store float 0.000000e+00, ptr %6, align 4, !tbaa !56
  store float 1.000000e+00, ptr %109, align 4, !tbaa !56
  store float 0.000000e+00, ptr %114, align 4, !tbaa !56
  br label %133

133:                                              ; preds = %132, %121
  %134 = load float, ptr %109, align 4, !tbaa !56
  %135 = getelementptr inbounds float, ptr %4, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !56
  %137 = load float, ptr %114, align 4, !tbaa !56
  %138 = getelementptr inbounds float, ptr %4, i64 1
  %139 = load float, ptr %138, align 4, !tbaa !56
  %140 = fneg float %137
  %141 = fmul float %139, %140
  %142 = call float @llvm.fmuladd.f32(float %134, float %136, float %141)
  %143 = load float, ptr %4, align 4, !tbaa !56
  %144 = load float, ptr %6, align 4, !tbaa !56
  %145 = fneg float %144
  %146 = fmul float %136, %145
  %147 = call float @llvm.fmuladd.f32(float %137, float %143, float %146)
  %148 = fneg float %134
  %149 = fmul float %143, %148
  %150 = call float @llvm.fmuladd.f32(float %144, float %139, float %149)
  %151 = fmul float %147, %147
  %152 = call float @llvm.fmuladd.f32(float %142, float %142, float %151)
  %153 = call float @llvm.fmuladd.f32(float %150, float %150, float %152)
  %154 = fcmp ogt float %153, 0x38AA95A5C0000000
  br i1 %154, label %155, label %161

155:                                              ; preds = %133
  %156 = call float @sqrtf(float noundef %153) #17
  %157 = fdiv float 1.000000e+00, %156
  %158 = fmul float %142, %157
  %159 = fmul float %147, %157
  %160 = fmul float %150, %157
  br label %161

161:                                              ; preds = %155, %133
  %162 = phi float [ %159, %155 ], [ 0.000000e+00, %133 ]
  %163 = phi float [ %158, %155 ], [ 0.000000e+00, %133 ]
  %164 = phi float [ %160, %155 ], [ 0.000000e+00, %133 ]
  %165 = icmp eq i16 %89, %53
  br i1 %165, label %202, label %166

166:                                              ; preds = %161
  %167 = shl i32 %52, 16
  %168 = ashr exact i32 %167, 16
  %169 = sext i16 %89 to i32
  %170 = add nsw i32 %168, %169
  %171 = sub nsw i32 3, %170
  %172 = sub nsw i32 %169, %168
  %173 = add nsw i32 %172, 2
  %174 = icmp ult i32 %173, 5
  br i1 %174, label %175, label %179

175:                                              ; preds = %166
  %176 = zext nneg i32 %173 to i64
  %177 = getelementptr inbounds [5 x float], ptr @switch.table.trackto_evaluate, i64 0, i64 %176
  %178 = load float, ptr %177, align 4
  br label %179

179:                                              ; preds = %166, %175
  %180 = phi float [ %178, %175 ], [ 0.000000e+00, %166 ]
  %181 = fmul float %163, %180
  %182 = sext i32 %171 to i64
  %183 = getelementptr inbounds [3 x float], ptr %8, i64 %182
  store float %181, ptr %183, align 4, !tbaa !56
  %184 = fmul float %162, %180
  %185 = getelementptr inbounds [3 x float], ptr %8, i64 %182, i64 1
  store float %184, ptr %185, align 4, !tbaa !56
  %186 = fmul float %164, %180
  %187 = getelementptr inbounds [3 x float], ptr %8, i64 %182, i64 2
  store float %186, ptr %187, align 4, !tbaa !56
  %188 = sext i16 %53 to i64
  %189 = getelementptr inbounds [3 x float], ptr %8, i64 %188
  %190 = load float, ptr %6, align 4, !tbaa !56
  store float %190, ptr %189, align 4, !tbaa !56
  %191 = load float, ptr %109, align 4, !tbaa !56
  %192 = getelementptr inbounds float, ptr %189, i64 1
  store float %191, ptr %192, align 4, !tbaa !56
  %193 = load float, ptr %114, align 4, !tbaa !56
  %194 = getelementptr inbounds float, ptr %189, i64 2
  store float %193, ptr %194, align 4, !tbaa !56
  %195 = sext i16 %89 to i64
  %196 = getelementptr inbounds [3 x float], ptr %8, i64 %195
  %197 = load float, ptr %4, align 4, !tbaa !56
  store float %197, ptr %196, align 4, !tbaa !56
  %198 = load float, ptr %138, align 4, !tbaa !56
  %199 = getelementptr inbounds float, ptr %196, i64 1
  store float %198, ptr %199, align 4, !tbaa !56
  %200 = load float, ptr %135, align 4, !tbaa !56
  %201 = getelementptr inbounds float, ptr %196, i64 2
  store float %200, ptr %201, align 4, !tbaa !56
  br label %203

202:                                              ; preds = %161
  call void @unit_m3(ptr noundef nonnull %8) #17
  br label %203

203:                                              ; preds = %179, %202
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @mul_m4_m3m4(ptr noundef nonnull %18, ptr noundef nonnull %8, ptr noundef nonnull %18) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  br label %204

204:                                              ; preds = %203, %13, %3
  ret void
}

declare void @mul_m4_m3m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @unit_m3(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @kinematic_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 6
  tail call void %1(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @kinematic_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bKinematicConstraint, ptr %0, i64 0, i32 9
  store float 1.000000e+00, ptr %2, align 4, !tbaa !138
  %3 = getelementptr inbounds %struct.bKinematicConstraint, ptr %0, i64 0, i32 10
  store float 1.000000e+00, ptr %3, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct.bKinematicConstraint, ptr %0, i64 0, i32 1
  store i16 500, ptr %4, align 8, !tbaa !141
  %5 = getelementptr inbounds %struct.bKinematicConstraint, ptr %0, i64 0, i32 14
  store float 1.000000e+00, ptr %5, align 4, !tbaa !142
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %0, i64 0, i32 2
  store i16 49, ptr %6, align 2, !tbaa !143
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @kinematic_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %95

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !144
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bKinematicConstraint, ptr %8, i64 0, i32 5
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %53 = tail call ptr %52(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %54 = getelementptr inbounds %struct.bKinematicConstraint, ptr %8, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !145
  %56 = getelementptr inbounds %struct.bConstraintTarget, ptr %53, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !99
  %57 = getelementptr inbounds %struct.bConstraintTarget, ptr %53, i64 0, i32 3
  %58 = getelementptr inbounds %struct.bKinematicConstraint, ptr %8, i64 0, i32 7
  %59 = tail call ptr @BLI_strncpy(ptr noundef nonnull %57, ptr noundef nonnull %58, i64 noundef 64) #17
  %60 = load i8, ptr %16, align 1, !tbaa !101
  %61 = zext i8 %60 to i16
  %62 = getelementptr inbounds %struct.bConstraintTarget, ptr %53, i64 0, i32 5
  store i16 %61, ptr %62, align 8, !tbaa !102
  %63 = getelementptr inbounds %struct.bConstraintTarget, ptr %53, i64 0, i32 6
  store i16 1, ptr %63, align 2, !tbaa !103
  %64 = load ptr, ptr %56, align 8, !tbaa !99
  %65 = icmp eq ptr %64, null
  br i1 %65, label %94, label %66

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 3
  %68 = load i16, ptr %67, align 8, !tbaa !104
  switch i16 %68, label %87 [
    i16 25, label %69
    i16 1, label %82
    i16 22, label %82
  ]

69:                                               ; preds = %66
  %70 = load i8, ptr %57, align 8, !tbaa !70
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 18
  %74 = load ptr, ptr %73, align 8, !tbaa !72
  %75 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %74, ptr noundef nonnull %57) #17
  %76 = getelementptr inbounds %struct.bConstraintTarget, ptr %53, i64 0, i32 7
  store i16 2, ptr %76, align 4, !tbaa !105
  %77 = icmp eq ptr %75, null
  br i1 %77, label %91, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.bPoseChannel, ptr %75, i64 0, i32 26
  %80 = load i16, ptr %79, align 4, !tbaa !45
  br label %91

81:                                               ; preds = %69
  switch i16 %68, label %87 [
    i16 1, label %82
    i16 22, label %82
  ]

82:                                               ; preds = %66, %66, %81, %81
  %83 = load i8, ptr %57, align 8, !tbaa !70
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.bConstraintTarget, ptr %53, i64 0, i32 7
  store i16 3, ptr %86, align 4, !tbaa !105
  br label %91

87:                                               ; preds = %66, %81, %82
  %88 = getelementptr inbounds %struct.bConstraintTarget, ptr %53, i64 0, i32 7
  store i16 1, ptr %88, align 4, !tbaa !105
  %89 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 83
  %90 = load i16, ptr %89, align 8, !tbaa !106
  br label %91

91:                                               ; preds = %78, %72, %85, %87
  %92 = phi i16 [ %90, %87 ], [ 1, %85 ], [ %80, %78 ], [ 1, %72 ]
  %93 = getelementptr inbounds %struct.bConstraintTarget, ptr %53, i64 0, i32 8
  store i16 %92, ptr %93, align 2, !tbaa !107
  br label %94

94:                                               ; preds = %91, %51
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %53) #17
  br label %95

95:                                               ; preds = %2, %94
  %96 = phi i32 [ 2, %94 ], [ 0, %2 ]
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal void @kinematic_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %43

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %10, align 8, !tbaa !146
  %14 = icmp eq i8 %2, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  store ptr %17, ptr %9, align 8, !tbaa !144
  %18 = getelementptr inbounds %struct.bKinematicConstraint, ptr %9, i64 0, i32 5
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef nonnull %19, i64 noundef 64) #17
  %21 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %22 = load i16, ptr %21, align 8, !tbaa !102
  %23 = trunc i16 %22 to i8
  %24 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %23, ptr %24, align 1, !tbaa !101
  br label %25

25:                                               ; preds = %15, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %26

26:                                               ; preds = %25, %7
  %27 = phi ptr [ %13, %25 ], [ null, %7 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = icmp eq i8 %2, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.bConstraintTarget, ptr %27, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !99
  %34 = getelementptr inbounds %struct.bKinematicConstraint, ptr %9, i64 0, i32 6
  store ptr %33, ptr %34, align 8, !tbaa !145
  %35 = getelementptr inbounds %struct.bKinematicConstraint, ptr %9, i64 0, i32 7
  %36 = getelementptr inbounds %struct.bConstraintTarget, ptr %27, i64 0, i32 3
  %37 = tail call ptr @BLI_strncpy(ptr noundef nonnull %35, ptr noundef nonnull %36, i64 noundef 64) #17
  %38 = getelementptr inbounds %struct.bConstraintTarget, ptr %27, i64 0, i32 5
  %39 = load i16, ptr %38, align 8, !tbaa !102
  %40 = trunc i16 %39 to i8
  %41 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %40, ptr %41, align 1, !tbaa !101
  br label %42

42:                                               ; preds = %31, %29
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %27) #17
  br label %43

43:                                               ; preds = %26, %42, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kinematic_get_tarmat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, float %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %2, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 3
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 5
  %17 = load i16, ptr %16, align 8, !tbaa !102
  %18 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 10
  %19 = load float, ptr %18, align 4, !tbaa !108
  tail call fastcc void @constraint_target_to_mat4(ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %15, i16 noundef signext %17, float noundef %19)
  br label %45

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.bKinematicConstraint, ptr %7, i64 0, i32 2
  %22 = load i16, ptr %21, align 2, !tbaa !143
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %30) #17
  br label %45

31:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %32 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47
  %33 = getelementptr inbounds %struct.bKinematicConstraint, ptr %7, i64 0, i32 11
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %32, ptr noundef nonnull %33) #17
  %34 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  call void @copy_m4_m4(ptr noundef nonnull %34, ptr noundef nonnull %32) #17
  %35 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4, i64 3
  %36 = load float, ptr %5, align 4, !tbaa !56
  store float %36, ptr %35, align 4, !tbaa !56
  %37 = getelementptr inbounds float, ptr %5, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !56
  %39 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4, i64 3, i64 1
  store float %38, ptr %39, align 4, !tbaa !56
  %40 = getelementptr inbounds float, ptr %5, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !56
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4, i64 3, i64 2
  store float %41, ptr %42, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  br label %45

43:                                               ; preds = %20
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %44) #17
  br label %45

45:                                               ; preds = %4, %29, %31, %43, %13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @followpath_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @followpath_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %0, i64 0, i32 4
  store i16 1, ptr %2, align 4, !tbaa !147
  %3 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %0, i64 0, i32 5
  store i16 2, ptr %3, align 2, !tbaa !149
  %4 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %0, i64 0, i32 1
  store float 0.000000e+00, ptr %4, align 8, !tbaa !150
  %5 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !151
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @followpath_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !152
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 1, !tbaa !101
  %15 = zext i8 %14 to i16
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %17, align 2, !tbaa !103
  %18 = icmp eq ptr %11, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %20, align 4, !tbaa !105
  br label %21

21:                                               ; preds = %19, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @followpath_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !152
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !102
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %19, ptr %20, align 1, !tbaa !101
  br label %21

21:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %22

22:                                               ; preds = %7, %21, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @followpath_get_tarmat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, float %3) #0 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %2, null
  br i1 %14, label %118, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %116, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !104
  %22 = icmp eq i16 %21, 2
  br i1 %22, label %23, label %116

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %26 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %26) #17
  %27 = load ptr, ptr %16, align 8, !tbaa !99
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 118
  %29 = load ptr, ptr %28, align 8, !tbaa !120
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load ptr, ptr %1, align 8, !tbaa !38
  tail call void @BKE_displist_make_curveTypes(ptr noundef %32, ptr noundef %27, i8 noundef zeroext 0) #17
  br label %33

33:                                               ; preds = %31, %23
  %34 = load ptr, ptr %16, align 8, !tbaa !99
  %35 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 118
  %36 = load ptr, ptr %35, align 8, !tbaa !120
  %37 = getelementptr inbounds %struct.CurveCache, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !153
  %39 = icmp eq ptr %38, null
  br i1 %39, label %115, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %38, align 8, !tbaa !155
  %42 = icmp eq ptr %41, null
  br i1 %42, label %115, label %43

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  %44 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %13, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !151
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.Curve, ptr %25, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !157
  %51 = getelementptr inbounds %struct.Curve, ptr %25, i64 0, i32 64
  %52 = load float, ptr %51, align 8, !tbaa !160
  %53 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %13, i64 0, i32 1
  %54 = load float, ptr %53, align 8, !tbaa !150
  %55 = fsub float %52, %54
  %56 = getelementptr inbounds %struct.Curve, ptr %25, i64 0, i32 20
  %57 = load i32, ptr %56, align 4, !tbaa !161
  %58 = sitofp i32 %57 to float
  %59 = fdiv float %55, %58
  %60 = icmp eq ptr %50, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.Nurb, ptr %50, i64 0, i32 13
  %63 = load i16, ptr %62, align 4, !tbaa !162
  %64 = and i16 %63, 1
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = fcmp olt float %59, 0.000000e+00
  %68 = fcmp ogt float %59, 1.000000e+00
  %69 = or i1 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = tail call float @llvm.floor.f32(float %59)
  %72 = fsub float %59, %71
  br label %81

73:                                               ; preds = %61, %48
  %74 = fcmp olt float %59, 0.000000e+00
  br i1 %74, label %81, label %75

75:                                               ; preds = %73
  %76 = fcmp ogt float %59, 1.000000e+00
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  br label %81

78:                                               ; preds = %43
  %79 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %13, i64 0, i32 2
  %80 = load float, ptr %79, align 4, !tbaa !164
  br label %81

81:                                               ; preds = %66, %70, %75, %77, %73, %78
  %82 = phi float [ %80, %78 ], [ %72, %70 ], [ %59, %66 ], [ 1.000000e+00, %77 ], [ %59, %75 ], [ 0.000000e+00, %73 ]
  %83 = and i32 %45, 1
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, ptr null, ptr %8
  %86 = call i32 @where_on_path(ptr noundef %34, float noundef %82, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %85, ptr noundef nonnull %7, ptr noundef null) #17
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %114, label %88

88:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #17
  call void @unit_m4(ptr noundef nonnull %9) #17
  %89 = load i32, ptr %44, align 8, !tbaa !151
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %13, i64 0, i32 4
  %94 = load i16, ptr %93, align 4, !tbaa !147
  %95 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %13, i64 0, i32 5
  %96 = load i16, ptr %95, align 2, !tbaa !149
  call void @quat_apply_track(ptr noundef nonnull %8, i16 noundef signext %94, i16 noundef signext %96) #17
  call void @quat_to_mat4(ptr noundef nonnull %9, ptr noundef nonnull %8) #17
  br label %97

97:                                               ; preds = %92, %88
  %98 = load i32, ptr %44, align 8, !tbaa !151
  %99 = and i32 %98, 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #17
  %102 = load float, ptr %7, align 4, !tbaa !56
  call void @scale_m4_fl(ptr noundef nonnull %10, float noundef %102) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %9) #17
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #17
  br label %103

103:                                              ; preds = %101, %97
  %104 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  %105 = load float, ptr %5, align 16, !tbaa !56
  store float %105, ptr %104, align 16, !tbaa !56
  %106 = getelementptr inbounds float, ptr %5, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !56
  %108 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3, i64 1
  store float %107, ptr %108, align 4, !tbaa !56
  %109 = getelementptr inbounds float, ptr %5, i64 2
  %110 = load float, ptr %109, align 8, !tbaa !56
  %111 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3, i64 2
  store float %110, ptr %111, align 8, !tbaa !56
  %112 = load ptr, ptr %16, align 8, !tbaa !99
  %113 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %26, ptr noundef nonnull %113, ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #17
  br label %114

114:                                              ; preds = %103, %81
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  br label %115

115:                                              ; preds = %114, %40, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  br label %118

116:                                              ; preds = %15, %19
  %117 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %117) #17
  br label %118

118:                                              ; preds = %4, %116, %115
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @followpath_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = load ptr, ptr %2, align 8, !tbaa !86
  %8 = icmp eq ptr %7, null
  br i1 %8, label %72, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = icmp eq ptr %11, null
  br i1 %12, label %72, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %14 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %16) #17
  call void @mat4_to_size(ptr noundef nonnull %5, ptr noundef nonnull %16) #17
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 4
  call void @mul_m4_m4m4(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %4) #17
  %18 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !151
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %71

22:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @mat4_to_size(ptr noundef nonnull %6, ptr noundef nonnull %16) #17
  %23 = load float, ptr %6, align 4, !tbaa !56
  %24 = fcmp une float %23, 0.000000e+00
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load float, ptr %5, align 4, !tbaa !56
  %27 = fdiv float %26, %23
  %28 = load float, ptr %16, align 4, !tbaa !56
  %29 = fmul float %28, %27
  store float %29, ptr %16, align 4, !tbaa !56
  %30 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !56
  %32 = fmul float %27, %31
  store float %32, ptr %30, align 4, !tbaa !56
  %33 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !56
  %35 = fmul float %27, %34
  store float %35, ptr %33, align 4, !tbaa !56
  br label %36

36:                                               ; preds = %25, %22
  %37 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !56
  %39 = fcmp une float %38, 0.000000e+00
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  %42 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !56
  %44 = fdiv float %43, %38
  %45 = load float, ptr %41, align 4, !tbaa !56
  %46 = fmul float %45, %44
  store float %46, ptr %41, align 4, !tbaa !56
  %47 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !56
  %49 = fmul float %44, %48
  store float %49, ptr %47, align 4, !tbaa !56
  %50 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !56
  %52 = fmul float %44, %51
  store float %52, ptr %50, align 4, !tbaa !56
  br label %53

53:                                               ; preds = %40, %36
  %54 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !56
  %56 = fcmp une float %55, 0.000000e+00
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  %59 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !56
  %61 = fdiv float %60, %55
  %62 = load float, ptr %58, align 4, !tbaa !56
  %63 = fmul float %62, %61
  store float %63, ptr %58, align 4, !tbaa !56
  %64 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !56
  %66 = fmul float %61, %65
  store float %66, ptr %64, align 4, !tbaa !56
  %67 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !56
  %69 = fmul float %61, %68
  store float %69, ptr %67, align 4, !tbaa !56
  br label %70

70:                                               ; preds = %57, %53
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  br label %71

71:                                               ; preds = %70, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %72

72:                                               ; preds = %71, %9, %3
  ret void
}

declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @quat_apply_track(ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @scale_m4_fl(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @rotlimit_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %9 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %10 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !56
  store float %11, ptr %4, align 4, !tbaa !56
  %12 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !56
  %14 = getelementptr inbounds float, ptr %4, i64 1
  store float %13, ptr %14, align 4, !tbaa !56
  %15 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !56
  %17 = getelementptr inbounds float, ptr %4, i64 2
  store float %16, ptr %17, align 4, !tbaa !56
  call void @mat4_to_size(ptr noundef nonnull %6, ptr noundef nonnull %9) #17
  %18 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 6
  %19 = load i16, ptr %18, align 2, !tbaa !43
  call void @mat4_to_eulO(ptr noundef nonnull %5, i16 noundef signext %19, ptr noundef nonnull %9) #17
  %20 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %8, i64 0, i32 6
  %21 = load i16, ptr %20, align 4, !tbaa !165
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %3
  %25 = load float, ptr %5, align 4, !tbaa !56
  %26 = load float, ptr %8, align 4, !tbaa !167
  %27 = fcmp olt float %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store float %26, ptr %5, align 4, !tbaa !56
  br label %29

29:                                               ; preds = %28, %24
  %30 = load float, ptr %5, align 4, !tbaa !56
  %31 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %8, i64 0, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !168
  %33 = fcmp ogt float %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store float %32, ptr %5, align 4, !tbaa !56
  br label %35

35:                                               ; preds = %29, %34, %3
  %36 = and i16 %21, 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !56
  %41 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %8, i64 0, i32 2
  %42 = load float, ptr %41, align 4, !tbaa !169
  %43 = fcmp olt float %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store float %42, ptr %39, align 4, !tbaa !56
  br label %45

45:                                               ; preds = %44, %38
  %46 = load float, ptr %39, align 4, !tbaa !56
  %47 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %8, i64 0, i32 3
  %48 = load float, ptr %47, align 4, !tbaa !170
  %49 = fcmp ogt float %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store float %48, ptr %39, align 4, !tbaa !56
  br label %51

51:                                               ; preds = %45, %50, %35
  %52 = and i16 %21, 4
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !56
  %57 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %8, i64 0, i32 4
  %58 = load float, ptr %57, align 4, !tbaa !171
  %59 = fcmp olt float %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store float %58, ptr %55, align 4, !tbaa !56
  br label %61

61:                                               ; preds = %60, %54
  %62 = load float, ptr %55, align 4, !tbaa !56
  %63 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %8, i64 0, i32 5
  %64 = load float, ptr %63, align 4, !tbaa !172
  %65 = fcmp ogt float %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store float %64, ptr %55, align 4, !tbaa !56
  br label %67

67:                                               ; preds = %61, %66, %51
  %68 = load i16, ptr %18, align 2, !tbaa !43
  call void @loc_eulO_size_to_mat4(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext %68) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @loclimit_evaluate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #5 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !173
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %12 = load float, ptr %11, align 8, !tbaa !56
  %13 = load float, ptr %5, align 4, !tbaa !175
  %14 = fcmp olt float %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store float %13, ptr %11, align 8, !tbaa !56
  br label %16

16:                                               ; preds = %10, %15, %3
  %17 = and i16 %7, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %21 = load float, ptr %20, align 8, !tbaa !56
  %22 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !176
  %24 = fcmp ogt float %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store float %23, ptr %20, align 8, !tbaa !56
  br label %26

26:                                               ; preds = %19, %25, %16
  %27 = and i16 %7, 4
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !56
  %32 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 2
  %33 = load float, ptr %32, align 4, !tbaa !177
  %34 = fcmp olt float %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store float %33, ptr %30, align 4, !tbaa !56
  br label %36

36:                                               ; preds = %29, %35, %26
  %37 = and i16 %7, 8
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !56
  %42 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !178
  %44 = fcmp ogt float %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store float %43, ptr %40, align 4, !tbaa !56
  br label %46

46:                                               ; preds = %39, %45, %36
  %47 = and i16 %7, 16
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %51 = load float, ptr %50, align 8, !tbaa !56
  %52 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 4
  %53 = load float, ptr %52, align 4, !tbaa !179
  %54 = fcmp olt float %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store float %53, ptr %50, align 8, !tbaa !56
  br label %56

56:                                               ; preds = %49, %55, %46
  %57 = and i16 %7, 32
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %61 = load float, ptr %60, align 8, !tbaa !56
  %62 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 5
  %63 = load float, ptr %62, align 4, !tbaa !180
  %64 = fcmp ogt float %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store float %63, ptr %60, align 8, !tbaa !56
  br label %66

66:                                               ; preds = %59, %65, %56
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sizelimit_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %8 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mat4_to_size(ptr noundef nonnull %5, ptr noundef nonnull %8) #17
  call void @mat4_to_size(ptr noundef nonnull %4, ptr noundef nonnull %8) #17
  %9 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %7, i64 0, i32 6
  %10 = load i16, ptr %9, align 4, !tbaa !181
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load float, ptr %5, align 4, !tbaa !56
  %15 = load float, ptr %7, align 4, !tbaa !183
  %16 = fcmp olt float %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store float %15, ptr %5, align 4, !tbaa !56
  br label %18

18:                                               ; preds = %13, %17, %3
  %19 = and i16 %10, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load float, ptr %5, align 4, !tbaa !56
  %23 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %7, i64 0, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !184
  %25 = fcmp ogt float %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store float %24, ptr %5, align 4, !tbaa !56
  br label %27

27:                                               ; preds = %21, %26, %18
  %28 = and i16 %10, 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !56
  %33 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %7, i64 0, i32 2
  %34 = load float, ptr %33, align 4, !tbaa !185
  %35 = fcmp olt float %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store float %34, ptr %31, align 4, !tbaa !56
  br label %37

37:                                               ; preds = %30, %36, %27
  %38 = and i16 %10, 8
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !56
  %43 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %7, i64 0, i32 3
  %44 = load float, ptr %43, align 4, !tbaa !186
  %45 = fcmp ogt float %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store float %44, ptr %41, align 4, !tbaa !56
  br label %47

47:                                               ; preds = %40, %46, %37
  %48 = and i16 %10, 16
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !56
  %53 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %7, i64 0, i32 4
  %54 = load float, ptr %53, align 4, !tbaa !187
  %55 = fcmp olt float %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store float %54, ptr %51, align 4, !tbaa !56
  br label %57

57:                                               ; preds = %50, %56, %47
  %58 = and i16 %10, 32
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !56
  %63 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %7, i64 0, i32 5
  %64 = load float, ptr %63, align 4, !tbaa !188
  %65 = fcmp ogt float %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store float %64, ptr %61, align 4, !tbaa !56
  br label %67

67:                                               ; preds = %60, %66, %57
  %68 = load float, ptr %4, align 4, !tbaa !56
  %69 = fcmp une float %68, 0.000000e+00
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load float, ptr %5, align 4, !tbaa !56
  %72 = fdiv float %71, %68
  %73 = load float, ptr %8, align 4, !tbaa !56
  %74 = fmul float %73, %72
  store float %74, ptr %8, align 4, !tbaa !56
  %75 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !56
  %77 = fmul float %72, %76
  store float %77, ptr %75, align 4, !tbaa !56
  %78 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !56
  %80 = fmul float %72, %79
  store float %80, ptr %78, align 4, !tbaa !56
  br label %81

81:                                               ; preds = %70, %67
  %82 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !56
  %84 = fcmp une float %83, 0.000000e+00
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  %87 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !56
  %89 = fdiv float %88, %83
  %90 = load float, ptr %86, align 4, !tbaa !56
  %91 = fmul float %90, %89
  store float %91, ptr %86, align 4, !tbaa !56
  %92 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !56
  %94 = fmul float %89, %93
  store float %94, ptr %92, align 4, !tbaa !56
  %95 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !56
  %97 = fmul float %89, %96
  store float %97, ptr %95, align 4, !tbaa !56
  br label %98

98:                                               ; preds = %85, %81
  %99 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !56
  %101 = fcmp une float %100, 0.000000e+00
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  %104 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !56
  %106 = fdiv float %105, %100
  %107 = load float, ptr %103, align 4, !tbaa !56
  %108 = fmul float %107, %106
  store float %108, ptr %103, align 4, !tbaa !56
  %109 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !56
  %111 = fmul float %106, %110
  store float %111, ptr %109, align 4, !tbaa !56
  %112 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !56
  %114 = fmul float %106, %113
  store float %114, ptr %112, align 4, !tbaa !56
  br label %115

115:                                              ; preds = %102, %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rotlike_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @rotlike_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %0, i64 0, i32 1
  store i32 7, ptr %2, align 8, !tbaa !189
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rotlike_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !191
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %8, i64 0, i32 3
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @rotlike_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !191
  %17 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %9, i64 0, i32 3
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rotlike_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %2, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %97, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = icmp eq ptr %14, null
  br i1 %15, label %97, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  %17 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %18 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !56
  store float %19, ptr %4, align 4, !tbaa !56
  %20 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !56
  %22 = getelementptr inbounds float, ptr %4, i64 1
  store float %21, ptr %22, align 4, !tbaa !56
  %23 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !56
  %25 = getelementptr inbounds float, ptr %4, i64 2
  store float %24, ptr %25, align 4, !tbaa !56
  call void @mat4_to_size(ptr noundef nonnull %7, ptr noundef nonnull %17) #17
  %26 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 6
  %27 = load i16, ptr %26, align 2, !tbaa !43
  call void @mat4_to_eulO(ptr noundef nonnull %6, i16 noundef signext %27, ptr noundef nonnull %17) #17
  %28 = load i16, ptr %26, align 2, !tbaa !43
  %29 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 4
  call void @mat4_to_compatible_eulO(ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext %28, ptr noundef nonnull %29) #17
  %30 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %9, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !189
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %16
  %35 = load float, ptr %6, align 4, !tbaa !56
  store float %35, ptr %5, align 4, !tbaa !56
  br label %49

36:                                               ; preds = %16
  %37 = and i32 %31, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i16, ptr %26, align 2, !tbaa !43
  %41 = load float, ptr %6, align 4, !tbaa !56
  call void @rotate_eulO(ptr noundef nonnull %5, i16 noundef signext %40, i8 noundef zeroext 88, float noundef %41) #17
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, ptr %30, align 8, !tbaa !189
  %44 = and i32 %43, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load float, ptr %5, align 4, !tbaa !56
  %48 = fneg float %47
  store float %48, ptr %5, align 4, !tbaa !56
  br label %49

49:                                               ; preds = %42, %46, %34
  %50 = load i32, ptr %30, align 8, !tbaa !189
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !56
  %56 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %55, ptr %56, align 4, !tbaa !56
  br label %72

57:                                               ; preds = %49
  %58 = and i32 %50, 128
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i16, ptr %26, align 2, !tbaa !43
  %62 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !56
  call void @rotate_eulO(ptr noundef nonnull %5, i16 noundef signext %61, i8 noundef zeroext 89, float noundef %63) #17
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, ptr %30, align 8, !tbaa !189
  %66 = and i32 %65, 32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !56
  %71 = fneg float %70
  store float %71, ptr %69, align 4, !tbaa !56
  br label %72

72:                                               ; preds = %64, %68, %53
  %73 = load i32, ptr %30, align 8, !tbaa !189
  %74 = and i32 %73, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !56
  %79 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %78, ptr %79, align 4, !tbaa !56
  br label %95

80:                                               ; preds = %72
  %81 = and i32 %73, 128
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = load i16, ptr %26, align 2, !tbaa !43
  %85 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !56
  call void @rotate_eulO(ptr noundef nonnull %5, i16 noundef signext %84, i8 noundef zeroext 90, float noundef %86) #17
  br label %87

87:                                               ; preds = %83, %80
  %88 = load i32, ptr %30, align 8, !tbaa !189
  %89 = and i32 %88, 64
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !56
  %94 = fneg float %93
  store float %94, ptr %92, align 4, !tbaa !56
  br label %95

95:                                               ; preds = %87, %91, %76
  call void @compatible_eul(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %96 = load i16, ptr %26, align 2, !tbaa !43
  call void @loc_eulO_size_to_mat4(ptr noundef nonnull %17, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, i16 noundef signext %96) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %97

97:                                               ; preds = %95, %12, %3
  ret void
}

declare void @mat4_to_compatible_eulO(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare void @rotate_eulO(ptr noundef, i16 noundef signext, i8 noundef zeroext, float noundef) local_unnamed_addr #1

declare void @compatible_eul(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @loclike_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @loclike_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %0, i64 0, i32 1
  store i32 7, ptr %2, align 8, !tbaa !192
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @loclike_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !194
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %8, i64 0, i32 3
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @loclike_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %9, i64 0, i32 3
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @loclike_evaluate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #5 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = load ptr, ptr %2, align 8, !tbaa !86
  %7 = icmp eq ptr %6, null
  br i1 %7, label %63, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bConstraintTarget, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = icmp eq ptr %10, null
  br i1 %11, label %63, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %5, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !192
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !56
  %20 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !56
  %22 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !56
  br label %24

24:                                               ; preds = %17, %12
  %25 = phi float [ 0.000000e+00, %12 ], [ %19, %17 ]
  %26 = phi float [ 0.000000e+00, %12 ], [ %21, %17 ]
  %27 = phi float [ 0.000000e+00, %12 ], [ %23, %17 ]
  %28 = and i32 %14, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.bConstraintTarget, ptr %6, i64 0, i32 4, i64 3
  %32 = load float, ptr %31, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %34 = and i32 %14, 16
  %35 = icmp eq i32 %34, 0
  %36 = fneg float %32
  %37 = select i1 %35, float %32, float %36
  %38 = fadd float %25, %37
  store float %38, ptr %33, align 8, !tbaa !56
  br label %39

39:                                               ; preds = %30, %24
  %40 = and i32 %14, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %6, i64 0, i32 4, i64 3, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !56
  %45 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %46 = and i32 %14, 32
  %47 = icmp eq i32 %46, 0
  %48 = fneg float %44
  %49 = select i1 %47, float %44, float %48
  %50 = fadd float %26, %49
  store float %50, ptr %45, align 4, !tbaa !56
  br label %51

51:                                               ; preds = %42, %39
  %52 = and i32 %14, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.bConstraintTarget, ptr %6, i64 0, i32 4, i64 3, i64 2
  %56 = load float, ptr %55, align 8, !tbaa !56
  %57 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %58 = and i32 %14, 64
  %59 = icmp eq i32 %58, 0
  %60 = fneg float %56
  %61 = select i1 %59, float %56, float %60
  %62 = fadd float %27, %61
  store float %62, ptr %57, align 8, !tbaa !56
  br label %63

63:                                               ; preds = %51, %54, %8, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sizelike_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @sizelike_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %0, i64 0, i32 1
  store i32 7, ptr %2, align 8, !tbaa !195
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sizelike_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !197
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %8, i64 0, i32 3
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @sizelike_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !197
  %17 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %9, i64 0, i32 3
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sizelike_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = load ptr, ptr %2, align 8, !tbaa !86
  %9 = icmp eq ptr %8, null
  br i1 %9, label %99, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bConstraintTarget, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = icmp eq ptr %12, null
  br i1 %13, label %99, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %8, i64 0, i32 4
  call void @mat4_to_size(ptr noundef nonnull %5, ptr noundef nonnull %15) #17
  %16 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mat4_to_size(ptr noundef nonnull %4, ptr noundef nonnull %16) #17
  %17 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %7, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !195
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  %21 = load float, ptr %4, align 4
  %22 = fcmp une float %21, 0.000000e+00
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %44

24:                                               ; preds = %14
  %25 = and i32 %18, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = fadd float %21, -1.000000e+00
  %29 = load float, ptr %5, align 4, !tbaa !56
  %30 = fadd float %28, %29
  store float %30, ptr %5, align 4, !tbaa !56
  br label %33

31:                                               ; preds = %24
  %32 = load float, ptr %5, align 4, !tbaa !56
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi float [ %32, %31 ], [ %30, %27 ]
  %35 = fdiv float %34, %21
  %36 = load float, ptr %16, align 4, !tbaa !56
  %37 = fmul float %36, %35
  store float %37, ptr %16, align 4, !tbaa !56
  %38 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !56
  %40 = fmul float %35, %39
  store float %40, ptr %38, align 4, !tbaa !56
  %41 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !56
  %43 = fmul float %35, %42
  store float %43, ptr %41, align 4, !tbaa !56
  br label %44

44:                                               ; preds = %33, %14
  %45 = and i32 %18, 2
  %46 = icmp ne i32 %45, 0
  %47 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %48 = load float, ptr %47, align 4
  %49 = fcmp une float %48, 0.000000e+00
  %50 = select i1 %46, i1 %49, i1 false
  br i1 %50, label %51, label %71

51:                                               ; preds = %44
  %52 = and i32 %18, 8
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !56
  br i1 %53, label %59, label %56

56:                                               ; preds = %51
  %57 = fadd float %48, -1.000000e+00
  %58 = fadd float %57, %55
  store float %58, ptr %54, align 4, !tbaa !56
  br label %59

59:                                               ; preds = %51, %56
  %60 = phi float [ %58, %56 ], [ %55, %51 ]
  %61 = fdiv float %60, %48
  %62 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !56
  %64 = fmul float %63, %61
  store float %64, ptr %62, align 4, !tbaa !56
  %65 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !56
  %67 = fmul float %61, %66
  store float %67, ptr %65, align 4, !tbaa !56
  %68 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !56
  %70 = fmul float %61, %69
  store float %70, ptr %68, align 4, !tbaa !56
  br label %71

71:                                               ; preds = %59, %44
  %72 = and i32 %18, 4
  %73 = icmp ne i32 %72, 0
  %74 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %75 = load float, ptr %74, align 4
  %76 = fcmp une float %75, 0.000000e+00
  %77 = select i1 %73, i1 %76, i1 false
  br i1 %77, label %78, label %98

78:                                               ; preds = %71
  %79 = and i32 %18, 8
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !56
  br i1 %80, label %86, label %83

83:                                               ; preds = %78
  %84 = fadd float %75, -1.000000e+00
  %85 = fadd float %84, %82
  store float %85, ptr %81, align 4, !tbaa !56
  br label %86

86:                                               ; preds = %78, %83
  %87 = phi float [ %85, %83 ], [ %82, %78 ]
  %88 = fdiv float %87, %75
  %89 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !56
  %91 = fmul float %90, %88
  store float %91, ptr %89, align 4, !tbaa !56
  %92 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !56
  %94 = fmul float %88, %93
  store float %94, ptr %92, align 4, !tbaa !56
  %95 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !56
  %97 = fmul float %88, %96
  store float %97, ptr %95, align 4, !tbaa !56
  br label %98

98:                                               ; preds = %86, %71
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %99

99:                                               ; preds = %98, %10, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pycon_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.bPythonConstraint, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !198
  tail call void @IDP_FreeProperty(ptr noundef %5) #17
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %7 = load ptr, ptr %4, align 8, !tbaa !198
  tail call void %6(ptr noundef %7) #17
  %8 = getelementptr inbounds %struct.bPythonConstraint, ptr %3, i64 0, i32 4
  tail call void @BLI_freelistN(ptr noundef nonnull %8) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pycon_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.bPythonConstraint, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  tail call void %1(ptr noundef %0, ptr noundef nonnull %11, i8 noundef zeroext 0, ptr noundef %2) #17
  %12 = load ptr, ptr %10, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !200

14:                                               ; preds = %9, %3
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 1, ptr noundef %2) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pycon_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.bConstraint, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.bPythonConstraint, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !198
  %9 = tail call ptr @IDP_CopyProperty(ptr noundef %8) #17
  %10 = getelementptr inbounds %struct.bPythonConstraint, ptr %4, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !198
  %11 = getelementptr inbounds %struct.bPythonConstraint, ptr %4, i64 0, i32 4
  %12 = getelementptr inbounds %struct.bPythonConstraint, ptr %6, i64 0, i32 4
  tail call void @BLI_duplicatelist(ptr noundef nonnull %11, ptr noundef nonnull %12) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pycon_new_data(ptr nocapture noundef writeonly %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 128, ptr noundef nonnull @.str.5) #17
  %4 = getelementptr inbounds %struct.bPythonConstraint, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !198
  %5 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 2
  store i8 6, ptr %5, align 8, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @pycon_get_tars(ptr noundef readonly %0, ptr noundef writeonly %1) #5 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.bPythonConstraint, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !204
  store ptr %10, ptr %1, align 8, !tbaa !86
  %11 = getelementptr inbounds %struct.bPythonConstraint, ptr %8, i64 0, i32 4, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !205
  %13 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !206
  %14 = getelementptr inbounds %struct.bPythonConstraint, ptr %8, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !207
  br label %16

16:                                               ; preds = %2, %6
  %17 = phi i32 [ %15, %6 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @pycon_get_tarmat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, float %3) #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !104
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 118
  %16 = load ptr, ptr %15, align 8, !tbaa !120
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr %1, align 8, !tbaa !38
  tail call void @BKE_displist_make_curveTypes(ptr noundef %19, ptr noundef nonnull %8, i8 noundef zeroext 0) #17
  br label %20

20:                                               ; preds = %14, %18, %10
  %21 = load ptr, ptr %7, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 3
  %23 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  %24 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 5
  %25 = load i16, ptr %24, align 8, !tbaa !102
  %26 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 10
  %27 = load float, ptr %26, align 4, !tbaa !108
  tail call fastcc void @constraint_target_to_mat4(ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %23, i16 noundef signext %25, float noundef %27)
  br label %30

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %29) #17
  br label %30

30:                                               ; preds = %4, %28, %20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @pycon_evaluate(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #14 {
  ret void
}

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #1

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @actcon_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  %6 = getelementptr inbounds %struct.bActionConstraint, ptr %5, i64 0, i32 8
  tail call void %1(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @actcon_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bActionConstraint, ptr %0, i64 0, i32 1
  store i16 20, ptr %2, align 8, !tbaa !208
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @actcon_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !210
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bActionConstraint, ptr %8, i64 0, i32 9
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @actcon_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !210
  %17 = getelementptr inbounds %struct.bActionConstraint, ptr %9, i64 0, i32 9
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @actcon_get_tarmat(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, float %3) #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.Object, align 8
  %8 = alloca %struct.Object, align 8
  %9 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq ptr %2, null
  br i1 %11, label %126, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = icmp eq ptr %14, null
  br i1 %15, label %126, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %17) #17
  %18 = load ptr, ptr %13, align 8, !tbaa !99
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 3
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 10
  %23 = load float, ptr %22, align 4, !tbaa !108
  call fastcc void @constraint_target_to_mat4(ptr noundef %18, ptr noundef nonnull %19, ptr noundef nonnull %5, i16 noundef signext %21, float noundef %23)
  %24 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 1
  %25 = load i16, ptr %24, align 8, !tbaa !208
  %26 = icmp slt i16 %25, 10
  br i1 %26, label %27, label %37

27:                                               ; preds = %16
  call void @mat4_to_eul(ptr noundef nonnull %6, ptr noundef nonnull %5) #17
  %28 = load float, ptr %6, align 4, !tbaa !56
  %29 = fmul float %28, 0x404CA5DC20000000
  store float %29, ptr %6, align 4, !tbaa !56
  %30 = getelementptr inbounds float, ptr %6, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !56
  %32 = fmul float %31, 0x404CA5DC20000000
  store float %32, ptr %30, align 4, !tbaa !56
  %33 = getelementptr inbounds float, ptr %6, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !56
  %35 = fmul float %34, 0x404CA5DC20000000
  store float %35, ptr %33, align 4, !tbaa !56
  %36 = load i16, ptr %24, align 8, !tbaa !208
  br label %52

37:                                               ; preds = %16
  %38 = icmp slt i16 %25, 20
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  call void @mat4_to_size(ptr noundef nonnull %6, ptr noundef nonnull %5) #17
  %40 = load i16, ptr %24, align 8, !tbaa !208
  %41 = add i16 %40, -10
  br label %52

42:                                               ; preds = %37
  %43 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  %44 = load float, ptr %43, align 16, !tbaa !56
  store float %44, ptr %6, align 4, !tbaa !56
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !56
  %47 = getelementptr inbounds float, ptr %6, i64 1
  store float %46, ptr %47, align 4, !tbaa !56
  %48 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3, i64 2
  %49 = load float, ptr %48, align 8, !tbaa !56
  %50 = getelementptr inbounds float, ptr %6, i64 2
  store float %49, ptr %50, align 4, !tbaa !56
  %51 = add nsw i16 %25, -20
  br label %52

52:                                               ; preds = %39, %42, %27
  %53 = phi i16 [ %36, %27 ], [ %41, %39 ], [ %51, %42 ]
  %54 = sext i16 %53 to i64
  %55 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %54
  %56 = load float, ptr %55, align 4, !tbaa !56
  %57 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 5
  %58 = load float, ptr %57, align 4, !tbaa !211
  %59 = fsub float %56, %58
  %60 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 6
  %61 = load float, ptr %60, align 8, !tbaa !212
  %62 = fsub float %61, %58
  %63 = fdiv float %59, %62
  %64 = fcmp olt float %63, 0.000000e+00
  br i1 %64, label %68, label %65

65:                                               ; preds = %52
  %66 = fcmp ogt float %63, 1.000000e+00
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %52, %65, %67
  %69 = phi float [ 1.000000e+00, %67 ], [ %63, %65 ], [ 0.000000e+00, %52 ]
  %70 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 4
  %71 = load i32, ptr %70, align 8, !tbaa !213
  %72 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 3
  %73 = load i32, ptr %72, align 4, !tbaa !214
  %74 = sub nsw i32 %71, %73
  %75 = sitofp i32 %74 to float
  %76 = sitofp i32 %73 to float
  %77 = call float @llvm.fmuladd.f32(float %69, float %75, float %76)
  %78 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !215
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %68
  %82 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 7
  %83 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !41
  %85 = getelementptr inbounds %struct.ID, ptr %84, i64 0, i32 4, i64 2
  %86 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !44
  %88 = icmp eq ptr %87, null
  %89 = getelementptr inbounds %struct.bPoseChannel, ptr %87, i64 0, i32 4
  %90 = select i1 %88, ptr null, ptr %89
  %91 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %82, ptr noundef nonnull %85, ptr noundef %90)
  br label %92

92:                                               ; preds = %81, %68
  %93 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 5
  %94 = load i16, ptr %93, align 8, !tbaa !42
  %95 = icmp eq i16 %94, 1
  br i1 %95, label %101, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 7
  %98 = load i32, ptr %97, align 4, !tbaa !217
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96, %92
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %7) #17
  %102 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !41
  %104 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 8
  %105 = load ptr, ptr %104, align 8, !tbaa !218
  call void @what_does_obaction(ptr noundef %103, ptr noundef nonnull %7, ptr noundef null, ptr noundef %105, ptr noundef null, float noundef %77) #17
  call void @BKE_object_to_mat4(ptr noundef nonnull %7, ptr noundef nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %7) #17
  br label %125

106:                                              ; preds = %96
  %107 = icmp eq i16 %94, 2
  br i1 %107, label %108, label %123

108:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %8) #17
  %109 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %110 = call ptr %109(i64 noundef 216, ptr noundef nonnull @.str.7) #17
  %111 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !44
  %113 = getelementptr inbounds %struct.bPoseChannel, ptr %112, i64 0, i32 4
  %114 = call ptr @BKE_pose_channel_verify(ptr noundef %110, ptr noundef nonnull %113) #17
  %115 = getelementptr inbounds %struct.bPoseChannel, ptr %112, i64 0, i32 26
  %116 = load i16, ptr %115, align 4, !tbaa !45
  %117 = getelementptr inbounds %struct.bPoseChannel, ptr %114, i64 0, i32 26
  store i16 %116, ptr %117, align 4, !tbaa !45
  %118 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !41
  %120 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 8
  %121 = load ptr, ptr %120, align 8, !tbaa !218
  call void @what_does_obaction(ptr noundef %119, ptr noundef nonnull %8, ptr noundef %110, ptr noundef %121, ptr noundef nonnull %113, float noundef %77) #17
  call void @BKE_pchan_calc_mat(ptr noundef %114) #17
  %122 = getelementptr inbounds %struct.bPoseChannel, ptr %114, i64 0, i32 28
  call void @copy_m4_m4(ptr noundef nonnull %17, ptr noundef nonnull %122) #17
  call void @BKE_pose_free(ptr noundef %110) #17
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %8) #17
  br label %125

123:                                              ; preds = %106
  %124 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8)
  br label %125

125:                                              ; preds = %108, %123, %101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  br label %126

126:                                              ; preds = %125, %12, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @actcon_evaluate(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = load ptr, ptr %2, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraintTarget, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %12 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %12) #17
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %5, i64 0, i32 4
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %14

14:                                               ; preds = %11, %7, %3
  ret void
}

declare void @mat4_to_eul(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @what_does_obaction(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare ptr @BKE_pose_channel_verify(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_pchan_calc_mat(ptr noundef) local_unnamed_addr #1

declare void @BKE_pose_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @locktrack_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @locktrack_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %0, i64 0, i32 1
  store i32 1, ptr %2, align 8, !tbaa !219
  %3 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %0, i64 0, i32 2
  store i32 2, ptr %3, align 4, !tbaa !221
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @locktrack_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !222
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %8, i64 0, i32 3
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @locktrack_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !222
  %17 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %9, i64 0, i32 3
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @locktrack_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = load ptr, ptr %2, align 8, !tbaa !86
  %12 = icmp eq ptr %11, null
  br i1 %12, label %996, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %996, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #17
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 3
  %19 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %20 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %21 = load float, ptr %18, align 4, !tbaa !56
  %22 = load float, ptr %20, align 4, !tbaa !56
  %23 = fsub float %21, %22
  store float %23, ptr %4, align 4, !tbaa !56
  %24 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 3, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !56
  %26 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !56
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds float, ptr %4, i64 1
  store float %28, ptr %29, align 4, !tbaa !56
  %30 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 3, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !56
  %32 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !56
  %34 = fsub float %31, %33
  %35 = getelementptr inbounds float, ptr %4, i64 2
  store float %34, ptr %35, align 4, !tbaa !56
  %36 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %10, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !221
  switch i32 %37, label %964 [
    i32 0, label %38
    i32 1, label %344
    i32 2, label %654
  ]

38:                                               ; preds = %17
  %39 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %10, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !219
  switch i32 %40, label %343 [
    i32 1, label %41
    i32 2, label %114
    i32 4, label %187
    i32 5, label %265
  ]

41:                                               ; preds = %38
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %19) #17
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %43 = load float, ptr %4, align 4, !tbaa !56
  %44 = load float, ptr %5, align 4, !tbaa !56
  %45 = fsub float %43, %44
  store float %45, ptr %42, align 4, !tbaa !56
  %46 = load float, ptr %29, align 4, !tbaa !56
  %47 = getelementptr inbounds float, ptr %5, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !56
  %49 = fsub float %46, %48
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %49, ptr %50, align 16, !tbaa !56
  %51 = load float, ptr %35, align 4, !tbaa !56
  %52 = getelementptr inbounds float, ptr %5, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !56
  %54 = fsub float %51, %53
  %55 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %54, ptr %55, align 4, !tbaa !56
  %56 = fmul float %49, %49
  %57 = call float @llvm.fmuladd.f32(float %45, float %45, float %56)
  %58 = call float @llvm.fmuladd.f32(float %54, float %54, float %57)
  %59 = fcmp ogt float %58, 0x38AA95A5C0000000
  br i1 %59, label %60, label %69

60:                                               ; preds = %41
  %61 = call float @sqrtf(float noundef %58) #17
  %62 = fdiv float 1.000000e+00, %61
  %63 = load float, ptr %42, align 4, !tbaa !56
  %64 = fmul float %63, %62
  store float %64, ptr %42, align 4, !tbaa !56
  %65 = load float, ptr %50, align 16, !tbaa !56
  %66 = fmul float %62, %65
  store float %66, ptr %50, align 16, !tbaa !56
  %67 = load float, ptr %55, align 4, !tbaa !56
  %68 = fmul float %62, %67
  br label %70

69:                                               ; preds = %41
  store float 0.000000e+00, ptr %42, align 4, !tbaa !56
  store float 0.000000e+00, ptr %50, align 16, !tbaa !56
  br label %70

70:                                               ; preds = %60, %69
  %71 = phi float [ 0.000000e+00, %69 ], [ %68, %60 ]
  store float %71, ptr %55, align 4, !tbaa !56
  %72 = load float, ptr %19, align 4, !tbaa !56
  %73 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !56
  %75 = fmul float %74, %74
  %76 = call float @llvm.fmuladd.f32(float %72, float %72, float %75)
  %77 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !56
  %79 = call float @llvm.fmuladd.f32(float %78, float %78, float %76)
  %80 = fcmp ogt float %79, 0x38AA95A5C0000000
  br i1 %80, label %81, label %91

81:                                               ; preds = %70
  %82 = call float @sqrtf(float noundef %79) #17
  %83 = fdiv float 1.000000e+00, %82
  %84 = load float, ptr %19, align 4, !tbaa !56
  %85 = fmul float %84, %83
  store float %85, ptr %6, align 16, !tbaa !56
  %86 = load float, ptr %73, align 4, !tbaa !56
  %87 = fmul float %83, %86
  %88 = getelementptr inbounds float, ptr %6, i64 1
  store float %87, ptr %88, align 4, !tbaa !56
  %89 = load float, ptr %77, align 4, !tbaa !56
  %90 = fmul float %83, %89
  br label %93

91:                                               ; preds = %70
  store float 0.000000e+00, ptr %6, align 16, !tbaa !56
  %92 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %92, align 4, !tbaa !56
  br label %93

93:                                               ; preds = %81, %91
  %94 = phi float [ %90, %81 ], [ 0.000000e+00, %91 ]
  %95 = getelementptr inbounds float, ptr %6, i64 2
  store float %94, ptr %95, align 8, !tbaa !56
  %96 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %97 = getelementptr inbounds float, ptr %6, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !56
  %99 = load float, ptr %55, align 4, !tbaa !56
  %100 = load float, ptr %50, align 16, !tbaa !56
  %101 = fneg float %94
  %102 = fmul float %100, %101
  %103 = call float @llvm.fmuladd.f32(float %98, float %99, float %102)
  store float %103, ptr %96, align 8, !tbaa !56
  %104 = load float, ptr %42, align 4, !tbaa !56
  %105 = load float, ptr %6, align 16, !tbaa !56
  %106 = fneg float %105
  %107 = fmul float %99, %106
  %108 = call float @llvm.fmuladd.f32(float %94, float %104, float %107)
  %109 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %108, ptr %109, align 4, !tbaa !56
  %110 = fneg float %98
  %111 = fmul float %104, %110
  %112 = call float @llvm.fmuladd.f32(float %105, float %100, float %111)
  %113 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %112, ptr %113, align 16, !tbaa !56
  br label %965

114:                                              ; preds = %38
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %19) #17
  %115 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %116 = load float, ptr %4, align 4, !tbaa !56
  %117 = load float, ptr %5, align 4, !tbaa !56
  %118 = fsub float %116, %117
  store float %118, ptr %115, align 8, !tbaa !56
  %119 = load float, ptr %29, align 4, !tbaa !56
  %120 = getelementptr inbounds float, ptr %5, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !56
  %122 = fsub float %119, %121
  %123 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %122, ptr %123, align 4, !tbaa !56
  %124 = load float, ptr %35, align 4, !tbaa !56
  %125 = getelementptr inbounds float, ptr %5, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !56
  %127 = fsub float %124, %126
  %128 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %127, ptr %128, align 16, !tbaa !56
  %129 = fmul float %122, %122
  %130 = call float @llvm.fmuladd.f32(float %118, float %118, float %129)
  %131 = call float @llvm.fmuladd.f32(float %127, float %127, float %130)
  %132 = fcmp ogt float %131, 0x38AA95A5C0000000
  br i1 %132, label %133, label %142

133:                                              ; preds = %114
  %134 = call float @sqrtf(float noundef %131) #17
  %135 = fdiv float 1.000000e+00, %134
  %136 = load float, ptr %115, align 8, !tbaa !56
  %137 = fmul float %136, %135
  store float %137, ptr %115, align 8, !tbaa !56
  %138 = load float, ptr %123, align 4, !tbaa !56
  %139 = fmul float %135, %138
  store float %139, ptr %123, align 4, !tbaa !56
  %140 = load float, ptr %128, align 16, !tbaa !56
  %141 = fmul float %135, %140
  br label %143

142:                                              ; preds = %114
  store float 0.000000e+00, ptr %115, align 8, !tbaa !56
  store float 0.000000e+00, ptr %123, align 4, !tbaa !56
  br label %143

143:                                              ; preds = %133, %142
  %144 = phi float [ 0.000000e+00, %142 ], [ %141, %133 ]
  store float %144, ptr %128, align 16, !tbaa !56
  %145 = load float, ptr %19, align 4, !tbaa !56
  %146 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !56
  %148 = fmul float %147, %147
  %149 = call float @llvm.fmuladd.f32(float %145, float %145, float %148)
  %150 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 2
  %151 = load float, ptr %150, align 4, !tbaa !56
  %152 = call float @llvm.fmuladd.f32(float %151, float %151, float %149)
  %153 = fcmp ogt float %152, 0x38AA95A5C0000000
  br i1 %153, label %154, label %164

154:                                              ; preds = %143
  %155 = call float @sqrtf(float noundef %152) #17
  %156 = fdiv float 1.000000e+00, %155
  %157 = load float, ptr %19, align 4, !tbaa !56
  %158 = fmul float %157, %156
  store float %158, ptr %6, align 16, !tbaa !56
  %159 = load float, ptr %146, align 4, !tbaa !56
  %160 = fmul float %156, %159
  %161 = getelementptr inbounds float, ptr %6, i64 1
  store float %160, ptr %161, align 4, !tbaa !56
  %162 = load float, ptr %150, align 4, !tbaa !56
  %163 = fmul float %156, %162
  br label %166

164:                                              ; preds = %143
  store float 0.000000e+00, ptr %6, align 16, !tbaa !56
  %165 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %165, align 4, !tbaa !56
  br label %166

166:                                              ; preds = %154, %164
  %167 = phi float [ %163, %154 ], [ 0.000000e+00, %164 ]
  %168 = getelementptr inbounds float, ptr %6, i64 2
  store float %167, ptr %168, align 8, !tbaa !56
  %169 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %170 = load float, ptr %123, align 4, !tbaa !56
  %171 = load float, ptr %128, align 16, !tbaa !56
  %172 = getelementptr inbounds float, ptr %6, i64 1
  %173 = load float, ptr %172, align 4, !tbaa !56
  %174 = fneg float %171
  %175 = fmul float %173, %174
  %176 = call float @llvm.fmuladd.f32(float %170, float %167, float %175)
  store float %176, ptr %169, align 4, !tbaa !56
  %177 = load float, ptr %6, align 16, !tbaa !56
  %178 = load float, ptr %115, align 8, !tbaa !56
  %179 = fneg float %178
  %180 = fmul float %167, %179
  %181 = call float @llvm.fmuladd.f32(float %171, float %177, float %180)
  %182 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %181, ptr %182, align 16, !tbaa !56
  %183 = fneg float %170
  %184 = fmul float %177, %183
  %185 = call float @llvm.fmuladd.f32(float %178, float %173, float %184)
  %186 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %185, ptr %186, align 4, !tbaa !56
  br label %965

187:                                              ; preds = %38
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %19) #17
  %188 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %189 = load float, ptr %4, align 4, !tbaa !56
  %190 = load float, ptr %5, align 4, !tbaa !56
  %191 = fsub float %189, %190
  store float %191, ptr %188, align 4, !tbaa !56
  %192 = load float, ptr %29, align 4, !tbaa !56
  %193 = getelementptr inbounds float, ptr %5, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !56
  %195 = fsub float %192, %194
  %196 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %195, ptr %196, align 16, !tbaa !56
  %197 = load float, ptr %35, align 4, !tbaa !56
  %198 = getelementptr inbounds float, ptr %5, i64 2
  %199 = load float, ptr %198, align 4, !tbaa !56
  %200 = fsub float %197, %199
  %201 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %200, ptr %201, align 4, !tbaa !56
  %202 = fmul float %195, %195
  %203 = call float @llvm.fmuladd.f32(float %191, float %191, float %202)
  %204 = call float @llvm.fmuladd.f32(float %200, float %200, float %203)
  %205 = fcmp ogt float %204, 0x38AA95A5C0000000
  br i1 %205, label %206, label %215

206:                                              ; preds = %187
  %207 = call float @sqrtf(float noundef %204) #17
  %208 = fdiv float 1.000000e+00, %207
  %209 = load float, ptr %188, align 4, !tbaa !56
  %210 = fmul float %209, %208
  store float %210, ptr %188, align 4, !tbaa !56
  %211 = load float, ptr %196, align 16, !tbaa !56
  %212 = fmul float %208, %211
  store float %212, ptr %196, align 16, !tbaa !56
  %213 = load float, ptr %201, align 4, !tbaa !56
  %214 = fmul float %208, %213
  br label %216

215:                                              ; preds = %187
  store float 0.000000e+00, ptr %188, align 4, !tbaa !56
  store float 0.000000e+00, ptr %196, align 16, !tbaa !56
  br label %216

216:                                              ; preds = %206, %215
  %217 = phi float [ 0.000000e+00, %215 ], [ %214, %206 ]
  store float %217, ptr %201, align 4, !tbaa !56
  %218 = load float, ptr %188, align 4, !tbaa !56
  %219 = fneg float %218
  store float %219, ptr %188, align 4, !tbaa !56
  %220 = load float, ptr %196, align 16, !tbaa !56
  %221 = fneg float %220
  store float %221, ptr %196, align 16, !tbaa !56
  %222 = fneg float %217
  store float %222, ptr %201, align 4, !tbaa !56
  %223 = load float, ptr %19, align 4, !tbaa !56
  %224 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 1
  %225 = load float, ptr %224, align 4, !tbaa !56
  %226 = fmul float %225, %225
  %227 = call float @llvm.fmuladd.f32(float %223, float %223, float %226)
  %228 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 2
  %229 = load float, ptr %228, align 4, !tbaa !56
  %230 = call float @llvm.fmuladd.f32(float %229, float %229, float %227)
  %231 = fcmp ogt float %230, 0x38AA95A5C0000000
  br i1 %231, label %232, label %242

232:                                              ; preds = %216
  %233 = call float @sqrtf(float noundef %230) #17
  %234 = fdiv float 1.000000e+00, %233
  %235 = load float, ptr %19, align 4, !tbaa !56
  %236 = fmul float %235, %234
  store float %236, ptr %6, align 16, !tbaa !56
  %237 = load float, ptr %224, align 4, !tbaa !56
  %238 = fmul float %234, %237
  %239 = getelementptr inbounds float, ptr %6, i64 1
  store float %238, ptr %239, align 4, !tbaa !56
  %240 = load float, ptr %228, align 4, !tbaa !56
  %241 = fmul float %234, %240
  br label %244

242:                                              ; preds = %216
  store float 0.000000e+00, ptr %6, align 16, !tbaa !56
  %243 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %243, align 4, !tbaa !56
  br label %244

244:                                              ; preds = %232, %242
  %245 = phi float [ %241, %232 ], [ 0.000000e+00, %242 ]
  %246 = getelementptr inbounds float, ptr %6, i64 2
  store float %245, ptr %246, align 8, !tbaa !56
  %247 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %248 = getelementptr inbounds float, ptr %6, i64 1
  %249 = load float, ptr %248, align 4, !tbaa !56
  %250 = load float, ptr %201, align 4, !tbaa !56
  %251 = load float, ptr %196, align 16, !tbaa !56
  %252 = fneg float %245
  %253 = fmul float %251, %252
  %254 = call float @llvm.fmuladd.f32(float %249, float %250, float %253)
  store float %254, ptr %247, align 8, !tbaa !56
  %255 = load float, ptr %188, align 4, !tbaa !56
  %256 = load float, ptr %6, align 16, !tbaa !56
  %257 = fneg float %256
  %258 = fmul float %250, %257
  %259 = call float @llvm.fmuladd.f32(float %245, float %255, float %258)
  %260 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %259, ptr %260, align 4, !tbaa !56
  %261 = fneg float %249
  %262 = fmul float %255, %261
  %263 = call float @llvm.fmuladd.f32(float %256, float %251, float %262)
  %264 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %263, ptr %264, align 16, !tbaa !56
  br label %965

265:                                              ; preds = %38
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %19) #17
  %266 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %267 = load float, ptr %4, align 4, !tbaa !56
  %268 = load float, ptr %5, align 4, !tbaa !56
  %269 = fsub float %267, %268
  store float %269, ptr %266, align 8, !tbaa !56
  %270 = load float, ptr %29, align 4, !tbaa !56
  %271 = getelementptr inbounds float, ptr %5, i64 1
  %272 = load float, ptr %271, align 4, !tbaa !56
  %273 = fsub float %270, %272
  %274 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %273, ptr %274, align 4, !tbaa !56
  %275 = load float, ptr %35, align 4, !tbaa !56
  %276 = getelementptr inbounds float, ptr %5, i64 2
  %277 = load float, ptr %276, align 4, !tbaa !56
  %278 = fsub float %275, %277
  %279 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %278, ptr %279, align 16, !tbaa !56
  %280 = fmul float %273, %273
  %281 = call float @llvm.fmuladd.f32(float %269, float %269, float %280)
  %282 = call float @llvm.fmuladd.f32(float %278, float %278, float %281)
  %283 = fcmp ogt float %282, 0x38AA95A5C0000000
  br i1 %283, label %284, label %293

284:                                              ; preds = %265
  %285 = call float @sqrtf(float noundef %282) #17
  %286 = fdiv float 1.000000e+00, %285
  %287 = load float, ptr %266, align 8, !tbaa !56
  %288 = fmul float %287, %286
  store float %288, ptr %266, align 8, !tbaa !56
  %289 = load float, ptr %274, align 4, !tbaa !56
  %290 = fmul float %286, %289
  store float %290, ptr %274, align 4, !tbaa !56
  %291 = load float, ptr %279, align 16, !tbaa !56
  %292 = fmul float %286, %291
  br label %294

293:                                              ; preds = %265
  store float 0.000000e+00, ptr %266, align 8, !tbaa !56
  store float 0.000000e+00, ptr %274, align 4, !tbaa !56
  br label %294

294:                                              ; preds = %284, %293
  %295 = phi float [ 0.000000e+00, %293 ], [ %292, %284 ]
  store float %295, ptr %279, align 16, !tbaa !56
  %296 = load float, ptr %266, align 8, !tbaa !56
  %297 = fneg float %296
  store float %297, ptr %266, align 8, !tbaa !56
  %298 = load float, ptr %274, align 4, !tbaa !56
  %299 = fneg float %298
  store float %299, ptr %274, align 4, !tbaa !56
  %300 = fneg float %295
  store float %300, ptr %279, align 16, !tbaa !56
  %301 = load float, ptr %19, align 4, !tbaa !56
  %302 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 1
  %303 = load float, ptr %302, align 4, !tbaa !56
  %304 = fmul float %303, %303
  %305 = call float @llvm.fmuladd.f32(float %301, float %301, float %304)
  %306 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 2
  %307 = load float, ptr %306, align 4, !tbaa !56
  %308 = call float @llvm.fmuladd.f32(float %307, float %307, float %305)
  %309 = fcmp ogt float %308, 0x38AA95A5C0000000
  br i1 %309, label %310, label %320

310:                                              ; preds = %294
  %311 = call float @sqrtf(float noundef %308) #17
  %312 = fdiv float 1.000000e+00, %311
  %313 = load float, ptr %19, align 4, !tbaa !56
  %314 = fmul float %313, %312
  store float %314, ptr %6, align 16, !tbaa !56
  %315 = load float, ptr %302, align 4, !tbaa !56
  %316 = fmul float %312, %315
  %317 = getelementptr inbounds float, ptr %6, i64 1
  store float %316, ptr %317, align 4, !tbaa !56
  %318 = load float, ptr %306, align 4, !tbaa !56
  %319 = fmul float %312, %318
  br label %322

320:                                              ; preds = %294
  store float 0.000000e+00, ptr %6, align 16, !tbaa !56
  %321 = getelementptr inbounds float, ptr %6, i64 1
  store float 0.000000e+00, ptr %321, align 4, !tbaa !56
  br label %322

322:                                              ; preds = %310, %320
  %323 = phi float [ %319, %310 ], [ 0.000000e+00, %320 ]
  %324 = getelementptr inbounds float, ptr %6, i64 2
  store float %323, ptr %324, align 8, !tbaa !56
  %325 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %326 = load float, ptr %274, align 4, !tbaa !56
  %327 = load float, ptr %279, align 16, !tbaa !56
  %328 = getelementptr inbounds float, ptr %6, i64 1
  %329 = load float, ptr %328, align 4, !tbaa !56
  %330 = fneg float %327
  %331 = fmul float %329, %330
  %332 = call float @llvm.fmuladd.f32(float %326, float %323, float %331)
  store float %332, ptr %325, align 4, !tbaa !56
  %333 = load float, ptr %6, align 16, !tbaa !56
  %334 = load float, ptr %266, align 8, !tbaa !56
  %335 = fneg float %334
  %336 = fmul float %323, %335
  %337 = call float @llvm.fmuladd.f32(float %327, float %333, float %336)
  %338 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %337, ptr %338, align 16, !tbaa !56
  %339 = fneg float %326
  %340 = fmul float %333, %339
  %341 = call float @llvm.fmuladd.f32(float %334, float %329, float %340)
  %342 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %341, ptr %342, align 4, !tbaa !56
  br label %965

343:                                              ; preds = %38
  call void @unit_m3(ptr noundef nonnull %6) #17
  br label %965

344:                                              ; preds = %17
  %345 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %10, i64 0, i32 1
  %346 = load i32, ptr %345, align 8, !tbaa !219
  switch i32 %346, label %653 [
    i32 0, label %347
    i32 2, label %421
    i32 3, label %495
    i32 5, label %574
  ]

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %348) #17
  %349 = load float, ptr %4, align 4, !tbaa !56
  %350 = load float, ptr %5, align 4, !tbaa !56
  %351 = fsub float %349, %350
  store float %351, ptr %6, align 16, !tbaa !56
  %352 = load float, ptr %29, align 4, !tbaa !56
  %353 = getelementptr inbounds float, ptr %5, i64 1
  %354 = load float, ptr %353, align 4, !tbaa !56
  %355 = fsub float %352, %354
  %356 = getelementptr inbounds float, ptr %6, i64 1
  store float %355, ptr %356, align 4, !tbaa !56
  %357 = load float, ptr %35, align 4, !tbaa !56
  %358 = getelementptr inbounds float, ptr %5, i64 2
  %359 = load float, ptr %358, align 4, !tbaa !56
  %360 = fsub float %357, %359
  %361 = getelementptr inbounds float, ptr %6, i64 2
  store float %360, ptr %361, align 8, !tbaa !56
  %362 = fmul float %355, %355
  %363 = call float @llvm.fmuladd.f32(float %351, float %351, float %362)
  %364 = call float @llvm.fmuladd.f32(float %360, float %360, float %363)
  %365 = fcmp ogt float %364, 0x38AA95A5C0000000
  br i1 %365, label %366, label %375

366:                                              ; preds = %347
  %367 = call float @sqrtf(float noundef %364) #17
  %368 = fdiv float 1.000000e+00, %367
  %369 = load float, ptr %6, align 16, !tbaa !56
  %370 = fmul float %369, %368
  store float %370, ptr %6, align 16, !tbaa !56
  %371 = load float, ptr %356, align 4, !tbaa !56
  %372 = fmul float %368, %371
  store float %372, ptr %356, align 4, !tbaa !56
  %373 = load float, ptr %361, align 8, !tbaa !56
  %374 = fmul float %368, %373
  br label %376

375:                                              ; preds = %347
  store float 0.000000e+00, ptr %6, align 16, !tbaa !56
  store float 0.000000e+00, ptr %356, align 4, !tbaa !56
  br label %376

376:                                              ; preds = %366, %375
  %377 = phi float [ 0.000000e+00, %375 ], [ %374, %366 ]
  store float %377, ptr %361, align 8, !tbaa !56
  %378 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %379 = load float, ptr %348, align 4, !tbaa !56
  %380 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 1
  %381 = load float, ptr %380, align 4, !tbaa !56
  %382 = fmul float %381, %381
  %383 = call float @llvm.fmuladd.f32(float %379, float %379, float %382)
  %384 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 2
  %385 = load float, ptr %384, align 4, !tbaa !56
  %386 = call float @llvm.fmuladd.f32(float %385, float %385, float %383)
  %387 = fcmp ogt float %386, 0x38AA95A5C0000000
  br i1 %387, label %388, label %398

388:                                              ; preds = %376
  %389 = call float @sqrtf(float noundef %386) #17
  %390 = fdiv float 1.000000e+00, %389
  %391 = load float, ptr %348, align 4, !tbaa !56
  %392 = fmul float %391, %390
  store float %392, ptr %378, align 4, !tbaa !56
  %393 = load float, ptr %380, align 4, !tbaa !56
  %394 = fmul float %390, %393
  %395 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %394, ptr %395, align 16, !tbaa !56
  %396 = load float, ptr %384, align 4, !tbaa !56
  %397 = fmul float %390, %396
  br label %400

398:                                              ; preds = %376
  store float 0.000000e+00, ptr %378, align 4, !tbaa !56
  %399 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float 0.000000e+00, ptr %399, align 16, !tbaa !56
  br label %400

400:                                              ; preds = %388, %398
  %401 = phi float [ %397, %388 ], [ 0.000000e+00, %398 ]
  %402 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %401, ptr %402, align 4, !tbaa !56
  %403 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %404 = load float, ptr %356, align 4, !tbaa !56
  %405 = load float, ptr %361, align 8, !tbaa !56
  %406 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %407 = load float, ptr %406, align 16, !tbaa !56
  %408 = fneg float %405
  %409 = fmul float %407, %408
  %410 = call float @llvm.fmuladd.f32(float %404, float %401, float %409)
  store float %410, ptr %403, align 8, !tbaa !56
  %411 = load float, ptr %378, align 4, !tbaa !56
  %412 = load float, ptr %6, align 16, !tbaa !56
  %413 = fneg float %412
  %414 = fmul float %401, %413
  %415 = call float @llvm.fmuladd.f32(float %405, float %411, float %414)
  %416 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %415, ptr %416, align 4, !tbaa !56
  %417 = fneg float %404
  %418 = fmul float %411, %417
  %419 = call float @llvm.fmuladd.f32(float %412, float %407, float %418)
  %420 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %419, ptr %420, align 16, !tbaa !56
  br label %965

421:                                              ; preds = %344
  %422 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %422) #17
  %423 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %424 = load float, ptr %4, align 4, !tbaa !56
  %425 = load float, ptr %5, align 4, !tbaa !56
  %426 = fsub float %424, %425
  store float %426, ptr %423, align 8, !tbaa !56
  %427 = load float, ptr %29, align 4, !tbaa !56
  %428 = getelementptr inbounds float, ptr %5, i64 1
  %429 = load float, ptr %428, align 4, !tbaa !56
  %430 = fsub float %427, %429
  %431 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %430, ptr %431, align 4, !tbaa !56
  %432 = load float, ptr %35, align 4, !tbaa !56
  %433 = getelementptr inbounds float, ptr %5, i64 2
  %434 = load float, ptr %433, align 4, !tbaa !56
  %435 = fsub float %432, %434
  %436 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %435, ptr %436, align 16, !tbaa !56
  %437 = fmul float %430, %430
  %438 = call float @llvm.fmuladd.f32(float %426, float %426, float %437)
  %439 = call float @llvm.fmuladd.f32(float %435, float %435, float %438)
  %440 = fcmp ogt float %439, 0x38AA95A5C0000000
  br i1 %440, label %441, label %450

441:                                              ; preds = %421
  %442 = call float @sqrtf(float noundef %439) #17
  %443 = fdiv float 1.000000e+00, %442
  %444 = load float, ptr %423, align 8, !tbaa !56
  %445 = fmul float %444, %443
  store float %445, ptr %423, align 8, !tbaa !56
  %446 = load float, ptr %431, align 4, !tbaa !56
  %447 = fmul float %443, %446
  store float %447, ptr %431, align 4, !tbaa !56
  %448 = load float, ptr %436, align 16, !tbaa !56
  %449 = fmul float %443, %448
  br label %451

450:                                              ; preds = %421
  store float 0.000000e+00, ptr %423, align 8, !tbaa !56
  store float 0.000000e+00, ptr %431, align 4, !tbaa !56
  br label %451

451:                                              ; preds = %441, %450
  %452 = phi float [ 0.000000e+00, %450 ], [ %449, %441 ]
  store float %452, ptr %436, align 16, !tbaa !56
  %453 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %454 = load float, ptr %422, align 4, !tbaa !56
  %455 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 1
  %456 = load float, ptr %455, align 4, !tbaa !56
  %457 = fmul float %456, %456
  %458 = call float @llvm.fmuladd.f32(float %454, float %454, float %457)
  %459 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 2
  %460 = load float, ptr %459, align 4, !tbaa !56
  %461 = call float @llvm.fmuladd.f32(float %460, float %460, float %458)
  %462 = fcmp ogt float %461, 0x38AA95A5C0000000
  br i1 %462, label %463, label %473

463:                                              ; preds = %451
  %464 = call float @sqrtf(float noundef %461) #17
  %465 = fdiv float 1.000000e+00, %464
  %466 = load float, ptr %422, align 4, !tbaa !56
  %467 = fmul float %466, %465
  store float %467, ptr %453, align 4, !tbaa !56
  %468 = load float, ptr %455, align 4, !tbaa !56
  %469 = fmul float %465, %468
  %470 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %469, ptr %470, align 16, !tbaa !56
  %471 = load float, ptr %459, align 4, !tbaa !56
  %472 = fmul float %465, %471
  br label %475

473:                                              ; preds = %451
  store float 0.000000e+00, ptr %453, align 4, !tbaa !56
  %474 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float 0.000000e+00, ptr %474, align 16, !tbaa !56
  br label %475

475:                                              ; preds = %463, %473
  %476 = phi float [ %472, %463 ], [ 0.000000e+00, %473 ]
  %477 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %476, ptr %477, align 4, !tbaa !56
  %478 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %479 = load float, ptr %478, align 16, !tbaa !56
  %480 = load float, ptr %436, align 16, !tbaa !56
  %481 = load float, ptr %431, align 4, !tbaa !56
  %482 = fneg float %476
  %483 = fmul float %481, %482
  %484 = call float @llvm.fmuladd.f32(float %479, float %480, float %483)
  store float %484, ptr %6, align 16, !tbaa !56
  %485 = load float, ptr %423, align 8, !tbaa !56
  %486 = load float, ptr %453, align 4, !tbaa !56
  %487 = fneg float %486
  %488 = fmul float %480, %487
  %489 = call float @llvm.fmuladd.f32(float %476, float %485, float %488)
  %490 = getelementptr inbounds float, ptr %6, i64 1
  store float %489, ptr %490, align 4, !tbaa !56
  %491 = fneg float %479
  %492 = fmul float %485, %491
  %493 = call float @llvm.fmuladd.f32(float %486, float %481, float %492)
  %494 = getelementptr inbounds float, ptr %6, i64 2
  store float %493, ptr %494, align 8, !tbaa !56
  br label %965

495:                                              ; preds = %344
  %496 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %496) #17
  %497 = load float, ptr %4, align 4, !tbaa !56
  %498 = load float, ptr %5, align 4, !tbaa !56
  %499 = fsub float %497, %498
  store float %499, ptr %6, align 16, !tbaa !56
  %500 = load float, ptr %29, align 4, !tbaa !56
  %501 = getelementptr inbounds float, ptr %5, i64 1
  %502 = load float, ptr %501, align 4, !tbaa !56
  %503 = fsub float %500, %502
  %504 = getelementptr inbounds float, ptr %6, i64 1
  store float %503, ptr %504, align 4, !tbaa !56
  %505 = load float, ptr %35, align 4, !tbaa !56
  %506 = getelementptr inbounds float, ptr %5, i64 2
  %507 = load float, ptr %506, align 4, !tbaa !56
  %508 = fsub float %505, %507
  %509 = getelementptr inbounds float, ptr %6, i64 2
  store float %508, ptr %509, align 8, !tbaa !56
  %510 = fmul float %503, %503
  %511 = call float @llvm.fmuladd.f32(float %499, float %499, float %510)
  %512 = call float @llvm.fmuladd.f32(float %508, float %508, float %511)
  %513 = fcmp ogt float %512, 0x38AA95A5C0000000
  br i1 %513, label %514, label %523

514:                                              ; preds = %495
  %515 = call float @sqrtf(float noundef %512) #17
  %516 = fdiv float 1.000000e+00, %515
  %517 = load float, ptr %6, align 16, !tbaa !56
  %518 = fmul float %517, %516
  store float %518, ptr %6, align 16, !tbaa !56
  %519 = load float, ptr %504, align 4, !tbaa !56
  %520 = fmul float %516, %519
  store float %520, ptr %504, align 4, !tbaa !56
  %521 = load float, ptr %509, align 8, !tbaa !56
  %522 = fmul float %516, %521
  br label %524

523:                                              ; preds = %495
  store float 0.000000e+00, ptr %6, align 16, !tbaa !56
  store float 0.000000e+00, ptr %504, align 4, !tbaa !56
  br label %524

524:                                              ; preds = %514, %523
  %525 = phi float [ 0.000000e+00, %523 ], [ %522, %514 ]
  store float %525, ptr %509, align 8, !tbaa !56
  %526 = load float, ptr %6, align 16, !tbaa !56
  %527 = fneg float %526
  store float %527, ptr %6, align 16, !tbaa !56
  %528 = load float, ptr %504, align 4, !tbaa !56
  %529 = fneg float %528
  store float %529, ptr %504, align 4, !tbaa !56
  %530 = fneg float %525
  store float %530, ptr %509, align 8, !tbaa !56
  %531 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %532 = load float, ptr %496, align 4, !tbaa !56
  %533 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 1
  %534 = load float, ptr %533, align 4, !tbaa !56
  %535 = fmul float %534, %534
  %536 = call float @llvm.fmuladd.f32(float %532, float %532, float %535)
  %537 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 2
  %538 = load float, ptr %537, align 4, !tbaa !56
  %539 = call float @llvm.fmuladd.f32(float %538, float %538, float %536)
  %540 = fcmp ogt float %539, 0x38AA95A5C0000000
  br i1 %540, label %541, label %551

541:                                              ; preds = %524
  %542 = call float @sqrtf(float noundef %539) #17
  %543 = fdiv float 1.000000e+00, %542
  %544 = load float, ptr %496, align 4, !tbaa !56
  %545 = fmul float %544, %543
  store float %545, ptr %531, align 4, !tbaa !56
  %546 = load float, ptr %533, align 4, !tbaa !56
  %547 = fmul float %543, %546
  %548 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %547, ptr %548, align 16, !tbaa !56
  %549 = load float, ptr %537, align 4, !tbaa !56
  %550 = fmul float %543, %549
  br label %553

551:                                              ; preds = %524
  store float 0.000000e+00, ptr %531, align 4, !tbaa !56
  %552 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float 0.000000e+00, ptr %552, align 16, !tbaa !56
  br label %553

553:                                              ; preds = %541, %551
  %554 = phi float [ %550, %541 ], [ 0.000000e+00, %551 ]
  %555 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %554, ptr %555, align 4, !tbaa !56
  %556 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %557 = load float, ptr %504, align 4, !tbaa !56
  %558 = load float, ptr %509, align 8, !tbaa !56
  %559 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %560 = load float, ptr %559, align 16, !tbaa !56
  %561 = fneg float %558
  %562 = fmul float %560, %561
  %563 = call float @llvm.fmuladd.f32(float %557, float %554, float %562)
  store float %563, ptr %556, align 8, !tbaa !56
  %564 = load float, ptr %531, align 4, !tbaa !56
  %565 = load float, ptr %6, align 16, !tbaa !56
  %566 = fneg float %565
  %567 = fmul float %554, %566
  %568 = call float @llvm.fmuladd.f32(float %558, float %564, float %567)
  %569 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %568, ptr %569, align 4, !tbaa !56
  %570 = fneg float %557
  %571 = fmul float %564, %570
  %572 = call float @llvm.fmuladd.f32(float %565, float %560, float %571)
  %573 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %572, ptr %573, align 16, !tbaa !56
  br label %965

574:                                              ; preds = %344
  %575 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %575) #17
  %576 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %577 = load float, ptr %4, align 4, !tbaa !56
  %578 = load float, ptr %5, align 4, !tbaa !56
  %579 = fsub float %577, %578
  store float %579, ptr %576, align 8, !tbaa !56
  %580 = load float, ptr %29, align 4, !tbaa !56
  %581 = getelementptr inbounds float, ptr %5, i64 1
  %582 = load float, ptr %581, align 4, !tbaa !56
  %583 = fsub float %580, %582
  %584 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %583, ptr %584, align 4, !tbaa !56
  %585 = load float, ptr %35, align 4, !tbaa !56
  %586 = getelementptr inbounds float, ptr %5, i64 2
  %587 = load float, ptr %586, align 4, !tbaa !56
  %588 = fsub float %585, %587
  %589 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %588, ptr %589, align 16, !tbaa !56
  %590 = fmul float %583, %583
  %591 = call float @llvm.fmuladd.f32(float %579, float %579, float %590)
  %592 = call float @llvm.fmuladd.f32(float %588, float %588, float %591)
  %593 = fcmp ogt float %592, 0x38AA95A5C0000000
  br i1 %593, label %594, label %603

594:                                              ; preds = %574
  %595 = call float @sqrtf(float noundef %592) #17
  %596 = fdiv float 1.000000e+00, %595
  %597 = load float, ptr %576, align 8, !tbaa !56
  %598 = fmul float %597, %596
  store float %598, ptr %576, align 8, !tbaa !56
  %599 = load float, ptr %584, align 4, !tbaa !56
  %600 = fmul float %596, %599
  store float %600, ptr %584, align 4, !tbaa !56
  %601 = load float, ptr %589, align 16, !tbaa !56
  %602 = fmul float %596, %601
  br label %604

603:                                              ; preds = %574
  store float 0.000000e+00, ptr %576, align 8, !tbaa !56
  store float 0.000000e+00, ptr %584, align 4, !tbaa !56
  br label %604

604:                                              ; preds = %594, %603
  %605 = phi float [ 0.000000e+00, %603 ], [ %602, %594 ]
  store float %605, ptr %589, align 16, !tbaa !56
  %606 = load float, ptr %576, align 8, !tbaa !56
  %607 = fneg float %606
  store float %607, ptr %576, align 8, !tbaa !56
  %608 = load float, ptr %584, align 4, !tbaa !56
  %609 = fneg float %608
  store float %609, ptr %584, align 4, !tbaa !56
  %610 = fneg float %605
  store float %610, ptr %589, align 16, !tbaa !56
  %611 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %612 = load float, ptr %575, align 4, !tbaa !56
  %613 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 1
  %614 = load float, ptr %613, align 4, !tbaa !56
  %615 = fmul float %614, %614
  %616 = call float @llvm.fmuladd.f32(float %612, float %612, float %615)
  %617 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 2
  %618 = load float, ptr %617, align 4, !tbaa !56
  %619 = call float @llvm.fmuladd.f32(float %618, float %618, float %616)
  %620 = fcmp ogt float %619, 0x38AA95A5C0000000
  br i1 %620, label %621, label %631

621:                                              ; preds = %604
  %622 = call float @sqrtf(float noundef %619) #17
  %623 = fdiv float 1.000000e+00, %622
  %624 = load float, ptr %575, align 4, !tbaa !56
  %625 = fmul float %624, %623
  store float %625, ptr %611, align 4, !tbaa !56
  %626 = load float, ptr %613, align 4, !tbaa !56
  %627 = fmul float %623, %626
  %628 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %627, ptr %628, align 16, !tbaa !56
  %629 = load float, ptr %617, align 4, !tbaa !56
  %630 = fmul float %623, %629
  br label %633

631:                                              ; preds = %604
  store float 0.000000e+00, ptr %611, align 4, !tbaa !56
  %632 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float 0.000000e+00, ptr %632, align 16, !tbaa !56
  br label %633

633:                                              ; preds = %621, %631
  %634 = phi float [ %630, %621 ], [ 0.000000e+00, %631 ]
  %635 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %634, ptr %635, align 4, !tbaa !56
  %636 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %637 = load float, ptr %636, align 16, !tbaa !56
  %638 = load float, ptr %589, align 16, !tbaa !56
  %639 = load float, ptr %584, align 4, !tbaa !56
  %640 = fneg float %634
  %641 = fmul float %639, %640
  %642 = call float @llvm.fmuladd.f32(float %637, float %638, float %641)
  store float %642, ptr %6, align 16, !tbaa !56
  %643 = load float, ptr %576, align 8, !tbaa !56
  %644 = load float, ptr %611, align 4, !tbaa !56
  %645 = fneg float %644
  %646 = fmul float %638, %645
  %647 = call float @llvm.fmuladd.f32(float %634, float %643, float %646)
  %648 = getelementptr inbounds float, ptr %6, i64 1
  store float %647, ptr %648, align 4, !tbaa !56
  %649 = fneg float %637
  %650 = fmul float %643, %649
  %651 = call float @llvm.fmuladd.f32(float %644, float %639, float %650)
  %652 = getelementptr inbounds float, ptr %6, i64 2
  store float %651, ptr %652, align 8, !tbaa !56
  br label %965

653:                                              ; preds = %344
  call void @unit_m3(ptr noundef nonnull %6) #17
  br label %965

654:                                              ; preds = %17
  %655 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %10, i64 0, i32 1
  %656 = load i32, ptr %655, align 8, !tbaa !219
  switch i32 %656, label %963 [
    i32 0, label %657
    i32 1, label %731
    i32 3, label %805
    i32 4, label %884
  ]

657:                                              ; preds = %654
  %658 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %658) #17
  %659 = load float, ptr %4, align 4, !tbaa !56
  %660 = load float, ptr %5, align 4, !tbaa !56
  %661 = fsub float %659, %660
  store float %661, ptr %6, align 16, !tbaa !56
  %662 = load float, ptr %29, align 4, !tbaa !56
  %663 = getelementptr inbounds float, ptr %5, i64 1
  %664 = load float, ptr %663, align 4, !tbaa !56
  %665 = fsub float %662, %664
  %666 = getelementptr inbounds float, ptr %6, i64 1
  store float %665, ptr %666, align 4, !tbaa !56
  %667 = load float, ptr %35, align 4, !tbaa !56
  %668 = getelementptr inbounds float, ptr %5, i64 2
  %669 = load float, ptr %668, align 4, !tbaa !56
  %670 = fsub float %667, %669
  %671 = getelementptr inbounds float, ptr %6, i64 2
  store float %670, ptr %671, align 8, !tbaa !56
  %672 = fmul float %665, %665
  %673 = call float @llvm.fmuladd.f32(float %661, float %661, float %672)
  %674 = call float @llvm.fmuladd.f32(float %670, float %670, float %673)
  %675 = fcmp ogt float %674, 0x38AA95A5C0000000
  br i1 %675, label %676, label %685

676:                                              ; preds = %657
  %677 = call float @sqrtf(float noundef %674) #17
  %678 = fdiv float 1.000000e+00, %677
  %679 = load float, ptr %6, align 16, !tbaa !56
  %680 = fmul float %679, %678
  store float %680, ptr %6, align 16, !tbaa !56
  %681 = load float, ptr %666, align 4, !tbaa !56
  %682 = fmul float %678, %681
  store float %682, ptr %666, align 4, !tbaa !56
  %683 = load float, ptr %671, align 8, !tbaa !56
  %684 = fmul float %678, %683
  br label %686

685:                                              ; preds = %657
  store float 0.000000e+00, ptr %6, align 16, !tbaa !56
  store float 0.000000e+00, ptr %666, align 4, !tbaa !56
  br label %686

686:                                              ; preds = %676, %685
  %687 = phi float [ 0.000000e+00, %685 ], [ %684, %676 ]
  store float %687, ptr %671, align 8, !tbaa !56
  %688 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %689 = load float, ptr %658, align 4, !tbaa !56
  %690 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 1
  %691 = load float, ptr %690, align 4, !tbaa !56
  %692 = fmul float %691, %691
  %693 = call float @llvm.fmuladd.f32(float %689, float %689, float %692)
  %694 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 2
  %695 = load float, ptr %694, align 4, !tbaa !56
  %696 = call float @llvm.fmuladd.f32(float %695, float %695, float %693)
  %697 = fcmp ogt float %696, 0x38AA95A5C0000000
  br i1 %697, label %698, label %708

698:                                              ; preds = %686
  %699 = call float @sqrtf(float noundef %696) #17
  %700 = fdiv float 1.000000e+00, %699
  %701 = load float, ptr %658, align 4, !tbaa !56
  %702 = fmul float %701, %700
  store float %702, ptr %688, align 8, !tbaa !56
  %703 = load float, ptr %690, align 4, !tbaa !56
  %704 = fmul float %700, %703
  %705 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %704, ptr %705, align 4, !tbaa !56
  %706 = load float, ptr %694, align 4, !tbaa !56
  %707 = fmul float %700, %706
  br label %710

708:                                              ; preds = %686
  store float 0.000000e+00, ptr %688, align 8, !tbaa !56
  %709 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float 0.000000e+00, ptr %709, align 4, !tbaa !56
  br label %710

710:                                              ; preds = %698, %708
  %711 = phi float [ %707, %698 ], [ 0.000000e+00, %708 ]
  %712 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %711, ptr %712, align 16, !tbaa !56
  %713 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %714 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %715 = load float, ptr %714, align 4, !tbaa !56
  %716 = load float, ptr %671, align 8, !tbaa !56
  %717 = load float, ptr %666, align 4, !tbaa !56
  %718 = fneg float %711
  %719 = fmul float %717, %718
  %720 = call float @llvm.fmuladd.f32(float %715, float %716, float %719)
  store float %720, ptr %713, align 4, !tbaa !56
  %721 = load float, ptr %6, align 16, !tbaa !56
  %722 = load float, ptr %688, align 8, !tbaa !56
  %723 = fneg float %722
  %724 = fmul float %716, %723
  %725 = call float @llvm.fmuladd.f32(float %711, float %721, float %724)
  %726 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %725, ptr %726, align 16, !tbaa !56
  %727 = fneg float %715
  %728 = fmul float %721, %727
  %729 = call float @llvm.fmuladd.f32(float %722, float %717, float %728)
  %730 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %729, ptr %730, align 4, !tbaa !56
  br label %965

731:                                              ; preds = %654
  %732 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %732) #17
  %733 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %734 = load float, ptr %4, align 4, !tbaa !56
  %735 = load float, ptr %5, align 4, !tbaa !56
  %736 = fsub float %734, %735
  store float %736, ptr %733, align 4, !tbaa !56
  %737 = load float, ptr %29, align 4, !tbaa !56
  %738 = getelementptr inbounds float, ptr %5, i64 1
  %739 = load float, ptr %738, align 4, !tbaa !56
  %740 = fsub float %737, %739
  %741 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %740, ptr %741, align 16, !tbaa !56
  %742 = load float, ptr %35, align 4, !tbaa !56
  %743 = getelementptr inbounds float, ptr %5, i64 2
  %744 = load float, ptr %743, align 4, !tbaa !56
  %745 = fsub float %742, %744
  %746 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %745, ptr %746, align 4, !tbaa !56
  %747 = fmul float %740, %740
  %748 = call float @llvm.fmuladd.f32(float %736, float %736, float %747)
  %749 = call float @llvm.fmuladd.f32(float %745, float %745, float %748)
  %750 = fcmp ogt float %749, 0x38AA95A5C0000000
  br i1 %750, label %751, label %760

751:                                              ; preds = %731
  %752 = call float @sqrtf(float noundef %749) #17
  %753 = fdiv float 1.000000e+00, %752
  %754 = load float, ptr %733, align 4, !tbaa !56
  %755 = fmul float %754, %753
  store float %755, ptr %733, align 4, !tbaa !56
  %756 = load float, ptr %741, align 16, !tbaa !56
  %757 = fmul float %753, %756
  store float %757, ptr %741, align 16, !tbaa !56
  %758 = load float, ptr %746, align 4, !tbaa !56
  %759 = fmul float %753, %758
  br label %761

760:                                              ; preds = %731
  store float 0.000000e+00, ptr %733, align 4, !tbaa !56
  store float 0.000000e+00, ptr %741, align 16, !tbaa !56
  br label %761

761:                                              ; preds = %751, %760
  %762 = phi float [ 0.000000e+00, %760 ], [ %759, %751 ]
  store float %762, ptr %746, align 4, !tbaa !56
  %763 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %764 = load float, ptr %732, align 4, !tbaa !56
  %765 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 1
  %766 = load float, ptr %765, align 4, !tbaa !56
  %767 = fmul float %766, %766
  %768 = call float @llvm.fmuladd.f32(float %764, float %764, float %767)
  %769 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 2
  %770 = load float, ptr %769, align 4, !tbaa !56
  %771 = call float @llvm.fmuladd.f32(float %770, float %770, float %768)
  %772 = fcmp ogt float %771, 0x38AA95A5C0000000
  br i1 %772, label %773, label %783

773:                                              ; preds = %761
  %774 = call float @sqrtf(float noundef %771) #17
  %775 = fdiv float 1.000000e+00, %774
  %776 = load float, ptr %732, align 4, !tbaa !56
  %777 = fmul float %776, %775
  store float %777, ptr %763, align 8, !tbaa !56
  %778 = load float, ptr %765, align 4, !tbaa !56
  %779 = fmul float %775, %778
  %780 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %779, ptr %780, align 4, !tbaa !56
  %781 = load float, ptr %769, align 4, !tbaa !56
  %782 = fmul float %775, %781
  br label %785

783:                                              ; preds = %761
  store float 0.000000e+00, ptr %763, align 8, !tbaa !56
  %784 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float 0.000000e+00, ptr %784, align 4, !tbaa !56
  br label %785

785:                                              ; preds = %773, %783
  %786 = phi float [ %782, %773 ], [ 0.000000e+00, %783 ]
  %787 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %786, ptr %787, align 16, !tbaa !56
  %788 = load float, ptr %741, align 16, !tbaa !56
  %789 = load float, ptr %746, align 4, !tbaa !56
  %790 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %791 = load float, ptr %790, align 4, !tbaa !56
  %792 = fneg float %789
  %793 = fmul float %791, %792
  %794 = call float @llvm.fmuladd.f32(float %788, float %786, float %793)
  store float %794, ptr %6, align 16, !tbaa !56
  %795 = load float, ptr %763, align 8, !tbaa !56
  %796 = load float, ptr %733, align 4, !tbaa !56
  %797 = fneg float %796
  %798 = fmul float %786, %797
  %799 = call float @llvm.fmuladd.f32(float %789, float %795, float %798)
  %800 = getelementptr inbounds float, ptr %6, i64 1
  store float %799, ptr %800, align 4, !tbaa !56
  %801 = fneg float %788
  %802 = fmul float %795, %801
  %803 = call float @llvm.fmuladd.f32(float %796, float %791, float %802)
  %804 = getelementptr inbounds float, ptr %6, i64 2
  store float %803, ptr %804, align 8, !tbaa !56
  br label %965

805:                                              ; preds = %654
  %806 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %806) #17
  %807 = load float, ptr %4, align 4, !tbaa !56
  %808 = load float, ptr %5, align 4, !tbaa !56
  %809 = fsub float %807, %808
  store float %809, ptr %6, align 16, !tbaa !56
  %810 = load float, ptr %29, align 4, !tbaa !56
  %811 = getelementptr inbounds float, ptr %5, i64 1
  %812 = load float, ptr %811, align 4, !tbaa !56
  %813 = fsub float %810, %812
  %814 = getelementptr inbounds float, ptr %6, i64 1
  store float %813, ptr %814, align 4, !tbaa !56
  %815 = load float, ptr %35, align 4, !tbaa !56
  %816 = getelementptr inbounds float, ptr %5, i64 2
  %817 = load float, ptr %816, align 4, !tbaa !56
  %818 = fsub float %815, %817
  %819 = getelementptr inbounds float, ptr %6, i64 2
  store float %818, ptr %819, align 8, !tbaa !56
  %820 = fmul float %813, %813
  %821 = call float @llvm.fmuladd.f32(float %809, float %809, float %820)
  %822 = call float @llvm.fmuladd.f32(float %818, float %818, float %821)
  %823 = fcmp ogt float %822, 0x38AA95A5C0000000
  br i1 %823, label %824, label %833

824:                                              ; preds = %805
  %825 = call float @sqrtf(float noundef %822) #17
  %826 = fdiv float 1.000000e+00, %825
  %827 = load float, ptr %6, align 16, !tbaa !56
  %828 = fmul float %827, %826
  store float %828, ptr %6, align 16, !tbaa !56
  %829 = load float, ptr %814, align 4, !tbaa !56
  %830 = fmul float %826, %829
  store float %830, ptr %814, align 4, !tbaa !56
  %831 = load float, ptr %819, align 8, !tbaa !56
  %832 = fmul float %826, %831
  br label %834

833:                                              ; preds = %805
  store float 0.000000e+00, ptr %6, align 16, !tbaa !56
  store float 0.000000e+00, ptr %814, align 4, !tbaa !56
  br label %834

834:                                              ; preds = %824, %833
  %835 = phi float [ 0.000000e+00, %833 ], [ %832, %824 ]
  store float %835, ptr %819, align 8, !tbaa !56
  %836 = load float, ptr %6, align 16, !tbaa !56
  %837 = fneg float %836
  store float %837, ptr %6, align 16, !tbaa !56
  %838 = load float, ptr %814, align 4, !tbaa !56
  %839 = fneg float %838
  store float %839, ptr %814, align 4, !tbaa !56
  %840 = fneg float %835
  store float %840, ptr %819, align 8, !tbaa !56
  %841 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %842 = load float, ptr %806, align 4, !tbaa !56
  %843 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 1
  %844 = load float, ptr %843, align 4, !tbaa !56
  %845 = fmul float %844, %844
  %846 = call float @llvm.fmuladd.f32(float %842, float %842, float %845)
  %847 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 2
  %848 = load float, ptr %847, align 4, !tbaa !56
  %849 = call float @llvm.fmuladd.f32(float %848, float %848, float %846)
  %850 = fcmp ogt float %849, 0x38AA95A5C0000000
  br i1 %850, label %851, label %861

851:                                              ; preds = %834
  %852 = call float @sqrtf(float noundef %849) #17
  %853 = fdiv float 1.000000e+00, %852
  %854 = load float, ptr %806, align 4, !tbaa !56
  %855 = fmul float %854, %853
  store float %855, ptr %841, align 8, !tbaa !56
  %856 = load float, ptr %843, align 4, !tbaa !56
  %857 = fmul float %853, %856
  %858 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %857, ptr %858, align 4, !tbaa !56
  %859 = load float, ptr %847, align 4, !tbaa !56
  %860 = fmul float %853, %859
  br label %863

861:                                              ; preds = %834
  store float 0.000000e+00, ptr %841, align 8, !tbaa !56
  %862 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float 0.000000e+00, ptr %862, align 4, !tbaa !56
  br label %863

863:                                              ; preds = %851, %861
  %864 = phi float [ %860, %851 ], [ 0.000000e+00, %861 ]
  %865 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %864, ptr %865, align 16, !tbaa !56
  %866 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %867 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %868 = load float, ptr %867, align 4, !tbaa !56
  %869 = load float, ptr %819, align 8, !tbaa !56
  %870 = load float, ptr %814, align 4, !tbaa !56
  %871 = fneg float %864
  %872 = fmul float %870, %871
  %873 = call float @llvm.fmuladd.f32(float %868, float %869, float %872)
  store float %873, ptr %866, align 4, !tbaa !56
  %874 = load float, ptr %6, align 16, !tbaa !56
  %875 = load float, ptr %841, align 8, !tbaa !56
  %876 = fneg float %875
  %877 = fmul float %869, %876
  %878 = call float @llvm.fmuladd.f32(float %864, float %874, float %877)
  %879 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %878, ptr %879, align 16, !tbaa !56
  %880 = fneg float %868
  %881 = fmul float %874, %880
  %882 = call float @llvm.fmuladd.f32(float %875, float %870, float %881)
  %883 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %882, ptr %883, align 4, !tbaa !56
  br label %965

884:                                              ; preds = %654
  %885 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %885) #17
  %886 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %887 = load float, ptr %4, align 4, !tbaa !56
  %888 = load float, ptr %5, align 4, !tbaa !56
  %889 = fsub float %887, %888
  store float %889, ptr %886, align 4, !tbaa !56
  %890 = load float, ptr %29, align 4, !tbaa !56
  %891 = getelementptr inbounds float, ptr %5, i64 1
  %892 = load float, ptr %891, align 4, !tbaa !56
  %893 = fsub float %890, %892
  %894 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %893, ptr %894, align 16, !tbaa !56
  %895 = load float, ptr %35, align 4, !tbaa !56
  %896 = getelementptr inbounds float, ptr %5, i64 2
  %897 = load float, ptr %896, align 4, !tbaa !56
  %898 = fsub float %895, %897
  %899 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %898, ptr %899, align 4, !tbaa !56
  %900 = fmul float %893, %893
  %901 = call float @llvm.fmuladd.f32(float %889, float %889, float %900)
  %902 = call float @llvm.fmuladd.f32(float %898, float %898, float %901)
  %903 = fcmp ogt float %902, 0x38AA95A5C0000000
  br i1 %903, label %904, label %913

904:                                              ; preds = %884
  %905 = call float @sqrtf(float noundef %902) #17
  %906 = fdiv float 1.000000e+00, %905
  %907 = load float, ptr %886, align 4, !tbaa !56
  %908 = fmul float %907, %906
  store float %908, ptr %886, align 4, !tbaa !56
  %909 = load float, ptr %894, align 16, !tbaa !56
  %910 = fmul float %906, %909
  store float %910, ptr %894, align 16, !tbaa !56
  %911 = load float, ptr %899, align 4, !tbaa !56
  %912 = fmul float %906, %911
  br label %914

913:                                              ; preds = %884
  store float 0.000000e+00, ptr %886, align 4, !tbaa !56
  store float 0.000000e+00, ptr %894, align 16, !tbaa !56
  br label %914

914:                                              ; preds = %904, %913
  %915 = phi float [ 0.000000e+00, %913 ], [ %912, %904 ]
  store float %915, ptr %899, align 4, !tbaa !56
  %916 = load float, ptr %886, align 4, !tbaa !56
  %917 = fneg float %916
  store float %917, ptr %886, align 4, !tbaa !56
  %918 = load float, ptr %894, align 16, !tbaa !56
  %919 = fneg float %918
  store float %919, ptr %894, align 16, !tbaa !56
  %920 = fneg float %915
  store float %920, ptr %899, align 4, !tbaa !56
  %921 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %922 = load float, ptr %885, align 4, !tbaa !56
  %923 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 1
  %924 = load float, ptr %923, align 4, !tbaa !56
  %925 = fmul float %924, %924
  %926 = call float @llvm.fmuladd.f32(float %922, float %922, float %925)
  %927 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 2
  %928 = load float, ptr %927, align 4, !tbaa !56
  %929 = call float @llvm.fmuladd.f32(float %928, float %928, float %926)
  %930 = fcmp ogt float %929, 0x38AA95A5C0000000
  br i1 %930, label %931, label %941

931:                                              ; preds = %914
  %932 = call float @sqrtf(float noundef %929) #17
  %933 = fdiv float 1.000000e+00, %932
  %934 = load float, ptr %885, align 4, !tbaa !56
  %935 = fmul float %934, %933
  store float %935, ptr %921, align 8, !tbaa !56
  %936 = load float, ptr %923, align 4, !tbaa !56
  %937 = fmul float %933, %936
  %938 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %937, ptr %938, align 4, !tbaa !56
  %939 = load float, ptr %927, align 4, !tbaa !56
  %940 = fmul float %933, %939
  br label %943

941:                                              ; preds = %914
  store float 0.000000e+00, ptr %921, align 8, !tbaa !56
  %942 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float 0.000000e+00, ptr %942, align 4, !tbaa !56
  br label %943

943:                                              ; preds = %931, %941
  %944 = phi float [ %940, %931 ], [ 0.000000e+00, %941 ]
  %945 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %944, ptr %945, align 16, !tbaa !56
  %946 = load float, ptr %894, align 16, !tbaa !56
  %947 = load float, ptr %899, align 4, !tbaa !56
  %948 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  %949 = load float, ptr %948, align 4, !tbaa !56
  %950 = fneg float %947
  %951 = fmul float %949, %950
  %952 = call float @llvm.fmuladd.f32(float %946, float %944, float %951)
  store float %952, ptr %6, align 16, !tbaa !56
  %953 = load float, ptr %921, align 8, !tbaa !56
  %954 = load float, ptr %886, align 4, !tbaa !56
  %955 = fneg float %954
  %956 = fmul float %944, %955
  %957 = call float @llvm.fmuladd.f32(float %947, float %953, float %956)
  %958 = getelementptr inbounds float, ptr %6, i64 1
  store float %957, ptr %958, align 4, !tbaa !56
  %959 = fneg float %946
  %960 = fmul float %953, %959
  %961 = call float @llvm.fmuladd.f32(float %954, float %949, float %960)
  %962 = getelementptr inbounds float, ptr %6, i64 2
  store float %961, ptr %962, align 8, !tbaa !56
  br label %965

963:                                              ; preds = %654
  call void @unit_m3(ptr noundef nonnull %6) #17
  br label %965

964:                                              ; preds = %17
  call void @unit_m3(ptr noundef nonnull %6) #17
  br label %965

965:                                              ; preds = %710, %785, %863, %943, %963, %400, %475, %553, %633, %653, %93, %166, %244, %322, %343, %964
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %19) #17
  call void @normalize_m3(ptr noundef nonnull %7) #17
  %966 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %8, ptr noundef nonnull %7) #17
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8) #17
  %967 = load float, ptr %7, align 16, !tbaa !56
  store float %967, ptr %6, align 16, !tbaa !56
  %968 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %969 = load float, ptr %968, align 4, !tbaa !56
  %970 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float %969, ptr %970, align 4, !tbaa !56
  %971 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %972 = load float, ptr %971, align 8, !tbaa !56
  %973 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %972, ptr %973, align 8, !tbaa !56
  %974 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 1
  %975 = load float, ptr %974, align 4, !tbaa !56
  %976 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  store float %975, ptr %976, align 4, !tbaa !56
  %977 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 1, i64 1
  %978 = load float, ptr %977, align 16, !tbaa !56
  %979 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  store float %978, ptr %979, align 16, !tbaa !56
  %980 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 1, i64 2
  %981 = load float, ptr %980, align 4, !tbaa !56
  %982 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %981, ptr %982, align 4, !tbaa !56
  %983 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2
  %984 = load float, ptr %983, align 8, !tbaa !56
  %985 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  store float %984, ptr %985, align 8, !tbaa !56
  %986 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 1
  %987 = load float, ptr %986, align 4, !tbaa !56
  %988 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %987, ptr %988, align 4, !tbaa !56
  %989 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 2
  %990 = load float, ptr %989, align 16, !tbaa !56
  %991 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %990, ptr %991, align 16, !tbaa !56
  %992 = call float @determinant_m3(float noundef %967, float noundef %969, float noundef %972, float noundef %975, float noundef %978, float noundef %981, float noundef %984, float noundef %987, float noundef %990) #17
  %993 = fcmp oeq float %992, 0.000000e+00
  br i1 %993, label %994, label %995

994:                                              ; preds = %965
  call void @unit_m3(ptr noundef nonnull %6) #17
  br label %995

995:                                              ; preds = %994, %965
  call void @mul_m4_m3m4(ptr noundef nonnull %19, ptr noundef nonnull %6, ptr noundef nonnull %19) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %996

996:                                              ; preds = %995, %13, %3
  ret void
}

declare void @normalize_m3(ptr noundef) local_unnamed_addr #1

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @determinant_m3(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @distlimit_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @distlimit_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %0, i64 0, i32 2
  store float 0.000000e+00, ptr %2, align 8, !tbaa !223
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @distlimit_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !225
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %8, i64 0, i32 1
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @distlimit_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !225
  %17 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %9, i64 0, i32 1
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @distlimit_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = load ptr, ptr %2, align 8, !tbaa !86
  %8 = icmp eq ptr %7, null
  br i1 %8, label %92, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !99
  %12 = icmp eq ptr %11, null
  br i1 %12, label %92, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %14 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 4, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !56
  %17 = load float, ptr %14, align 4, !tbaa !56
  %18 = fsub float %16, %17
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 4, i64 3, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !56
  %21 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !56
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 4, i64 3, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !56
  %26 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !56
  %28 = fsub float %25, %27
  %29 = fmul float %23, %23
  %30 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %29)
  %31 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %30)
  %32 = tail call float @sqrtf(float noundef %31) #17
  %33 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %6, i64 0, i32 2
  %34 = load float, ptr %33, align 8, !tbaa !223
  %35 = fcmp oeq float %34, 0.000000e+00
  br i1 %35, label %36, label %37

36:                                               ; preds = %13
  store float %32, ptr %33, align 8, !tbaa !223
  br label %37

37:                                               ; preds = %36, %13
  %38 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %6, i64 0, i32 5
  %39 = load i16, ptr %38, align 2, !tbaa !226
  %40 = load float, ptr %33, align 8, !tbaa !223
  switch i16 %39, label %74 [
    i16 1, label %41
    i16 0, label %47
  ]

41:                                               ; preds = %37
  %42 = fcmp ugt float %32, %40
  br i1 %42, label %82, label %43

43:                                               ; preds = %41
  %44 = fcmp une float %32, 0.000000e+00
  br i1 %44, label %45, label %82

45:                                               ; preds = %43
  %46 = fdiv float %40, %32
  br label %82

47:                                               ; preds = %37
  %48 = fcmp ult float %32, %40
  br i1 %48, label %53, label %49

49:                                               ; preds = %47
  %50 = fcmp une float %32, 0.000000e+00
  br i1 %50, label %51, label %82

51:                                               ; preds = %49
  %52 = fdiv float %40, %32
  br label %82

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %6, i64 0, i32 4
  %55 = load i16, ptr %54, align 8, !tbaa !227
  %56 = and i16 %55, 1
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %6, i64 0, i32 3
  %60 = load float, ptr %59, align 4, !tbaa !228
  %61 = fsub float %40, %60
  %62 = fcmp ult float %32, %61
  br i1 %62, label %82, label %63

63:                                               ; preds = %58
  %64 = fsub float %32, %40
  %65 = fneg float %64
  %66 = fdiv float %65, %60
  %67 = tail call float @expf(float noundef %66) #17
  %68 = fsub float 1.000000e+00, %67
  %69 = load float, ptr %33, align 8, !tbaa !223
  %70 = tail call float @llvm.fmuladd.f32(float %60, float %68, float %69)
  %71 = fcmp une float %32, 0.000000e+00
  %72 = select i1 %71, float %32, float 1.000000e+00
  %73 = fdiv float %70, %72
  br label %82

74:                                               ; preds = %37
  %75 = fsub float %32, %40
  %76 = tail call float @llvm.fabs.f32(float %75)
  %77 = fcmp ult float %76, 0x3E80000000000000
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = fcmp une float %32, 0.000000e+00
  br i1 %79, label %80, label %82

80:                                               ; preds = %78
  %81 = fdiv float %40, %32
  br label %82

82:                                               ; preds = %41, %53, %63, %58, %49, %51, %78, %80, %74, %45, %43
  %83 = phi float [ %46, %45 ], [ 1.000000e+00, %43 ], [ %52, %51 ], [ 1.000000e+00, %49 ], [ %73, %63 ], [ 1.000000e+00, %58 ], [ 1.000000e+00, %53 ], [ %81, %80 ], [ 1.000000e+00, %78 ], [ 1.000000e+00, %74 ], [ 1.000000e+00, %41 ]
  %84 = phi i1 [ false, %45 ], [ false, %43 ], [ false, %51 ], [ false, %49 ], [ false, %63 ], [ true, %58 ], [ true, %53 ], [ false, %80 ], [ false, %78 ], [ true, %74 ], [ true, %41 ]
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  call void @interp_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %15, ptr noundef nonnull %14, float noundef %83) #17
  %86 = load float, ptr %4, align 4, !tbaa !56
  store float %86, ptr %14, align 4, !tbaa !56
  %87 = getelementptr inbounds float, ptr %4, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !56
  store float %88, ptr %21, align 4, !tbaa !56
  %89 = getelementptr inbounds float, ptr %4, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !56
  store float %90, ptr %26, align 4, !tbaa !56
  br label %91

91:                                               ; preds = %85, %82
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %92

92:                                               ; preds = %91, %9, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nounwind uwtable
define internal void @stretchto_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @stretchto_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bStretchToConstraint, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 4, !tbaa !229
  %3 = getelementptr inbounds %struct.bStretchToConstraint, ptr %0, i64 0, i32 3
  store i32 0, ptr %3, align 8, !tbaa !231
  %4 = getelementptr inbounds %struct.bStretchToConstraint, ptr %0, i64 0, i32 4
  store float 0.000000e+00, ptr %4, align 4, !tbaa !232
  %5 = getelementptr inbounds %struct.bStretchToConstraint, ptr %0, i64 0, i32 5
  store float 1.000000e+00, ptr %5, align 8, !tbaa !233
  %6 = getelementptr inbounds %struct.bStretchToConstraint, ptr %0, i64 0, i32 7
  store float 1.000000e+00, ptr %6, align 8, !tbaa !234
  %7 = getelementptr inbounds %struct.bStretchToConstraint, ptr %0, i64 0, i32 6
  store float 1.000000e+00, ptr %7, align 4, !tbaa !235
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stretchto_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !236
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bStretchToConstraint, ptr %8, i64 0, i32 9
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @stretchto_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !236
  %17 = getelementptr inbounds %struct.bStretchToConstraint, ptr %9, i64 0, i32 9
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stretchto_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x [3 x float]], align 16
  %6 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = load ptr, ptr %2, align 8, !tbaa !86
  %9 = icmp eq ptr %8, null
  br i1 %9, label %310, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bConstraintTarget, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = icmp eq ptr %12, null
  br i1 %13, label %310, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  %15 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mat4_to_size(ptr noundef nonnull %4, ptr noundef nonnull %15) #17
  %16 = load float, ptr %15, align 4, !tbaa !56
  %17 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !56
  %19 = fmul float %18, %18
  %20 = call float @llvm.fmuladd.f32(float %16, float %16, float %19)
  %21 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !56
  %23 = call float @llvm.fmuladd.f32(float %22, float %22, float %20)
  %24 = fcmp ogt float %23, 0x38AA95A5C0000000
  br i1 %24, label %25, label %34

25:                                               ; preds = %14
  %26 = call float @sqrtf(float noundef %23) #17
  %27 = fdiv float 1.000000e+00, %26
  %28 = load float, ptr %15, align 4, !tbaa !56
  %29 = fmul float %28, %27
  %30 = load float, ptr %17, align 4, !tbaa !56
  %31 = fmul float %27, %30
  %32 = load float, ptr %21, align 4, !tbaa !56
  %33 = fmul float %27, %32
  br label %34

34:                                               ; preds = %14, %25
  %35 = phi float [ %33, %25 ], [ 0.000000e+00, %14 ]
  %36 = phi float [ %31, %25 ], [ 0.000000e+00, %14 ]
  %37 = phi float [ %29, %25 ], [ 0.000000e+00, %14 ]
  %38 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !56
  %40 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !56
  %42 = fmul float %41, %41
  %43 = call float @llvm.fmuladd.f32(float %39, float %39, float %42)
  %44 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !56
  %46 = call float @llvm.fmuladd.f32(float %45, float %45, float %43)
  %47 = fcmp ogt float %46, 0x38AA95A5C0000000
  br i1 %47, label %48, label %57

48:                                               ; preds = %34
  %49 = call float @sqrtf(float noundef %46) #17
  %50 = fdiv float 1.000000e+00, %49
  %51 = load float, ptr %38, align 4, !tbaa !56
  %52 = fmul float %51, %50
  %53 = load float, ptr %40, align 4, !tbaa !56
  %54 = fmul float %50, %53
  %55 = load float, ptr %44, align 4, !tbaa !56
  %56 = fmul float %50, %55
  br label %57

57:                                               ; preds = %34, %48
  %58 = phi float [ %56, %48 ], [ 0.000000e+00, %34 ]
  %59 = phi float [ %54, %48 ], [ 0.000000e+00, %34 ]
  %60 = phi float [ %52, %48 ], [ 0.000000e+00, %34 ]
  %61 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %62 = getelementptr inbounds %struct.bConstraintTarget, ptr %8, i64 0, i32 4, i64 3
  %63 = load float, ptr %62, align 4, !tbaa !56
  %64 = load float, ptr %61, align 4, !tbaa !56
  %65 = fsub float %63, %64
  %66 = getelementptr inbounds %struct.bConstraintTarget, ptr %8, i64 0, i32 4, i64 3, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !56
  %68 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !56
  %70 = fsub float %67, %69
  %71 = getelementptr inbounds %struct.bConstraintTarget, ptr %8, i64 0, i32 4, i64 3, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !56
  %73 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !56
  %75 = fsub float %72, %74
  %76 = fmul float %70, %70
  %77 = call float @llvm.fmuladd.f32(float %65, float %65, float %76)
  %78 = call float @llvm.fmuladd.f32(float %75, float %75, float %77)
  %79 = call float @sqrtf(float noundef %78) #17
  %80 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !56
  %82 = fdiv float %79, %81
  %83 = getelementptr inbounds %struct.bStretchToConstraint, ptr %7, i64 0, i32 4
  %84 = load float, ptr %83, align 4, !tbaa !232
  %85 = fcmp oeq float %84, 0.000000e+00
  br i1 %85, label %86, label %87

86:                                               ; preds = %57
  store float %82, ptr %83, align 4, !tbaa !232
  br label %87

87:                                               ; preds = %86, %57
  %88 = load float, ptr %83, align 4, !tbaa !232
  %89 = fdiv float %82, %88
  %90 = fdiv float %88, %82
  %91 = getelementptr inbounds %struct.bStretchToConstraint, ptr %7, i64 0, i32 5
  %92 = load float, ptr %91, align 8, !tbaa !233
  %93 = call float @powf(float noundef %90, float noundef %92) #17
  %94 = fcmp ogt float %93, 1.000000e+00
  br i1 %94, label %95, label %124

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.bStretchToConstraint, ptr %7, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !237
  %98 = and i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %124, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.bStretchToConstraint, ptr %7, i64 0, i32 7
  %102 = load float, ptr %101, align 8, !tbaa !234
  %103 = fcmp ogt float %102, 1.000000e+00
  %104 = select i1 %103, float %102, float 1.000000e+00
  %105 = fcmp olt float %93, %104
  %106 = select i1 %105, float %93, float %104
  %107 = fadd float %104, -1.000000e+00
  %108 = fcmp ogt float %107, 0.000000e+00
  %109 = fdiv float 1.000000e+00, %107
  %110 = select i1 %108, float %109, float 0.000000e+00
  %111 = fadd float %93, -1.000000e+00
  %112 = fmul float %111, %110
  %113 = call float @atanf(float noundef %112) #17
  %114 = fmul float %113, %107
  %115 = fpext float %114 to double
  %116 = fdiv double %115, 0x3FF921FB54442D18
  %117 = fadd double %116, 1.000000e+00
  %118 = fptrunc double %117 to float
  %119 = getelementptr inbounds %struct.bStretchToConstraint, ptr %7, i64 0, i32 8
  %120 = load float, ptr %119, align 4, !tbaa !238
  %121 = fsub float 1.000000e+00, %120
  %122 = fmul float %121, %106
  %123 = call float @llvm.fmuladd.f32(float %120, float %118, float %122)
  br label %124

124:                                              ; preds = %95, %100, %87
  %125 = phi float [ %123, %100 ], [ %93, %95 ], [ %93, %87 ]
  %126 = fcmp olt float %125, 1.000000e+00
  br i1 %126, label %127, label %160

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.bStretchToConstraint, ptr %7, i64 0, i32 1
  %129 = load i32, ptr %128, align 8, !tbaa !237
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %160, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.bStretchToConstraint, ptr %7, i64 0, i32 7
  %134 = load float, ptr %133, align 8, !tbaa !234
  %135 = fcmp olt float %134, 0.000000e+00
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = fcmp ogt float %134, 1.000000e+00
  br i1 %137, label %139, label %138

138:                                              ; preds = %136
  br label %139

139:                                              ; preds = %138, %136, %132
  %140 = phi float [ 0.000000e+00, %132 ], [ %134, %138 ], [ 1.000000e+00, %136 ]
  %141 = fcmp ogt float %125, %140
  %142 = select i1 %141, float %125, float %140
  %143 = fsub float 1.000000e+00, %140
  %144 = fcmp ogt float %143, 0.000000e+00
  %145 = fdiv float 1.000000e+00, %143
  %146 = select i1 %144, float %145, float 0.000000e+00
  %147 = fsub float 1.000000e+00, %125
  %148 = fmul float %147, %146
  %149 = call float @atanf(float noundef %148) #17
  %150 = fmul float %143, %149
  %151 = fpext float %150 to double
  %152 = fdiv double %151, 0x3FF921FB54442D18
  %153 = fsub double 1.000000e+00, %152
  %154 = fptrunc double %153 to float
  %155 = getelementptr inbounds %struct.bStretchToConstraint, ptr %7, i64 0, i32 8
  %156 = load float, ptr %155, align 4, !tbaa !238
  %157 = fsub float 1.000000e+00, %156
  %158 = fmul float %142, %157
  %159 = call float @llvm.fmuladd.f32(float %156, float %154, float %158)
  br label %160

160:                                              ; preds = %127, %139, %124
  %161 = phi float [ %159, %139 ], [ %125, %127 ], [ %125, %124 ]
  %162 = getelementptr inbounds %struct.bStretchToConstraint, ptr %7, i64 0, i32 2
  %163 = load i32, ptr %162, align 4, !tbaa !229
  switch i32 %163, label %309 [
    i32 0, label %164
    i32 1, label %168
    i32 2, label %166
    i32 3, label %167
  ]

164:                                              ; preds = %160
  %165 = call float @sqrtf(float noundef %161) #17
  br label %168

166:                                              ; preds = %160
  br label %168

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %160, %167, %166, %164
  %169 = phi float [ 1.000000e+00, %167 ], [ 1.000000e+00, %166 ], [ %165, %164 ], [ %161, %160 ]
  %170 = phi float [ 1.000000e+00, %167 ], [ %161, %166 ], [ %165, %164 ], [ 1.000000e+00, %160 ]
  %171 = load float, ptr %4, align 4, !tbaa !56
  %172 = fmul float %169, %171
  store float %172, ptr %15, align 8, !tbaa !56
  store float 0.000000e+00, ptr %17, align 4, !tbaa !56
  store float 0.000000e+00, ptr %21, align 8, !tbaa !56
  %173 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %173, align 8, !tbaa !56
  %174 = load float, ptr %80, align 4, !tbaa !56
  %175 = fmul float %89, %174
  %176 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 1
  store float %175, ptr %176, align 4, !tbaa !56
  %177 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 2
  store float 0.000000e+00, ptr %177, align 8, !tbaa !56
  store float 0.000000e+00, ptr %38, align 8, !tbaa !56
  store float 0.000000e+00, ptr %40, align 4, !tbaa !56
  %178 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !56
  %180 = fmul float %170, %179
  store float %180, ptr %44, align 8, !tbaa !56
  %181 = load float, ptr %61, align 4, !tbaa !56
  %182 = load float, ptr %62, align 4, !tbaa !56
  %183 = fsub float %181, %182
  %184 = load float, ptr %68, align 4, !tbaa !56
  %185 = load float, ptr %66, align 4, !tbaa !56
  %186 = fsub float %184, %185
  %187 = load float, ptr %73, align 4, !tbaa !56
  %188 = load float, ptr %71, align 4, !tbaa !56
  %189 = fsub float %187, %188
  %190 = fmul float %186, %186
  %191 = call float @llvm.fmuladd.f32(float %183, float %183, float %190)
  %192 = call float @llvm.fmuladd.f32(float %189, float %189, float %191)
  %193 = fcmp ogt float %192, 0x38AA95A5C0000000
  br i1 %193, label %194, label %200

194:                                              ; preds = %168
  %195 = call float @sqrtf(float noundef %192) #17
  %196 = fdiv float 1.000000e+00, %195
  %197 = fmul float %183, %196
  %198 = fmul float %186, %196
  %199 = fmul float %189, %196
  br label %200

200:                                              ; preds = %168, %194
  %201 = phi float [ %198, %194 ], [ 0.000000e+00, %168 ]
  %202 = phi float [ %197, %194 ], [ 0.000000e+00, %168 ]
  %203 = phi float [ %199, %194 ], [ 0.000000e+00, %168 ]
  %204 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1
  %205 = fneg float %202
  store float %205, ptr %204, align 4, !tbaa !56
  %206 = fneg float %201
  %207 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  store float %206, ptr %207, align 16, !tbaa !56
  %208 = fneg float %203
  %209 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 1, i64 2
  store float %208, ptr %209, align 4, !tbaa !56
  %210 = getelementptr inbounds %struct.bStretchToConstraint, ptr %7, i64 0, i32 3
  %211 = load i32, ptr %210, align 8, !tbaa !231
  switch i32 %211, label %308 [
    i32 0, label %212
    i32 2, label %260
  ]

212:                                              ; preds = %200
  %213 = fmul float %36, %208
  %214 = call float @llvm.fmuladd.f32(float %201, float %35, float %213)
  %215 = fmul float %35, %205
  %216 = call float @llvm.fmuladd.f32(float %203, float %37, float %215)
  %217 = fmul float %37, %206
  %218 = call float @llvm.fmuladd.f32(float %202, float %36, float %217)
  %219 = fmul float %216, %216
  %220 = call float @llvm.fmuladd.f32(float %214, float %214, float %219)
  %221 = call float @llvm.fmuladd.f32(float %218, float %218, float %220)
  %222 = fcmp ogt float %221, 0x38AA95A5C0000000
  br i1 %222, label %223, label %229

223:                                              ; preds = %212
  %224 = call float @sqrtf(float noundef %221) #17
  %225 = fdiv float 1.000000e+00, %224
  %226 = fmul float %214, %225
  %227 = fmul float %216, %225
  %228 = fmul float %218, %225
  br label %229

229:                                              ; preds = %212, %223
  %230 = phi float [ %227, %223 ], [ 0.000000e+00, %212 ]
  %231 = phi float [ %226, %223 ], [ 0.000000e+00, %212 ]
  %232 = phi float [ %228, %223 ], [ 0.000000e+00, %212 ]
  %233 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  store float %231, ptr %233, align 8, !tbaa !56
  %234 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  store float %230, ptr %234, align 4, !tbaa !56
  %235 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  store float %232, ptr %235, align 16, !tbaa !56
  %236 = fneg float %232
  %237 = fmul float %201, %236
  %238 = call float @llvm.fmuladd.f32(float %230, float %203, float %237)
  %239 = fneg float %231
  %240 = fmul float %203, %239
  %241 = call float @llvm.fmuladd.f32(float %232, float %202, float %240)
  %242 = fneg float %230
  %243 = fmul float %202, %242
  %244 = call float @llvm.fmuladd.f32(float %231, float %201, float %243)
  %245 = fmul float %241, %241
  %246 = call float @llvm.fmuladd.f32(float %238, float %238, float %245)
  %247 = call float @llvm.fmuladd.f32(float %244, float %244, float %246)
  %248 = fcmp ogt float %247, 0x38AA95A5C0000000
  br i1 %248, label %249, label %257

249:                                              ; preds = %229
  %250 = call float @sqrtf(float noundef %247) #17
  %251 = fdiv float 1.000000e+00, %250
  %252 = fmul float %238, %251
  store float %252, ptr %5, align 16, !tbaa !56
  %253 = fmul float %241, %251
  %254 = getelementptr inbounds float, ptr %5, i64 1
  store float %253, ptr %254, align 4, !tbaa !56
  %255 = fmul float %244, %251
  %256 = getelementptr inbounds float, ptr %5, i64 2
  store float %255, ptr %256, align 8, !tbaa !56
  br label %308

257:                                              ; preds = %229
  store float 0.000000e+00, ptr %5, align 16, !tbaa !56
  %258 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %258, align 4, !tbaa !56
  %259 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %259, align 8, !tbaa !56
  br label %308

260:                                              ; preds = %200
  %261 = fmul float %59, %208
  %262 = call float @llvm.fmuladd.f32(float %201, float %58, float %261)
  %263 = fmul float %58, %205
  %264 = call float @llvm.fmuladd.f32(float %203, float %60, float %263)
  %265 = fmul float %60, %206
  %266 = call float @llvm.fmuladd.f32(float %202, float %59, float %265)
  %267 = fmul float %264, %264
  %268 = call float @llvm.fmuladd.f32(float %262, float %262, float %267)
  %269 = call float @llvm.fmuladd.f32(float %266, float %266, float %268)
  %270 = fcmp ogt float %269, 0x38AA95A5C0000000
  br i1 %270, label %271, label %277

271:                                              ; preds = %260
  %272 = call float @sqrtf(float noundef %269) #17
  %273 = fdiv float 1.000000e+00, %272
  %274 = fmul float %262, %273
  %275 = fmul float %264, %273
  %276 = fmul float %266, %273
  br label %277

277:                                              ; preds = %260, %271
  %278 = phi float [ %275, %271 ], [ 0.000000e+00, %260 ]
  %279 = phi float [ %274, %271 ], [ 0.000000e+00, %260 ]
  %280 = phi float [ %276, %271 ], [ 0.000000e+00, %260 ]
  %281 = fneg float %279
  store float %281, ptr %5, align 16, !tbaa !56
  %282 = fneg float %278
  %283 = getelementptr inbounds float, ptr %5, i64 1
  store float %282, ptr %283, align 4, !tbaa !56
  %284 = fneg float %280
  %285 = getelementptr inbounds float, ptr %5, i64 2
  store float %284, ptr %285, align 8, !tbaa !56
  %286 = fmul float %201, %284
  %287 = call float @llvm.fmuladd.f32(float %278, float %203, float %286)
  %288 = fmul float %203, %281
  %289 = call float @llvm.fmuladd.f32(float %280, float %202, float %288)
  %290 = fmul float %202, %282
  %291 = call float @llvm.fmuladd.f32(float %279, float %201, float %290)
  %292 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2
  %293 = fmul float %289, %289
  %294 = call float @llvm.fmuladd.f32(float %287, float %287, float %293)
  %295 = call float @llvm.fmuladd.f32(float %291, float %291, float %294)
  %296 = fcmp ogt float %295, 0x38AA95A5C0000000
  br i1 %296, label %297, label %305

297:                                              ; preds = %277
  %298 = call float @sqrtf(float noundef %295) #17
  %299 = fdiv float 1.000000e+00, %298
  %300 = fmul float %287, %299
  store float %300, ptr %292, align 8, !tbaa !56
  %301 = fmul float %289, %299
  %302 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  store float %301, ptr %302, align 4, !tbaa !56
  %303 = fmul float %291, %299
  %304 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  store float %303, ptr %304, align 16, !tbaa !56
  br label %308

305:                                              ; preds = %277
  store float 0.000000e+00, ptr %292, align 8, !tbaa !56
  %306 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 1
  store float 0.000000e+00, ptr %306, align 4, !tbaa !56
  %307 = getelementptr inbounds [3 x [3 x float]], ptr %5, i64 0, i64 2, i64 2
  store float 0.000000e+00, ptr %307, align 16, !tbaa !56
  br label %308

308:                                              ; preds = %305, %297, %257, %249, %200
  call void @mul_m4_m3m4(ptr noundef nonnull %15, ptr noundef nonnull %5, ptr noundef nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %310

309:                                              ; preds = %160
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %310

310:                                              ; preds = %3, %10, %308, %309
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atanf(float noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal void @minmax_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @minmax_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %0, i64 0, i32 1
  store i32 2, ptr %2, align 8, !tbaa !239
  %3 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %0, i64 0, i32 2
  store float 0.000000e+00, ptr %3, align 4, !tbaa !241
  %4 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %0, i64 0, i32 8
  store float 0.000000e+00, ptr %4, align 4, !tbaa !56
  %5 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %0, i64 0, i32 8, i64 1
  store float 0.000000e+00, ptr %5, align 4, !tbaa !56
  %6 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %0, i64 0, i32 8, i64 2
  store float 0.000000e+00, ptr %6, align 4, !tbaa !56
  %7 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !242
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @minmax_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !243
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %8, i64 0, i32 9
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @minmax_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !243
  %17 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 9
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @minmax_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %2, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %132, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = icmp eq ptr %14, null
  br i1 %15, label %132, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  %17 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %17) #17
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 4
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %18) #17
  %19 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !242
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %7) #17
  call void @unit_m4(ptr noundef nonnull %6) #17
  br label %25

25:                                               ; preds = %23, %16
  %26 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !239
  switch i32 %27, label %131 [
    i32 2, label %28
    i32 1, label %36
    i32 0, label %44
    i32 5, label %52
    i32 4, label %60
    i32 3, label %68
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 2
  %30 = load float, ptr %29, align 8, !tbaa !56
  %31 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  %32 = load float, ptr %31, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 2
  %34 = load float, ptr %33, align 4, !tbaa !241
  %35 = fsub float %32, %34
  br label %76

36:                                               ; preds = %25
  %37 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !56
  %39 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !56
  %41 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 2
  %42 = load float, ptr %41, align 4, !tbaa !241
  %43 = fsub float %40, %42
  br label %76

44:                                               ; preds = %25
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %46 = load float, ptr %45, align 16, !tbaa !56
  %47 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %48 = load float, ptr %47, align 16, !tbaa !56
  %49 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 2
  %50 = load float, ptr %49, align 4, !tbaa !241
  %51 = fsub float %48, %50
  br label %76

52:                                               ; preds = %25
  %53 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 2
  %54 = load float, ptr %53, align 8, !tbaa !56
  %55 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  %56 = load float, ptr %55, align 8, !tbaa !56
  %57 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 2
  %58 = load float, ptr %57, align 4, !tbaa !241
  %59 = fsub float %56, %58
  br label %76

60:                                               ; preds = %25
  %61 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !56
  %63 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !56
  %65 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 2
  %66 = load float, ptr %65, align 4, !tbaa !241
  %67 = fsub float %64, %66
  br label %76

68:                                               ; preds = %25
  %69 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %70 = load float, ptr %69, align 16, !tbaa !56
  %71 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %72 = load float, ptr %71, align 16, !tbaa !56
  %73 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 2
  %74 = load float, ptr %73, align 4, !tbaa !241
  %75 = fsub float %72, %74
  br label %76

76:                                               ; preds = %68, %60, %52, %44, %36, %28
  %77 = phi float [ %75, %68 ], [ %67, %60 ], [ %59, %52 ], [ %46, %44 ], [ %38, %36 ], [ %30, %28 ]
  %78 = phi float [ %70, %68 ], [ %62, %60 ], [ %54, %52 ], [ %51, %44 ], [ %43, %36 ], [ %35, %28 ]
  %79 = phi i64 [ 0, %68 ], [ 1, %60 ], [ 2, %52 ], [ 0, %44 ], [ 1, %36 ], [ 2, %28 ]
  %80 = fcmp ogt float %77, %78
  br i1 %80, label %81, label %127

81:                                               ; preds = %76
  %82 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 %79
  %83 = load float, ptr %82, align 4, !tbaa !56
  %84 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 2
  %85 = load float, ptr %84, align 4, !tbaa !241
  %86 = fadd float %83, %85
  %87 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %88 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 %79
  store float %86, ptr %88, align 4, !tbaa !56
  %89 = load i32, ptr %19, align 8, !tbaa !242
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %113, label %92

92:                                               ; preds = %81
  %93 = and i32 %89, 2
  %94 = icmp eq i32 %93, 0
  %95 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 8
  br i1 %94, label %104, label %96

96:                                               ; preds = %92
  %97 = load float, ptr %95, align 4, !tbaa !56
  store float %97, ptr %87, align 16, !tbaa !56
  %98 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 8, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !56
  %100 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  store float %99, ptr %100, align 4, !tbaa !56
  %101 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 8, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !56
  %103 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  store float %102, ptr %103, align 8, !tbaa !56
  br label %113

104:                                              ; preds = %92
  %105 = load float, ptr %87, align 16, !tbaa !56
  store float %105, ptr %95, align 4, !tbaa !56
  %106 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !56
  %108 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 8, i64 1
  store float %107, ptr %108, align 4, !tbaa !56
  %109 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  %110 = load float, ptr %109, align 8, !tbaa !56
  %111 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 8, i64 2
  store float %110, ptr %111, align 4, !tbaa !56
  %112 = or disjoint i32 %89, 2
  store i32 %112, ptr %19, align 8, !tbaa !242
  br label %113

113:                                              ; preds = %96, %104, %81
  %114 = load i32, ptr %19, align 8, !tbaa !242
  %115 = and i32 %114, 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %18, ptr noundef nonnull %4) #17
  call void @copy_m4_m4(ptr noundef nonnull %17, ptr noundef nonnull %7) #17
  br label %130

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %120 = load float, ptr %87, align 16, !tbaa !56
  store float %120, ptr %119, align 4, !tbaa !56
  %121 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !56
  %123 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  store float %122, ptr %123, align 4, !tbaa !56
  %124 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  %125 = load float, ptr %124, align 8, !tbaa !56
  %126 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  store float %125, ptr %126, align 4, !tbaa !56
  br label %130

127:                                              ; preds = %76
  %128 = load i32, ptr %19, align 8, !tbaa !242
  %129 = and i32 %128, -3
  store i32 %129, ptr %19, align 8, !tbaa !242
  br label %130

130:                                              ; preds = %127, %118, %117
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %132

131:                                              ; preds = %25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %132

132:                                              ; preds = %3, %12, %130, %131
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rbj_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 1
  tail call void %1(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @rbj_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %0, i64 0, i32 2
  store i32 1, ptr %2, align 8, !tbaa !244
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rbj_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !246
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 1, !tbaa !101
  %15 = zext i8 %14 to i16
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %17, align 2, !tbaa !103
  %18 = icmp eq ptr %11, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %20, align 4, !tbaa !105
  br label %21

21:                                               ; preds = %19, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @rbj_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !246
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !102
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %19, ptr %20, align 1, !tbaa !101
  br label %21

21:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %22

22:                                               ; preds = %7, %21, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clampto_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clampto_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !247
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 1, !tbaa !101
  %15 = zext i8 %14 to i16
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %17, align 2, !tbaa !103
  %18 = icmp eq ptr %11, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %20, align 4, !tbaa !105
  br label %21

21:                                               ; preds = %19, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @clampto_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !247
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !102
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %19, ptr %20, align 1, !tbaa !101
  br label %21

21:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %22

22:                                               ; preds = %7, %21, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clampto_get_tarmat(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, float %3) #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 118
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !38
  tail call void @BKE_displist_make_curveTypes(ptr noundef %15, ptr noundef nonnull %8, i8 noundef zeroext 0) #17
  br label %16

16:                                               ; preds = %6, %14, %10
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %17) #17
  br label %18

18:                                               ; preds = %4, %16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clampto_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x [4 x float]], align 16
  %12 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = load ptr, ptr %2, align 8, !tbaa !86
  %15 = icmp eq ptr %14, null
  br i1 %15, label %158, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  %19 = icmp eq ptr %18, null
  br i1 %19, label %158, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !104
  %23 = icmp eq i16 %22, 2
  br i1 %23, label %24, label %158

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #17
  %25 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %25) #17
  %26 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %27 = load float, ptr %26, align 16, !tbaa !56
  store float %27, ptr %5, align 4, !tbaa !56
  %28 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !56
  %30 = getelementptr inbounds float, ptr %5, i64 1
  store float %29, ptr %30, align 4, !tbaa !56
  %31 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  %32 = load float, ptr %31, align 8, !tbaa !56
  %33 = getelementptr inbounds float, ptr %5, i64 2
  store float %32, ptr %33, align 4, !tbaa !56
  call void @unit_m4(ptr noundef nonnull %8) #17
  %34 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0x46293E5940000000, ptr %34, align 4, !tbaa !56
  %35 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float 0x46293E5940000000, ptr %35, align 4, !tbaa !56
  store float 0x46293E5940000000, ptr %6, align 4, !tbaa !56
  %36 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %36, align 4, !tbaa !56
  %37 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %37, align 4, !tbaa !56
  store float 0xC6293E5940000000, ptr %7, align 4, !tbaa !56
  %38 = load ptr, ptr %17, align 8, !tbaa !99
  call void @BKE_object_minmax(ptr noundef %38, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 1) #17
  %39 = load ptr, ptr %13, align 8, !tbaa !247
  %40 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 118
  %41 = load ptr, ptr %40, align 8, !tbaa !120
  %42 = icmp eq ptr %41, null
  br i1 %42, label %148, label %43

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.CurveCache, ptr %41, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !153
  %46 = icmp eq ptr %45, null
  br i1 %46, label %148, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %45, align 8, !tbaa !155
  %49 = icmp eq ptr %48, null
  br i1 %49, label %148, label %50

50:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #17
  %51 = getelementptr inbounds %struct.bClampToConstraint, ptr %13, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !249
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load float, ptr %7, align 4, !tbaa !56
  %56 = load float, ptr %6, align 4, !tbaa !56
  %57 = fsub float %55, %56
  %58 = load float, ptr %37, align 4, !tbaa !56
  %59 = load float, ptr %35, align 4, !tbaa !56
  %60 = fsub float %58, %59
  %61 = load float, ptr %36, align 4, !tbaa !56
  %62 = load float, ptr %34, align 4, !tbaa !56
  %63 = fsub float %61, %62
  %64 = fcmp ogt float %63, %57
  %65 = fcmp ogt float %63, %60
  %66 = select i1 %64, i1 %65, i1 false
  %67 = fcmp ogt float %60, %57
  %68 = fcmp ogt float %60, %63
  %69 = select i1 %67, i1 %68, i1 false
  %70 = zext i1 %69 to i64
  %71 = select i1 %66, i64 2, i64 %70
  br label %75

72:                                               ; preds = %50
  %73 = zext i32 %52 to i64
  %74 = add nsw i64 %73, -1
  br label %75

75:                                               ; preds = %72, %54
  %76 = phi i64 [ %71, %54 ], [ %74, %72 ]
  %77 = getelementptr inbounds %struct.bClampToConstraint, ptr %13, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !250
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  %81 = shl i64 %76, 48
  %82 = ashr exact i64 %81, 48
  %83 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %82
  %84 = load float, ptr %83, align 4, !tbaa !56
  br i1 %80, label %116, label %85

85:                                               ; preds = %75
  %86 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %82
  %87 = load float, ptr %86, align 4, !tbaa !56
  %88 = fsub float %87, %84
  %89 = call float @llvm.fabs.f32(float %88)
  %90 = fcmp ult float %89, 0x3E80000000000000
  br i1 %90, label %131, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %82
  %93 = load float, ptr %92, align 4, !tbaa !56
  %94 = fcmp olt float %93, %84
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = fsub float %84, %93
  %97 = fdiv float %96, %88
  %98 = call float @llvm.ceil.f32(float %97)
  %99 = fneg float %98
  %100 = call float @llvm.fmuladd.f32(float %99, float %88, float %84)
  %101 = fsub float %93, %100
  %102 = fdiv float %101, %88
  br label %131

103:                                              ; preds = %91
  %104 = fcmp ogt float %93, %87
  br i1 %104, label %105, label %113

105:                                              ; preds = %103
  %106 = fsub float %93, %87
  %107 = fdiv float %106, %88
  %108 = fptosi float %107 to i32
  %109 = sitofp i32 %108 to float
  %110 = call float @llvm.fmuladd.f32(float %109, float %88, float %87)
  %111 = fsub float %93, %110
  %112 = fdiv float %111, %88
  br label %131

113:                                              ; preds = %103
  %114 = fsub float %93, %84
  %115 = fdiv float %114, %88
  br label %131

116:                                              ; preds = %75
  %117 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %82
  %118 = load float, ptr %117, align 4, !tbaa !56
  %119 = fcmp ugt float %118, %84
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %82
  %122 = load float, ptr %121, align 4, !tbaa !56
  %123 = fcmp ult float %118, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = fsub float %122, %84
  %126 = call float @llvm.fabs.f32(float %125)
  %127 = fcmp ult float %126, 0x3E80000000000000
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = fsub float %118, %84
  %130 = fdiv float %129, %125
  br label %131

131:                                              ; preds = %124, %120, %116, %105, %113, %95, %85, %128
  %132 = phi float [ %130, %128 ], [ %102, %95 ], [ %112, %105 ], [ %115, %113 ], [ 0.000000e+00, %85 ], [ 0.000000e+00, %116 ], [ 1.000000e+00, %120 ], [ 0.000000e+00, %124 ]
  %133 = load ptr, ptr %17, align 8, !tbaa !99
  %134 = call i32 @where_on_path(ptr noundef %133, float noundef %132, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef null) #17
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %131
  call void @unit_m4(ptr noundef nonnull %11) #17
  %137 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3
  %138 = load float, ptr %9, align 16, !tbaa !56
  store float %138, ptr %137, align 16, !tbaa !56
  %139 = getelementptr inbounds float, ptr %9, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !56
  %141 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3, i64 1
  store float %140, ptr %141, align 4, !tbaa !56
  %142 = getelementptr inbounds float, ptr %9, i64 2
  %143 = load float, ptr %142, align 8, !tbaa !56
  %144 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3, i64 2
  store float %143, ptr %144, align 8, !tbaa !56
  %145 = load ptr, ptr %17, align 8, !tbaa !99
  %146 = getelementptr inbounds %struct.Object, ptr %145, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %146, ptr noundef nonnull %11) #17
  br label %147

147:                                              ; preds = %136, %131
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #17
  br label %148

148:                                              ; preds = %147, %47, %43, %24
  %149 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %150 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3
  %151 = load float, ptr %150, align 16, !tbaa !56
  store float %151, ptr %149, align 4, !tbaa !56
  %152 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !56
  %154 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  store float %153, ptr %154, align 4, !tbaa !56
  %155 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3, i64 2
  %156 = load float, ptr %155, align 8, !tbaa !56
  %157 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  store float %156, ptr %157, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %158

158:                                              ; preds = %148, %20, %16, %3
  ret void
}

declare void @BKE_object_minmax(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #10

; Function Attrs: nounwind uwtable
define internal void @transform_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @transform_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bTransformConstraint, ptr %0, i64 0, i32 4
  store i8 0, ptr %2, align 4, !tbaa !70
  %3 = getelementptr inbounds %struct.bTransformConstraint, ptr %0, i64 0, i32 4, i64 1
  store i8 1, ptr %3, align 1, !tbaa !70
  %4 = getelementptr inbounds %struct.bTransformConstraint, ptr %0, i64 0, i32 4, i64 2
  store i8 2, ptr %4, align 2, !tbaa !70
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @transform_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !251
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bTransformConstraint, ptr %8, i64 0, i32 1
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @transform_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !251
  %17 = getelementptr inbounds %struct.bTransformConstraint, ptr %9, i64 0, i32 1
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @transform_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = load ptr, ptr %2, align 8, !tbaa !86
  %12 = icmp eq ptr %11, null
  br i1 %12, label %182, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = icmp eq ptr %15, null
  br i1 %16, label %182, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  %18 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !253
  switch i16 %19, label %42 [
    i16 2, label %20
    i16 1, label %36
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4
  call void @mat4_to_size(ptr noundef nonnull %7, ptr noundef nonnull %21) #17
  %22 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %21) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load float, ptr %7, align 4, !tbaa !56
  %26 = fneg float %25
  store float %26, ptr %7, align 4, !tbaa !56
  %27 = getelementptr inbounds float, ptr %7, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !56
  %29 = fneg float %28
  store float %29, ptr %27, align 4, !tbaa !56
  %30 = getelementptr inbounds float, ptr %7, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !56
  %32 = fneg float %31
  store float %32, ptr %30, align 4, !tbaa !56
  br label %33

33:                                               ; preds = %24, %20
  %34 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 14
  %35 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 15
  br label %53

36:                                               ; preds = %17
  %37 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 6
  %38 = load i16, ptr %37, align 2, !tbaa !43
  %39 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4
  call void @mat4_to_eulO(ptr noundef nonnull %7, i16 noundef signext %38, ptr noundef nonnull %39) #17
  %40 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 10
  %41 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 11
  br label %53

42:                                               ; preds = %17
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 3
  %44 = load float, ptr %43, align 4, !tbaa !56
  store float %44, ptr %7, align 4, !tbaa !56
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 3, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !56
  %47 = getelementptr inbounds float, ptr %7, i64 1
  store float %46, ptr %47, align 4, !tbaa !56
  %48 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 3, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !56
  %50 = getelementptr inbounds float, ptr %7, i64 2
  store float %49, ptr %50, align 4, !tbaa !56
  %51 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 6
  %52 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 7
  br label %53

53:                                               ; preds = %42, %36, %33
  %54 = phi ptr [ %51, %42 ], [ %40, %36 ], [ %34, %33 ]
  %55 = phi ptr [ %52, %42 ], [ %41, %36 ], [ %35, %33 ]
  %56 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %57 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %58 = load float, ptr %57, align 4, !tbaa !56
  store float %58, ptr %4, align 4, !tbaa !56
  %59 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !56
  %61 = getelementptr inbounds float, ptr %4, i64 1
  store float %60, ptr %61, align 4, !tbaa !56
  %62 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !56
  %64 = getelementptr inbounds float, ptr %4, i64 2
  store float %63, ptr %64, align 4, !tbaa !56
  %65 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 6
  %66 = load i16, ptr %65, align 2, !tbaa !43
  call void @mat4_to_eulO(ptr noundef nonnull %5, i16 noundef signext %66, ptr noundef nonnull %56) #17
  call void @mat4_to_size(ptr noundef nonnull %6, ptr noundef nonnull %56) #17
  %67 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 5
  %68 = load i8, ptr %67, align 1, !tbaa !254
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %53, %83
  %71 = phi i64 [ %86, %83 ], [ 0, %53 ]
  %72 = getelementptr inbounds float, ptr %55, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !56
  %74 = getelementptr inbounds float, ptr %54, i64 %71
  %75 = load float, ptr %74, align 4, !tbaa !56
  %76 = fsub float %73, %75
  %77 = fcmp une float %76, 0.000000e+00
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %71
  %80 = load float, ptr %79, align 4, !tbaa !56
  %81 = fsub float %80, %75
  %82 = fdiv float %81, %76
  br label %83

83:                                               ; preds = %70, %78
  %84 = phi float [ %82, %78 ], [ 0.000000e+00, %70 ]
  %85 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %71
  store float %84, ptr %85, align 4, !tbaa !56
  %86 = add nuw nsw i64 %71, 1
  %87 = icmp eq i64 %86, 3
  br i1 %87, label %116, label %70, !llvm.loop !255

88:                                               ; preds = %53, %111
  %89 = phi i64 [ %114, %111 ], [ 0, %53 ]
  %90 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %89
  %91 = load float, ptr %90, align 4, !tbaa !56
  %92 = getelementptr inbounds float, ptr %54, i64 %89
  %93 = load float, ptr %92, align 4, !tbaa !56
  %94 = fcmp olt float %91, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds float, ptr %55, i64 %89
  %97 = load float, ptr %96, align 4, !tbaa !56
  %98 = fcmp ogt float %91, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95, %88
  %100 = phi float [ %93, %88 ], [ %97, %95 ]
  store float %100, ptr %90, align 4, !tbaa !56
  br label %101

101:                                              ; preds = %99, %95
  %102 = getelementptr inbounds float, ptr %55, i64 %89
  %103 = load float, ptr %102, align 4, !tbaa !56
  %104 = load float, ptr %92, align 4, !tbaa !56
  %105 = fsub float %103, %104
  %106 = fcmp une float %105, 0.000000e+00
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load float, ptr %90, align 4, !tbaa !56
  %109 = fsub float %108, %104
  %110 = fdiv float %109, %105
  br label %111

111:                                              ; preds = %101, %107
  %112 = phi float [ %110, %107 ], [ 0.000000e+00, %101 ]
  %113 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %89
  store float %112, ptr %113, align 4, !tbaa !56
  %114 = add nuw nsw i64 %89, 1
  %115 = icmp eq i64 %114, 3
  br i1 %115, label %116, label %88, !llvm.loop !256

116:                                              ; preds = %83, %111
  %117 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 3
  %118 = load i16, ptr %117, align 2, !tbaa !257
  switch i16 %118, label %159 [
    i16 2, label %119
    i16 1, label %138
  ]

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 16
  %121 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 17
  br label %122

122:                                              ; preds = %119, %122
  %123 = phi i64 [ 0, %119 ], [ %136, %122 ]
  %124 = getelementptr inbounds float, ptr %120, i64 %123
  %125 = load float, ptr %124, align 4, !tbaa !56
  %126 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 4, i64 %123
  %127 = load i8, ptr %126, align 1, !tbaa !70
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %128
  %130 = load float, ptr %129, align 4, !tbaa !56
  %131 = getelementptr inbounds float, ptr %121, i64 %123
  %132 = load float, ptr %131, align 4, !tbaa !56
  %133 = fsub float %132, %125
  %134 = call float @llvm.fmuladd.f32(float %130, float %133, float %125)
  %135 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %123
  store float %134, ptr %135, align 4, !tbaa !56
  %136 = add nuw nsw i64 %123, 1
  %137 = icmp eq i64 %136, 3
  br i1 %137, label %180, label %122, !llvm.loop !258

138:                                              ; preds = %116
  %139 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 12
  %140 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 13
  br label %141

141:                                              ; preds = %138, %141
  %142 = phi i64 [ 0, %138 ], [ %157, %141 ]
  %143 = getelementptr inbounds float, ptr %139, i64 %142
  %144 = load float, ptr %143, align 4, !tbaa !56
  %145 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 4, i64 %142
  %146 = load i8, ptr %145, align 1, !tbaa !70
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %147
  %149 = load float, ptr %148, align 4, !tbaa !56
  %150 = getelementptr inbounds float, ptr %140, i64 %142
  %151 = load float, ptr %150, align 4, !tbaa !56
  %152 = fsub float %151, %144
  %153 = call float @llvm.fmuladd.f32(float %149, float %152, float %144)
  %154 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %142
  %155 = load float, ptr %154, align 4, !tbaa !56
  %156 = fadd float %155, %153
  store float %156, ptr %154, align 4, !tbaa !56
  %157 = add nuw nsw i64 %142, 1
  %158 = icmp eq i64 %157, 3
  br i1 %158, label %180, label %141, !llvm.loop !259

159:                                              ; preds = %116
  %160 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 8
  %161 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 9
  br label %162

162:                                              ; preds = %159, %162
  %163 = phi i64 [ 0, %159 ], [ %178, %162 ]
  %164 = getelementptr inbounds float, ptr %160, i64 %163
  %165 = load float, ptr %164, align 4, !tbaa !56
  %166 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 4, i64 %163
  %167 = load i8, ptr %166, align 1, !tbaa !70
  %168 = zext i8 %167 to i64
  %169 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %168
  %170 = load float, ptr %169, align 4, !tbaa !56
  %171 = getelementptr inbounds float, ptr %161, i64 %163
  %172 = load float, ptr %171, align 4, !tbaa !56
  %173 = fsub float %172, %165
  %174 = call float @llvm.fmuladd.f32(float %170, float %173, float %165)
  %175 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %163
  %176 = load float, ptr %175, align 4, !tbaa !56
  %177 = fadd float %176, %174
  store float %177, ptr %175, align 4, !tbaa !56
  %178 = add nuw nsw i64 %163, 1
  %179 = icmp eq i64 %178, 3
  br i1 %179, label %180, label %162, !llvm.loop !260

180:                                              ; preds = %141, %122, %162
  %181 = load i16, ptr %65, align 2, !tbaa !43
  call void @loc_eulO_size_to_mat4(ptr noundef nonnull %56, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext %181) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %182

182:                                              ; preds = %180, %13, %3
  ret void
}

declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @shrinkwrap_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @shrinkwrap_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %0, i64 0, i32 3
  store i8 2, ptr %2, align 2, !tbaa !261
  %3 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %0, i64 0, i32 4
  store i8 1, ptr %3, align 1, !tbaa !263
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @shrinkwrap_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !264
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 1, !tbaa !101
  %15 = zext i8 %14 to i16
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %17, align 2, !tbaa !103
  %18 = icmp eq ptr %11, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %20, align 4, !tbaa !105
  br label %21

21:                                               ; preds = %19, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @shrinkwrap_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !264
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !102
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %19, ptr %20, align 1, !tbaa !101
  br label %21

21:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %22

22:                                               ; preds = %7, %21, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @shrinkwrap_get_tarmat(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, float %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.SpaceTransform, align 4
  %7 = alloca %struct.BVHTreeFromMesh, align 8
  %8 = alloca %struct.BVHTreeNearest, align 4
  %9 = alloca %struct.BVHTreeRayHit, align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = icmp eq ptr %2, null
  br i1 %14, label %163, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = icmp eq ptr %17, null
  br i1 %18, label %163, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !104
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %163

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #17
  %24 = tail call ptr @object_get_derived_final(ptr noundef nonnull %17, i8 noundef zeroext 0) #17
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  %25 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %25) #17
  %26 = icmp eq ptr %24, null
  br i1 %26, label %162, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %29 = load ptr, ptr %16, align 8, !tbaa !99
  %30 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 47
  call void @BLI_space_transform_from_matrices(ptr noundef nonnull %6, ptr noundef nonnull %28, ptr noundef nonnull %30) #17
  %31 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %13, i64 0, i32 2
  %32 = load i16, ptr %31, align 4, !tbaa !265
  switch i16 %32, label %144 [
    i16 0, label %33
    i16 2, label %33
    i16 1, label %76
  ]

33:                                               ; preds = %27, %27
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #17
  store i32 -1, ptr %8, align 4, !tbaa !266
  %34 = getelementptr inbounds %struct.BVHTreeNearest, ptr %8, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %34, align 4, !tbaa !268
  %35 = load i16, ptr %31, align 4, !tbaa !265
  %36 = icmp eq i16 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call ptr @bvhtree_from_mesh_verts(ptr noundef nonnull %7, ptr noundef nonnull %24, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #17
  br label %41

39:                                               ; preds = %33
  %40 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %7, ptr noundef nonnull %24, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #17
  br label %41

41:                                               ; preds = %39, %37
  %42 = load ptr, ptr %7, align 8, !tbaa !269
  %43 = icmp eq ptr %42, null
  br i1 %43, label %74, label %44

44:                                               ; preds = %41
  call void @BLI_space_transform_apply(ptr noundef nonnull %6, ptr noundef nonnull %5) #17
  %45 = load ptr, ptr %7, align 8, !tbaa !269
  %46 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %7, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !271
  %48 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %45, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef %47, ptr noundef nonnull %7) #17
  %49 = getelementptr inbounds %struct.BVHTreeNearest, ptr %8, i64 0, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !56
  %51 = load float, ptr %5, align 4, !tbaa !56
  %52 = fsub float %50, %51
  %53 = getelementptr inbounds %struct.BVHTreeNearest, ptr %8, i64 0, i32 1, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !56
  %55 = getelementptr inbounds float, ptr %5, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !56
  %57 = fsub float %54, %56
  %58 = getelementptr inbounds %struct.BVHTreeNearest, ptr %8, i64 0, i32 1, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !56
  %60 = getelementptr inbounds float, ptr %5, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !56
  %62 = fsub float %59, %61
  %63 = fmul float %57, %57
  %64 = call float @llvm.fmuladd.f32(float %52, float %52, float %63)
  %65 = call float @llvm.fmuladd.f32(float %62, float %62, float %64)
  %66 = call float @sqrtf(float noundef %65) #17
  %67 = fcmp une float %66, 0.000000e+00
  br i1 %67, label %68, label %73

68:                                               ; preds = %44
  %69 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %13, i64 0, i32 1
  %70 = load float, ptr %69, align 8, !tbaa !272
  %71 = fsub float %66, %70
  %72 = fdiv float %71, %66
  call void @interp_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %49, float noundef %72) #17
  br label %73

73:                                               ; preds = %68, %44
  call void @BLI_space_transform_invert(ptr noundef nonnull %6, ptr noundef nonnull %5) #17
  br label %74

74:                                               ; preds = %41, %73
  %75 = phi i32 [ 0, %73 ], [ 1, %41 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #17
  br label %144

76:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  store i32 -1, ptr %9, align 4, !tbaa !273
  %77 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %13, i64 0, i32 5
  %78 = load float, ptr %77, align 8, !tbaa !275
  %79 = fcmp oeq float %78, 0.000000e+00
  %80 = select i1 %79, float 1.000000e+05, float %78
  %81 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %9, i64 0, i32 3
  store float %80, ptr %81, align 4, !tbaa !276
  %82 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %13, i64 0, i32 3
  %83 = load i8, ptr %82, align 2, !tbaa !261
  %84 = icmp ult i8 %83, 6
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = zext nneg i8 %83 to i64
  %87 = getelementptr inbounds [6 x i64], ptr @switch.table.shrinkwrap_get_tarmat, i64 0, i64 %86
  %88 = load i64, ptr %87, align 8
  %89 = zext nneg i8 %83 to i64
  %90 = getelementptr inbounds [6 x float], ptr @switch.table.shrinkwrap_get_tarmat.10, i64 0, i64 %89
  %91 = load float, ptr %90, align 4
  %92 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 %88
  store float %91, ptr %92, align 4, !tbaa !56
  br label %93

93:                                               ; preds = %76, %85
  call void @unit_m4(ptr noundef nonnull %10) #17
  %94 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !41
  %96 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !44
  %98 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %13, i64 0, i32 4
  %99 = load i8, ptr %98, align 1, !tbaa !263
  %100 = zext i8 %99 to i16
  call void @BKE_constraint_mat_convertspace(ptr noundef %95, ptr noundef %97, ptr noundef nonnull %10, i16 noundef signext 1, i16 noundef signext %100)
  %101 = call zeroext i8 @invert_m4(ptr noundef nonnull %10) #17
  call void @mul_mat3_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  %102 = load float, ptr %11, align 4, !tbaa !56
  %103 = getelementptr inbounds float, ptr %11, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !56
  %105 = fmul float %104, %104
  %106 = call float @llvm.fmuladd.f32(float %102, float %102, float %105)
  %107 = getelementptr inbounds float, ptr %11, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !56
  %109 = call float @llvm.fmuladd.f32(float %108, float %108, float %106)
  %110 = fcmp ogt float %109, 0x38AA95A5C0000000
  br i1 %110, label %111, label %121

111:                                              ; preds = %93
  %112 = call float @sqrtf(float noundef %109) #17
  %113 = fdiv float 1.000000e+00, %112
  %114 = load float, ptr %11, align 4, !tbaa !56
  %115 = fmul float %114, %113
  store float %115, ptr %11, align 4, !tbaa !56
  %116 = load float, ptr %103, align 4, !tbaa !56
  %117 = fmul float %113, %116
  store float %117, ptr %103, align 4, !tbaa !56
  %118 = load float, ptr %107, align 4, !tbaa !56
  %119 = fmul float %113, %118
  %120 = fcmp olt float %112, 0x3E80000000000000
  store float %119, ptr %107, align 4, !tbaa !56
  br i1 %120, label %142, label %122

121:                                              ; preds = %93
  store float 0.000000e+00, ptr %11, align 4, !tbaa !56
  store float 0.000000e+00, ptr %103, align 4, !tbaa !56
  store float 0.000000e+00, ptr %107, align 4, !tbaa !56
  br label %142

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %13, i64 0, i32 1
  %124 = load float, ptr %123, align 8, !tbaa !272
  %125 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %7, ptr noundef nonnull %24, float noundef %124, i32 noundef 4, i32 noundef 6) #17
  %126 = load ptr, ptr %7, align 8, !tbaa !269
  %127 = icmp eq ptr %126, null
  br i1 %127, label %142, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %7, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !277
  %131 = call zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext 0, ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %126, ptr noundef nonnull %9, ptr noundef %130, ptr noundef nonnull %7) #17
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %9, i64 0, i32 1
  %135 = load float, ptr %134, align 4, !tbaa !56
  store float %135, ptr %5, align 4, !tbaa !56
  %136 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %9, i64 0, i32 1, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !56
  %138 = getelementptr inbounds float, ptr %5, i64 1
  store float %137, ptr %138, align 4, !tbaa !56
  %139 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %9, i64 0, i32 1, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !56
  %141 = getelementptr inbounds float, ptr %5, i64 2
  store float %140, ptr %141, align 4, !tbaa !56
  br label %142

142:                                              ; preds = %121, %128, %122, %111, %133
  %143 = phi i32 [ 0, %133 ], [ 1, %111 ], [ 1, %122 ], [ 1, %128 ], [ 1, %121 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #17
  br label %144

144:                                              ; preds = %27, %142, %74
  %145 = phi i32 [ 0, %27 ], [ %143, %142 ], [ %75, %74 ]
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %7) #17
  %146 = getelementptr inbounds %struct.DerivedMesh, ptr %24, i64 0, i32 95
  %147 = load ptr, ptr %146, align 8, !tbaa !119
  call void %147(ptr noundef nonnull %24) #17
  %148 = and i32 %145, 255
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  store float 0.000000e+00, ptr %5, align 4, !tbaa !56
  %151 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %151, align 4, !tbaa !56
  %152 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %152, align 4, !tbaa !56
  br label %153

153:                                              ; preds = %150, %144
  call void @mul_m4_v3(ptr noundef nonnull %28, ptr noundef nonnull %5) #17
  %154 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4, i64 3
  %155 = load float, ptr %5, align 4, !tbaa !56
  store float %155, ptr %154, align 4, !tbaa !56
  %156 = getelementptr inbounds float, ptr %5, i64 1
  %157 = load float, ptr %156, align 4, !tbaa !56
  %158 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4, i64 3, i64 1
  store float %157, ptr %158, align 4, !tbaa !56
  %159 = getelementptr inbounds float, ptr %5, i64 2
  %160 = load float, ptr %159, align 4, !tbaa !56
  %161 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4, i64 3, i64 2
  store float %160, ptr %161, align 4, !tbaa !56
  br label %162

162:                                              ; preds = %153, %23
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  br label %163

163:                                              ; preds = %162, %19, %15, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @shrinkwrap_evaluate(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #5 {
  %4 = load ptr, ptr %2, align 8, !tbaa !86
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 4, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !56
  store float %13, ptr %11, align 4, !tbaa !56
  %14 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 4, i64 3, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !56
  %16 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  store float %15, ptr %16, align 4, !tbaa !56
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 4, i64 3, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !56
  %19 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  store float %18, ptr %19, align 4, !tbaa !56
  br label %20

20:                                               ; preds = %10, %6, %3
  ret void
}

declare ptr @object_get_derived_final(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BLI_space_transform_from_matrices(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @bvhtree_from_mesh_verts(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_space_transform_apply(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_space_transform_invert(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #1

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #1

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @damptrack_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @damptrack_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %0, i64 0, i32 1
  store i32 1, ptr %2, align 8, !tbaa !278
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @damptrack_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !280
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %8, i64 0, i32 3
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @damptrack_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !280
  %17 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %9, i64 0, i32 3
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @damptrack_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %2, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %113, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = icmp eq ptr %14, null
  br i1 %15, label %113, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  %17 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %9, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !278
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [6 x [3 x float]], ptr @track_dir_vecs, i64 0, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !56
  store float %21, ptr %4, align 4, !tbaa !56
  %22 = getelementptr inbounds float, ptr %20, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !56
  %24 = getelementptr inbounds float, ptr %4, i64 1
  store float %23, ptr %24, align 4, !tbaa !56
  %25 = getelementptr inbounds float, ptr %20, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !56
  %27 = getelementptr inbounds float, ptr %4, i64 2
  store float %26, ptr %27, align 4, !tbaa !56
  %28 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mul_mat3_m4_v3(ptr noundef nonnull %28, ptr noundef nonnull %4) #17
  %29 = load float, ptr %4, align 4, !tbaa !56
  %30 = load float, ptr %24, align 4, !tbaa !56
  %31 = fmul float %30, %30
  %32 = call float @llvm.fmuladd.f32(float %29, float %29, float %31)
  %33 = load float, ptr %27, align 4, !tbaa !56
  %34 = call float @llvm.fmuladd.f32(float %33, float %33, float %32)
  %35 = fcmp ogt float %34, 0x38AA95A5C0000000
  br i1 %35, label %36, label %46

36:                                               ; preds = %16
  %37 = call float @sqrtf(float noundef %34) #17
  %38 = fdiv float 1.000000e+00, %37
  %39 = load float, ptr %4, align 4, !tbaa !56
  %40 = fmul float %39, %38
  store float %40, ptr %4, align 4, !tbaa !56
  %41 = load float, ptr %24, align 4, !tbaa !56
  %42 = fmul float %38, %41
  store float %42, ptr %24, align 4, !tbaa !56
  %43 = load float, ptr %27, align 4, !tbaa !56
  %44 = fmul float %38, %43
  %45 = fcmp oeq float %37, 0.000000e+00
  store float %44, ptr %27, align 4, !tbaa !56
  br i1 %45, label %47, label %56

46:                                               ; preds = %16
  store float 0.000000e+00, ptr %4, align 4, !tbaa !56
  store float 0.000000e+00, ptr %24, align 4, !tbaa !56
  store float 0.000000e+00, ptr %27, align 4, !tbaa !56
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32, ptr %17, align 8, !tbaa !278
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [6 x [3 x float]], ptr @track_dir_vecs, i64 0, i64 %49
  %51 = load float, ptr %50, align 4, !tbaa !56
  store float %51, ptr %4, align 4, !tbaa !56
  %52 = getelementptr inbounds float, ptr %50, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !56
  store float %53, ptr %24, align 4, !tbaa !56
  %54 = getelementptr inbounds float, ptr %50, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !56
  store float %55, ptr %27, align 4, !tbaa !56
  br label %56

56:                                               ; preds = %47, %36
  %57 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %58 = load float, ptr %57, align 4, !tbaa !56
  %59 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !56
  %61 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !56
  %63 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 4, i64 3
  %64 = load float, ptr %63, align 4, !tbaa !56
  %65 = fsub float %64, %58
  %66 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 4, i64 3, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !56
  %68 = fsub float %67, %60
  %69 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 4, i64 3, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !56
  %71 = fsub float %70, %62
  %72 = fmul float %68, %68
  %73 = call float @llvm.fmuladd.f32(float %65, float %65, float %72)
  %74 = call float @llvm.fmuladd.f32(float %71, float %71, float %73)
  %75 = fcmp ogt float %74, 0x38AA95A5C0000000
  br i1 %75, label %76, label %83

76:                                               ; preds = %56
  %77 = call float @sqrtf(float noundef %74) #17
  %78 = fdiv float 1.000000e+00, %77
  %79 = fmul float %65, %78
  %80 = fmul float %68, %78
  %81 = fmul float %71, %78
  %82 = fcmp oeq float %77, 0.000000e+00
  br label %83

83:                                               ; preds = %56, %76
  %84 = phi float [ %79, %76 ], [ 0.000000e+00, %56 ]
  %85 = phi float [ %80, %76 ], [ 0.000000e+00, %56 ]
  %86 = phi float [ %81, %76 ], [ 0.000000e+00, %56 ]
  %87 = phi i1 [ %82, %76 ], [ true, %56 ]
  %88 = load float, ptr %4, align 4
  %89 = load float, ptr %24, align 4
  %90 = load float, ptr %27, align 4
  %91 = select i1 %87, float %88, float %84
  %92 = select i1 %87, float %89, float %85
  %93 = select i1 %87, float %90, float %86
  %94 = fneg float %90
  %95 = fmul float %92, %94
  %96 = call float @llvm.fmuladd.f32(float %89, float %93, float %95)
  store float %96, ptr %5, align 4, !tbaa !56
  %97 = fneg float %88
  %98 = fmul float %93, %97
  %99 = call float @llvm.fmuladd.f32(float %90, float %91, float %98)
  %100 = getelementptr inbounds float, ptr %5, i64 1
  store float %99, ptr %100, align 4, !tbaa !56
  %101 = fneg float %89
  %102 = fmul float %91, %101
  %103 = call float @llvm.fmuladd.f32(float %88, float %92, float %102)
  %104 = getelementptr inbounds float, ptr %5, i64 2
  store float %103, ptr %104, align 4, !tbaa !56
  %105 = fmul float %89, %92
  %106 = call float @llvm.fmuladd.f32(float %88, float %91, float %105)
  %107 = call float @llvm.fmuladd.f32(float %90, float %93, float %106)
  %108 = fcmp ogt float %107, 1.000000e+00
  %109 = select i1 %108, float 1.000000e+00, float %107
  %110 = fcmp olt float %109, -1.000000e+00
  %111 = select i1 %110, float -1.000000e+00, float %109
  %112 = call float @acosf(float noundef %111) #17
  call void @axis_angle_to_mat3(ptr noundef nonnull %6, ptr noundef nonnull %5, float noundef %112) #17
  call void @unit_m4(ptr noundef nonnull %7) #17
  call void @mul_m4_m3m4(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %28) #17
  call void @copy_m4_m4(ptr noundef nonnull %28, ptr noundef nonnull %7) #17
  store float %58, ptr %57, align 4, !tbaa !56
  store float %60, ptr %59, align 4, !tbaa !56
  store float %62, ptr %61, align 4, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %113

113:                                              ; preds = %83, %12, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #11

declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @splineik_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !281
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef nonnull %5) #17
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @splineik_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @splineik_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bConstraint, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !281
  %10 = tail call ptr %7(ptr noundef %9) #17
  %11 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %6, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @splineik_new_data(ptr nocapture noundef writeonly %0) #13 {
  %2 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %0, i64 0, i32 3
  store i16 1, ptr %2, align 2, !tbaa !283
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @splineik_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !284
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 1, !tbaa !101
  %15 = zext i8 %14 to i16
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !102
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %17, align 2, !tbaa !103
  %18 = icmp eq ptr %11, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %20, align 4, !tbaa !105
  br label %21

21:                                               ; preds = %19, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @splineik_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !284
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !102
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %19, ptr %20, align 1, !tbaa !101
  br label %21

21:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %22

22:                                               ; preds = %7, %21, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @splineik_get_tarmat(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, float %3) #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 118
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !38
  tail call void @BKE_displist_make_curveTypes(ptr noundef %15, ptr noundef nonnull %8, i8 noundef zeroext 0) #17
  br label %16

16:                                               ; preds = %6, %14, %10
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %17) #17
  br label %18

18:                                               ; preds = %4, %16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @translike_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @translike_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !285
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bTransLikeConstraint, ptr %8, i64 0, i32 1
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @translike_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !285
  %17 = getelementptr inbounds %struct.bTransLikeConstraint, ptr %9, i64 0, i32 1
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @translike_evaluate(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !86
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 4
  tail call void @copy_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %12) #17
  br label %13

13:                                               ; preds = %10, %6, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @samevolume_new_data(ptr nocapture noundef writeonly %0) #13 {
  store i32 1, ptr %0, align 4, !tbaa !287
  %2 = getelementptr inbounds %struct.bSameVolumeConstraint, ptr %0, i64 0, i32 1
  store float 1.000000e+00, ptr %2, align 4, !tbaa !289
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @samevolume_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.bSameVolumeConstraint, ptr %6, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !289
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %9 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mat4_to_size(ptr noundef nonnull %4, ptr noundef nonnull %9) #17
  %10 = load i32, ptr %6, align 4, !tbaa !287
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !56
  %14 = fcmp une float %13, 0.000000e+00
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = fdiv float %8, %13
  %17 = call float @sqrtf(float noundef %16) #17
  %18 = load i32, ptr %6, align 4, !tbaa !287
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !56
  %22 = fdiv float %17, %21
  br label %23

23:                                               ; preds = %15, %3
  %24 = phi float [ %22, %15 ], [ 1.000000e+00, %3 ]
  %25 = load i32, ptr %6, align 4, !tbaa !287
  switch i32 %25, label %79 [
    i32 0, label %26
    i32 1, label %43
    i32 2, label %59
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !56
  %29 = fmul float %24, %28
  store float %29, ptr %27, align 4, !tbaa !56
  %30 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !56
  %32 = fmul float %24, %31
  store float %32, ptr %30, align 4, !tbaa !56
  %33 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !56
  %35 = fmul float %24, %34
  store float %35, ptr %33, align 4, !tbaa !56
  %36 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !56
  %38 = fmul float %24, %37
  store float %38, ptr %36, align 4, !tbaa !56
  %39 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !56
  %41 = fmul float %24, %40
  store float %41, ptr %39, align 4, !tbaa !56
  %42 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 2
  br label %75

43:                                               ; preds = %23
  %44 = load float, ptr %9, align 4, !tbaa !56
  %45 = fmul float %24, %44
  store float %45, ptr %9, align 4, !tbaa !56
  %46 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !56
  %48 = fmul float %24, %47
  store float %48, ptr %46, align 4, !tbaa !56
  %49 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !56
  %51 = fmul float %24, %50
  store float %51, ptr %49, align 4, !tbaa !56
  %52 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !56
  %54 = fmul float %24, %53
  store float %54, ptr %52, align 4, !tbaa !56
  %55 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !56
  %57 = fmul float %24, %56
  store float %57, ptr %55, align 4, !tbaa !56
  %58 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 2
  br label %75

59:                                               ; preds = %23
  %60 = load float, ptr %9, align 4, !tbaa !56
  %61 = fmul float %24, %60
  store float %61, ptr %9, align 4, !tbaa !56
  %62 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !56
  %64 = fmul float %24, %63
  store float %64, ptr %62, align 4, !tbaa !56
  %65 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !56
  %67 = fmul float %24, %66
  store float %67, ptr %65, align 4, !tbaa !56
  %68 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !56
  %70 = fmul float %24, %69
  store float %70, ptr %68, align 4, !tbaa !56
  %71 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !56
  %73 = fmul float %24, %72
  store float %73, ptr %71, align 4, !tbaa !56
  %74 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 2
  br label %75

75:                                               ; preds = %26, %43, %59
  %76 = phi ptr [ %74, %59 ], [ %58, %43 ], [ %42, %26 ]
  %77 = load float, ptr %76, align 4, !tbaa !56
  %78 = fmul float %24, %77
  store float %78, ptr %76, align 4, !tbaa !56
  br label %79

79:                                               ; preds = %75, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pivotcon_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pivotcon_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #17
  %11 = load ptr, ptr %8, align 8, !tbaa !290
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bPivotConstraint, ptr %8, i64 0, i32 1
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #17
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !101
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !103
  %21 = load ptr, ptr %12, align 8, !tbaa !99
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !104
  switch i16 %25, label %44 [
    i16 25, label %26
    i16 1, label %39
    i16 22, label %39
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #17
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !105
  %34 = icmp eq ptr %32, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %48

38:                                               ; preds = %26
  switch i16 %25, label %44 [
    i16 1, label %39
    i16 22, label %39
  ]

39:                                               ; preds = %23, %23, %38, %38
  %40 = load i8, ptr %13, align 8, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %43, align 4, !tbaa !105
  br label %48

44:                                               ; preds = %23, %38, %39
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %45, align 4, !tbaa !105
  %46 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %47 = load i16, ptr %46, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %35, %29, %42, %44
  %49 = phi i16 [ %47, %44 ], [ 1, %42 ], [ %37, %35 ], [ 1, %29 ]
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %49, ptr %50, align 2, !tbaa !107
  br label %51

51:                                               ; preds = %48, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %10) #17
  br label %52

52:                                               ; preds = %2, %51
  %53 = phi i32 [ 1, %51 ], [ 0, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal void @pivotcon_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  store ptr %16, ptr %9, align 8, !tbaa !290
  %17 = getelementptr inbounds %struct.bPivotConstraint, ptr %9, i64 0, i32 1
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #17
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !102
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !101
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #17
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pivotcon_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = load ptr, ptr %2, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %13 = getelementptr inbounds %struct.bPivotConstraint, ptr %11, i64 0, i32 3
  %14 = load i16, ptr %13, align 4, !tbaa !292
  %15 = icmp eq i16 %14, -1
  br i1 %15, label %36, label %16

16:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  %17 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 6
  %18 = load i16, ptr %17, align 2, !tbaa !43
  %19 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mat4_to_eulO(ptr noundef nonnull %8, i16 noundef signext %18, ptr noundef nonnull %19) #17
  %20 = load i16, ptr %13, align 4, !tbaa !292
  %21 = icmp slt i16 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = sext i16 %20 to i64
  %24 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !56
  %26 = fcmp ogt float %25, 0.000000e+00
  br i1 %26, label %35, label %34

27:                                               ; preds = %16
  %28 = zext nneg i16 %20 to i64
  %29 = add nuw nsw i64 %28, 4294967293
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !56
  %33 = fcmp olt float %32, 0.000000e+00
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  br label %36

35:                                               ; preds = %27, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  br label %134

36:                                               ; preds = %34, %3
  %37 = icmp eq ptr %12, null
  br i1 %37, label %58, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.bConstraintTarget, ptr %12, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !99
  %41 = icmp eq ptr %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bConstraintTarget, ptr %12, i64 0, i32 4, i64 3
  %44 = getelementptr inbounds %struct.bPivotConstraint, ptr %11, i64 0, i32 2
  %45 = load float, ptr %43, align 4, !tbaa !56
  %46 = load float, ptr %44, align 4, !tbaa !56
  %47 = fadd float %45, %46
  %48 = getelementptr inbounds %struct.bConstraintTarget, ptr %12, i64 0, i32 4, i64 3, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !56
  %50 = getelementptr inbounds %struct.bPivotConstraint, ptr %11, i64 0, i32 2, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !56
  %52 = fadd float %49, %51
  %53 = getelementptr inbounds %struct.bConstraintTarget, ptr %12, i64 0, i32 4, i64 3, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !56
  %55 = getelementptr inbounds %struct.bPivotConstraint, ptr %11, i64 0, i32 2, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !56
  %57 = fadd float %54, %56
  br label %86

58:                                               ; preds = %38, %36
  %59 = getelementptr inbounds %struct.bPivotConstraint, ptr %11, i64 0, i32 4
  %60 = load i16, ptr %59, align 2, !tbaa !293
  %61 = and i16 %60, 1
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %65 = getelementptr inbounds %struct.bPivotConstraint, ptr %11, i64 0, i32 2
  %66 = load float, ptr %64, align 4, !tbaa !56
  %67 = load float, ptr %65, align 4, !tbaa !56
  %68 = fadd float %66, %67
  %69 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !56
  %71 = getelementptr inbounds %struct.bPivotConstraint, ptr %11, i64 0, i32 2, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !56
  %73 = fadd float %70, %72
  %74 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !56
  %76 = getelementptr inbounds %struct.bPivotConstraint, ptr %11, i64 0, i32 2, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !56
  %78 = fadd float %75, %77
  br label %86

79:                                               ; preds = %58
  %80 = getelementptr inbounds %struct.bPivotConstraint, ptr %11, i64 0, i32 2
  %81 = load float, ptr %80, align 4, !tbaa !56
  %82 = getelementptr inbounds %struct.bPivotConstraint, ptr %11, i64 0, i32 2, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !56
  %84 = getelementptr inbounds %struct.bPivotConstraint, ptr %11, i64 0, i32 2, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !56
  br label %86

86:                                               ; preds = %63, %79, %42
  %87 = phi float [ %78, %63 ], [ %85, %79 ], [ %57, %42 ]
  %88 = phi float [ %73, %63 ], [ %83, %79 ], [ %52, %42 ]
  %89 = phi float [ %68, %63 ], [ %81, %79 ], [ %47, %42 ]
  %90 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %90) #17
  call void @normalize_m3(ptr noundef nonnull %5) #17
  call void @mat3_to_axis_angle(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #17
  %91 = load float, ptr %7, align 4, !tbaa !56
  %92 = fcmp une float %91, 0.000000e+00
  br i1 %92, label %93, label %113

93:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  %94 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %95 = load float, ptr %94, align 4, !tbaa !56
  %96 = fsub float %89, %95
  store float %96, ptr %4, align 4, !tbaa !56
  %97 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !56
  %99 = fsub float %88, %98
  %100 = getelementptr inbounds float, ptr %4, i64 1
  store float %99, ptr %100, align 4, !tbaa !56
  %101 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !56
  %103 = fsub float %87, %102
  %104 = getelementptr inbounds float, ptr %4, i64 2
  store float %103, ptr %104, align 4, !tbaa !56
  call void @project_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %6) #17
  %105 = load float, ptr %9, align 4, !tbaa !56
  %106 = fsub float %89, %105
  %107 = getelementptr inbounds float, ptr %9, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !56
  %109 = fsub float %88, %108
  %110 = getelementptr inbounds float, ptr %9, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !56
  %112 = fsub float %87, %111
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  br label %113

113:                                              ; preds = %93, %86
  %114 = phi float [ %112, %93 ], [ %87, %86 ]
  %115 = phi float [ %109, %93 ], [ %88, %86 ]
  %116 = phi float [ %106, %93 ], [ %89, %86 ]
  %117 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %118 = load float, ptr %117, align 4, !tbaa !56
  %119 = fsub float %118, %116
  store float %119, ptr %4, align 4, !tbaa !56
  %120 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !56
  %122 = fsub float %121, %115
  %123 = getelementptr inbounds float, ptr %4, i64 1
  store float %122, ptr %123, align 4, !tbaa !56
  %124 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !56
  %126 = fsub float %125, %114
  %127 = getelementptr inbounds float, ptr %4, i64 2
  store float %126, ptr %127, align 4, !tbaa !56
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %128 = load float, ptr %4, align 4, !tbaa !56
  %129 = fadd float %116, %128
  store float %129, ptr %117, align 4, !tbaa !56
  %130 = load float, ptr %123, align 4, !tbaa !56
  %131 = fadd float %115, %130
  store float %131, ptr %120, align 4, !tbaa !56
  %132 = load float, ptr %127, align 4, !tbaa !56
  %133 = fadd float %114, %132
  store float %133, ptr %124, align 4, !tbaa !56
  br label %134

134:                                              ; preds = %35, %113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  ret void
}

declare void @mat3_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @followtrack_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 1, ptr noundef %2) #17
  %6 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %5, i64 0, i32 5
  tail call void %1(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %2) #17
  %7 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %5, i64 0, i32 6
  tail call void %1(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @followtrack_new_data(ptr nocapture noundef %0) #15 {
  store ptr null, ptr %0, align 8, !tbaa !294
  %2 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !296
  %4 = or i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !296
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @followtrack_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca %struct.CameraParams, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [4 x [4 x float]], align 16
  %16 = alloca %struct.BVHTreeFromMesh, align 8
  %17 = alloca %struct.BVHTreeRayHit, align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [4 x [4 x float]], align 16
  %22 = load ptr, ptr %1, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = load ptr, ptr %24, align 8, !tbaa !294
  %26 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %24, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !297
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !298
  br label %32

32:                                               ; preds = %3, %29
  %33 = phi ptr [ %31, %29 ], [ %27, %3 ]
  %34 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %24, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !296
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 41
  %40 = load ptr, ptr %39, align 8, !tbaa !317
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi ptr [ %40, %38 ], [ %25, %32 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %326, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %24, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !70
  %47 = icmp ne i8 %46, 0
  %48 = icmp ne ptr %33, null
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %326

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.MovieClip, ptr %42, i64 0, i32 11
  %52 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %24, i64 0, i32 4
  %53 = load i8, ptr %52, align 8, !tbaa !70
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call ptr @BKE_tracking_object_get_named(ptr noundef nonnull %51, ptr noundef nonnull %52) #17
  br label %59

57:                                               ; preds = %50
  %58 = tail call ptr @BKE_tracking_object_get_camera(ptr noundef nonnull %51) #17
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi ptr [ %56, %55 ], [ %58, %57 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %326, label %62

62:                                               ; preds = %59
  %63 = tail call ptr @BKE_tracking_track_get_named(ptr noundef nonnull %51, ptr noundef nonnull %60, ptr noundef nonnull %45) #17
  %64 = icmp eq ptr %63, null
  br i1 %64, label %326, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 5
  %67 = load i32, ptr %66, align 8, !tbaa !318
  %68 = sitofp i32 %67 to float
  %69 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef nonnull %42, float noundef %68) #17
  %70 = fptosi float %69 to i32
  %71 = load i32, ptr %34, align 8, !tbaa !296
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %103, label %74

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 13
  %76 = load i32, ptr %75, align 8, !tbaa !319
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %326, label %79

79:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %80 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %80) #17
  %81 = getelementptr inbounds %struct.MovieTrackingObject, ptr %60, i64 0, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !321
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  %86 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %86) #17
  call void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef nonnull %51, ptr noundef nonnull %60, i32 noundef %70, ptr noundef nonnull %6) #17
  %87 = call zeroext i8 @invert_m4(ptr noundef nonnull %6) #17
  call void @_va_mul_m4_series_4(ptr noundef nonnull %80, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %88 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 11
  %89 = load float, ptr %88, align 8, !tbaa !56
  %90 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 11, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !56
  %92 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 11, i64 2
  %93 = load float, ptr %92, align 8, !tbaa !56
  call void @translate_m4(ptr noundef nonnull %80, float noundef %89, float noundef %91, float noundef %93) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  br label %102

94:                                               ; preds = %79
  %95 = load ptr, ptr %1, align 8, !tbaa !38
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %95, ptr noundef nonnull %33, ptr noundef nonnull %5) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %80, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %96 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 11
  %97 = load float, ptr %96, align 8, !tbaa !56
  %98 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 11, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !56
  %100 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 11, i64 2
  %101 = load float, ptr %100, align 8, !tbaa !56
  call void @translate_m4(ptr noundef nonnull %80, float noundef %97, float noundef %99, float noundef %101) #17
  br label %102

102:                                              ; preds = %94, %85
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %326

103:                                              ; preds = %65
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #17
  %104 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 33
  %105 = load i32, ptr %104, align 4, !tbaa !324
  %106 = sitofp i32 %105 to float
  %107 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 63
  %108 = load float, ptr %107, align 4, !tbaa !325
  %109 = fmul float %108, %106
  %110 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 34
  %111 = load i32, ptr %110, align 8, !tbaa !326
  %112 = sitofp i32 %111 to float
  %113 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 64
  %114 = load float, ptr %113, align 8, !tbaa !327
  %115 = fmul float %114, %112
  %116 = fdiv float %109, %115
  call void @BKE_object_where_is_calc_mat4(ptr noundef %22, ptr noundef nonnull %33, ptr noundef nonnull %10) #17
  store float 0.000000e+00, ptr %7, align 4, !tbaa !56
  %117 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float 0.000000e+00, ptr %117, align 4, !tbaa !56
  %118 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 1.000000e+00, ptr %118, align 4, !tbaa !56
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %7) #17
  %119 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %120 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %121 = load float, ptr %120, align 4, !tbaa !56
  store float %121, ptr %7, align 4, !tbaa !56
  %122 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !56
  store float %123, ptr %117, align 4, !tbaa !56
  %124 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !56
  store float %125, ptr %118, align 4, !tbaa !56
  %126 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3
  %127 = load float, ptr %126, align 16, !tbaa !56
  %128 = fsub float %121, %127
  store float %128, ptr %7, align 4, !tbaa !56
  %129 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !56
  %131 = fsub float %123, %130
  store float %131, ptr %117, align 4, !tbaa !56
  %132 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3, i64 2
  %133 = load float, ptr %132, align 8, !tbaa !56
  %134 = fsub float %125, %133
  store float %134, ptr %118, align 4, !tbaa !56
  call void @project_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #17
  %135 = load float, ptr %8, align 4, !tbaa !56
  %136 = getelementptr inbounds float, ptr %8, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !56
  %138 = fmul float %137, %137
  %139 = call float @llvm.fmuladd.f32(float %135, float %135, float %138)
  %140 = getelementptr inbounds float, ptr %8, i64 2
  %141 = load float, ptr %140, align 4, !tbaa !56
  %142 = call float @llvm.fmuladd.f32(float %141, float %141, float %139)
  %143 = call float @sqrtf(float noundef %142) #17
  %144 = fcmp ogt float %143, 0x3E80000000000000
  br i1 %144, label %145, label %325

145:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #17
  call void @BKE_movieclip_get_size(ptr noundef nonnull %42, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  %146 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %63, i32 noundef %70) #17
  %147 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 7
  %148 = load float, ptr %146, align 4, !tbaa !56
  %149 = load float, ptr %147, align 4, !tbaa !56
  %150 = fadd float %148, %149
  store float %150, ptr %14, align 4, !tbaa !56
  %151 = getelementptr inbounds float, ptr %146, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !56
  %153 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 7, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !56
  %155 = fadd float %152, %154
  %156 = getelementptr inbounds float, ptr %14, i64 1
  store float %155, ptr %156, align 4, !tbaa !56
  %157 = load i32, ptr %34, align 8, !tbaa !296
  %158 = and i32 %157, 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %175, label %160

160:                                              ; preds = %145
  %161 = load i32, ptr %12, align 4, !tbaa !328
  %162 = sitofp i32 %161 to float
  %163 = fmul float %150, %162
  store float %163, ptr %14, align 4, !tbaa !56
  %164 = load i32, ptr %13, align 4, !tbaa !328
  %165 = sitofp i32 %164 to float
  %166 = fmul float %155, %165
  store float %166, ptr %156, align 4, !tbaa !56
  call void @BKE_tracking_undistort_v2(ptr noundef nonnull %51, ptr noundef nonnull %14, ptr noundef nonnull %14) #17
  %167 = load i32, ptr %12, align 4, !tbaa !328
  %168 = sitofp i32 %167 to float
  %169 = load float, ptr %14, align 4, !tbaa !56
  %170 = fdiv float %169, %168
  store float %170, ptr %14, align 4, !tbaa !56
  %171 = load i32, ptr %13, align 4, !tbaa !328
  %172 = sitofp i32 %171 to float
  %173 = load float, ptr %156, align 4, !tbaa !56
  %174 = fdiv float %173, %172
  store float %174, ptr %156, align 4, !tbaa !56
  br label %175

175:                                              ; preds = %160, %145
  %176 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %24, i64 0, i32 3
  %177 = load i32, ptr %176, align 4, !tbaa !329
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %223, label %179

179:                                              ; preds = %175
  %180 = load i32, ptr %12, align 4, !tbaa !328
  %181 = sitofp i32 %180 to float
  %182 = getelementptr inbounds %struct.MovieClip, ptr %42, i64 0, i32 6
  %183 = load float, ptr %182, align 8, !tbaa !330
  %184 = fmul float %183, %181
  %185 = load i32, ptr %13, align 4, !tbaa !328
  %186 = sitofp i32 %185 to float
  %187 = getelementptr inbounds %struct.MovieClip, ptr %42, i64 0, i32 7
  %188 = load float, ptr %187, align 4, !tbaa !338
  %189 = fmul float %188, %186
  %190 = load i32, ptr %104, align 4, !tbaa !324
  %191 = sitofp i32 %190 to float
  %192 = load float, ptr %107, align 4, !tbaa !325
  %193 = fmul float %192, %191
  %194 = load i32, ptr %110, align 8, !tbaa !326
  %195 = sitofp i32 %194 to float
  %196 = load float, ptr %113, align 8, !tbaa !327
  %197 = fmul float %196, %195
  %198 = fdiv float %184, %189
  %199 = fdiv float %193, %197
  %200 = fsub float %198, %199
  %201 = call float @llvm.fabs.f32(float %200)
  %202 = fcmp ult float %201, 0x3E80000000000000
  br i1 %202, label %223, label %203

203:                                              ; preds = %179
  %204 = fcmp ogt float %198, %199
  %205 = icmp ne i32 %177, 2
  %206 = xor i1 %205, %204
  br i1 %206, label %207, label %215

207:                                              ; preds = %203
  %208 = fdiv float %198, %199
  %209 = fmul float %181, 5.000000e-01
  %210 = load float, ptr %14, align 4, !tbaa !56
  %211 = fneg float %209
  %212 = call float @llvm.fmuladd.f32(float %210, float %181, float %211)
  %213 = call float @llvm.fmuladd.f32(float %212, float %208, float %209)
  %214 = fdiv float %213, %181
  store float %214, ptr %14, align 4, !tbaa !56
  br label %223

215:                                              ; preds = %203
  %216 = fdiv float %199, %198
  %217 = fmul float %186, 5.000000e-01
  %218 = load float, ptr %156, align 4, !tbaa !56
  %219 = fneg float %217
  %220 = call float @llvm.fmuladd.f32(float %218, float %186, float %219)
  %221 = call float @llvm.fmuladd.f32(float %220, float %216, float %217)
  %222 = fdiv float %221, %186
  store float %222, ptr %156, align 4, !tbaa !56
  br label %223

223:                                              ; preds = %179, %215, %207, %175
  call void @BKE_camera_params_init(ptr noundef nonnull %11) #17
  call void @BKE_camera_params_from_object(ptr noundef nonnull %11, ptr noundef nonnull %33) #17
  %224 = load i8, ptr %11, align 4, !tbaa !339
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %252, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 2
  %228 = load float, ptr %227, align 4, !tbaa !341
  %229 = load float, ptr %14, align 4, !tbaa !56
  %230 = fadd float %229, -5.000000e-01
  %231 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 4
  %232 = load float, ptr %231, align 4, !tbaa !342
  %233 = fadd float %230, %232
  %234 = fmul float %228, %233
  store float %234, ptr %7, align 4, !tbaa !56
  %235 = load float, ptr %156, align 4, !tbaa !56
  %236 = fadd float %235, -5.000000e-01
  %237 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 5
  %238 = load float, ptr %237, align 4, !tbaa !343
  %239 = fadd float %236, %238
  %240 = fmul float %228, %239
  store float %240, ptr %117, align 4, !tbaa !56
  %241 = fneg float %143
  store float %241, ptr %118, align 4, !tbaa !56
  %242 = fcmp ogt float %116, 1.000000e+00
  br i1 %242, label %243, label %245

243:                                              ; preds = %226
  %244 = fdiv float %240, %116
  store float %244, ptr %117, align 4, !tbaa !56
  br label %247

245:                                              ; preds = %226
  %246 = fmul float %116, %234
  store float %246, ptr %7, align 4, !tbaa !56
  br label %247

247:                                              ; preds = %245, %243
  %248 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %248, ptr noundef nonnull %7) #17
  call void @copy_m4_m4(ptr noundef nonnull %15, ptr noundef nonnull %248) #17
  %249 = getelementptr inbounds [4 x [4 x float]], ptr %15, i64 0, i64 3
  store float 0.000000e+00, ptr %249, align 16, !tbaa !56
  %250 = getelementptr inbounds [4 x [4 x float]], ptr %15, i64 0, i64 3, i64 1
  store float 0.000000e+00, ptr %250, align 4, !tbaa !56
  %251 = getelementptr inbounds [4 x [4 x float]], ptr %15, i64 0, i64 3, i64 2
  store float 0.000000e+00, ptr %251, align 8, !tbaa !56
  call void @mul_m4_m4m4(ptr noundef nonnull %119, ptr noundef nonnull %119, ptr noundef nonnull %15) #17
  br label %283

252:                                              ; preds = %223
  %253 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 8
  %254 = load float, ptr %253, align 4, !tbaa !344
  %255 = fmul float %143, %254
  %256 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 1
  %257 = load float, ptr %256, align 4, !tbaa !345
  %258 = fmul float %257, 2.000000e+00
  %259 = fdiv float %255, %258
  %260 = load float, ptr %14, align 4, !tbaa !56
  %261 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 4
  %262 = load float, ptr %261, align 4, !tbaa !342
  %263 = fadd float %260, %262
  %264 = call float @llvm.fmuladd.f32(float %263, float 2.000000e+00, float -1.000000e+00)
  %265 = fmul float %259, %264
  store float %265, ptr %7, align 4, !tbaa !56
  %266 = load float, ptr %156, align 4, !tbaa !56
  %267 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 5
  %268 = load float, ptr %267, align 4, !tbaa !343
  %269 = fadd float %266, %268
  %270 = call float @llvm.fmuladd.f32(float %269, float 2.000000e+00, float -1.000000e+00)
  %271 = fmul float %259, %270
  store float %271, ptr %117, align 4, !tbaa !56
  %272 = fneg float %143
  store float %272, ptr %118, align 4, !tbaa !56
  %273 = fcmp ogt float %116, 1.000000e+00
  br i1 %273, label %274, label %276

274:                                              ; preds = %252
  %275 = fdiv float %271, %116
  store float %275, ptr %117, align 4, !tbaa !56
  br label %278

276:                                              ; preds = %252
  %277 = fmul float %116, %265
  store float %277, ptr %7, align 4, !tbaa !56
  br label %278

278:                                              ; preds = %276, %274
  %279 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %279, ptr noundef nonnull %7) #17
  call void @copy_m4_m4(ptr noundef nonnull %15, ptr noundef nonnull %279) #17
  %280 = getelementptr inbounds [4 x [4 x float]], ptr %15, i64 0, i64 3
  store float 0.000000e+00, ptr %280, align 16, !tbaa !56
  %281 = getelementptr inbounds [4 x [4 x float]], ptr %15, i64 0, i64 3, i64 1
  store float 0.000000e+00, ptr %281, align 4, !tbaa !56
  %282 = getelementptr inbounds [4 x [4 x float]], ptr %15, i64 0, i64 3, i64 2
  store float 0.000000e+00, ptr %282, align 8, !tbaa !56
  call void @mul_m4_m4m4(ptr noundef nonnull %119, ptr noundef nonnull %119, ptr noundef nonnull %15) #17
  br label %283

283:                                              ; preds = %278, %247
  %284 = load float, ptr %8, align 4, !tbaa !56
  store float %284, ptr %120, align 4, !tbaa !56
  %285 = load float, ptr %136, align 4, !tbaa !56
  store float %285, ptr %122, align 4, !tbaa !56
  %286 = load float, ptr %140, align 4, !tbaa !56
  store float %286, ptr %124, align 4, !tbaa !56
  %287 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %24, i64 0, i32 6
  %288 = load ptr, ptr %287, align 8, !tbaa !346
  %289 = icmp eq ptr %288, null
  br i1 %289, label %324, label %290

290:                                              ; preds = %283
  %291 = call ptr @object_get_derived_final(ptr noundef nonnull %288, i8 noundef zeroext 0) #17
  %292 = icmp eq ptr %291, null
  br i1 %292, label %324, label %293

293:                                              ; preds = %290
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %16) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %16, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #17
  %294 = getelementptr inbounds %struct.Object, ptr %288, i64 0, i32 47
  %295 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %21, ptr noundef nonnull %294) #17
  %296 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %18, ptr noundef nonnull %21, ptr noundef nonnull %296) #17
  call void @mul_v3_m4v3(ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull %120) #17
  %297 = load float, ptr %19, align 4, !tbaa !56
  %298 = load float, ptr %18, align 4, !tbaa !56
  %299 = fsub float %297, %298
  store float %299, ptr %20, align 4, !tbaa !56
  %300 = getelementptr inbounds float, ptr %19, i64 1
  %301 = load float, ptr %300, align 4, !tbaa !56
  %302 = getelementptr inbounds float, ptr %18, i64 1
  %303 = load float, ptr %302, align 4, !tbaa !56
  %304 = fsub float %301, %303
  %305 = getelementptr inbounds float, ptr %20, i64 1
  store float %304, ptr %305, align 4, !tbaa !56
  %306 = getelementptr inbounds float, ptr %19, i64 2
  %307 = load float, ptr %306, align 4, !tbaa !56
  %308 = getelementptr inbounds float, ptr %18, i64 2
  %309 = load float, ptr %308, align 4, !tbaa !56
  %310 = fsub float %307, %309
  %311 = getelementptr inbounds float, ptr %20, i64 2
  store float %310, ptr %311, align 4, !tbaa !56
  %312 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %16, ptr noundef nonnull %291, float noundef 0.000000e+00, i32 noundef 4, i32 noundef 6) #17
  %313 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %17, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %313, align 4, !tbaa !276
  store i32 -1, ptr %17, align 4, !tbaa !273
  %314 = load ptr, ptr %16, align 8, !tbaa !269
  %315 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %16, i64 0, i32 2
  %316 = load ptr, ptr %315, align 8, !tbaa !277
  %317 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %314, ptr noundef nonnull %18, ptr noundef nonnull %20, float noundef 0.000000e+00, ptr noundef nonnull %17, ptr noundef %316, ptr noundef nonnull %16) #17
  %318 = icmp eq i32 %317, -1
  br i1 %318, label %321, label %319

319:                                              ; preds = %293
  %320 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %17, i64 0, i32 1
  call void @mul_v3_m4v3(ptr noundef nonnull %120, ptr noundef nonnull %294, ptr noundef nonnull %320) #17
  br label %321

321:                                              ; preds = %319, %293
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %16) #17
  %322 = getelementptr inbounds %struct.DerivedMesh, ptr %291, i64 0, i32 95
  %323 = load ptr, ptr %322, align 8, !tbaa !119
  call void %323(ptr noundef nonnull %291) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %16) #17
  br label %324

324:                                              ; preds = %290, %321, %283
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %11) #17
  br label %325

325:                                              ; preds = %324, %103
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  br label %326

326:                                              ; preds = %325, %102, %74, %62, %59, %41, %44
  ret void
}

declare ptr @BKE_tracking_object_get_named(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_object_get_camera(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_track_get_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #1

declare void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @translate_m4(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @BKE_tracking_get_camera_object_matrix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_object_where_is_calc_mat4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_tracking_undistort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #1

declare void @BKE_camera_params_from_object(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @camerasolver_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 1, ptr noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @camerasolver_new_data(ptr nocapture noundef %0) #15 {
  store ptr null, ptr %0, align 8, !tbaa !347
  %2 = getelementptr inbounds %struct.bCameraSolverConstraint, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !349
  %4 = or i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !349
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @camerasolver_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = load ptr, ptr %1, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.bCameraSolverConstraint, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !349
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 41
  %14 = select i1 %12, ptr %8, ptr %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  %18 = getelementptr inbounds %struct.MovieClip, ptr %15, i64 0, i32 11
  %19 = tail call ptr @BKE_tracking_object_get_camera(ptr noundef nonnull %18) #17
  %20 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !318
  %22 = sitofp i32 %21 to float
  %23 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef nonnull %15, float noundef %22) #17
  %24 = fptosi float %23 to i32
  call void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef nonnull %18, ptr noundef %19, i32 noundef %24, ptr noundef nonnull %4) #17
  %25 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %25) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %25, ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %26

26:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @objectsolver_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #17
  %6 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %5, i64 0, i32 5
  tail call void %1(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %2) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @objectsolver_new_data(ptr noundef %0) #0 {
  store ptr null, ptr %0, align 8, !tbaa !350
  %2 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !352
  %4 = or i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !352
  %5 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %0, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %5) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @objectsolver_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = load ptr, ptr %1, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = load ptr, ptr %12, align 8, !tbaa !350
  %14 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %12, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !353
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !298
  br label %20

20:                                               ; preds = %3, %17
  %21 = phi ptr [ %19, %17 ], [ %15, %3 ]
  %22 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %12, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !352
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 41
  %28 = load ptr, ptr %27, align 8, !tbaa !317
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi ptr [ %28, %26 ], [ %13, %20 ]
  %31 = icmp ne ptr %21, null
  %32 = icmp ne ptr %30, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.MovieClip, ptr %30, i64 0, i32 11
  %36 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %12, i64 0, i32 3
  %37 = tail call ptr @BKE_tracking_object_get_named(ptr noundef nonnull %35, ptr noundef nonnull %36) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #17
  %40 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !318
  %42 = sitofp i32 %41 to float
  %43 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef nonnull %30, float noundef %42) #17
  %44 = fptosi float %43 to i32
  call void @BKE_object_where_is_calc_mat4(ptr noundef %10, ptr noundef nonnull %21, ptr noundef nonnull %7) #17
  call void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef nonnull %35, ptr noundef nonnull %37, i32 noundef %44, ptr noundef nonnull %4) #17
  %45 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %7) #17
  %46 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %12, i64 0, i32 4
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %46) #17
  %47 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %47) #17
  %48 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %48) #17
  %49 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %4) #17
  call void @_va_mul_m4_series_6(ptr noundef nonnull %48, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  br label %50

50:                                               ; preds = %39, %34, %29
  ret void
}

declare void @_va_mul_m4_series_6(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @id_us_min(ptr noundef) local_unnamed_addr #1

declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }

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
!38 = !{!39, !35, i64 0}
!39 = !{!"bConstraintOb", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !40, i64 152, !40, i64 154}
!40 = !{!"short", !36, i64 0}
!41 = !{!39, !35, i64 8}
!42 = !{!39, !40, i64 152}
!43 = !{!39, !40, i64 154}
!44 = !{!39, !35, i64 16}
!45 = !{!46, !40, i64 268}
!46 = !{!"bPoseChannel", !35, i64 0, !35, i64 8, !35, i64 16, !47, i64 24, !36, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !36, i64 112, !36, i64 113, !36, i64 114, !35, i64 120, !35, i64 128, !35, i64 136, !47, i64 144, !47, i64 160, !35, i64 176, !35, i64 184, !35, i64 192, !36, i64 200, !36, i64 212, !36, i64 224, !36, i64 236, !36, i64 252, !48, i64 264, !40, i64 268, !40, i64 270, !36, i64 272, !36, i64 336, !36, i64 400, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !48, i64 524, !48, i64 528, !48, i64 532, !35, i64 536}
!47 = !{!"ListBase", !35, i64 0, !35, i64 8}
!48 = !{!"float", !36, i64 0}
!49 = !{!46, !35, i64 120}
!50 = !{!51, !35, i64 216}
!51 = !{!"Object", !52, i64 0, !35, i64 120, !35, i64 128, !40, i64 136, !40, i64 138, !53, i64 140, !53, i64 144, !53, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !54, i64 312, !35, i64 360, !47, i64 368, !47, i64 384, !47, i64 400, !47, i64 416, !53, i64 432, !53, i64 436, !35, i64 440, !35, i64 448, !53, i64 456, !53, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !48, i64 616, !48, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !53, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !36, i64 966, !36, i64 967, !53, i64 968, !53, i64 972, !53, i64 976, !53, i64 980, !53, i64 984, !48, i64 988, !48, i64 992, !48, i64 996, !48, i64 1000, !48, i64 1004, !48, i64 1008, !48, i64 1012, !48, i64 1016, !48, i64 1020, !48, i64 1024, !48, i64 1028, !48, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !36, i64 1042, !36, i64 1043, !40, i64 1044, !36, i64 1046, !36, i64 1047, !48, i64 1048, !48, i64 1052, !47, i64 1056, !47, i64 1072, !47, i64 1088, !47, i64 1104, !48, i64 1120, !40, i64 1124, !40, i64 1126, !36, i64 1128, !53, i64 1144, !53, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !40, i64 1162, !36, i64 1164, !47, i64 1176, !47, i64 1192, !47, i64 1208, !47, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !40, i64 1266, !48, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !55, i64 1304, !55, i64 1312, !53, i64 1320, !53, i64 1324, !47, i64 1328, !47, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !47, i64 1400, !35, i64 1416}
!52 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !35, i64 112}
!53 = !{!"int", !36, i64 0}
!54 = !{!"bAnimVizSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44}
!55 = !{!"long", !36, i64 0}
!56 = !{!48, !48, i64 0}
!57 = !{!58, !40, i64 24}
!58 = !{!"bConstraint", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !40, i64 94, !48, i64 96, !48, i64 100, !35, i64 104, !48, i64 112, !48, i64 116}
!59 = !{!58, !35, i64 16}
!60 = !{!61, !35, i64 72}
!61 = !{!"bConstraintTypeInfo", !40, i64 0, !40, i64 2, !36, i64 4, !36, i64 36, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128}
!62 = !{!61, !35, i64 80}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!58, !40, i64 26}
!67 = !{!58, !48, i64 96}
!68 = !{!61, !40, i64 2}
!69 = !{!61, !35, i64 96}
!70 = !{!36, !36, i64 0}
!71 = !{!51, !35, i64 232}
!72 = !{!51, !35, i64 288}
!73 = !{!51, !35, i64 296}
!74 = !{!75, !53, i64 320}
!75 = !{!"Bone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !47, i64 32, !36, i64 48, !48, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !53, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !48, i64 268, !48, i64 272, !48, i64 276, !48, i64 280, !48, i64 284, !48, i64 288, !48, i64 292, !48, i64 296, !48, i64 300, !48, i64 304, !36, i64 308, !53, i64 320, !40, i64 324, !36, i64 326}
!76 = !{!77, !53, i64 220}
!77 = !{!"bArmature", !52, i64 0, !35, i64 120, !47, i64 128, !47, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !53, i64 192, !53, i64 196, !53, i64 200, !53, i64 204, !40, i64 208, !40, i64 210, !53, i64 212, !53, i64 216, !53, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !53, i64 232, !53, i64 236, !53, i64 240, !53, i64 244, !53, i64 248, !53, i64 252}
!78 = distinct !{!78, !64, !65}
!79 = !{!58, !36, i64 28}
!80 = distinct !{!80, !64, !65}
!81 = !{!52, !35, i64 16}
!82 = !{!61, !35, i64 88}
!83 = distinct !{!83, !64, !65}
!84 = !{!52, !35, i64 24}
!85 = distinct !{!85, !64, !65}
!86 = !{!47, !35, i64 0}
!87 = !{!58, !35, i64 0}
!88 = distinct !{!88, !64, !65}
!89 = !{!61, !35, i64 104}
!90 = !{!61, !35, i64 120}
!91 = !{!61, !35, i64 112}
!92 = distinct !{!92, !64, !65}
!93 = distinct !{!93, !64, !65}
!94 = !{!61, !35, i64 128}
!95 = distinct !{!95, !64, !65}
!96 = !{!97, !53, i64 8}
!97 = !{!"bChildOfConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16, !36, i64 80}
!98 = !{!97, !35, i64 0}
!99 = !{!100, !35, i64 16}
!100 = !{!"bConstraintTarget", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158}
!101 = !{!58, !36, i64 29}
!102 = !{!100, !40, i64 152}
!103 = !{!100, !40, i64 154}
!104 = !{!51, !40, i64 136}
!105 = !{!100, !40, i64 156}
!106 = !{!51, !40, i64 1040}
!107 = !{!100, !40, i64 158}
!108 = !{!58, !48, i64 100}
!109 = !{!51, !35, i64 1296}
!110 = !{!111, !35, i64 1320}
!111 = !{!"DerivedMesh", !112, i64 0, !112, i64 200, !112, i64 400, !112, i64 600, !112, i64 800, !53, i64 1000, !53, i64 1004, !53, i64 1008, !53, i64 1012, !53, i64 1016, !53, i64 1020, !53, i64 1024, !35, i64 1032, !35, i64 1040, !53, i64 1048, !48, i64 1052, !53, i64 1056, !53, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!112 = !{!"CustomData", !35, i64 0, !36, i64 8, !53, i64 172, !53, i64 176, !53, i64 180, !35, i64 184, !35, i64 192}
!113 = !{!111, !35, i64 1104}
!114 = !{!115, !48, i64 4}
!115 = !{!"MDeformWeight", !53, i64 0, !48, i64 4}
!116 = !{!111, !35, i64 1528}
!117 = !{!111, !35, i64 1544}
!118 = distinct !{!118, !64, !65}
!119 = !{!111, !35, i64 1680}
!120 = !{!51, !35, i64 1280}
!121 = !{!122, !35, i64 32}
!122 = !{!"DispList", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !53, i64 20, !53, i64 24, !40, i64 28, !40, i64 30, !35, i64 32, !35, i64 40, !35, i64 48, !53, i64 56, !53, i64 60, !35, i64 64}
!123 = !{!124, !35, i64 176}
!124 = !{!"Lattice", !52, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !53, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !35, i64 272}
!125 = !{!124, !35, i64 200}
!126 = !{!124, !40, i64 128}
!127 = !{!124, !40, i64 130}
!128 = !{!124, !40, i64 132}
!129 = !{!130, !53, i64 8}
!130 = !{!"MDeformVert", !35, i64 0, !53, i64 8, !53, i64 12}
!131 = distinct !{!131, !64, !65}
!132 = distinct !{!132, !64, !65}
!133 = !{!134, !53, i64 8}
!134 = !{!"bTrackToConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !36, i64 24}
!135 = !{!134, !53, i64 12}
!136 = !{!134, !35, i64 0}
!137 = !{!134, !53, i64 16}
!138 = !{!139, !48, i64 156}
!139 = !{!"bKinematicConstraint", !35, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !36, i64 16, !35, i64 80, !36, i64 88, !48, i64 152, !48, i64 156, !48, i64 160, !36, i64 164, !40, i64 176, !40, i64 178, !48, i64 180}
!140 = !{!139, !48, i64 160}
!141 = !{!139, !40, i64 8}
!142 = !{!139, !48, i64 180}
!143 = !{!139, !40, i64 10}
!144 = !{!139, !35, i64 0}
!145 = !{!139, !35, i64 80}
!146 = !{!100, !35, i64 0}
!147 = !{!148, !40, i64 20}
!148 = !{!"bFollowPathConstraint", !35, i64 0, !48, i64 8, !48, i64 12, !53, i64 16, !40, i64 20, !40, i64 22}
!149 = !{!148, !40, i64 22}
!150 = !{!148, !48, i64 8}
!151 = !{!148, !53, i64 16}
!152 = !{!148, !35, i64 0}
!153 = !{!154, !35, i64 48}
!154 = !{!"CurveCache", !47, i64 0, !47, i64 16, !47, i64 32, !35, i64 48}
!155 = !{!156, !35, i64 0}
!156 = !{!"Path", !35, i64 0, !53, i64 8, !48, i64 12}
!157 = !{!158, !35, i64 136}
!158 = !{!"Curve", !52, i64 0, !35, i64 120, !35, i64 128, !47, i64 136, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !48, i64 252, !48, i64 256, !53, i64 260, !40, i64 264, !40, i64 266, !53, i64 268, !48, i64 272, !48, i64 276, !48, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !53, i64 292, !53, i64 296, !36, i64 300, !40, i64 304, !36, i64 306, !36, i64 307, !48, i64 308, !48, i64 312, !48, i64 316, !48, i64 320, !48, i64 324, !48, i64 328, !48, i64 332, !48, i64 336, !48, i64 340, !48, i64 344, !53, i64 348, !53, i64 352, !53, i64 356, !53, i64 360, !53, i64 364, !35, i64 368, !35, i64 376, !36, i64 384, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !35, i64 480, !53, i64 488, !53, i64 492, !35, i64 496, !159, i64 504, !48, i64 512, !48, i64 516, !48, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!159 = !{!"CharInfo", !40, i64 0, !40, i64 2, !36, i64 4, !36, i64 5, !40, i64 6}
!160 = !{!158, !48, i64 512}
!161 = !{!158, !53, i64 260}
!162 = !{!163, !40, i64 44}
!163 = !{!"Nurb", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !53, i64 24, !53, i64 28, !36, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !40, i64 80, !40, i64 82, !53, i64 84}
!164 = !{!148, !48, i64 12}
!165 = !{!166, !40, i64 24}
!166 = !{!"bRotLimitConstraint", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !40, i64 24, !40, i64 26}
!167 = !{!166, !48, i64 0}
!168 = !{!166, !48, i64 4}
!169 = !{!166, !48, i64 8}
!170 = !{!166, !48, i64 12}
!171 = !{!166, !48, i64 16}
!172 = !{!166, !48, i64 20}
!173 = !{!174, !40, i64 24}
!174 = !{!"bLocLimitConstraint", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !40, i64 24, !40, i64 26}
!175 = !{!174, !48, i64 0}
!176 = !{!174, !48, i64 4}
!177 = !{!174, !48, i64 8}
!178 = !{!174, !48, i64 12}
!179 = !{!174, !48, i64 16}
!180 = !{!174, !48, i64 20}
!181 = !{!182, !40, i64 24}
!182 = !{!"bSizeLimitConstraint", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !40, i64 24, !40, i64 26}
!183 = !{!182, !48, i64 0}
!184 = !{!182, !48, i64 4}
!185 = !{!182, !48, i64 8}
!186 = !{!182, !48, i64 12}
!187 = !{!182, !48, i64 16}
!188 = !{!182, !48, i64 20}
!189 = !{!190, !53, i64 8}
!190 = !{!"bRotateLikeConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16}
!191 = !{!190, !35, i64 0}
!192 = !{!193, !53, i64 8}
!193 = !{!"bLocateLikeConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16}
!194 = !{!193, !35, i64 0}
!195 = !{!196, !53, i64 8}
!196 = !{!"bSizeLikeConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16}
!197 = !{!196, !35, i64 0}
!198 = !{!199, !35, i64 8}
!199 = !{!"bPythonConstraint", !35, i64 0, !35, i64 8, !53, i64 16, !53, i64 20, !47, i64 24, !35, i64 40, !36, i64 48}
!200 = distinct !{!200, !64, !65}
!201 = !{!202, !36, i64 16}
!202 = !{!"IDProperty", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 17, !40, i64 18, !36, i64 20, !53, i64 84, !203, i64 88, !53, i64 120, !53, i64 124}
!203 = !{!"IDPropertyData", !35, i64 0, !47, i64 8, !53, i64 24, !53, i64 28}
!204 = !{!199, !35, i64 24}
!205 = !{!199, !35, i64 32}
!206 = !{!47, !35, i64 8}
!207 = !{!199, !53, i64 20}
!208 = !{!209, !40, i64 8}
!209 = !{!"bActionConstraint", !35, i64 0, !40, i64 8, !40, i64 10, !53, i64 12, !53, i64 16, !48, i64 20, !48, i64 24, !53, i64 28, !35, i64 32, !36, i64 40}
!210 = !{!209, !35, i64 0}
!211 = !{!209, !48, i64 20}
!212 = !{!209, !48, i64 24}
!213 = !{!209, !53, i64 16}
!214 = !{!209, !53, i64 12}
!215 = !{!216, !53, i64 2100}
!216 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !47, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !36, i64 2090, !40, i64 2092, !53, i64 2096, !53, i64 2100, !36, i64 2104, !53, i64 2108, !53, i64 2112, !36, i64 2116}
!217 = !{!209, !53, i64 28}
!218 = !{!209, !35, i64 32}
!219 = !{!220, !53, i64 8}
!220 = !{!"bLockTrackConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16}
!221 = !{!220, !53, i64 12}
!222 = !{!220, !35, i64 0}
!223 = !{!224, !48, i64 72}
!224 = !{!"bDistLimitConstraint", !35, i64 0, !36, i64 8, !48, i64 72, !48, i64 76, !40, i64 80, !40, i64 82, !53, i64 84}
!225 = !{!224, !35, i64 0}
!226 = !{!224, !40, i64 82}
!227 = !{!224, !40, i64 80}
!228 = !{!224, !48, i64 76}
!229 = !{!230, !53, i64 12}
!230 = !{!"bStretchToConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !36, i64 40}
!231 = !{!230, !53, i64 16}
!232 = !{!230, !48, i64 20}
!233 = !{!230, !48, i64 24}
!234 = !{!230, !48, i64 32}
!235 = !{!230, !48, i64 28}
!236 = !{!230, !35, i64 0}
!237 = !{!230, !53, i64 8}
!238 = !{!230, !48, i64 36}
!239 = !{!240, !53, i64 8}
!240 = !{!"bMinMaxConstraint", !35, i64 0, !53, i64 8, !48, i64 12, !53, i64 16, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !36, i64 28, !36, i64 40}
!241 = !{!240, !48, i64 12}
!242 = !{!240, !53, i64 16}
!243 = !{!240, !35, i64 0}
!244 = !{!245, !53, i64 16}
!245 = !{!"bRigidBodyJointConstraint", !35, i64 0, !35, i64 8, !53, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40, !36, i64 44, !36, i64 68, !48, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102}
!246 = !{!245, !35, i64 0}
!247 = !{!248, !35, i64 0}
!248 = !{!"bClampToConstraint", !35, i64 0, !53, i64 8, !53, i64 12}
!249 = !{!248, !53, i64 8}
!250 = !{!248, !53, i64 12}
!251 = !{!252, !35, i64 0}
!252 = !{!"bTransformConstraint", !35, i64 0, !36, i64 8, !40, i64 72, !40, i64 74, !36, i64 76, !36, i64 79, !36, i64 80, !36, i64 92, !36, i64 104, !36, i64 116, !36, i64 128, !36, i64 140, !36, i64 152, !36, i64 164, !36, i64 176, !36, i64 188, !36, i64 200, !36, i64 212}
!253 = !{!252, !40, i64 72}
!254 = !{!252, !36, i64 79}
!255 = distinct !{!255, !64, !65}
!256 = distinct !{!256, !64, !65}
!257 = !{!252, !40, i64 74}
!258 = distinct !{!258, !64, !65}
!259 = distinct !{!259, !64, !65}
!260 = distinct !{!260, !64, !65}
!261 = !{!262, !36, i64 14}
!262 = !{!"bShrinkwrapConstraint", !35, i64 0, !48, i64 8, !40, i64 12, !36, i64 14, !36, i64 15, !48, i64 16, !36, i64 20}
!263 = !{!262, !36, i64 15}
!264 = !{!262, !35, i64 0}
!265 = !{!262, !40, i64 12}
!266 = !{!267, !53, i64 0}
!267 = !{!"BVHTreeNearest", !53, i64 0, !36, i64 4, !36, i64 16, !48, i64 28, !53, i64 32}
!268 = !{!267, !48, i64 28}
!269 = !{!270, !35, i64 0}
!270 = !{!"BVHTreeFromMesh", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !36, i64 48, !36, i64 49, !36, i64 50, !48, i64 52, !35, i64 56, !36, i64 64}
!271 = !{!270, !35, i64 8}
!272 = !{!262, !48, i64 8}
!273 = !{!274, !53, i64 0}
!274 = !{!"BVHTreeRayHit", !53, i64 0, !36, i64 4, !36, i64 16, !48, i64 28, !53, i64 32}
!275 = !{!262, !48, i64 16}
!276 = !{!274, !48, i64 28}
!277 = !{!270, !35, i64 16}
!278 = !{!279, !53, i64 8}
!279 = !{!"bDampTrackConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16}
!280 = !{!279, !35, i64 0}
!281 = !{!282, !35, i64 8}
!282 = !{!"bSplineIKConstraint", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22}
!283 = !{!282, !40, i64 18}
!284 = !{!282, !35, i64 0}
!285 = !{!286, !35, i64 0}
!286 = !{!"bTransLikeConstraint", !35, i64 0, !36, i64 8}
!287 = !{!288, !53, i64 0}
!288 = !{!"bSameVolumeConstraint", !53, i64 0, !48, i64 4}
!289 = !{!288, !48, i64 4}
!290 = !{!291, !35, i64 0}
!291 = !{!"bPivotConstraint", !35, i64 0, !36, i64 8, !36, i64 72, !40, i64 84, !40, i64 86}
!292 = !{!291, !40, i64 84}
!293 = !{!291, !40, i64 86}
!294 = !{!295, !35, i64 0}
!295 = !{!"bFollowTrackConstraint", !35, i64 0, !36, i64 8, !53, i64 72, !53, i64 76, !36, i64 80, !35, i64 144, !35, i64 152}
!296 = !{!295, !53, i64 72}
!297 = !{!295, !35, i64 144}
!298 = !{!299, !35, i64 128}
!299 = !{!"Scene", !52, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !47, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !53, i64 232, !53, i64 236, !53, i64 240, !40, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !300, i64 280, !309, i64 4264, !47, i64 4296, !47, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !40, i64 4376, !40, i64 4378, !53, i64 4380, !47, i64 4384, !310, i64 4400, !311, i64 4416, !314, i64 4600, !35, i64 4608, !315, i64 4616, !35, i64 4640, !55, i64 4648, !55, i64 4656, !302, i64 4664, !303, i64 4824, !316, i64 4888, !35, i64 4952}
!300 = !{!"RenderData", !301, i64 0, !35, i64 248, !35, i64 256, !304, i64 264, !305, i64 328, !53, i64 400, !53, i64 404, !53, i64 408, !48, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !40, i64 432, !40, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !53, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !53, i64 484, !53, i64 488, !40, i64 492, !40, i64 494, !53, i64 496, !53, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !36, i64 514, !36, i64 515, !53, i64 516, !53, i64 520, !53, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !306, i64 544, !306, i64 560, !307, i64 576, !47, i64 592, !40, i64 608, !40, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !53, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !48, i64 660, !48, i64 664, !40, i64 668, !40, i64 670, !48, i64 672, !48, i64 676, !36, i64 680, !53, i64 1704, !40, i64 1708, !40, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !53, i64 2520, !40, i64 2524, !40, i64 2526, !48, i64 2528, !48, i64 2532, !40, i64 2536, !40, i64 2538, !48, i64 2540, !40, i64 2544, !40, i64 2546, !53, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !48, i64 2560, !48, i64 2564, !35, i64 2568, !53, i64 2576, !48, i64 2580, !36, i64 2584, !308, i64 2616, !53, i64 3976, !53, i64 3980}
!301 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 10, !48, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !302, i64 24, !303, i64 184}
!302 = !{!"ColorManagedViewSettings", !53, i64 0, !53, i64 4, !36, i64 8, !36, i64 72, !48, i64 136, !48, i64 140, !35, i64 144, !35, i64 152}
!303 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!304 = !{!"QuicktimeCodecSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !40, i64 48, !40, i64 50, !53, i64 52, !53, i64 56, !53, i64 60}
!305 = !{!"FFMpegCodecData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !48, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !35, i64 64}
!306 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!307 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!308 = !{!"BakeData", !301, i64 0, !36, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !48, i64 1280, !48, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!309 = !{!"AudioData", !53, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !53, i64 16, !40, i64 20, !40, i64 22, !48, i64 24, !48, i64 28}
!310 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!311 = !{!"GameData", !310, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !36, i64 34, !312, i64 40, !40, i64 64, !40, i64 66, !48, i64 68, !313, i64 72, !48, i64 128, !48, i64 132, !53, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!312 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !48, i64 8, !48, i64 12, !35, i64 16}
!313 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !53, i64 40, !48, i64 44, !48, i64 48, !40, i64 52, !40, i64 54}
!314 = !{!"UnitSettings", !48, i64 0, !36, i64 4, !36, i64 5, !40, i64 6}
!315 = !{!"PhysicsSettings", !36, i64 0, !53, i64 12, !53, i64 16, !53, i64 20}
!316 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!317 = !{!299, !35, i64 4640}
!318 = !{!299, !53, i64 680}
!319 = !{!320, !53, i64 152}
!320 = !{!"MovieTrackingTrack", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !53, i64 120, !53, i64 124, !35, i64 128, !36, i64 136, !48, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !36, i64 164, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !53, i64 184, !48, i64 188, !35, i64 192, !48, i64 200, !48, i64 204}
!321 = !{!322, !53, i64 80}
!322 = !{!"MovieTrackingObject", !35, i64 0, !35, i64 8, !36, i64 16, !53, i64 80, !48, i64 84, !47, i64 88, !47, i64 104, !323, i64 120, !53, i64 144, !53, i64 148}
!323 = !{!"MovieTrackingReconstruction", !53, i64 0, !48, i64 4, !53, i64 8, !53, i64 12, !35, i64 16}
!324 = !{!299, !53, i64 764}
!325 = !{!299, !48, i64 892}
!326 = !{!299, !53, i64 768}
!327 = !{!299, !48, i64 896}
!328 = !{!53, !53, i64 0}
!329 = !{!295, !53, i64 76}
!330 = !{!331, !48, i64 1168}
!331 = !{!"MovieClip", !52, i64 0, !35, i64 120, !36, i64 128, !53, i64 1152, !53, i64 1156, !36, i64 1160, !48, i64 1168, !48, i64 1172, !35, i64 1176, !35, i64 1184, !35, i64 1192, !332, i64 1200, !35, i64 1528, !337, i64 1536, !53, i64 2312, !53, i64 2316, !53, i64 2320, !53, i64 2324, !316, i64 2328}
!332 = !{!"MovieTracking", !333, i64 0, !334, i64 72, !47, i64 128, !47, i64 144, !323, i64 160, !335, i64 184, !35, i64 232, !35, i64 240, !47, i64 248, !53, i64 264, !53, i64 268, !35, i64 272, !336, i64 280}
!333 = !{!"MovieTrackingSettings", !53, i64 0, !40, i64 4, !40, i64 6, !48, i64 8, !40, i64 12, !40, i64 14, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !48, i64 24, !40, i64 28, !40, i64 30, !53, i64 32, !53, i64 36, !53, i64 40, !40, i64 44, !40, i64 46, !48, i64 48, !53, i64 52, !53, i64 56, !48, i64 60, !48, i64 64, !53, i64 68}
!334 = !{!"MovieTrackingCamera", !35, i64 0, !40, i64 8, !40, i64 10, !48, i64 12, !48, i64 16, !48, i64 20, !40, i64 24, !40, i64 26, !36, i64 28, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52}
!335 = !{!"MovieTrackingStabilization", !53, i64 0, !53, i64 4, !53, i64 8, !48, i64 12, !35, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !53, i64 36, !53, i64 40, !48, i64 44}
!336 = !{!"MovieTrackingDopesheet", !53, i64 0, !40, i64 4, !40, i64 6, !47, i64 8, !47, i64 24, !53, i64 40, !53, i64 44}
!337 = !{!"MovieClipProxy", !36, i64 0, !40, i64 768, !40, i64 770, !40, i64 772, !40, i64 774}
!338 = !{!331, !48, i64 1172}
!339 = !{!340, !36, i64 0}
!340 = !{!"CameraParams", !36, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !53, i64 40, !48, i64 44, !48, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !48, i64 64, !48, i64 68, !48, i64 72, !306, i64 76, !36, i64 92}
!341 = !{!340, !48, i64 8}
!342 = !{!340, !48, i64 16}
!343 = !{!340, !48, i64 20}
!344 = !{!340, !48, i64 32}
!345 = !{!340, !48, i64 4}
!346 = !{!295, !35, i64 152}
!347 = !{!348, !35, i64 0}
!348 = !{!"bCameraSolverConstraint", !35, i64 0, !53, i64 8, !53, i64 12}
!349 = !{!348, !53, i64 8}
!350 = !{!351, !35, i64 0}
!351 = !{!"bObjectSolverConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16, !36, i64 80, !35, i64 144}
!352 = !{!351, !53, i64 8}
!353 = !{!351, !35, i64 144}
