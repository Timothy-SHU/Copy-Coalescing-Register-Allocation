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
%struct.bDistLimitConstraint = type { ptr, [64 x i8], float, float, i16, i16, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bChildOfConstraint = type { ptr, i32, i32, [4 x [4 x float]], [64 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %0) #8
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

; Function Attrs: optsize
declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_constraint_lb(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %6

6:                                                ; preds = %5, %3
  %7 = icmp eq ptr %0, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %7, %8
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef nonnull %1) #8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14, %22
  %19 = phi ptr [ %20, %22 ], [ %16, %14 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %20, i64 0, i32 3
  %24 = tail call i32 @BLI_findindex(ptr noundef nonnull %23, ptr noundef %1) #8
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %18, label %26, !llvm.loop !48

26:                                               ; preds = %22
  br i1 %4, label %28, label %27

27:                                               ; preds = %26
  store ptr %20, ptr %2, align 8, !tbaa !46
  br label %28

28:                                               ; preds = %18, %27, %26, %14, %10, %6
  %29 = phi ptr [ null, %6 ], [ %11, %10 ], [ null, %14 ], [ %23, %26 ], [ %23, %27 ], [ null, %18 ]
  ret ptr %29
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_active_constraint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @get_active_constraints(ptr noundef %0) #9
  %3 = tail call ptr @BKE_constraints_active_get(ptr noundef %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_constraints_active_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @object_test_constraints(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @test_constraints(ptr noundef nonnull %0, ptr noundef null) #9
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !51
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
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call fastcc void @test_constraints(ptr noundef %0, ptr noundef nonnull %18) #9
  br label %23

23:                                               ; preds = %17, %22
  %24 = load ptr, ptr %18, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %17, !llvm.loop !54

26:                                               ; preds = %23, %14, %10, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @test_constraints(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !PGOFuncName !55 {
  %3 = alloca %struct.ListBase, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %303, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  br label %17

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !51
  %12 = freeze i16 %11
  %13 = icmp eq i16 %12, 25
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 3
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  %16 = select i1 %13, ptr %14, ptr %15
  br label %17

17:                                               ; preds = %9, %7
  %18 = phi i1 [ false, %7 ], [ %13, %9 ]
  %19 = phi ptr [ %8, %7 ], [ %16, %9 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %303, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 4
  br label %24

24:                                               ; preds = %22, %300
  %25 = phi ptr [ %20, %22 ], [ %301, %300 ]
  %26 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %25) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.bConstraint, ptr %25, i64 0, i32 4
  %28 = load i16, ptr %27, align 2, !tbaa !56
  %29 = and i16 %28, -5
  store i16 %29, ptr %27, align 2, !tbaa !56
  %30 = getelementptr inbounds %struct.bConstraint, ptr %25, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !58
  switch i16 %31, label %240 [
    i16 3, label %32
    i16 25, label %70
    i16 12, label %94
    i16 4, label %108
    i16 2, label %121
    i16 13, label %132
    i16 22, label %143
    i16 26, label %164
    i16 27, label %201
    i16 28, label %213
  ]

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.bConstraint, ptr %25, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = call zeroext i8 @BKE_object_exists_check(ptr noundef %35) #8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store ptr null, ptr %34, align 8, !tbaa !60
  br label %47

39:                                               ; preds = %32
  %40 = load ptr, ptr %34, align 8, !tbaa !60
  %41 = icmp eq ptr %40, %0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = call ptr @BKE_armature_from_object(ptr noundef nonnull %0) #8
  %44 = getelementptr inbounds %struct.bKinematicConstraint, ptr %34, i64 0, i32 5
  %45 = call ptr @BKE_armature_find_bone_name(ptr noundef %43, ptr noundef nonnull %44) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %38
  %48 = load i16, ptr %27, align 2, !tbaa !56
  %49 = or i16 %48, 4
  store i16 %49, ptr %27, align 2, !tbaa !56
  br label %50

50:                                               ; preds = %47, %39, %42
  %51 = getelementptr inbounds %struct.bKinematicConstraint, ptr %34, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = icmp eq ptr %52, null
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  %55 = call zeroext i8 @BKE_object_exists_check(ptr noundef nonnull %52) #8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store ptr null, ptr %51, align 8, !tbaa !62
  br label %66

58:                                               ; preds = %54
  %59 = load ptr, ptr %51, align 8, !tbaa !62
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = call ptr @BKE_armature_from_object(ptr noundef nonnull %0) #8
  %63 = getelementptr inbounds %struct.bKinematicConstraint, ptr %34, i64 0, i32 7
  %64 = call ptr @BKE_armature_find_bone_name(ptr noundef %62, ptr noundef nonnull %63) #8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %57
  %67 = load i16, ptr %27, align 2, !tbaa !56
  %68 = or i16 %67, 4
  store i16 %68, ptr %27, align 2, !tbaa !56
  br label %69

69:                                               ; preds = %66, %61, %58, %50
  call void @BIK_test_constraint(ptr noundef nonnull %0, ptr noundef nonnull %25) #8
  br label %300

70:                                               ; preds = %24
  %71 = getelementptr inbounds %struct.bConstraint, ptr %25, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !59
  %73 = load ptr, ptr %72, align 8, !tbaa !63
  %74 = icmp eq ptr %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = call zeroext i8 @BKE_object_exists_check(ptr noundef nonnull %73) #8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %72, align 8, !tbaa !63
  br label %83

80:                                               ; preds = %75
  store ptr null, ptr %72, align 8, !tbaa !63
  %81 = load i16, ptr %27, align 2, !tbaa !56
  %82 = or i16 %81, 4
  store i16 %82, ptr %27, align 2, !tbaa !56
  br label %300

83:                                               ; preds = %78, %70
  %84 = phi ptr [ %79, %78 ], [ null, %70 ]
  %85 = icmp eq ptr %84, %0
  br i1 %85, label %86, label %300

86:                                               ; preds = %83
  %87 = call ptr @BKE_armature_from_object(ptr noundef nonnull %0) #8
  %88 = getelementptr inbounds %struct.bPivotConstraint, ptr %72, i64 0, i32 1
  %89 = call ptr @BKE_armature_find_bone_name(ptr noundef %87, ptr noundef nonnull %88) #8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %300

91:                                               ; preds = %86
  %92 = load i16, ptr %27, align 2, !tbaa !56
  %93 = or i16 %92, 4
  store i16 %93, ptr %27, align 2, !tbaa !56
  br label %300

94:                                               ; preds = %24
  %95 = getelementptr inbounds %struct.bConstraint, ptr %25, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !59
  %97 = getelementptr inbounds %struct.bActionConstraint, ptr %96, i64 0, i32 8
  %98 = load ptr, ptr %97, align 8, !tbaa !65
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = or i16 %28, 4
  store i16 %101, ptr %27, align 2, !tbaa !56
  br label %240

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.bAction, ptr %98, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !67
  %105 = icmp eq i32 %104, 16975
  br i1 %105, label %240, label %106

106:                                              ; preds = %102
  store ptr null, ptr %97, align 8, !tbaa !65
  %107 = or i16 %28, 4
  store i16 %107, ptr %27, align 2, !tbaa !56
  br label %240

108:                                              ; preds = %24
  %109 = getelementptr inbounds %struct.bConstraint, ptr %25, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !59
  %111 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %110, i64 0, i32 5
  %112 = load i16, ptr %111, align 2, !tbaa !69
  %113 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %110, i64 0, i32 4
  %114 = load i16, ptr %113, align 4, !tbaa !71
  %115 = icmp eq i16 %112, %114
  %116 = sext i16 %112 to i32
  %117 = add nsw i32 %116, 3
  %118 = sext i16 %114 to i32
  %119 = icmp eq i32 %117, %118
  %120 = or i1 %115, %119
  br i1 %120, label %225, label %240

121:                                              ; preds = %24
  %122 = getelementptr inbounds %struct.bConstraint, ptr %25, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !59
  %124 = getelementptr inbounds %struct.bTrackToConstraint, ptr %123, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !72
  %126 = getelementptr inbounds %struct.bTrackToConstraint, ptr %123, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !74
  %128 = icmp eq i32 %125, %127
  %129 = add nsw i32 %125, 3
  %130 = icmp eq i32 %129, %127
  %131 = or i1 %128, %130
  br i1 %131, label %230, label %240

132:                                              ; preds = %24
  %133 = getelementptr inbounds %struct.bConstraint, ptr %25, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !59
  %135 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !75
  %137 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %134, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !77
  %139 = icmp eq i32 %136, %138
  %140 = add nsw i32 %136, 3
  %141 = icmp eq i32 %140, %138
  %142 = or i1 %139, %141
  br i1 %142, label %235, label %240

143:                                              ; preds = %24
  %144 = getelementptr inbounds %struct.bConstraint, ptr %25, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !59
  %146 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !78
  %148 = icmp eq ptr %147, null
  br i1 %148, label %160, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %145, i64 0, i32 2
  %151 = load i16, ptr %150, align 8, !tbaa !80
  %152 = sext i16 %151 to i32
  %153 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %145, i64 0, i32 3
  %154 = load i16, ptr %153, align 2, !tbaa !81
  %155 = sext i16 %154 to i32
  %156 = add nsw i32 %155, 1
  %157 = icmp eq i32 %156, %152
  br i1 %157, label %240, label %158

158:                                              ; preds = %149
  %159 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %159(ptr noundef nonnull %147) #8
  store ptr null, ptr %146, align 8, !tbaa !78
  br label %160

160:                                              ; preds = %143, %158
  %161 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %145, i64 0, i32 4
  %162 = load i16, ptr %161, align 4, !tbaa !82
  %163 = and i16 %162, -2
  store i16 %163, ptr %161, align 4, !tbaa !82
  br label %240

164:                                              ; preds = %24
  %165 = getelementptr inbounds %struct.bConstraint, ptr %25, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !59
  %167 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %166, i64 0, i32 2
  %168 = load i32, ptr %167, align 8, !tbaa !83
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %240

171:                                              ; preds = %164
  %172 = load ptr, ptr %166, align 8, !tbaa !85
  %173 = icmp eq ptr %172, null
  br i1 %173, label %199, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %166, i64 0, i32 1
  %176 = load i8, ptr %175, align 8, !tbaa !86
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %199, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.MovieClip, ptr %172, i64 0, i32 11
  %180 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %166, i64 0, i32 4
  %181 = load i8, ptr %180, align 8, !tbaa !86
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %178
  %184 = call ptr @BKE_tracking_object_get_named(ptr noundef nonnull %179, ptr noundef nonnull %180) #8
  br label %187

185:                                              ; preds = %178
  %186 = call ptr @BKE_tracking_object_get_camera(ptr noundef nonnull %179) #8
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi ptr [ %184, %183 ], [ %186, %185 ]
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i16, ptr %27, align 2, !tbaa !56
  %192 = or i16 %191, 4
  store i16 %192, ptr %27, align 2, !tbaa !56
  br label %240

193:                                              ; preds = %187
  %194 = call ptr @BKE_tracking_track_get_named(ptr noundef nonnull %179, ptr noundef nonnull %188, ptr noundef nonnull %175) #8
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %240

196:                                              ; preds = %193
  %197 = load i16, ptr %27, align 2, !tbaa !56
  %198 = or i16 %197, 4
  store i16 %198, ptr %27, align 2, !tbaa !56
  br label %240

199:                                              ; preds = %174, %171
  %200 = or i16 %28, 4
  store i16 %200, ptr %27, align 2, !tbaa !56
  br label %240

201:                                              ; preds = %24
  %202 = getelementptr inbounds %struct.bConstraint, ptr %25, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !59
  %204 = getelementptr inbounds %struct.bCameraSolverConstraint, ptr %203, i64 0, i32 1
  %205 = load i32, ptr %204, align 8, !tbaa !87
  %206 = and i32 %205, 1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %240

208:                                              ; preds = %201
  %209 = load ptr, ptr %203, align 8, !tbaa !89
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %240

211:                                              ; preds = %208
  %212 = or i16 %28, 4
  store i16 %212, ptr %27, align 2, !tbaa !56
  br label %240

213:                                              ; preds = %24
  %214 = getelementptr inbounds %struct.bConstraint, ptr %25, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !59
  %216 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %215, i64 0, i32 1
  %217 = load i32, ptr %216, align 8, !tbaa !90
  %218 = and i32 %217, 1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %240

220:                                              ; preds = %213
  %221 = load ptr, ptr %215, align 8, !tbaa !92
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %240

223:                                              ; preds = %220
  %224 = or i16 %28, 4
  store i16 %224, ptr %27, align 2, !tbaa !56
  br label %240

225:                                              ; preds = %108
  %226 = or i16 %28, 4
  %227 = select i1 %115, i16 4, i16 0
  %228 = or disjoint i16 %29, %227
  %229 = select i1 %119, i16 %226, i16 %228
  store i16 %229, ptr %27, align 2, !tbaa !56
  br label %240

230:                                              ; preds = %121
  %231 = or i16 %28, 4
  %232 = select i1 %128, i16 4, i16 0
  %233 = or disjoint i16 %29, %232
  %234 = select i1 %130, i16 %231, i16 %233
  store i16 %234, ptr %27, align 2, !tbaa !56
  br label %240

235:                                              ; preds = %132
  %236 = or i16 %28, 4
  %237 = select i1 %139, i16 4, i16 0
  %238 = or disjoint i16 %29, %237
  %239 = select i1 %141, i16 %236, i16 %238
  store i16 %239, ptr %27, align 2, !tbaa !56
  br label %240

240:                                              ; preds = %235, %132, %230, %121, %225, %108, %213, %220, %223, %24, %201, %208, %211, %164, %199, %193, %196, %190, %149, %160, %100, %106, %102
  %241 = icmp eq ptr %26, null
  br i1 %241, label %300, label %242

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %26, i64 0, i32 8
  %244 = load ptr, ptr %243, align 8, !tbaa !93
  %245 = icmp eq ptr %244, null
  br i1 %245, label %300, label %246

246:                                              ; preds = %242
  %247 = call i32 %244(ptr noundef nonnull %25, ptr noundef nonnull %3) #8
  %248 = load ptr, ptr %3, align 8, !tbaa !46
  %249 = icmp eq ptr %248, null
  br i1 %249, label %295, label %250

250:                                              ; preds = %246, %292
  %251 = phi ptr [ %293, %292 ], [ %248, %246 ]
  %252 = getelementptr inbounds %struct.bConstraintTarget, ptr %251, i64 0, i32 2
  %253 = load ptr, ptr %252, align 8, !tbaa !95
  %254 = call zeroext i8 @BKE_object_exists_check(ptr noundef %253) #8
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  store ptr null, ptr %252, align 8, !tbaa !95
  br label %271

257:                                              ; preds = %250
  %258 = load ptr, ptr %252, align 8, !tbaa !95
  %259 = icmp eq ptr %258, %0
  br i1 %259, label %260, label %274

260:                                              ; preds = %257
  br i1 %18, label %261, label %270

261:                                              ; preds = %260
  %262 = call ptr @BKE_armature_from_object(ptr noundef nonnull %0) #8
  %263 = getelementptr inbounds %struct.bConstraintTarget, ptr %251, i64 0, i32 3
  %264 = call ptr @BKE_armature_find_bone_name(ptr noundef %262, ptr noundef nonnull %263) #8
  %265 = icmp eq ptr %264, null
  br i1 %265, label %271, label %266

266:                                              ; preds = %261
  %267 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %263) #11
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %266
  store i8 0, ptr %263, align 8, !tbaa !86
  br label %271

270:                                              ; preds = %260
  store ptr null, ptr %252, align 8, !tbaa !95
  br label %271

271:                                              ; preds = %261, %256, %270, %269
  %272 = load i16, ptr %27, align 2, !tbaa !56
  %273 = or i16 %272, 4
  store i16 %273, ptr %27, align 2, !tbaa !56
  br label %274

274:                                              ; preds = %271, %257, %266
  %275 = load i16, ptr %30, align 8, !tbaa !58
  switch i16 %275, label %292 [
    i16 4, label %276
    i16 18, label %276
    i16 22, label %276
  ]

276:                                              ; preds = %274, %274, %274
  %277 = load ptr, ptr %252, align 8, !tbaa !95
  %278 = icmp eq ptr %277, null
  br i1 %278, label %292, label %279

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.Object, ptr %277, i64 0, i32 3
  %281 = load i16, ptr %280, align 8, !tbaa !51
  %282 = icmp eq i16 %281, 2
  br i1 %282, label %286, label %283

283:                                              ; preds = %279
  store ptr null, ptr %252, align 8, !tbaa !95
  %284 = load i16, ptr %27, align 2, !tbaa !56
  %285 = or i16 %284, 4
  store i16 %285, ptr %27, align 2, !tbaa !56
  br label %292

286:                                              ; preds = %279
  %287 = getelementptr inbounds %struct.Object, ptr %277, i64 0, i32 19
  %288 = load ptr, ptr %287, align 8, !tbaa !97
  %289 = getelementptr inbounds %struct.Curve, ptr %288, i64 0, i32 23
  %290 = load i32, ptr %289, align 4, !tbaa !98
  %291 = or i32 %290, 8
  store i32 %291, ptr %289, align 4, !tbaa !98
  br label %292

292:                                              ; preds = %274, %283, %286, %276
  %293 = load ptr, ptr %251, align 8, !tbaa !46
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %250, !llvm.loop !101

295:                                              ; preds = %292, %246
  %296 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %26, i64 0, i32 9
  %297 = load ptr, ptr %296, align 8, !tbaa !102
  %298 = icmp eq ptr %297, null
  br i1 %298, label %300, label %299

299:                                              ; preds = %295
  call void %297(ptr noundef nonnull %25, ptr noundef nonnull %3, i8 noundef zeroext 0) #8
  br label %300

300:                                              ; preds = %240, %242, %299, %295, %80, %86, %91, %83, %69
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %301 = load ptr, ptr %25, align 8, !tbaa !46
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %24, !llvm.loop !103

303:                                              ; preds = %300, %17, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call fastcc void @edit_constraint_properties(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stretchto_reset_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !113 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1) #9, !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @stretchto_reset_exec(ptr noundef %0, ptr noundef %1) #9, !range !115
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stretchto_reset_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !116 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #8
  %4 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 15) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bStretchToConstraint, ptr %8, i64 0, i32 4
  store float 0.000000e+00, ptr %11, align 4, !tbaa !117
  tail call void @ED_object_constraint_update(ptr noundef %3) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef null) #8
  br label %12

12:                                               ; preds = %2, %6, %10
  %13 = phi i32 [ 4, %10 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edit_constraint_poll(ptr noundef %0) #0 !PGOFuncName !119 {
  %2 = tail call fastcc i32 @edit_constraint_poll_generic(ptr noundef %0) #9
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edit_constraint_properties(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = tail call ptr @RNA_def_string(ptr noundef %3, ptr noundef nonnull @.str.68, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #8
  %5 = load ptr, ptr %2, align 8, !tbaa !121
  %6 = tail call ptr @RNA_def_enum(ptr noundef %5, ptr noundef nonnull @.str.69, ptr noundef nonnull @constraint_owner_items, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call fastcc void @edit_constraint_properties(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @limitdistance_reset_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !122 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1) #9, !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @limitdistance_reset_exec(ptr noundef %0, ptr noundef %1) #9, !range !115
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @limitdistance_reset_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !123 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #8
  %4 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 14) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %8, i64 0, i32 2
  store float 0.000000e+00, ptr %11, align 8, !tbaa !124
  tail call void @ED_object_constraint_update(ptr noundef %3) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef null) #8
  br label %12

12:                                               ; preds = %2, %6, %10
  %13 = phi i32 [ 4, %10 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call fastcc void @edit_constraint_properties(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @childof_set_inverse_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !126 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1) #9, !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @childof_set_inverse_exec(ptr noundef %0, ptr noundef %1) #9, !range !115
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @childof_set_inverse_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !127 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #8
  %5 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %4, i32 noundef 1) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.69) #8
  br label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !128
  %16 = tail call i32 @RNA_enum_get(ptr noundef %15, ptr noundef nonnull @.str.69) #8
  %17 = icmp eq ptr %13, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %7, %11
  %19 = icmp eq ptr %4, null
  %20 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %21 = select i1 %19, ptr @.str.84, ptr %20
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef nonnull %21) #9
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.85) #8
  br label %27

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.bChildOfConstraint, ptr %13, i64 0, i32 3
  tail call fastcc void @child_get_inverse_matrix(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %26, i32 noundef %16) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %4) #8
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i32 [ 2, %18 ], [ 4, %25 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call fastcc void @edit_constraint_properties(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @childof_clear_inverse_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !131 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1) #9, !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @childof_clear_inverse_exec(ptr noundef %0, ptr noundef %1) #9, !range !115
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @childof_clear_inverse_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !132 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #8
  %4 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 1) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2, %6
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.86) #8
  br label %15

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bChildOfConstraint, ptr %8, i64 0, i32 3
  tail call void @unit_m4(ptr noundef nonnull %14) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %3) #8
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ 2, %10 ], [ 4, %13 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call fastcc void @edit_constraint_properties(ptr noundef nonnull %0) #9
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef -300000, i32 noundef 300000) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !121
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.18, i32 noundef 100, i32 noundef 0, i32 noundef 300000, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 300000) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @followpath_path_animate_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !133 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1) #9, !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @followpath_path_animate_exec(ptr noundef %0, ptr noundef %1) #9, !range !115
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @followpath_path_animate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !134 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #8
  %5 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %4, i32 noundef 4) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !128
  %14 = tail call i32 @RNA_int_get(ptr noundef %13, ptr noundef nonnull @.str.15) #8
  %15 = load ptr, ptr %12, align 8, !tbaa !128
  %16 = tail call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.18) #8
  %17 = icmp eq ptr %11, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %20, i32 noundef 32, ptr noundef nonnull @.str.87) #8
  br label %81

