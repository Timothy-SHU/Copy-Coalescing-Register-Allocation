; ModuleID = 'blender/source/blender/editors/object/object_constraint.c'
source_filename = "blender/source/blender/editors/object/object_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bKinematicConstraint = type { ptr, i16, i16, i16, i16, [64 x i8], ptr, [64 x i8], float, float, float, [3 x float], i16, i16, float }
%struct.bPivotConstraint = type { ptr, [64 x i8], [3 x float], i16, i16 }
%struct.bActionConstraint = type { ptr, i16, i16, i32, i32, float, float, i32, ptr, [64 x i8] }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.bFollowPathConstraint = type { ptr, float, float, i32, i16, i16 }
%struct.bTrackToConstraint = type { ptr, i32, i32, i32, i32, [64 x i8] }
%struct.bLockTrackConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.bSplineIKConstraint = type { ptr, ptr, i16, i16, i16, i16 }
%struct.bFollowTrackConstraint = type { ptr, [64 x i8], i32, i32, [64 x i8], ptr, ptr }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.bCameraSolverConstraint = type { ptr, i32, i32 }
%struct.bObjectSolverConstraint = type { ptr, i32, i32, [64 x i8], [4 x [4 x float]], ptr }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bStretchToConstraint = type { ptr, i32, i32, i32, float, float, float, float, float, [64 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bDistLimitConstraint = type { ptr, [64 x i8], float, float, i16, i16, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bChildOfConstraint = type { ptr, i32, i32, [4 x [4 x float]], [64 x i8] }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }

@.str = private unnamed_addr constant [22 x i8] c"Reset Original Length\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"CONSTRAINT_OT_stretchto_reset\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Reset original length of bone for Stretch To Constraint\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Reset Distance\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"CONSTRAINT_OT_limitdistance_reset\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Reset limiting distance for Limit Distance Constraint\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Set Inverse\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"CONSTRAINT_OT_childof_set_inverse\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Set inverse correction for ChildOf constraint\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Clear Inverse\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"CONSTRAINT_OT_childof_clear_inverse\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Clear inverse correction for ChildOf constraint\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Auto Animate Path\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"CONSTRAINT_OT_followpath_path_animate\00", align 1
@.str.14 = private unnamed_addr constant [79 x i8] c"Add default animation for path used by constraint if it isn't animated already\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Start Frame\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"First frame of path animation\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"Number of frames that path animation should take\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"CONSTRAINT_OT_objectsolver_set_inverse\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"Set inverse correction for ObjectSolver constraint\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"CONSTRAINT_OT_objectsolver_clear_inverse\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"Clear inverse correction for ObjectSolver constraint\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Delete Constraint\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"CONSTRAINT_OT_delete\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"Remove constraint from constraint stack\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Move Constraint Down\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"CONSTRAINT_OT_move_down\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"Move constraint down in constraint stack\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Move Constraint Up\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"CONSTRAINT_OT_move_up\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"Move constraint up in constraint stack\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"Clear Pose Constraints\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"POSE_OT_constraints_clear\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"Clear all the constraints for the selected bones\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Clear Object Constraints\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_constraints_clear\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"Clear all the constraints for the active Object only\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"Copy Constraints to Selected Bones\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"POSE_OT_constraints_copy\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"Copy constraints to other selected bones\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"Copy Constraints to Selected Objects\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_constraints_copy\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"Copy constraints to other selected objects\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Add Constraint\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"Add a constraint to the active object\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_constraint_add\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@constraint_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.50 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"Add Constraint (with Targets)\00", align 1
@.str.53 = private unnamed_addr constant [104 x i8] c"Add a constraint to the active object, with target (where applicable) set to the selected Objects/Bones\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"OBJECT_OT_constraint_add_with_targets\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"Add a constraint to the active bone\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"POSE_OT_constraint_add\00", align 1
@.str.57 = private unnamed_addr constant [102 x i8] c"Add a constraint to the active bone, with target (where applicable) set to the selected Objects/Bones\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"POSE_OT_constraint_add_with_targets\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"Add IK to Bone\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"Add IK Constraint to the active Bone\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"POSE_OT_ik_add\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"with_targets\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"With Targets\00", align 1
@.str.64 = private unnamed_addr constant [72 x i8] c"Assign IK Constraint with targets derived from the select bones/objects\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"Remove IK\00", align 1
@.str.66 = private unnamed_addr constant [46 x i8] c"Remove all IK Constraints from selected bones\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"POSE_OT_ik_clear\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.68 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@RNA_Constraint = external global %struct.StructRNA, align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"owner\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"Context missing 'constraint'\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"Context missing active object\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"Cannot edit library data\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"Constraint\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"Name of the constraint to edit\00", align 1
@constraint_owner_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.77, i32 0, ptr @.str.78, ptr @.str.79 }, %struct.EnumPropertyItem { i32 1, ptr @.str.80, i32 0, ptr @.str.81, ptr @.str.82 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.75 = private unnamed_addr constant [6 x i8] c"Owner\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"The owner of this constraint\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.79 = private unnamed_addr constant [39 x i8] c"Edit a constraint on the active object\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"BONE\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@.str.82 = private unnamed_addr constant [37 x i8] c"Edit a constraint on the active bone\00", align 1
@.str.83 = private unnamed_addr constant [45 x i8] c"DEBUG: Child-Of Set Inverse - object = '%s'\0A\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"<None>\00", align 1
@.str.85 = private unnamed_addr constant [56 x i8] c"Could not find constraint data for Child-Of Set Inverse\00", align 1
@.str.86 = private unnamed_addr constant [30 x i8] c"Child Of constraint not found\00", align 1
@.str.87 = private unnamed_addr constant [33 x i8] c"Follow Path constraint not found\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"eval_time\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"Path is already animated\00", align 1
@RNA_FollowPathConstraint = external global %struct.StructRNA, align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"offset_factor\00", align 1
@.str.91 = private unnamed_addr constant [44 x i8] c"No active bone with constraints for copying\00", align 1
@.str.92 = private unnamed_addr constant [38 x i8] c"No active object to add constraint to\00", align 1
@.str.93 = private unnamed_addr constant [43 x i8] c"No active pose bone to add a constraint to\00", align 1
@.str.94 = private unnamed_addr constant [57 x i8] c"Rigid Body Joint constraint can only be added to objects\00", align 1
@.str.95 = private unnamed_addr constant [41 x i8] c"IK constraint can only be added to bones\00", align 1
@.str.96 = private unnamed_addr constant [48 x i8] c"Spline IK constraint can only be added to bones\00", align 1
@.str.97 = private unnamed_addr constant [49 x i8] c"Must have an active bone to add IK constraint to\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"Bone already has an IK constraint\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"Add IK\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"To Active Bone\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"To Active Object\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"To New Empty Object\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"Without Targets\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @get_active_constraints(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %0) #7
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 3
  %12 = select i1 %10, ptr null, ptr %11
  br label %15

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  br label %15

15:                                               ; preds = %8, %1, %13
  %16 = phi ptr [ %14, %13 ], [ null, %1 ], [ %12, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @get_constraint_lb(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %6

6:                                                ; preds = %5, %3
  %7 = icmp eq ptr %0, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %7, %8
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef %1) #7
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14, %22
  %19 = phi ptr [ %20, %22 ], [ %16, %14 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 3
  %24 = tail call i32 @BLI_findindex(ptr noundef nonnull %23, ptr noundef %1) #7
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %18, label %26, !llvm.loop !48

26:                                               ; preds = %22
  br i1 %4, label %28, label %27

27:                                               ; preds = %26
  store ptr %20, ptr %2, align 8, !tbaa !46
  br label %28

28:                                               ; preds = %18, %26, %27
  %29 = phi ptr [ %23, %27 ], [ %23, %26 ], [ undef, %18 ]
  br i1 %21, label %30, label %31

30:                                               ; preds = %28, %14
  br label %31

31:                                               ; preds = %28, %10, %6, %30
  %32 = phi ptr [ %29, %28 ], [ null, %30 ], [ null, %6 ], [ %11, %10 ]
  ret ptr %32
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @get_active_constraint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %0) #7
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 3
  %12 = select i1 %10, ptr null, ptr %11
  br label %15

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  br label %15

15:                                               ; preds = %1, %8, %13
  %16 = phi ptr [ %14, %13 ], [ null, %1 ], [ %12, %8 ]
  %17 = tail call ptr @BKE_constraints_active_get(ptr noundef %16) #7
  ret ptr %17
}

declare ptr @BKE_constraints_active_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @object_test_constraints(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @test_constraints(ptr noundef %0, ptr noundef null)
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !52
  %9 = icmp eq i16 %8, 25
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14, %23
  %18 = phi ptr [ %24, %23 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call fastcc void @test_constraints(ptr noundef %0, ptr noundef nonnull %18)
  br label %23

23:                                               ; preds = %17, %22
  %24 = load ptr, ptr %18, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %17, !llvm.loop !55

26:                                               ; preds = %23, %14, %10, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @test_constraints(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %300, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !52
  %10 = icmp eq i16 %9, 25
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %5, %7
  %13 = phi i1 [ %10, %7 ], [ false, %5 ]
  %14 = phi i1 [ %11, %7 ], [ true, %5 ]
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 3
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  %17 = select i1 %14, ptr %16, ptr %15
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %300, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 4
  br label %22

22:                                               ; preds = %20, %297
  %23 = phi ptr [ %18, %20 ], [ %298, %297 ]
  %24 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %23) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %25 = getelementptr inbounds %struct.bConstraint, ptr %23, i64 0, i32 4
  %26 = load i16, ptr %25, align 2, !tbaa !56
  %27 = and i16 %26, -5
  store i16 %27, ptr %25, align 2, !tbaa !56
  %28 = getelementptr inbounds %struct.bConstraint, ptr %23, i64 0, i32 3
  %29 = load i16, ptr %28, align 8, !tbaa !58
  switch i16 %29, label %237 [
    i16 3, label %30
    i16 25, label %68
    i16 12, label %90
    i16 4, label %104
    i16 2, label %122
    i16 13, label %138
    i16 22, label %154
    i16 26, label %176
    i16 27, label %213
    i16 28, label %225
  ]

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.bConstraint, ptr %23, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = call zeroext i8 @BKE_object_exists_check(ptr noundef %33) #7
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store ptr null, ptr %32, align 8, !tbaa !60
  br label %45

37:                                               ; preds = %30
  %38 = load ptr, ptr %32, align 8, !tbaa !60
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = call ptr @BKE_armature_from_object(ptr noundef nonnull %0) #7
  %42 = getelementptr inbounds %struct.bKinematicConstraint, ptr %32, i64 0, i32 5
  %43 = call ptr @BKE_armature_find_bone_name(ptr noundef %41, ptr noundef nonnull %42) #7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %36
  %46 = load i16, ptr %25, align 2, !tbaa !56
  %47 = or i16 %46, 4
  store i16 %47, ptr %25, align 2, !tbaa !56
  br label %48

48:                                               ; preds = %45, %37, %40
  %49 = getelementptr inbounds %struct.bKinematicConstraint, ptr %32, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !62
  %51 = icmp eq ptr %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %48
  %53 = call zeroext i8 @BKE_object_exists_check(ptr noundef nonnull %50) #7
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store ptr null, ptr %49, align 8, !tbaa !62
  br label %64

56:                                               ; preds = %52
  %57 = load ptr, ptr %49, align 8, !tbaa !62
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = call ptr @BKE_armature_from_object(ptr noundef nonnull %0) #7
  %61 = getelementptr inbounds %struct.bKinematicConstraint, ptr %32, i64 0, i32 7
  %62 = call ptr @BKE_armature_find_bone_name(ptr noundef %60, ptr noundef nonnull %61) #7
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %55
  %65 = load i16, ptr %25, align 2, !tbaa !56
  %66 = or i16 %65, 4
  store i16 %66, ptr %25, align 2, !tbaa !56
  br label %67

67:                                               ; preds = %64, %59, %56, %48
  call void @BIK_test_constraint(ptr noundef nonnull %0, ptr noundef nonnull %23) #7
  br label %297

68:                                               ; preds = %22
  %69 = getelementptr inbounds %struct.bConstraint, ptr %23, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !59
  %71 = load ptr, ptr %70, align 8, !tbaa !63
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = call zeroext i8 @BKE_object_exists_check(ptr noundef nonnull %71) #7
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  store ptr null, ptr %70, align 8, !tbaa !63
  %77 = load i16, ptr %25, align 2, !tbaa !56
  %78 = or i16 %77, 4
  store i16 %78, ptr %25, align 2, !tbaa !56
  br label %297

79:                                               ; preds = %73, %68
  %80 = load ptr, ptr %70, align 8, !tbaa !63
  %81 = icmp eq ptr %80, %0
  br i1 %81, label %82, label %297

82:                                               ; preds = %79
  %83 = call ptr @BKE_armature_from_object(ptr noundef nonnull %0) #7
  %84 = getelementptr inbounds %struct.bPivotConstraint, ptr %70, i64 0, i32 1
  %85 = call ptr @BKE_armature_find_bone_name(ptr noundef %83, ptr noundef nonnull %84) #7
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %297

87:                                               ; preds = %82
  %88 = load i16, ptr %25, align 2, !tbaa !56
  %89 = or i16 %88, 4
  store i16 %89, ptr %25, align 2, !tbaa !56
  br label %297

90:                                               ; preds = %22
  %91 = getelementptr inbounds %struct.bConstraint, ptr %23, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !59
  %93 = getelementptr inbounds %struct.bActionConstraint, ptr %92, i64 0, i32 8
  %94 = load ptr, ptr %93, align 8, !tbaa !65
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = or i16 %26, 4
  store i16 %97, ptr %25, align 2, !tbaa !56
  br label %237

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.bAction, ptr %94, i64 0, i32 7
  %100 = load i32, ptr %99, align 8, !tbaa !67
  %101 = icmp eq i32 %100, 16975
  br i1 %101, label %237, label %102

102:                                              ; preds = %98
  store ptr null, ptr %93, align 8, !tbaa !65
  %103 = or i16 %26, 4
  store i16 %103, ptr %25, align 2, !tbaa !56
  br label %237

104:                                              ; preds = %22
  %105 = getelementptr inbounds %struct.bConstraint, ptr %23, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !59
  %107 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %106, i64 0, i32 5
  %108 = load i16, ptr %107, align 2, !tbaa !69
  %109 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %106, i64 0, i32 4
  %110 = load i16, ptr %109, align 4, !tbaa !71
  %111 = icmp eq i16 %108, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = or i16 %26, 4
  store i16 %113, ptr %25, align 2, !tbaa !56
  br label %114

114:                                              ; preds = %112, %104
  %115 = sext i16 %108 to i32
  %116 = add nsw i32 %115, 3
  %117 = sext i16 %110 to i32
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %237

119:                                              ; preds = %114
  %120 = load i16, ptr %25, align 2, !tbaa !56
  %121 = or i16 %120, 4
  store i16 %121, ptr %25, align 2, !tbaa !56
  br label %237

122:                                              ; preds = %22
  %123 = getelementptr inbounds %struct.bConstraint, ptr %23, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !59
  %125 = getelementptr inbounds %struct.bTrackToConstraint, ptr %124, i64 0, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !72
  %127 = getelementptr inbounds %struct.bTrackToConstraint, ptr %124, i64 0, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !74
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = or i16 %26, 4
  store i16 %131, ptr %25, align 2, !tbaa !56
  br label %132

132:                                              ; preds = %130, %122
  %133 = add nsw i32 %126, 3
  %134 = icmp eq i32 %133, %128
  br i1 %134, label %135, label %237

135:                                              ; preds = %132
  %136 = load i16, ptr %25, align 2, !tbaa !56
  %137 = or i16 %136, 4
  store i16 %137, ptr %25, align 2, !tbaa !56
  br label %237

138:                                              ; preds = %22
  %139 = getelementptr inbounds %struct.bConstraint, ptr %23, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !59
  %141 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %140, i64 0, i32 2
  %142 = load i32, ptr %141, align 4, !tbaa !75
  %143 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %140, i64 0, i32 1
  %144 = load i32, ptr %143, align 8, !tbaa !77
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = or i16 %26, 4
  store i16 %147, ptr %25, align 2, !tbaa !56
  br label %148

148:                                              ; preds = %146, %138
  %149 = add nsw i32 %142, 3
  %150 = icmp eq i32 %149, %144
  br i1 %150, label %151, label %237

151:                                              ; preds = %148
  %152 = load i16, ptr %25, align 2, !tbaa !56
  %153 = or i16 %152, 4
  store i16 %153, ptr %25, align 2, !tbaa !56
  br label %237

154:                                              ; preds = %22
  %155 = getelementptr inbounds %struct.bConstraint, ptr %23, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !59
  %157 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !78
  %159 = icmp eq ptr %158, null
  br i1 %159, label %172, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %156, i64 0, i32 2
  %162 = load i16, ptr %161, align 8, !tbaa !80
  %163 = sext i16 %162 to i32
  %164 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %156, i64 0, i32 3
  %165 = load i16, ptr %164, align 2, !tbaa !81
  %166 = sext i16 %165 to i32
  %167 = add nsw i32 %166, 1
  %168 = icmp eq i32 %167, %163
  br i1 %168, label %237, label %169

169:                                              ; preds = %160
  br i1 %159, label %172, label %170

170:                                              ; preds = %169
  %171 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %171(ptr noundef nonnull %158) #7
  store ptr null, ptr %157, align 8, !tbaa !78
  br label %172

172:                                              ; preds = %154, %170, %169
  %173 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %156, i64 0, i32 4
  %174 = load i16, ptr %173, align 4, !tbaa !82
  %175 = and i16 %174, -2
  store i16 %175, ptr %173, align 4, !tbaa !82
  br label %237

176:                                              ; preds = %22
  %177 = getelementptr inbounds %struct.bConstraint, ptr %23, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !59
  %179 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %178, i64 0, i32 2
  %180 = load i32, ptr %179, align 8, !tbaa !83
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %237

183:                                              ; preds = %176
  %184 = load ptr, ptr %178, align 8, !tbaa !85
  %185 = icmp eq ptr %184, null
  br i1 %185, label %211, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %178, i64 0, i32 1
  %188 = load i8, ptr %187, align 8, !tbaa !86
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %211, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.MovieClip, ptr %184, i64 0, i32 11
  %192 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %178, i64 0, i32 4
  %193 = load i8, ptr %192, align 8, !tbaa !86
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %190
  %196 = call ptr @BKE_tracking_object_get_named(ptr noundef nonnull %191, ptr noundef nonnull %192) #7
  br label %199

197:                                              ; preds = %190
  %198 = call ptr @BKE_tracking_object_get_camera(ptr noundef nonnull %191) #7
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi ptr [ %196, %195 ], [ %198, %197 ]
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i16, ptr %25, align 2, !tbaa !56
  %204 = or i16 %203, 4
  store i16 %204, ptr %25, align 2, !tbaa !56
  br label %237

205:                                              ; preds = %199
  %206 = call ptr @BKE_tracking_track_get_named(ptr noundef nonnull %191, ptr noundef nonnull %200, ptr noundef nonnull %187) #7
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %237

208:                                              ; preds = %205
  %209 = load i16, ptr %25, align 2, !tbaa !56
  %210 = or i16 %209, 4
  store i16 %210, ptr %25, align 2, !tbaa !56
  br label %237

211:                                              ; preds = %186, %183
  %212 = or i16 %26, 4
  store i16 %212, ptr %25, align 2, !tbaa !56
  br label %237

213:                                              ; preds = %22
  %214 = getelementptr inbounds %struct.bConstraint, ptr %23, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !59
  %216 = getelementptr inbounds %struct.bCameraSolverConstraint, ptr %215, i64 0, i32 1
  %217 = load i32, ptr %216, align 8, !tbaa !87
  %218 = and i32 %217, 1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %237

220:                                              ; preds = %213
  %221 = load ptr, ptr %215, align 8, !tbaa !89
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %237

223:                                              ; preds = %220
  %224 = or i16 %26, 4
  store i16 %224, ptr %25, align 2, !tbaa !56
  br label %237

225:                                              ; preds = %22
  %226 = getelementptr inbounds %struct.bConstraint, ptr %23, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !59
  %228 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %227, i64 0, i32 1
  %229 = load i32, ptr %228, align 8, !tbaa !90
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %225
  %233 = load ptr, ptr %227, align 8, !tbaa !92
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = or i16 %26, 4
  store i16 %236, ptr %25, align 2, !tbaa !56
  br label %237

237:                                              ; preds = %225, %232, %235, %22, %213, %220, %223, %176, %211, %205, %208, %202, %160, %172, %148, %151, %132, %135, %114, %119, %96, %102, %98
  %238 = icmp eq ptr %24, null
  br i1 %238, label %297, label %239

239:                                              ; preds = %237
  %240 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %24, i64 0, i32 8
  %241 = load ptr, ptr %240, align 8, !tbaa !93
  %242 = icmp eq ptr %241, null
  br i1 %242, label %297, label %243

243:                                              ; preds = %239
  %244 = call i32 %241(ptr noundef nonnull %23, ptr noundef nonnull %3) #7
  %245 = load ptr, ptr %3, align 8, !tbaa !46
  %246 = icmp eq ptr %245, null
  br i1 %246, label %292, label %247

247:                                              ; preds = %243, %289
  %248 = phi ptr [ %290, %289 ], [ %245, %243 ]
  %249 = getelementptr inbounds %struct.bConstraintTarget, ptr %248, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !95
  %251 = call zeroext i8 @BKE_object_exists_check(ptr noundef %250) #7
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %247
  store ptr null, ptr %249, align 8, !tbaa !95
  br label %268

254:                                              ; preds = %247
  %255 = load ptr, ptr %249, align 8, !tbaa !95
  %256 = icmp eq ptr %255, %0
  br i1 %256, label %257, label %271

257:                                              ; preds = %254
  br i1 %13, label %258, label %267

258:                                              ; preds = %257
  %259 = call ptr @BKE_armature_from_object(ptr noundef nonnull %0) #7
  %260 = getelementptr inbounds %struct.bConstraintTarget, ptr %248, i64 0, i32 3
  %261 = call ptr @BKE_armature_find_bone_name(ptr noundef %259, ptr noundef nonnull %260) #7
  %262 = icmp eq ptr %261, null
  br i1 %262, label %268, label %263

263:                                              ; preds = %258
  %264 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %260) #8
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  store i8 0, ptr %260, align 8, !tbaa !86
  br label %268

267:                                              ; preds = %257
  store ptr null, ptr %249, align 8, !tbaa !95
  br label %268

268:                                              ; preds = %258, %253, %267, %266
  %269 = load i16, ptr %25, align 2, !tbaa !56
  %270 = or i16 %269, 4
  store i16 %270, ptr %25, align 2, !tbaa !56
  br label %271

271:                                              ; preds = %268, %254, %263
  %272 = load i16, ptr %28, align 8, !tbaa !58
  switch i16 %272, label %289 [
    i16 4, label %273
    i16 18, label %273
    i16 22, label %273
  ]

273:                                              ; preds = %271, %271, %271
  %274 = load ptr, ptr %249, align 8, !tbaa !95
  %275 = icmp eq ptr %274, null
  br i1 %275, label %289, label %276

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.Object, ptr %274, i64 0, i32 3
  %278 = load i16, ptr %277, align 8, !tbaa !52
  %279 = icmp eq i16 %278, 2
  br i1 %279, label %283, label %280

280:                                              ; preds = %276
  store ptr null, ptr %249, align 8, !tbaa !95
  %281 = load i16, ptr %25, align 2, !tbaa !56
  %282 = or i16 %281, 4
  store i16 %282, ptr %25, align 2, !tbaa !56
  br label %289

283:                                              ; preds = %276
  %284 = getelementptr inbounds %struct.Object, ptr %274, i64 0, i32 19
  %285 = load ptr, ptr %284, align 8, !tbaa !97
  %286 = getelementptr inbounds %struct.Curve, ptr %285, i64 0, i32 23
  %287 = load i32, ptr %286, align 4, !tbaa !98
  %288 = or i32 %287, 8
  store i32 %288, ptr %286, align 4, !tbaa !98
  br label %289

289:                                              ; preds = %271, %280, %283, %273
  %290 = load ptr, ptr %248, align 8, !tbaa !46
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %247, !llvm.loop !101

292:                                              ; preds = %289, %243
  %293 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %24, i64 0, i32 9
  %294 = load ptr, ptr %293, align 8, !tbaa !102
  %295 = icmp eq ptr %294, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %292
  call void %294(ptr noundef nonnull %23, ptr noundef nonnull %3, i8 noundef zeroext 0) #7
  br label %297

297:                                              ; preds = %237, %239, %296, %292, %76, %82, %87, %79, %67
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  %298 = load ptr, ptr %23, align 8, !tbaa !46
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %22, !llvm.loop !103

300:                                              ; preds = %297, %12, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CONSTRAINT_OT_stretchto_reset(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @stretchto_reset_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @stretchto_reset_exec, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_constraint_poll, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.68, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !113
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.69, ptr noundef nonnull @constraint_owner_items, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stretchto_reset_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1), !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %8 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %7, i32 noundef 15)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ null, %6 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bStretchToConstraint, ptr %14, i64 0, i32 4
  store float 0.000000e+00, ptr %17, align 4, !tbaa !115
  tail call void @ED_object_constraint_update(ptr noundef %7)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef null) #7
  br label %18

18:                                               ; preds = %16, %13, %3
  %19 = phi i32 [ 2, %3 ], [ 4, %16 ], [ 2, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stretchto_reset_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %4 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 15)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bStretchToConstraint, ptr %10, i64 0, i32 4
  store float 0.000000e+00, ptr %13, align 4, !tbaa !115
  tail call void @ED_object_constraint_update(ptr noundef %3)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef null) #7
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi i32 [ 4, %12 ], [ 2, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edit_constraint_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Constraint) #7
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call ptr @ED_object_active_context(ptr noundef %0) #7
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !120
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %8, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8, !tbaa !117
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !122
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %14, %21, %12, %7
  %26 = phi ptr [ @.str.70, %7 ], [ @.str.71, %12 ], [ @.str.72, %21 ], [ @.str.72, %14 ]
  call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull %26) #7
  br label %27

