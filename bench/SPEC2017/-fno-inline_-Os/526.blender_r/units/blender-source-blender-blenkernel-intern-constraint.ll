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
@track_dir_vecs = internal constant [6 x [3 x float]] [[3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00]], align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"Constraint\00", align 1
@switch.table.basis_cross = private unnamed_addr constant [5 x i32] [i32 1, i32 -1, i32 0, i32 1, i32 -1], align 4
@switch.table.shrinkwrap_get_tarmat = private unnamed_addr constant [6 x i64] [i64 0, i64 1, i64 2, i64 0, i64 1, i64 2], align 8
@switch.table.shrinkwrap_get_tarmat.10 = private unnamed_addr constant [6 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_constraint_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BLI_uniquename(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 30, i32 noundef 64) #21
  ret void
}

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_constraints_make_evalob(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 160, ptr noundef nonnull @.str.1) #21
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
  store i16 1, ptr %11, align 8, !tbaa !42
  %12 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 6
  store i16 1, ptr %12, align 2, !tbaa !43
  %13 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %14) #21
  br label %17

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  tail call void @unit_m4(ptr noundef nonnull %16) #21
  br label %17

17:                                               ; preds = %15, %9
  %18 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 4
  %19 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  tail call void @copy_m4_m4(ptr noundef nonnull %18, ptr noundef nonnull %19) #21
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
  store i16 2, ptr %27, align 8, !tbaa !42
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 26
  %29 = load i16, ptr %28, align 4, !tbaa !45
  %30 = tail call i16 @llvm.smax.i16(i16 %29, i16 1)
  %31 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 6
  store i16 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 29
  tail call void @mul_m4_m4m4(ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %34) #21
  br label %37

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  tail call void @unit_m4(ptr noundef nonnull %36) #21
  br label %37

37:                                               ; preds = %35, %24
  %38 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 4
  %39 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  tail call void @copy_m4_m4(ptr noundef nonnull %38, ptr noundef nonnull %39) #21
  br label %43

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 3
  tail call void @unit_m4(ptr noundef nonnull %41) #21
  %42 = getelementptr inbounds %struct.bConstraintOb, ptr %6, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %42) #21
  br label %43

43:                                               ; preds = %40, %37, %17
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_constraints_clear_evalob(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [4 x [4 x float]], align 16
  %3 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #22
  %4 = icmp eq ptr %0, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bConstraintOb, ptr %0, i64 0, i32 4
  %7 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %6) #21
  %8 = getelementptr inbounds %struct.bConstraintOb, ptr %0, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %3) #21
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
  call void @copy_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %8) #21
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
  call void @mul_m4_m4m4(ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %8) #21
  %30 = load ptr, ptr %24, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 30
  br label %32

32:                                               ; preds = %15, %27
  %33 = phi ptr [ %31, %27 ], [ %18, %15 ]
  %34 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %33, ptr noundef nonnull %2) #21
  br label %35

35:                                               ; preds = %32, %19, %23, %11, %5
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %36(ptr noundef nonnull %0) #21
  br label %37

37:                                               ; preds = %1, %35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_constraint_mat_convertspace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #22
  %8 = icmp eq ptr %0, null
  %9 = icmp eq ptr %2, null
  %10 = or i1 %8, %9
  %11 = icmp eq i16 %3, %4
  %12 = or i1 %10, %11
  br i1 %12, label %79, label %13

13:                                               ; preds = %5
  %14 = icmp eq ptr %1, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %13
  switch i16 %3, label %79 [
    i16 0, label %16
    i16 2, label %22
    i16 1, label %37
    i16 3, label %44
  ]

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %18 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %17) #21
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %2) #21
  %19 = and i16 %4, -3
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %79

21:                                               ; preds = %16
  call void @BKE_constraint_mat_convertspace(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i16 noundef signext 2, i16 noundef signext %4) #23
  br label %79

22:                                               ; preds = %15
  switch i16 %4, label %79 [
    i16 0, label %23
    i16 1, label %25
    i16 3, label %30
  ]

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %24, ptr noundef nonnull %2) #21
  br label %79

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %79, label %29

29:                                               ; preds = %25
  tail call void @BKE_armature_mat_pose_to_bone(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %2) #21
  br label %79

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !49
  %33 = icmp eq ptr %32, null
  br i1 %33, label %79, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Bone, ptr %32, i64 0, i32 13
  %36 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %35) #21
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %2) #21
  br label %79

37:                                               ; preds = %15
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @BKE_armature_mat_bone_to_pose(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %2) #21
  br label %42

42:                                               ; preds = %41, %37
  switch i16 %4, label %79 [
    i16 3, label %43
    i16 0, label %43
  ]

43:                                               ; preds = %42, %42
  tail call void @BKE_constraint_mat_convertspace(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i16 noundef signext 2, i16 noundef signext %4) #23
  br label %79

44:                                               ; preds = %15
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Bone, ptr %46, i64 0, i32 13
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %49) #21
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %6) #21
  br label %50

50:                                               ; preds = %48, %44
  %51 = icmp ult i16 %4, 2
  br i1 %51, label %52, label %79

52:                                               ; preds = %50
  call void @BKE_constraint_mat_convertspace(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i16 noundef signext 2, i16 noundef signext %4) #23
  br label %79

53:                                               ; preds = %13
  %54 = icmp eq i16 %3, 0
  %55 = icmp eq i16 %4, 1
  %56 = and i1 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !50
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 47
  %63 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %62, ptr noundef nonnull %63) #21
  call void @invert_m4_m4_safe(ptr noundef nonnull %7, ptr noundef nonnull %6) #21
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %2) #21
  br label %79

64:                                               ; preds = %57
  call void @BKE_object_to_mat4(ptr noundef nonnull %0, ptr noundef nonnull %6) #21
  call void @normalize_m4(ptr noundef nonnull %6) #21
  %65 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  call fastcc void @zero_v3(ptr noundef nonnull %65) #23
  call void @invert_m4_m4_safe(ptr noundef nonnull %7, ptr noundef nonnull %6) #21
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %2) #21
  br label %79

66:                                               ; preds = %53
  %67 = icmp eq i16 %3, 1
  %68 = icmp eq i16 %4, 0
  %69 = and i1 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !50
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.Object, ptr %72, i64 0, i32 47
  %76 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %75, ptr noundef nonnull %76) #21
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %2) #21
  br label %79

77:                                               ; preds = %70
  call void @BKE_object_to_mat4(ptr noundef nonnull %0, ptr noundef nonnull %6) #21
  call void @normalize_m4(ptr noundef nonnull %6) #21
  %78 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  call fastcc void @zero_v3(ptr noundef nonnull %78) #23
  call void @mul_m4_m4m4(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %2) #21
  br label %79

79:                                               ; preds = %52, %50, %43, %23, %34, %30, %25, %29, %21, %16, %15, %66, %77, %74, %61, %64, %22, %42, %5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #22
  ret void
}

; Function Attrs: optsize
declare void @BKE_armature_mat_pose_to_bone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_armature_mat_bone_to_pose(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @invert_m4_m4_safe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @normalize_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !56 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !57
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !57
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @BKE_constraint_typeinfo_from_type(i32 noundef %0) local_unnamed_addr #4 {
  %2 = load i1, ptr @CTI_INIT, align 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call fastcc void @constraints_init_typeinfo() #23
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
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %0) #23
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %9, %6 ], [ null, %10 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @constraints_init_typeinfo() unnamed_addr #5 !PGOFuncName !58 {
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
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @BKE_constraint_typeinfo_get(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !59
  %6 = sext i16 %5 to i32
  %7 = tail call ptr @BKE_constraint_typeinfo_from_type(i32 noundef %6) #23
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi ptr [ %7, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_constraint_free_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %0) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef nonnull %0) #21
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %6, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void %15(ptr noundef nonnull %0, ptr noundef nonnull @con_unlink_refs_cb, ptr noundef null) #21
  br label %18

18:                                               ; preds = %13, %17, %5
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %20 = load ptr, ptr %2, align 8, !tbaa !61
  tail call void %19(ptr noundef %20) #21
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @con_unlink_refs_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture readnone %3) #0 !PGOFuncName !65 {
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp ne ptr %5, null
  %7 = icmp ne i8 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @id_us_min(ptr noundef nonnull %5) #21
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_constraints_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @BKE_constraint_free_data(ptr noundef nonnull %5) #23
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !66

8:                                                ; preds = %4, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_constraint_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @BKE_constraint_free_data(ptr noundef nonnull %1) #23
  tail call void @BLI_freelinkN(ptr noundef %0, ptr noundef nonnull %1) #21
  br label %5

5:                                                ; preds = %2, %4
  %6 = phi i8 [ 1, %4 ], [ 0, %2 ]
  ret i8 %6
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_constraint_add_for_pose(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc ptr @add_new_constraint(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext %3) #23
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ %7, %6 ], [ null, %4 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @add_new_constraint(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) unnamed_addr #0 !PGOFuncName !68 {
  %5 = tail call fastcc ptr @add_new_constraint_internal(ptr noundef %2, i16 noundef signext %3) #23
  %6 = icmp ne ptr %1, null
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  %9 = select i1 %6, ptr %7, ptr %8
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %5) #21
  tail call void @BKE_constraint_unique_name(ptr noundef %5, ptr noundef nonnull %9) #23
  %10 = tail call zeroext i8 @BKE_constraints_proxylocked_owner(ptr noundef %0, ptr noundef %1) #23, !range !69
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 4
  %14 = load i16, ptr %13, align 2, !tbaa !70
  %15 = or i16 %14, 256
  store i16 %15, ptr %13, align 2, !tbaa !70
  br label %16

16:                                               ; preds = %12, %4
  tail call void @BKE_constraints_active_set(ptr noundef nonnull %9, ptr noundef %5) #23
  %17 = icmp eq i16 %3, 1
  %18 = and i1 %6, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 5
  store i8 2, ptr %20, align 4, !tbaa !71
  %21 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 4
  %22 = load i16, ptr %21, align 2, !tbaa !70
  %23 = or i16 %22, 64
  store i16 %23, ptr %21, align 2, !tbaa !70
  br label %24

24:                                               ; preds = %19, %16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_constraint_add_for_object(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @add_new_constraint(ptr noundef %0, ptr noundef null, ptr noundef %1, i16 noundef signext %2) #23
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_constraints_relink(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @BKE_constraints_id_loop(ptr noundef %0, ptr noundef nonnull @con_relink_id_cb, ptr noundef null) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_constraints_id_loop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3, %15
  %7 = phi ptr [ %16, %15 ], [ %4, %3 ]
  %8 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %7) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #21
  br label %15

15:                                               ; preds = %10, %14, %6
  %16 = load ptr, ptr %7, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !72

18:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @con_relink_id_cb(ptr nocapture readnone %0, ptr nocapture noundef %1, i8 zeroext %2, ptr nocapture readnone %3) #7 !PGOFuncName !73 {
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store ptr %9, ptr %1, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %11, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_constraints_copy(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  tail call fastcc void @BLI_listbase_clear(ptr noundef %0) #23
  tail call void @BLI_duplicatelist(ptr noundef %0, ptr noundef %1) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp ne ptr %4, null
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %41

9:                                                ; preds = %3
  %10 = icmp eq i8 %2, 0
  br label %11

11:                                               ; preds = %9, %35
  %12 = phi ptr [ %5, %9 ], [ %37, %35 ]
  %13 = phi ptr [ %4, %9 ], [ %36, %35 ]
  %14 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %13) #23
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.bConstraint, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = tail call ptr %15(ptr noundef %17) #21
  store ptr %18, ptr %16, align 8, !tbaa !61
  %19 = icmp eq ptr %14, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %14, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void %22(ptr noundef nonnull %13, ptr noundef nonnull %12) #21
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %14, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void %27(ptr noundef nonnull %13, ptr noundef nonnull @con_fix_copied_refs_cb, ptr noundef null) #21
  br label %30

30:                                               ; preds = %29, %25
  br i1 %10, label %35, label %31

31:                                               ; preds = %30
  %32 = load ptr, ptr %26, align 8, !tbaa !64
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void %32(ptr noundef nonnull %13, ptr noundef nonnull @con_extern_cb, ptr noundef null) #21
  br label %35

35:                                               ; preds = %30, %34, %31, %11
  %36 = load ptr, ptr %13, align 8, !tbaa !34
  %37 = load ptr, ptr %12, align 8, !tbaa !34
  %38 = icmp ne ptr %36, null
  %39 = icmp ne ptr %37, null
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %11, label %41, !llvm.loop !76

41:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !77 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @con_fix_copied_refs_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture readnone %3) #0 !PGOFuncName !78 {
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp ne ptr %5, null
  %7 = icmp ne i8 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @id_us_plus(ptr noundef nonnull %5) #21
  br label %10

10:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @con_extern_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i8 zeroext %2, ptr nocapture readnone %3) #0 !PGOFuncName !79 {
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @id_lib_extern(ptr noundef nonnull %5) #21
  br label %12

12:                                               ; preds = %11, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_constraints_find_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_findstring(ptr noundef %0, ptr noundef %1, i32 noundef 30) #21
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_constraints_active_get(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %5, %7 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !70
  %10 = and i16 %9, 16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %3, label %12, !llvm.loop !81

12:                                               ; preds = %3, %7, %1
  %13 = phi ptr [ null, %1 ], [ null, %3 ], [ %5, %7 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_constraints_active_set(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bConstraint, ptr %1, i64 0, i32 4
  br label %9

9:                                                ; preds = %7, %19
  %10 = phi ptr [ %20, %19 ], [ %5, %7 ]
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %8, align 2, !tbaa !70
  %14 = or i16 %13, 16
  store i16 %14, ptr %8, align 2, !tbaa !70
  br label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bConstraint, ptr %10, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !70
  %18 = and i16 %17, -17
  store i16 %18, ptr %16, align 2, !tbaa !70
  br label %19

19:                                               ; preds = %12, %15
  %20 = load ptr, ptr %10, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !82

22:                                               ; preds = %19, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_constraints_proxylocal_extract(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !83
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %13
  %6 = phi ptr [ %7, %13 ], [ %3, %2 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  %8 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !70
  %10 = and i16 %9, 256
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %6) #21
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %6) #21
  br label %13

13:                                               ; preds = %5, %12
  %14 = icmp eq ptr %7, null
  br i1 %14, label %15, label %5, !llvm.loop !85

15:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_constraints_proxylocked_owner(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !87
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
  %20 = load ptr, ptr %19, align 8, !tbaa !88
  %21 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 25
  %22 = load i32, ptr %21, align 8, !tbaa !89
  %23 = getelementptr inbounds %struct.bArmature, ptr %20, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !91
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14, %18
  br label %28

28:                                               ; preds = %2, %4, %27, %18, %8
  %29 = phi i8 [ 1, %8 ], [ 1, %18 ], [ 0, %27 ], [ 0, %4 ], [ 0, %2 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_constraint_target_matrix_get(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3, ptr noundef %4, ptr noundef %5, float noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ListBase, align 8
  %9 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef %1) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %58, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %9, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = icmp eq ptr %13, null
  br i1 %14, label %58, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 160, ptr noundef nonnull @.str.3) #21
  %18 = getelementptr inbounds %struct.bConstraintOb, ptr %17, i64 0, i32 5
  store i16 %3, ptr %18, align 8, !tbaa !42
  store ptr %0, ptr %17, align 8, !tbaa !38
  switch i16 %3, label %39 [
    i16 1, label %19
    i16 2, label %29
  ]

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bConstraintOb, ptr %17, i64 0, i32 1
  store ptr %4, ptr %20, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.bConstraintOb, ptr %17, i64 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !44
  %22 = icmp eq ptr %4, null
  %23 = getelementptr inbounds %struct.bConstraintOb, ptr %17, i64 0, i32 3
  br i1 %22, label %27, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %23, ptr noundef nonnull %25) #21
  %26 = getelementptr inbounds %struct.bConstraintOb, ptr %17, i64 0, i32 4
  tail call void @copy_m4_m4(ptr noundef nonnull %26, ptr noundef nonnull %23) #21
  br label %39

27:                                               ; preds = %19
  tail call void @unit_m4(ptr noundef nonnull %23) #21
  %28 = getelementptr inbounds %struct.bConstraintOb, ptr %17, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %28) #21
  br label %39

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.bConstraintOb, ptr %17, i64 0, i32 1
  store ptr null, ptr %30, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct.bConstraintOb, ptr %17, i64 0, i32 2
  store ptr %4, ptr %31, align 8, !tbaa !44
  %32 = icmp eq ptr %4, null
  %33 = getelementptr inbounds %struct.bConstraintOb, ptr %17, i64 0, i32 3
  br i1 %32, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 29
  tail call void @copy_m4_m4(ptr noundef nonnull %33, ptr noundef nonnull %35) #21
  %36 = getelementptr inbounds %struct.bConstraintOb, ptr %17, i64 0, i32 4
  tail call void @copy_m4_m4(ptr noundef nonnull %36, ptr noundef nonnull %33) #21
  br label %39

37:                                               ; preds = %29
  tail call void @unit_m4(ptr noundef nonnull %33) #21
  %38 = getelementptr inbounds %struct.bConstraintOb, ptr %17, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %38) #21
  br label %39

39:                                               ; preds = %34, %37, %24, %27, %15
  %40 = load ptr, ptr %12, align 8, !tbaa !93
  %41 = call i32 %40(ptr noundef %1, ptr noundef nonnull %8) #21
  %42 = call ptr @BLI_findlink(ptr noundef nonnull %8, i32 noundef %2) #21
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %9, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !94
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void %46(ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull %42, float noundef %6) #21
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %42, i64 0, i32 4
  call void @copy_m4_m4(ptr noundef %5, ptr noundef nonnull %50) #21
  br label %51

51:                                               ; preds = %49, %39
  %52 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %9, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !95
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  call void %53(ptr noundef %1, ptr noundef nonnull %8, i8 noundef zeroext 1) #21
  br label %56

56:                                               ; preds = %55, %51
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %57(ptr noundef nonnull %17) #21
  br label %59

58:                                               ; preds = %11, %7
  tail call void @unit_m4(ptr noundef %5) #21
  br label %59

59:                                               ; preds = %58, %56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_constraint_targets_for_solving_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef %0) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %5, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = tail call i32 %9(ptr noundef %0, ptr noundef %2) #21
  %13 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %5, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = icmp eq ptr %14, null
  %16 = load ptr, ptr %2, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %15, label %19, label %18

18:                                               ; preds = %11
  br i1 %17, label %30, label %20

19:                                               ; preds = %11
  br i1 %17, label %30, label %25

20:                                               ; preds = %18, %20
  %21 = phi ptr [ %23, %20 ], [ %16, %18 ]
  %22 = load ptr, ptr %13, align 8, !tbaa !94
  tail call void %22(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %21, float noundef %3) #21
  %23 = load ptr, ptr %21, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %20, !llvm.loop !96

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %28, %25 ], [ %16, %19 ]
  %27 = getelementptr inbounds %struct.bConstraintTarget, ptr %26, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %27) #21
  %28 = load ptr, ptr %26, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %25, !llvm.loop !97

30:                                               ; preds = %20, %25, %18, %19, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_constraints_solve(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  %7 = icmp eq ptr %1, null
  br i1 %7, label %58, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %58, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %13 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 2
  br label %15

15:                                               ; preds = %11, %55
  %16 = phi ptr [ %9, %11 ], [ %56, %55 ]
  %17 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %16) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bConstraint, ptr %16, i64 0, i32 4
  %21 = load i16, ptr %20, align 2, !tbaa !70
  %22 = and i16 %21, 516
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %17, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !98
  %27 = icmp eq ptr %26, null
  br i1 %27, label %55, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bConstraint, ptr %16, i64 0, i32 9
  %30 = load float, ptr %29, align 8, !tbaa !99
  %31 = fcmp oeq float %30, 0.000000e+00
  br i1 %31, label %55, label %32

32:                                               ; preds = %28
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %12) #21
  %33 = load ptr, ptr %13, align 8, !tbaa !41
  %34 = load ptr, ptr %14, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.bConstraint, ptr %16, i64 0, i32 5
  %36 = load i8, ptr %35, align 4, !tbaa !71
  %37 = zext i8 %36 to i16
  call void @BKE_constraint_mat_convertspace(ptr noundef %33, ptr noundef %34, ptr noundef nonnull %12, i16 noundef signext 0, i16 noundef signext %37) #23
  call void @BKE_constraint_targets_for_solving_get(ptr noundef nonnull %16, ptr noundef nonnull %1, ptr noundef nonnull %5, float noundef %2) #23
  %38 = load ptr, ptr %25, align 8, !tbaa !98
  call void %38(ptr noundef nonnull %16, ptr noundef nonnull %1, ptr noundef nonnull %5) #21
  %39 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %17, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !95
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %32
  call void %40(ptr noundef nonnull %16, ptr noundef nonnull %5, i8 noundef zeroext 1) #21
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i16, ptr %20, align 2, !tbaa !70
  %45 = and i16 %44, 64
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load ptr, ptr %13, align 8, !tbaa !41
  %49 = load ptr, ptr %14, align 8, !tbaa !44
  %50 = load i8, ptr %35, align 4, !tbaa !71
  %51 = zext i8 %50 to i16
  call void @BKE_constraint_mat_convertspace(ptr noundef %48, ptr noundef %49, ptr noundef nonnull %12, i16 noundef signext %51, i16 noundef signext 0) #23
  br label %52

52:                                               ; preds = %47, %43
  %53 = fcmp olt float %30, 1.000000e+00
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #22
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %12) #21
  call void @blend_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %6, float noundef %30) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #22
  br label %55

55:                                               ; preds = %52, %54, %28, %24, %19, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  %56 = load ptr, ptr %16, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %15, !llvm.loop !100

58:                                               ; preds = %55, %8, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare void @blend_m4_m4m4(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @childof_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !101 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @childof_new_data(ptr noundef %0) #0 !PGOFuncName !102 {
  %2 = getelementptr inbounds %struct.bChildOfConstraint, ptr %0, i64 0, i32 1
  store i32 511, ptr %2, align 8, !tbaa !103
  %3 = getelementptr inbounds %struct.bChildOfConstraint, ptr %0, i64 0, i32 3
  tail call void @unit_m4(ptr noundef nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @childof_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !105 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !106
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bChildOfConstraint, ptr %8, i64 0, i32 4
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @childof_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !117 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !106
  %17 = getelementptr inbounds %struct.bChildOfConstraint, ptr %9, i64 0, i32 4
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @default_get_tarmat(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, float %3) #0 !PGOFuncName !118 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 3
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 5
  %14 = load i16, ptr %13, align 8, !tbaa !110
  %15 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 10
  %16 = load float, ptr %15, align 4, !tbaa !119
  tail call fastcc void @constraint_target_to_mat4(ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %12, i16 noundef signext %14, float noundef %16) #23
  br label %19

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %18) #21
  br label %19

19:                                               ; preds = %4, %17, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @childof_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !120 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = load ptr, ptr %2, align 8, !tbaa !83
  %16 = icmp eq ptr %15, null
  br i1 %16, label %113, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !107
  %20 = icmp eq ptr %19, null
  br i1 %20, label %113, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  %22 = getelementptr inbounds %struct.bChildOfConstraint, ptr %14, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !103
  %24 = icmp eq i32 %23, 511
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bConstraintTarget, ptr %15, i64 0, i32 4
  %27 = getelementptr inbounds %struct.bChildOfConstraint, ptr %14, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %26, ptr noundef nonnull %27) #21
  %28 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mul_m4_m4m4(ptr noundef nonnull %28, ptr noundef nonnull %4, ptr noundef nonnull %28) #21
  br label %112

29:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #22
  %30 = getelementptr inbounds %struct.bChildOfConstraint, ptr %14, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %30) #21
  %31 = getelementptr inbounds %struct.bConstraintTarget, ptr %15, i64 0, i32 4
  %32 = getelementptr inbounds %struct.bConstraintTarget, ptr %15, i64 0, i32 4, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %32) #23
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %15, i64 0, i32 8
  %34 = load i16, ptr %33, align 2, !tbaa !116
  call void @mat4_to_eulO(ptr noundef nonnull %8, i16 noundef signext %34, ptr noundef nonnull %31) #21
  call void @mat4_to_size(ptr noundef nonnull %9, ptr noundef nonnull %31) #21
  %35 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %35) #23
  %36 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 6
  %37 = load i16, ptr %36, align 2, !tbaa !43
  call void @mat4_to_eulO(ptr noundef nonnull %11, i16 noundef signext %37, ptr noundef nonnull %5) #21
  call void @mat4_to_size(ptr noundef nonnull %12, ptr noundef nonnull %5) #21
  %38 = load i32, ptr %22, align 8, !tbaa !103
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store float 0.000000e+00, ptr %10, align 4, !tbaa !57
  store float 0.000000e+00, ptr %7, align 4, !tbaa !57
  br label %42