21:                                               ; preds = %10
  %22 = load ptr, ptr %11, align 8, !tbaa !135
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  %27 = getelementptr inbounds %struct.Curve, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !136
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %28, align 8, !tbaa !137
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.bAction, ptr %31, i64 0, i32 1
  %35 = tail call ptr @list_find_fcurve(ptr noundef nonnull %34, ptr noundef nonnull @.str.88, i32 noundef 0) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %24, %30, %33
  %38 = tail call ptr @verify_adt_action(ptr noundef nonnull %26, i16 noundef signext 1) #8
  %39 = tail call ptr @verify_fcurve(ptr noundef %38, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 0, i16 noundef signext 1) #8
  br label %55

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %42, i32 noundef 16, ptr noundef nonnull @.str.89) #8
  br label %81

43:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @RNA_pointer_create(ptr noundef %4, ptr noundef nonnull @RNA_FollowPathConstraint, ptr noundef %5, ptr noundef nonnull %3) #8
  %44 = call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.90) #8
  %45 = call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %3, ptr noundef %44) #8
  %46 = call ptr @verify_adt_action(ptr noundef %4, i16 noundef signext 1) #8
  %47 = call ptr @verify_fcurve(ptr noundef %46, ptr noundef null, ptr noundef null, ptr noundef %45, i32 noundef 0, i16 noundef signext 1) #8
  %48 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %11, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !139
  %50 = or i32 %49, 2
  store i32 %50, ptr %48, align 8, !tbaa !139
  %51 = icmp eq ptr %45, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %43
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %53(ptr noundef nonnull %45) #8
  br label %54