27:                                               ; preds = %25, %18, %21
  %28 = phi i32 [ 1, %21 ], [ 1, %18 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local void @CONSTRAINT_OT_limitdistance_reset(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @limitdistance_reset_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @limitdistance_reset_exec, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_constraint_poll, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.68, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !113
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.69, ptr noundef nonnull @constraint_owner_items, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @limitdistance_reset_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1), !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %8 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %7, i32 noundef 14)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ null, %6 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %14, i64 0, i32 2
  store float 0.000000e+00, ptr %17, align 8, !tbaa !123
  tail call void @ED_object_constraint_update(ptr noundef %7)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef null) #7
  br label %18

18:                                               ; preds = %16, %13, %3
  %19 = phi i32 [ 2, %3 ], [ 4, %16 ], [ 2, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @limitdistance_reset_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %4 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 14)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %10, i64 0, i32 2
  store float 0.000000e+00, ptr %13, align 8, !tbaa !123
  tail call void @ED_object_constraint_update(ptr noundef %3)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef null) #7
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi i32 [ 4, %12 ], [ 2, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local void @CONSTRAINT_OT_childof_set_inverse(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @childof_set_inverse_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @childof_set_inverse_exec, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_constraint_poll, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.68, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !113
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.69, ptr noundef nonnull @constraint_owner_items, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @childof_set_inverse_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1), !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @childof_set_inverse_exec(ptr noundef %0, ptr noundef %1), !range !125
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @childof_set_inverse_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %5 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %4, i32 noundef 1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !126
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.69) #7
  %15 = icmp eq ptr %11, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = icmp eq ptr %4, null
  %18 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %19 = select i1 %17, ptr @.str.84, ptr %18
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef nonnull %19)
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.85) #7
  br label %25

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.bChildOfConstraint, ptr %11, i64 0, i32 3
  tail call fastcc void @child_get_inverse_matrix(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %24, i32 noundef %14)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %4) #7
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ 2, %16 ], [ 4, %23 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local void @CONSTRAINT_OT_childof_clear_inverse(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @childof_clear_inverse_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @childof_clear_inverse_exec, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_constraint_poll, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.68, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !113
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.69, ptr noundef nonnull @constraint_owner_items, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @childof_clear_inverse_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1), !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %8 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %7, i32 noundef 1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ null, %6 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.86) #7
  br label %21

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.bChildOfConstraint, ptr %14, i64 0, i32 3
  tail call void @unit_m4(ptr noundef nonnull %20) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %7) #7
  br label %21