42:                                               ; preds = %41, %29
  %43 = and i32 %38, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store float 0.000000e+00, ptr %46, align 4, !tbaa !57
  %47 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float 0.000000e+00, ptr %47, align 4, !tbaa !57
  br label %48

48:                                               ; preds = %45, %42
  %49 = and i32 %38, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float 0.000000e+00, ptr %52, align 4, !tbaa !57
  %53 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %53, align 4, !tbaa !57
  br label %54

54:                                               ; preds = %51, %48
  %55 = and i32 %38, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store float 0.000000e+00, ptr %11, align 4, !tbaa !57
  store float 0.000000e+00, ptr %8, align 4, !tbaa !57
  br label %58

58:                                               ; preds = %57, %54
  %59 = and i32 %38, 16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  store float 0.000000e+00, ptr %62, align 4, !tbaa !57
  %63 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  store float 0.000000e+00, ptr %63, align 4, !tbaa !57
  br label %64

64:                                               ; preds = %61, %58
  %65 = and i32 %38, 32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float 0.000000e+00, ptr %68, align 4, !tbaa !57
  %69 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 0.000000e+00, ptr %69, align 4, !tbaa !57
  br label %70

70:                                               ; preds = %67, %64
  %71 = and i32 %38, 64
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store float 1.000000e+00, ptr %12, align 4, !tbaa !57
  store float 1.000000e+00, ptr %9, align 4, !tbaa !57
  br label %74

74:                                               ; preds = %73, %70
  %75 = and i32 %38, 128
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  store float 1.000000e+00, ptr %78, align 4, !tbaa !57
  %79 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store float 1.000000e+00, ptr %79, align 4, !tbaa !57
  br label %80

80:                                               ; preds = %77, %74
  %81 = and i32 %38, 256
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  store float 1.000000e+00, ptr %84, align 4, !tbaa !57
  %85 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 1.000000e+00, ptr %85, align 4, !tbaa !57
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i16, ptr %33, align 2, !tbaa !116
  call void @loc_eulO_size_to_mat4(ptr noundef nonnull %31, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i16 noundef signext %87) #21
  %88 = load i16, ptr %36, align 2, !tbaa !43
  call void @loc_eulO_size_to_mat4(ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i16 noundef signext %88) #21
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %31, ptr noundef nonnull %5) #21
  %89 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %89) #21
  call void @mul_m4_m4m4(ptr noundef nonnull %89, ptr noundef nonnull %4, ptr noundef nonnull %6) #21
  %90 = load i32, ptr %22, align 8, !tbaa !103
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %95 = load float, ptr %94, align 16, !tbaa !57
  %96 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  store float %95, ptr %96, align 8, !tbaa !57
  br label %97

97:                                               ; preds = %93, %86
  %98 = and i32 %90, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !57
  %103 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  store float %102, ptr %103, align 4, !tbaa !57
  br label %104

104:                                              ; preds = %100, %97
  %105 = and i32 %90, 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 2
  %109 = load float, ptr %108, align 8, !tbaa !57
  %110 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  store float %109, ptr %110, align 8, !tbaa !57
  br label %111

111:                                              ; preds = %107, %104
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  br label %112

112:                                              ; preds = %111, %25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  br label %113

113:                                              ; preds = %112, %17, %3
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @constraint_target_to_mat4(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, float noundef %4) unnamed_addr #0 !PGOFuncName !121 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = load i8, ptr %1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef nonnull %11) #21
  tail call void @BKE_constraint_mat_convertspace(ptr noundef %0, ptr noundef null, ptr noundef %2, i16 noundef signext 0, i16 noundef signext %3) #23
  br label %36

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !112
  switch i16 %14, label %17 [
    i16 1, label %15
    i16 22, label %16
  ]

15:                                               ; preds = %12
  tail call fastcc void @contarget_get_mesh_mat(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #23
  tail call void @BKE_constraint_mat_convertspace(ptr noundef nonnull %0, ptr noundef null, ptr noundef %2, i16 noundef signext 0, i16 noundef signext %3) #23
  br label %36

16:                                               ; preds = %12
  tail call fastcc void @contarget_get_lattice_mat(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #23
  tail call void @BKE_constraint_mat_convertspace(ptr noundef nonnull %0, ptr noundef null, ptr noundef %2, i16 noundef signext 0, i16 noundef signext %3) #23
  br label %36

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %19, ptr noundef nonnull %1) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = fcmp olt float %4, 0x3EB0C6F7A0000000
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 29
  tail call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %25, ptr noundef nonnull %26) #21
  br label %35

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 31
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 32
  call void @interp_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %28, ptr noundef nonnull %29, float noundef %4) #21
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %30) #21
  %31 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %31, ptr noundef nonnull %7) #23
  %32 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef %2, ptr noundef nonnull %32, ptr noundef nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #22
  br label %35

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef nonnull %34) #21
  br label %35

35:                                               ; preds = %24, %27, %33
  call void @BKE_constraint_mat_convertspace(ptr noundef nonnull %0, ptr noundef %20, ptr noundef %2, i16 noundef signext 0, i16 noundef signext %3) #23
  br label %36

36:                                               ; preds = %15, %35, %16, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @contarget_get_mesh_mat(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !122 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = tail call ptr @BKE_editmesh_from_object(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #22
  %12 = tail call i32 @defgroup_name_index(ptr noundef %0, ptr noundef %1) #21
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef nonnull %13) #21
  %14 = icmp eq i32 %12, -1
  br i1 %14, label %77, label %15

15:                                               ; preds = %3
  %16 = icmp eq ptr %11, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @CDDM_from_editbmesh(ptr noundef nonnull %11, i8 noundef zeroext 0, i8 noundef zeroext 0) #21
  br label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %21 = load ptr, ptr %20, align 8, !tbaa !123
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %18, %17 ], [ %21, %19 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %77, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 50
  %27 = load ptr, ptr %26, align 8, !tbaa !124
  %28 = tail call ptr %27(ptr noundef nonnull %23, i32 noundef 2) #21
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 23
  %30 = load ptr, ptr %29, align 8, !tbaa !127
  %31 = tail call i32 %30(ptr noundef nonnull %23) #21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #22
  %32 = icmp eq ptr %28, null
  br i1 %32, label %73, label %33

33:                                               ; preds = %25
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 76
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 78
  br label %38

38:                                               ; preds = %35, %53
  %39 = phi float [ 0.000000e+00, %35 ], [ %54, %53 ]
  %40 = phi ptr [ %28, %35 ], [ %56, %53 ]
  %41 = phi i32 [ 0, %35 ], [ %55, %53 ]
  %42 = call ptr @defvert_find_index(ptr noundef nonnull %40, i32 noundef %12) #21
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.MDeformWeight, ptr %42, i64 0, i32 1
  %46 = load float, ptr %45, align 4, !tbaa !128
  %47 = fcmp ogt float %46, 0.000000e+00
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load ptr, ptr %36, align 8, !tbaa !130
  call void %49(ptr noundef nonnull %23, i32 noundef %41, ptr noundef nonnull %9) #21
  %50 = load ptr, ptr %37, align 8, !tbaa !131
  call void %50(ptr noundef nonnull %23, i32 noundef %41, ptr noundef nonnull %10) #21
  %51 = load float, ptr %45, align 4, !tbaa !128
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %4, ptr noundef nonnull %9, float noundef %51) #23
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %5, ptr noundef nonnull %10, float noundef %51) #23
  %52 = fadd float %39, %51
  br label %53

53:                                               ; preds = %48, %44, %38
  %54 = phi float [ %52, %48 ], [ %39, %44 ], [ %39, %38 ]
  %55 = add nuw nsw i32 %41, 1
  %56 = getelementptr inbounds %struct.MDeformVert, ptr %40, i64 1
  %57 = icmp eq i32 %55, %31
  br i1 %57, label %58, label %38, !llvm.loop !132

58:                                               ; preds = %53
  %59 = fcmp ogt float %54, 0.000000e+00
  br i1 %59, label %60, label %62

60:                                               ; preds = %58
  %61 = fdiv float 1.000000e+00, %54
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %61) #23
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %61) #23
  br label %62

62:                                               ; preds = %33, %60, %58
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %13) #21
  %63 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %8, ptr noundef nonnull %7) #21
  call void @transpose_m3(ptr noundef nonnull %8) #21
  call void @mul_m3_v3(ptr noundef nonnull %8, ptr noundef nonnull %5) #21
  %64 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #23
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %8, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %65) #23
  call fastcc void @cross_v3_v3v3(ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %66 = call fastcc float @len_v3(ptr noundef %2) #23
  %67 = fcmp olt float %66, 0x3F50624DE0000000
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %8) #23
  call fastcc void @cross_v3_v3v3(ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  br label %69

69:                                               ; preds = %68, %62
  %70 = getelementptr inbounds [4 x float], ptr %2, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %70, ptr noundef nonnull %5) #23
  %71 = getelementptr inbounds [4 x float], ptr %2, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %71, ptr noundef nonnull %70, ptr noundef %2) #23
  call void @normalize_m4(ptr noundef %2) #21
  %72 = getelementptr inbounds [4 x float], ptr %2, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %72, ptr noundef nonnull %13, ptr noundef nonnull %4) #21
  br label %73

73:                                               ; preds = %25, %69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  br i1 %16, label %77, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 95
  %76 = load ptr, ptr %75, align 8, !tbaa !133
  call void %76(ptr noundef nonnull %23) #21
  br label %77

77:                                               ; preds = %22, %73, %74, %3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @contarget_get_lattice_mat(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !134 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %9 = load ptr, ptr %8, align 8, !tbaa !135
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @BKE_displist_find(ptr noundef nonnull %9, i32 noundef 7) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.DispList, ptr %12, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !136
  br label %17

17:                                               ; preds = %3, %11, %14
  %18 = phi ptr [ %16, %14 ], [ null, %11 ], [ null, %3 ]
  %19 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 21
  %20 = load ptr, ptr %19, align 8, !tbaa !138
  %21 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 24
  %22 = load ptr, ptr %21, align 8, !tbaa !140
  %23 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 2
  %24 = load i16, ptr %23, align 8, !tbaa !141
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !142
  %28 = sext i16 %27 to i32
  %29 = mul nsw i32 %28, %25
  %30 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 4
  %31 = load i16, ptr %30, align 4, !tbaa !143
  %32 = sext i16 %31 to i32
  %33 = mul i32 %29, %32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %34 = tail call i32 @defgroup_name_index(ptr noundef nonnull %0, ptr noundef %1) #21
  %35 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef nonnull %35) #21
  %36 = icmp eq i32 %34, -1
  %37 = icmp eq ptr %22, null
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %86, label %39

39:                                               ; preds = %17
  %40 = icmp sgt i32 %33, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %39, %69
  %42 = phi ptr [ %75, %69 ], [ %18, %39 ]
  %43 = phi ptr [ %74, %69 ], [ %20, %39 ]
  %44 = phi i32 [ %76, %69 ], [ 0, %39 ]
  %45 = phi i32 [ %70, %69 ], [ 0, %39 ]
  %46 = phi ptr [ %77, %69 ], [ %22, %39 ]
  %47 = getelementptr inbounds %struct.MDeformVert, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !144
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %41
  %51 = icmp eq ptr %42, null
  %52 = select i1 %51, ptr %43, ptr %42
  br label %53

53:                                               ; preds = %50, %64
  %54 = phi i32 [ 0, %50 ], [ %66, %64 ]
  %55 = phi i32 [ %45, %50 ], [ %65, %64 ]
  %56 = tail call ptr @defvert_find_index(ptr noundef nonnull %46, i32 noundef %34) #21
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.MDeformWeight, ptr %56, i64 0, i32 1
  %60 = load float, ptr %59, align 4, !tbaa !128
  %61 = fcmp ogt float %60, 0.000000e+00
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %52, i64 12, i1 false)
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %63 = add nsw i32 %55, 1
  br label %64

64:                                               ; preds = %62, %58, %53
  %65 = phi i32 [ %63, %62 ], [ %55, %58 ], [ %55, %53 ]
  %66 = add nuw nsw i32 %54, 1
  %67 = load i32, ptr %47, align 8, !tbaa !144
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %53, label %69, !llvm.loop !146

69:                                               ; preds = %64, %41
  %70 = phi i32 [ %45, %41 ], [ %65, %64 ]
  %71 = icmp eq ptr %42, null
  %72 = getelementptr inbounds float, ptr %42, i64 3
  %73 = zext i1 %71 to i64
  %74 = getelementptr inbounds %struct.BPoint, ptr %43, i64 %73
  %75 = select i1 %71, ptr null, ptr %72
  %76 = add nuw nsw i32 %44, 1
  %77 = getelementptr inbounds %struct.MDeformVert, ptr %46, i64 1
  %78 = icmp eq i32 %76, %33
  br i1 %78, label %79, label %41, !llvm.loop !147

79:                                               ; preds = %69
  %80 = icmp eq i32 %70, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %79
  %82 = sitofp i32 %70 to float
  %83 = fdiv float 1.000000e+00, %82
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %83) #23
  br label %84

84:                                               ; preds = %39, %81, %79
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %35, ptr noundef nonnull %4) #21
  %85 = getelementptr inbounds [4 x float], ptr %2, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %85, ptr noundef nonnull %5) #23
  br label %86

86:                                               ; preds = %17, %84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !148 {
  %3 = load float, ptr %1, align 4, !tbaa !57
  store float %3, ptr %0, align 4, !tbaa !57
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !57
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CDDM_from_editbmesh(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #12 !PGOFuncName !149 {
  %4 = load float, ptr %1, align 4, !tbaa !57
  %5 = load float, ptr %0, align 4, !tbaa !57
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !57
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !57
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !57
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !57
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #12 !PGOFuncName !150 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !57
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @transpose_m3(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #13 !PGOFuncName !151 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #23
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #12 !PGOFuncName !152 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !57
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !57
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !57
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !57
  %15 = load float, ptr %8, align 4, !tbaa !57
  %16 = load float, ptr %2, align 4, !tbaa !57
  %17 = load float, ptr %1, align 4, !tbaa !57
  %18 = load float, ptr %6, align 4, !tbaa !57
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !57
  %23 = load float, ptr %1, align 4, !tbaa !57
  %24 = load float, ptr %10, align 4, !tbaa !57
  %25 = load float, ptr %4, align 4, !tbaa !57
  %26 = load float, ptr %2, align 4, !tbaa !57
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !153 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #23
  %3 = tail call float @sqrtf(float noundef %2) #21
  ret float %3
}

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !154 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #23
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #21
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #23
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #23
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !155 {
  %3 = load float, ptr %0, align 4, !tbaa !57
  %4 = load float, ptr %1, align 4, !tbaa !57
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !57
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !57
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #12 !PGOFuncName !156 {
  %4 = load float, ptr %1, align 4, !tbaa !57
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !57
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !57
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !57
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !57
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_displist_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !157 {
  %3 = load float, ptr %1, align 4, !tbaa !57
  %4 = load float, ptr %0, align 4, !tbaa !57
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !57
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !57
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !57
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !57
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !57
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @mat4_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @loc_eulO_size_to_mat4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @trackto_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !158 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @trackto_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !159 {
  %2 = getelementptr inbounds %struct.bTrackToConstraint, ptr %0, i64 0, i32 1
  store i32 1, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.bTrackToConstraint, ptr %0, i64 0, i32 2
  store i32 2, ptr %3, align 4, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @trackto_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !163 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !164
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bTrackToConstraint, ptr %8, i64 0, i32 5
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @trackto_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !165 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !164
  %17 = getelementptr inbounds %struct.bTrackToConstraint, ptr %9, i64 0, i32 5
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @trackto_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !166 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr %2, align 8, !tbaa !83
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #22
  %16 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mat4_to_size(ptr noundef nonnull %4, ptr noundef nonnull %16) #21
  %17 = load float, ptr %4, align 4, !tbaa !57
  store float %17, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %18, align 4, !tbaa !57
  %19 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %19, align 8, !tbaa !57
  %20 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !57
  %22 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 1
  store float %21, ptr %22, align 4, !tbaa !57
  %23 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 2
  store float 0.000000e+00, ptr %23, align 8, !tbaa !57
  %24 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  store <2 x float> zeroinitializer, ptr %24, align 8, !tbaa !57
  %25 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !57
  %27 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 2
  store float %26, ptr %27, align 8, !tbaa !57
  %28 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %29 = getelementptr inbounds %struct.bConstraintTarget, ptr %9, i64 0, i32 4, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %28, ptr noundef nonnull %29) #23
  %30 = getelementptr inbounds %struct.bConstraintTarget, ptr %9, i64 0, i32 4, i64 2
  %31 = getelementptr inbounds %struct.bTrackToConstraint, ptr %8, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !160
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.bTrackToConstraint, ptr %8, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !162
  %36 = trunc i32 %35 to i16
  %37 = getelementptr inbounds %struct.bTrackToConstraint, ptr %8, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !167
  %39 = trunc i32 %38 to i16
  call fastcc void @vectomat(ptr noundef nonnull %5, ptr noundef nonnull %30, i16 noundef signext %33, i16 noundef signext %36, i16 noundef signext %39, ptr noundef nonnull %6) #23
  call void @mul_m4_m3m4(ptr noundef nonnull %16, ptr noundef nonnull %6, ptr noundef nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %40

40:                                               ; preds = %15, %11, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #12 !PGOFuncName !168 {
  %4 = load float, ptr %1, align 4, !tbaa !57
  %5 = load float, ptr %2, align 4, !tbaa !57
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !57
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !57
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !57
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !57
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vectomat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !169 {
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #22
  %11 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %7, ptr noundef %0) #23
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !57
  %14 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 1.000000e+00, ptr %14, align 8, !tbaa !57
  br label %15

15:                                               ; preds = %13, %6
  %16 = icmp sgt i16 %2, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = add nsw i16 %2, -3
  br label %20

19:                                               ; preds = %15
  call fastcc void @negate_v3(ptr noundef nonnull %7) #23
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i16 [ %18, %17 ], [ %2, %19 ]
  %22 = and i16 %4, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %1) #23
  br label %27

25:                                               ; preds = %20
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !57
  %26 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float 1.000000e+00, ptr %26, align 8, !tbaa !57
  br label %27

27:                                               ; preds = %25, %24
  call void @project_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %9) #23
  %28 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #23
  %29 = fcmp oeq float %28, 0.000000e+00
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %9, align 8, !tbaa !57
  %31 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  store float 0.000000e+00, ptr %31, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %30, %27
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %7) #23
  %33 = call fastcc float @normalize_v3(ptr noundef nonnull %10) #23
  %34 = icmp eq i16 %21, %3
  br i1 %34, label %56, label %35

35:                                               ; preds = %32
  %36 = sext i16 %3 to i32
  %37 = sext i16 %21 to i32
  %38 = add nsw i32 %36, %37
  %39 = sub nsw i32 3, %38
  %40 = call fastcc i32 @basis_cross(i32 noundef %37, i32 noundef %36) #23, !range !170
  %41 = sitofp i32 %40 to float
  %42 = sext i32 %39 to i64
  %43 = getelementptr inbounds [3 x float], ptr %5, i64 %42
  %44 = load <2 x float>, ptr %10, align 8, !tbaa !57
  %45 = insertelement <2 x float> poison, float %41, i64 0
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %47 = fmul <2 x float> %44, %46
  store <2 x float> %47, ptr %43, align 4, !tbaa !57
  %48 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %49 = load float, ptr %48, align 8, !tbaa !57
  %50 = fmul float %49, %41
  %51 = getelementptr inbounds [3 x float], ptr %5, i64 %42, i64 2
  store float %50, ptr %51, align 4, !tbaa !57
  %52 = sext i16 %3 to i64
  %53 = getelementptr inbounds [3 x float], ptr %5, i64 %52
  call fastcc void @copy_v3_v3(ptr noundef %53, ptr noundef nonnull %9) #23
  %54 = sext i16 %21 to i64
  %55 = getelementptr inbounds [3 x float], ptr %5, i64 %54
  call fastcc void @copy_v3_v3(ptr noundef %55, ptr noundef nonnull %7) #23
  br label %57

56:                                               ; preds = %32
  call void @unit_m3(ptr noundef %5) #21
  br label %57

57:                                               ; preds = %56, %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_m3m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #12 !PGOFuncName !171 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !57
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !57
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !57
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @basis_cross(i32 noundef %0, i32 noundef %1) unnamed_addr #18 !PGOFuncName !172 {
  %3 = sub nsw i32 %0, %1
  %4 = add i32 %3, 2
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds [5 x i32], ptr @switch.table.basis_cross, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @kinematic_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !173 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 6
  tail call void %1(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @kinematic_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !174 {
  %2 = getelementptr inbounds %struct.bKinematicConstraint, ptr %0, i64 0, i32 9
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %2, align 4, !tbaa !57
  %3 = getelementptr inbounds %struct.bKinematicConstraint, ptr %0, i64 0, i32 1
  store i16 500, ptr %3, align 8, !tbaa !175
  %4 = getelementptr inbounds %struct.bKinematicConstraint, ptr %0, i64 0, i32 14
  store float 1.000000e+00, ptr %4, align 4, !tbaa !177
  %5 = getelementptr inbounds %struct.bKinematicConstraint, ptr %0, i64 0, i32 2
  store i16 49, ptr %5, align 2, !tbaa !178
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @kinematic_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !179 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %93

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !180
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bKinematicConstraint, ptr %8, i64 0, i32 5
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %52 = tail call ptr %51(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %53 = getelementptr inbounds %struct.bKinematicConstraint, ptr %8, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !181
  %55 = getelementptr inbounds %struct.bConstraintTarget, ptr %52, i64 0, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !107
  %56 = getelementptr inbounds %struct.bConstraintTarget, ptr %52, i64 0, i32 3
  %57 = getelementptr inbounds %struct.bKinematicConstraint, ptr %8, i64 0, i32 7
  %58 = tail call ptr @BLI_strncpy(ptr noundef nonnull %56, ptr noundef nonnull %57, i64 noundef 64) #21
  %59 = load i8, ptr %16, align 1, !tbaa !109
  %60 = zext i8 %59 to i16
  %61 = getelementptr inbounds %struct.bConstraintTarget, ptr %52, i64 0, i32 5
  store i16 %60, ptr %61, align 8, !tbaa !110
  %62 = getelementptr inbounds %struct.bConstraintTarget, ptr %52, i64 0, i32 6
  store i16 1, ptr %62, align 2, !tbaa !111
  %63 = load ptr, ptr %55, align 8, !tbaa !107
  %64 = icmp eq ptr %63, null
  br i1 %64, label %92, label %65

65:                                               ; preds = %50
  %66 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 3
  %67 = load i16, ptr %66, align 8, !tbaa !112
  switch i16 %67, label %85 [
    i16 25, label %68
    i16 1, label %80
    i16 22, label %80
  ]

68:                                               ; preds = %65
  %69 = load i8, ptr %56, align 8, !tbaa !113
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 18
  %73 = load ptr, ptr %72, align 8, !tbaa !87
  %74 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %73, ptr noundef nonnull %56) #21
  %75 = getelementptr inbounds %struct.bConstraintTarget, ptr %52, i64 0, i32 7
  store i16 2, ptr %75, align 4, !tbaa !114
  %76 = icmp eq ptr %74, null
  br i1 %76, label %89, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.bPoseChannel, ptr %74, i64 0, i32 26
  %79 = load i16, ptr %78, align 4, !tbaa !45
  br label %89

80:                                               ; preds = %65, %65
  %81 = load i8, ptr %56, align 8, !tbaa !113
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.bConstraintTarget, ptr %52, i64 0, i32 7
  store i16 3, ptr %84, align 4, !tbaa !114
  br label %89

85:                                               ; preds = %65, %68, %80
  %86 = getelementptr inbounds %struct.bConstraintTarget, ptr %52, i64 0, i32 7
  store i16 1, ptr %86, align 4, !tbaa !114
  %87 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 83
  %88 = load i16, ptr %87, align 8, !tbaa !115
  br label %89

89:                                               ; preds = %77, %71, %83, %85
  %90 = phi i16 [ %88, %85 ], [ 1, %83 ], [ %79, %77 ], [ 1, %71 ]
  %91 = getelementptr inbounds %struct.bConstraintTarget, ptr %52, i64 0, i32 8
  store i16 %90, ptr %91, align 2, !tbaa !116
  br label %92

92:                                               ; preds = %89, %50
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %52) #21
  br label %93

93:                                               ; preds = %2, %92
  %94 = phi i32 [ 2, %92 ], [ 0, %2 ]
  ret i32 %94
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @kinematic_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !182 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %39

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %10, align 8, !tbaa !183
  %14 = icmp eq i8 %2, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  %16 = icmp eq ptr %13, null
  br i1 %16, label %39, label %38

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !107
  store ptr %19, ptr %9, align 8, !tbaa !180
  %20 = getelementptr inbounds %struct.bKinematicConstraint, ptr %9, i64 0, i32 5
  %21 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %22 = tail call ptr @BLI_strncpy(ptr noundef nonnull %20, ptr noundef nonnull %21, i64 noundef 64) #21
  %23 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %24 = load i16, ptr %23, align 8, !tbaa !110
  %25 = trunc i16 %24 to i8
  %26 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %25, ptr %26, align 1, !tbaa !109
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  %27 = icmp eq ptr %13, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.bConstraintTarget, ptr %13, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !107
  %31 = getelementptr inbounds %struct.bKinematicConstraint, ptr %9, i64 0, i32 6
  store ptr %30, ptr %31, align 8, !tbaa !181
  %32 = getelementptr inbounds %struct.bKinematicConstraint, ptr %9, i64 0, i32 7
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %13, i64 0, i32 3
  %34 = tail call ptr @BLI_strncpy(ptr noundef nonnull %32, ptr noundef nonnull %33, i64 noundef 64) #21
  %35 = getelementptr inbounds %struct.bConstraintTarget, ptr %13, i64 0, i32 5
  %36 = load i16, ptr %35, align 8, !tbaa !110
  %37 = trunc i16 %36 to i8
  store i8 %37, ptr %26, align 1, !tbaa !109
  br label %38

38:                                               ; preds = %15, %28
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %13) #21
  br label %39

39:                                               ; preds = %7, %17, %15, %38, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @kinematic_get_tarmat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, float %3) #0 !PGOFuncName !184 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp eq ptr %2, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 3
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 5
  %17 = load i16, ptr %16, align 8, !tbaa !110
  %18 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 10
  %19 = load float, ptr %18, align 4, !tbaa !119
  tail call fastcc void @constraint_target_to_mat4(ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %15, i16 noundef signext %17, float noundef %19) #23
  br label %38

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.bKinematicConstraint, ptr %7, i64 0, i32 2
  %22 = load i16, ptr %21, align 2, !tbaa !178
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %30) #21
  br label %38

31:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %32 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 47
  %33 = getelementptr inbounds %struct.bKinematicConstraint, ptr %7, i64 0, i32 11
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %32, ptr noundef nonnull %33) #21
  %34 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  call void @copy_m4_m4(ptr noundef nonnull %34, ptr noundef nonnull %32) #21
  %35 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %35, ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  br label %38

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %37) #21
  br label %38

38:                                               ; preds = %4, %29, %31, %36, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @followpath_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !185 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @followpath_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !186 {
  %2 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %0, i64 0, i32 4
  store i16 1, ptr %2, align 4, !tbaa !187
  %3 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %0, i64 0, i32 5
  store i16 2, ptr %3, align 2, !tbaa !189
  %4 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %0, i64 0, i32 1
  store float 0.000000e+00, ptr %4, align 8, !tbaa !190
  %5 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !191
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @followpath_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !192 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !193
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 1, !tbaa !109
  %15 = zext i8 %14 to i16
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !110
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %17, align 2, !tbaa !111
  %18 = icmp eq ptr %11, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %20, align 4, !tbaa !114
  br label %21

21:                                               ; preds = %19, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @followpath_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !194 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !193
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !110
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %19, ptr %20, align 1, !tbaa !109
  br label %21

21:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %22

22:                                               ; preds = %7, %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @followpath_get_tarmat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, float %3) #0 !PGOFuncName !195 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca float, align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = icmp eq ptr %2, null
  br i1 %14, label %114, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !107
  %18 = icmp eq ptr %17, null
  br i1 %18, label %112, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !112
  %22 = icmp eq i16 %21, 2
  br i1 %22, label %23, label %112

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  %26 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %26) #21
  %27 = load ptr, ptr %16, align 8, !tbaa !107
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 118
  %29 = load ptr, ptr %28, align 8, !tbaa !135
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load ptr, ptr %1, align 8, !tbaa !38
  tail call void @BKE_displist_make_curveTypes(ptr noundef %32, ptr noundef nonnull %27, i8 noundef zeroext 0) #21
  %33 = load ptr, ptr %16, align 8, !tbaa !107
  %34 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 118
  %35 = load ptr, ptr %34, align 8, !tbaa !135
  br label %36

36:                                               ; preds = %31, %23
  %37 = phi ptr [ %35, %31 ], [ %29, %23 ]
  %38 = phi ptr [ %33, %31 ], [ %27, %23 ]
  %39 = getelementptr inbounds %struct.CurveCache, ptr %37, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !196
  %41 = icmp eq ptr %40, null
  br i1 %41, label %111, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %40, align 8, !tbaa !198
  %44 = icmp eq ptr %43, null
  br i1 %44, label %111, label %45

45:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #22
  %46 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %13, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !191
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.Curve, ptr %25, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !200
  %53 = getelementptr inbounds %struct.Curve, ptr %25, i64 0, i32 64
  %54 = load float, ptr %53, align 8, !tbaa !203
  %55 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %13, i64 0, i32 1
  %56 = load float, ptr %55, align 8, !tbaa !190
  %57 = fsub float %54, %56
  %58 = getelementptr inbounds %struct.Curve, ptr %25, i64 0, i32 20
  %59 = load i32, ptr %58, align 4, !tbaa !204
  %60 = sitofp i32 %59 to float
  %61 = fdiv float %57, %60
  %62 = icmp eq ptr %52, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.Nurb, ptr %52, i64 0, i32 13
  %65 = load i16, ptr %64, align 4, !tbaa !205
  %66 = and i16 %65, 1
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = fcmp olt float %61, 0.000000e+00
  %70 = fcmp ogt float %61, 1.000000e+00
  %71 = or i1 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = tail call float @llvm.floor.f32(float %61)
  %74 = fsub float %61, %73
  br label %83

75:                                               ; preds = %63, %50
  %76 = fcmp olt float %61, 0.000000e+00
  br i1 %76, label %83, label %77

77:                                               ; preds = %75
  %78 = fcmp ogt float %61, 1.000000e+00
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  br label %83

80:                                               ; preds = %45
  %81 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %13, i64 0, i32 2
  %82 = load float, ptr %81, align 4, !tbaa !207
  br label %83

83:                                               ; preds = %68, %72, %77, %79, %75, %80
  %84 = phi float [ %82, %80 ], [ %74, %72 ], [ %61, %68 ], [ 1.000000e+00, %79 ], [ %61, %77 ], [ 0.000000e+00, %75 ]
  %85 = and i32 %47, 1
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, ptr null, ptr %8
  %88 = call i32 @where_on_path(ptr noundef nonnull %38, float noundef %84, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %87, ptr noundef nonnull %7, ptr noundef null) #21
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #22
  call void @unit_m4(ptr noundef nonnull %9) #21
  %91 = load i32, ptr %46, align 8, !tbaa !191
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %13, i64 0, i32 4
  %96 = load i16, ptr %95, align 4, !tbaa !187
  %97 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %13, i64 0, i32 5
  %98 = load i16, ptr %97, align 2, !tbaa !189
  call void @quat_apply_track(ptr noundef nonnull %8, i16 noundef signext %96, i16 noundef signext %98) #21
  call void @quat_to_mat4(ptr noundef nonnull %9, ptr noundef nonnull %8) #21
  %99 = load i32, ptr %46, align 8, !tbaa !191
  br label %100

100:                                              ; preds = %94, %90
  %101 = phi i32 [ %99, %94 ], [ %91, %90 ]
  %102 = and i32 %101, 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #22
  %105 = load float, ptr %7, align 4, !tbaa !57
  call void @scale_m4_fl(ptr noundef nonnull %10, float noundef %105) #21
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %9) #21
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #22
  br label %106

106:                                              ; preds = %104, %100
  %107 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %107, ptr noundef nonnull %5) #23
  %108 = load ptr, ptr %16, align 8, !tbaa !107
  %109 = getelementptr inbounds %struct.Object, ptr %108, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %26, ptr noundef nonnull %109, ptr noundef nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #22
  br label %110

110:                                              ; preds = %106, %83
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #22
  br label %111

111:                                              ; preds = %110, %42, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  br label %114

112:                                              ; preds = %15, %19
  %113 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %113) #21
  br label %114

114:                                              ; preds = %4, %112, %111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @followpath_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !208 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = load ptr, ptr %2, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %14 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %16) #21
  call void @mat4_to_size(ptr noundef nonnull %5, ptr noundef nonnull %16) #21
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 4
  call void @mul_m4_m4m4(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %4) #21
  %18 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !191
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @mat4_to_size(ptr noundef nonnull %6, ptr noundef nonnull %16) #21
  %23 = load float, ptr %6, align 4, !tbaa !57
  %24 = fcmp une float %23, 0.000000e+00
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load float, ptr %5, align 4, !tbaa !57
  %27 = fdiv float %26, %23
  call fastcc void @mul_v3_fl(ptr noundef nonnull %16, float noundef %27) #23
  br label %28

28:                                               ; preds = %25, %22
  %29 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !57
  %31 = fcmp une float %30, 0.000000e+00
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  %34 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !57
  %36 = fdiv float %35, %30
  call fastcc void @mul_v3_fl(ptr noundef nonnull %33, float noundef %36) #23
  br label %37

37:                                               ; preds = %32, %28
  %38 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !57
  %40 = fcmp une float %39, 0.000000e+00
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  %43 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !57
  %45 = fdiv float %44, %39
  call fastcc void @mul_v3_fl(ptr noundef nonnull %42, float noundef %45) #23
  br label %46

46:                                               ; preds = %41, %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  br label %47

47:                                               ; preds = %46, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  br label %48

48:                                               ; preds = %47, %9, %3
  ret void
}

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #14

; Function Attrs: optsize
declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @quat_apply_track(ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @scale_m4_fl(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rotlimit_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !209 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  %9 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %10 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %10) #23
  call void @mat4_to_size(ptr noundef nonnull %6, ptr noundef nonnull %9) #21
  %11 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !43
  call void @mat4_to_eulO(ptr noundef nonnull %5, i16 noundef signext %12, ptr noundef nonnull %9) #21
  %13 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %8, i64 0, i32 6
  %14 = load i16, ptr %13, align 4, !tbaa !210
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %3
  %18 = load float, ptr %5, align 4, !tbaa !57
  %19 = load float, ptr %8, align 4, !tbaa !212
  %20 = fcmp olt float %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store float %19, ptr %5, align 4, !tbaa !57
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi float [ %19, %21 ], [ %18, %17 ]
  %24 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %8, i64 0, i32 1
  %25 = load float, ptr %24, align 4, !tbaa !213
  %26 = fcmp ogt float %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store float %25, ptr %5, align 4, !tbaa !57
  br label %28

28:                                               ; preds = %22, %27, %3
  %29 = and i16 %14, 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !57
  %34 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %8, i64 0, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !214
  %36 = fcmp olt float %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store float %35, ptr %32, align 4, !tbaa !57
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi float [ %35, %37 ], [ %33, %31 ]
  %40 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %8, i64 0, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !215
  %42 = fcmp ogt float %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store float %41, ptr %32, align 4, !tbaa !57
  br label %44

44:                                               ; preds = %38, %43, %28
  %45 = and i16 %14, 4
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !57
  %50 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %8, i64 0, i32 4
  %51 = load float, ptr %50, align 4, !tbaa !216
  %52 = fcmp olt float %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store float %51, ptr %48, align 4, !tbaa !57
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi float [ %51, %53 ], [ %49, %47 ]
  %56 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %8, i64 0, i32 5
  %57 = load float, ptr %56, align 4, !tbaa !217
  %58 = fcmp ogt float %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store float %57, ptr %48, align 4, !tbaa !57
  br label %60

60:                                               ; preds = %54, %59, %44
  %61 = load i16, ptr %11, align 2, !tbaa !43
  call void @loc_eulO_size_to_mat4(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext %61) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @loclimit_evaluate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #7 !PGOFuncName !218 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !219
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %12 = load float, ptr %11, align 8, !tbaa !57
  %13 = load float, ptr %5, align 4, !tbaa !221
  %14 = fcmp olt float %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store float %13, ptr %11, align 8, !tbaa !57
  br label %16

16:                                               ; preds = %10, %15, %3
  %17 = and i16 %7, 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %21 = load float, ptr %20, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 1
  %23 = load float, ptr %22, align 4, !tbaa !222
  %24 = fcmp ogt float %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store float %23, ptr %20, align 8, !tbaa !57
  br label %26

26:                                               ; preds = %19, %25, %16
  %27 = and i16 %7, 4
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !57
  %32 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 2
  %33 = load float, ptr %32, align 4, !tbaa !223
  %34 = fcmp olt float %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store float %33, ptr %30, align 4, !tbaa !57
  br label %36

36:                                               ; preds = %29, %35, %26
  %37 = and i16 %7, 8
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !57
  %42 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !224
  %44 = fcmp ogt float %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store float %43, ptr %40, align 4, !tbaa !57
  br label %46

46:                                               ; preds = %39, %45, %36
  %47 = and i16 %7, 16
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %51 = load float, ptr %50, align 8, !tbaa !57
  %52 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 4
  %53 = load float, ptr %52, align 4, !tbaa !225
  %54 = fcmp olt float %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store float %53, ptr %50, align 8, !tbaa !57
  br label %56

56:                                               ; preds = %49, %55, %46
  %57 = and i16 %7, 32
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %61 = load float, ptr %60, align 8, !tbaa !57
  %62 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 5
  %63 = load float, ptr %62, align 4, !tbaa !226
  %64 = fcmp ogt float %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store float %63, ptr %60, align 8, !tbaa !57
  br label %66

66:                                               ; preds = %59, %65, %56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sizelimit_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !227 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %8 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mat4_to_size(ptr noundef nonnull %5, ptr noundef nonnull %8) #21
  call void @mat4_to_size(ptr noundef nonnull %4, ptr noundef nonnull %8) #21
  %9 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %7, i64 0, i32 6
  %10 = load i16, ptr %9, align 4, !tbaa !228
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load float, ptr %5, align 4, !tbaa !57
  %15 = load float, ptr %7, align 4, !tbaa !230
  %16 = fcmp olt float %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store float %15, ptr %5, align 4, !tbaa !57
  br label %18

18:                                               ; preds = %13, %17, %3
  %19 = and i16 %10, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load float, ptr %5, align 4, !tbaa !57
  %23 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %7, i64 0, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !231
  %25 = fcmp ogt float %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store float %24, ptr %5, align 4, !tbaa !57
  br label %27

27:                                               ; preds = %21, %26, %18
  %28 = and i16 %10, 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !57
  %33 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %7, i64 0, i32 2
  %34 = load float, ptr %33, align 4, !tbaa !232
  %35 = fcmp olt float %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store float %34, ptr %31, align 4, !tbaa !57
  br label %37

37:                                               ; preds = %30, %36, %27
  %38 = and i16 %10, 8
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !57
  %43 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %7, i64 0, i32 3
  %44 = load float, ptr %43, align 4, !tbaa !233
  %45 = fcmp ogt float %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store float %44, ptr %41, align 4, !tbaa !57
  br label %47

47:                                               ; preds = %40, %46, %37
  %48 = and i16 %10, 16
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %7, i64 0, i32 4
  %54 = load float, ptr %53, align 4, !tbaa !234
  %55 = fcmp olt float %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store float %54, ptr %51, align 4, !tbaa !57
  br label %57

57:                                               ; preds = %50, %56, %47
  %58 = and i16 %10, 32
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !57
  %63 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %7, i64 0, i32 5
  %64 = load float, ptr %63, align 4, !tbaa !235
  %65 = fcmp ogt float %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store float %64, ptr %61, align 4, !tbaa !57
  br label %67

67:                                               ; preds = %60, %66, %57
  %68 = load float, ptr %4, align 4, !tbaa !57
  %69 = fcmp une float %68, 0.000000e+00
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load float, ptr %5, align 4, !tbaa !57
  %72 = fdiv float %71, %68
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %72) #23
  br label %73

73:                                               ; preds = %70, %67
  %74 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !57
  %76 = fcmp une float %75, 0.000000e+00
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  %79 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !57
  %81 = fdiv float %80, %75
  call fastcc void @mul_v3_fl(ptr noundef nonnull %78, float noundef %81) #23
  br label %82

82:                                               ; preds = %77, %73
  %83 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !57
  %85 = fcmp une float %84, 0.000000e+00
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  %88 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !57
  %90 = fdiv float %89, %84
  call fastcc void @mul_v3_fl(ptr noundef nonnull %87, float noundef %90) #23
  br label %91

91:                                               ; preds = %86, %82
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rotlike_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !236 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @rotlike_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !237 {
  %2 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %0, i64 0, i32 1
  store i32 7, ptr %2, align 8, !tbaa !238
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rotlike_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !240 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !241
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %8, i64 0, i32 3
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rotlike_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !242 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !241
  %17 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %9, i64 0, i32 3
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rotlike_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !243 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %2, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %93, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  %15 = icmp eq ptr %14, null
  br i1 %15, label %93, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  %17 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %18 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %18) #23
  call void @mat4_to_size(ptr noundef nonnull %7, ptr noundef nonnull %17) #21
  %19 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 6
  %20 = load i16, ptr %19, align 2, !tbaa !43
  call void @mat4_to_eulO(ptr noundef nonnull %6, i16 noundef signext %20, ptr noundef nonnull %17) #21
  %21 = load i16, ptr %19, align 2, !tbaa !43
  %22 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 4
  call void @mat4_to_compatible_eulO(ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext %21, ptr noundef nonnull %22) #21
  %23 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %9, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !238
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load float, ptr %6, align 4, !tbaa !57
  store float %28, ptr %5, align 4, !tbaa !57
  br label %43

29:                                               ; preds = %16
  %30 = and i32 %24, 128
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i16, ptr %19, align 2, !tbaa !43
  %34 = load float, ptr %6, align 4, !tbaa !57
  call void @rotate_eulO(ptr noundef nonnull %5, i16 noundef signext %33, i8 noundef zeroext 88, float noundef %34) #21
  %35 = load i32, ptr %23, align 8, !tbaa !238
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %35, %32 ], [ %24, %29 ]
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load float, ptr %5, align 4, !tbaa !57
  %42 = fneg float %41
  store float %42, ptr %5, align 4, !tbaa !57
  br label %43

43:                                               ; preds = %36, %40, %27
  %44 = phi i32 [ %37, %36 ], [ %37, %40 ], [ %24, %27 ]
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !57
  %50 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float %49, ptr %50, align 4, !tbaa !57
  br label %67

51:                                               ; preds = %43
  %52 = and i32 %44, 128
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i16, ptr %19, align 2, !tbaa !43
  %56 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !57
  call void @rotate_eulO(ptr noundef nonnull %5, i16 noundef signext %55, i8 noundef zeroext 89, float noundef %57) #21
  %58 = load i32, ptr %23, align 8, !tbaa !238
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi i32 [ %58, %54 ], [ %44, %51 ]
  %61 = and i32 %60, 32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !57
  %66 = fneg float %65
  store float %66, ptr %64, align 4, !tbaa !57
  br label %67

67:                                               ; preds = %59, %63, %47
  %68 = phi i32 [ %60, %59 ], [ %60, %63 ], [ %44, %47 ]
  %69 = and i32 %68, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !57
  %74 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %73, ptr %74, align 4, !tbaa !57
  br label %91

75:                                               ; preds = %67
  %76 = and i32 %68, 128
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load i16, ptr %19, align 2, !tbaa !43
  %80 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !57
  call void @rotate_eulO(ptr noundef nonnull %5, i16 noundef signext %79, i8 noundef zeroext 90, float noundef %81) #21
  %82 = load i32, ptr %23, align 8, !tbaa !238
  br label %83

83:                                               ; preds = %78, %75
  %84 = phi i32 [ %82, %78 ], [ %68, %75 ]
  %85 = and i32 %84, 64
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !57
  %90 = fneg float %89
  store float %90, ptr %88, align 4, !tbaa !57
  br label %91

91:                                               ; preds = %83, %87, %71
  call void @compatible_eul(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %92 = load i16, ptr %19, align 2, !tbaa !43
  call void @loc_eulO_size_to_mat4(ptr noundef nonnull %17, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, i16 noundef signext %92) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %93

93:                                               ; preds = %91, %12, %3
  ret void
}