54:                                               ; preds = %52, %43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  br label %55

55:                                               ; preds = %37, %54
  %56 = phi float [ 1.000000e+00, %54 ], [ 1.000000e+02, %37 ]
  %57 = phi ptr [ %47, %54 ], [ %39, %37 ]
  %58 = getelementptr inbounds %struct.FCurve, ptr %57, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !140
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.FCurve, ptr %57, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !142
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.FCurve, ptr %57, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !143
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = call ptr @add_fmodifier(ptr noundef nonnull %66, i32 noundef 1) #8
  %71 = getelementptr inbounds %struct.FModifier, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !144
  %73 = sitofp i32 %16 to float
  %74 = fdiv float %56, %73
  %75 = sub nsw i32 0, %14
  %76 = sitofp i32 %75 to float
  %77 = fmul float %74, %76
  %78 = load ptr, ptr %72, align 8, !tbaa !146
  %79 = getelementptr inbounds float, ptr %78, i64 1
  store float %74, ptr %79, align 4, !tbaa !148
  store float %77, ptr %78, align 4, !tbaa !148
  br label %80

80:                                               ; preds = %69, %65, %61, %55
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %4) #8
  br label %81

81:                                               ; preds = %40, %80, %18
  %82 = phi i32 [ 2, %18 ], [ 4, %80 ], [ 2, %40 ]
  ret i32 %82
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call fastcc void @edit_constraint_properties(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @objectsolver_set_inverse_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !149 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1) #9, !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @objectsolver_set_inverse_exec(ptr noundef %0, ptr noundef %1) #9, !range !115
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @objectsolver_set_inverse_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !150 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @ED_object_active_context(ptr noundef %0) #8
  %5 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %4, i32 noundef 28) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.69) #8
  br label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !128
  %16 = tail call i32 @RNA_enum_get(ptr noundef %15, ptr noundef nonnull @.str.69) #8
  %17 = icmp eq ptr %13, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %7, %11
  %19 = icmp eq ptr %4, null
  %20 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %21 = select i1 %19, ptr @.str.84, ptr %20
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef nonnull %21) #9
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.85) #8
  br label %27

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %13, i64 0, i32 4
  tail call fastcc void @child_get_inverse_matrix(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %26, i32 noundef %16) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %4) #8
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i32 [ 2, %18 ], [ 4, %25 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call fastcc void @edit_constraint_properties(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @objectsolver_clear_inverse_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !151 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1) #9, !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @objectsolver_clear_inverse_exec(ptr noundef %0, ptr noundef %1) #9, !range !115
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @objectsolver_clear_inverse_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !152 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #8
  %4 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 28) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2, %6
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.86) #8
  br label %15

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %8, i64 0, i32 4
  tail call void @unit_m4(ptr noundef nonnull %14) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %3) #8
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ 2, %10 ], [ 4, %13 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_constraint_set_active(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @get_constraint_lb(ptr noundef %0, ptr noundef %1, ptr noundef null) #9
  %4 = icmp ne ptr %3, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bConstraint, ptr %1, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !56
  %10 = and i16 %9, 16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %2
  tail call void @BKE_constraints_active_set(ptr noundef %3, ptr noundef %1) #8
  br label %13

13:                                               ; preds = %7, %12
  ret void
}

; Function Attrs: optsize
declare void @BKE_constraints_active_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_constraint_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BKE_pose_update_constraint_flags(ptr noundef nonnull %3) #8
  br label %6

6:                                                ; preds = %5, %1
  tail call void @object_test_constraints(ptr noundef nonnull %0) #9
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !51
  %9 = icmp eq i16 %8, 25
  %10 = select i1 %9, i16 3, i16 1
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext %10) #8
  ret void
}