21:                                               ; preds = %19, %16, %3
  %22 = phi i32 [ 2, %3 ], [ 2, %16 ], [ 4, %19 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @childof_clear_inverse_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %4 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 1)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.86) #7
  br label %17

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bChildOfConstraint, ptr %10, i64 0, i32 3
  tail call void @unit_m4(ptr noundef nonnull %16) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %3) #7
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ 2, %12 ], [ 4, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @CONSTRAINT_OT_followpath_path_animate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @followpath_path_animate_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @followpath_path_animate_exec, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_constraint_poll, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.68, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !113
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.69, ptr noundef nonnull @constraint_owner_items, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #7
  %13 = load ptr, ptr %8, align 8, !tbaa !113
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef -300000, i32 noundef 300000) #7
  %15 = load ptr, ptr %8, align 8, !tbaa !113
  %16 = tail call ptr @RNA_def_int(ptr noundef %15, ptr noundef nonnull @.str.18, i32 noundef 100, i32 noundef 0, i32 noundef 300000, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 300000) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @followpath_path_animate_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1), !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @followpath_path_animate_exec(ptr noundef %0, ptr noundef %1), !range !125
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @followpath_path_animate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %5 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %4, i32 noundef 4)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !126
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.15) #7
  %15 = load ptr, ptr %12, align 8, !tbaa !126
  %16 = tail call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.18) #7
  %17 = icmp eq ptr %11, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %20, i32 noundef 32, ptr noundef nonnull @.str.87) #7
  br label %85