; Function Attrs: optsize
declare void @mat4_to_compatible_eulO(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @rotate_eulO(ptr noundef, i16 noundef signext, i8 noundef zeroext, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @compatible_eul(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @loclike_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !244 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @loclike_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !245 {
  %2 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %0, i64 0, i32 1
  store i32 7, ptr %2, align 8, !tbaa !246
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @loclike_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !248 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !249
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %8, i64 0, i32 3
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @loclike_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !250 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !249
  %17 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %9, i64 0, i32 3
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @loclike_evaluate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #7 !PGOFuncName !251 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = load ptr, ptr %2, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %62, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = icmp eq ptr %11, null
  br i1 %12, label %62, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %14 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %6, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !246
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %19) #23
  br label %20

20:                                               ; preds = %18, %13
  %21 = and i32 %15, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 4, i64 3
  %25 = load float, ptr %24, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %27 = and i32 %15, 16
  %28 = icmp eq i32 %27, 0
  %29 = fneg float %25
  %30 = select i1 %28, float %25, float %29
  %31 = load float, ptr %4, align 4, !tbaa !57
  %32 = fadd float %30, %31
  store float %32, ptr %26, align 8, !tbaa !57
  br label %33

33:                                               ; preds = %23, %20
  %34 = and i32 %15, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 4, i64 3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !57
  %39 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 1
  %40 = and i32 %15, 32
  %41 = icmp eq i32 %40, 0
  %42 = fneg float %38
  %43 = select i1 %41, float %38, float %42
  %44 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !57
  %46 = fadd float %43, %45
  store float %46, ptr %39, align 4, !tbaa !57
  br label %47

47:                                               ; preds = %36, %33
  %48 = and i32 %15, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 4, i64 3, i64 2
  %52 = load float, ptr %51, align 8, !tbaa !57
  %53 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3, i64 2
  %54 = and i32 %15, 64
  %55 = icmp eq i32 %54, 0
  %56 = fneg float %52
  %57 = select i1 %55, float %52, float %56
  %58 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !57
  %60 = fadd float %57, %59
  store float %60, ptr %53, align 8, !tbaa !57
  br label %61

61:                                               ; preds = %50, %47
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %62

62:                                               ; preds = %61, %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sizelike_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !252 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @sizelike_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !253 {
  %2 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %0, i64 0, i32 1
  store i32 7, ptr %2, align 8, !tbaa !254
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sizelike_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !256 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !257
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %8, i64 0, i32 3
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sizelike_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !258 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !257
  %17 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %9, i64 0, i32 3
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sizelike_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !259 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = load ptr, ptr %2, align 8, !tbaa !83
  %9 = icmp eq ptr %8, null
  br i1 %9, label %69, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bConstraintTarget, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = icmp eq ptr %12, null
  br i1 %13, label %69, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %8, i64 0, i32 4
  call void @mat4_to_size(ptr noundef nonnull %5, ptr noundef nonnull %15) #21
  %16 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mat4_to_size(ptr noundef nonnull %4, ptr noundef nonnull %16) #21
  %17 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %7, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !254
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  %21 = load float, ptr %4, align 4
  %22 = fcmp une float %21, 0.000000e+00
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %32

24:                                               ; preds = %14
  %25 = and i32 %18, 8
  %26 = icmp eq i32 %25, 0
  %27 = fadd float %21, -1.000000e+00
  %28 = load float, ptr %5, align 4
  %29 = select i1 %26, float -0.000000e+00, float %27
  %30 = fadd float %28, %29
  %31 = fdiv float %30, %21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %16, float noundef %31) #23
  br label %32

32:                                               ; preds = %24, %14
  %33 = load i32, ptr %17, align 8, !tbaa !254
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  %36 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %37 = load float, ptr %36, align 4
  %38 = fcmp une float %37, 0.000000e+00
  %39 = select i1 %35, i1 %38, i1 false
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = and i32 %33, 8
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !57
  %45 = fadd float %37, -1.000000e+00
  %46 = select i1 %42, float -0.000000e+00, float %45
  %47 = fadd float %44, %46
  %48 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  %49 = fdiv float %47, %37
  call fastcc void @mul_v3_fl(ptr noundef nonnull %48, float noundef %49) #23
  br label %50

50:                                               ; preds = %40, %32
  %51 = load i32, ptr %17, align 8, !tbaa !254
  %52 = and i32 %51, 4
  %53 = icmp ne i32 %52, 0
  %54 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %55 = load float, ptr %54, align 4
  %56 = fcmp une float %55, 0.000000e+00
  %57 = select i1 %53, i1 %56, i1 false
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = and i32 %51, 8
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !57
  %63 = fadd float %55, -1.000000e+00
  %64 = select i1 %60, float -0.000000e+00, float %63
  %65 = fadd float %62, %64
  %66 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  %67 = fdiv float %65, %55
  call fastcc void @mul_v3_fl(ptr noundef nonnull %66, float noundef %67) #23
  br label %68

68:                                               ; preds = %58, %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %69

69:                                               ; preds = %68, %10, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pycon_free(ptr nocapture noundef readonly %0) #0 !PGOFuncName !260 {
  %2 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.bPythonConstraint, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !261
  tail call void @IDP_FreeProperty(ptr noundef %5) #21
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %7 = load ptr, ptr %4, align 8, !tbaa !261
  tail call void %6(ptr noundef %7) #21
  %8 = getelementptr inbounds %struct.bPythonConstraint, ptr %3, i64 0, i32 4
  tail call void @BLI_freelistN(ptr noundef nonnull %8) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pycon_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !263 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.bPythonConstraint, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  tail call void %1(ptr noundef %0, ptr noundef nonnull %11, i8 noundef zeroext 0, ptr noundef %2) #21
  %12 = load ptr, ptr %10, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !264

14:                                               ; preds = %9, %3
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 1, ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pycon_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !265 {
  %3 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.bConstraint, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.bPythonConstraint, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !261
  %9 = tail call ptr @IDP_CopyProperty(ptr noundef %8) #21
  %10 = getelementptr inbounds %struct.bPythonConstraint, ptr %4, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !261
  %11 = getelementptr inbounds %struct.bPythonConstraint, ptr %4, i64 0, i32 4
  %12 = getelementptr inbounds %struct.bPythonConstraint, ptr %6, i64 0, i32 4
  tail call void @BLI_duplicatelist(ptr noundef nonnull %11, ptr noundef nonnull %12) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pycon_new_data(ptr nocapture noundef writeonly %0) #0 !PGOFuncName !266 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 128, ptr noundef nonnull @.str.5) #21
  %4 = getelementptr inbounds %struct.bPythonConstraint, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !261
  %5 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 2
  store i8 6, ptr %5, align 8, !tbaa !267
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @pycon_get_tars(ptr noundef readonly %0, ptr noundef writeonly %1) #7 !PGOFuncName !270 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.bPythonConstraint, ptr %8, i64 0, i32 4
  %10 = load <2 x ptr>, ptr %9, align 8, !tbaa !34
  store <2 x ptr> %10, ptr %1, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.bPythonConstraint, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !271
  br label %13

13:                                               ; preds = %2, %6
  %14 = phi i32 [ %12, %6 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pycon_get_tarmat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, float %3) #0 !PGOFuncName !272 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !112
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 118
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr %1, align 8, !tbaa !38
  tail call void @BKE_displist_make_curveTypes(ptr noundef %19, ptr noundef nonnull %8, i8 noundef zeroext 0) #21
  %20 = load ptr, ptr %7, align 8, !tbaa !107
  br label %21

21:                                               ; preds = %14, %18, %10
  %22 = phi ptr [ %8, %14 ], [ %20, %18 ], [ %8, %10 ]
  %23 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 3
  %24 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  %25 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 5
  %26 = load i16, ptr %25, align 8, !tbaa !110
  %27 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 10
  %28 = load float, ptr %27, align 4, !tbaa !119
  tail call fastcc void @constraint_target_to_mat4(ptr noundef %22, ptr noundef nonnull %23, ptr noundef nonnull %24, i16 noundef signext %26, float noundef %28) #23
  br label %31

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %30) #21
  br label %31

31:                                               ; preds = %4, %29, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @pycon_evaluate(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #18 !PGOFuncName !273 {
  ret void
}

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @actcon_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !274 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  %6 = getelementptr inbounds %struct.bActionConstraint, ptr %5, i64 0, i32 8
  tail call void %1(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @actcon_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !275 {
  %2 = getelementptr inbounds %struct.bActionConstraint, ptr %0, i64 0, i32 1
  store i16 20, ptr %2, align 8, !tbaa !276
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @actcon_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !278 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !279
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bActionConstraint, ptr %8, i64 0, i32 9
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @actcon_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !280 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !279
  %17 = getelementptr inbounds %struct.bActionConstraint, ptr %9, i64 0, i32 9
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @actcon_get_tarmat(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, float %3) #0 !PGOFuncName !281 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.Object, align 8
  %8 = alloca %struct.Object, align 8
  %9 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = icmp eq ptr %2, null
  br i1 %11, label %111, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  %15 = icmp eq ptr %14, null
  br i1 %15, label %111, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %17) #21
  %18 = load ptr, ptr %13, align 8, !tbaa !107
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 3
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 10
  %23 = load float, ptr %22, align 4, !tbaa !119
  call fastcc void @constraint_target_to_mat4(ptr noundef %18, ptr noundef nonnull %19, ptr noundef nonnull %5, i16 noundef signext %21, float noundef %23) #23
  %24 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 1
  %25 = load i16, ptr %24, align 8, !tbaa !276
  %26 = icmp slt i16 %25, 10
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  call void @mat4_to_eul(ptr noundef nonnull %6, ptr noundef nonnull %5) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef 0x404CA5DC20000000) #23
  %28 = load i16, ptr %24, align 8, !tbaa !276
  br label %37

29:                                               ; preds = %16
  %30 = icmp ult i16 %25, 20
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  call void @mat4_to_size(ptr noundef nonnull %6, ptr noundef nonnull %5) #21
  %32 = load i16, ptr %24, align 8, !tbaa !276
  %33 = add i16 %32, -10
  br label %37

34:                                               ; preds = %29
  %35 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %35) #23
  %36 = add nsw i16 %25, -20
  br label %37

37:                                               ; preds = %31, %34, %27
  %38 = phi i16 [ %28, %27 ], [ %33, %31 ], [ %36, %34 ]
  %39 = sext i16 %38 to i64
  %40 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !57
  %42 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 5
  %43 = load float, ptr %42, align 4, !tbaa !282
  %44 = fsub float %41, %43
  %45 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 6
  %46 = load float, ptr %45, align 8, !tbaa !283
  %47 = fsub float %46, %43
  %48 = fdiv float %44, %47
  %49 = fcmp olt float %48, 0.000000e+00
  br i1 %49, label %53, label %50

50:                                               ; preds = %37
  %51 = fcmp ogt float %48, 1.000000e+00
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %37, %50, %52
  %54 = phi float [ 1.000000e+00, %52 ], [ %48, %50 ], [ 0.000000e+00, %37 ]
  %55 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !284
  %57 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !285
  %59 = sub nsw i32 %56, %58
  %60 = sitofp i32 %59 to float
  %61 = sitofp i32 %58 to float
  %62 = call float @llvm.fmuladd.f32(float %54, float %60, float %61)
  %63 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !286
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %53
  %67 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 7
  %68 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !41
  %70 = getelementptr inbounds %struct.ID, ptr %69, i64 0, i32 4, i64 2
  %71 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !44
  %73 = icmp eq ptr %72, null
  %74 = getelementptr inbounds %struct.bPoseChannel, ptr %72, i64 0, i32 4
  %75 = select i1 %73, ptr null, ptr %74
  %76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %67, ptr noundef nonnull %70, ptr noundef %75) #23
  br label %77

77:                                               ; preds = %66, %53
  %78 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 5
  %79 = load i16, ptr %78, align 8, !tbaa !42
  %80 = icmp eq i16 %79, 1
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 7
  %83 = load i32, ptr %82, align 4, !tbaa !288
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81, %77
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %7) #22
  %87 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !41
  %89 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !289
  call void @what_does_obaction(ptr noundef %88, ptr noundef nonnull %7, ptr noundef null, ptr noundef %90, ptr noundef null, float noundef %62) #21
  call void @BKE_object_to_mat4(ptr noundef nonnull %7, ptr noundef nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %7) #22
  br label %110

91:                                               ; preds = %81
  %92 = icmp eq i16 %79, 2
  br i1 %92, label %93, label %108

93:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %8) #22
  %94 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %95 = call ptr %94(i64 noundef 216, ptr noundef nonnull @.str.7) #21
  %96 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !44
  %98 = getelementptr inbounds %struct.bPoseChannel, ptr %97, i64 0, i32 4
  %99 = call ptr @BKE_pose_channel_verify(ptr noundef %95, ptr noundef nonnull %98) #21
  %100 = getelementptr inbounds %struct.bPoseChannel, ptr %97, i64 0, i32 26
  %101 = load i16, ptr %100, align 4, !tbaa !45
  %102 = getelementptr inbounds %struct.bPoseChannel, ptr %99, i64 0, i32 26
  store i16 %101, ptr %102, align 4, !tbaa !45
  %103 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !41
  %105 = getelementptr inbounds %struct.bActionConstraint, ptr %10, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !289
  call void @what_does_obaction(ptr noundef %104, ptr noundef nonnull %8, ptr noundef %95, ptr noundef %106, ptr noundef nonnull %98, float noundef %62) #21
  call void @BKE_pchan_calc_mat(ptr noundef %99) #21
  %107 = getelementptr inbounds %struct.bPoseChannel, ptr %99, i64 0, i32 28
  call void @copy_m4_m4(ptr noundef nonnull %17, ptr noundef nonnull %107) #21
  call void @BKE_pose_free(ptr noundef %95) #21
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %8) #22
  br label %110

108:                                              ; preds = %91
  %109 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8) #23
  br label %110

110:                                              ; preds = %93, %108, %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  br label %111

111:                                              ; preds = %110, %12, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @actcon_evaluate(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !290 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = load ptr, ptr %2, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraintTarget, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  %12 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %12) #21
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %5, i64 0, i32 4
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  br label %14

14:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: optsize
declare void @mat4_to_eul(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @what_does_obaction(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_pose_channel_verify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_pchan_calc_mat(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_pose_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal void @locktrack_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !291 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @locktrack_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !292 {
  %2 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %0, i64 0, i32 1
  store i32 1, ptr %2, align 8, !tbaa !293
  %3 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %0, i64 0, i32 2
  store i32 2, ptr %3, align 4, !tbaa !295
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @locktrack_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !296 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !297
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %8, i64 0, i32 3
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @locktrack_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !298 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !297
  %17 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %9, i64 0, i32 3
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @locktrack_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !299 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = load ptr, ptr %2, align 8, !tbaa !83
  %12 = icmp eq ptr %11, null
  br i1 %12, label %125, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = icmp eq ptr %15, null
  br i1 %16, label %125, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #22
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 3
  %19 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %20 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %18, ptr noundef nonnull %20) #23
  %21 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %10, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !295
  switch i32 %22, label %103 [
    i32 0, label %23
    i32 1, label %47
    i32 2, label %75
  ]

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %10, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !293
  switch i32 %25, label %46 [
    i32 1, label %26
    i32 2, label %31
    i32 4, label %36
    i32 5, label %41
  ]

26:                                               ; preds = %23
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %19) #21
  %27 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %27, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %28 = call fastcc float @normalize_v3(ptr noundef nonnull %27) #23
  %29 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %19) #23
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %30, ptr noundef nonnull %6, ptr noundef nonnull %27) #23
  br label %104

31:                                               ; preds = %23
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %19) #21
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %32, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %33 = call fastcc float @normalize_v3(ptr noundef nonnull %32) #23
  %34 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %19) #23
  %35 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %35, ptr noundef nonnull %32, ptr noundef nonnull %6) #23
  br label %104

36:                                               ; preds = %23
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %19) #21
  %37 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %37, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %38 = call fastcc float @normalize_v3(ptr noundef nonnull %37) #23
  call fastcc void @negate_v3(ptr noundef nonnull %37) #23
  %39 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %19) #23
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %40, ptr noundef nonnull %6, ptr noundef nonnull %37) #23
  br label %104

41:                                               ; preds = %23
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %19) #21
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %42, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %43 = call fastcc float @normalize_v3(ptr noundef nonnull %42) #23
  call fastcc void @negate_v3(ptr noundef nonnull %42) #23
  %44 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %19) #23
  %45 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %45, ptr noundef nonnull %42, ptr noundef nonnull %6) #23
  br label %104

46:                                               ; preds = %23
  call void @unit_m3(ptr noundef nonnull %6) #21
  br label %104

47:                                               ; preds = %17
  %48 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %10, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !293
  switch i32 %49, label %74 [
    i32 0, label %50
    i32 2, label %56
    i32 3, label %62
    i32 5, label %68
  ]

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %51) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %52 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #23
  %53 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %54 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %53, ptr noundef nonnull %51) #23
  %55 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %55, ptr noundef nonnull %6, ptr noundef nonnull %53) #23
  br label %104

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %57) #21
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %58, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %59 = call fastcc float @normalize_v3(ptr noundef nonnull %58) #23
  %60 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %61 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %60, ptr noundef nonnull %57) #23
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %60, ptr noundef nonnull %58) #23
  br label %104

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %63) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %64 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #23
  call fastcc void @negate_v3(ptr noundef nonnull %6) #23
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %66 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %65, ptr noundef nonnull %63) #23
  %67 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %67, ptr noundef nonnull %6, ptr noundef nonnull %65) #23
  br label %104

68:                                               ; preds = %47
  %69 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %69) #21
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %70, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %71 = call fastcc float @normalize_v3(ptr noundef nonnull %70) #23
  call fastcc void @negate_v3(ptr noundef nonnull %70) #23
  %72 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  %73 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %72, ptr noundef nonnull %69) #23
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %72, ptr noundef nonnull %70) #23
  br label %104

74:                                               ; preds = %47
  call void @unit_m3(ptr noundef nonnull %6) #21
  br label %104

75:                                               ; preds = %17
  %76 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %10, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !293
  switch i32 %77, label %102 [
    i32 0, label %78
    i32 1, label %84
    i32 3, label %90
    i32 4, label %96
  ]

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %79) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %80 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #23
  %81 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %82 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %81, ptr noundef nonnull %79) #23
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %83, ptr noundef nonnull %81, ptr noundef nonnull %6) #23
  br label %104

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %85) #21
  %86 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %86, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %87 = call fastcc float @normalize_v3(ptr noundef nonnull %86) #23
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %89 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %88, ptr noundef nonnull %85) #23
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %86, ptr noundef nonnull %88) #23
  br label %104

90:                                               ; preds = %75
  %91 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %91) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %92 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #23
  call fastcc void @negate_v3(ptr noundef nonnull %6) #23
  %93 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %94 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %93, ptr noundef nonnull %91) #23
  %95 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %95, ptr noundef nonnull %93, ptr noundef nonnull %6) #23
  br label %104

96:                                               ; preds = %75
  %97 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  call void @project_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %97) #21
  %98 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %98, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %99 = call fastcc float @normalize_v3(ptr noundef nonnull %98) #23
  call fastcc void @negate_v3(ptr noundef nonnull %98) #23
  %100 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2
  %101 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %100, ptr noundef nonnull %97) #23
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %98, ptr noundef nonnull %100) #23
  br label %104

102:                                              ; preds = %75
  call void @unit_m3(ptr noundef nonnull %6) #21
  br label %104

103:                                              ; preds = %17
  call void @unit_m3(ptr noundef nonnull %6) #21
  br label %104

104:                                              ; preds = %78, %84, %90, %96, %102, %50, %56, %62, %68, %74, %26, %31, %36, %41, %46, %103
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %19) #21
  call void @normalize_m3(ptr noundef nonnull %7) #21
  %105 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %8, ptr noundef nonnull %7) #21
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8) #21
  %106 = load <4 x float>, ptr %7, align 16, !tbaa !57
  store <4 x float> %106, ptr %6, align 16, !tbaa !57
  %107 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 1, i64 1
  %108 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 1, i64 1
  %109 = load <4 x float>, ptr %107, align 16, !tbaa !57
  store <4 x float> %109, ptr %108, align 16, !tbaa !57
  %110 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 2, i64 2
  %111 = load float, ptr %110, align 16, !tbaa !57
  %112 = getelementptr inbounds [3 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %111, ptr %112, align 16, !tbaa !57
  %113 = extractelement <4 x float> %106, i64 0
  %114 = extractelement <4 x float> %106, i64 1
  %115 = extractelement <4 x float> %106, i64 2
  %116 = extractelement <4 x float> %106, i64 3
  %117 = extractelement <4 x float> %109, i64 0
  %118 = extractelement <4 x float> %109, i64 1
  %119 = extractelement <4 x float> %109, i64 2
  %120 = extractelement <4 x float> %109, i64 3
  %121 = call float @determinant_m3(float noundef %113, float noundef %114, float noundef %115, float noundef %116, float noundef %117, float noundef %118, float noundef %119, float noundef %120, float noundef %111) #21
  %122 = fcmp oeq float %121, 0.000000e+00
  br i1 %122, label %123, label %124

123:                                              ; preds = %104
  call void @unit_m3(ptr noundef nonnull %6) #21
  br label %124

124:                                              ; preds = %123, %104
  call void @mul_m4_m3m4(ptr noundef nonnull %19, ptr noundef nonnull %6, ptr noundef nonnull %19) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %125

125:                                              ; preds = %124, %13, %3
  ret void
}

; Function Attrs: optsize
declare void @normalize_m3(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @determinant_m3(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @distlimit_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !300 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @distlimit_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !301 {
  %2 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %0, i64 0, i32 2
  store float 0.000000e+00, ptr %2, align 8, !tbaa !302
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @distlimit_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !304 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !305
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %8, i64 0, i32 1
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @distlimit_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !306 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !305
  %17 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %9, i64 0, i32 1
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @distlimit_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !307 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = load ptr, ptr %2, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %69, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = icmp eq ptr %11, null
  br i1 %12, label %69, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  %14 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %7, i64 0, i32 4, i64 3
  %16 = tail call fastcc float @len_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %15) #23
  %17 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %6, i64 0, i32 2
  %18 = load float, ptr %17, align 8, !tbaa !302
  %19 = fcmp oeq float %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store float %16, ptr %17, align 8, !tbaa !302
  br label %21

21:                                               ; preds = %20, %13
  %22 = phi float [ %16, %20 ], [ %18, %13 ]
  %23 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %6, i64 0, i32 5
  %24 = load i16, ptr %23, align 2, !tbaa !308
  switch i16 %24, label %58 [
    i16 1, label %25
    i16 0, label %31
  ]

25:                                               ; preds = %21
  %26 = fcmp ugt float %16, %22
  br i1 %26, label %68, label %27

27:                                               ; preds = %25
  %28 = fcmp une float %16, 0.000000e+00
  br i1 %28, label %29, label %66

29:                                               ; preds = %27
  %30 = fdiv float %22, %16
  br label %66

31:                                               ; preds = %21
  %32 = fcmp ult float %16, %22
  br i1 %32, label %37, label %33

33:                                               ; preds = %31
  %34 = fcmp une float %16, 0.000000e+00
  br i1 %34, label %35, label %66

35:                                               ; preds = %33
  %36 = fdiv float %22, %16
  br label %66

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %6, i64 0, i32 4
  %39 = load i16, ptr %38, align 8, !tbaa !309
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %68, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %6, i64 0, i32 3
  %44 = load float, ptr %43, align 4, !tbaa !310
  %45 = fsub float %22, %44
  %46 = fcmp ult float %16, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %42
  %48 = fsub float %16, %22
  %49 = fneg float %48
  %50 = fdiv float %49, %44
  %51 = tail call float @expf(float noundef %50) #21
  %52 = fsub float 1.000000e+00, %51
  %53 = load float, ptr %17, align 8, !tbaa !302
  %54 = tail call float @llvm.fmuladd.f32(float %44, float %52, float %53)
  %55 = fcmp une float %16, 0.000000e+00
  %56 = select i1 %55, float %16, float 1.000000e+00
  %57 = fdiv float %54, %56
  br label %66

58:                                               ; preds = %21
  %59 = fsub float %16, %22
  %60 = tail call float @llvm.fabs.f32(float %59)
  %61 = fcmp ult float %60, 0x3E80000000000000
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = fcmp une float %16, 0.000000e+00
  br i1 %63, label %64, label %66

64:                                               ; preds = %62
  %65 = fdiv float %22, %16
  br label %66

66:                                               ; preds = %29, %27, %35, %33, %47, %64, %62
  %67 = phi float [ 1.000000e+00, %62 ], [ %65, %64 ], [ %57, %47 ], [ 1.000000e+00, %33 ], [ %36, %35 ], [ 1.000000e+00, %27 ], [ %30, %29 ]
  call void @interp_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %15, ptr noundef nonnull %14, float noundef %67) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %4) #23
  br label %68

68:                                               ; preds = %58, %42, %37, %25, %66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %69

69:                                               ; preds = %68, %9, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !311 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #23
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret float %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @expf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stretchto_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !312 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @stretchto_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !313 {
  %2 = getelementptr inbounds %struct.bStretchToConstraint, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 4, !tbaa !314
  %3 = getelementptr inbounds %struct.bStretchToConstraint, ptr %0, i64 0, i32 3
  store i32 0, ptr %3, align 8, !tbaa !316
  %4 = getelementptr inbounds %struct.bStretchToConstraint, ptr %0, i64 0, i32 4
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %4, align 4, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stretchto_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !317 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !318
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bStretchToConstraint, ptr %8, i64 0, i32 9
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stretchto_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !319 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !318
  %17 = getelementptr inbounds %struct.bStretchToConstraint, ptr %9, i64 0, i32 9
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stretchto_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !320 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = load ptr, ptr %2, align 8, !tbaa !83
  %13 = icmp eq ptr %12, null
  br i1 %13, label %136, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  %17 = icmp eq ptr %16, null
  br i1 %17, label %136, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #22
  %19 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mat4_to_size(ptr noundef nonnull %4, ptr noundef nonnull %19) #21
  %20 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %19) #23
  %21 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  %22 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %21) #23
  %23 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %24 = getelementptr inbounds %struct.bConstraintTarget, ptr %12, i64 0, i32 4, i64 3
  %25 = call fastcc float @len_v3v3(ptr noundef nonnull %23, ptr noundef nonnull %24) #23
  %26 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !57
  %28 = fdiv float %25, %27
  %29 = getelementptr inbounds %struct.bStretchToConstraint, ptr %11, i64 0, i32 4
  %30 = load float, ptr %29, align 4, !tbaa !321
  %31 = fcmp oeq float %30, 0.000000e+00
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  store float %28, ptr %29, align 4, !tbaa !321
  br label %33

33:                                               ; preds = %32, %18
  %34 = phi float [ %28, %32 ], [ %30, %18 ]
  %35 = fdiv float %28, %34
  %36 = fdiv float %34, %28
  %37 = getelementptr inbounds %struct.bStretchToConstraint, ptr %11, i64 0, i32 5
  %38 = load float, ptr %37, align 8, !tbaa !322
  %39 = call float @powf(float noundef %36, float noundef %38) #21
  %40 = fcmp ogt float %39, 1.000000e+00
  br i1 %40, label %41, label %66

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.bStretchToConstraint, ptr %11, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !323
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.bStretchToConstraint, ptr %11, i64 0, i32 7
  %48 = load float, ptr %47, align 8, !tbaa !324
  %49 = call fastcc float @max_ff(float noundef %48, float noundef 1.000000e+00) #23
  %50 = call fastcc float @min_ff(float noundef %39, float noundef %49) #23
  %51 = fadd float %49, -1.000000e+00
  %52 = fcmp ogt float %51, 0.000000e+00
  %53 = fdiv float 1.000000e+00, %51
  %54 = select i1 %52, float %53, float 0.000000e+00
  %55 = fadd float %39, -1.000000e+00
  %56 = fmul float %55, %54
  %57 = call float @atanf(float noundef %56) #21
  %58 = fmul float %51, %57
  %59 = fpext float %58 to double
  %60 = fdiv double %59, 0x3FF921FB54442D18
  %61 = fadd double %60, 1.000000e+00
  %62 = fptrunc double %61 to float
  %63 = getelementptr inbounds %struct.bStretchToConstraint, ptr %11, i64 0, i32 8
  %64 = load float, ptr %63, align 4, !tbaa !325
  %65 = call fastcc float @interpf(float noundef %62, float noundef %50, float noundef %64) #23
  br label %66