; Function Attrs: optsize
declare void @BKE_pose_update_constraint_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_object_constraint_dependency_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @ED_object_constraint_update(ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bPose, ptr %4, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !153
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 8, !tbaa !153
  br label %10

10:                                               ; preds = %6, %2
  tail call void @DAG_relations_tag_update(ptr noundef %0) #8
  ret void
}

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @constraint_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !155 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Constraint) #8
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = call ptr @get_constraint_lb(ptr noundef %4, ptr noundef %6, ptr noundef null) #9
  %8 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !58
  %10 = call zeroext i8 @BKE_constraint_remove(ptr noundef %7, ptr noundef %6) #8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  call void @BKE_constraints_active_set(ptr noundef %7, ptr noundef null) #8
  call void @ED_object_constraint_update(ptr noundef %4) #9
  switch i16 %9, label %16 [
    i16 22, label %13
    i16 3, label %13
  ]

13:                                               ; preds = %12, %12
  %14 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  call void @BIK_clear_data(ptr noundef %15) #8
  br label %16

16:                                               ; preds = %12, %13
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590020, ptr noundef %4) #8
  br label %17

17:                                               ; preds = %2, %16
  %18 = phi i32 [ 4, %16 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @constraint_poll(ptr noundef %0) #0 !PGOFuncName !160 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Constraint) #8
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = icmp ne ptr %3, null
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %4, i1 %7, i1 false
  %9 = zext i1 %8 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call fastcc void @edit_constraint_properties(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @constraint_move_down_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !161 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1) #9, !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @constraint_move_down_exec(ptr noundef %0, ptr noundef %1) #9, !range !115
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @constraint_move_down_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !162 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #8
  %4 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !163
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @get_constraint_lb(ptr noundef %3, ptr noundef nonnull %4, ptr noundef null) #9
  %11 = load ptr, ptr %4, align 8, !tbaa !163
  tail call void @BLI_remlink(ptr noundef %10, ptr noundef nonnull %4) #8
  tail call void @BLI_insertlinkafter(ptr noundef %10, ptr noundef %11, ptr noundef nonnull %4) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %3) #8
  br label %12