21:                                               ; preds = %10
  %22 = load ptr, ptr %11, align 8, !tbaa !129
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  %27 = getelementptr inbounds %struct.Curve, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !130
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %28, align 8, !tbaa !131
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.bAction, ptr %31, i64 0, i32 1
  %35 = tail call ptr @list_find_fcurve(ptr noundef nonnull %34, ptr noundef nonnull @.str.88, i32 noundef 0) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %30, %24
  %38 = tail call ptr @verify_adt_action(ptr noundef %26, i16 noundef signext 1) #7
  %39 = tail call ptr @verify_fcurve(ptr noundef %38, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 0, i16 noundef signext 1) #7
  br label %43

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %42, i32 noundef 16, ptr noundef nonnull @.str.89) #7
  br label %43

43:                                               ; preds = %37, %40
  %44 = phi i1 [ true, %37 ], [ false, %40 ]
  %45 = phi float [ 1.000000e+02, %37 ], [ 1.000000e+00, %40 ]
  %46 = phi ptr [ %39, %37 ], [ null, %40 ]
  br i1 %44, label %59, label %85

47:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @RNA_pointer_create(ptr noundef %4, ptr noundef nonnull @RNA_FollowPathConstraint, ptr noundef %5, ptr noundef nonnull %3) #7
  %48 = call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.90) #7
  %49 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %3, ptr noundef %48) #7
  %50 = call ptr @verify_adt_action(ptr noundef %4, i16 noundef signext 1) #7
  %51 = call ptr @verify_fcurve(ptr noundef %50, ptr noundef null, ptr noundef null, ptr noundef %49, i32 noundef 0, i16 noundef signext 1) #7
  %52 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %11, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !133
  %54 = or i32 %53, 2
  store i32 %54, ptr %52, align 8, !tbaa !133
  %55 = icmp eq ptr %49, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %57(ptr noundef nonnull %49) #7
  br label %58

58:                                               ; preds = %56, %47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  br label %59

59:                                               ; preds = %43, %58
  %60 = phi float [ %45, %43 ], [ 1.000000e+00, %58 ]
  %61 = phi ptr [ %46, %43 ], [ %51, %58 ]
  %62 = getelementptr inbounds %struct.FCurve, ptr %61, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !134
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.FCurve, ptr %61, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !136
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.FCurve, ptr %61, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !137
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = call ptr @add_fmodifier(ptr noundef nonnull %70, i32 noundef 1) #7
  %75 = getelementptr inbounds %struct.FModifier, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !138
  %77 = sitofp i32 %16 to float
  %78 = fdiv float %60, %77
  %79 = sub nsw i32 0, %14
  %80 = sitofp i32 %79 to float
  %81 = fmul float %78, %80
  %82 = load ptr, ptr %76, align 8, !tbaa !140
  %83 = getelementptr inbounds float, ptr %82, i64 1
  store float %78, ptr %83, align 4, !tbaa !142
  store float %81, ptr %82, align 4, !tbaa !142
  br label %84

84:                                               ; preds = %73, %69, %65, %59
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %4) #7
  br label %85

85:                                               ; preds = %43, %84, %18
  %86 = phi i32 [ 2, %18 ], [ 4, %84 ], [ 2, %43 ]
  ret i32 %86
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CONSTRAINT_OT_objectsolver_set_inverse(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @objectsolver_set_inverse_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @objectsolver_set_inverse_exec, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_constraint_poll, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.68, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !113
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.69, ptr noundef nonnull @constraint_owner_items, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @objectsolver_set_inverse_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1), !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @objectsolver_set_inverse_exec(ptr noundef %0, ptr noundef %1), !range !125
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @objectsolver_set_inverse_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %5 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %4, i32 noundef 28)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !126
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.69) #7
  %15 = icmp eq ptr %11, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = icmp eq ptr %4, null
  %18 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %19 = select i1 %17, ptr @.str.84, ptr %18
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef nonnull %19)
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.85) #7
  br label %25

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %11, i64 0, i32 4
  tail call fastcc void @child_get_inverse_matrix(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %24, i32 noundef %14)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %4) #7
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ 2, %16 ], [ 4, %23 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local void @CONSTRAINT_OT_objectsolver_clear_inverse(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @objectsolver_clear_inverse_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @objectsolver_clear_inverse_exec, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_constraint_poll, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.68, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !113
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.69, ptr noundef nonnull @constraint_owner_items, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @objectsolver_clear_inverse_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1), !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %8 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %7, i32 noundef 28)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ null, %6 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.86) #7
  br label %21

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %14, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %20) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %7) #7
  br label %21

21:                                               ; preds = %19, %16, %3
  %22 = phi i32 [ 2, %3 ], [ 2, %16 ], [ 4, %19 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @objectsolver_clear_inverse_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %4 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 28)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.86) #7
  br label %17

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %10, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %16) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %3) #7
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ 2, %12 ], [ 4, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_constraint_set_active(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  %8 = tail call i32 @BLI_findindex(ptr noundef nonnull %7, ptr noundef %1) #7
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10, %18
  %15 = phi ptr [ %16, %18 ], [ %12, %10 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 3
  %20 = tail call i32 @BLI_findindex(ptr noundef nonnull %19, ptr noundef %1) #7
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %14, label %22, !llvm.loop !48

22:                                               ; preds = %18, %14
  %23 = phi ptr [ undef, %14 ], [ %19, %18 ]
  br i1 %17, label %24, label %25

24:                                               ; preds = %22, %10
  br label %25

25:                                               ; preds = %2, %6, %22, %24
  %26 = phi ptr [ %23, %22 ], [ null, %24 ], [ null, %2 ], [ %7, %6 ]
  %27 = icmp ne ptr %26, null
  %28 = icmp ne ptr %1, null
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.bConstraint, ptr %1, i64 0, i32 4
  %32 = load i16, ptr %31, align 2, !tbaa !56
  %33 = and i16 %32, 16
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25
  tail call void @BKE_constraints_active_set(ptr noundef %26, ptr noundef %1) #7
  br label %36

36:                                               ; preds = %30, %35
  ret void
}

declare void @BKE_constraints_active_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_constraint_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BKE_pose_update_constraint_flags(ptr noundef nonnull %3) #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call fastcc void @test_constraints(ptr noundef %0, ptr noundef null)
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !52
  %14 = icmp eq i16 %13, 25
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load ptr, ptr %2, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %18, %27
  %22 = phi ptr [ %28, %27 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call fastcc void @test_constraints(ptr noundef %0, ptr noundef nonnull %22)
  br label %27

27:                                               ; preds = %26, %21
  %28 = load ptr, ptr %22, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %21, !llvm.loop !55

30:                                               ; preds = %27, %11, %15, %18
  %31 = load i16, ptr %12, align 8, !tbaa !52
  %32 = icmp eq i16 %31, 25
  %33 = select i1 %32, i16 3, i16 1
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext %33) #7
  ret void
}

declare void @BKE_pose_update_constraint_flags(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_object_constraint_dependency_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @ED_object_constraint_update(ptr noundef %1)
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bPose, ptr %4, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !143
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 8, !tbaa !143
  br label %10

10:                                               ; preds = %6, %2
  tail call void @DAG_relations_tag_update(ptr noundef %0) #7
  ret void
}

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CONSTRAINT_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @constraint_delete_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @constraint_poll, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @constraint_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Constraint) #7
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = icmp eq ptr %4, null
  %8 = icmp eq ptr %6, null
  %9 = or i1 %7, %8
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 106
  %12 = call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef %6) #7
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14, %22
  %19 = phi ptr [ %20, %22 ], [ %16, %14 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 3
  %24 = call i32 @BLI_findindex(ptr noundef nonnull %23, ptr noundef %6) #7
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %18, label %26, !llvm.loop !48

26:                                               ; preds = %22, %18
  %27 = phi ptr [ undef, %18 ], [ %23, %22 ]
  br i1 %21, label %28, label %29

28:                                               ; preds = %26, %14
  br label %29

29:                                               ; preds = %2, %10, %26, %28
  %30 = phi ptr [ %27, %26 ], [ null, %28 ], [ null, %2 ], [ %11, %10 ]
  %31 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 3
  %32 = load i16, ptr %31, align 8, !tbaa !58
  %33 = call zeroext i8 @BKE_constraint_remove(ptr noundef %30, ptr noundef %6) #7
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  call void @BKE_constraints_active_set(ptr noundef %30, ptr noundef null) #7
  call void @ED_object_constraint_update(ptr noundef %4)
  switch i16 %32, label %39 [
    i16 22, label %36
    i16 3, label %36
  ]

36:                                               ; preds = %35, %35
  %37 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  call void @BIK_clear_data(ptr noundef %38) #7
  br label %39

39:                                               ; preds = %35, %36
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590020, ptr noundef %4) #7
  br label %40