66:                                               ; preds = %41, %46, %33
  %67 = phi float [ %65, %46 ], [ %39, %41 ], [ %39, %33 ]
  %68 = fcmp olt float %67, 1.000000e+00
  br i1 %68, label %69, label %99

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.bStretchToConstraint, ptr %11, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !323
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %99, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.bStretchToConstraint, ptr %11, i64 0, i32 7
  %76 = load float, ptr %75, align 8, !tbaa !324
  %77 = fcmp olt float %76, 0.000000e+00
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = fcmp ogt float %76, 1.000000e+00
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80, %78, %74
  %82 = phi float [ 0.000000e+00, %74 ], [ %76, %80 ], [ 1.000000e+00, %78 ]
  %83 = call fastcc float @max_ff(float noundef %67, float noundef %82) #23
  %84 = fsub float 1.000000e+00, %82
  %85 = fcmp ogt float %84, 0.000000e+00
  %86 = fdiv float 1.000000e+00, %84
  %87 = select i1 %85, float %86, float 0.000000e+00
  %88 = fsub float 1.000000e+00, %67
  %89 = fmul float %88, %87
  %90 = call float @atanf(float noundef %89) #21
  %91 = fmul float %84, %90
  %92 = fpext float %91 to double
  %93 = fdiv double %92, 0x3FF921FB54442D18
  %94 = fsub double 1.000000e+00, %93
  %95 = fptrunc double %94 to float
  %96 = getelementptr inbounds %struct.bStretchToConstraint, ptr %11, i64 0, i32 8
  %97 = load float, ptr %96, align 4, !tbaa !325
  %98 = call fastcc float @interpf(float noundef %95, float noundef %83, float noundef %97) #23
  br label %99

99:                                               ; preds = %69, %81, %66
  %100 = phi float [ %98, %81 ], [ %67, %69 ], [ %67, %66 ]
  %101 = getelementptr inbounds %struct.bStretchToConstraint, ptr %11, i64 0, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !314
  switch i32 %102, label %135 [
    i32 0, label %103
    i32 1, label %107
    i32 2, label %105
    i32 3, label %106
  ]

103:                                              ; preds = %99
  %104 = call float @sqrtf(float noundef %100) #21
  br label %107

105:                                              ; preds = %99
  br label %107

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %99, %106, %105, %103
  %108 = phi float [ 1.000000e+00, %106 ], [ 1.000000e+00, %105 ], [ %104, %103 ], [ %100, %99 ]
  %109 = phi float [ 1.000000e+00, %106 ], [ %100, %105 ], [ %104, %103 ], [ 1.000000e+00, %99 ]
  %110 = load float, ptr %4, align 4, !tbaa !57
  %111 = fmul float %108, %110
  store float %111, ptr %19, align 8, !tbaa !57
  %112 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %112, align 4, !tbaa !57
  %113 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  store float 0.000000e+00, ptr %113, align 8, !tbaa !57
  %114 = load float, ptr %26, align 4, !tbaa !57
  %115 = fmul float %35, %114
  %116 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 1
  store float %115, ptr %116, align 4, !tbaa !57
  %117 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1, i64 2
  store float 0.000000e+00, ptr %117, align 8, !tbaa !57
  store <2 x float> zeroinitializer, ptr %21, align 8, !tbaa !57
  %118 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !57
  %120 = fmul float %109, %119
  %121 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2, i64 2
  store float %120, ptr %121, align 8, !tbaa !57
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %23, ptr noundef nonnull %24) #23
  %122 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #23
  %123 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1
  call fastcc void @negate_v3_v3(ptr noundef nonnull %123, ptr noundef nonnull %5) #23
  %124 = getelementptr inbounds %struct.bStretchToConstraint, ptr %11, i64 0, i32 3
  %125 = load i32, ptr %124, align 8, !tbaa !316
  switch i32 %125, label %134 [
    i32 0, label %126
    i32 2, label %130
  ]

126:                                              ; preds = %107
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %127 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #23
  %128 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %128, ptr noundef nonnull %8) #23
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %5) #23
  %129 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %6) #23
  br label %134

130:                                              ; preds = %107
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %7) #23
  %131 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #23
  call fastcc void @negate_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %8) #23
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5) #23
  %132 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  %133 = call fastcc float @normalize_v3_v3(ptr noundef nonnull %132, ptr noundef nonnull %7) #23
  br label %134

134:                                              ; preds = %107, %130, %126
  call void @mul_m4_m3m4(ptr noundef nonnull %19, ptr noundef nonnull %9, ptr noundef nonnull %19) #21
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %136

135:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %136

136:                                              ; preds = %3, %14, %134, %135
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #18 !PGOFuncName !326 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #18 !PGOFuncName !327 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atanf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @interpf(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #18 !PGOFuncName !328 {
  %4 = fsub float 1.000000e+00, %2
  %5 = fmul float %4, %1
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %0, float %5)
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !329 {
  %3 = load float, ptr %1, align 4, !tbaa !57
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !57
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !57
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !57
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @minmax_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !330 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @minmax_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !331 {
  %2 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %0, i64 0, i32 1
  store i32 2, ptr %2, align 8, !tbaa !332
  %3 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %0, i64 0, i32 2
  store float 0.000000e+00, ptr %3, align 4, !tbaa !334
  %4 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %0, i64 0, i32 8
  tail call fastcc void @zero_v3(ptr noundef nonnull %4) #23
  %5 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 8, !tbaa !335
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @minmax_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !336 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !337
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %8, i64 0, i32 9
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @minmax_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !338 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !337
  %17 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 9
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @minmax_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !339 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %2, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %111, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  %15 = icmp eq ptr %14, null
  br i1 %15, label %111, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #22
  %17 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %17) #21
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 4
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %18) #21
  %19 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !335
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %4) #21
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %7) #21
  call void @unit_m4(ptr noundef nonnull %6) #21
  br label %25

25:                                               ; preds = %23, %16
  %26 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !332
  switch i32 %27, label %110 [
    i32 2, label %28
    i32 1, label %36
    i32 0, label %44
    i32 5, label %52
    i32 4, label %60
    i32 3, label %68
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 2
  %30 = load float, ptr %29, align 8, !tbaa !57
  %31 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  %32 = load float, ptr %31, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 2
  %34 = load float, ptr %33, align 4, !tbaa !334
  %35 = fsub float %32, %34
  br label %76

36:                                               ; preds = %25
  %37 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !57
  %39 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !57
  %41 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 2
  %42 = load float, ptr %41, align 4, !tbaa !334
  %43 = fsub float %40, %42
  br label %76

44:                                               ; preds = %25
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %46 = load float, ptr %45, align 16, !tbaa !57
  %47 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %48 = load float, ptr %47, align 16, !tbaa !57
  %49 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 2
  %50 = load float, ptr %49, align 4, !tbaa !334
  %51 = fsub float %48, %50
  br label %76

52:                                               ; preds = %25
  %53 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 2
  %54 = load float, ptr %53, align 8, !tbaa !57
  %55 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  %56 = load float, ptr %55, align 8, !tbaa !57
  %57 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 2
  %58 = load float, ptr %57, align 4, !tbaa !334
  %59 = fsub float %56, %58
  br label %76

60:                                               ; preds = %25
  %61 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !57
  %63 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !57
  %65 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 2
  %66 = load float, ptr %65, align 4, !tbaa !334
  %67 = fsub float %64, %66
  br label %76

68:                                               ; preds = %25
  %69 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %70 = load float, ptr %69, align 16, !tbaa !57
  %71 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %72 = load float, ptr %71, align 16, !tbaa !57
  %73 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 2
  %74 = load float, ptr %73, align 4, !tbaa !334
  %75 = fsub float %72, %74
  br label %76

76:                                               ; preds = %68, %60, %52, %44, %36, %28
  %77 = phi float [ %74, %68 ], [ %66, %60 ], [ %58, %52 ], [ %50, %44 ], [ %42, %36 ], [ %34, %28 ]
  %78 = phi float [ %75, %68 ], [ %67, %60 ], [ %59, %52 ], [ %46, %44 ], [ %38, %36 ], [ %30, %28 ]
  %79 = phi float [ %70, %68 ], [ %62, %60 ], [ %54, %52 ], [ %51, %44 ], [ %43, %36 ], [ %35, %28 ]
  %80 = phi i64 [ 0, %68 ], [ 1, %60 ], [ 2, %52 ], [ 0, %44 ], [ 1, %36 ], [ 2, %28 ]
  %81 = fcmp ogt float %78, %79
  br i1 %81, label %82, label %106

82:                                               ; preds = %76
  %83 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 %80
  %84 = load float, ptr %83, align 4, !tbaa !57
  %85 = fadd float %84, %77
  %86 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %87 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 %80
  store float %85, ptr %87, align 4, !tbaa !57
  %88 = load i32, ptr %19, align 8, !tbaa !335
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %82
  %92 = and i32 %88, 2
  %93 = icmp eq i32 %92, 0
  %94 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %9, i64 0, i32 8
  br i1 %93, label %96, label %95

95:                                               ; preds = %91
  call fastcc void @copy_v3_v3(ptr noundef nonnull %86, ptr noundef nonnull %94) #23
  br label %99

96:                                               ; preds = %91
  call fastcc void @copy_v3_v3(ptr noundef nonnull %94, ptr noundef nonnull %86) #23
  %97 = load i32, ptr %19, align 8, !tbaa !335
  %98 = or i32 %97, 2
  store i32 %98, ptr %19, align 8, !tbaa !335
  br label %99

99:                                               ; preds = %95, %96, %82
  %100 = phi i32 [ %88, %95 ], [ %98, %96 ], [ %88, %82 ]
  %101 = and i32 %100, 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %18, ptr noundef nonnull %4) #21
  call void @copy_m4_m4(ptr noundef nonnull %17, ptr noundef nonnull %7) #21
  br label %109

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %105, ptr noundef nonnull %86) #23
  br label %109

106:                                              ; preds = %76
  %107 = load i32, ptr %19, align 8, !tbaa !335
  %108 = and i32 %107, -3
  store i32 %108, ptr %19, align 8, !tbaa !335
  br label %109

109:                                              ; preds = %106, %104, %103
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  br label %111

110:                                              ; preds = %25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  br label %111

111:                                              ; preds = %3, %12, %109, %110
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rbj_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !340 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 1
  tail call void %1(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @rbj_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !341 {
  %2 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %0, i64 0, i32 2
  store i32 1, ptr %2, align 8, !tbaa !342
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rbj_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !344 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !345
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 1, !tbaa !109
  %15 = zext i8 %14 to i16
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !110
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %17, align 2, !tbaa !111
  %18 = icmp eq ptr %11, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %20, align 4, !tbaa !114
  br label %21

21:                                               ; preds = %19, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rbj_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !346 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !345
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !110
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %19, ptr %20, align 1, !tbaa !109
  br label %21

21:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %22

22:                                               ; preds = %7, %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clampto_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !347 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clampto_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !348 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !349
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 1, !tbaa !109
  %15 = zext i8 %14 to i16
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !110
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %17, align 2, !tbaa !111
  %18 = icmp eq ptr %11, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %20, align 4, !tbaa !114
  br label %21

21:                                               ; preds = %19, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clampto_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !351 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !349
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !110
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %19, ptr %20, align 1, !tbaa !109
  br label %21

21:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %22

22:                                               ; preds = %7, %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clampto_get_tarmat(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, float %3) #0 !PGOFuncName !352 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 118
  %12 = load ptr, ptr %11, align 8, !tbaa !135
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !38
  tail call void @BKE_displist_make_curveTypes(ptr noundef %15, ptr noundef nonnull %8, i8 noundef zeroext 0) #21
  br label %16

16:                                               ; preds = %6, %14, %10
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %17) #21
  br label %18

18:                                               ; preds = %4, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clampto_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !353 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 8
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = load ptr, ptr %2, align 8, !tbaa !83
  %16 = icmp eq ptr %15, null
  br i1 %16, label %132, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !107
  %20 = icmp eq ptr %19, null
  br i1 %20, label %132, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !112
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %132

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #22
  %26 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %26) #21
  %27 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %27) #23
  call void @unit_m4(ptr noundef nonnull %8) #21
  %28 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0x46293E5940000000, ptr %28, align 8, !tbaa !57
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %6, align 8, !tbaa !57
  %29 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %29, align 8, !tbaa !57
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %7, align 8, !tbaa !57
  %30 = load ptr, ptr %18, align 8, !tbaa !107
  call void @BKE_object_minmax(ptr noundef %30, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 1) #21
  %31 = load ptr, ptr %14, align 8, !tbaa !349
  %32 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 118
  %33 = load ptr, ptr %32, align 8, !tbaa !135
  %34 = icmp eq ptr %33, null
  br i1 %34, label %129, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.CurveCache, ptr %33, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !196
  %38 = icmp eq ptr %37, null
  br i1 %38, label %129, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !198
  %41 = icmp eq ptr %40, null
  br i1 %41, label %129, label %42

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #22
  %43 = getelementptr inbounds %struct.bClampToConstraint, ptr %14, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !354
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #22
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef nonnull %6) #23
  %47 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %48 = load float, ptr %47, align 4
  %49 = load float, ptr %12, align 4, !tbaa !57
  %50 = fcmp ogt float %48, %49
  %51 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %52 = load float, ptr %51, align 4
  %53 = fcmp ogt float %48, %52
  %54 = select i1 %50, i1 %53, i1 false
  %55 = fcmp ogt float %52, %49
  %56 = fcmp ogt float %52, %48
  %57 = select i1 %55, i1 %56, i1 false
  %58 = zext i1 %57 to i64
  %59 = select i1 %54, i64 2, i64 %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #22
  br label %63

60:                                               ; preds = %42
  %61 = zext i32 %44 to i64
  %62 = add nsw i64 %61, -1
  br label %63

63:                                               ; preds = %60, %46
  %64 = phi i64 [ %59, %46 ], [ %62, %60 ]
  %65 = getelementptr inbounds %struct.bClampToConstraint, ptr %14, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !355
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  %69 = shl i64 %64, 48
  %70 = ashr exact i64 %69, 48
  %71 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %70
  %72 = load float, ptr %71, align 4, !tbaa !57
  br i1 %68, label %104, label %73

73:                                               ; preds = %63
  %74 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %70
  %75 = load float, ptr %74, align 4, !tbaa !57
  %76 = fsub float %75, %72
  %77 = call float @llvm.fabs.f32(float %76)
  %78 = fcmp ult float %77, 0x3E80000000000000
  br i1 %78, label %119, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %70
  %81 = load float, ptr %80, align 4, !tbaa !57
  %82 = fcmp olt float %81, %72
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = fsub float %72, %81
  %85 = fdiv float %84, %76
  %86 = call float @llvm.ceil.f32(float %85)
  %87 = fneg float %86
  %88 = call float @llvm.fmuladd.f32(float %87, float %76, float %72)
  %89 = fsub float %81, %88
  %90 = fdiv float %89, %76
  br label %119

91:                                               ; preds = %79
  %92 = fcmp ogt float %81, %75
  br i1 %92, label %93, label %101

93:                                               ; preds = %91
  %94 = fsub float %81, %75
  %95 = fdiv float %94, %76
  %96 = fptosi float %95 to i32
  %97 = sitofp i32 %96 to float
  %98 = call float @llvm.fmuladd.f32(float %97, float %76, float %75)
  %99 = fsub float %81, %98
  %100 = fdiv float %99, %76
  br label %119

101:                                              ; preds = %91
  %102 = fsub float %81, %72
  %103 = fdiv float %102, %76
  br label %119

104:                                              ; preds = %63
  %105 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %70
  %106 = load float, ptr %105, align 4, !tbaa !57
  %107 = fcmp ugt float %106, %72
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %70
  %110 = load float, ptr %109, align 4, !tbaa !57
  %111 = fcmp ult float %106, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = fsub float %110, %72
  %114 = call float @llvm.fabs.f32(float %113)
  %115 = fcmp ult float %114, 0x3E80000000000000
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = fsub float %106, %72
  %118 = fdiv float %117, %113
  br label %119

119:                                              ; preds = %112, %108, %104, %93, %101, %83, %73, %116
  %120 = phi float [ %118, %116 ], [ %90, %83 ], [ %100, %93 ], [ %103, %101 ], [ 0.000000e+00, %73 ], [ 0.000000e+00, %104 ], [ 1.000000e+00, %108 ], [ 0.000000e+00, %112 ]
  %121 = load ptr, ptr %18, align 8, !tbaa !107
  %122 = call i32 @where_on_path(ptr noundef %121, float noundef %120, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  call void @unit_m4(ptr noundef nonnull %11) #21
  %125 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %125, ptr noundef nonnull %9) #23
  %126 = load ptr, ptr %18, align 8, !tbaa !107
  %127 = getelementptr inbounds %struct.Object, ptr %126, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %127, ptr noundef nonnull %11) #21
  br label %128

128:                                              ; preds = %124, %119
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #22
  br label %129

129:                                              ; preds = %128, %39, %35, %25
  %130 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %131 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %130, ptr noundef nonnull %131) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  br label %132

132:                                              ; preds = %129, %21, %17, %3
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_minmax(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal void @transform_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !356 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @transform_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !357 {
  %2 = getelementptr inbounds %struct.bTransformConstraint, ptr %0, i64 0, i32 4
  store i8 0, ptr %2, align 4, !tbaa !113
  %3 = getelementptr inbounds %struct.bTransformConstraint, ptr %0, i64 0, i32 4, i64 1
  store i8 1, ptr %3, align 1, !tbaa !113
  %4 = getelementptr inbounds %struct.bTransformConstraint, ptr %0, i64 0, i32 4, i64 2
  store i8 2, ptr %4, align 2, !tbaa !113
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @transform_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !358 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !359
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bTransformConstraint, ptr %8, i64 0, i32 1
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @transform_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !361 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !359
  %17 = getelementptr inbounds %struct.bTransformConstraint, ptr %9, i64 0, i32 1
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @transform_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !362 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = load ptr, ptr %2, align 8, !tbaa !83
  %12 = icmp eq ptr %11, null
  br i1 %12, label %158, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = icmp eq ptr %15, null
  br i1 %16, label %158, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #22
  %18 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !363
  switch i16 %19, label %34 [
    i16 2, label %20
    i16 1, label %28
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4
  call void @mat4_to_size(ptr noundef nonnull %7, ptr noundef nonnull %21) #21
  %22 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %21) #21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call fastcc void @negate_v3(ptr noundef nonnull %7) #23
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 14
  %27 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 15
  br label %38

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 6
  %30 = load i16, ptr %29, align 2, !tbaa !43
  %31 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4
  call void @mat4_to_eulO(ptr noundef nonnull %7, i16 noundef signext %30, ptr noundef nonnull %31) #21
  %32 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 10
  %33 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 11
  br label %38

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.bConstraintTarget, ptr %11, i64 0, i32 4, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %35) #23
  %36 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 6
  %37 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 7
  br label %38

38:                                               ; preds = %34, %28, %25
  %39 = phi ptr [ %36, %34 ], [ %32, %28 ], [ %26, %25 ]
  %40 = phi ptr [ %37, %34 ], [ %33, %28 ], [ %27, %25 ]
  %41 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %42 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %42) #23
  %43 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 6
  %44 = load i16, ptr %43, align 2, !tbaa !43
  call void @mat4_to_eulO(ptr noundef nonnull %5, i16 noundef signext %44, ptr noundef nonnull %41) #21
  call void @mat4_to_size(ptr noundef nonnull %6, ptr noundef nonnull %41) #21
  %45 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 5
  %46 = load i8, ptr %45, align 1, !tbaa !364
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %38, %61
  %49 = phi i64 [ %64, %61 ], [ 0, %38 ]
  %50 = getelementptr inbounds float, ptr %40, i64 %49
  %51 = load float, ptr %50, align 4, !tbaa !57
  %52 = getelementptr inbounds float, ptr %39, i64 %49
  %53 = load float, ptr %52, align 4, !tbaa !57
  %54 = fsub float %51, %53
  %55 = fcmp une float %54, 0.000000e+00
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %49
  %58 = load float, ptr %57, align 4, !tbaa !57
  %59 = fsub float %58, %53
  %60 = fdiv float %59, %54
  br label %61

61:                                               ; preds = %48, %56
  %62 = phi float [ %60, %56 ], [ 0.000000e+00, %48 ]
  %63 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %49
  store float %62, ptr %63, align 4
  %64 = add nuw nsw i64 %49, 1
  %65 = icmp eq i64 %64, 3
  br i1 %65, label %92, label %48, !llvm.loop !365

66:                                               ; preds = %38, %81
  %67 = phi i64 [ %90, %81 ], [ 0, %38 ]
  %68 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !57
  %70 = getelementptr inbounds float, ptr %39, i64 %67
  %71 = load float, ptr %70, align 4, !tbaa !57
  %72 = fcmp olt float %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  store float %71, ptr %68, align 4, !tbaa !57
  %74 = getelementptr inbounds float, ptr %40, i64 %67
  %75 = load float, ptr %74, align 4, !tbaa !57
  br label %81

76:                                               ; preds = %66
  %77 = getelementptr inbounds float, ptr %40, i64 %67
  %78 = load float, ptr %77, align 4, !tbaa !57
  %79 = fcmp ogt float %69, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store float %78, ptr %68, align 4, !tbaa !57
  br label %81

81:                                               ; preds = %76, %80, %73
  %82 = phi float [ %69, %76 ], [ %78, %80 ], [ %71, %73 ]
  %83 = phi float [ %78, %76 ], [ %78, %80 ], [ %75, %73 ]
  %84 = fsub float %83, %71
  %85 = fcmp une float %84, 0.000000e+00
  %86 = fsub float %82, %71
  %87 = fdiv float %86, %84
  %88 = select i1 %85, float %87, float 0.000000e+00
  %89 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %67
  store float %88, ptr %89, align 4
  %90 = add nuw nsw i64 %67, 1
  %91 = icmp eq i64 %90, 3
  br i1 %91, label %92, label %66, !llvm.loop !366

92:                                               ; preds = %61, %81
  %93 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 3
  %94 = load i16, ptr %93, align 2, !tbaa !367
  switch i16 %94, label %135 [
    i16 2, label %95
    i16 1, label %114
  ]

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 16
  %97 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 17
  br label %98

98:                                               ; preds = %95, %98
  %99 = phi i64 [ 0, %95 ], [ %112, %98 ]
  %100 = getelementptr inbounds float, ptr %96, i64 %99
  %101 = load float, ptr %100, align 4, !tbaa !57
  %102 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 4, i64 %99
  %103 = load i8, ptr %102, align 1, !tbaa !113
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %104
  %106 = load float, ptr %105, align 4, !tbaa !57
  %107 = getelementptr inbounds float, ptr %97, i64 %99
  %108 = load float, ptr %107, align 4, !tbaa !57
  %109 = fsub float %108, %101
  %110 = call float @llvm.fmuladd.f32(float %106, float %109, float %101)
  %111 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %99
  store float %110, ptr %111, align 4, !tbaa !57
  %112 = add nuw nsw i64 %99, 1
  %113 = icmp eq i64 %112, 3
  br i1 %113, label %156, label %98, !llvm.loop !368

114:                                              ; preds = %92
  %115 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 12
  %116 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 13
  br label %117

117:                                              ; preds = %114, %117
  %118 = phi i64 [ 0, %114 ], [ %133, %117 ]
  %119 = getelementptr inbounds float, ptr %115, i64 %118
  %120 = load float, ptr %119, align 4, !tbaa !57
  %121 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 4, i64 %118
  %122 = load i8, ptr %121, align 1, !tbaa !113
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %123
  %125 = load float, ptr %124, align 4, !tbaa !57
  %126 = getelementptr inbounds float, ptr %116, i64 %118
  %127 = load float, ptr %126, align 4, !tbaa !57
  %128 = fsub float %127, %120
  %129 = call float @llvm.fmuladd.f32(float %125, float %128, float %120)
  %130 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %118
  %131 = load float, ptr %130, align 4, !tbaa !57
  %132 = fadd float %131, %129
  store float %132, ptr %130, align 4, !tbaa !57
  %133 = add nuw nsw i64 %118, 1
  %134 = icmp eq i64 %133, 3
  br i1 %134, label %156, label %117, !llvm.loop !369

135:                                              ; preds = %92
  %136 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 8
  %137 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 9
  br label %138