12:                                               ; preds = %2, %6, %9
  %13 = phi i32 [ 4, %9 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call fastcc void @edit_constraint_properties(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @constraint_move_up_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !164 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #8
  %4 = tail call fastcc ptr @edit_constraint_property_get(ptr noundef %1, ptr noundef %3, i32 noundef 0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !165
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @get_constraint_lb(ptr noundef %3, ptr noundef nonnull %4, ptr noundef null) #9
  %12 = load ptr, ptr %7, align 8, !tbaa !165
  tail call void @BLI_remlink(ptr noundef %11, ptr noundef nonnull %4) #8
  tail call void @BLI_insertlinkbefore(ptr noundef %11, ptr noundef %12, ptr noundef nonnull %4) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %3) #8
  br label %13

13:                                               ; preds = %2, %6, %10
  %14 = phi i32 [ 4, %10 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @constraint_move_up_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !166 {
  %4 = tail call fastcc i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr noundef %1) #9, !range !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @constraint_move_up_exec(ptr noundef %0, ptr noundef %1) #9, !range !115
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 2, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_constraints_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !167 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %7 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #8
  %8 = load ptr, ptr %3, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %18, %10 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.CollectionPointerLink, ptr %11, i64 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !168
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 3
  call void @BKE_constraints_free(ptr noundef nonnull %14) #8
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 9
  %16 = load i8, ptr %15, align 8, !tbaa !170
  %17 = and i8 %16, -36
  store i8 %17, ptr %15, align 8, !tbaa !170
  %18 = load ptr, ptr %11, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10, !llvm.loop !171

20:                                               ; preds = %10, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @DAG_relations_tag_update(ptr noundef %4) #8
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590020, ptr noundef %6) #8
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_posemode_exclusive(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_constraints_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !172 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %5 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #8
  %6 = load ptr, ptr %3, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.CollectionPointerLink, ptr %9, i64 0, i32 2, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !168
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 106
  call void @BKE_constraints_free(ptr noundef nonnull %12) #8
  call void @DAG_id_tag_update(ptr noundef %11, i16 noundef signext 1) #8
  %13 = load ptr, ptr %9, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !173

15:                                               ; preds = %8, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @DAG_relations_tag_update(ptr noundef %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590020, ptr noundef null) #8
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_object_active_editable(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_constraint_copy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !174 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_active_pose_bone(ptr noundef %0) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.91) #8
  br label %35

14:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %15 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #8
  %16 = load ptr, ptr %3, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 9
  br label %20

20:                                               ; preds = %18, %31
  %21 = phi ptr [ %16, %18 ], [ %32, %31 ]
  %22 = getelementptr inbounds %struct.CollectionPointerLink, ptr %21, i64 0, i32 2, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !168
  %24 = icmp eq ptr %5, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 3
  call void @BKE_constraints_copy(ptr noundef nonnull %26, ptr noundef nonnull %8, i8 noundef zeroext 1) #8
  %27 = load i8, ptr %19, align 8, !tbaa !170
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 9
  %29 = load i8, ptr %28, align 8, !tbaa !170
  %30 = or i8 %29, %27
  store i8 %30, ptr %28, align 8, !tbaa !170
  br label %31

31:                                               ; preds = %25, %20
  %32 = load ptr, ptr %21, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %20, !llvm.loop !175

34:                                               ; preds = %31, %14
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @DAG_relations_tag_update(ptr noundef %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef null) #8
  br label %35

35:                                               ; preds = %34, %11
  %36 = phi i32 [ 2, %11 ], [ 4, %34 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_constraint_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !176 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %5 = tail call ptr @ED_object_active_context(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %6 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %3) #8
  %7 = load ptr, ptr %3, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 106
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi ptr [ %7, %9 ], [ %19, %18 ]
  %13 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !168
  %15 = icmp eq ptr %5, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 106
  call void @BKE_constraints_copy(ptr noundef nonnull %17, ptr noundef nonnull %10, i8 noundef zeroext 1) #8
  call void @DAG_id_tag_update(ptr noundef %14, i16 noundef signext 2) #8
  br label %18

18:                                               ; preds = %16, %11
  %19 = load ptr, ptr %12, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !llvm.loop !177

21:                                               ; preds = %18, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @DAG_relations_tag_update(ptr noundef %4) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590019, ptr noundef null) #8
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.49, ptr noundef nonnull @constraint_type_items, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !178
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_constraint_add_exec(ptr noundef %0, ptr noundef readonly %1) #0 !PGOFuncName !179 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.49) #8
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.92) #8
  br label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 2
  %13 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @.str.62) #11
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 106
  %17 = tail call fastcc i32 @constraint_add_exec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %16, i32 noundef %6, i8 noundef zeroext %15) #9, !range !115
  br label %18

18:                                               ; preds = %11, %8
  %19 = phi i32 [ %17, %11 ], [ 2, %8 ]
  ret i32 %19
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.49, ptr noundef nonnull @constraint_type_items, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !178
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.49, ptr noundef nonnull @constraint_type_items, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !178
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_constraint_add_exec(ptr noundef %0, ptr noundef readonly %1) #0 !PGOFuncName !180 {
  %3 = tail call ptr @ED_object_active_context(ptr noundef %0) #8
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.49) #8
  %8 = icmp eq ptr %4, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.92) #8
  br label %19

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 2
  %14 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.62) #11
  %15 = icmp ne ptr %14, null
  %16 = zext i1 %15 to i8
  %17 = tail call ptr @get_active_constraints(ptr noundef nonnull %4) #9
  %18 = tail call fastcc i32 @constraint_add_exec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef %17, i32 noundef %7, i8 noundef zeroext %16) #9, !range !115
  br label %19

19:                                               ; preds = %12, %9
  %20 = phi i32 [ %18, %12 ], [ 2, %9 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.49, ptr noundef nonnull @constraint_type_items, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !178
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.62, i32 noundef 1, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_ik_add_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !181 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %7 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %6) #8
  %8 = tail call ptr @BKE_pose_channel_active(ptr noundef %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store ptr null, ptr %5, align 8, !tbaa !46
  %9 = icmp eq ptr %7, null
  %10 = icmp eq ptr %8, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.97) #8
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
  br i1 %24, label %25, label %17, !llvm.loop !182

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.98) #8
  br label %40

28:                                               ; preds = %17
  %29 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.99, i32 noundef 0) #8
  %30 = tail call ptr @uiPupMenuLayout(ptr noundef %29) #8
  %31 = call fastcc signext i16 @get_new_constraint_target(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext 0) #9, !range !183
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %5, align 8, !tbaa !46
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @uiItemBooleanO(ptr noundef %30, ptr noundef nonnull @.str.100, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 1) #8
  br label %39

37:                                               ; preds = %33
  tail call void @uiItemBooleanO(ptr noundef %30, ptr noundef nonnull @.str.101, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 1) #8
  br label %39

38:                                               ; preds = %28
  tail call void @uiItemBooleanO(ptr noundef %30, ptr noundef nonnull @.str.102, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 1) #8
  tail call void @uiItemBooleanO(ptr noundef %30, ptr noundef nonnull @.str.103, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 0) #8
  br label %39

39:                                               ; preds = %36, %37, %38
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %29) #8
  br label %40

40:                                               ; preds = %39, %25, %12
  %41 = phi i32 [ 2, %12 ], [ 2, %25 ], [ 32, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_ik_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !184 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.62) #8
  %7 = trunc i32 %6 to i8
  %8 = tail call ptr @get_active_constraints(ptr noundef %3) #9
  %9 = tail call fastcc i32 @constraint_add_exec(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %8, i32 noundef 3, i8 noundef zeroext %7) #9, !range !115
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_ik_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !185 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %5 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %4) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %6 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #8
  %7 = load ptr, ptr %3, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %2, %26
  %10 = phi ptr [ %30, %26 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.CollectionPointerLink, ptr %10, i64 0, i32 2, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %9, %24
  %17 = phi ptr [ %18, %24 ], [ %14, %9 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !163
  %19 = getelementptr inbounds %struct.bConstraint, ptr %17, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !58
  %21 = icmp eq i16 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call zeroext i8 @BKE_constraint_remove(ptr noundef nonnull %13, ptr noundef nonnull %17) #8
  br label %24

24:                                               ; preds = %16, %22
  %25 = icmp eq ptr %18, null
  br i1 %25, label %26, label %16, !llvm.loop !186

26:                                               ; preds = %24, %9
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 9
  %28 = load i8, ptr %27, align 8, !tbaa !170
  %29 = and i8 %28, -10
  store i8 %29, ptr %27, align 8, !tbaa !170
  %30 = load ptr, ptr %10, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9, !llvm.loop !187

32:                                               ; preds = %26, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590020, ptr noundef %5) #8
  ret i32 4
}

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare zeroext i8 @BKE_object_exists_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_armature_find_bone_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_armature_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BIK_test_constraint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_named(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_camera(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @edit_constraint_invoke_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !188 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Constraint) #8
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call ptr @ED_object_active_context(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %11, ptr noundef nonnull @.str.68) #8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %10, align 8, !tbaa !128
  %16 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %15, ptr noundef nonnull @.str.69) #8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14, %8
  %19 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !159
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %10, align 8, !tbaa !128
  %24 = getelementptr inbounds %struct.bConstraint, ptr %20, i64 0, i32 7
  call void @RNA_string_set(ptr noundef %23, ptr noundef nonnull @.str.68, ptr noundef nonnull %24) #8
  %25 = call ptr @get_constraint_lb(ptr noundef %9, ptr noundef nonnull %20, ptr noundef null) #9
  %26 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 106
  %27 = icmp ne ptr %26, %25
  %28 = load ptr, ptr %10, align 8, !tbaa !128
  %29 = zext i1 %27 to i32
  call void @RNA_enum_set(ptr noundef %28, ptr noundef nonnull @.str.69, i32 noundef %29) #8
  br label %30