40:                                               ; preds = %29, %39
  %41 = phi i32 [ 4, %39 ], [ 2, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @constraint_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Constraint) #7
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = icmp ne ptr %3, null
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %4, i1 %7, i1 false
  %9 = zext i1 %8 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local void @CONSTRAINT_OT_move_down(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @constraint_move_down_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @constraint_move_down_exec, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_constraint_poll, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.68, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !113
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.69, ptr noundef nonnull @constraint_owner_items, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @constraint_move_down_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1), !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @constraint_move_down_exec(ptr noundef %0, ptr noundef %1), !range !125
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @constraint_move_down_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %4 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 0)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !145
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %3, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 106
  %13 = tail call i32 @BLI_findindex(ptr noundef nonnull %12, ptr noundef nonnull %4) #7
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %15, %23
  %20 = phi ptr [ %21, %23 ], [ %17, %15 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 3
  %25 = tail call i32 @BLI_findindex(ptr noundef nonnull %24, ptr noundef nonnull %4) #7
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %19, label %27, !llvm.loop !48

27:                                               ; preds = %23, %19
  %28 = phi ptr [ undef, %19 ], [ %24, %23 ]
  br i1 %22, label %29, label %30

29:                                               ; preds = %27, %15
  br label %30

30:                                               ; preds = %9, %11, %27, %29
  %31 = phi ptr [ %28, %27 ], [ null, %29 ], [ null, %9 ], [ %12, %11 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !145
  tail call void @BLI_remlink(ptr noundef %31, ptr noundef nonnull %4) #7
  tail call void @BLI_insertlinkafter(ptr noundef %31, ptr noundef %32, ptr noundef nonnull %4) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %3) #7
  br label %33

33:                                               ; preds = %2, %6, %30
  %34 = phi i32 [ 4, %30 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define dso_local void @CONSTRAINT_OT_move_up(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @constraint_move_up_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @constraint_move_up_invoke, ptr %5, align 8, !tbaa !109
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @edit_constraint_poll, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.68, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !113
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.69, ptr noundef nonnull @constraint_owner_items, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @constraint_move_up_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %4 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 0)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !146
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %3, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 106
  %14 = tail call i32 @BLI_findindex(ptr noundef nonnull %13, ptr noundef nonnull %4) #7
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %16, %24
  %21 = phi ptr [ %22, %24 ], [ %18, %16 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 3
  %26 = tail call i32 @BLI_findindex(ptr noundef nonnull %25, ptr noundef nonnull %4) #7
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %20, label %28, !llvm.loop !48

28:                                               ; preds = %24, %20
  %29 = phi ptr [ undef, %20 ], [ %25, %24 ]
  br i1 %23, label %30, label %31

30:                                               ; preds = %28, %16
  br label %31

31:                                               ; preds = %10, %12, %28, %30
  %32 = phi ptr [ %29, %28 ], [ null, %30 ], [ null, %10 ], [ %13, %12 ]
  %33 = load ptr, ptr %7, align 8, !tbaa !146
  tail call void @BLI_remlink(ptr noundef %32, ptr noundef nonnull %4) #7
  tail call void @BLI_insertlinkbefore(ptr noundef %32, ptr noundef %33, ptr noundef nonnull %4) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %3) #7
  br label %34

34:                                               ; preds = %2, %6, %31
  %35 = phi i32 [ 4, %31 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @constraint_move_up_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1), !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @constraint_move_up_exec(ptr noundef %0, ptr noundef %1), !range !125
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_constraints_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.34, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_constraints_clear_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %5, align 8, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_constraints_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %7 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #7
  %8 = load ptr, ptr %3, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %18, %10 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.CollectionPointerLink, ptr %11, i64 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !147
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 3
  call void @BKE_constraints_free(ptr noundef nonnull %14) #7
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 9
  %16 = load i8, ptr %15, align 8, !tbaa !149
  %17 = and i8 %16, -36
  store i8 %17, ptr %15, align 8, !tbaa !149
  %18 = load ptr, ptr %11, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10, !llvm.loop !150

20:                                               ; preds = %10, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @DAG_relations_tag_update(ptr noundef %4) #7
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590020, ptr noundef %6) #7
  ret i32 4
}

declare i32 @ED_operator_posemode_exclusive(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_constraints_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.37, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_constraints_clear_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !111
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_constraints_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #7
  %6 = load ptr, ptr %3, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 106
  call void @BKE_constraints_free(ptr noundef nonnull %12) #7
  call void @DAG_id_tag_update(ptr noundef %11, i16 noundef signext 1) #7
  %13 = load ptr, ptr %9, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !151

15:                                               ; preds = %8, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @DAG_relations_tag_update(ptr noundef %4) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590020, ptr noundef null) #7
  ret i32 4
}

declare i32 @ED_operator_object_active_editable(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_constraints_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.40, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_constraint_copy_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_constraint_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_active_pose_bone(ptr noundef %0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.91) #7
  br label %35

14:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %15 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #7
  %16 = load ptr, ptr %3, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 9
  br label %20

20:                                               ; preds = %18, %31
  %21 = phi ptr [ %16, %18 ], [ %32, %31 ]
  %22 = getelementptr inbounds %struct.CollectionPointerLink, ptr %21, i64 0, i32 2, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !147
  %24 = icmp eq ptr %5, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 3
  call void @BKE_constraints_copy(ptr noundef nonnull %26, ptr noundef nonnull %8, i8 noundef zeroext 1) #7
  %27 = load i8, ptr %19, align 8, !tbaa !149
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 9
  %29 = load i8, ptr %28, align 8, !tbaa !149
  %30 = or i8 %29, %27
  store i8 %30, ptr %28, align 8, !tbaa !149
  br label %31

31:                                               ; preds = %25, %20
  %32 = load ptr, ptr %21, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %20, !llvm.loop !152

34:                                               ; preds = %31, %14
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @DAG_relations_tag_update(ptr noundef %4) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef null) #7
  br label %35

35:                                               ; preds = %34, %11
  %36 = phi i32 [ 2, %11 ], [ 4, %34 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_constraints_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.43, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_constraint_copy_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_constraint_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %6 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #7
  %7 = load ptr, ptr %3, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 106
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi ptr [ %7, %9 ], [ %19, %18 ]
  %13 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !147
  %15 = icmp eq ptr %5, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 106
  call void @BKE_constraints_copy(ptr noundef nonnull %17, ptr noundef nonnull %10, i8 noundef zeroext 1) #7
  call void @DAG_id_tag_update(ptr noundef %14, i16 noundef signext 2) #7
  br label %18

18:                                               ; preds = %16, %11
  %19 = load ptr, ptr %12, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !llvm.loop !153

21:                                               ; preds = %18, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @DAG_relations_tag_update(ptr noundef %4) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590019, ptr noundef null) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_constraint_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.46, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.48, ptr %3, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_constraint_add_exec, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.49, ptr noundef nonnull @constraint_type_items, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !154
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_constraint_add_exec(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !126
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.49) #7
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.92) #7
  br label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 2
  %13 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @.str.62) #8
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 106
  %17 = tail call fastcc i32 @constraint_add_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %16, i32 noundef %6, i8 noundef zeroext %15), !range !125
  br label %18

18:                                               ; preds = %11, %8
  %19 = phi i32 [ %17, %11 ], [ 2, %8 ]
  ret i32 %19
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_constraint_add_with_targets(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.54, ptr %3, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_constraint_add_exec, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.49, ptr noundef nonnull @constraint_type_items, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !154
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_constraint_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.46, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.55, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %3, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_constraint_add_exec, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.49, ptr noundef nonnull @constraint_type_items, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !154
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_constraint_add_exec(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.49) #7
  %8 = icmp eq ptr %4, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.92) #7
  br label %31

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 2
  %14 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.62) #8
  %15 = icmp ne ptr %14, null
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %12
  %22 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %4) #7
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 3
  %25 = select i1 %23, ptr null, ptr %24
  br label %28

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 106
  br label %28

28:                                               ; preds = %21, %26
  %29 = phi ptr [ %27, %26 ], [ %25, %21 ]
  %30 = tail call fastcc i32 @constraint_add_exec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %29, i32 noundef %7, i8 noundef zeroext %16), !range !125
  br label %31

31:                                               ; preds = %28, %9
  %32 = phi i32 [ %30, %28 ], [ 2, %9 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_constraint_add_with_targets(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %3, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_constraint_add_exec, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.49, ptr noundef nonnull @constraint_type_items, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !154
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_ik_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.59, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.60, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.61, ptr %3, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_ik_add_invoke, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_ik_add_exec, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %6, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !112
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.62, i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_ik_add_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %7 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %6) #7
  %8 = tail call ptr @BKE_pose_channel_active(ptr noundef %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store ptr null, ptr %4, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store ptr null, ptr %5, align 8, !tbaa !46
  %9 = icmp eq ptr %7, null
  %10 = icmp eq ptr %8, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.97) #7
  br label %40

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 3
  br label %17

17:                                               ; preds = %21, %15
  %18 = phi ptr [ %16, %15 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bConstraint, ptr %19, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !58
  %24 = icmp eq i16 %23, 3
  br i1 %24, label %25, label %17, !llvm.loop !155

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.98) #7
  br label %40

28:                                               ; preds = %17
  %29 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.99, i32 noundef 0) #7
  %30 = tail call ptr @uiPupMenuLayout(ptr noundef %29) #7
  %31 = call fastcc signext i16 @get_new_constraint_target(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext 0), !range !156
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %5, align 8, !tbaa !46
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @uiItemBooleanO(ptr noundef %30, ptr noundef nonnull @.str.100, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 1) #7
  br label %39

37:                                               ; preds = %33
  tail call void @uiItemBooleanO(ptr noundef %30, ptr noundef nonnull @.str.101, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 1) #7
  br label %39

38:                                               ; preds = %28
  tail call void @uiItemBooleanO(ptr noundef %30, ptr noundef nonnull @.str.102, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 1) #7
  tail call void @uiItemBooleanO(ptr noundef %30, ptr noundef nonnull @.str.103, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 0) #7
  br label %39

39:                                               ; preds = %36, %37, %38
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %29) #7
  br label %40

40:                                               ; preds = %39, %25, %12
  %41 = phi i32 [ 2, %12 ], [ 2, %25 ], [ 32, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_ik_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !126
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.62) #7
  %7 = icmp eq ptr %3, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %3) #7
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 3
  %17 = select i1 %15, ptr null, ptr %16
  br label %20

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 106
  br label %20