138:                                              ; preds = %135, %138
  %139 = phi i64 [ 0, %135 ], [ %154, %138 ]
  %140 = getelementptr inbounds float, ptr %136, i64 %139
  %141 = load float, ptr %140, align 4, !tbaa !57
  %142 = getelementptr inbounds %struct.bTransformConstraint, ptr %10, i64 0, i32 4, i64 %139
  %143 = load i8, ptr %142, align 1, !tbaa !113
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 %144
  %146 = load float, ptr %145, align 4, !tbaa !57
  %147 = getelementptr inbounds float, ptr %137, i64 %139
  %148 = load float, ptr %147, align 4, !tbaa !57
  %149 = fsub float %148, %141
  %150 = call float @llvm.fmuladd.f32(float %146, float %149, float %141)
  %151 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %139
  %152 = load float, ptr %151, align 4, !tbaa !57
  %153 = fadd float %152, %150
  store float %153, ptr %151, align 4, !tbaa !57
  %154 = add nuw nsw i64 %139, 1
  %155 = icmp eq i64 %154, 3
  br i1 %155, label %156, label %138, !llvm.loop !370

156:                                              ; preds = %117, %98, %138
  %157 = load i16, ptr %43, align 2, !tbaa !43
  call void @loc_eulO_size_to_mat4(ptr noundef nonnull %41, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef signext %157) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %158

158:                                              ; preds = %156, %13, %3
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @shrinkwrap_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !371 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @shrinkwrap_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !372 {
  %2 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %0, i64 0, i32 3
  store i8 2, ptr %2, align 2, !tbaa !373
  %3 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %0, i64 0, i32 4
  store i8 1, ptr %3, align 1, !tbaa !375
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @shrinkwrap_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !376 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !377
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 1, !tbaa !109
  %15 = zext i8 %14 to i16
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !110
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %17, align 2, !tbaa !111
  %18 = icmp eq ptr %11, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %20, align 4, !tbaa !114
  br label %21

21:                                               ; preds = %19, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @shrinkwrap_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !378 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !377
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !110
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %19, ptr %20, align 1, !tbaa !109
  br label %21

21:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %22

22:                                               ; preds = %7, %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @shrinkwrap_get_tarmat(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, float %3) #0 !PGOFuncName !379 {
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.SpaceTransform, align 4
  %7 = alloca %struct.BVHTreeFromMesh, align 8
  %8 = alloca %struct.BVHTreeNearest, align 4
  %9 = alloca %struct.BVHTreeRayHit, align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = icmp eq ptr %2, null
  br i1 %14, label %111, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !107
  %18 = icmp eq ptr %17, null
  br i1 %18, label %111, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !112
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %111

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #22
  %24 = tail call ptr @object_get_derived_final(ptr noundef nonnull %17, i8 noundef zeroext 0) #21
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  %25 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %25) #21
  %26 = icmp eq ptr %24, null
  br i1 %26, label %110, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %29 = load ptr, ptr %16, align 8, !tbaa !107
  %30 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 47
  call void @BLI_space_transform_from_matrices(ptr noundef nonnull %6, ptr noundef nonnull %28, ptr noundef nonnull %30) #21
  %31 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %13, i64 0, i32 2
  %32 = load i16, ptr %31, align 4, !tbaa !380
  switch i16 %32, label %102 [
    i16 0, label %33
    i16 2, label %33
    i16 1, label %59
  ]

33:                                               ; preds = %27, %27
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #22
  store i32 -1, ptr %8, align 4, !tbaa !381
  %34 = getelementptr inbounds %struct.BVHTreeNearest, ptr %8, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %34, align 4, !tbaa !383
  %35 = icmp eq i16 %32, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call ptr @bvhtree_from_mesh_verts(ptr noundef nonnull %7, ptr noundef nonnull %24, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #21
  br label %40

38:                                               ; preds = %33
  %39 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %7, ptr noundef nonnull %24, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #21
  br label %40

40:                                               ; preds = %38, %36
  %41 = load ptr, ptr %7, align 8, !tbaa !384
  %42 = icmp eq ptr %41, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %40
  call void @BLI_space_transform_apply(ptr noundef nonnull %6, ptr noundef nonnull %5) #21
  %44 = load ptr, ptr %7, align 8, !tbaa !384
  %45 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %7, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !386
  %47 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %44, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef %46, ptr noundef nonnull %7) #21
  %48 = getelementptr inbounds %struct.BVHTreeNearest, ptr %8, i64 0, i32 1
  %49 = call fastcc float @len_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %48) #23
  %50 = fcmp une float %49, 0.000000e+00
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %13, i64 0, i32 1
  %53 = load float, ptr %52, align 8, !tbaa !387
  %54 = fsub float %49, %53
  %55 = fdiv float %54, %49
  call void @interp_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %48, float noundef %55) #21
  br label %56

56:                                               ; preds = %51, %43
  call void @BLI_space_transform_invert(ptr noundef nonnull %6, ptr noundef nonnull %5) #21
  br label %57

57:                                               ; preds = %40, %56
  %58 = phi i32 [ 0, %56 ], [ 1, %40 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #22
  br label %102

59:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  store i32 -1, ptr %9, align 4, !tbaa !388
  %60 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %13, i64 0, i32 5
  %61 = load float, ptr %60, align 8, !tbaa !390
  %62 = fcmp oeq float %61, 0.000000e+00
  %63 = select i1 %62, float 1.000000e+05, float %61
  %64 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %9, i64 0, i32 3
  store float %63, ptr %64, align 4, !tbaa !391
  %65 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %13, i64 0, i32 3
  %66 = load i8, ptr %65, align 2, !tbaa !373
  %67 = icmp ult i8 %66, 6
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = zext nneg i8 %66 to i64
  %70 = getelementptr inbounds [6 x i64], ptr @switch.table.shrinkwrap_get_tarmat, i64 0, i64 %69
  %71 = load i64, ptr %70, align 8
  %72 = zext nneg i8 %66 to i64
  %73 = getelementptr inbounds [6 x float], ptr @switch.table.shrinkwrap_get_tarmat.10, i64 0, i64 %72
  %74 = load float, ptr %73, align 4
  %75 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 %71
  store float %74, ptr %75, align 4, !tbaa !57
  br label %76

76:                                               ; preds = %59, %68
  call void @unit_m4(ptr noundef nonnull %10) #21
  %77 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !41
  %79 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !44
  %81 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %13, i64 0, i32 4
  %82 = load i8, ptr %81, align 1, !tbaa !375
  %83 = zext i8 %82 to i16
  call void @BKE_constraint_mat_convertspace(ptr noundef %78, ptr noundef %80, ptr noundef nonnull %10, i16 noundef signext 1, i16 noundef signext %83) #23
  %84 = call zeroext i8 @invert_m4(ptr noundef nonnull %10) #21
  call void @mul_mat3_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #21
  %85 = call fastcc float @normalize_v3(ptr noundef nonnull %11) #23
  %86 = fcmp olt float %85, 0x3E80000000000000
  br i1 %86, label %100, label %87

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %13, i64 0, i32 1
  %89 = load float, ptr %88, align 8, !tbaa !387
  %90 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %7, ptr noundef nonnull %24, float noundef %89, i32 noundef 4, i32 noundef 6) #21
  %91 = load ptr, ptr %7, align 8, !tbaa !384
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %7, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !392
  %96 = call zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext 0, ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %91, ptr noundef nonnull %9, ptr noundef %95, ptr noundef nonnull %7) #21
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %9, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %99) #23
  br label %100

100:                                              ; preds = %93, %87, %76, %98
  %101 = phi i32 [ 0, %98 ], [ 1, %76 ], [ 1, %87 ], [ 1, %93 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #22
  br label %102

102:                                              ; preds = %27, %100, %57
  %103 = phi i32 [ 0, %27 ], [ %101, %100 ], [ %58, %57 ]
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %7) #21
  %104 = getelementptr inbounds %struct.DerivedMesh, ptr %24, i64 0, i32 95
  %105 = load ptr, ptr %104, align 8, !tbaa !133
  call void %105(ptr noundef nonnull %24) #21
  %106 = icmp eq i32 %103, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  call fastcc void @zero_v3(ptr noundef nonnull %5) #23
  br label %108

108:                                              ; preds = %107, %102
  call void @mul_m4_v3(ptr noundef nonnull %28, ptr noundef nonnull %5) #21
  %109 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %109, ptr noundef nonnull %5) #23
  br label %110

110:                                              ; preds = %108, %23
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  br label %111

111:                                              ; preds = %110, %19, %15, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @shrinkwrap_evaluate(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #19 !PGOFuncName !393 {
  %4 = load ptr, ptr %2, align 8, !tbaa !83
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 4, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #23
  br label %13

13:                                               ; preds = %10, %6, %3
  ret void
}

; Function Attrs: optsize
declare ptr @object_get_derived_final(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_space_transform_from_matrices(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_verts(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_space_transform_apply(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_space_transform_invert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_shrinkwrap_project_normal(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @damptrack_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !394 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @damptrack_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !395 {
  %2 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %0, i64 0, i32 1
  store i32 1, ptr %2, align 8, !tbaa !396
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @damptrack_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !398 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !399
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %8, i64 0, i32 3
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @damptrack_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !400 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !399
  %17 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %9, i64 0, i32 3
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @damptrack_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !401 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = load ptr, ptr %2, align 8, !tbaa !83
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #22
  %19 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %11, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !396
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [6 x [3 x float]], ptr @track_dir_vecs, i64 0, i64 %21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %22) #23
  %23 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mul_mat3_m4_v3(ptr noundef nonnull %23, ptr noundef nonnull %4) #21
  %24 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #23
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, ptr %19, align 8, !tbaa !396
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [6 x [3 x float]], ptr @track_dir_vecs, i64 0, i64 %28
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %29) #23
  br label %30

30:                                               ; preds = %26, %18
  %31 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %31) #23
  %32 = getelementptr inbounds %struct.bConstraintTarget, ptr %12, i64 0, i32 4, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %32, ptr noundef nonnull %6) #23
  %33 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #23
  %34 = fcmp oeq float %33, 0.000000e+00
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  br label %36

36:                                               ; preds = %35, %30
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %37 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %38 = call fastcc float @min_ff(float noundef 1.000000e+00, float noundef %37) #23
  %39 = call fastcc float @max_ff(float noundef -1.000000e+00, float noundef %38) #23
  %40 = call float @acosf(float noundef %39) #21
  call void @axis_angle_to_mat3(ptr noundef nonnull %8, ptr noundef nonnull %7, float noundef %40) #21
  call void @unit_m4(ptr noundef nonnull %9) #21
  call void @mul_m4_m3m4(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %23) #21
  call void @copy_m4_m4(ptr noundef nonnull %23, ptr noundef nonnull %9) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %31, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %41

41:                                               ; preds = %36, %14, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @splineik_free(ptr nocapture noundef readonly %0) #0 !PGOFuncName !402 {
  %2 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !403
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef nonnull %5) #21
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @splineik_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !405 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @splineik_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !406 {
  %3 = getelementptr inbounds %struct.bConstraint, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !403
  %10 = tail call ptr %7(ptr noundef %9) #21
  %11 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %6, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !403
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @splineik_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !407 {
  %2 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %0, i64 0, i32 3
  store i16 1, ptr %2, align 2, !tbaa !408
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @splineik_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !409 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !410
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 1, !tbaa !109
  %15 = zext i8 %14 to i16
  %16 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %15, ptr %16, align 8, !tbaa !110
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %17, align 2, !tbaa !111
  %18 = icmp eq ptr %11, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %20, align 4, !tbaa !114
  br label %21

21:                                               ; preds = %19, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 1, %21 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @splineik_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !411 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !410
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %18 = load i16, ptr %17, align 8, !tbaa !110
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %19, ptr %20, align 1, !tbaa !109
  br label %21

21:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %22

22:                                               ; preds = %7, %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @splineik_get_tarmat(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, float %3) #0 !PGOFuncName !412 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 118
  %12 = load ptr, ptr %11, align 8, !tbaa !135
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !38
  tail call void @BKE_displist_make_curveTypes(ptr noundef %15, ptr noundef nonnull %8, i8 noundef zeroext 0) #21
  br label %16

16:                                               ; preds = %6, %14, %10
  %17 = getelementptr inbounds %struct.bConstraintTarget, ptr %2, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %17) #21
  br label %18

18:                                               ; preds = %4, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @translike_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !413 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @translike_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !414 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !415
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bTransLikeConstraint, ptr %8, i64 0, i32 1
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @translike_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !417 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !415
  %17 = getelementptr inbounds %struct.bTransLikeConstraint, ptr %9, i64 0, i32 1
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @translike_evaluate(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !418 {
  %4 = load ptr, ptr %2, align 8, !tbaa !83
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 4
  tail call void @copy_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %12) #21
  br label %13

13:                                               ; preds = %10, %6, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @samevolume_new_data(ptr nocapture noundef writeonly %0) #3 !PGOFuncName !419 {
  store i32 1, ptr %0, align 4, !tbaa !420
  %2 = getelementptr inbounds %struct.bSameVolumeConstraint, ptr %0, i64 0, i32 1
  store float 1.000000e+00, ptr %2, align 4, !tbaa !422
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @samevolume_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !423 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.bSameVolumeConstraint, ptr %6, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !422
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  %9 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mat4_to_size(ptr noundef nonnull %4, ptr noundef nonnull %9) #21
  %10 = load i32, ptr %6, align 4, !tbaa !420
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !57
  %14 = fcmp une float %13, 0.000000e+00
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = fdiv float %8, %13
  %17 = call float @sqrtf(float noundef %16) #21
  %18 = load i32, ptr %6, align 4, !tbaa !420
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !57
  %22 = fdiv float %17, %21
  br label %23

23:                                               ; preds = %15, %3
  %24 = phi i32 [ %18, %15 ], [ %10, %3 ]
  %25 = phi float [ %22, %15 ], [ 1.000000e+00, %3 ]
  switch i32 %24, label %35 [
    i32 0, label %26
    i32 1, label %29
    i32 2, label %31
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  call fastcc void @mul_v3_fl(ptr noundef nonnull %27, float noundef %25) #23
  %28 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  br label %33

29:                                               ; preds = %23
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %25) #23
  %30 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 2
  br label %33

31:                                               ; preds = %23
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %25) #23
  %32 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 1
  br label %33

33:                                               ; preds = %26, %29, %31
  %34 = phi ptr [ %32, %31 ], [ %30, %29 ], [ %28, %26 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %34, float noundef %25) #23
  br label %35

35:                                               ; preds = %33, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pivotcon_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !424 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pivotcon_get_tars(ptr noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !425 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 160, ptr noundef nonnull @.str.4) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !426
  %12 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %14 = getelementptr inbounds %struct.bPivotConstraint, ptr %8, i64 0, i32 1
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 64) #21
  %16 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !109
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  store i16 %18, ptr %19, align 8, !tbaa !110
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 6
  store i16 1, ptr %20, align 2, !tbaa !111
  %21 = load ptr, ptr %12, align 8, !tbaa !107
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !112
  switch i16 %25, label %43 [
    i16 25, label %26
    i16 1, label %38
    i16 22, label %38
  ]

26:                                               ; preds = %23
  %27 = load i8, ptr %13, align 8, !tbaa !113
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !87
  %32 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %31, ptr noundef nonnull %13) #21
  %33 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 2, ptr %33, align 4, !tbaa !114
  %34 = icmp eq ptr %32, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bPoseChannel, ptr %32, i64 0, i32 26
  %37 = load i16, ptr %36, align 4, !tbaa !45
  br label %47

38:                                               ; preds = %23, %23
  %39 = load i8, ptr %13, align 8, !tbaa !113
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 3, ptr %42, align 4, !tbaa !114
  br label %47

43:                                               ; preds = %23, %26, %38
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 7
  store i16 1, ptr %44, align 4, !tbaa !114
  %45 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 83
  %46 = load i16, ptr %45, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %35, %29, %41, %43
  %48 = phi i16 [ %46, %43 ], [ 1, %41 ], [ %37, %35 ], [ 1, %29 ]
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 8
  store i16 %48, ptr %49, align 2, !tbaa !116
  br label %50

50:                                               ; preds = %47, %6
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %51

51:                                               ; preds = %2, %50
  %52 = phi i32 [ 1, %50 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pivotcon_flush_tars(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 !PGOFuncName !428 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = load ptr, ptr %1, align 8, !tbaa !83
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %9, align 8, !tbaa !426
  %17 = getelementptr inbounds %struct.bPivotConstraint, ptr %9, i64 0, i32 1
  %18 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef 64) #21
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %10, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !110
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 6
  store i8 %22, ptr %23, align 1, !tbaa !109
  br label %24

24:                                               ; preds = %14, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #21
  br label %25

25:                                               ; preds = %7, %24, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pivotcon_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !429 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = load ptr, ptr %2, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  %14 = getelementptr inbounds %struct.bPivotConstraint, ptr %12, i64 0, i32 3
  %15 = load i16, ptr %14, align 4, !tbaa !430
  %16 = icmp eq i16 %15, -1
  br i1 %16, label %37, label %17

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #22
  %18 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 6
  %19 = load i16, ptr %18, align 2, !tbaa !43
  %20 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @mat4_to_eulO(ptr noundef nonnull %9, i16 noundef signext %19, ptr noundef nonnull %20) #21
  %21 = load i16, ptr %14, align 4, !tbaa !430
  %22 = icmp slt i16 %21, 3
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = sext i16 %21 to i64
  %25 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !57
  %27 = fcmp ogt float %26, 0.000000e+00
  br i1 %27, label %36, label %35

28:                                               ; preds = %17
  %29 = zext nneg i16 %21 to i64
  %30 = add nuw nsw i64 %29, 4294967293
  %31 = and i64 %30, 4294967295
  %32 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !57
  %34 = fcmp olt float %33, 0.000000e+00
  br i1 %34, label %36, label %35

35:                                               ; preds = %28, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  br label %37

36:                                               ; preds = %28, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  br label %64

37:                                               ; preds = %35, %3
  %38 = icmp eq ptr %13, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.bConstraintTarget, ptr %13, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !107
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.bConstraintTarget, ptr %13, i64 0, i32 4, i64 3
  %45 = getelementptr inbounds %struct.bPivotConstraint, ptr %12, i64 0, i32 2
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %44, ptr noundef nonnull %45) #23
  br label %56

46:                                               ; preds = %39, %37
  %47 = getelementptr inbounds %struct.bPivotConstraint, ptr %12, i64 0, i32 4
  %48 = load i16, ptr %47, align 2, !tbaa !431
  %49 = and i16 %48, 1
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  %53 = getelementptr inbounds %struct.bPivotConstraint, ptr %12, i64 0, i32 2
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %52, ptr noundef nonnull %53) #23
  br label %56

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.bPivotConstraint, ptr %12, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %55) #23
  br label %56

56:                                               ; preds = %51, %54, %43
  %57 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %57) #21
  call void @normalize_m3(ptr noundef nonnull %6) #21
  call void @mat3_to_axis_angle(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #21
  %58 = load float, ptr %8, align 4, !tbaa !57
  %59 = fcmp une float %58, 0.000000e+00
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #22
  %61 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %61) #23
  call void @project_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef nonnull %7) #21
  call fastcc void @sub_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #22
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %63, ptr noundef nonnull %4) #23
  call void @mul_m3_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #21
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %63, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  br label %64

64:                                               ; preds = %36, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #12 !PGOFuncName !432 {
  %4 = load float, ptr %1, align 4, !tbaa !57
  %5 = load float, ptr %2, align 4, !tbaa !57
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !57
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !57
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !57
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !57
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @mat3_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !433 {
  %3 = load float, ptr %1, align 4, !tbaa !57
  %4 = load float, ptr %0, align 4, !tbaa !57
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !57
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !57
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !57
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !57
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !57
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @followtrack_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !434 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 1, ptr noundef %2) #21
  %6 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %5, i64 0, i32 5
  tail call void %1(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %2) #21
  %7 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %5, i64 0, i32 6
  tail call void %1(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @followtrack_new_data(ptr nocapture noundef %0) #12 !PGOFuncName !435 {
  store ptr null, ptr %0, align 8, !tbaa !436
  %2 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !438
  %4 = or i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !438
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @followtrack_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !439 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca %struct.CameraParams, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x float], align 8
  %15 = alloca [4 x [4 x float]], align 16
  %16 = alloca %struct.BVHTreeFromMesh, align 8
  %17 = alloca %struct.BVHTreeRayHit, align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [4 x [4 x float]], align 16
  %22 = load ptr, ptr %1, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !61
  %25 = load ptr, ptr %24, align 8, !tbaa !436
  %26 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %24, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !440
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !441
  br label %32

32:                                               ; preds = %3, %29
  %33 = phi ptr [ %31, %29 ], [ %27, %3 ]
  %34 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %24, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !438
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 41
  %40 = load ptr, ptr %39, align 8, !tbaa !460
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi ptr [ %40, %38 ], [ %25, %32 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %273, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %24, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !113
  %47 = icmp ne i8 %46, 0
  %48 = icmp ne ptr %33, null
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %273

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.MovieClip, ptr %42, i64 0, i32 11
  %52 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %24, i64 0, i32 4
  %53 = load i8, ptr %52, align 8, !tbaa !113
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call ptr @BKE_tracking_object_get_named(ptr noundef nonnull %51, ptr noundef nonnull %52) #21
  br label %59

57:                                               ; preds = %50
  %58 = tail call ptr @BKE_tracking_object_get_camera(ptr noundef nonnull %51) #21
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi ptr [ %56, %55 ], [ %58, %57 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %273, label %62

62:                                               ; preds = %59
  %63 = tail call ptr @BKE_tracking_track_get_named(ptr noundef nonnull %51, ptr noundef nonnull %60, ptr noundef nonnull %45) #21
  %64 = icmp eq ptr %63, null
  br i1 %64, label %273, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 5
  %67 = load i32, ptr %66, align 8, !tbaa !461
  %68 = sitofp i32 %67 to float
  %69 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef nonnull %42, float noundef %68) #21
  %70 = fptosi float %69 to i32
  %71 = load i32, ptr %34, align 8, !tbaa !438
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %103, label %74

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 13
  %76 = load i32, ptr %75, align 8, !tbaa !462
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %273, label %79

79:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #22
  %80 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %80) #21
  %81 = getelementptr inbounds %struct.MovieTrackingObject, ptr %60, i64 0, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !464
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #22
  %86 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %86) #21
  call void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef nonnull %51, ptr noundef nonnull %60, i32 noundef %70, ptr noundef nonnull %6) #21
  %87 = call zeroext i8 @invert_m4(ptr noundef nonnull %6) #21
  call void @_va_mul_m4_series_4(ptr noundef nonnull %80, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %88 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 11
  %89 = load float, ptr %88, align 8, !tbaa !57
  %90 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 11, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !57
  %92 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 11, i64 2
  %93 = load float, ptr %92, align 8, !tbaa !57
  call void @translate_m4(ptr noundef nonnull %80, float noundef %89, float noundef %91, float noundef %93) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #22
  br label %102

94:                                               ; preds = %79
  %95 = load ptr, ptr %1, align 8, !tbaa !38
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %95, ptr noundef nonnull %33, ptr noundef nonnull %5) #21
  call void @mul_m4_m4m4(ptr noundef nonnull %80, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %96 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 11
  %97 = load float, ptr %96, align 8, !tbaa !57
  %98 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 11, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !57
  %100 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 11, i64 2
  %101 = load float, ptr %100, align 8, !tbaa !57
  call void @translate_m4(ptr noundef nonnull %80, float noundef %97, float noundef %99, float noundef %101) #21
  br label %102

102:                                              ; preds = %94, %85
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  br label %273

103:                                              ; preds = %65
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #22
  %104 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 33
  %105 = load i32, ptr %104, align 4, !tbaa !467
  %106 = sitofp i32 %105 to float
  %107 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 63
  %108 = load float, ptr %107, align 4, !tbaa !468
  %109 = fmul float %108, %106
  %110 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 34
  %111 = load i32, ptr %110, align 8, !tbaa !469
  %112 = sitofp i32 %111 to float
  %113 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 64
  %114 = load float, ptr %113, align 8, !tbaa !470
  %115 = fmul float %114, %112
  %116 = fdiv float %109, %115
  call void @BKE_object_where_is_calc_mat4(ptr noundef nonnull %22, ptr noundef nonnull %33, ptr noundef nonnull %10) #21
  %117 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !57
  %118 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 1.000000e+00, ptr %118, align 8, !tbaa !57
  call void @mul_v3_m4v3(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %7) #21
  %119 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  %120 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %120) #23
  %121 = getelementptr inbounds [4 x [4 x float]], ptr %10, i64 0, i64 3
  call fastcc void @sub_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %121) #23
  call void @project_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #21
  %122 = call fastcc float @len_v3(ptr noundef nonnull %8) #23
  %123 = fcmp ogt float %122, 0x3E80000000000000
  br i1 %123, label %124, label %272

124:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #22
  call void @BKE_movieclip_get_size(ptr noundef nonnull %42, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull %13) #21
  %125 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %63, i32 noundef %70) #21
  %126 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %63, i64 0, i32 7
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %14, ptr noundef %125, ptr noundef nonnull %126) #23
  %127 = load i32, ptr %34, align 8, !tbaa !438
  %128 = and i32 %127, 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %145, label %130

130:                                              ; preds = %124
  %131 = load i32, ptr %12, align 4, !tbaa !471
  %132 = load i32, ptr %13, align 4, !tbaa !471
  %133 = insertelement <2 x i32> poison, i32 %131, i64 0
  %134 = insertelement <2 x i32> %133, i32 %132, i64 1
  %135 = sitofp <2 x i32> %134 to <2 x float>
  %136 = load <2 x float>, ptr %14, align 8, !tbaa !57
  %137 = fmul <2 x float> %136, %135
  store <2 x float> %137, ptr %14, align 8, !tbaa !57
  call void @BKE_tracking_undistort_v2(ptr noundef nonnull %51, ptr noundef nonnull %14, ptr noundef nonnull %14) #21
  %138 = load i32, ptr %12, align 4, !tbaa !471
  %139 = load i32, ptr %13, align 4, !tbaa !471
  %140 = insertelement <2 x i32> poison, i32 %138, i64 0
  %141 = insertelement <2 x i32> %140, i32 %139, i64 1
  %142 = sitofp <2 x i32> %141 to <2 x float>
  %143 = load <2 x float>, ptr %14, align 8, !tbaa !57
  %144 = fdiv <2 x float> %143, %142
  store <2 x float> %144, ptr %14, align 8, !tbaa !57
  br label %145

145:                                              ; preds = %130, %124
  %146 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %24, i64 0, i32 3
  %147 = load i32, ptr %146, align 4, !tbaa !472
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %201, label %149

149:                                              ; preds = %145
  %150 = load i32, ptr %12, align 4, !tbaa !471
  %151 = getelementptr inbounds %struct.MovieClip, ptr %42, i64 0, i32 6
  %152 = load float, ptr %151, align 8, !tbaa !473
  %153 = load i32, ptr %13, align 4, !tbaa !471
  %154 = getelementptr inbounds %struct.MovieClip, ptr %42, i64 0, i32 7
  %155 = load float, ptr %154, align 4, !tbaa !481
  %156 = load i32, ptr %104, align 4, !tbaa !467
  %157 = load float, ptr %107, align 4, !tbaa !468
  %158 = load i32, ptr %110, align 8, !tbaa !469
  %159 = load float, ptr %113, align 8, !tbaa !470
  %160 = insertelement <2 x i32> poison, i32 %150, i64 0
  %161 = insertelement <2 x i32> %160, i32 %156, i64 1
  %162 = sitofp <2 x i32> %161 to <2 x float>
  %163 = insertelement <2 x float> poison, float %152, i64 0
  %164 = insertelement <2 x float> %163, float %157, i64 1
  %165 = fmul <2 x float> %164, %162
  %166 = insertelement <2 x i32> poison, i32 %153, i64 0
  %167 = insertelement <2 x i32> %166, i32 %158, i64 1
  %168 = sitofp <2 x i32> %167 to <2 x float>
  %169 = insertelement <2 x float> poison, float %155, i64 0
  %170 = insertelement <2 x float> %169, float %159, i64 1
  %171 = fmul <2 x float> %170, %168
  %172 = fdiv <2 x float> %165, %171
  %173 = extractelement <2 x float> %172, i64 0
  %174 = extractelement <2 x float> %172, i64 1
  %175 = fsub float %173, %174
  %176 = call float @llvm.fabs.f32(float %175)
  %177 = fcmp ult float %176, 0x3E80000000000000
  br i1 %177, label %201, label %178

178:                                              ; preds = %149
  %179 = fcmp ogt float %173, %174
  %180 = icmp ne i32 %147, 2
  %181 = xor i1 %180, %179
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = fdiv float %173, %174
  %184 = extractelement <2 x float> %162, i64 0
  %185 = fmul float %184, 5.000000e-01
  %186 = load float, ptr %14, align 8, !tbaa !57
  %187 = fneg float %185
  %188 = call float @llvm.fmuladd.f32(float %186, float %184, float %187)
  %189 = call float @llvm.fmuladd.f32(float %188, float %183, float %185)
  %190 = fdiv float %189, %184
  store float %190, ptr %14, align 8, !tbaa !57
  br label %201

191:                                              ; preds = %178
  %192 = fdiv float %174, %173
  %193 = extractelement <2 x float> %168, i64 0
  %194 = fmul float %193, 5.000000e-01
  %195 = getelementptr inbounds [2 x float], ptr %14, i64 0, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !57
  %197 = fneg float %194
  %198 = call float @llvm.fmuladd.f32(float %196, float %193, float %197)
  %199 = call float @llvm.fmuladd.f32(float %198, float %192, float %194)
  %200 = fdiv float %199, %193
  store float %200, ptr %195, align 4, !tbaa !57
  br label %201

201:                                              ; preds = %149, %191, %182, %145
  call void @BKE_camera_params_init(ptr noundef nonnull %11) #21
  call void @BKE_camera_params_from_object(ptr noundef nonnull %11, ptr noundef nonnull %33) #21
  %202 = load i8, ptr %11, align 4, !tbaa !482
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %222, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 2
  %206 = load <4 x float>, ptr %205, align 4
  %207 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 4
  %208 = load <2 x float>, ptr %14, align 8, !tbaa !57
  %209 = fadd <2 x float> %208, <float -5.000000e-01, float -5.000000e-01>
  %210 = load <2 x float>, ptr %207, align 4, !tbaa !57
  %211 = fadd <2 x float> %209, %210
  %212 = shufflevector <4 x float> %206, <4 x float> poison, <2 x i32> zeroinitializer
  %213 = fmul <2 x float> %212, %211
  store <2 x float> %213, ptr %7, align 8, !tbaa !57
  %214 = fneg float %122
  store float %214, ptr %118, align 8, !tbaa !57
  %215 = fcmp ogt float %116, 1.000000e+00
  br i1 %215, label %216, label %219

216:                                              ; preds = %204
  %217 = extractelement <2 x float> %213, i64 1
  %218 = fdiv float %217, %116
  store float %218, ptr %117, align 4, !tbaa !57
  br label %246

219:                                              ; preds = %204
  %220 = extractelement <2 x float> %213, i64 0
  %221 = fmul float %116, %220
  store float %221, ptr %7, align 8, !tbaa !57
  br label %246

222:                                              ; preds = %201
  %223 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 8
  %224 = load float, ptr %223, align 4, !tbaa !484
  %225 = fmul float %122, %224
  %226 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 1
  %227 = load float, ptr %226, align 4, !tbaa !485
  %228 = fmul float %227, 2.000000e+00
  %229 = fdiv float %225, %228
  %230 = getelementptr inbounds %struct.CameraParams, ptr %11, i64 0, i32 4
  %231 = load <2 x float>, ptr %14, align 8, !tbaa !57
  %232 = load <2 x float>, ptr %230, align 4, !tbaa !57
  %233 = fadd <2 x float> %231, %232
  %234 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %233, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  %235 = insertelement <2 x float> poison, float %229, i64 0
  %236 = shufflevector <2 x float> %235, <2 x float> poison, <2 x i32> zeroinitializer
  %237 = fmul <2 x float> %236, %234
  store <2 x float> %237, ptr %7, align 8, !tbaa !57
  %238 = fneg float %122
  store float %238, ptr %118, align 8, !tbaa !57
  %239 = fcmp ogt float %116, 1.000000e+00
  br i1 %239, label %240, label %243

240:                                              ; preds = %222
  %241 = extractelement <2 x float> %237, i64 1
  %242 = fdiv float %241, %116
  store float %242, ptr %117, align 4, !tbaa !57
  br label %246

243:                                              ; preds = %222
  %244 = extractelement <2 x float> %237, i64 0
  %245 = fmul float %116, %244
  store float %245, ptr %7, align 8, !tbaa !57
  br label %246

246:                                              ; preds = %240, %243, %216, %219
  %247 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %247, ptr noundef nonnull %7) #21
  call void @copy_m4_m4(ptr noundef nonnull %15, ptr noundef nonnull %247) #21
  %248 = getelementptr inbounds [4 x [4 x float]], ptr %15, i64 0, i64 3
  call fastcc void @zero_v3(ptr noundef nonnull %248) #23
  call void @mul_m4_m4m4(ptr noundef nonnull %119, ptr noundef nonnull %119, ptr noundef nonnull %15) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %120, ptr noundef nonnull %8) #23
  %249 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %24, i64 0, i32 6
  %250 = load ptr, ptr %249, align 8, !tbaa !486
  %251 = icmp eq ptr %250, null
  br i1 %251, label %271, label %252

252:                                              ; preds = %246
  %253 = call ptr @object_get_derived_final(ptr noundef nonnull %250, i8 noundef zeroext 0) #21
  %254 = icmp eq ptr %253, null
  br i1 %254, label %271, label %255

255:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %16) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %16, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #22
  %256 = getelementptr inbounds %struct.Object, ptr %250, i64 0, i32 47
  %257 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %21, ptr noundef nonnull %256) #21
  %258 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 47, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %18, ptr noundef nonnull %21, ptr noundef nonnull %258) #21
  call void @mul_v3_m4v3(ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull %120) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %19, ptr noundef nonnull %18) #23
  %259 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %16, ptr noundef nonnull %253, float noundef 0.000000e+00, i32 noundef 4, i32 noundef 6) #21
  %260 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %17, i64 0, i32 3
  store float 0x47EFFFFFE0000000, ptr %260, align 4, !tbaa !391
  store i32 -1, ptr %17, align 4, !tbaa !388
  %261 = load ptr, ptr %16, align 8, !tbaa !384
  %262 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %16, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !392
  %264 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %261, ptr noundef nonnull %18, ptr noundef nonnull %20, float noundef 0.000000e+00, ptr noundef nonnull %17, ptr noundef %263, ptr noundef nonnull %16) #21
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %268, label %266

266:                                              ; preds = %255
  %267 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %17, i64 0, i32 1
  call void @mul_v3_m4v3(ptr noundef nonnull %120, ptr noundef nonnull %256, ptr noundef nonnull %267) #21
  br label %268

268:                                              ; preds = %266, %255
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %16) #21
  %269 = getelementptr inbounds %struct.DerivedMesh, ptr %253, i64 0, i32 95
  %270 = load ptr, ptr %269, align 8, !tbaa !133
  call void %270(ptr noundef nonnull %253) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %16) #22
  br label %271

271:                                              ; preds = %252, %268, %246
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %11) #22
  br label %272

272:                                              ; preds = %271, %103
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  br label %273

273:                                              ; preds = %272, %102, %74, %62, %59, %41, %44
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_named(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_camera(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @translate_m4(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_get_camera_object_matrix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_where_is_calc_mat4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #12 !PGOFuncName !487 {
  %4 = load float, ptr %1, align 4, !tbaa !57
  %5 = load float, ptr %2, align 4, !tbaa !57
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !57
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @BKE_tracking_undistort_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_camera_params_from_object(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @camerasolver_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !488 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 1, ptr noundef %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @camerasolver_new_data(ptr nocapture noundef %0) #12 !PGOFuncName !489 {
  store ptr null, ptr %0, align 8, !tbaa !490
  %2 = getelementptr inbounds %struct.bCameraSolverConstraint, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !492
  %4 = or i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !492
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @camerasolver_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !493 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = load ptr, ptr %1, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.bCameraSolverConstraint, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !492
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 41
  %14 = select i1 %12, ptr %8, ptr %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #22
  %18 = getelementptr inbounds %struct.MovieClip, ptr %15, i64 0, i32 11
  %19 = tail call ptr @BKE_tracking_object_get_camera(ptr noundef nonnull %18) #21
  %20 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !461
  %22 = sitofp i32 %21 to float
  %23 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef nonnull %15, float noundef %22) #21
  %24 = fptosi float %23 to i32
  call void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef nonnull %18, ptr noundef %19, i32 noundef %24, ptr noundef nonnull %4) #21
  %25 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %25) #21
  call void @mul_m4_m4m4(ptr noundef nonnull %25, ptr noundef nonnull %5, ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  br label %26

26:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @objectsolver_id_looper(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !494 {
  %4 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void %1(ptr noundef %0, ptr noundef %5, i8 noundef zeroext 0, ptr noundef %2) #21
  %6 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %5, i64 0, i32 5
  tail call void %1(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @objectsolver_new_data(ptr noundef %0) #0 !PGOFuncName !495 {
  store ptr null, ptr %0, align 8, !tbaa !496
  %2 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !498
  %4 = or i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !498
  %5 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %0, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %5) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @objectsolver_evaluate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !499 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = load ptr, ptr %1, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.bConstraint, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = load ptr, ptr %12, align 8, !tbaa !496
  %14 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %12, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !500
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !441
  br label %20

20:                                               ; preds = %3, %17
  %21 = phi ptr [ %19, %17 ], [ %15, %3 ]
  %22 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %12, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !498
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 41
  %28 = load ptr, ptr %27, align 8, !tbaa !460
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
  %37 = tail call ptr @BKE_tracking_object_get_named(ptr noundef nonnull %35, ptr noundef nonnull %36) #21
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #22
  %40 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 22, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !461
  %42 = sitofp i32 %41 to float
  %43 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef nonnull %30, float noundef %42) #21
  %44 = fptosi float %43 to i32
  call void @BKE_object_where_is_calc_mat4(ptr noundef %10, ptr noundef nonnull %21, ptr noundef nonnull %7) #21
  call void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef nonnull %35, ptr noundef nonnull %37, i32 noundef %44, ptr noundef nonnull %4) #21
  %45 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %7) #21
  %46 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %12, i64 0, i32 4
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %46) #21
  %47 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %47) #21
  %48 = getelementptr inbounds %struct.bConstraintOb, ptr %1, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %48) #21
  %49 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %4) #21
  call void @_va_mul_m4_series_6(ptr noundef nonnull %48, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  br label %50

50:                                               ; preds = %39, %34, %29
  ret void
}