30:                                               ; preds = %22, %18, %14
  %31 = phi i32 [ 1, %14 ], [ 0, %18 ], [ 1, %22 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i32 %31
}

; Function Attrs: optsize
declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_object_active_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @edit_constraint_property_get(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !189 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.69) #8
  %8 = load ptr, ptr %5, align 8, !tbaa !128
  call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.68, ptr noundef nonnull %4) #8
  switch i32 %7, label %15 [
    i32 0, label %9
    i32 1, label %11
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  br label %17

11:                                               ; preds = %3
  %12 = call ptr @BKE_pose_channel_active(ptr noundef %1) #8
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 3
  br i1 %13, label %29, label %17

15:                                               ; preds = %3
  %16 = call ptr @get_active_constraints(ptr noundef %1) #9
  br label %17

17:                                               ; preds = %15, %11, %9
  %18 = phi ptr [ %10, %9 ], [ %14, %11 ], [ %16, %15 ]
  %19 = call ptr @BKE_constraints_find_name(ptr noundef %18, ptr noundef nonnull %4) #8
  %20 = icmp ne ptr %19, null
  %21 = icmp ne i32 %2, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.bConstraint, ptr %19, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !58
  %26 = sext i16 %25 to i32
  %27 = icmp eq i32 %26, %2
  %28 = select i1 %27, ptr %19, ptr null
  br label %29

29:                                               ; preds = %17, %23, %11
  %30 = phi ptr [ null, %11 ], [ %28, %23 ], [ %19, %17 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  ret ptr %30
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_constraints_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @edit_constraint_poll_generic(ptr noundef %0) unnamed_addr #0 !PGOFuncName !190 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.68, ptr noundef nonnull @RNA_Constraint) #8
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call ptr @ED_object_active_context(ptr noundef %0) #8
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %8, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !191
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8, !tbaa !156
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !192
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %14, %21, %12, %7
  %26 = phi ptr [ @.str.70, %7 ], [ @.str.71, %12 ], [ @.str.72, %21 ], [ @.str.72, %14 ]
  call void @CTX_wm_operator_poll_msg_set(ptr noundef %0, ptr noundef nonnull %26) #8
  br label %27

27:                                               ; preds = %25, %18, %21
  %28 = phi i32 [ 1, %21 ], [ 1, %18 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  ret i32 %28
}

; Function Attrs: optsize
declare void @CTX_wm_operator_poll_msg_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @child_get_inverse_matrix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !193 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca %struct.Object, align 8
  tail call void @unit_m4(ptr noundef %3) #8
  %10 = icmp ne i32 %4, 1
  %11 = icmp eq ptr %1, null
  %12 = or i1 %11, %10
  br i1 %12, label %34, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %1) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #10
  tail call void @BKE_pose_where_is(ptr noundef %0, ptr noundef nonnull %1) #8
  %21 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %21) #8
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 3
  %23 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 3, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !194
  %25 = getelementptr inbounds %struct.bConstraint, ptr %2, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !165
  store ptr %26, ptr %23, align 8, !tbaa !194
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr %22, ptr %26
  store ptr null, ptr %28, align 8, !tbaa !46
  call void @BKE_pose_where_is(ptr noundef %0, ptr noundef nonnull %1) #8
  %29 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %21) #8
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6) #8
  %30 = call zeroext i8 @invert_m4_m4(ptr noundef %3, ptr noundef nonnull %7) #8
  store ptr %24, ptr %23, align 8, !tbaa !194
  %31 = load ptr, ptr %25, align 8, !tbaa !165
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr %22, ptr %31
  store ptr %2, ptr %33, align 8, !tbaa !46
  call void @BKE_pose_where_is(ptr noundef %0, ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  br label %41

34:                                               ; preds = %5
  %35 = icmp eq i32 %4, 0
  %36 = icmp ne ptr %1, null
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 1424, ptr nonnull %9) #10
  call void @BKE_object_workob_calc_parent(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %9) #8
  %39 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  %40 = call zeroext i8 @invert_m4_m4(ptr noundef %3, ptr noundef nonnull %39) #8
  call void @llvm.lifetime.end.p0(i64 1424, ptr nonnull %9) #10
  br label %41

41:                                               ; preds = %20, %17, %13, %38, %34
  ret void
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_workob_calc_parent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @list_find_fcurve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @verify_adt_action(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @verify_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_fmodifier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_constraint_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BIK_clear_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_pose_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_constraints_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_pose_bone(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_constraints_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @constraint_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef readnone %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !195 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %10 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 106
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @BKE_pose_channel_active(ptr noundef %2) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %17, i32 noundef 32, ptr noundef nonnull @.str.93) #8
  br label %79

18:                                               ; preds = %6, %12
  %19 = phi ptr [ %13, %12 ], [ null, %6 ]
  switch i32 %4, label %40 [
    i32 0, label %79
    i32 17, label %20
    i32 3, label %24
    i32 22, label %32
  ]

20:                                               ; preds = %18
  br i1 %11, label %40, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.94) #8
  br label %79

24:                                               ; preds = %18
  %25 = icmp ne ptr %19, null
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 3
  %27 = icmp eq ptr %26, %3
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %31, i32 noundef 32, ptr noundef nonnull @.str.95) #8
  br label %79

32:                                               ; preds = %18
  %33 = icmp ne ptr %19, null
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 3
  %35 = icmp eq ptr %34, %3
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !130
  tail call void @BKE_report(ptr noundef %39, i32 noundef 32, ptr noundef nonnull @.str.96) #8
  br label %79

40:                                               ; preds = %20, %18
  %41 = icmp eq ptr %19, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32, %24, %40
  %43 = trunc i32 %4 to i16
  %44 = tail call ptr @BKE_constraint_add_for_pose(ptr noundef %2, ptr noundef nonnull %19, ptr noundef null, i16 noundef signext %43) #8
  br label %48

45:                                               ; preds = %40
  %46 = trunc i32 %4 to i16
  %47 = tail call ptr @BKE_constraint_add_for_object(ptr noundef %2, ptr noundef null, i16 noundef signext %46) #8
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ true, %42 ], [ false, %45 ]
  %50 = phi ptr [ %44, %42 ], [ %47, %45 ]
  %51 = icmp eq i8 %5, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  store ptr null, ptr %7, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store ptr null, ptr %8, align 8, !tbaa !46
  %53 = call fastcc signext i16 @get_new_constraint_target(ptr noundef %0, i32 noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %8, i16 noundef signext 1) #9, !range !183
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %8, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  %58 = load ptr, ptr %7, align 8, !tbaa !46
  %59 = getelementptr inbounds %struct.bPoseChannel, ptr %56, i64 0, i32 4
  %60 = select i1 %57, ptr @.str.51, ptr %59
  tail call fastcc void @set_constraint_nth_target(ptr noundef %50, ptr noundef %58, ptr noundef nonnull %60) #9
  br label %61

61:                                               ; preds = %55, %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %62

62:                                               ; preds = %48, %61
  tail call void @object_test_constraints(ptr noundef %2) #9
  br i1 %49, label %63, label %66

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %65 = load ptr, ptr %64, align 8, !tbaa !47
  tail call void @BKE_pose_update_constraint_flags(ptr noundef %65) #8
  br label %66

66:                                               ; preds = %63, %62
  tail call void @DAG_relations_tag_update(ptr noundef %9) #8
  %67 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %68 = load i16, ptr %67, align 8, !tbaa !51
  %69 = icmp eq i16 %68, 25
  %70 = and i1 %49, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %73 = load ptr, ptr %72, align 8, !tbaa !47
  %74 = getelementptr inbounds %struct.bPose, ptr %73, i64 0, i32 2
  %75 = load i16, ptr %74, align 8, !tbaa !153
  %76 = or i16 %75, 1
  store i16 %76, ptr %74, align 8, !tbaa !153
  br label %77