20:                                               ; preds = %2, %13, %18
  %21 = phi ptr [ %19, %18 ], [ null, %2 ], [ %17, %13 ]
  %22 = trunc i32 %6 to i8
  %23 = tail call fastcc i32 @constraint_add_exec(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %21, i32 noundef 3, i8 noundef zeroext %22), !range !125
  ret i32 %23
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_ik_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.65, ptr %0, align 8, !tbaa !104
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %3, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_ik_clear_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_ik_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %5 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %6 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #7
  %7 = load ptr, ptr %3, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %2, %26
  %10 = phi ptr [ %30, %26 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.CollectionPointerLink, ptr %10, i64 0, i32 2, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !147
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %9, %24
  %17 = phi ptr [ %18, %24 ], [ %14, %9 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !145
  %19 = getelementptr inbounds %struct.bConstraint, ptr %17, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !58
  %21 = icmp eq i16 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call zeroext i8 @BKE_constraint_remove(ptr noundef nonnull %13, ptr noundef nonnull %17) #7
  br label %24

24:                                               ; preds = %16, %22
  %25 = icmp eq ptr %18, null
  br i1 %25, label %26, label %16, !llvm.loop !157

26:                                               ; preds = %24, %9
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 9
  %28 = load i8, ptr %27, align 8, !tbaa !149
  %29 = and i8 %28, -10
  store i8 %29, ptr %27, align 8, !tbaa !149
  %30 = load ptr, ptr %10, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9, !llvm.loop !158

32:                                               ; preds = %26, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590020, ptr noundef %5) #7
  ret i32 4
}

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare zeroext i8 @BKE_object_exists_check(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_armature_find_bone_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_armature_from_object(ptr noundef) local_unnamed_addr #2

declare void @BIK_test_constraint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_object_get_named(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_object_get_camera(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_track_get_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Constraint) #7
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call ptr @ED_object_active_context(ptr noundef %0) #7
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  %12 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %11, ptr noundef nonnull @.str.68) #7
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %10, align 8, !tbaa !126
  %16 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %15, ptr noundef nonnull @.str.69) #7
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !120
  %21 = icmp eq ptr %20, null
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %10, align 8, !tbaa !126
  %24 = getelementptr inbounds %struct.bConstraint, ptr %20, i64 0, i32 7
  call void @RNA_string_set(ptr noundef %23, ptr noundef nonnull @.str.68, ptr noundef nonnull %24) #7
  %25 = icmp eq ptr %9, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 106
  %28 = call i32 @BLI_findindex(ptr noundef nonnull %27, ptr noundef nonnull %20) #7
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %30, %38
  %35 = phi ptr [ %36, %38 ], [ %32, %30 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %36, i64 0, i32 3
  %40 = call i32 @BLI_findindex(ptr noundef nonnull %39, ptr noundef nonnull %20) #7
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %34, label %42, !llvm.loop !48

42:                                               ; preds = %38, %34
  %43 = phi ptr [ undef, %34 ], [ %39, %38 ]
  br i1 %37, label %44, label %45

44:                                               ; preds = %42, %30
  br label %45

45:                                               ; preds = %22, %26, %42, %44
  %46 = phi ptr [ %43, %42 ], [ null, %44 ], [ null, %22 ], [ %27, %26 ]
  %47 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 106
  %48 = icmp ne ptr %47, %46
  %49 = load ptr, ptr %10, align 8, !tbaa !126
  %50 = zext i1 %48 to i32
  call void @RNA_enum_set(ptr noundef %49, ptr noundef nonnull @.str.69, i32 noundef %50) #7
  br label %51

51:                                               ; preds = %45, %18, %14
  %52 = phi i32 [ 1, %14 ], [ 0, %18 ], [ 1, %45 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %52
}

declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_object_active_context(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @edit_constraint_property_get(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.69) #7
  %8 = load ptr, ptr %5, align 8, !tbaa !126
  call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.68, ptr noundef nonnull %4) #7
  switch i32 %7, label %16 [
    i32 0, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  br label %30

11:                                               ; preds = %3
  %12 = call ptr @BKE_pose_channel_active(ptr noundef %1) #7
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 3
  %15 = select i1 %13, ptr null, ptr %14
  br i1 %13, label %42, label %30

16:                                               ; preds = %3
  %17 = icmp eq ptr %1, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %20 = load i32, ptr %19, align 8, !tbaa !34
  %21 = and i32 %20, 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = call ptr @BKE_pose_channel_active(ptr noundef nonnull %1) #7
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %24, i64 0, i32 3
  %27 = select i1 %25, ptr null, ptr %26
  br label %30

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  br label %30

30:                                               ; preds = %28, %23, %16, %11, %9
  %31 = phi ptr [ %10, %9 ], [ %15, %11 ], [ %29, %28 ], [ null, %16 ], [ %27, %23 ]
  %32 = call ptr @BKE_constraints_find_name(ptr noundef %31, ptr noundef nonnull %4) #7
  %33 = icmp ne ptr %32, null
  %34 = icmp ne i32 %2, 0
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.bConstraint, ptr %32, i64 0, i32 3
  %38 = load i16, ptr %37, align 8, !tbaa !58
  %39 = sext i16 %38 to i32
  %40 = icmp eq i32 %39, %2
  %41 = select i1 %40, ptr %32, ptr null
  br label %42

42:                                               ; preds = %30, %36, %11
  %43 = phi ptr [ null, %11 ], [ %41, %36 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  ret ptr %43
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_constraints_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @child_get_inverse_matrix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca %struct.Object, align 8
  tail call void @unit_m4(ptr noundef %3) #7
  %10 = icmp ne i32 %4, 1
  %11 = icmp eq ptr %1, null
  %12 = or i1 %11, %10
  br i1 %12, label %34, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %1) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  tail call void @BKE_pose_where_is(ptr noundef %0, ptr noundef nonnull %1) #7
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %21) #7
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 3
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 3, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !159
  %25 = getelementptr inbounds %struct.bConstraint, ptr %2, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !146
  store ptr %26, ptr %23, align 8, !tbaa !159
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr %22, ptr %26
  store ptr null, ptr %28, align 8, !tbaa !46
  call void @BKE_pose_where_is(ptr noundef %0, ptr noundef nonnull %1) #7
  %29 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %21) #7
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #7
  %30 = call zeroext i8 @invert_m4_m4(ptr noundef %3, ptr noundef nonnull %7) #7
  store ptr %24, ptr %23, align 8, !tbaa !159
  %31 = load ptr, ptr %25, align 8, !tbaa !146
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr %22, ptr %31
  store ptr %2, ptr %33, align 8, !tbaa !46
  call void @BKE_pose_where_is(ptr noundef %0, ptr noundef nonnull %1) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  br label %34

34:                                               ; preds = %13, %17, %20, %5
  %35 = icmp eq i32 %4, 0
  %36 = icmp ne ptr %1, null
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %9) #7
  call void @BKE_object_workob_calc_parent(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %9) #7
  %39 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  %40 = call zeroext i8 @invert_m4_m4(ptr noundef %3, ptr noundef nonnull %39) #7
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %9) #7
  br label %41

41:                                               ; preds = %38, %34
  ret void
}

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_workob_calc_parent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_find_fcurve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @verify_adt_action(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @verify_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @add_fmodifier(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_constraint_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BIK_clear_data(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_pose_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_constraints_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_pose_bone(ptr noundef) local_unnamed_addr #2

declare void @BKE_constraints_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @constraint_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef readnone %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %12 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 106
  %13 = icmp eq ptr %12, %3
  br i1 %13, label %20, label %14

14:                                               ; preds = %6
  %15 = tail call ptr @BKE_pose_channel_active(ptr noundef %2) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.93) #7
  br label %170

20:                                               ; preds = %6, %14
  %21 = phi ptr [ %15, %14 ], [ null, %6 ]
  switch i32 %4, label %45 [
    i32 0, label %170
    i32 17, label %22
    i32 3, label %27
    i32 22, label %37
  ]

22:                                               ; preds = %20
  br i1 %13, label %26, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %25, i32 noundef 32, ptr noundef nonnull @.str.94) #7
  br label %170

26:                                               ; preds = %22
  switch i32 %4, label %45 [
    i32 3, label %27
    i32 22, label %37
  ]

27:                                               ; preds = %20, %26
  %28 = icmp ne ptr %21, null
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 3
  %30 = icmp eq ptr %29, %3
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %34, i32 noundef 32, ptr noundef nonnull @.str.95) #7
  br label %170

35:                                               ; preds = %27
  %36 = icmp eq i32 %4, 22
  br i1 %36, label %37, label %45

37:                                               ; preds = %20, %26, %35
  %38 = icmp ne ptr %21, null
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 3
  %40 = icmp eq ptr %39, %3
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !128
  tail call void @BKE_report(ptr noundef %44, i32 noundef 32, ptr noundef nonnull @.str.96) #7
  br label %170

45:                                               ; preds = %37, %20, %26, %35
  %46 = icmp ne ptr %21, null
  %47 = trunc i32 %4 to i16
  br i1 %46, label %48, label %50

48:                                               ; preds = %45
  %49 = tail call ptr @BKE_constraint_add_for_pose(ptr noundef %2, ptr noundef nonnull %21, ptr noundef null, i16 noundef signext %47) #7
  br label %52

50:                                               ; preds = %45
  %51 = tail call ptr @BKE_constraint_add_for_object(ptr noundef %2, ptr noundef null, i16 noundef signext %47) #7
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi ptr [ %49, %48 ], [ %51, %50 ]
  %54 = icmp eq i8 %5, 0
  br i1 %54, label %130, label %55

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  store ptr null, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  store ptr null, ptr %10, align 8, !tbaa !46
  %56 = call fastcc signext i16 @get_new_constraint_target(ptr noundef %0, i32 noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %10, i16 noundef signext 1), !range !156
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %129, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %10, align 8, !tbaa !46
  %60 = icmp eq ptr %59, null
  %61 = load ptr, ptr %9, align 8, !tbaa !46
  br i1 %60, label %96, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.bPoseChannel, ptr %59, i64 0, i32 4
  %64 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef %53) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %95, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %64, i64 0, i32 8
  %68 = load ptr, ptr %67, align 8, !tbaa !93
  %69 = icmp eq ptr %68, null
  br i1 %69, label %95, label %70

70:                                               ; preds = %66
  %71 = call i32 %68(ptr noundef %53, ptr noundef nonnull %8) #7
  %72 = call i32 @BLI_countlist(ptr noundef nonnull %8) #7
  %73 = add nsw i32 %72, -1
  %74 = icmp sgt i32 %72, 0
  %75 = select i1 %74, i32 0, i32 %73
  %76 = load ptr, ptr %8, align 8, !tbaa !46
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %82

78:                                               ; preds = %82
  %79 = add nuw nsw i32 %84, 1
  %80 = load ptr, ptr %83, align 8, !tbaa !46
  %81 = icmp eq ptr %80, null
  br i1 %81, label %90, label %82, !llvm.loop !160

82:                                               ; preds = %70, %78
  %83 = phi ptr [ %80, %78 ], [ %76, %70 ]
  %84 = phi i32 [ %79, %78 ], [ 0, %70 ]
  %85 = icmp eq i32 %84, %75
  br i1 %85, label %86, label %78

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.bConstraintTarget, ptr %83, i64 0, i32 2
  store ptr %61, ptr %87, align 8, !tbaa !95
  %88 = getelementptr inbounds %struct.bConstraintTarget, ptr %83, i64 0, i32 3
  %89 = call ptr @BLI_strncpy(ptr noundef nonnull %88, ptr noundef nonnull %63, i64 noundef 64) #7
  br label %90