; Function Attrs: optsize
declare void @_va_mul_m4_series_6(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @add_new_constraint_internal(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 !PGOFuncName !501 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 120, ptr noundef nonnull @.str.9) #21
  %5 = sext i16 %1 to i32
  %6 = tail call ptr @BKE_constraint_typeinfo_from_type(i32 noundef %5) #23
  %7 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 3
  store i16 %1, ptr %7, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !70
  %10 = or i16 %9, 1
  store i16 %10, ptr %8, align 2, !tbaa !70
  %11 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 9
  store float 1.000000e+00, ptr %11, align 8, !tbaa !99
  %12 = icmp eq ptr %6, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %6, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !502
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %6, i64 0, i32 3
  %19 = tail call ptr %14(i64 noundef %17, ptr noundef nonnull %18) #21
  %20 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !61
  %21 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %6, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !503
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  tail call void %22(ptr noundef %19) #21
  br label %25

25:                                               ; preds = %24, %13
  %26 = icmp eq ptr %0, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = load i8, ptr %0, align 1, !tbaa !113
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27, %25
  %31 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %6, i64 0, i32 2
  br label %38

32:                                               ; preds = %2
  %33 = icmp eq ptr %0, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %32
  %35 = load i8, ptr %0, align 1, !tbaa !113
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, ptr @.str, ptr %0
  br label %38

38:                                               ; preds = %32, %34, %30, %27
  %39 = phi ptr [ %31, %30 ], [ %0, %27 ], [ @.str, %32 ], [ %37, %34 ]
  %40 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 7
  %41 = tail call ptr @BLI_strncpy(ptr noundef nonnull %40, ptr noundef %39, i64 noundef 64) #21
  ret ptr %4
}

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }
attributes #23 = { optsize }

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
!56 = !{!"constraint.c:zero_v3"}
!57 = !{!48, !48, i64 0}
!58 = !{!"constraint.c:constraints_init_typeinfo"}
!59 = !{!60, !40, i64 24}
!60 = !{!"bConstraint", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !40, i64 94, !48, i64 96, !48, i64 100, !35, i64 104, !48, i64 112, !48, i64 116}
!61 = !{!60, !35, i64 16}
!62 = !{!63, !35, i64 72}
!63 = !{!"bConstraintTypeInfo", !40, i64 0, !40, i64 2, !36, i64 4, !36, i64 36, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128}
!64 = !{!63, !35, i64 80}
!65 = !{!"constraint.c:con_unlink_refs_cb"}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"constraint.c:add_new_constraint"}
!69 = !{i8 0, i8 2}
!70 = !{!60, !40, i64 26}
!71 = !{!60, !36, i64 28}
!72 = distinct !{!72, !67}
!73 = !{!"constraint.c:con_relink_id_cb"}
!74 = !{!52, !35, i64 16}
!75 = !{!63, !35, i64 88}
!76 = distinct !{!76, !67}
!77 = !{!"constraint.c:BLI_listbase_clear"}
!78 = !{!"constraint.c:con_fix_copied_refs_cb"}
!79 = !{!"constraint.c:con_extern_cb"}
!80 = !{!52, !35, i64 24}
!81 = distinct !{!81, !67}
!82 = distinct !{!82, !67}
!83 = !{!47, !35, i64 0}
!84 = !{!60, !35, i64 0}
!85 = distinct !{!85, !67}
!86 = !{!51, !35, i64 232}
!87 = !{!51, !35, i64 288}
!88 = !{!51, !35, i64 296}
!89 = !{!90, !53, i64 320}
!90 = !{!"Bone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !47, i64 32, !36, i64 48, !48, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !53, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !48, i64 268, !48, i64 272, !48, i64 276, !48, i64 280, !48, i64 284, !48, i64 288, !48, i64 292, !48, i64 296, !48, i64 300, !48, i64 304, !36, i64 308, !53, i64 320, !40, i64 324, !36, i64 326}
!91 = !{!92, !53, i64 220}
!92 = !{!"bArmature", !52, i64 0, !35, i64 120, !47, i64 128, !47, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !53, i64 192, !53, i64 196, !53, i64 200, !53, i64 204, !40, i64 208, !40, i64 210, !53, i64 212, !53, i64 216, !53, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !53, i64 232, !53, i64 236, !53, i64 240, !53, i64 244, !53, i64 248, !53, i64 252}
!93 = !{!63, !35, i64 104}
!94 = !{!63, !35, i64 120}
!95 = !{!63, !35, i64 112}
!96 = distinct !{!96, !67}
!97 = distinct !{!97, !67}
!98 = !{!63, !35, i64 128}
!99 = !{!60, !48, i64 96}
!100 = distinct !{!100, !67}
!101 = !{!"constraint.c:childof_id_looper"}
!102 = !{!"constraint.c:childof_new_data"}
!103 = !{!104, !53, i64 8}
!104 = !{!"bChildOfConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16, !36, i64 80}
!105 = !{!"constraint.c:childof_get_tars"}
!106 = !{!104, !35, i64 0}
!107 = !{!108, !35, i64 16}
!108 = !{!"bConstraintTarget", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158}
!109 = !{!60, !36, i64 29}
!110 = !{!108, !40, i64 152}
!111 = !{!108, !40, i64 154}
!112 = !{!51, !40, i64 136}
!113 = !{!36, !36, i64 0}
!114 = !{!108, !40, i64 156}
!115 = !{!51, !40, i64 1040}
!116 = !{!108, !40, i64 158}
!117 = !{!"constraint.c:childof_flush_tars"}
!118 = !{!"constraint.c:default_get_tarmat"}
!119 = !{!60, !48, i64 100}
!120 = !{!"constraint.c:childof_evaluate"}
!121 = !{!"constraint.c:constraint_target_to_mat4"}
!122 = !{!"constraint.c:contarget_get_mesh_mat"}
!123 = !{!51, !35, i64 1296}
!124 = !{!125, !35, i64 1320}
!125 = !{!"DerivedMesh", !126, i64 0, !126, i64 200, !126, i64 400, !126, i64 600, !126, i64 800, !53, i64 1000, !53, i64 1004, !53, i64 1008, !53, i64 1012, !53, i64 1016, !53, i64 1020, !53, i64 1024, !35, i64 1032, !35, i64 1040, !53, i64 1048, !48, i64 1052, !53, i64 1056, !53, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!126 = !{!"CustomData", !35, i64 0, !36, i64 8, !53, i64 172, !53, i64 176, !53, i64 180, !35, i64 184, !35, i64 192}
!127 = !{!125, !35, i64 1104}
!128 = !{!129, !48, i64 4}
!129 = !{!"MDeformWeight", !53, i64 0, !48, i64 4}
!130 = !{!125, !35, i64 1528}
!131 = !{!125, !35, i64 1544}
!132 = distinct !{!132, !67}
!133 = !{!125, !35, i64 1680}
!134 = !{!"constraint.c:contarget_get_lattice_mat"}
!135 = !{!51, !35, i64 1280}
!136 = !{!137, !35, i64 32}
!137 = !{!"DispList", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !53, i64 20, !53, i64 24, !40, i64 28, !40, i64 30, !35, i64 32, !35, i64 40, !35, i64 48, !53, i64 56, !53, i64 60, !35, i64 64}
!138 = !{!139, !35, i64 176}
!139 = !{!"Lattice", !52, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !53, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !35, i64 272}
!140 = !{!139, !35, i64 200}
!141 = !{!139, !40, i64 128}
!142 = !{!139, !40, i64 130}
!143 = !{!139, !40, i64 132}
!144 = !{!145, !53, i64 8}
!145 = !{!"MDeformVert", !35, i64 0, !53, i64 8, !53, i64 12}
!146 = distinct !{!146, !67}
!147 = distinct !{!147, !67}
!148 = !{!"constraint.c:copy_v3_v3"}
!149 = !{!"constraint.c:madd_v3_v3fl"}
!150 = !{!"constraint.c:mul_v3_fl"}
!151 = !{!"constraint.c:normalize_v3"}
!152 = !{!"constraint.c:cross_v3_v3v3"}
!153 = !{!"constraint.c:len_v3"}
!154 = !{!"constraint.c:normalize_v3_v3"}
!155 = !{!"constraint.c:dot_v3v3"}
!156 = !{!"constraint.c:mul_v3_v3fl"}
!157 = !{!"constraint.c:add_v3_v3"}
!158 = !{!"constraint.c:trackto_id_looper"}
!159 = !{!"constraint.c:trackto_new_data"}
!160 = !{!161, !53, i64 8}
!161 = !{!"bTrackToConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !36, i64 24}
!162 = !{!161, !53, i64 12}
!163 = !{!"constraint.c:trackto_get_tars"}
!164 = !{!161, !35, i64 0}
!165 = !{!"constraint.c:trackto_flush_tars"}
!166 = !{!"constraint.c:trackto_evaluate"}
!167 = !{!161, !53, i64 16}
!168 = !{!"constraint.c:sub_v3_v3v3"}
!169 = !{!"constraint.c:vectomat"}
!170 = !{i32 -1, i32 2}
!171 = !{!"constraint.c:negate_v3"}
!172 = !{!"constraint.c:basis_cross"}
!173 = !{!"constraint.c:kinematic_id_looper"}
!174 = !{!"constraint.c:kinematic_new_data"}
!175 = !{!176, !40, i64 8}
!176 = !{!"bKinematicConstraint", !35, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !36, i64 16, !35, i64 80, !36, i64 88, !48, i64 152, !48, i64 156, !48, i64 160, !36, i64 164, !40, i64 176, !40, i64 178, !48, i64 180}
!177 = !{!176, !48, i64 180}
!178 = !{!176, !40, i64 10}
!179 = !{!"constraint.c:kinematic_get_tars"}
!180 = !{!176, !35, i64 0}
!181 = !{!176, !35, i64 80}
!182 = !{!"constraint.c:kinematic_flush_tars"}
!183 = !{!108, !35, i64 0}
!184 = !{!"constraint.c:kinematic_get_tarmat"}
!185 = !{!"constraint.c:followpath_id_looper"}
!186 = !{!"constraint.c:followpath_new_data"}
!187 = !{!188, !40, i64 20}
!188 = !{!"bFollowPathConstraint", !35, i64 0, !48, i64 8, !48, i64 12, !53, i64 16, !40, i64 20, !40, i64 22}
!189 = !{!188, !40, i64 22}
!190 = !{!188, !48, i64 8}
!191 = !{!188, !53, i64 16}
!192 = !{!"constraint.c:followpath_get_tars"}
!193 = !{!188, !35, i64 0}
!194 = !{!"constraint.c:followpath_flush_tars"}
!195 = !{!"constraint.c:followpath_get_tarmat"}
!196 = !{!197, !35, i64 48}
!197 = !{!"CurveCache", !47, i64 0, !47, i64 16, !47, i64 32, !35, i64 48}
!198 = !{!199, !35, i64 0}
!199 = !{!"Path", !35, i64 0, !53, i64 8, !48, i64 12}
!200 = !{!201, !35, i64 136}
!201 = !{!"Curve", !52, i64 0, !35, i64 120, !35, i64 128, !47, i64 136, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !48, i64 252, !48, i64 256, !53, i64 260, !40, i64 264, !40, i64 266, !53, i64 268, !48, i64 272, !48, i64 276, !48, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !53, i64 292, !53, i64 296, !36, i64 300, !40, i64 304, !36, i64 306, !36, i64 307, !48, i64 308, !48, i64 312, !48, i64 316, !48, i64 320, !48, i64 324, !48, i64 328, !48, i64 332, !48, i64 336, !48, i64 340, !48, i64 344, !53, i64 348, !53, i64 352, !53, i64 356, !53, i64 360, !53, i64 364, !35, i64 368, !35, i64 376, !36, i64 384, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !35, i64 480, !53, i64 488, !53, i64 492, !35, i64 496, !202, i64 504, !48, i64 512, !48, i64 516, !48, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!202 = !{!"CharInfo", !40, i64 0, !40, i64 2, !36, i64 4, !36, i64 5, !40, i64 6}
!203 = !{!201, !48, i64 512}
!204 = !{!201, !53, i64 260}
!205 = !{!206, !40, i64 44}
!206 = !{!"Nurb", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !53, i64 24, !53, i64 28, !36, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !40, i64 80, !40, i64 82, !53, i64 84}
!207 = !{!188, !48, i64 12}
!208 = !{!"constraint.c:followpath_evaluate"}
!209 = !{!"constraint.c:rotlimit_evaluate"}
!210 = !{!211, !40, i64 24}
!211 = !{!"bRotLimitConstraint", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !40, i64 24, !40, i64 26}
!212 = !{!211, !48, i64 0}
!213 = !{!211, !48, i64 4}
!214 = !{!211, !48, i64 8}
!215 = !{!211, !48, i64 12}
!216 = !{!211, !48, i64 16}
!217 = !{!211, !48, i64 20}
!218 = !{!"constraint.c:loclimit_evaluate"}
!219 = !{!220, !40, i64 24}
!220 = !{!"bLocLimitConstraint", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !40, i64 24, !40, i64 26}
!221 = !{!220, !48, i64 0}
!222 = !{!220, !48, i64 4}
!223 = !{!220, !48, i64 8}
!224 = !{!220, !48, i64 12}
!225 = !{!220, !48, i64 16}
!226 = !{!220, !48, i64 20}
!227 = !{!"constraint.c:sizelimit_evaluate"}
!228 = !{!229, !40, i64 24}
!229 = !{!"bSizeLimitConstraint", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !40, i64 24, !40, i64 26}
!230 = !{!229, !48, i64 0}
!231 = !{!229, !48, i64 4}
!232 = !{!229, !48, i64 8}
!233 = !{!229, !48, i64 12}
!234 = !{!229, !48, i64 16}
!235 = !{!229, !48, i64 20}
!236 = !{!"constraint.c:rotlike_id_looper"}
!237 = !{!"constraint.c:rotlike_new_data"}
!238 = !{!239, !53, i64 8}
!239 = !{!"bRotateLikeConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16}
!240 = !{!"constraint.c:rotlike_get_tars"}
!241 = !{!239, !35, i64 0}
!242 = !{!"constraint.c:rotlike_flush_tars"}
!243 = !{!"constraint.c:rotlike_evaluate"}
!244 = !{!"constraint.c:loclike_id_looper"}
!245 = !{!"constraint.c:loclike_new_data"}
!246 = !{!247, !53, i64 8}
!247 = !{!"bLocateLikeConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16}
!248 = !{!"constraint.c:loclike_get_tars"}
!249 = !{!247, !35, i64 0}
!250 = !{!"constraint.c:loclike_flush_tars"}
!251 = !{!"constraint.c:loclike_evaluate"}
!252 = !{!"constraint.c:sizelike_id_looper"}
!253 = !{!"constraint.c:sizelike_new_data"}
!254 = !{!255, !53, i64 8}
!255 = !{!"bSizeLikeConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16}
!256 = !{!"constraint.c:sizelike_get_tars"}
!257 = !{!255, !35, i64 0}
!258 = !{!"constraint.c:sizelike_flush_tars"}
!259 = !{!"constraint.c:sizelike_evaluate"}
!260 = !{!"constraint.c:pycon_free"}
!261 = !{!262, !35, i64 8}
!262 = !{!"bPythonConstraint", !35, i64 0, !35, i64 8, !53, i64 16, !53, i64 20, !47, i64 24, !35, i64 40, !36, i64 48}
!263 = !{!"constraint.c:pycon_id_looper"}
!264 = distinct !{!264, !67}
!265 = !{!"constraint.c:pycon_copy"}
!266 = !{!"constraint.c:pycon_new_data"}
!267 = !{!268, !36, i64 16}
!268 = !{!"IDProperty", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 17, !40, i64 18, !36, i64 20, !53, i64 84, !269, i64 88, !53, i64 120, !53, i64 124}
!269 = !{!"IDPropertyData", !35, i64 0, !47, i64 8, !53, i64 24, !53, i64 28}
!270 = !{!"constraint.c:pycon_get_tars"}
!271 = !{!262, !53, i64 20}
!272 = !{!"constraint.c:pycon_get_tarmat"}
!273 = !{!"constraint.c:pycon_evaluate"}
!274 = !{!"constraint.c:actcon_id_looper"}
!275 = !{!"constraint.c:actcon_new_data"}
!276 = !{!277, !40, i64 8}
!277 = !{!"bActionConstraint", !35, i64 0, !40, i64 8, !40, i64 10, !53, i64 12, !53, i64 16, !48, i64 20, !48, i64 24, !53, i64 28, !35, i64 32, !36, i64 40}
!278 = !{!"constraint.c:actcon_get_tars"}
!279 = !{!277, !35, i64 0}
!280 = !{!"constraint.c:actcon_flush_tars"}
!281 = !{!"constraint.c:actcon_get_tarmat"}
!282 = !{!277, !48, i64 20}
!283 = !{!277, !48, i64 24}
!284 = !{!277, !53, i64 16}
!285 = !{!277, !53, i64 12}
!286 = !{!287, !53, i64 2100}
!287 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !47, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !36, i64 2090, !40, i64 2092, !53, i64 2096, !53, i64 2100, !36, i64 2104, !53, i64 2108, !53, i64 2112, !36, i64 2116}
!288 = !{!277, !53, i64 28}
!289 = !{!277, !35, i64 32}
!290 = !{!"constraint.c:actcon_evaluate"}
!291 = !{!"constraint.c:locktrack_id_looper"}
!292 = !{!"constraint.c:locktrack_new_data"}
!293 = !{!294, !53, i64 8}
!294 = !{!"bLockTrackConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16}
!295 = !{!294, !53, i64 12}
!296 = !{!"constraint.c:locktrack_get_tars"}
!297 = !{!294, !35, i64 0}
!298 = !{!"constraint.c:locktrack_flush_tars"}
!299 = !{!"constraint.c:locktrack_evaluate"}
!300 = !{!"constraint.c:distlimit_id_looper"}
!301 = !{!"constraint.c:distlimit_new_data"}
!302 = !{!303, !48, i64 72}
!303 = !{!"bDistLimitConstraint", !35, i64 0, !36, i64 8, !48, i64 72, !48, i64 76, !40, i64 80, !40, i64 82, !53, i64 84}
!304 = !{!"constraint.c:distlimit_get_tars"}
!305 = !{!303, !35, i64 0}
!306 = !{!"constraint.c:distlimit_flush_tars"}
!307 = !{!"constraint.c:distlimit_evaluate"}
!308 = !{!303, !40, i64 82}
!309 = !{!303, !40, i64 80}
!310 = !{!303, !48, i64 76}
!311 = !{!"constraint.c:len_v3v3"}
!312 = !{!"constraint.c:stretchto_id_looper"}
!313 = !{!"constraint.c:stretchto_new_data"}
!314 = !{!315, !53, i64 12}
!315 = !{!"bStretchToConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !36, i64 40}
!316 = !{!315, !53, i64 16}
!317 = !{!"constraint.c:stretchto_get_tars"}
!318 = !{!315, !35, i64 0}
!319 = !{!"constraint.c:stretchto_flush_tars"}
!320 = !{!"constraint.c:stretchto_evaluate"}
!321 = !{!315, !48, i64 20}
!322 = !{!315, !48, i64 24}
!323 = !{!315, !53, i64 8}
!324 = !{!315, !48, i64 32}
!325 = !{!315, !48, i64 36}
!326 = !{!"constraint.c:max_ff"}
!327 = !{!"constraint.c:min_ff"}
!328 = !{!"constraint.c:interpf"}
!329 = !{!"constraint.c:negate_v3_v3"}
!330 = !{!"constraint.c:minmax_id_looper"}
!331 = !{!"constraint.c:minmax_new_data"}
!332 = !{!333, !53, i64 8}
!333 = !{!"bMinMaxConstraint", !35, i64 0, !53, i64 8, !48, i64 12, !53, i64 16, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !36, i64 28, !36, i64 40}
!334 = !{!333, !48, i64 12}
!335 = !{!333, !53, i64 16}
!336 = !{!"constraint.c:minmax_get_tars"}
!337 = !{!333, !35, i64 0}
!338 = !{!"constraint.c:minmax_flush_tars"}
!339 = !{!"constraint.c:minmax_evaluate"}
!340 = !{!"constraint.c:rbj_id_looper"}
!341 = !{!"constraint.c:rbj_new_data"}
!342 = !{!343, !53, i64 16}
!343 = !{!"bRigidBodyJointConstraint", !35, i64 0, !35, i64 8, !53, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40, !36, i64 44, !36, i64 68, !48, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102}
!344 = !{!"constraint.c:rbj_get_tars"}
!345 = !{!343, !35, i64 0}
!346 = !{!"constraint.c:rbj_flush_tars"}
!347 = !{!"constraint.c:clampto_id_looper"}
!348 = !{!"constraint.c:clampto_get_tars"}
!349 = !{!350, !35, i64 0}
!350 = !{!"bClampToConstraint", !35, i64 0, !53, i64 8, !53, i64 12}
!351 = !{!"constraint.c:clampto_flush_tars"}
!352 = !{!"constraint.c:clampto_get_tarmat"}
!353 = !{!"constraint.c:clampto_evaluate"}
!354 = !{!350, !53, i64 8}
!355 = !{!350, !53, i64 12}
!356 = !{!"constraint.c:transform_id_looper"}
!357 = !{!"constraint.c:transform_new_data"}
!358 = !{!"constraint.c:transform_get_tars"}
!359 = !{!360, !35, i64 0}
!360 = !{!"bTransformConstraint", !35, i64 0, !36, i64 8, !40, i64 72, !40, i64 74, !36, i64 76, !36, i64 79, !36, i64 80, !36, i64 92, !36, i64 104, !36, i64 116, !36, i64 128, !36, i64 140, !36, i64 152, !36, i64 164, !36, i64 176, !36, i64 188, !36, i64 200, !36, i64 212}
!361 = !{!"constraint.c:transform_flush_tars"}
!362 = !{!"constraint.c:transform_evaluate"}
!363 = !{!360, !40, i64 72}
!364 = !{!360, !36, i64 79}
!365 = distinct !{!365, !67}
!366 = distinct !{!366, !67}
!367 = !{!360, !40, i64 74}
!368 = distinct !{!368, !67}
!369 = distinct !{!369, !67}
!370 = distinct !{!370, !67}
!371 = !{!"constraint.c:shrinkwrap_id_looper"}
!372 = !{!"constraint.c:shrinkwrap_new_data"}
!373 = !{!374, !36, i64 14}
!374 = !{!"bShrinkwrapConstraint", !35, i64 0, !48, i64 8, !40, i64 12, !36, i64 14, !36, i64 15, !48, i64 16, !36, i64 20}
!375 = !{!374, !36, i64 15}
!376 = !{!"constraint.c:shrinkwrap_get_tars"}
!377 = !{!374, !35, i64 0}
!378 = !{!"constraint.c:shrinkwrap_flush_tars"}
!379 = !{!"constraint.c:shrinkwrap_get_tarmat"}
!380 = !{!374, !40, i64 12}
!381 = !{!382, !53, i64 0}
!382 = !{!"BVHTreeNearest", !53, i64 0, !36, i64 4, !36, i64 16, !48, i64 28, !53, i64 32}
!383 = !{!382, !48, i64 28}
!384 = !{!385, !35, i64 0}
!385 = !{!"BVHTreeFromMesh", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !36, i64 48, !36, i64 49, !36, i64 50, !48, i64 52, !35, i64 56, !36, i64 64}
!386 = !{!385, !35, i64 8}
!387 = !{!374, !48, i64 8}
!388 = !{!389, !53, i64 0}
!389 = !{!"BVHTreeRayHit", !53, i64 0, !36, i64 4, !36, i64 16, !48, i64 28, !53, i64 32}
!390 = !{!374, !48, i64 16}
!391 = !{!389, !48, i64 28}
!392 = !{!385, !35, i64 16}
!393 = !{!"constraint.c:shrinkwrap_evaluate"}
!394 = !{!"constraint.c:damptrack_id_looper"}
!395 = !{!"constraint.c:damptrack_new_data"}
!396 = !{!397, !53, i64 8}
!397 = !{!"bDampTrackConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16}
!398 = !{!"constraint.c:damptrack_get_tars"}
!399 = !{!397, !35, i64 0}
!400 = !{!"constraint.c:damptrack_flush_tars"}
!401 = !{!"constraint.c:damptrack_evaluate"}
!402 = !{!"constraint.c:splineik_free"}
!403 = !{!404, !35, i64 8}
!404 = !{!"bSplineIKConstraint", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22}
!405 = !{!"constraint.c:splineik_id_looper"}
!406 = !{!"constraint.c:splineik_copy"}
!407 = !{!"constraint.c:splineik_new_data"}
!408 = !{!404, !40, i64 18}
!409 = !{!"constraint.c:splineik_get_tars"}
!410 = !{!404, !35, i64 0}
!411 = !{!"constraint.c:splineik_flush_tars"}
!412 = !{!"constraint.c:splineik_get_tarmat"}
!413 = !{!"constraint.c:translike_id_looper"}
!414 = !{!"constraint.c:translike_get_tars"}
!415 = !{!416, !35, i64 0}
!416 = !{!"bTransLikeConstraint", !35, i64 0, !36, i64 8}
!417 = !{!"constraint.c:translike_flush_tars"}
!418 = !{!"constraint.c:translike_evaluate"}
!419 = !{!"constraint.c:samevolume_new_data"}
!420 = !{!421, !53, i64 0}
!421 = !{!"bSameVolumeConstraint", !53, i64 0, !48, i64 4}
!422 = !{!421, !48, i64 4}
!423 = !{!"constraint.c:samevolume_evaluate"}
!424 = !{!"constraint.c:pivotcon_id_looper"}
!425 = !{!"constraint.c:pivotcon_get_tars"}
!426 = !{!427, !35, i64 0}
!427 = !{!"bPivotConstraint", !35, i64 0, !36, i64 8, !36, i64 72, !40, i64 84, !40, i64 86}
!428 = !{!"constraint.c:pivotcon_flush_tars"}
!429 = !{!"constraint.c:pivotcon_evaluate"}
!430 = !{!427, !40, i64 84}
!431 = !{!427, !40, i64 86}
!432 = !{!"constraint.c:add_v3_v3v3"}
!433 = !{!"constraint.c:sub_v3_v3"}
!434 = !{!"constraint.c:followtrack_id_looper"}
!435 = !{!"constraint.c:followtrack_new_data"}
!436 = !{!437, !35, i64 0}
!437 = !{!"bFollowTrackConstraint", !35, i64 0, !36, i64 8, !53, i64 72, !53, i64 76, !36, i64 80, !35, i64 144, !35, i64 152}
!438 = !{!437, !53, i64 72}
!439 = !{!"constraint.c:followtrack_evaluate"}
!440 = !{!437, !35, i64 144}
!441 = !{!442, !35, i64 128}
!442 = !{!"Scene", !52, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !47, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !53, i64 232, !53, i64 236, !53, i64 240, !40, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !443, i64 280, !452, i64 4264, !47, i64 4296, !47, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !40, i64 4376, !40, i64 4378, !53, i64 4380, !47, i64 4384, !453, i64 4400, !454, i64 4416, !457, i64 4600, !35, i64 4608, !458, i64 4616, !35, i64 4640, !55, i64 4648, !55, i64 4656, !445, i64 4664, !446, i64 4824, !459, i64 4888, !35, i64 4952}
!443 = !{!"RenderData", !444, i64 0, !35, i64 248, !35, i64 256, !447, i64 264, !448, i64 328, !53, i64 400, !53, i64 404, !53, i64 408, !48, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !40, i64 432, !40, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !53, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !53, i64 484, !53, i64 488, !40, i64 492, !40, i64 494, !53, i64 496, !53, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !36, i64 514, !36, i64 515, !53, i64 516, !53, i64 520, !53, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !449, i64 544, !449, i64 560, !450, i64 576, !47, i64 592, !40, i64 608, !40, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !53, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !48, i64 660, !48, i64 664, !40, i64 668, !40, i64 670, !48, i64 672, !48, i64 676, !36, i64 680, !53, i64 1704, !40, i64 1708, !40, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !53, i64 2520, !40, i64 2524, !40, i64 2526, !48, i64 2528, !48, i64 2532, !40, i64 2536, !40, i64 2538, !48, i64 2540, !40, i64 2544, !40, i64 2546, !53, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !48, i64 2560, !48, i64 2564, !35, i64 2568, !53, i64 2576, !48, i64 2580, !36, i64 2584, !451, i64 2616, !53, i64 3976, !53, i64 3980}
!444 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 10, !48, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !445, i64 24, !446, i64 184}
!445 = !{!"ColorManagedViewSettings", !53, i64 0, !53, i64 4, !36, i64 8, !36, i64 72, !48, i64 136, !48, i64 140, !35, i64 144, !35, i64 152}
!446 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!447 = !{!"QuicktimeCodecSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !40, i64 48, !40, i64 50, !53, i64 52, !53, i64 56, !53, i64 60}
!448 = !{!"FFMpegCodecData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !48, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !35, i64 64}
!449 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!450 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!451 = !{!"BakeData", !444, i64 0, !36, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !48, i64 1280, !48, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!452 = !{!"AudioData", !53, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !53, i64 16, !40, i64 20, !40, i64 22, !48, i64 24, !48, i64 28}
!453 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!454 = !{!"GameData", !453, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !36, i64 34, !455, i64 40, !40, i64 64, !40, i64 66, !48, i64 68, !456, i64 72, !48, i64 128, !48, i64 132, !53, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!455 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !48, i64 8, !48, i64 12, !35, i64 16}
!456 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !53, i64 40, !48, i64 44, !48, i64 48, !40, i64 52, !40, i64 54}
!457 = !{!"UnitSettings", !48, i64 0, !36, i64 4, !36, i64 5, !40, i64 6}
!458 = !{!"PhysicsSettings", !36, i64 0, !53, i64 12, !53, i64 16, !53, i64 20}
!459 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!460 = !{!442, !35, i64 4640}
!461 = !{!442, !53, i64 680}
!462 = !{!463, !53, i64 152}
!463 = !{!"MovieTrackingTrack", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !53, i64 120, !53, i64 124, !35, i64 128, !36, i64 136, !48, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !36, i64 164, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !53, i64 184, !48, i64 188, !35, i64 192, !48, i64 200, !48, i64 204}
!464 = !{!465, !53, i64 80}
!465 = !{!"MovieTrackingObject", !35, i64 0, !35, i64 8, !36, i64 16, !53, i64 80, !48, i64 84, !47, i64 88, !47, i64 104, !466, i64 120, !53, i64 144, !53, i64 148}
!466 = !{!"MovieTrackingReconstruction", !53, i64 0, !48, i64 4, !53, i64 8, !53, i64 12, !35, i64 16}
!467 = !{!442, !53, i64 764}
!468 = !{!442, !48, i64 892}
!469 = !{!442, !53, i64 768}
!470 = !{!442, !48, i64 896}
!471 = !{!53, !53, i64 0}
!472 = !{!437, !53, i64 76}
!473 = !{!474, !48, i64 1168}
!474 = !{!"MovieClip", !52, i64 0, !35, i64 120, !36, i64 128, !53, i64 1152, !53, i64 1156, !36, i64 1160, !48, i64 1168, !48, i64 1172, !35, i64 1176, !35, i64 1184, !35, i64 1192, !475, i64 1200, !35, i64 1528, !480, i64 1536, !53, i64 2312, !53, i64 2316, !53, i64 2320, !53, i64 2324, !459, i64 2328}
!475 = !{!"MovieTracking", !476, i64 0, !477, i64 72, !47, i64 128, !47, i64 144, !466, i64 160, !478, i64 184, !35, i64 232, !35, i64 240, !47, i64 248, !53, i64 264, !53, i64 268, !35, i64 272, !479, i64 280}
!476 = !{!"MovieTrackingSettings", !53, i64 0, !40, i64 4, !40, i64 6, !48, i64 8, !40, i64 12, !40, i64 14, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !48, i64 24, !40, i64 28, !40, i64 30, !53, i64 32, !53, i64 36, !53, i64 40, !40, i64 44, !40, i64 46, !48, i64 48, !53, i64 52, !53, i64 56, !48, i64 60, !48, i64 64, !53, i64 68}
!477 = !{!"MovieTrackingCamera", !35, i64 0, !40, i64 8, !40, i64 10, !48, i64 12, !48, i64 16, !48, i64 20, !40, i64 24, !40, i64 26, !36, i64 28, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52}
!478 = !{!"MovieTrackingStabilization", !53, i64 0, !53, i64 4, !53, i64 8, !48, i64 12, !35, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !53, i64 36, !53, i64 40, !48, i64 44}
!479 = !{!"MovieTrackingDopesheet", !53, i64 0, !40, i64 4, !40, i64 6, !47, i64 8, !47, i64 24, !53, i64 40, !53, i64 44}
!480 = !{!"MovieClipProxy", !36, i64 0, !40, i64 768, !40, i64 770, !40, i64 772, !40, i64 774}
!481 = !{!474, !48, i64 1172}
!482 = !{!483, !36, i64 0}
!483 = !{!"CameraParams", !36, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !53, i64 40, !48, i64 44, !48, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !48, i64 64, !48, i64 68, !48, i64 72, !449, i64 76, !36, i64 92}
!484 = !{!483, !48, i64 32}
!485 = !{!483, !48, i64 4}
!486 = !{!437, !35, i64 152}
!487 = !{!"constraint.c:add_v2_v2v2"}
!488 = !{!"constraint.c:camerasolver_id_looper"}
!489 = !{!"constraint.c:camerasolver_new_data"}
!490 = !{!491, !35, i64 0}
!491 = !{!"bCameraSolverConstraint", !35, i64 0, !53, i64 8, !53, i64 12}
!492 = !{!491, !53, i64 8}
!493 = !{!"constraint.c:camerasolver_evaluate"}
!494 = !{!"constraint.c:objectsolver_id_looper"}
!495 = !{!"constraint.c:objectsolver_new_data"}
!496 = !{!497, !35, i64 0}
!497 = !{!"bObjectSolverConstraint", !35, i64 0, !53, i64 8, !53, i64 12, !36, i64 16, !36, i64 80, !35, i64 144}
!498 = !{!497, !53, i64 8}
!499 = !{!"constraint.c:objectsolver_evaluate"}
!500 = !{!497, !35, i64 144}
!501 = !{!"constraint.c:add_new_constraint_internal"}
!502 = !{!63, !40, i64 2}
!503 = !{!63, !35, i64 96}