77:                                               ; preds = %66, %71
  %78 = phi i16 [ 3, %71 ], [ 1, %66 ]
  tail call void @DAG_id_tag_update(ptr noundef nonnull %2, i16 noundef signext %78) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590019, ptr noundef nonnull %2) #8
  br label %79

79:                                               ; preds = %18, %77, %37, %29, %21, %15
  %80 = phi i32 [ 2, %21 ], [ 2, %29 ], [ 2, %37 ], [ 4, %77 ], [ 2, %15 ], [ 2, %18 ]
  ret i32 %80
}

; Function Attrs: optsize
declare ptr @BKE_constraint_add_for_pose(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_constraint_add_for_object(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @get_new_constraint_target(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i16 noundef signext %4) unnamed_addr #0 !PGOFuncName !196 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = tail call ptr @ED_object_active_context(ptr noundef %0) #8
  %9 = tail call ptr @BKE_pose_channel_active(ptr noundef %8) #8
  store ptr null, ptr %2, align 8, !tbaa !46
  store ptr null, ptr %3, align 8, !tbaa !46
  switch i32 %1, label %12 [
    i32 0, label %90
    i32 6, label %90
    i32 5, label %90
    i32 7, label %90
    i32 24, label %90
    i32 18, label %28
    i32 4, label %28
    i32 22, label %28
    i32 20, label %10
    i32 17, label %11
  ]

10:                                               ; preds = %5
  br label %28

11:                                               ; preds = %5
  br label %28

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !51
  %15 = icmp eq i16 %14, 25
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  %17 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %6) #8
  br label %18

18:                                               ; preds = %22, %16
  %19 = phi ptr [ %6, %16 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.CollectionPointerLink, ptr %20, i64 0, i32 2, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !168
  %25 = icmp eq ptr %24, %9
  br i1 %25, label %18, label %26, !llvm.loop !197

26:                                               ; preds = %22
  store ptr %8, ptr %2, align 8, !tbaa !46
  store ptr %24, ptr %3, align 8, !tbaa !46
  call void @BLI_freelistN(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %90

27:                                               ; preds = %18
  call void @BLI_freelistN(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %28

28:                                               ; preds = %27, %5, %5, %5, %10, %11, %12
  %29 = phi i1 [ true, %27 ], [ true, %12 ], [ false, %10 ], [ true, %11 ], [ true, %5 ], [ true, %5 ], [ true, %5 ]
  %30 = phi i1 [ true, %27 ], [ true, %12 ], [ true, %10 ], [ true, %11 ], [ false, %5 ], [ false, %5 ], [ false, %5 ]
  %31 = phi i16 [ %4, %27 ], [ %4, %12 ], [ 0, %10 ], [ %4, %11 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  %32 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %7) #8
  %33 = load ptr, ptr %7, align 8, !tbaa !46
  %34 = icmp eq ptr %33, null
  br i1 %34, label %61, label %35

35:                                               ; preds = %28, %57
  %36 = phi ptr [ %58, %57 ], [ %33, %28 ]
  %37 = getelementptr inbounds %struct.CollectionPointerLink, ptr %36, i64 0, i32 2, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !168
  %39 = icmp eq ptr %38, %8
  br i1 %39, label %57, label %40

40:                                               ; preds = %35
  br i1 %30, label %45, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 3
  %43 = load i16, ptr %42, align 8, !tbaa !51
  %44 = icmp eq i16 %43, 2
  br i1 %44, label %45, label %57

45:                                               ; preds = %41, %40
  br i1 %29, label %50, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 3
  %48 = load i16, ptr %47, align 8, !tbaa !51
  %49 = icmp eq i16 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %46, %45
  store ptr %38, ptr %2, align 8, !tbaa !46
  br i1 %30, label %60, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !97
  %54 = getelementptr inbounds %struct.Curve, ptr %53, i64 0, i32 23
  %55 = load i32, ptr %54, align 4, !tbaa !98
  %56 = or i32 %55, 8
  store i32 %56, ptr %54, align 4, !tbaa !98
  br label %60

57:                                               ; preds = %35, %41, %46
  %58 = load ptr, ptr %36, align 8, !tbaa !46
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %35, !llvm.loop !198

60:                                               ; preds = %51, %50
  call void @BLI_freelistN(ptr noundef nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  br label %90

61:                                               ; preds = %57, %28
  call void @BLI_freelistN(ptr noundef nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  %62 = icmp eq i16 %31, 0
  br i1 %62, label %90, label %63

63:                                               ; preds = %61
  %64 = call ptr @CTX_data_main(ptr noundef %0) #8
  %65 = call ptr @CTX_data_scene(ptr noundef %0) #8
  %66 = getelementptr inbounds %struct.Scene, ptr %65, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !199
  %68 = call ptr @BKE_object_add(ptr noundef %64, ptr noundef %65, i32 noundef 0) #8
  %69 = load ptr, ptr %66, align 8, !tbaa !199
  %70 = getelementptr inbounds %struct.Base, ptr %67, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !218
  %72 = getelementptr inbounds %struct.Base, ptr %69, i64 0, i32 2
  store i32 %71, ptr %72, align 8, !tbaa !218
  %73 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 52
  store i32 %71, ptr %73, align 8, !tbaa !220
  %74 = icmp eq ptr %9, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %63
  %76 = icmp eq i32 %1, 3
  %77 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 33
  %78 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 47
  br i1 %76, label %79, label %81

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 32
  call void @mul_v3_m4v3(ptr noundef nonnull %77, ptr noundef nonnull %78, ptr noundef nonnull %80) #8
  br label %86

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 31
  call void @mul_v3_m4v3(ptr noundef nonnull %77, ptr noundef nonnull %78, ptr noundef nonnull %82) #8
  br label %86

83:                                               ; preds = %63
  %84 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 33
  %85 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 47, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %84, ptr noundef nonnull %85) #9
  br label %86

86:                                               ; preds = %79, %81, %83
  store ptr %67, ptr %66, align 8, !tbaa !199
  %87 = getelementptr inbounds %struct.Base, ptr %67, i64 0, i32 4
  %88 = load i32, ptr %87, align 8, !tbaa !221
  %89 = or i32 %88, 1
  store i32 %89, ptr %87, align 8, !tbaa !221
  store ptr %68, ptr %2, align 8, !tbaa !46
  br label %90

90:                                               ; preds = %60, %26, %61, %86, %5, %5, %5, %5, %5
  %91 = phi i16 [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 0, %5 ], [ 1, %86 ], [ 0, %61 ], [ 1, %26 ], [ 1, %60 ]
  ret i16 %91
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_constraint_nth_target(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !222 {
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %5, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %7
  %12 = call i32 %9(ptr noundef %0, ptr noundef nonnull %4) #8
  %13 = call i32 @BLI_countlist(ptr noundef nonnull %4) #8
  %14 = add nsw i32 %13, -1
  %15 = icmp sgt i32 %13, 0
  %16 = select i1 %15, i32 0, i32 %14
  %17 = load ptr, ptr %4, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %23

19:                                               ; preds = %23
  %20 = add nuw nsw i32 %25, 1
  %21 = load ptr, ptr %24, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23, !llvm.loop !223

23:                                               ; preds = %11, %19
  %24 = phi ptr [ %21, %19 ], [ %17, %11 ]
  %25 = phi i32 [ %20, %19 ], [ 0, %11 ]
  %26 = icmp eq i32 %25, %16
  br i1 %26, label %27, label %19

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bConstraintTarget, ptr %24, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.bConstraintTarget, ptr %24, i64 0, i32 3
  %30 = call ptr @BLI_strncpy(ptr noundef nonnull %29, ptr noundef %2, i64 noundef 64) #8
  br label %31

31:                                               ; preds = %19, %11, %27
  %32 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %5, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !102
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  call void %33(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 0) #8
  br label %36

36:                                               ; preds = %31, %35, %7, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret void
}

; Function Attrs: optsize
declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !224 {
  %3 = load float, ptr %1, align 4, !tbaa !148
  store float %3, ptr %0, align 4, !tbaa !148
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !148
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !148
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !148
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !148
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemBooleanO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize willreturn memory(read) }

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
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!35, !37, i64 1176}
!51 = !{!35, !40, i64 136}
!52 = !{!53, !37, i64 24}
!53 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !43, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !43, i64 144, !43, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !44, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !44, i64 524, !44, i64 528, !44, i64 532, !37, i64 536}
!54 = distinct !{!54, !49}
!55 = !{!"object_constraint.c:test_constraints"}
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
!101 = distinct !{!101, !49}
!102 = !{!94, !37, i64 112}
!103 = distinct !{!103, !49}
!104 = !{!105, !37, i64 0}
!105 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !106, i64 152, !40, i64 184}
!106 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!107 = !{!105, !37, i64 8}
!108 = !{!105, !37, i64 24}
!109 = !{!105, !37, i64 48}
!110 = !{!105, !37, i64 32}
!111 = !{!105, !37, i64 72}
!112 = !{!105, !40, i64 184}
!113 = !{!"object_constraint.c:stretchto_reset_invoke"}
!114 = !{i32 0, i32 2}
!115 = !{i32 2, i32 5}
!116 = !{!"object_constraint.c:stretchto_reset_exec"}
!117 = !{!118, !44, i64 20}
!118 = !{!"bStretchToConstraint", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !38, i64 40}
!119 = !{!"object_constraint.c:edit_constraint_poll"}
!120 = !{!"object_constraint.c:edit_constraint_properties"}
!121 = !{!105, !37, i64 88}
!122 = !{!"object_constraint.c:limitdistance_reset_invoke"}
!123 = !{!"object_constraint.c:limitdistance_reset_exec"}
!124 = !{!125, !44, i64 72}
!125 = !{!"bDistLimitConstraint", !37, i64 0, !38, i64 8, !44, i64 72, !44, i64 76, !40, i64 80, !40, i64 82, !41, i64 84}
!126 = !{!"object_constraint.c:childof_set_inverse_invoke"}
!127 = !{!"object_constraint.c:childof_set_inverse_exec"}
!128 = !{!129, !37, i64 112}
!129 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!130 = !{!129, !37, i64 120}
!131 = !{!"object_constraint.c:childof_clear_inverse_invoke"}
!132 = !{!"object_constraint.c:childof_clear_inverse_exec"}
!133 = !{!"object_constraint.c:followpath_path_animate_invoke"}
!134 = !{!"object_constraint.c:followpath_path_animate_exec"}
!135 = !{!70, !37, i64 0}
!136 = !{!99, !37, i64 120}
!137 = !{!138, !37, i64 0}
!138 = !{!"AnimData", !37, i64 0, !37, i64 8, !37, i64 16, !43, i64 24, !37, i64 40, !43, i64 48, !43, i64 64, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !44, i64 92}
!139 = !{!70, !41, i64 16}
!140 = !{!141, !37, i64 48}
!141 = !{!"FCurve", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !43, i64 32, !37, i64 48, !37, i64 56, !41, i64 64, !44, i64 68, !40, i64 72, !40, i64 74, !41, i64 76, !37, i64 80, !41, i64 88, !38, i64 92, !44, i64 104, !44, i64 108}
!142 = !{!141, !37, i64 56}
!143 = !{!141, !37, i64 32}
!144 = !{!145, !37, i64 16}
!145 = !{!"FModifier", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !40, i64 88, !40, i64 90, !44, i64 92, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108}
!146 = !{!147, !37, i64 0}
!147 = !{!"FMod_Generator", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!148 = !{!44, !44, i64 0}
!149 = !{!"object_constraint.c:objectsolver_set_inverse_invoke"}
!150 = !{!"object_constraint.c:objectsolver_set_inverse_exec"}
!151 = !{!"object_constraint.c:objectsolver_clear_inverse_invoke"}
!152 = !{!"object_constraint.c:objectsolver_clear_inverse_exec"}
!153 = !{!154, !40, i64 24}
!154 = !{!"bPose", !43, i64 0, !37, i64 16, !40, i64 24, !40, i64 26, !41, i64 28, !41, i64 32, !44, i64 36, !38, i64 40, !38, i64 52, !43, i64 64, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !42, i64 104, !38, i64 152}
!155 = !{!"object_constraint.c:constraint_delete_exec"}
!156 = !{!157, !37, i64 0}
!157 = !{!"PointerRNA", !158, i64 0, !37, i64 8, !37, i64 16}
!158 = !{!"", !37, i64 0}
!159 = !{!157, !37, i64 16}
!160 = !{!"object_constraint.c:constraint_poll"}
!161 = !{!"object_constraint.c:constraint_move_down_invoke"}
!162 = !{!"object_constraint.c:constraint_move_down_exec"}
!163 = !{!57, !37, i64 0}
!164 = !{!"object_constraint.c:constraint_move_up_exec"}
!165 = !{!57, !37, i64 8}
!166 = !{!"object_constraint.c:constraint_move_up_invoke"}
!167 = !{!"object_constraint.c:pose_constraints_clear_exec"}
!168 = !{!169, !37, i64 32}
!169 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !157, i64 16}
!170 = !{!53, !38, i64 112}
!171 = distinct !{!171, !49}
!172 = !{!"object_constraint.c:object_constraints_clear_exec"}
!173 = distinct !{!173, !49}
!174 = !{!"object_constraint.c:pose_constraint_copy_exec"}
!175 = distinct !{!175, !49}
!176 = !{!"object_constraint.c:object_constraint_copy_exec"}
!177 = distinct !{!177, !49}
!178 = !{!105, !37, i64 104}
!179 = !{!"object_constraint.c:object_constraint_add_exec"}
!180 = !{!"object_constraint.c:pose_constraint_add_exec"}
!181 = !{!"object_constraint.c:pose_ik_add_invoke"}
!182 = distinct !{!182, !49}
!183 = !{i16 0, i16 2}
!184 = !{!"object_constraint.c:pose_ik_add_exec"}
!185 = !{!"object_constraint.c:pose_ik_clear_exec"}
!186 = distinct !{!186, !49}
!187 = distinct !{!187, !49}
!188 = !{!"object_constraint.c:edit_constraint_invoke_properties"}
!189 = !{!"object_constraint.c:edit_constraint_property_get"}
!190 = !{!"object_constraint.c:edit_constraint_poll_generic"}
!191 = !{!35, !37, i64 24}
!192 = !{!36, !37, i64 24}
!193 = !{!"object_constraint.c:child_get_inverse_matrix"}
!194 = !{!53, !37, i64 32}
!195 = !{!"object_constraint.c:constraint_add_exec"}
!196 = !{!"object_constraint.c:get_new_constraint_target"}
!197 = distinct !{!197, !49}
!198 = distinct !{!198, !49}
!199 = !{!200, !37, i64 168}
!200 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !201, i64 280, !210, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !211, i64 4400, !212, i64 4416, !215, i64 4600, !37, i64 4608, !216, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !203, i64 4664, !204, i64 4824, !217, i64 4888, !37, i64 4952}
!201 = !{!"RenderData", !202, i64 0, !37, i64 248, !37, i64 256, !205, i64 264, !206, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !207, i64 544, !207, i64 560, !208, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !209, i64 2616, !41, i64 3976, !41, i64 3980}
!202 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !203, i64 24, !204, i64 184}
!203 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!204 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!205 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!206 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!207 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!208 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!209 = !{!"BakeData", !202, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!210 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!211 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!212 = !{!"GameData", !211, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !213, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !214, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!213 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!214 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!215 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!216 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!217 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!218 = !{!219, !41, i64 16}
!219 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!220 = !{!35, !41, i64 944}
!221 = !{!219, !41, i64 24}
!222 = !{!"object_constraint.c:set_constraint_nth_target"}
!223 = distinct !{!223, !49}
!224 = !{!"object_constraint.c:copy_v3_v3"}