90:                                               ; preds = %78, %86, %70
  %91 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %64, i64 0, i32 9
  %92 = load ptr, ptr %91, align 8, !tbaa !102
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  call void %92(ptr noundef %53, ptr noundef nonnull %8, i8 noundef zeroext 0) #7
  br label %95

95:                                               ; preds = %62, %66, %90, %94
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %129

96:                                               ; preds = %58
  %97 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef %53) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %98 = icmp eq ptr %97, null
  br i1 %98, label %128, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %97, i64 0, i32 8
  %101 = load ptr, ptr %100, align 8, !tbaa !93
  %102 = icmp eq ptr %101, null
  br i1 %102, label %128, label %103

103:                                              ; preds = %99
  %104 = call i32 %101(ptr noundef %53, ptr noundef nonnull %7) #7
  %105 = call i32 @BLI_countlist(ptr noundef nonnull %7) #7
  %106 = add nsw i32 %105, -1
  %107 = icmp sgt i32 %105, 0
  %108 = select i1 %107, i32 0, i32 %106
  %109 = load ptr, ptr %7, align 8, !tbaa !46
  %110 = icmp eq ptr %109, null
  br i1 %110, label %123, label %115

111:                                              ; preds = %115
  %112 = add nuw nsw i32 %117, 1
  %113 = load ptr, ptr %116, align 8, !tbaa !46
  %114 = icmp eq ptr %113, null
  br i1 %114, label %123, label %115, !llvm.loop !160

115:                                              ; preds = %103, %111
  %116 = phi ptr [ %113, %111 ], [ %109, %103 ]
  %117 = phi i32 [ %112, %111 ], [ 0, %103 ]
  %118 = icmp eq i32 %117, %108
  br i1 %118, label %119, label %111

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.bConstraintTarget, ptr %116, i64 0, i32 2
  store ptr %61, ptr %120, align 8, !tbaa !95
  %121 = getelementptr inbounds %struct.bConstraintTarget, ptr %116, i64 0, i32 3
  %122 = call ptr @BLI_strncpy(ptr noundef nonnull %121, ptr noundef nonnull @.str.51, i64 noundef 64) #7
  br label %123

123:                                              ; preds = %111, %119, %103
  %124 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %97, i64 0, i32 9
  %125 = load ptr, ptr %124, align 8, !tbaa !102
  %126 = icmp eq ptr %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  call void %125(ptr noundef %53, ptr noundef nonnull %7, i8 noundef zeroext 0) #7
  br label %128

128:                                              ; preds = %96, %99, %123, %127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  br label %129

129:                                              ; preds = %95, %128, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  br label %130

130:                                              ; preds = %52, %129
  %131 = load ptr, ptr %12, align 8, !tbaa !51
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  call fastcc void @test_constraints(ptr noundef %2, ptr noundef null)
  br label %134

134:                                              ; preds = %133, %130
  %135 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %136 = load i16, ptr %135, align 8, !tbaa !52
  %137 = icmp eq i16 %136, 25
  br i1 %137, label %138, label %154

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %140 = load ptr, ptr %139, align 8, !tbaa !47
  %141 = icmp eq ptr %140, null
  br i1 %141, label %154, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %140, align 8, !tbaa !46
  %144 = icmp eq ptr %143, null
  br i1 %144, label %154, label %145

145:                                              ; preds = %142, %151
  %146 = phi ptr [ %152, %151 ], [ %143, %142 ]
  %147 = getelementptr inbounds %struct.bPoseChannel, ptr %146, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !53
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  call fastcc void @test_constraints(ptr noundef %2, ptr noundef nonnull %146)
  br label %151

151:                                              ; preds = %150, %145
  %152 = load ptr, ptr %146, align 8, !tbaa !46
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %145, !llvm.loop !55

154:                                              ; preds = %151, %134, %138, %142
  br i1 %46, label %155, label %158

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %157 = load ptr, ptr %156, align 8, !tbaa !47
  call void @BKE_pose_update_constraint_flags(ptr noundef %157) #7
  br label %158

158:                                              ; preds = %155, %154
  call void @DAG_relations_tag_update(ptr noundef %11) #7
  %159 = load i16, ptr %135, align 8, !tbaa !52
  %160 = icmp eq i16 %159, 25
  %161 = and i1 %46, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %164 = load ptr, ptr %163, align 8, !tbaa !47
  %165 = getelementptr inbounds %struct.bPose, ptr %164, i64 0, i32 2
  %166 = load i16, ptr %165, align 8, !tbaa !143
  %167 = or i16 %166, 1
  store i16 %167, ptr %165, align 8, !tbaa !143
  br label %168

168:                                              ; preds = %158, %162
  %169 = phi i16 [ 3, %162 ], [ 1, %158 ]
  call void @DAG_id_tag_update(ptr noundef %2, i16 noundef signext %169) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590019, ptr noundef %2) #7
  br label %170

170:                                              ; preds = %20, %168, %42, %32, %23, %17
  %171 = phi i32 [ 2, %23 ], [ 2, %32 ], [ 2, %42 ], [ 4, %168 ], [ 2, %17 ], [ 2, %20 ]
  ret i32 %171
}

declare ptr @BKE_constraint_add_for_pose(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @BKE_constraint_add_for_object(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc signext i16 @get_new_constraint_target(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i16 noundef signext %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = tail call ptr @ED_object_active_context(ptr noundef %0) #7
  %9 = tail call ptr @BKE_pose_channel_active(ptr noundef %8) #7
  store ptr null, ptr %2, align 8, !tbaa !46
  store ptr null, ptr %3, align 8, !tbaa !46
  switch i32 %1, label %13 [
    i32 0, label %113
    i32 6, label %113
    i32 5, label %113
    i32 7, label %113
    i32 24, label %113
    i32 18, label %10
    i32 4, label %10
    i32 22, label %10
    i32 20, label %11
    i32 17, label %12
  ]

10:                                               ; preds = %5, %5, %5
  br label %13

11:                                               ; preds = %5
  br label %13

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %5, %12, %11, %10
  %14 = phi i1 [ true, %5 ], [ false, %12 ], [ false, %11 ], [ false, %10 ]
  %15 = phi i1 [ true, %5 ], [ true, %12 ], [ false, %11 ], [ true, %10 ]
  %16 = phi i1 [ true, %5 ], [ true, %12 ], [ true, %11 ], [ false, %10 ]
  %17 = phi i16 [ %4, %5 ], [ %4, %12 ], [ 0, %11 ], [ 0, %10 ]
  %18 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !52
  %20 = icmp eq i16 %19, 25
  %21 = and i1 %14, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %23 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %6) #7
  br label %24

24:                                               ; preds = %34, %22
  %25 = phi ptr [ %6, %22 ], [ %27, %34 ]
  %26 = phi i16 [ 0, %22 ], [ %35, %34 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.CollectionPointerLink, ptr %27, i64 0, i32 2, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !147
  %32 = icmp eq ptr %31, %9
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store ptr %8, ptr %2, align 8, !tbaa !46
  store ptr %31, ptr %3, align 8, !tbaa !46
  br label %34

34:                                               ; preds = %29, %33
  %35 = phi i16 [ 1, %33 ], [ %26, %29 ]
  br i1 %32, label %24, label %36, !llvm.loop !161

36:                                               ; preds = %34, %24
  %37 = phi i16 [ %35, %34 ], [ %26, %24 ]
  call void @BLI_freelistN(ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  br label %38

38:                                               ; preds = %36, %13
  %39 = phi i16 [ %37, %36 ], [ 0, %13 ]
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  %42 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %7) #7
  br label %43

43:                                               ; preds = %69, %41
  %44 = phi ptr [ %7, %41 ], [ %46, %69 ]
  %45 = phi i16 [ %39, %41 ], [ %71, %69 ]
  %46 = load ptr, ptr %44, align 8, !tbaa !46
  %47 = icmp eq ptr %46, null
  br i1 %47, label %72, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.CollectionPointerLink, ptr %46, i64 0, i32 2, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !147
  %51 = icmp eq ptr %50, %8
  br i1 %51, label %69, label %52

52:                                               ; preds = %48
  br i1 %16, label %57, label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 3
  %55 = load i16, ptr %54, align 8, !tbaa !52
  %56 = icmp eq i16 %55, 2
  br i1 %56, label %57, label %69

57:                                               ; preds = %53, %52
  br i1 %15, label %62, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 3
  %60 = load i16, ptr %59, align 8, !tbaa !52
  %61 = icmp eq i16 %60, 1
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %57
  store ptr %50, ptr %2, align 8, !tbaa !46
  br i1 %16, label %69, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 19
  %65 = load ptr, ptr %64, align 8, !tbaa !97
  %66 = getelementptr inbounds %struct.Curve, ptr %65, i64 0, i32 23
  %67 = load i32, ptr %66, align 4, !tbaa !98
  %68 = or i32 %67, 8
  store i32 %68, ptr %66, align 4, !tbaa !98
  br label %69

69:                                               ; preds = %48, %53, %58, %62, %63
  %70 = phi i1 [ false, %63 ], [ false, %62 ], [ true, %58 ], [ true, %53 ], [ true, %48 ]
  %71 = phi i16 [ 1, %63 ], [ 1, %62 ], [ %45, %58 ], [ %45, %53 ], [ %45, %48 ]
  br i1 %70, label %43, label %72, !llvm.loop !162

72:                                               ; preds = %69, %43
  %73 = phi i16 [ %71, %69 ], [ %45, %43 ]
  call void @BLI_freelistN(ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  br label %74

74:                                               ; preds = %72, %38
  %75 = phi i16 [ %73, %72 ], [ %39, %38 ]
  %76 = icmp eq i16 %75, 0
  %77 = icmp ne i16 %17, 0
  %78 = and i1 %77, %76
  br i1 %78, label %79, label %113

79:                                               ; preds = %74
  %80 = call ptr @CTX_data_main(ptr noundef %0) #7
  %81 = call ptr @CTX_data_scene(ptr noundef %0) #7
  %82 = getelementptr inbounds %struct.Scene, ptr %81, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !163
  %84 = call ptr @BKE_object_add(ptr noundef %80, ptr noundef %81, i32 noundef 0) #7
  %85 = load ptr, ptr %82, align 8, !tbaa !163
  %86 = getelementptr inbounds %struct.Base, ptr %83, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !182
  %88 = getelementptr inbounds %struct.Base, ptr %85, i64 0, i32 2
  store i32 %87, ptr %88, align 8, !tbaa !182
  %89 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 52
  store i32 %87, ptr %89, align 8, !tbaa !184
  %90 = icmp eq ptr %9, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %79
  %92 = icmp eq i32 %1, 3
  %93 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 33
  %94 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 47
  br i1 %92, label %95, label %97

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 32
  call void @mul_v3_m4v3(ptr noundef nonnull %93, ptr noundef nonnull %94, ptr noundef nonnull %96) #7
  br label %109

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 31
  call void @mul_v3_m4v3(ptr noundef nonnull %93, ptr noundef nonnull %94, ptr noundef nonnull %98) #7
  br label %109

99:                                               ; preds = %79
  %100 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 33
  %101 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 47, i64 3
  %102 = load float, ptr %101, align 4, !tbaa !142
  store float %102, ptr %100, align 4, !tbaa !142
  %103 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 47, i64 3, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !142
  %105 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 33, i64 1
  store float %104, ptr %105, align 4, !tbaa !142
  %106 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 47, i64 3, i64 2
  %107 = load float, ptr %106, align 4, !tbaa !142
  %108 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 33, i64 2
  store float %107, ptr %108, align 4, !tbaa !142
  br label %109

109:                                              ; preds = %95, %97, %99
  store ptr %83, ptr %82, align 8, !tbaa !163
  %110 = getelementptr inbounds %struct.Base, ptr %83, i64 0, i32 4
  %111 = load i32, ptr %110, align 8, !tbaa !185
  %112 = or i32 %111, 1
  store i32 %112, ptr %110, align 8, !tbaa !185
  store ptr %84, ptr %2, align 8, !tbaa !46
  br label %113

113:                                              ; preds = %74, %109, %5, %5, %5, %5, %5
  %114 = phi i16 [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 1, %109 ], [ %75, %74 ]
  ret i16 %114
}

declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

declare void @uiItemBooleanO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !41, i64 432}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!37, !37, i64 0}
!47 = !{!35, !37, i64 288}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!35, !37, i64 1176}
!52 = !{!35, !40, i64 136}
!53 = !{!54, !37, i64 24}
!54 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !43, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !43, i64 144, !43, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !44, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !44, i64 524, !44, i64 528, !44, i64 532, !37, i64 536}
!55 = distinct !{!55, !49, !50}
!56 = !{!57, !40, i64 26}
!57 = !{!"bConstraint", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !38, i64 28, !38, i64 29, !38, i64 30, !40, i64 94, !44, i64 96, !44, i64 100, !37, i64 104, !44, i64 112, !44, i64 116}
!58 = !{!57, !40, i64 24}
!59 = !{!57, !37, i64 16}
!60 = !{!61, !37, i64 0}
!61 = !{!"bKinematicConstraint", !37, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !38, i64 16, !37, i64 80, !38, i64 88, !44, i64 152, !44, i64 156, !44, i64 160, !38, i64 164, !40, i64 176, !40, i64 178, !44, i64 180}
!62 = !{!61, !37, i64 80}
!63 = !{!64, !37, i64 0}
!64 = !{!"bPivotConstraint", !37, i64 0, !38, i64 8, !38, i64 72, !40, i64 84, !40, i64 86}
!65 = !{!66, !37, i64 32}
!66 = !{!"bActionConstraint", !37, i64 0, !40, i64 8, !40, i64 10, !41, i64 12, !41, i64 16, !44, i64 20, !44, i64 24, !41, i64 28, !37, i64 32, !38, i64 40}
!67 = !{!68, !41, i64 192}
!68 = !{!"bAction", !36, i64 0, !43, i64 120, !43, i64 136, !43, i64 152, !43, i64 168, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196}
!69 = !{!70, !40, i64 22}
!70 = !{!"bFollowPathConstraint", !37, i64 0, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22}
!71 = !{!70, !40, i64 20}
!72 = !{!73, !41, i64 12}
!73 = !{!"bTrackToConstraint", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24}
!74 = !{!73, !41, i64 8}
!75 = !{!76, !41, i64 12}
!76 = !{!"bLockTrackConstraint", !37, i64 0, !41, i64 8, !41, i64 12, !38, i64 16}
!77 = !{!76, !41, i64 8}
!78 = !{!79, !37, i64 8}
!79 = !{!"bSplineIKConstraint", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22}
!80 = !{!79, !40, i64 16}
!81 = !{!79, !40, i64 18}
!82 = !{!79, !40, i64 20}
!83 = !{!84, !41, i64 72}
!84 = !{!"bFollowTrackConstraint", !37, i64 0, !38, i64 8, !41, i64 72, !41, i64 76, !38, i64 80, !37, i64 144, !37, i64 152}
!85 = !{!84, !37, i64 0}
!86 = !{!38, !38, i64 0}
!87 = !{!88, !41, i64 8}
!88 = !{!"bCameraSolverConstraint", !37, i64 0, !41, i64 8, !41, i64 12}
!89 = !{!88, !37, i64 0}
!90 = !{!91, !41, i64 8}
!91 = !{!"bObjectSolverConstraint", !37, i64 0, !41, i64 8, !41, i64 12, !38, i64 16, !38, i64 80, !37, i64 144}
!92 = !{!91, !37, i64 0}
!93 = !{!94, !37, i64 104}
!94 = !{!"bConstraintTypeInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 36, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128}
!95 = !{!96, !37, i64 16}
!96 = !{!"bConstraintTarget", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158}
!97 = !{!35, !37, i64 296}
!98 = !{!99, !41, i64 268}
!99 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !43, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !44, i64 252, !44, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !100, i64 504, !44, i64 512, !44, i64 516, !44, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!100 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!101 = distinct !{!101, !49, !50}
!102 = !{!94, !37, i64 112}
!103 = distinct !{!103, !49, !50}
!104 = !{!105, !37, i64 0}
!105 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !106, i64 152, !40, i64 184}
!106 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!107 = !{!105, !37, i64 8}
!108 = !{!105, !37, i64 24}
!109 = !{!105, !37, i64 48}
!110 = !{!105, !37, i64 32}
!111 = !{!105, !37, i64 72}
!112 = !{!105, !40, i64 184}
!113 = !{!105, !37, i64 88}
!114 = !{i32 0, i32 2}
!115 = !{!116, !44, i64 20}
!116 = !{!"bStretchToConstraint", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !38, i64 40}
!117 = !{!118, !37, i64 0}
!118 = !{!"PointerRNA", !119, i64 0, !37, i64 8, !37, i64 16}
!119 = !{!"", !37, i64 0}
!120 = !{!118, !37, i64 16}
!121 = !{!35, !37, i64 24}
!122 = !{!36, !37, i64 24}
!123 = !{!124, !44, i64 72}
!124 = !{!"bDistLimitConstraint", !37, i64 0, !38, i64 8, !44, i64 72, !44, i64 76, !40, i64 80, !40, i64 82, !41, i64 84}
!125 = !{i32 2, i32 5}
!126 = !{!127, !37, i64 112}
!127 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!128 = !{!127, !37, i64 120}
!129 = !{!70, !37, i64 0}
!130 = !{!99, !37, i64 120}
!131 = !{!132, !37, i64 0}
!132 = !{!"AnimData", !37, i64 0, !37, i64 8, !37, i64 16, !43, i64 24, !37, i64 40, !43, i64 48, !43, i64 64, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !44, i64 92}
!133 = !{!70, !41, i64 16}
!134 = !{!135, !37, i64 48}
!135 = !{!"FCurve", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !43, i64 32, !37, i64 48, !37, i64 56, !41, i64 64, !44, i64 68, !40, i64 72, !40, i64 74, !41, i64 76, !37, i64 80, !41, i64 88, !38, i64 92, !44, i64 104, !44, i64 108}
!136 = !{!135, !37, i64 56}
!137 = !{!135, !37, i64 32}
!138 = !{!139, !37, i64 16}
!139 = !{!"FModifier", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !40, i64 88, !40, i64 90, !44, i64 92, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108}
!140 = !{!141, !37, i64 0}
!141 = !{!"FMod_Generator", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!142 = !{!44, !44, i64 0}
!143 = !{!144, !40, i64 24}
!144 = !{!"bPose", !43, i64 0, !37, i64 16, !40, i64 24, !40, i64 26, !41, i64 28, !41, i64 32, !44, i64 36, !38, i64 40, !38, i64 52, !43, i64 64, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !42, i64 104, !38, i64 152}
!145 = !{!57, !37, i64 0}
!146 = !{!57, !37, i64 8}
!147 = !{!148, !37, i64 32}
!148 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !118, i64 16}
!149 = !{!54, !38, i64 112}
!150 = distinct !{!150, !49, !50}
!151 = distinct !{!151, !49, !50}
!152 = distinct !{!152, !49, !50}
!153 = distinct !{!153, !49, !50}
!154 = !{!105, !37, i64 104}
!155 = distinct !{!155, !49, !50}
!156 = !{i16 0, i16 2}
!157 = distinct !{!157, !49, !50}
!158 = distinct !{!158, !49, !50}
!159 = !{!54, !37, i64 32}
!160 = distinct !{!160, !49, !50}
!161 = distinct !{!161, !49, !50}
!162 = distinct !{!162, !49, !50}
!163 = !{!164, !37, i64 168}
!164 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !165, i64 280, !174, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !175, i64 4400, !176, i64 4416, !179, i64 4600, !37, i64 4608, !180, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !167, i64 4664, !168, i64 4824, !181, i64 4888, !37, i64 4952}
!165 = !{!"RenderData", !166, i64 0, !37, i64 248, !37, i64 256, !169, i64 264, !170, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !171, i64 544, !171, i64 560, !172, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !173, i64 2616, !41, i64 3976, !41, i64 3980}
!166 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !167, i64 24, !168, i64 184}
!167 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!168 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!169 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!170 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!171 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!172 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!173 = !{!"BakeData", !166, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!174 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!175 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!176 = !{!"GameData", !175, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !177, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !178, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!177 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!178 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!179 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!180 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!181 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!182 = !{!183, !41, i64 16}
!183 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!184 = !{!35, !41, i64 944}
!185 = !{!183, !41, i64 24}
