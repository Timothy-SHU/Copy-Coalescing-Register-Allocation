; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_constraint_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_constraint_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.bChildOfConstraint = type { ptr, i32, i32, [4 x [4 x float]], [64 x i8] }
%struct.bPythonConstraint = type { ptr, ptr, i32, i32, %struct.ListBase, ptr, [64 x i8] }
%struct.bStretchToConstraint = type { ptr, i32, i32, i32, float, float, float, float, float, [64 x i8] }
%struct.bFollowPathConstraint = type { ptr, float, float, i32, i16, i16 }
%struct.bLockTrackConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.bActionConstraint = type { ptr, i16, i16, i32, i32, float, float, i32, ptr, [64 x i8] }
%struct.bSizeLikeConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.bSameVolumeConstraint = type { i32, float }
%struct.bLocateLikeConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.bRotateLikeConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.bTransLikeConstraint = type { ptr, [64 x i8] }
%struct.bMinMaxConstraint = type { ptr, i32, float, i32, i16, i16, i16, i16, [3 x float], [64 x i8] }
%struct.bTrackToConstraint = type { ptr, i32, i32, i32, i32, [64 x i8] }
%struct.bKinematicConstraint = type { ptr, i16, i16, i16, i16, [64 x i8], ptr, [64 x i8], float, float, float, [3 x float], i16, i16, float }
%struct.bRigidBodyJointConstraint = type { ptr, ptr, i32, float, float, float, float, float, float, [6 x float], [6 x float], float, i16, i16, i16, i16 }
%struct.bClampToConstraint = type { ptr, i32, i32 }
%struct.bDistLimitConstraint = type { ptr, [64 x i8], float, float, i16, i16, i32 }
%struct.bSizeLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.bRotLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.bLocLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.bTransformConstraint = type { ptr, [64 x i8], i16, i16, [3 x i8], i8, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.bShrinkwrapConstraint = type { ptr, float, i16, i8, i8, float, [4 x i8] }
%struct.bDampTrackConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.bSplineIKConstraint = type { ptr, ptr, i16, i16, i16, i16 }
%struct.bPivotConstraint = type { ptr, [64 x i8], [3 x float], i16, i16 }
%struct.bFollowTrackConstraint = type { ptr, [64 x i8], i32, i32, [64 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bCameraSolverConstraint = type { ptr, i32, i32 }
%struct.bObjectSolverConstraint = type { ptr, i32, i32, [64 x i8], [4 x [4 x float]], ptr }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Motion Tracking\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"CAMERA_SOLVER\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Camera Solver\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"FOLLOW_TRACK\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Follow Track\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"OBJECT_SOLVER\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Object Solver\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Transform\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"COPY_LOCATION\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Copy Location\00", align 1
@.str.11 = private unnamed_addr constant [84 x i8] c"Copy the location of a target (with an optional offset), so that they move together\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"COPY_ROTATION\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Copy Rotation\00", align 1
@.str.14 = private unnamed_addr constant [86 x i8] c"Copy the rotation of a target (with an optional offset), so that they rotate together\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"COPY_SCALE\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Copy Scale\00", align 1
@.str.17 = private unnamed_addr constant [105 x i8] c"Copy the scale factors of a target (with an optional offset), so that they are scaled by the same amount\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"COPY_TRANSFORMS\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Copy Transforms\00", align 1
@.str.20 = private unnamed_addr constant [69 x i8] c"Copy all the transformations of a target, so that they move together\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"LIMIT_DISTANCE\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Limit Distance\00", align 1
@.str.23 = private unnamed_addr constant [104 x i8] c"Restrict movements to within a certain distance of a target (at the time of constraint evaluation only)\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"LIMIT_LOCATION\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Limit Location\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"Restrict movement along each axis within given ranges\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"LIMIT_ROTATION\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"Limit Rotation\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"Restrict rotation along each axis within given ranges\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"LIMIT_SCALE\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Limit Scale\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"Restrict scaling along each axis with given ranges\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"MAINTAIN_VOLUME\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"Maintain Volume\00", align 1
@.str.35 = private unnamed_addr constant [83 x i8] c"Compensate for scaling one axis by applying suitable scaling to the other two axes\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"TRANSFORM\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"Transformation\00", align 1
@.str.38 = private unnamed_addr constant [86 x i8] c"Use one transform property from target to control another (or same) property on owner\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"Tracking\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"CLAMP_TO\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"Clamp To\00", align 1
@.str.42 = private unnamed_addr constant [89 x i8] c"Restrict movements to lie along a curve by remapping location along curve's longest axis\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"DAMPED_TRACK\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"Damped Track\00", align 1
@.str.45 = private unnamed_addr constant [69 x i8] c"Point towards a target by performing the smallest rotation necessary\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"Inverse Kinematics\00", align 1
@.str.48 = private unnamed_addr constant [72 x i8] c"Control a chain of bones by specifying the endpoint target (Bones only)\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"LOCKED_TRACK\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"Locked Track\00", align 1
@.str.51 = private unnamed_addr constant [70 x i8] c"Rotate around the specified ('locked') axis to point towards a target\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"SPLINE_IK\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"Spline IK\00", align 1
@.str.54 = private unnamed_addr constant [48 x i8] c"Align chain of bones along a curve (Bones only)\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"STRETCH_TO\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Stretch To\00", align 1
@.str.57 = private unnamed_addr constant [47 x i8] c"Stretch along Y-Axis to point towards a target\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"TRACK_TO\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"Track To\00", align 1
@.str.60 = private unnamed_addr constant [55 x i8] c"Legacy tracking constraint prone to twisting artifacts\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"Relationship\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"ACTION\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.64 = private unnamed_addr constant [74 x i8] c"Use transform property of target to look up pose for owner from an Action\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"CHILD_OF\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"Child Of\00", align 1
@.str.67 = private unnamed_addr constant [45 x i8] c"Make target the 'detachable' parent of owner\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"FLOOR\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"Floor\00", align 1
@.str.70 = private unnamed_addr constant [108 x i8] c"Use position (and optionally rotation) of target to define a 'wall' or 'floor' that the owner can not cross\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"FOLLOW_PATH\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"Follow Path\00", align 1
@.str.73 = private unnamed_addr constant [47 x i8] c"Use to animate an object/bone following a path\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"PIVOT\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"Pivot\00", align 1
@.str.76 = private unnamed_addr constant [42 x i8] c"Change pivot point for transforms (buggy)\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"RIGID_BODY_JOINT\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"Rigid Body Joint\00", align 1
@.str.79 = private unnamed_addr constant [65 x i8] c"Use to define a Rigid Body Constraint (for Game Engine use only)\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"SHRINKWRAP\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"Shrinkwrap\00", align 1
@.str.82 = private unnamed_addr constant [45 x i8] c"Restrict movements to surface of target mesh\00", align 1
@constraint_type_items = dso_local local_unnamed_addr global [32 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str }, %struct.EnumPropertyItem { i32 27, ptr @.str.2, i32 459, ptr @.str.3, ptr @.str }, %struct.EnumPropertyItem { i32 26, ptr @.str.4, i32 459, ptr @.str.5, ptr @.str }, %struct.EnumPropertyItem { i32 28, ptr @.str.6, i32 459, ptr @.str.7, ptr @.str }, %struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.8, ptr @.str }, %struct.EnumPropertyItem { i32 9, ptr @.str.9, i32 459, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 8, ptr @.str.12, i32 459, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 10, ptr @.str.15, i32 459, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 23, ptr @.str.18, i32 459, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 14, ptr @.str.21, i32 459, ptr @.str.22, ptr @.str.23 }, %struct.EnumPropertyItem { i32 6, ptr @.str.24, i32 459, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem { i32 5, ptr @.str.27, i32 459, ptr @.str.28, ptr @.str.29 }, %struct.EnumPropertyItem { i32 7, ptr @.str.30, i32 459, ptr @.str.31, ptr @.str.32 }, %struct.EnumPropertyItem { i32 24, ptr @.str.33, i32 459, ptr @.str.34, ptr @.str.35 }, %struct.EnumPropertyItem { i32 19, ptr @.str.36, i32 459, ptr @.str.37, ptr @.str.38 }, %struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.39, ptr @.str }, %struct.EnumPropertyItem { i32 18, ptr @.str.40, i32 459, ptr @.str.41, ptr @.str.42 }, %struct.EnumPropertyItem { i32 21, ptr @.str.43, i32 459, ptr @.str.44, ptr @.str.45 }, %struct.EnumPropertyItem { i32 3, ptr @.str.46, i32 459, ptr @.str.47, ptr @.str.48 }, %struct.EnumPropertyItem { i32 13, ptr @.str.49, i32 459, ptr @.str.50, ptr @.str.51 }, %struct.EnumPropertyItem { i32 22, ptr @.str.52, i32 459, ptr @.str.53, ptr @.str.54 }, %struct.EnumPropertyItem { i32 15, ptr @.str.55, i32 459, ptr @.str.56, ptr @.str.57 }, %struct.EnumPropertyItem { i32 2, ptr @.str.58, i32 459, ptr @.str.59, ptr @.str.60 }, %struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.61, ptr @.str }, %struct.EnumPropertyItem { i32 12, ptr @.str.62, i32 459, ptr @.str.63, ptr @.str.64 }, %struct.EnumPropertyItem { i32 1, ptr @.str.65, i32 459, ptr @.str.66, ptr @.str.67 }, %struct.EnumPropertyItem { i32 16, ptr @.str.68, i32 459, ptr @.str.69, ptr @.str.70 }, %struct.EnumPropertyItem { i32 4, ptr @.str.71, i32 459, ptr @.str.72, ptr @.str.73 }, %struct.EnumPropertyItem { i32 25, ptr @.str.74, i32 459, ptr @.str.75, ptr @.str.76 }, %struct.EnumPropertyItem { i32 17, ptr @.str.77, i32 459, ptr @.str.78, ptr @.str.79 }, %struct.EnumPropertyItem { i32 20, ptr @.str.80, i32 459, ptr @.str.81, ptr @.str.82 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Constraint_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Constraint_rna_type, ptr null, i32 -1, ptr @.str.83, i32 128, ptr @.str.84, ptr @.str.85, i32 0, ptr @.str.86, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Constraint_rna_properties_begin, ptr @Constraint_rna_properties_next, ptr @Constraint_rna_properties_end, ptr @Constraint_rna_properties_get, ptr null, ptr null, ptr @Constraint_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ConstraintTarget_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintTarget_rna_type, ptr null, i32 -1, ptr @.str.83, i32 128, ptr @.str.84, ptr @.str.85, i32 0, ptr @.str.86, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintTarget_rna_properties_begin, ptr @ConstraintTarget_rna_properties_next, ptr @ConstraintTarget_rna_properties_end, ptr @ConstraintTarget_rna_properties_get, ptr null, ptr null, ptr @ConstraintTarget_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@rna_PythonConstraint_targets = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_PythonConstraint_target_count, ptr null, i32 -1, ptr @.str.168, i32 0, ptr @.str.169, ptr @.str.170, i32 0, ptr @.str.86, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PythonConstraint_targets_begin, ptr @PythonConstraint_targets_next, ptr @PythonConstraint_targets_end, ptr @PythonConstraint_targets_get, ptr null, ptr @PythonConstraint_targets_lookup_int, ptr null, ptr null, ptr @RNA_ConstraintTarget }, align 8
@RNA_Text = external global %struct.StructRNA, align 8
@RNA_Action = external global %struct.StructRNA, align 8
@RNA_MovieClip = external global %struct.StructRNA, align 8
@rna_Constraint_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, i32 -1, ptr @.str.87, i32 8912896, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Constraint_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.83 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_Constraint_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Constraint_type, ptr @rna_Constraint_rna_type, i32 -1, ptr @.str.90, i32 262145, ptr @.str.91, ptr @.str.92, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 85590021, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Constraint_name_get, ptr @Constraint_name_length, ptr @Constraint_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.87 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_Constraint_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Constraint_owner_space, ptr @rna_Constraint_name, i32 -1, ptr @.str.93, i32 2, ptr @.str.94, ptr @.str, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Constraint_type_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Constraint_type_items, i32 31, i32 27 }, align 8
@.str.90 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"Constraint name\00", align 1
@rna_Constraint_owner_space = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Constraint_target_space, ptr @rna_Constraint_type, i32 -1, ptr @.str.95, i32 3, ptr @.str.96, ptr @.str.97, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Constraint_owner_space_get, ptr @Constraint_owner_space_set, ptr @rna_Constraint_owner_space_itemf, ptr null, ptr null, ptr null, ptr @rna_Constraint_owner_space_items, i32 4, i32 0 }, align 8
@.str.93 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@rna_Constraint_type_items = internal global [32 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str }, %struct.EnumPropertyItem { i32 27, ptr @.str.2, i32 459, ptr @.str.3, ptr @.str }, %struct.EnumPropertyItem { i32 26, ptr @.str.4, i32 459, ptr @.str.5, ptr @.str }, %struct.EnumPropertyItem { i32 28, ptr @.str.6, i32 459, ptr @.str.7, ptr @.str }, %struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.8, ptr @.str }, %struct.EnumPropertyItem { i32 9, ptr @.str.9, i32 459, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 8, ptr @.str.12, i32 459, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 10, ptr @.str.15, i32 459, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 23, ptr @.str.18, i32 459, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 14, ptr @.str.21, i32 459, ptr @.str.22, ptr @.str.23 }, %struct.EnumPropertyItem { i32 6, ptr @.str.24, i32 459, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem { i32 5, ptr @.str.27, i32 459, ptr @.str.28, ptr @.str.29 }, %struct.EnumPropertyItem { i32 7, ptr @.str.30, i32 459, ptr @.str.31, ptr @.str.32 }, %struct.EnumPropertyItem { i32 24, ptr @.str.33, i32 459, ptr @.str.34, ptr @.str.35 }, %struct.EnumPropertyItem { i32 19, ptr @.str.36, i32 459, ptr @.str.37, ptr @.str.38 }, %struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.39, ptr @.str }, %struct.EnumPropertyItem { i32 18, ptr @.str.40, i32 459, ptr @.str.41, ptr @.str.42 }, %struct.EnumPropertyItem { i32 21, ptr @.str.43, i32 459, ptr @.str.44, ptr @.str.45 }, %struct.EnumPropertyItem { i32 3, ptr @.str.46, i32 459, ptr @.str.47, ptr @.str.48 }, %struct.EnumPropertyItem { i32 13, ptr @.str.49, i32 459, ptr @.str.50, ptr @.str.51 }, %struct.EnumPropertyItem { i32 22, ptr @.str.52, i32 459, ptr @.str.53, ptr @.str.54 }, %struct.EnumPropertyItem { i32 15, ptr @.str.55, i32 459, ptr @.str.56, ptr @.str.57 }, %struct.EnumPropertyItem { i32 2, ptr @.str.58, i32 459, ptr @.str.59, ptr @.str.60 }, %struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.61, ptr @.str }, %struct.EnumPropertyItem { i32 12, ptr @.str.62, i32 459, ptr @.str.63, ptr @.str.64 }, %struct.EnumPropertyItem { i32 1, ptr @.str.65, i32 459, ptr @.str.66, ptr @.str.67 }, %struct.EnumPropertyItem { i32 16, ptr @.str.68, i32 459, ptr @.str.69, ptr @.str.70 }, %struct.EnumPropertyItem { i32 4, ptr @.str.71, i32 459, ptr @.str.72, ptr @.str.73 }, %struct.EnumPropertyItem { i32 25, ptr @.str.74, i32 459, ptr @.str.75, ptr @.str.76 }, %struct.EnumPropertyItem { i32 17, ptr @.str.77, i32 459, ptr @.str.78, ptr @.str.79 }, %struct.EnumPropertyItem { i32 20, ptr @.str.80, i32 459, ptr @.str.81, ptr @.str.82 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Constraint_target_space = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Constraint_mute, ptr @rna_Constraint_owner_space, i32 -1, ptr @.str.98, i32 3, ptr @.str.99, ptr @.str.100, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Constraint_target_space_get, ptr @Constraint_target_space_set, ptr @rna_Constraint_target_space_itemf, ptr null, ptr null, ptr null, ptr @rna_Constraint_target_space_items, i32 4, i32 0 }, align 8
@.str.95 = private unnamed_addr constant [12 x i8] c"owner_space\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"Owner Space\00", align 1
@.str.97 = private unnamed_addr constant [33 x i8] c"Space that owner is evaluated in\00", align 1
@rna_Constraint_owner_space_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.704, i32 0, ptr @.str.705, ptr @.str.706 }, %struct.EnumPropertyItem { i32 2, ptr @.str.707, i32 0, ptr @.str.708, ptr @.str.709 }, %struct.EnumPropertyItem { i32 3, ptr @.str.710, i32 0, ptr @.str.711, ptr @.str.712 }, %struct.EnumPropertyItem { i32 1, ptr @.str.713, i32 0, ptr @.str.714, ptr @.str.715 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Constraint_mute = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Constraint_show_expanded, ptr @rna_Constraint_target_space, i32 -1, ptr @.str.101, i32 3, ptr @.str.102, ptr @.str.103, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Constraint_mute_get, ptr @Constraint_mute_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.98 = private unnamed_addr constant [13 x i8] c"target_space\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"Target Space\00", align 1
@.str.100 = private unnamed_addr constant [34 x i8] c"Space that target is evaluated in\00", align 1
@rna_Constraint_target_space_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.704, i32 0, ptr @.str.705, ptr @.str.716 }, %struct.EnumPropertyItem { i32 2, ptr @.str.707, i32 0, ptr @.str.708, ptr @.str.718 }, %struct.EnumPropertyItem { i32 3, ptr @.str.710, i32 0, ptr @.str.711, ptr @.str.719 }, %struct.EnumPropertyItem { i32 1, ptr @.str.713, i32 0, ptr @.str.714, ptr @.str.717 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Constraint_show_expanded = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Constraint_is_valid, ptr @rna_Constraint_mute, i32 -1, ptr @.str.104, i32 4099, ptr @.str.105, ptr @.str.106, i32 4, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Constraint_show_expanded_get, ptr @Constraint_show_expanded_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.101 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"Enable/Disable Constraint\00", align 1
@rna_Constraint_is_valid = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Constraint_active, ptr @rna_Constraint_show_expanded, i32 -1, ptr @.str.107, i32 2, ptr @.str.108, ptr @.str.109, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Constraint_is_valid_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.104 = private unnamed_addr constant [14 x i8] c"show_expanded\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"Expanded\00", align 1
@.str.106 = private unnamed_addr constant [37 x i8] c"Constraint's panel is expanded in UI\00", align 1
@rna_Constraint_active = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Constraint_is_proxy_local, ptr @rna_Constraint_is_valid, i32 -1, ptr @.str.110, i32 3, ptr @.str.111, ptr @.str.112, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Constraint_active_get, ptr @Constraint_active_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.107 = private unnamed_addr constant [9 x i8] c"is_valid\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"Valid\00", align 1
@.str.109 = private unnamed_addr constant [51 x i8] c"Constraint has valid settings and can be evaluated\00", align 1
@rna_Constraint_is_proxy_local = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Constraint_influence, ptr @rna_Constraint_active, i32 -1, ptr @.str.113, i32 3, ptr @.str.114, ptr @.str.115, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Constraint_is_proxy_local_get, ptr @Constraint_is_proxy_local_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.110 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.112 = private unnamed_addr constant [36 x i8] c"Constraint is the one being edited \00", align 1
@rna_Constraint_influence = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Constraint_error_location, ptr @rna_Constraint_is_proxy_local, i32 -1, ptr @.str.116, i32 8195, ptr @.str.117, ptr @.str.118, i32 0, ptr @.str.86, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_influence_update, i32 85590016, ptr null, ptr null, i32 96, i32 4, ptr null, ptr null }, ptr @Constraint_influence_get, ptr @Constraint_influence_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.113 = private unnamed_addr constant [15 x i8] c"is_proxy_local\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"Proxy Local\00", align 1
@.str.115 = private unnamed_addr constant [85 x i8] c"Constraint was added in this proxy instance (i.e. did not belong to source Armature)\00", align 1
@rna_Constraint_error_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Constraint_error_rotation, ptr @rna_Constraint_influence, i32 -1, ptr @.str.119, i32 8194, ptr @.str.120, ptr @.str.121, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @Constraint_error_location_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.116 = private unnamed_addr constant [10 x i8] c"influence\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"Influence\00", align 1
@.str.118 = private unnamed_addr constant [63 x i8] c"Amount of influence constraint will have on the final solution\00", align 1
@rna_Constraint_error_rotation = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Constraint_error_location, i32 -1, ptr @.str.122, i32 8194, ptr @.str.123, ptr @.str.124, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 116, i32 4, ptr null, ptr null }, ptr @Constraint_error_rotation_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.119 = private unnamed_addr constant [15 x i8] c"error_location\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"Lin error\00", align 1
@.str.121 = private unnamed_addr constant [85 x i8] c"Amount of residual error in Blender space unit for constraints that work on position\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"error_rotation\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"Rot error\00", align 1
@.str.124 = private unnamed_addr constant [77 x i8] c"Amount of residual error in radians for constraints that work on orientation\00", align 1
@RNA_ConstraintTarget = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ChildOfConstraint, ptr @RNA_Constraint, ptr null, %struct.ListBase { ptr @rna_ConstraintTarget_rna_properties, ptr @rna_ConstraintTarget_subtarget } }, ptr @.str.132, ptr null, ptr null, i32 4, ptr @.str.133, ptr @.str.134, ptr @.str.86, i32 17, ptr null, ptr @rna_ConstraintTarget_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_ColorManagedSequencerColorspaceSettings = external global %struct.StructRNA, align 8
@.str.125 = private unnamed_addr constant [11 x i8] c"Constraint\00", align 1
@.str.126 = private unnamed_addr constant [61 x i8] c"Constraint modifying the transformation of objects and bones\00", align 1
@RNA_Constraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ConstraintTarget, ptr @RNA_ColorManagedSequencerColorspaceSettings, ptr null, %struct.ListBase { ptr @rna_Constraint_rna_properties, ptr @rna_Constraint_error_rotation } }, ptr @.str.125, ptr null, ptr null, i32 4, ptr @.str.125, ptr @.str.126, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr null, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_ConstraintTarget_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintTarget_target, ptr @rna_ConstraintTarget_rna_properties, i32 -1, ptr @.str.87, i32 8912896, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintTarget_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ConstraintTarget_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ConstraintTarget_subtarget, ptr @rna_ConstraintTarget_rna_type, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintTarget_target_get, ptr @ConstraintTarget_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_ConstraintTarget_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ConstraintTarget_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ConstraintTarget_subtarget_get, ptr @ConstraintTarget_subtarget_length, ptr @ConstraintTarget_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.127 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"Target\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"Target Object\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"subtarget\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"Sub-Target\00", align 1
@RNA_ChildOfConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_PythonConstraint, ptr @RNA_ConstraintTarget, ptr null, %struct.ListBase { ptr @rna_ChildOfConstraint_target, ptr @rna_ChildOfConstraint_inverse_matrix } }, ptr @.str.165, ptr null, ptr null, i32 4, ptr @.str.166, ptr @.str.167, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.132 = private unnamed_addr constant [17 x i8] c"ConstraintTarget\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"Constraint Target\00", align 1
@.str.134 = private unnamed_addr constant [43 x i8] c"Target object for multi-target constraints\00", align 1
@rna_ChildOfConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ChildOfConstraint_use_location_x, ptr @rna_ChildOfConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ChildOfConstraint_subtarget_get, ptr @ChildOfConstraint_subtarget_length, ptr @ChildOfConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_ChildOfConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ChildOfConstraint_subtarget, ptr null, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ChildOfConstraint_target_get, ptr @ChildOfConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_ChildOfConstraint_use_location_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ChildOfConstraint_use_location_y, ptr @rna_ChildOfConstraint_subtarget, i32 -1, ptr @.str.135, i32 3, ptr @.str.136, ptr @.str.137, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ChildOfConstraint_use_location_x_get, ptr @ChildOfConstraint_use_location_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_ChildOfConstraint_use_location_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ChildOfConstraint_use_location_z, ptr @rna_ChildOfConstraint_use_location_x, i32 -1, ptr @.str.138, i32 3, ptr @.str.139, ptr @.str.140, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ChildOfConstraint_use_location_y_get, ptr @ChildOfConstraint_use_location_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.135 = private unnamed_addr constant [15 x i8] c"use_location_x\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"Location X\00", align 1
@.str.137 = private unnamed_addr constant [25 x i8] c"Use X Location of Parent\00", align 1
@rna_ChildOfConstraint_use_location_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ChildOfConstraint_use_rotation_x, ptr @rna_ChildOfConstraint_use_location_y, i32 -1, ptr @.str.141, i32 3, ptr @.str.142, ptr @.str.143, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ChildOfConstraint_use_location_z_get, ptr @ChildOfConstraint_use_location_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.138 = private unnamed_addr constant [15 x i8] c"use_location_y\00", align 1
@.str.139 = private unnamed_addr constant [11 x i8] c"Location Y\00", align 1
@.str.140 = private unnamed_addr constant [25 x i8] c"Use Y Location of Parent\00", align 1
@rna_ChildOfConstraint_use_rotation_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ChildOfConstraint_use_rotation_y, ptr @rna_ChildOfConstraint_use_location_z, i32 -1, ptr @.str.144, i32 3, ptr @.str.145, ptr @.str.146, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ChildOfConstraint_use_rotation_x_get, ptr @ChildOfConstraint_use_rotation_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.141 = private unnamed_addr constant [15 x i8] c"use_location_z\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"Location Z\00", align 1
@.str.143 = private unnamed_addr constant [25 x i8] c"Use Z Location of Parent\00", align 1
@rna_ChildOfConstraint_use_rotation_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ChildOfConstraint_use_rotation_z, ptr @rna_ChildOfConstraint_use_rotation_x, i32 -1, ptr @.str.147, i32 3, ptr @.str.148, ptr @.str.149, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ChildOfConstraint_use_rotation_y_get, ptr @ChildOfConstraint_use_rotation_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.144 = private unnamed_addr constant [15 x i8] c"use_rotation_x\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"Rotation X\00", align 1
@.str.146 = private unnamed_addr constant [25 x i8] c"Use X Rotation of Parent\00", align 1
@rna_ChildOfConstraint_use_rotation_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ChildOfConstraint_use_scale_x, ptr @rna_ChildOfConstraint_use_rotation_y, i32 -1, ptr @.str.150, i32 3, ptr @.str.151, ptr @.str.152, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ChildOfConstraint_use_rotation_z_get, ptr @ChildOfConstraint_use_rotation_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.147 = private unnamed_addr constant [15 x i8] c"use_rotation_y\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"Rotation Y\00", align 1
@.str.149 = private unnamed_addr constant [25 x i8] c"Use Y Rotation of Parent\00", align 1
@rna_ChildOfConstraint_use_scale_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ChildOfConstraint_use_scale_y, ptr @rna_ChildOfConstraint_use_rotation_z, i32 -1, ptr @.str.153, i32 3, ptr @.str.154, ptr @.str.155, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ChildOfConstraint_use_scale_x_get, ptr @ChildOfConstraint_use_scale_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.150 = private unnamed_addr constant [15 x i8] c"use_rotation_z\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"Rotation Z\00", align 1
@.str.152 = private unnamed_addr constant [25 x i8] c"Use Z Rotation of Parent\00", align 1
@rna_ChildOfConstraint_use_scale_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ChildOfConstraint_use_scale_z, ptr @rna_ChildOfConstraint_use_scale_x, i32 -1, ptr @.str.156, i32 3, ptr @.str.157, ptr @.str.158, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ChildOfConstraint_use_scale_y_get, ptr @ChildOfConstraint_use_scale_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.153 = private unnamed_addr constant [12 x i8] c"use_scale_x\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"Scale X\00", align 1
@.str.155 = private unnamed_addr constant [22 x i8] c"Use X Scale of Parent\00", align 1
@rna_ChildOfConstraint_use_scale_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ChildOfConstraint_inverse_matrix, ptr @rna_ChildOfConstraint_use_scale_y, i32 -1, ptr @.str.159, i32 3, ptr @.str.160, ptr @.str.161, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ChildOfConstraint_use_scale_z_get, ptr @ChildOfConstraint_use_scale_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.156 = private unnamed_addr constant [12 x i8] c"use_scale_y\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"Scale Y\00", align 1
@.str.158 = private unnamed_addr constant [22 x i8] c"Use Y Scale of Parent\00", align 1
@rna_ChildOfConstraint_inverse_matrix = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ChildOfConstraint_use_scale_z, i32 -1, ptr @.str.162, i32 8193, ptr @.str.163, ptr @.str.164, i32 0, ptr @.str.86, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 0, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @ChildOfConstraint_inverse_matrix_get, ptr @ChildOfConstraint_inverse_matrix_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_ChildOfConstraint_inverse_matrix_default }, align 8
@.str.159 = private unnamed_addr constant [12 x i8] c"use_scale_z\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"Scale Z\00", align 1
@.str.161 = private unnamed_addr constant [22 x i8] c"Use Z Scale of Parent\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"inverse_matrix\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"Inverse Matrix\00", align 1
@.str.164 = private unnamed_addr constant [38 x i8] c"Transformation matrix to apply before\00", align 1
@rna_ChildOfConstraint_inverse_matrix_default = internal global [16 x float] zeroinitializer, align 16
@RNA_PythonConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_StretchToConstraint, ptr @RNA_ChildOfConstraint, ptr null, %struct.ListBase { ptr @rna_PythonConstraint_targets, ptr @rna_PythonConstraint_has_script_error } }, ptr @.str.183, ptr null, ptr null, i32 4, ptr @.str.184, ptr @.str.185, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.165 = private unnamed_addr constant [18 x i8] c"ChildOfConstraint\00", align 1
@.str.166 = private unnamed_addr constant [20 x i8] c"Child Of Constraint\00", align 1
@.str.167 = private unnamed_addr constant [50 x i8] c"Create constraint-based parent-child relationship\00", align 1
@rna_PythonConstraint_target_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_PythonConstraint_text, ptr @rna_PythonConstraint_targets, i32 -1, ptr @.str.171, i32 8195, ptr @.str.172, ptr @.str.173, i32 0, ptr @.str.86, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 20, i32 0, ptr null, ptr null }, ptr @PythonConstraint_target_count_get, ptr @PythonConstraint_target_count_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.168 = private unnamed_addr constant [8 x i8] c"targets\00", align 1
@.str.169 = private unnamed_addr constant [8 x i8] c"Targets\00", align 1
@.str.170 = private unnamed_addr constant [15 x i8] c"Target Objects\00", align 1
@rna_PythonConstraint_text = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PythonConstraint_use_targets, ptr @rna_PythonConstraint_target_count, i32 -1, ptr @.str.174, i32 8388673, ptr @.str.175, ptr @.str.176, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PythonConstraint_text_get, ptr @PythonConstraint_text_set, ptr null, ptr null, ptr @RNA_Text }, align 8
@.str.171 = private unnamed_addr constant [13 x i8] c"target_count\00", align 1
@.str.172 = private unnamed_addr constant [18 x i8] c"Number of Targets\00", align 1
@.str.173 = private unnamed_addr constant [28 x i8] c"Usually only 1-3 are needed\00", align 1
@rna_PythonConstraint_use_targets = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PythonConstraint_has_script_error, ptr @rna_PythonConstraint_text, i32 -1, ptr @.str.177, i32 3, ptr @.str.178, ptr @.str.179, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PythonConstraint_use_targets_get, ptr @PythonConstraint_use_targets_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.174 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"Script\00", align 1
@.str.176 = private unnamed_addr constant [48 x i8] c"The text object that contains the Python script\00", align 1
@rna_PythonConstraint_has_script_error = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_PythonConstraint_use_targets, i32 -1, ptr @.str.180, i32 2, ptr @.str.181, ptr @.str.182, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PythonConstraint_has_script_error_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.177 = private unnamed_addr constant [12 x i8] c"use_targets\00", align 1
@.str.178 = private unnamed_addr constant [12 x i8] c"Use Targets\00", align 1
@.str.179 = private unnamed_addr constant [50 x i8] c"Use the targets indicated in the constraint panel\00", align 1
@.str.180 = private unnamed_addr constant [17 x i8] c"has_script_error\00", align 1
@.str.181 = private unnamed_addr constant [13 x i8] c"Script Error\00", align 1
@.str.182 = private unnamed_addr constant [45 x i8] c"The linked Python script has thrown an error\00", align 1
@RNA_StretchToConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FollowPathConstraint, ptr @RNA_PythonConstraint, ptr null, %struct.ListBase { ptr @rna_StretchToConstraint_head_tail, ptr @rna_StretchToConstraint_bulge_smooth } }, ptr @.str.214, ptr null, ptr null, i32 4, ptr @.str.215, ptr @.str.216, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.183 = private unnamed_addr constant [17 x i8] c"PythonConstraint\00", align 1
@.str.184 = private unnamed_addr constant [18 x i8] c"Python Constraint\00", align 1
@.str.185 = private unnamed_addr constant [44 x i8] c"Use Python script for constraint evaluation\00", align 1
@rna_StretchToConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_StretchToConstraint_subtarget, ptr @rna_StretchToConstraint_head_tail, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @StretchToConstraint_target_get, ptr @StretchToConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.186 = private unnamed_addr constant [10 x i8] c"head_tail\00", align 1
@.str.187 = private unnamed_addr constant [10 x i8] c"Head/Tail\00", align 1
@.str.188 = private unnamed_addr constant [44 x i8] c"Target along length of bone: Head=0, Tail=1\00", align 1
@rna_StretchToConstraint_head_tail = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_StretchToConstraint_target, ptr null, i32 -1, ptr @.str.186, i32 8195, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.86, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr @StretchToConstraint_head_tail_get, ptr @StretchToConstraint_head_tail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_StretchToConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_StretchToConstraint_volume, ptr @rna_StretchToConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @StretchToConstraint_subtarget_get, ptr @StretchToConstraint_subtarget_length, ptr @StretchToConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_StretchToConstraint_volume = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_StretchToConstraint_keep_axis, ptr @rna_StretchToConstraint_subtarget, i32 -1, ptr @.str.189, i32 3, ptr @.str.34, ptr @.str.190, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @StretchToConstraint_volume_get, ptr @StretchToConstraint_volume_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_StretchToConstraint_volume_items, i32 4, i32 0 }, align 8
@rna_StretchToConstraint_keep_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_StretchToConstraint_rest_length, ptr @rna_StretchToConstraint_volume, i32 -1, ptr @.str.191, i32 3, ptr @.str.192, ptr @.str.193, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @StretchToConstraint_keep_axis_get, ptr @StretchToConstraint_keep_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_StretchToConstraint_keep_axis_items, i32 2, i32 0 }, align 8
@.str.189 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.190 = private unnamed_addr constant [45 x i8] c"Maintain the object's volume as it stretches\00", align 1
@rna_StretchToConstraint_volume_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.723, i32 0, ptr @.str.724, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.725, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.727, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.729, i32 0, ptr @.str.730, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_StretchToConstraint_rest_length = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_StretchToConstraint_bulge, ptr @rna_StretchToConstraint_keep_axis, i32 -1, ptr @.str.194, i32 8195, ptr @.str.195, ptr @.str.196, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @StretchToConstraint_rest_length_get, ptr @StretchToConstraint_rest_length_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.191 = private unnamed_addr constant [10 x i8] c"keep_axis\00", align 1
@.str.192 = private unnamed_addr constant [10 x i8] c"Keep Axis\00", align 1
@.str.193 = private unnamed_addr constant [32 x i8] c"Axis to maintain during stretch\00", align 1
@rna_StretchToConstraint_keep_axis_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.731, i32 0, ptr @.str.726, ptr @.str.732 }, %struct.EnumPropertyItem { i32 2, ptr @.str.733, i32 0, ptr @.str.728, ptr @.str.734 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_StretchToConstraint_bulge = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_StretchToConstraint_use_bulge_min, ptr @rna_StretchToConstraint_rest_length, i32 -1, ptr @.str.197, i32 8195, ptr @.str.198, ptr @.str.199, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 24, i32 4, ptr null, ptr null }, ptr @StretchToConstraint_bulge_get, ptr @StretchToConstraint_bulge_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.194 = private unnamed_addr constant [12 x i8] c"rest_length\00", align 1
@.str.195 = private unnamed_addr constant [16 x i8] c"Original Length\00", align 1
@.str.196 = private unnamed_addr constant [24 x i8] c"Length at rest position\00", align 1
@rna_StretchToConstraint_use_bulge_min = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_StretchToConstraint_use_bulge_max, ptr @rna_StretchToConstraint_bulge, i32 -1, ptr @.str.200, i32 3, ptr @.str.201, ptr @.str.202, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @StretchToConstraint_use_bulge_min_get, ptr @StretchToConstraint_use_bulge_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.197 = private unnamed_addr constant [6 x i8] c"bulge\00", align 1
@.str.198 = private unnamed_addr constant [17 x i8] c"Volume Variation\00", align 1
@.str.199 = private unnamed_addr constant [47 x i8] c"Factor between volume variation and stretching\00", align 1
@rna_StretchToConstraint_use_bulge_max = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_StretchToConstraint_bulge_min, ptr @rna_StretchToConstraint_use_bulge_min, i32 -1, ptr @.str.203, i32 3, ptr @.str.204, ptr @.str.205, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @StretchToConstraint_use_bulge_max_get, ptr @StretchToConstraint_use_bulge_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.200 = private unnamed_addr constant [14 x i8] c"use_bulge_min\00", align 1
@.str.201 = private unnamed_addr constant [29 x i8] c"Use Volume Variation Minimum\00", align 1
@.str.202 = private unnamed_addr constant [37 x i8] c"Use lower limit for volume variation\00", align 1
@rna_StretchToConstraint_bulge_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_StretchToConstraint_bulge_max, ptr @rna_StretchToConstraint_use_bulge_max, i32 -1, ptr @.str.206, i32 8195, ptr @.str.207, ptr @.str.208, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 28, i32 4, ptr null, ptr null }, ptr @StretchToConstraint_bulge_min_get, ptr @StretchToConstraint_bulge_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.203 = private unnamed_addr constant [14 x i8] c"use_bulge_max\00", align 1
@.str.204 = private unnamed_addr constant [29 x i8] c"Use Volume Variation Maximum\00", align 1
@.str.205 = private unnamed_addr constant [37 x i8] c"Use upper limit for volume variation\00", align 1
@rna_StretchToConstraint_bulge_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_StretchToConstraint_bulge_smooth, ptr @rna_StretchToConstraint_bulge_min, i32 -1, ptr @.str.209, i32 8195, ptr @.str.210, ptr @.str.211, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 32, i32 4, ptr null, ptr null }, ptr @StretchToConstraint_bulge_max_get, ptr @StretchToConstraint_bulge_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 1.000000e+02, float 1.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.206 = private unnamed_addr constant [10 x i8] c"bulge_min\00", align 1
@.str.207 = private unnamed_addr constant [25 x i8] c"Volume Variation Minimum\00", align 1
@.str.208 = private unnamed_addr constant [33 x i8] c"Minimum volume stretching factor\00", align 1
@rna_StretchToConstraint_bulge_smooth = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_StretchToConstraint_bulge_max, i32 -1, ptr @.str.212, i32 8195, ptr @.str.213, ptr @.str, i32 0, ptr @.str.86, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 36, i32 4, ptr null, ptr null }, ptr @StretchToConstraint_bulge_smooth_get, ptr @StretchToConstraint_bulge_smooth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.209 = private unnamed_addr constant [10 x i8] c"bulge_max\00", align 1
@.str.210 = private unnamed_addr constant [25 x i8] c"Volume Variation Maximum\00", align 1
@.str.211 = private unnamed_addr constant [33 x i8] c"Maximum volume stretching factor\00", align 1
@.str.212 = private unnamed_addr constant [13 x i8] c"bulge_smooth\00", align 1
@.str.213 = private unnamed_addr constant [28 x i8] c"Volume Variation Smoothness\00", align 1
@RNA_FollowPathConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LockedTrackConstraint, ptr @RNA_StretchToConstraint, ptr null, %struct.ListBase { ptr @rna_FollowPathConstraint_target, ptr @rna_FollowPathConstraint_use_curve_radius } }, ptr @.str.238, ptr null, ptr null, i32 4, ptr @.str.239, ptr @.str.240, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.214 = private unnamed_addr constant [20 x i8] c"StretchToConstraint\00", align 1
@.str.215 = private unnamed_addr constant [22 x i8] c"Stretch To Constraint\00", align 1
@.str.216 = private unnamed_addr constant [34 x i8] c"Stretch to meet the target object\00", align 1
@rna_FollowPathConstraint_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowPathConstraint_offset_factor, ptr @rna_FollowPathConstraint_target, i32 -1, ptr @.str.217, i32 8195, ptr @.str.218, ptr @.str.219, i32 0, ptr @.str.86, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @FollowPathConstraint_offset_get, ptr @FollowPathConstraint_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -3.000000e+05, float 3.000000e+05, float -3.000000e+05, float 3.000000e+05, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_FollowPathConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowPathConstraint_offset, ptr null, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowPathConstraint_target_get, ptr @FollowPathConstraint_target_set, ptr null, ptr @rna_Curve_object_poll, ptr @RNA_Object }, align 8
@rna_FollowPathConstraint_offset_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowPathConstraint_forward_axis, ptr @rna_FollowPathConstraint_offset, i32 -1, ptr @.str.220, i32 8195, ptr @.str.221, ptr @.str.222, i32 0, ptr @.str.86, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @FollowPathConstraint_offset_factor_get, ptr @FollowPathConstraint_offset_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.217 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.219 = private unnamed_addr constant [57 x i8] c"Offset from the position corresponding to the time frame\00", align 1
@rna_FollowPathConstraint_forward_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowPathConstraint_up_axis, ptr @rna_FollowPathConstraint_offset_factor, i32 -1, ptr @.str.223, i32 3, ptr @.str.224, ptr @.str.225, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowPathConstraint_forward_axis_get, ptr @FollowPathConstraint_forward_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FollowPathConstraint_forward_axis_items, i32 6, i32 0 }, align 8
@.str.220 = private unnamed_addr constant [14 x i8] c"offset_factor\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"Offset Factor\00", align 1
@.str.222 = private unnamed_addr constant [64 x i8] c"Percentage value defining target position along length of curve\00", align 1
@rna_FollowPathConstraint_up_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowPathConstraint_use_curve_follow, ptr @rna_FollowPathConstraint_forward_axis, i32 -1, ptr @.str.226, i32 3, ptr @.str.227, ptr @.str.228, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowPathConstraint_up_axis_get, ptr @FollowPathConstraint_up_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FollowPathConstraint_up_axis_items, i32 3, i32 0 }, align 8
@.str.223 = private unnamed_addr constant [13 x i8] c"forward_axis\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"Forward Axis\00", align 1
@.str.225 = private unnamed_addr constant [40 x i8] c"Axis that points forward along the path\00", align 1
@rna_FollowPathConstraint_forward_axis_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.735, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.736, i32 0, ptr @.str.737, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.738, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.739, i32 0, ptr @.str.740, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.741, i32 0, ptr @.str.742, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.743, i32 0, ptr @.str.744, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FollowPathConstraint_use_curve_follow = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowPathConstraint_use_fixed_location, ptr @rna_FollowPathConstraint_up_axis, i32 -1, ptr @.str.229, i32 3, ptr @.str.230, ptr @.str.231, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowPathConstraint_use_curve_follow_get, ptr @FollowPathConstraint_use_curve_follow_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.226 = private unnamed_addr constant [8 x i8] c"up_axis\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c"Up Axis\00", align 1
@.str.228 = private unnamed_addr constant [24 x i8] c"Axis that points upward\00", align 1
@rna_FollowPathConstraint_up_axis_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.745, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.746, i32 0, ptr @.str.737, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.747, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FollowPathConstraint_use_fixed_location = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowPathConstraint_use_curve_radius, ptr @rna_FollowPathConstraint_use_curve_follow, i32 -1, ptr @.str.232, i32 3, ptr @.str.233, ptr @.str.234, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowPathConstraint_use_fixed_location_get, ptr @FollowPathConstraint_use_fixed_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.229 = private unnamed_addr constant [17 x i8] c"use_curve_follow\00", align 1
@.str.230 = private unnamed_addr constant [13 x i8] c"Follow Curve\00", align 1
@.str.231 = private unnamed_addr constant [56 x i8] c"Object will follow the heading and banking of the curve\00", align 1
@rna_FollowPathConstraint_use_curve_radius = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FollowPathConstraint_use_fixed_location, i32 -1, ptr @.str.235, i32 3, ptr @.str.236, ptr @.str.237, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowPathConstraint_use_curve_radius_get, ptr @FollowPathConstraint_use_curve_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.232 = private unnamed_addr constant [19 x i8] c"use_fixed_location\00", align 1
@.str.233 = private unnamed_addr constant [15 x i8] c"Fixed Position\00", align 1
@.str.234 = private unnamed_addr constant [101 x i8] c"Object will stay locked to a single point somewhere along the length of the curve regardless of time\00", align 1
@.str.235 = private unnamed_addr constant [17 x i8] c"use_curve_radius\00", align 1
@.str.236 = private unnamed_addr constant [13 x i8] c"Curve Radius\00", align 1
@.str.237 = private unnamed_addr constant [37 x i8] c"Object is scaled by the curve radius\00", align 1
@RNA_LockedTrackConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ActionConstraint, ptr @RNA_FollowPathConstraint, ptr null, %struct.ListBase { ptr @rna_LockedTrackConstraint_head_tail, ptr @rna_LockedTrackConstraint_lock_axis } }, ptr @.str.246, ptr null, ptr null, i32 4, ptr @.str.247, ptr @.str.248, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.238 = private unnamed_addr constant [21 x i8] c"FollowPathConstraint\00", align 1
@.str.239 = private unnamed_addr constant [23 x i8] c"Follow Path Constraint\00", align 1
@.str.240 = private unnamed_addr constant [31 x i8] c"Lock motion to the target path\00", align 1
@rna_LockedTrackConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_LockedTrackConstraint_subtarget, ptr @rna_LockedTrackConstraint_head_tail, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LockedTrackConstraint_target_get, ptr @LockedTrackConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_LockedTrackConstraint_head_tail = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LockedTrackConstraint_target, ptr null, i32 -1, ptr @.str.186, i32 8195, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.86, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr @LockedTrackConstraint_head_tail_get, ptr @LockedTrackConstraint_head_tail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LockedTrackConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_LockedTrackConstraint_track_axis, ptr @rna_LockedTrackConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LockedTrackConstraint_subtarget_get, ptr @LockedTrackConstraint_subtarget_length, ptr @LockedTrackConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_LockedTrackConstraint_track_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_LockedTrackConstraint_lock_axis, ptr @rna_LockedTrackConstraint_subtarget, i32 -1, ptr @.str.241, i32 3, ptr @.str.242, ptr @.str.243, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LockedTrackConstraint_track_axis_get, ptr @LockedTrackConstraint_track_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_LockedTrackConstraint_track_axis_items, i32 6, i32 0 }, align 8
@rna_LockedTrackConstraint_lock_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LockedTrackConstraint_track_axis, i32 -1, ptr @.str.244, i32 3, ptr @.str.245, ptr @.str.228, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LockedTrackConstraint_lock_axis_get, ptr @LockedTrackConstraint_lock_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_LockedTrackConstraint_lock_axis_items, i32 3, i32 0 }, align 8
@.str.241 = private unnamed_addr constant [11 x i8] c"track_axis\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"Track Axis\00", align 1
@.str.243 = private unnamed_addr constant [38 x i8] c"Axis that points to the target object\00", align 1
@rna_LockedTrackConstraint_track_axis_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.748, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.749, i32 0, ptr @.str.737, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.750, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.739, i32 0, ptr @.str.740, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.741, i32 0, ptr @.str.742, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.743, i32 0, ptr @.str.744, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.244 = private unnamed_addr constant [10 x i8] c"lock_axis\00", align 1
@.str.245 = private unnamed_addr constant [12 x i8] c"Locked Axis\00", align 1
@rna_LockedTrackConstraint_lock_axis_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.751, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.752, i32 0, ptr @.str.737, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.753, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_ActionConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CopyScaleConstraint, ptr @RNA_LockedTrackConstraint, ptr null, %struct.ListBase { ptr @rna_ActionConstraint_target, ptr @rna_ActionConstraint_min } }, ptr @.str.269, ptr null, ptr null, i32 4, ptr @.str.270, ptr @.str.271, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.246 = private unnamed_addr constant [22 x i8] c"LockedTrackConstraint\00", align 1
@.str.247 = private unnamed_addr constant [24 x i8] c"Locked Track Constraint\00", align 1
@.str.248 = private unnamed_addr constant [75 x i8] c"Point toward the target along the track axis, while locking the other axis\00", align 1
@rna_ActionConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionConstraint_transform_channel, ptr @rna_ActionConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionConstraint_subtarget_get, ptr @ActionConstraint_subtarget_length, ptr @ActionConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_ActionConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionConstraint_subtarget, ptr null, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionConstraint_target_get, ptr @ActionConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_ActionConstraint_transform_channel = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionConstraint_action, ptr @rna_ActionConstraint_subtarget, i32 -1, ptr @.str.249, i32 3, ptr @.str.250, ptr @.str.251, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionConstraint_transform_channel_get, ptr @ActionConstraint_transform_channel_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ActionConstraint_transform_channel_items, i32 9, i32 0 }, align 8
@rna_ActionConstraint_action = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionConstraint_use_bone_object_action, ptr @rna_ActionConstraint_transform_channel, i32 -1, ptr @.str.252, i32 8388673, ptr @.str.63, ptr @.str.253, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionConstraint_action_get, ptr @ActionConstraint_action_set, ptr null, ptr @rna_Action_id_poll, ptr @RNA_Action }, align 8
@.str.249 = private unnamed_addr constant [18 x i8] c"transform_channel\00", align 1
@.str.250 = private unnamed_addr constant [18 x i8] c"Transform Channel\00", align 1
@.str.251 = private unnamed_addr constant [70 x i8] c"Transformation channel from the target that is used to key the Action\00", align 1
@rna_ActionConstraint_transform_channel_items = internal global [10 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 20, ptr @.str.754, i32 0, ptr @.str.755, ptr @.str }, %struct.EnumPropertyItem { i32 21, ptr @.str.756, i32 0, ptr @.str.757, ptr @.str }, %struct.EnumPropertyItem { i32 22, ptr @.str.758, i32 0, ptr @.str.759, ptr @.str }, %struct.EnumPropertyItem { i32 0, ptr @.str.760, i32 0, ptr @.str.761, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.762, i32 0, ptr @.str.763, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.764, i32 0, ptr @.str.765, ptr @.str }, %struct.EnumPropertyItem { i32 10, ptr @.str.766, i32 0, ptr @.str.767, ptr @.str }, %struct.EnumPropertyItem { i32 11, ptr @.str.768, i32 0, ptr @.str.769, ptr @.str }, %struct.EnumPropertyItem { i32 12, ptr @.str.770, i32 0, ptr @.str.771, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ActionConstraint_use_bone_object_action = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionConstraint_frame_start, ptr @rna_ActionConstraint_action, i32 -1, ptr @.str.254, i32 3, ptr @.str.255, ptr @.str.256, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ActionConstraint_use_bone_object_action_get, ptr @ActionConstraint_use_bone_object_action_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.252 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.253 = private unnamed_addr constant [24 x i8] c"The constraining action\00", align 1
@rna_ActionConstraint_frame_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionConstraint_frame_end, ptr @rna_ActionConstraint_use_bone_object_action, i32 -1, ptr @.str.257, i32 8195, ptr @.str.258, ptr @.str.259, i32 0, ptr @.str.86, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 12, i32 0, ptr null, ptr null }, ptr @ActionConstraint_frame_start_get, ptr @ActionConstraint_frame_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -300000, i32 300000, i32 -300000, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.254 = private unnamed_addr constant [23 x i8] c"use_bone_object_action\00", align 1
@.str.255 = private unnamed_addr constant [14 x i8] c"Object Action\00", align 1
@.str.256 = private unnamed_addr constant [121 x i8] c"Bones only: apply the object's transformation channels of the action to the constrained bone, instead of bone's channels\00", align 1
@rna_ActionConstraint_frame_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionConstraint_max, ptr @rna_ActionConstraint_frame_start, i32 -1, ptr @.str.260, i32 8195, ptr @.str.261, ptr @.str.262, i32 0, ptr @.str.86, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 16, i32 0, ptr null, ptr null }, ptr @ActionConstraint_frame_end_get, ptr @ActionConstraint_frame_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -300000, i32 300000, i32 -300000, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.257 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.258 = private unnamed_addr constant [12 x i8] c"Start Frame\00", align 1
@.str.259 = private unnamed_addr constant [33 x i8] c"First frame of the Action to use\00", align 1
@rna_ActionConstraint_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ActionConstraint_min, ptr @rna_ActionConstraint_frame_end, i32 -1, ptr @.str.263, i32 8195, ptr @.str.264, ptr @.str.265, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 24, i32 4, ptr null, ptr null }, ptr @ActionConstraint_max_get, ptr @ActionConstraint_max_set, ptr null, ptr null, ptr @rna_ActionConstraint_minmax_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.260 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.261 = private unnamed_addr constant [10 x i8] c"End Frame\00", align 1
@.str.262 = private unnamed_addr constant [32 x i8] c"Last frame of the Action to use\00", align 1
@rna_ActionConstraint_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ActionConstraint_max, i32 -1, ptr @.str.266, i32 8195, ptr @.str.267, ptr @.str.268, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @ActionConstraint_min_get, ptr @ActionConstraint_min_set, ptr null, ptr null, ptr @rna_ActionConstraint_minmax_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.263 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.264 = private unnamed_addr constant [8 x i8] c"Maximum\00", align 1
@.str.265 = private unnamed_addr constant [39 x i8] c"Maximum value for target channel range\00", align 1
@.str.266 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.267 = private unnamed_addr constant [8 x i8] c"Minimum\00", align 1
@.str.268 = private unnamed_addr constant [39 x i8] c"Minimum value for target channel range\00", align 1
@RNA_CopyScaleConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaintainVolumeConstraint, ptr @RNA_ActionConstraint, ptr null, %struct.ListBase { ptr @rna_CopyScaleConstraint_target, ptr @rna_CopyScaleConstraint_use_offset } }, ptr @.str.283, ptr null, ptr null, i32 4, ptr @.str.284, ptr @.str.285, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.269 = private unnamed_addr constant [17 x i8] c"ActionConstraint\00", align 1
@.str.270 = private unnamed_addr constant [18 x i8] c"Action Constraint\00", align 1
@.str.271 = private unnamed_addr constant [46 x i8] c"Map an action to the transform axes of a bone\00", align 1
@rna_CopyScaleConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyScaleConstraint_use_x, ptr @rna_CopyScaleConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyScaleConstraint_subtarget_get, ptr @CopyScaleConstraint_subtarget_length, ptr @CopyScaleConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_CopyScaleConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyScaleConstraint_subtarget, ptr null, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyScaleConstraint_target_get, ptr @CopyScaleConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_CopyScaleConstraint_use_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyScaleConstraint_use_y, ptr @rna_CopyScaleConstraint_subtarget, i32 -1, ptr @.str.272, i32 3, ptr @.str.273, ptr @.str.274, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyScaleConstraint_use_x_get, ptr @CopyScaleConstraint_use_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_CopyScaleConstraint_use_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyScaleConstraint_use_z, ptr @rna_CopyScaleConstraint_use_x, i32 -1, ptr @.str.275, i32 3, ptr @.str.276, ptr @.str.277, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyScaleConstraint_use_y_get, ptr @CopyScaleConstraint_use_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.272 = private unnamed_addr constant [6 x i8] c"use_x\00", align 1
@.str.273 = private unnamed_addr constant [7 x i8] c"Copy X\00", align 1
@.str.274 = private unnamed_addr constant [26 x i8] c"Copy the target's X scale\00", align 1
@rna_CopyScaleConstraint_use_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyScaleConstraint_use_offset, ptr @rna_CopyScaleConstraint_use_y, i32 -1, ptr @.str.278, i32 3, ptr @.str.279, ptr @.str.280, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyScaleConstraint_use_z_get, ptr @CopyScaleConstraint_use_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.275 = private unnamed_addr constant [6 x i8] c"use_y\00", align 1
@.str.276 = private unnamed_addr constant [7 x i8] c"Copy Y\00", align 1
@.str.277 = private unnamed_addr constant [26 x i8] c"Copy the target's Y scale\00", align 1
@rna_CopyScaleConstraint_use_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CopyScaleConstraint_use_z, i32 -1, ptr @.str.281, i32 3, ptr @.str.218, ptr @.str.282, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyScaleConstraint_use_offset_get, ptr @CopyScaleConstraint_use_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.278 = private unnamed_addr constant [6 x i8] c"use_z\00", align 1
@.str.279 = private unnamed_addr constant [7 x i8] c"Copy Z\00", align 1
@.str.280 = private unnamed_addr constant [26 x i8] c"Copy the target's Z scale\00", align 1
@.str.281 = private unnamed_addr constant [11 x i8] c"use_offset\00", align 1
@.str.282 = private unnamed_addr constant [37 x i8] c"Add original scale into copied scale\00", align 1
@RNA_MaintainVolumeConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CopyLocationConstraint, ptr @RNA_CopyScaleConstraint, ptr null, %struct.ListBase { ptr @rna_MaintainVolumeConstraint_free_axis, ptr @rna_MaintainVolumeConstraint_volume } }, ptr @.str.291, ptr null, ptr null, i32 4, ptr @.str.292, ptr @.str.293, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.283 = private unnamed_addr constant [20 x i8] c"CopyScaleConstraint\00", align 1
@.str.284 = private unnamed_addr constant [22 x i8] c"Copy Scale Constraint\00", align 1
@.str.285 = private unnamed_addr constant [29 x i8] c"Copy the scale of the target\00", align 1
@rna_MaintainVolumeConstraint_volume = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaintainVolumeConstraint_free_axis, i32 -1, ptr @.str.189, i32 8195, ptr @.str.289, ptr @.str.290, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @MaintainVolumeConstraint_volume_get, ptr @MaintainVolumeConstraint_volume_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+02, float 0x3F50624DE0000000, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.286 = private unnamed_addr constant [10 x i8] c"free_axis\00", align 1
@.str.287 = private unnamed_addr constant [10 x i8] c"Free Axis\00", align 1
@.str.288 = private unnamed_addr constant [36 x i8] c"The free scaling axis of the object\00", align 1
@rna_MaintainVolumeConstraint_free_axis_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.772, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.773, i32 0, ptr @.str.737, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.774, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaintainVolumeConstraint_free_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaintainVolumeConstraint_volume, ptr null, i32 -1, ptr @.str.286, i32 3, ptr @.str.287, ptr @.str.288, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaintainVolumeConstraint_free_axis_get, ptr @MaintainVolumeConstraint_free_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaintainVolumeConstraint_free_axis_items, i32 3, i32 0 }, align 8
@.str.289 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.290 = private unnamed_addr constant [27 x i8] c"Volume of the bone at rest\00", align 1
@RNA_CopyLocationConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CopyRotationConstraint, ptr @RNA_MaintainVolumeConstraint, ptr null, %struct.ListBase { ptr @rna_CopyLocationConstraint_head_tail, ptr @rna_CopyLocationConstraint_use_offset } }, ptr @.str.307, ptr null, ptr null, i32 4, ptr @.str.308, ptr @.str.309, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.291 = private unnamed_addr constant [25 x i8] c"MaintainVolumeConstraint\00", align 1
@.str.292 = private unnamed_addr constant [27 x i8] c"Maintain Volume Constraint\00", align 1
@.str.293 = private unnamed_addr constant [55 x i8] c"Maintain a constant volume along a single scaling axis\00", align 1
@rna_CopyLocationConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyLocationConstraint_subtarget, ptr @rna_CopyLocationConstraint_head_tail, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyLocationConstraint_target_get, ptr @CopyLocationConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_CopyLocationConstraint_head_tail = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyLocationConstraint_target, ptr null, i32 -1, ptr @.str.186, i32 8195, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.86, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr @CopyLocationConstraint_head_tail_get, ptr @CopyLocationConstraint_head_tail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_CopyLocationConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyLocationConstraint_use_x, ptr @rna_CopyLocationConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyLocationConstraint_subtarget_get, ptr @CopyLocationConstraint_subtarget_length, ptr @CopyLocationConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_CopyLocationConstraint_use_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyLocationConstraint_use_y, ptr @rna_CopyLocationConstraint_subtarget, i32 -1, ptr @.str.272, i32 3, ptr @.str.273, ptr @.str.294, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyLocationConstraint_use_x_get, ptr @CopyLocationConstraint_use_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_CopyLocationConstraint_use_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyLocationConstraint_use_z, ptr @rna_CopyLocationConstraint_use_x, i32 -1, ptr @.str.275, i32 3, ptr @.str.276, ptr @.str.295, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyLocationConstraint_use_y_get, ptr @CopyLocationConstraint_use_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.294 = private unnamed_addr constant [29 x i8] c"Copy the target's X location\00", align 1
@rna_CopyLocationConstraint_use_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyLocationConstraint_invert_x, ptr @rna_CopyLocationConstraint_use_y, i32 -1, ptr @.str.278, i32 3, ptr @.str.279, ptr @.str.296, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyLocationConstraint_use_z_get, ptr @CopyLocationConstraint_use_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.295 = private unnamed_addr constant [29 x i8] c"Copy the target's Y location\00", align 1
@rna_CopyLocationConstraint_invert_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyLocationConstraint_invert_y, ptr @rna_CopyLocationConstraint_use_z, i32 -1, ptr @.str.297, i32 3, ptr @.str.298, ptr @.str.299, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyLocationConstraint_invert_x_get, ptr @CopyLocationConstraint_invert_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.296 = private unnamed_addr constant [29 x i8] c"Copy the target's Z location\00", align 1
@rna_CopyLocationConstraint_invert_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyLocationConstraint_invert_z, ptr @rna_CopyLocationConstraint_invert_x, i32 -1, ptr @.str.300, i32 3, ptr @.str.301, ptr @.str.302, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyLocationConstraint_invert_y_get, ptr @CopyLocationConstraint_invert_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.297 = private unnamed_addr constant [9 x i8] c"invert_x\00", align 1
@.str.298 = private unnamed_addr constant [9 x i8] c"Invert X\00", align 1
@.str.299 = private unnamed_addr constant [22 x i8] c"Invert the X location\00", align 1
@rna_CopyLocationConstraint_invert_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyLocationConstraint_use_offset, ptr @rna_CopyLocationConstraint_invert_y, i32 -1, ptr @.str.303, i32 3, ptr @.str.304, ptr @.str.305, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyLocationConstraint_invert_z_get, ptr @CopyLocationConstraint_invert_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.300 = private unnamed_addr constant [9 x i8] c"invert_y\00", align 1
@.str.301 = private unnamed_addr constant [9 x i8] c"Invert Y\00", align 1
@.str.302 = private unnamed_addr constant [22 x i8] c"Invert the Y location\00", align 1
@rna_CopyLocationConstraint_use_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CopyLocationConstraint_invert_z, i32 -1, ptr @.str.281, i32 3, ptr @.str.218, ptr @.str.306, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyLocationConstraint_use_offset_get, ptr @CopyLocationConstraint_use_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.303 = private unnamed_addr constant [9 x i8] c"invert_z\00", align 1
@.str.304 = private unnamed_addr constant [9 x i8] c"Invert Z\00", align 1
@.str.305 = private unnamed_addr constant [22 x i8] c"Invert the Z location\00", align 1
@.str.306 = private unnamed_addr constant [43 x i8] c"Add original location into copied location\00", align 1
@RNA_CopyRotationConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CopyTransformsConstraint, ptr @RNA_CopyLocationConstraint, ptr null, %struct.ListBase { ptr @rna_CopyRotationConstraint_target, ptr @rna_CopyRotationConstraint_use_offset } }, ptr @.str.317, ptr null, ptr null, i32 4, ptr @.str.318, ptr @.str.319, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.307 = private unnamed_addr constant [23 x i8] c"CopyLocationConstraint\00", align 1
@.str.308 = private unnamed_addr constant [25 x i8] c"Copy Location Constraint\00", align 1
@.str.309 = private unnamed_addr constant [32 x i8] c"Copy the location of the target\00", align 1
@rna_CopyRotationConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyRotationConstraint_use_x, ptr @rna_CopyRotationConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyRotationConstraint_subtarget_get, ptr @CopyRotationConstraint_subtarget_length, ptr @CopyRotationConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_CopyRotationConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyRotationConstraint_subtarget, ptr null, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyRotationConstraint_target_get, ptr @CopyRotationConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_CopyRotationConstraint_use_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyRotationConstraint_use_y, ptr @rna_CopyRotationConstraint_subtarget, i32 -1, ptr @.str.272, i32 3, ptr @.str.273, ptr @.str.310, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyRotationConstraint_use_x_get, ptr @CopyRotationConstraint_use_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_CopyRotationConstraint_use_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyRotationConstraint_use_z, ptr @rna_CopyRotationConstraint_use_x, i32 -1, ptr @.str.275, i32 3, ptr @.str.276, ptr @.str.311, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyRotationConstraint_use_y_get, ptr @CopyRotationConstraint_use_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.310 = private unnamed_addr constant [29 x i8] c"Copy the target's X rotation\00", align 1
@rna_CopyRotationConstraint_use_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyRotationConstraint_invert_x, ptr @rna_CopyRotationConstraint_use_y, i32 -1, ptr @.str.278, i32 3, ptr @.str.279, ptr @.str.312, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyRotationConstraint_use_z_get, ptr @CopyRotationConstraint_use_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.311 = private unnamed_addr constant [29 x i8] c"Copy the target's Y rotation\00", align 1
@rna_CopyRotationConstraint_invert_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyRotationConstraint_invert_y, ptr @rna_CopyRotationConstraint_use_z, i32 -1, ptr @.str.297, i32 3, ptr @.str.298, ptr @.str.313, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyRotationConstraint_invert_x_get, ptr @CopyRotationConstraint_invert_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.312 = private unnamed_addr constant [29 x i8] c"Copy the target's Z rotation\00", align 1
@rna_CopyRotationConstraint_invert_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyRotationConstraint_invert_z, ptr @rna_CopyRotationConstraint_invert_x, i32 -1, ptr @.str.300, i32 3, ptr @.str.301, ptr @.str.314, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyRotationConstraint_invert_y_get, ptr @CopyRotationConstraint_invert_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.313 = private unnamed_addr constant [22 x i8] c"Invert the X rotation\00", align 1
@rna_CopyRotationConstraint_invert_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyRotationConstraint_use_offset, ptr @rna_CopyRotationConstraint_invert_y, i32 -1, ptr @.str.303, i32 3, ptr @.str.304, ptr @.str.315, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyRotationConstraint_invert_z_get, ptr @CopyRotationConstraint_invert_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.314 = private unnamed_addr constant [22 x i8] c"Invert the Y rotation\00", align 1
@rna_CopyRotationConstraint_use_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CopyRotationConstraint_invert_z, i32 -1, ptr @.str.281, i32 3, ptr @.str.218, ptr @.str.316, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyRotationConstraint_use_offset_get, ptr @CopyRotationConstraint_use_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.315 = private unnamed_addr constant [22 x i8] c"Invert the Z rotation\00", align 1
@.str.316 = private unnamed_addr constant [43 x i8] c"Add original rotation into copied rotation\00", align 1
@RNA_CopyTransformsConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FloorConstraint, ptr @RNA_CopyRotationConstraint, ptr null, %struct.ListBase { ptr @rna_CopyTransformsConstraint_head_tail, ptr @rna_CopyTransformsConstraint_subtarget } }, ptr @.str.320, ptr null, ptr null, i32 4, ptr @.str.321, ptr @.str.322, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.317 = private unnamed_addr constant [23 x i8] c"CopyRotationConstraint\00", align 1
@.str.318 = private unnamed_addr constant [25 x i8] c"Copy Rotation Constraint\00", align 1
@.str.319 = private unnamed_addr constant [32 x i8] c"Copy the rotation of the target\00", align 1
@rna_CopyTransformsConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyTransformsConstraint_subtarget, ptr @rna_CopyTransformsConstraint_head_tail, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyTransformsConstraint_target_get, ptr @CopyTransformsConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_CopyTransformsConstraint_head_tail = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CopyTransformsConstraint_target, ptr null, i32 -1, ptr @.str.186, i32 8195, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.86, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr @CopyTransformsConstraint_head_tail_get, ptr @CopyTransformsConstraint_head_tail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_CopyTransformsConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CopyTransformsConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CopyTransformsConstraint_subtarget_get, ptr @CopyTransformsConstraint_subtarget_length, ptr @CopyTransformsConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@RNA_FloorConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_TrackToConstraint, ptr @RNA_CopyTransformsConstraint, ptr null, %struct.ListBase { ptr @rna_FloorConstraint_target, ptr @rna_FloorConstraint_offset } }, ptr @.str.333, ptr null, ptr null, i32 4, ptr @.str.334, ptr @.str.335, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.320 = private unnamed_addr constant [25 x i8] c"CopyTransformsConstraint\00", align 1
@.str.321 = private unnamed_addr constant [27 x i8] c"Copy Transforms Constraint\00", align 1
@.str.322 = private unnamed_addr constant [38 x i8] c"Copy all the transforms of the target\00", align 1
@rna_FloorConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_FloorConstraint_floor_location, ptr @rna_FloorConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FloorConstraint_subtarget_get, ptr @FloorConstraint_subtarget_length, ptr @FloorConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_FloorConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FloorConstraint_subtarget, ptr null, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FloorConstraint_target_get, ptr @FloorConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_FloorConstraint_floor_location = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FloorConstraint_use_sticky, ptr @rna_FloorConstraint_subtarget, i32 -1, ptr @.str.323, i32 3, ptr @.str.324, ptr @.str.325, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FloorConstraint_floor_location_get, ptr @FloorConstraint_floor_location_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FloorConstraint_floor_location_items, i32 6, i32 0 }, align 8
@rna_FloorConstraint_use_sticky = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FloorConstraint_use_rotation, ptr @rna_FloorConstraint_floor_location, i32 -1, ptr @.str.326, i32 3, ptr @.str.327, ptr @.str.328, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FloorConstraint_use_sticky_get, ptr @FloorConstraint_use_sticky_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.323 = private unnamed_addr constant [15 x i8] c"floor_location\00", align 1
@.str.324 = private unnamed_addr constant [15 x i8] c"Floor Location\00", align 1
@.str.325 = private unnamed_addr constant [53 x i8] c"Location of target that object will not pass through\00", align 1
@rna_FloorConstraint_floor_location_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.775, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.776, i32 0, ptr @.str.737, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.777, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.778, i32 0, ptr @.str.740, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.779, i32 0, ptr @.str.742, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.780, i32 0, ptr @.str.744, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FloorConstraint_use_rotation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FloorConstraint_offset, ptr @rna_FloorConstraint_use_sticky, i32 -1, ptr @.str.329, i32 3, ptr @.str.330, ptr @.str.331, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FloorConstraint_use_rotation_get, ptr @FloorConstraint_use_rotation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.326 = private unnamed_addr constant [11 x i8] c"use_sticky\00", align 1
@.str.327 = private unnamed_addr constant [7 x i8] c"Sticky\00", align 1
@.str.328 = private unnamed_addr constant [36 x i8] c"Immobilize object while constrained\00", align 1
@rna_FloorConstraint_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FloorConstraint_use_rotation, i32 -1, ptr @.str.217, i32 8195, ptr @.str.218, ptr @.str.332, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @FloorConstraint_offset_get, ptr @FloorConstraint_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float -1.000000e+03, float 1.000000e+03, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.329 = private unnamed_addr constant [13 x i8] c"use_rotation\00", align 1
@.str.330 = private unnamed_addr constant [13 x i8] c"Use Rotation\00", align 1
@.str.331 = private unnamed_addr constant [45 x i8] c"Use the target's rotation to determine floor\00", align 1
@.str.332 = private unnamed_addr constant [35 x i8] c"Offset of floor from object origin\00", align 1
@RNA_TrackToConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_KinematicConstraint, ptr @RNA_FloorConstraint, ptr null, %struct.ListBase { ptr @rna_TrackToConstraint_head_tail, ptr @rna_TrackToConstraint_use_target_z } }, ptr @.str.339, ptr null, ptr null, i32 4, ptr @.str.340, ptr @.str.341, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.333 = private unnamed_addr constant [16 x i8] c"FloorConstraint\00", align 1
@.str.334 = private unnamed_addr constant [17 x i8] c"Floor Constraint\00", align 1
@.str.335 = private unnamed_addr constant [46 x i8] c"Use the target object for location limitation\00", align 1
@rna_TrackToConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_TrackToConstraint_subtarget, ptr @rna_TrackToConstraint_head_tail, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TrackToConstraint_target_get, ptr @TrackToConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_TrackToConstraint_head_tail = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TrackToConstraint_target, ptr null, i32 -1, ptr @.str.186, i32 8195, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.86, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr @TrackToConstraint_head_tail_get, ptr @TrackToConstraint_head_tail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_TrackToConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_TrackToConstraint_track_axis, ptr @rna_TrackToConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TrackToConstraint_subtarget_get, ptr @TrackToConstraint_subtarget_length, ptr @TrackToConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_TrackToConstraint_track_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_TrackToConstraint_up_axis, ptr @rna_TrackToConstraint_subtarget, i32 -1, ptr @.str.241, i32 3, ptr @.str.242, ptr @.str.243, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TrackToConstraint_track_axis_get, ptr @TrackToConstraint_track_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_TrackToConstraint_track_axis_items, i32 6, i32 0 }, align 8
@rna_TrackToConstraint_up_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_TrackToConstraint_use_target_z, ptr @rna_TrackToConstraint_track_axis, i32 -1, ptr @.str.226, i32 3, ptr @.str.227, ptr @.str.228, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TrackToConstraint_up_axis_get, ptr @TrackToConstraint_up_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_TrackToConstraint_up_axis_items, i32 3, i32 0 }, align 8
@rna_TrackToConstraint_track_axis_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.748, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.749, i32 0, ptr @.str.737, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.750, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.739, i32 0, ptr @.str.740, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.741, i32 0, ptr @.str.742, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.743, i32 0, ptr @.str.744, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_TrackToConstraint_use_target_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_TrackToConstraint_up_axis, i32 -1, ptr @.str.336, i32 3, ptr @.str.337, ptr @.str.338, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TrackToConstraint_use_target_z_get, ptr @TrackToConstraint_use_target_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_TrackToConstraint_up_axis_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.745, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.746, i32 0, ptr @.str.737, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.747, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.336 = private unnamed_addr constant [13 x i8] c"use_target_z\00", align 1
@.str.337 = private unnamed_addr constant [9 x i8] c"Target Z\00", align 1
@.str.338 = private unnamed_addr constant [68 x i8] c"Target's Z axis, not World Z axis, will constraint the Up direction\00", align 1
@RNA_KinematicConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_RigidBodyJointConstraint, ptr @RNA_TrackToConstraint, ptr null, %struct.ListBase { ptr @rna_KinematicConstraint_target, ptr @rna_KinematicConstraint_distance } }, ptr @.str.402, ptr null, ptr null, i32 4, ptr @.str.403, ptr @.str.47, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.339 = private unnamed_addr constant [18 x i8] c"TrackToConstraint\00", align 1
@.str.340 = private unnamed_addr constant [20 x i8] c"Track To Constraint\00", align 1
@.str.341 = private unnamed_addr constant [45 x i8] c"Aim the constrained object toward the target\00", align 1
@rna_KinematicConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_iterations, ptr @rna_KinematicConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_subtarget_get, ptr @KinematicConstraint_subtarget_length, ptr @KinematicConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_KinematicConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_subtarget, ptr null, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_target_get, ptr @KinematicConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_KinematicConstraint_iterations = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_pole_target, ptr @rna_KinematicConstraint_subtarget, i32 -1, ptr @.str.342, i32 8195, ptr @.str.343, ptr @.str.344, i32 0, ptr @.str.86, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 8, i32 1, ptr null, ptr null }, ptr @KinematicConstraint_iterations_get, ptr @KinematicConstraint_iterations_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 10000, i32 1, i32 0, ptr null }, align 8
@rna_KinematicConstraint_pole_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_pole_subtarget, ptr @rna_KinematicConstraint_iterations, i32 -1, ptr @.str.345, i32 8388609, ptr @.str.346, ptr @.str.347, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_pole_target_get, ptr @KinematicConstraint_pole_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.342 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.343 = private unnamed_addr constant [11 x i8] c"Iterations\00", align 1
@.str.344 = private unnamed_addr constant [37 x i8] c"Maximum number of solving iterations\00", align 1
@rna_KinematicConstraint_pole_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_pole_angle, ptr @rna_KinematicConstraint_pole_target, i32 -1, ptr @.str.348, i32 262145, ptr @.str.349, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_pole_subtarget_get, ptr @KinematicConstraint_pole_subtarget_length, ptr @KinematicConstraint_pole_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.345 = private unnamed_addr constant [12 x i8] c"pole_target\00", align 1
@.str.346 = private unnamed_addr constant [12 x i8] c"Pole Target\00", align 1
@.str.347 = private unnamed_addr constant [25 x i8] c"Object for pole rotation\00", align 1
@rna_KinematicConstraint_pole_angle = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_weight, ptr @rna_KinematicConstraint_pole_subtarget, i32 -1, ptr @.str.350, i32 8195, ptr @.str.351, ptr @.str.352, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 152, i32 4, ptr null, ptr null }, ptr @KinematicConstraint_pole_angle_get, ptr @KinematicConstraint_pole_angle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC00921FB60000000, float 0x400921FB60000000, float 1.000000e+01, i32 4, float 0.000000e+00, ptr null }, align 8
@.str.348 = private unnamed_addr constant [15 x i8] c"pole_subtarget\00", align 1
@.str.349 = private unnamed_addr constant [16 x i8] c"Pole Sub-Target\00", align 1
@rna_KinematicConstraint_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_orient_weight, ptr @rna_KinematicConstraint_pole_angle, i32 -1, ptr @.str.353, i32 8195, ptr @.str.354, ptr @.str.355, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 156, i32 4, ptr null, ptr null }, ptr @KinematicConstraint_weight_get, ptr @KinematicConstraint_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+00, float 0x3F847AE140000000, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.350 = private unnamed_addr constant [11 x i8] c"pole_angle\00", align 1
@.str.351 = private unnamed_addr constant [11 x i8] c"Pole Angle\00", align 1
@.str.352 = private unnamed_addr constant [21 x i8] c"Pole rotation offset\00", align 1
@rna_KinematicConstraint_orient_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_chain_count, ptr @rna_KinematicConstraint_weight, i32 -1, ptr @.str.356, i32 8195, ptr @.str.357, ptr @.str.358, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 160, i32 4, ptr null, ptr null }, ptr @KinematicConstraint_orient_weight_get, ptr @KinematicConstraint_orient_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+00, float 0x3F847AE140000000, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.353 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.354 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.355 = private unnamed_addr constant [56 x i8] c"For Tree-IK: Weight of position control for this target\00", align 1
@rna_KinematicConstraint_chain_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_use_tail, ptr @rna_KinematicConstraint_orient_weight, i32 -1, ptr @.str.359, i32 8195, ptr @.str.360, ptr @.str.361, i32 0, ptr @.str.86, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 12, i32 1, ptr null, ptr null }, ptr @KinematicConstraint_chain_count_get, ptr @KinematicConstraint_chain_count_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 255, i32 0, i32 255, i32 1, i32 0, ptr null }, align 8
@.str.356 = private unnamed_addr constant [14 x i8] c"orient_weight\00", align 1
@.str.357 = private unnamed_addr constant [19 x i8] c"Orientation Weight\00", align 1
@.str.358 = private unnamed_addr constant [59 x i8] c"For Tree-IK: Weight of orientation control for this target\00", align 1
@rna_KinematicConstraint_use_tail = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_reference_axis, ptr @rna_KinematicConstraint_chain_count, i32 -1, ptr @.str.362, i32 3, ptr @.str.363, ptr @.str.364, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_use_tail_get, ptr @KinematicConstraint_use_tail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.359 = private unnamed_addr constant [12 x i8] c"chain_count\00", align 1
@.str.360 = private unnamed_addr constant [13 x i8] c"Chain Length\00", align 1
@.str.361 = private unnamed_addr constant [64 x i8] c"How many bones are included in the IK effect - 0 uses all bones\00", align 1
@rna_KinematicConstraint_reference_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_use_location, ptr @rna_KinematicConstraint_use_tail, i32 -1, ptr @.str.365, i32 3, ptr @.str.366, ptr @.str.367, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_reference_axis_get, ptr @KinematicConstraint_reference_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_KinematicConstraint_reference_axis_items, i32 2, i32 0 }, align 8
@.str.362 = private unnamed_addr constant [9 x i8] c"use_tail\00", align 1
@.str.363 = private unnamed_addr constant [9 x i8] c"Use Tail\00", align 1
@.str.364 = private unnamed_addr constant [45 x i8] c"Include bone's tail as last element in chain\00", align 1
@rna_KinematicConstraint_use_location = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_lock_location_x, ptr @rna_KinematicConstraint_reference_axis, i32 -1, ptr @.str.368, i32 3, ptr @.str.369, ptr @.str.370, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_use_location_get, ptr @KinematicConstraint_use_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.365 = private unnamed_addr constant [15 x i8] c"reference_axis\00", align 1
@.str.366 = private unnamed_addr constant [15 x i8] c"Axis Reference\00", align 1
@.str.367 = private unnamed_addr constant [66 x i8] c"Constraint axis Lock options relative to Bone or Target reference\00", align 1
@rna_KinematicConstraint_reference_axis_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.781, i32 0, ptr @.str.782, ptr @.str }, %struct.EnumPropertyItem { i32 16384, ptr @.str.783, i32 0, ptr @.str.128, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KinematicConstraint_lock_location_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_lock_location_y, ptr @rna_KinematicConstraint_use_location, i32 -1, ptr @.str.371, i32 3, ptr @.str.372, ptr @.str.373, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_lock_location_x_get, ptr @KinematicConstraint_lock_location_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.368 = private unnamed_addr constant [13 x i8] c"use_location\00", align 1
@.str.369 = private unnamed_addr constant [9 x i8] c"Position\00", align 1
@.str.370 = private unnamed_addr constant [33 x i8] c"Chain follows position of target\00", align 1
@rna_KinematicConstraint_lock_location_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_lock_location_z, ptr @rna_KinematicConstraint_lock_location_x, i32 -1, ptr @.str.374, i32 3, ptr @.str.375, ptr @.str.376, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_lock_location_y_get, ptr @KinematicConstraint_lock_location_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.371 = private unnamed_addr constant [16 x i8] c"lock_location_x\00", align 1
@.str.372 = private unnamed_addr constant [11 x i8] c"Lock X Pos\00", align 1
@.str.373 = private unnamed_addr constant [33 x i8] c"Constraint position along X axis\00", align 1
@rna_KinematicConstraint_lock_location_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_use_rotation, ptr @rna_KinematicConstraint_lock_location_y, i32 -1, ptr @.str.377, i32 3, ptr @.str.378, ptr @.str.379, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_lock_location_z_get, ptr @KinematicConstraint_lock_location_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.374 = private unnamed_addr constant [16 x i8] c"lock_location_y\00", align 1
@.str.375 = private unnamed_addr constant [11 x i8] c"Lock Y Pos\00", align 1
@.str.376 = private unnamed_addr constant [33 x i8] c"Constraint position along Y axis\00", align 1
@rna_KinematicConstraint_use_rotation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_lock_rotation_x, ptr @rna_KinematicConstraint_lock_location_z, i32 -1, ptr @.str.329, i32 3, ptr @.str.380, ptr @.str.381, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_use_rotation_get, ptr @KinematicConstraint_use_rotation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.377 = private unnamed_addr constant [16 x i8] c"lock_location_z\00", align 1
@.str.378 = private unnamed_addr constant [11 x i8] c"Lock Z Pos\00", align 1
@.str.379 = private unnamed_addr constant [33 x i8] c"Constraint position along Z axis\00", align 1
@rna_KinematicConstraint_lock_rotation_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_lock_rotation_y, ptr @rna_KinematicConstraint_use_rotation, i32 -1, ptr @.str.382, i32 3, ptr @.str.383, ptr @.str.384, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_lock_rotation_x_get, ptr @KinematicConstraint_lock_rotation_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.380 = private unnamed_addr constant [9 x i8] c"Rotation\00", align 1
@.str.381 = private unnamed_addr constant [33 x i8] c"Chain follows rotation of target\00", align 1
@rna_KinematicConstraint_lock_rotation_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_lock_rotation_z, ptr @rna_KinematicConstraint_lock_rotation_x, i32 -1, ptr @.str.385, i32 3, ptr @.str.386, ptr @.str.387, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_lock_rotation_y_get, ptr @KinematicConstraint_lock_rotation_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.382 = private unnamed_addr constant [16 x i8] c"lock_rotation_x\00", align 1
@.str.383 = private unnamed_addr constant [11 x i8] c"Lock X Rot\00", align 1
@.str.384 = private unnamed_addr constant [33 x i8] c"Constraint rotation along X axis\00", align 1
@rna_KinematicConstraint_lock_rotation_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_use_stretch, ptr @rna_KinematicConstraint_lock_rotation_y, i32 -1, ptr @.str.388, i32 3, ptr @.str.389, ptr @.str.390, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_lock_rotation_z_get, ptr @KinematicConstraint_lock_rotation_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.385 = private unnamed_addr constant [16 x i8] c"lock_rotation_y\00", align 1
@.str.386 = private unnamed_addr constant [11 x i8] c"Lock Y Rot\00", align 1
@.str.387 = private unnamed_addr constant [33 x i8] c"Constraint rotation along Y axis\00", align 1
@rna_KinematicConstraint_use_stretch = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_ik_type, ptr @rna_KinematicConstraint_lock_rotation_z, i32 -1, ptr @.str.391, i32 3, ptr @.str.392, ptr @.str.393, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_use_stretch_get, ptr @KinematicConstraint_use_stretch_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.388 = private unnamed_addr constant [16 x i8] c"lock_rotation_z\00", align 1
@.str.389 = private unnamed_addr constant [11 x i8] c"Lock Z Rot\00", align 1
@.str.390 = private unnamed_addr constant [33 x i8] c"Constraint rotation along Z axis\00", align 1
@rna_KinematicConstraint_ik_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_limit_mode, ptr @rna_KinematicConstraint_use_stretch, i32 -1, ptr @.str.394, i32 3, ptr @.str.395, ptr @.str, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_ik_type_get, ptr @KinematicConstraint_ik_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_KinematicConstraint_ik_type_items, i32 2, i32 0 }, align 8
@.str.391 = private unnamed_addr constant [12 x i8] c"use_stretch\00", align 1
@.str.392 = private unnamed_addr constant [8 x i8] c"Stretch\00", align 1
@.str.393 = private unnamed_addr constant [21 x i8] c"Enable IK Stretching\00", align 1
@rna_KinematicConstraint_limit_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KinematicConstraint_distance, ptr @rna_KinematicConstraint_ik_type, i32 -1, ptr @.str.396, i32 3, ptr @.str.397, ptr @.str.398, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KinematicConstraint_limit_mode_get, ptr @KinematicConstraint_limit_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_KinematicConstraint_limit_mode_items, i32 3, i32 0 }, align 8
@.str.394 = private unnamed_addr constant [8 x i8] c"ik_type\00", align 1
@.str.395 = private unnamed_addr constant [8 x i8] c"IK Type\00", align 1
@rna_KinematicConstraint_ik_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.784, i32 0, ptr @.str.785, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.786, i32 0, ptr @.str.400, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KinematicConstraint_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KinematicConstraint_limit_mode, i32 -1, ptr @.str.399, i32 8195, ptr @.str.400, ptr @.str.401, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 180, i32 4, ptr null, ptr null }, ptr @KinematicConstraint_distance_get, ptr @KinematicConstraint_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.396 = private unnamed_addr constant [11 x i8] c"limit_mode\00", align 1
@.str.397 = private unnamed_addr constant [11 x i8] c"Limit Mode\00", align 1
@.str.398 = private unnamed_addr constant [54 x i8] c"Distances in relation to sphere of influence to allow\00", align 1
@rna_KinematicConstraint_limit_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.787, i32 0, ptr @.str.788, ptr @.str.789 }, %struct.EnumPropertyItem { i32 1, ptr @.str.790, i32 0, ptr @.str.791, ptr @.str.792 }, %struct.EnumPropertyItem { i32 2, ptr @.str.793, i32 0, ptr @.str.794, ptr @.str.795 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.399 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.400 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.401 = private unnamed_addr constant [26 x i8] c"Radius of limiting sphere\00", align 1
@RNA_RigidBodyJointConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ClampToConstraint, ptr @RNA_KinematicConstraint, ptr null, %struct.ListBase { ptr @rna_RigidBodyJointConstraint_target, ptr @rna_RigidBodyJointConstraint_use_angular_limit_z } }, ptr @.str.475, ptr null, ptr null, i32 4, ptr @.str.476, ptr @.str.477, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.402 = private unnamed_addr constant [20 x i8] c"KinematicConstraint\00", align 1
@.str.403 = private unnamed_addr constant [21 x i8] c"Kinematic Constraint\00", align 1
@rna_RigidBodyJointConstraint_child = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_pivot_type, ptr @rna_RigidBodyJointConstraint_target, i32 -1, ptr @.str.404, i32 8388609, ptr @.str.405, ptr @.str.406, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyJointConstraint_child_get, ptr @RigidBodyJointConstraint_child_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_RigidBodyJointConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_child, ptr null, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyJointConstraint_target_get, ptr @RigidBodyJointConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_RigidBodyJointConstraint_pivot_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_pivot_x, ptr @rna_RigidBodyJointConstraint_child, i32 -1, ptr @.str.407, i32 3, ptr @.str.408, ptr @.str, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyJointConstraint_pivot_type_get, ptr @RigidBodyJointConstraint_pivot_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_RigidBodyJointConstraint_pivot_type_items, i32 4, i32 1 }, align 8
@.str.404 = private unnamed_addr constant [6 x i8] c"child\00", align 1
@.str.405 = private unnamed_addr constant [13 x i8] c"Child Object\00", align 1
@.str.406 = private unnamed_addr constant [13 x i8] c"Child object\00", align 1
@rna_RigidBodyJointConstraint_pivot_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_pivot_y, ptr @rna_RigidBodyJointConstraint_pivot_type, i32 -1, ptr @.str.409, i32 8195, ptr @.str.410, ptr @.str.411, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_pivot_x_get, ptr @RigidBodyJointConstraint_pivot_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.407 = private unnamed_addr constant [11 x i8] c"pivot_type\00", align 1
@.str.408 = private unnamed_addr constant [11 x i8] c"Pivot Type\00", align 1
@rna_RigidBodyJointConstraint_pivot_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.796, i32 0, ptr @.str.797, ptr @.str.798 }, %struct.EnumPropertyItem { i32 2, ptr @.str.799, i32 0, ptr @.str.800, ptr @.str.801 }, %struct.EnumPropertyItem { i32 4, ptr @.str.802, i32 0, ptr @.str.803, ptr @.str.804 }, %struct.EnumPropertyItem { i32 12, ptr @.str.805, i32 0, ptr @.str.806, ptr @.str.807 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_RigidBodyJointConstraint_pivot_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_pivot_z, ptr @rna_RigidBodyJointConstraint_pivot_x, i32 -1, ptr @.str.412, i32 8195, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 24, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_pivot_y_get, ptr @RigidBodyJointConstraint_pivot_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.409 = private unnamed_addr constant [8 x i8] c"pivot_x\00", align 1
@.str.410 = private unnamed_addr constant [8 x i8] c"Pivot X\00", align 1
@.str.411 = private unnamed_addr constant [18 x i8] c"Offset pivot on X\00", align 1
@rna_RigidBodyJointConstraint_pivot_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_axis_x, ptr @rna_RigidBodyJointConstraint_pivot_y, i32 -1, ptr @.str.415, i32 8195, ptr @.str.416, ptr @.str.417, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 28, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_pivot_z_get, ptr @RigidBodyJointConstraint_pivot_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.412 = private unnamed_addr constant [8 x i8] c"pivot_y\00", align 1
@.str.413 = private unnamed_addr constant [8 x i8] c"Pivot Y\00", align 1
@.str.414 = private unnamed_addr constant [18 x i8] c"Offset pivot on Y\00", align 1
@rna_RigidBodyJointConstraint_axis_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_axis_y, ptr @rna_RigidBodyJointConstraint_pivot_z, i32 -1, ptr @.str.418, i32 8195, ptr @.str.419, ptr @.str.420, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 32, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_axis_x_get, ptr @RigidBodyJointConstraint_axis_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.415 = private unnamed_addr constant [8 x i8] c"pivot_z\00", align 1
@.str.416 = private unnamed_addr constant [8 x i8] c"Pivot Z\00", align 1
@.str.417 = private unnamed_addr constant [18 x i8] c"Offset pivot on Z\00", align 1
@rna_RigidBodyJointConstraint_axis_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_axis_z, ptr @rna_RigidBodyJointConstraint_axis_x, i32 -1, ptr @.str.421, i32 8195, ptr @.str.422, ptr @.str.423, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 36, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_axis_y_get, ptr @RigidBodyJointConstraint_axis_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.418 = private unnamed_addr constant [7 x i8] c"axis_x\00", align 1
@.str.419 = private unnamed_addr constant [7 x i8] c"Axis X\00", align 1
@.str.420 = private unnamed_addr constant [23 x i8] c"Rotate pivot on X axis\00", align 1
@rna_RigidBodyJointConstraint_axis_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_use_linked_collision, ptr @rna_RigidBodyJointConstraint_axis_y, i32 -1, ptr @.str.424, i32 8195, ptr @.str.425, ptr @.str.426, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 40, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_axis_z_get, ptr @RigidBodyJointConstraint_axis_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.421 = private unnamed_addr constant [7 x i8] c"axis_y\00", align 1
@.str.422 = private unnamed_addr constant [7 x i8] c"Axis Y\00", align 1
@.str.423 = private unnamed_addr constant [23 x i8] c"Rotate pivot on Y axis\00", align 1
@rna_RigidBodyJointConstraint_use_linked_collision = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_show_pivot, ptr @rna_RigidBodyJointConstraint_axis_z, i32 -1, ptr @.str.427, i32 3, ptr @.str.428, ptr @.str.429, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyJointConstraint_use_linked_collision_get, ptr @RigidBodyJointConstraint_use_linked_collision_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.424 = private unnamed_addr constant [7 x i8] c"axis_z\00", align 1
@.str.425 = private unnamed_addr constant [7 x i8] c"Axis Z\00", align 1
@.str.426 = private unnamed_addr constant [23 x i8] c"Rotate pivot on Z axis\00", align 1
@rna_RigidBodyJointConstraint_show_pivot = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_limit_min_x, ptr @rna_RigidBodyJointConstraint_use_linked_collision, i32 -1, ptr @.str.430, i32 3, ptr @.str.431, ptr @.str.432, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyJointConstraint_show_pivot_get, ptr @RigidBodyJointConstraint_show_pivot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.427 = private unnamed_addr constant [21 x i8] c"use_linked_collision\00", align 1
@.str.428 = private unnamed_addr constant [25 x i8] c"Disable Linked Collision\00", align 1
@.str.429 = private unnamed_addr constant [40 x i8] c"Disable collision between linked bodies\00", align 1
@rna_RigidBodyJointConstraint_limit_min_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_limit_min_y, ptr @rna_RigidBodyJointConstraint_show_pivot, i32 -1, ptr @.str.433, i32 8195, ptr @.str.434, ptr @.str, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 44, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_limit_min_x_get, ptr @RigidBodyJointConstraint_limit_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.430 = private unnamed_addr constant [11 x i8] c"show_pivot\00", align 1
@.str.431 = private unnamed_addr constant [11 x i8] c"Draw Pivot\00", align 1
@.str.432 = private unnamed_addr constant [48 x i8] c"Display the pivot point and rotation in 3D view\00", align 1
@rna_RigidBodyJointConstraint_limit_min_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_limit_min_z, ptr @rna_RigidBodyJointConstraint_limit_min_x, i32 -1, ptr @.str.435, i32 8195, ptr @.str.436, ptr @.str, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 48, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_limit_min_y_get, ptr @RigidBodyJointConstraint_limit_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.433 = private unnamed_addr constant [12 x i8] c"limit_min_x\00", align 1
@.str.434 = private unnamed_addr constant [16 x i8] c"Minimum Limit X\00", align 1
@rna_RigidBodyJointConstraint_limit_min_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_limit_max_x, ptr @rna_RigidBodyJointConstraint_limit_min_y, i32 -1, ptr @.str.437, i32 8195, ptr @.str.438, ptr @.str, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 52, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_limit_min_z_get, ptr @RigidBodyJointConstraint_limit_min_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.435 = private unnamed_addr constant [12 x i8] c"limit_min_y\00", align 1
@.str.436 = private unnamed_addr constant [16 x i8] c"Minimum Limit Y\00", align 1
@rna_RigidBodyJointConstraint_limit_max_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_limit_max_y, ptr @rna_RigidBodyJointConstraint_limit_min_z, i32 -1, ptr @.str.439, i32 8195, ptr @.str.440, ptr @.str, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 68, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_limit_max_x_get, ptr @RigidBodyJointConstraint_limit_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.437 = private unnamed_addr constant [12 x i8] c"limit_min_z\00", align 1
@.str.438 = private unnamed_addr constant [16 x i8] c"Minimum Limit Z\00", align 1
@rna_RigidBodyJointConstraint_limit_max_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_limit_max_z, ptr @rna_RigidBodyJointConstraint_limit_max_x, i32 -1, ptr @.str.441, i32 8195, ptr @.str.442, ptr @.str, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 72, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_limit_max_y_get, ptr @RigidBodyJointConstraint_limit_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.439 = private unnamed_addr constant [12 x i8] c"limit_max_x\00", align 1
@.str.440 = private unnamed_addr constant [16 x i8] c"Maximum Limit X\00", align 1
@rna_RigidBodyJointConstraint_limit_max_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_limit_angle_min_x, ptr @rna_RigidBodyJointConstraint_limit_max_y, i32 -1, ptr @.str.443, i32 8195, ptr @.str.444, ptr @.str, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 76, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_limit_max_z_get, ptr @RigidBodyJointConstraint_limit_max_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.441 = private unnamed_addr constant [12 x i8] c"limit_max_y\00", align 1
@.str.442 = private unnamed_addr constant [16 x i8] c"Maximum Limit Y\00", align 1
@rna_RigidBodyJointConstraint_limit_angle_min_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_limit_angle_min_y, ptr @rna_RigidBodyJointConstraint_limit_max_z, i32 -1, ptr @.str.445, i32 8195, ptr @.str.446, ptr @.str, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_limit_angle_min_x_get, ptr @RigidBodyJointConstraint_limit_angle_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.443 = private unnamed_addr constant [12 x i8] c"limit_max_z\00", align 1
@.str.444 = private unnamed_addr constant [16 x i8] c"Maximum Limit Z\00", align 1
@rna_RigidBodyJointConstraint_limit_angle_min_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_limit_angle_min_z, ptr @rna_RigidBodyJointConstraint_limit_angle_min_x, i32 -1, ptr @.str.447, i32 8195, ptr @.str.448, ptr @.str, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_limit_angle_min_y_get, ptr @RigidBodyJointConstraint_limit_angle_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.445 = private unnamed_addr constant [18 x i8] c"limit_angle_min_x\00", align 1
@.str.446 = private unnamed_addr constant [24 x i8] c"Minimum Angular Limit X\00", align 1
@rna_RigidBodyJointConstraint_limit_angle_min_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_limit_angle_max_x, ptr @rna_RigidBodyJointConstraint_limit_angle_min_y, i32 -1, ptr @.str.449, i32 8195, ptr @.str.450, ptr @.str, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 64, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_limit_angle_min_z_get, ptr @RigidBodyJointConstraint_limit_angle_min_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.447 = private unnamed_addr constant [18 x i8] c"limit_angle_min_y\00", align 1
@.str.448 = private unnamed_addr constant [24 x i8] c"Minimum Angular Limit Y\00", align 1
@rna_RigidBodyJointConstraint_limit_angle_max_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_limit_angle_max_y, ptr @rna_RigidBodyJointConstraint_limit_angle_min_z, i32 -1, ptr @.str.451, i32 8195, ptr @.str.452, ptr @.str, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 80, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_limit_angle_max_x_get, ptr @RigidBodyJointConstraint_limit_angle_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.449 = private unnamed_addr constant [18 x i8] c"limit_angle_min_z\00", align 1
@.str.450 = private unnamed_addr constant [24 x i8] c"Minimum Angular Limit Z\00", align 1
@rna_RigidBodyJointConstraint_limit_angle_max_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_limit_angle_max_z, ptr @rna_RigidBodyJointConstraint_limit_angle_max_x, i32 -1, ptr @.str.453, i32 8195, ptr @.str.454, ptr @.str, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 84, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_limit_angle_max_y_get, ptr @RigidBodyJointConstraint_limit_angle_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.451 = private unnamed_addr constant [18 x i8] c"limit_angle_max_x\00", align 1
@.str.452 = private unnamed_addr constant [24 x i8] c"Maximum Angular Limit X\00", align 1
@rna_RigidBodyJointConstraint_limit_angle_max_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_use_limit_x, ptr @rna_RigidBodyJointConstraint_limit_angle_max_y, i32 -1, ptr @.str.455, i32 8195, ptr @.str.456, ptr @.str, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 88, i32 4, ptr null, ptr null }, ptr @RigidBodyJointConstraint_limit_angle_max_z_get, ptr @RigidBodyJointConstraint_limit_angle_max_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC01921FB60000000, float 0x401921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.453 = private unnamed_addr constant [18 x i8] c"limit_angle_max_y\00", align 1
@.str.454 = private unnamed_addr constant [24 x i8] c"Maximum Angular Limit Y\00", align 1
@rna_RigidBodyJointConstraint_use_limit_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_use_limit_y, ptr @rna_RigidBodyJointConstraint_limit_angle_max_z, i32 -1, ptr @.str.457, i32 3, ptr @.str.458, ptr @.str.459, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyJointConstraint_use_limit_x_get, ptr @RigidBodyJointConstraint_use_limit_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.455 = private unnamed_addr constant [18 x i8] c"limit_angle_max_z\00", align 1
@.str.456 = private unnamed_addr constant [24 x i8] c"Maximum Angular Limit Z\00", align 1
@rna_RigidBodyJointConstraint_use_limit_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_use_limit_z, ptr @rna_RigidBodyJointConstraint_use_limit_x, i32 -1, ptr @.str.460, i32 3, ptr @.str.461, ptr @.str.462, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyJointConstraint_use_limit_y_get, ptr @RigidBodyJointConstraint_use_limit_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.457 = private unnamed_addr constant [12 x i8] c"use_limit_x\00", align 1
@.str.458 = private unnamed_addr constant [8 x i8] c"Limit X\00", align 1
@.str.459 = private unnamed_addr constant [28 x i8] c"Use minimum/maximum X limit\00", align 1
@rna_RigidBodyJointConstraint_use_limit_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_use_angular_limit_x, ptr @rna_RigidBodyJointConstraint_use_limit_y, i32 -1, ptr @.str.463, i32 3, ptr @.str.464, ptr @.str.465, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyJointConstraint_use_limit_z_get, ptr @RigidBodyJointConstraint_use_limit_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.460 = private unnamed_addr constant [12 x i8] c"use_limit_y\00", align 1
@.str.461 = private unnamed_addr constant [8 x i8] c"Limit Y\00", align 1
@.str.462 = private unnamed_addr constant [28 x i8] c"Use minimum/maximum y limit\00", align 1
@rna_RigidBodyJointConstraint_use_angular_limit_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_use_angular_limit_y, ptr @rna_RigidBodyJointConstraint_use_limit_z, i32 -1, ptr @.str.466, i32 3, ptr @.str.467, ptr @.str.468, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyJointConstraint_use_angular_limit_x_get, ptr @RigidBodyJointConstraint_use_angular_limit_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.463 = private unnamed_addr constant [12 x i8] c"use_limit_z\00", align 1
@.str.464 = private unnamed_addr constant [8 x i8] c"Limit Z\00", align 1
@.str.465 = private unnamed_addr constant [28 x i8] c"Use minimum/maximum z limit\00", align 1
@rna_RigidBodyJointConstraint_use_angular_limit_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RigidBodyJointConstraint_use_angular_limit_z, ptr @rna_RigidBodyJointConstraint_use_angular_limit_x, i32 -1, ptr @.str.469, i32 3, ptr @.str.470, ptr @.str.471, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyJointConstraint_use_angular_limit_y_get, ptr @RigidBodyJointConstraint_use_angular_limit_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.466 = private unnamed_addr constant [20 x i8] c"use_angular_limit_x\00", align 1
@.str.467 = private unnamed_addr constant [16 x i8] c"Angular X Limit\00", align 1
@.str.468 = private unnamed_addr constant [36 x i8] c"Use minimum/maximum X angular limit\00", align 1
@rna_RigidBodyJointConstraint_use_angular_limit_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_RigidBodyJointConstraint_use_angular_limit_y, i32 -1, ptr @.str.472, i32 3, ptr @.str.473, ptr @.str.474, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RigidBodyJointConstraint_use_angular_limit_z_get, ptr @RigidBodyJointConstraint_use_angular_limit_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.469 = private unnamed_addr constant [20 x i8] c"use_angular_limit_y\00", align 1
@.str.470 = private unnamed_addr constant [16 x i8] c"Angular Y Limit\00", align 1
@.str.471 = private unnamed_addr constant [36 x i8] c"Use minimum/maximum Y angular limit\00", align 1
@.str.472 = private unnamed_addr constant [20 x i8] c"use_angular_limit_z\00", align 1
@.str.473 = private unnamed_addr constant [16 x i8] c"Angular Z Limit\00", align 1
@.str.474 = private unnamed_addr constant [36 x i8] c"Use minimum/maximum Z angular limit\00", align 1
@RNA_ClampToConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LimitDistanceConstraint, ptr @RNA_RigidBodyJointConstraint, ptr null, %struct.ListBase { ptr @rna_ClampToConstraint_target, ptr @rna_ClampToConstraint_use_cyclic } }, ptr @.str.485, ptr null, ptr null, i32 4, ptr @.str.486, ptr @.str.487, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.475 = private unnamed_addr constant [25 x i8] c"RigidBodyJointConstraint\00", align 1
@.str.476 = private unnamed_addr constant [28 x i8] c"Rigid Body Joint Constraint\00", align 1
@.str.477 = private unnamed_addr constant [29 x i8] c"For use with the Game Engine\00", align 1
@rna_ClampToConstraint_main_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ClampToConstraint_use_cyclic, ptr @rna_ClampToConstraint_target, i32 -1, ptr @.str.479, i32 3, ptr @.str.480, ptr @.str.481, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClampToConstraint_main_axis_get, ptr @ClampToConstraint_main_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ClampToConstraint_main_axis_items, i32 4, i32 0 }, align 8
@.str.478 = private unnamed_addr constant [28 x i8] c"Target Object (Curves only)\00", align 1
@rna_ClampToConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ClampToConstraint_main_axis, ptr null, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.478, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClampToConstraint_target_get, ptr @ClampToConstraint_target_set, ptr null, ptr @rna_Curve_object_poll, ptr @RNA_Object }, align 8
@rna_ClampToConstraint_use_cyclic = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ClampToConstraint_main_axis, i32 -1, ptr @.str.482, i32 3, ptr @.str.483, ptr @.str.484, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClampToConstraint_use_cyclic_get, ptr @ClampToConstraint_use_cyclic_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.479 = private unnamed_addr constant [10 x i8] c"main_axis\00", align 1
@.str.480 = private unnamed_addr constant [10 x i8] c"Main Axis\00", align 1
@.str.481 = private unnamed_addr constant [22 x i8] c"Main axis of movement\00", align 1
@rna_ClampToConstraint_main_axis_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.808, i32 0, ptr @.str.809, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.810, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.811, i32 0, ptr @.str.737, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.812, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.482 = private unnamed_addr constant [11 x i8] c"use_cyclic\00", align 1
@.str.483 = private unnamed_addr constant [7 x i8] c"Cyclic\00", align 1
@.str.484 = private unnamed_addr constant [64 x i8] c"Treat curve as cyclic curve (no clamping to curve bounding box)\00", align 1
@RNA_LimitDistanceConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LimitScaleConstraint, ptr @RNA_ClampToConstraint, ptr null, %struct.ListBase { ptr @rna_LimitDistanceConstraint_head_tail, ptr @rna_LimitDistanceConstraint_use_transform_limit } }, ptr @.str.491, ptr null, ptr null, i32 4, ptr @.str.492, ptr @.str.493, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.485 = private unnamed_addr constant [18 x i8] c"ClampToConstraint\00", align 1
@.str.486 = private unnamed_addr constant [20 x i8] c"Clamp To Constraint\00", align 1
@.str.487 = private unnamed_addr constant [74 x i8] c"Constrain an object's location to the nearest point along the target path\00", align 1
@rna_LimitDistanceConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitDistanceConstraint_subtarget, ptr @rna_LimitDistanceConstraint_head_tail, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitDistanceConstraint_target_get, ptr @LimitDistanceConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_LimitDistanceConstraint_head_tail = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitDistanceConstraint_target, ptr null, i32 -1, ptr @.str.186, i32 8195, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.86, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr @LimitDistanceConstraint_head_tail_get, ptr @LimitDistanceConstraint_head_tail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitDistanceConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitDistanceConstraint_distance, ptr @rna_LimitDistanceConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitDistanceConstraint_subtarget_get, ptr @LimitDistanceConstraint_subtarget_length, ptr @LimitDistanceConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_LimitDistanceConstraint_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitDistanceConstraint_limit_mode, ptr @rna_LimitDistanceConstraint_subtarget, i32 -1, ptr @.str.399, i32 8195, ptr @.str.400, ptr @.str.401, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 72, i32 4, ptr null, ptr null }, ptr @LimitDistanceConstraint_distance_get, ptr @LimitDistanceConstraint_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitDistanceConstraint_limit_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitDistanceConstraint_use_transform_limit, ptr @rna_LimitDistanceConstraint_distance, i32 -1, ptr @.str.396, i32 3, ptr @.str.397, ptr @.str.398, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitDistanceConstraint_limit_mode_get, ptr @LimitDistanceConstraint_limit_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_LimitDistanceConstraint_limit_mode_items, i32 3, i32 0 }, align 8
@rna_LimitDistanceConstraint_use_transform_limit = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LimitDistanceConstraint_limit_mode, i32 -1, ptr @.str.488, i32 3, ptr @.str.489, ptr @.str.490, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitDistanceConstraint_use_transform_limit_get, ptr @LimitDistanceConstraint_use_transform_limit_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LimitDistanceConstraint_limit_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.787, i32 0, ptr @.str.788, ptr @.str.789 }, %struct.EnumPropertyItem { i32 1, ptr @.str.790, i32 0, ptr @.str.791, ptr @.str.792 }, %struct.EnumPropertyItem { i32 2, ptr @.str.793, i32 0, ptr @.str.794, ptr @.str.795 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.488 = private unnamed_addr constant [20 x i8] c"use_transform_limit\00", align 1
@.str.489 = private unnamed_addr constant [14 x i8] c"For Transform\00", align 1
@.str.490 = private unnamed_addr constant [51 x i8] c"Transforms are affected by this constraint as well\00", align 1
@RNA_LimitScaleConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LimitRotationConstraint, ptr @RNA_LimitDistanceConstraint, ptr null, %struct.ListBase { ptr @rna_LimitScaleConstraint_use_min_x, ptr @rna_LimitScaleConstraint_use_transform_limit } }, ptr @.str.524, ptr null, ptr null, i32 4, ptr @.str.525, ptr @.str.526, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.491 = private unnamed_addr constant [24 x i8] c"LimitDistanceConstraint\00", align 1
@.str.492 = private unnamed_addr constant [26 x i8] c"Limit Distance Constraint\00", align 1
@.str.493 = private unnamed_addr constant [38 x i8] c"Limit the distance from target object\00", align 1
@rna_LimitScaleConstraint_use_min_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitScaleConstraint_use_min_z, ptr @rna_LimitScaleConstraint_use_min_x, i32 -1, ptr @.str.497, i32 3, ptr @.str.498, ptr @.str.499, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitScaleConstraint_use_min_y_get, ptr @LimitScaleConstraint_use_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.494 = private unnamed_addr constant [10 x i8] c"use_min_x\00", align 1
@.str.495 = private unnamed_addr constant [10 x i8] c"Minimum X\00", align 1
@.str.496 = private unnamed_addr constant [24 x i8] c"Use the minimum X value\00", align 1
@rna_LimitScaleConstraint_use_min_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitScaleConstraint_use_min_y, ptr null, i32 -1, ptr @.str.494, i32 3, ptr @.str.495, ptr @.str.496, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitScaleConstraint_use_min_x_get, ptr @LimitScaleConstraint_use_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LimitScaleConstraint_use_min_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitScaleConstraint_use_max_x, ptr @rna_LimitScaleConstraint_use_min_y, i32 -1, ptr @.str.500, i32 3, ptr @.str.501, ptr @.str.502, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitScaleConstraint_use_min_z_get, ptr @LimitScaleConstraint_use_min_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.497 = private unnamed_addr constant [10 x i8] c"use_min_y\00", align 1
@.str.498 = private unnamed_addr constant [10 x i8] c"Minimum Y\00", align 1
@.str.499 = private unnamed_addr constant [24 x i8] c"Use the minimum Y value\00", align 1
@rna_LimitScaleConstraint_use_max_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitScaleConstraint_use_max_y, ptr @rna_LimitScaleConstraint_use_min_z, i32 -1, ptr @.str.503, i32 3, ptr @.str.504, ptr @.str.505, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitScaleConstraint_use_max_x_get, ptr @LimitScaleConstraint_use_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.500 = private unnamed_addr constant [10 x i8] c"use_min_z\00", align 1
@.str.501 = private unnamed_addr constant [10 x i8] c"Minimum Z\00", align 1
@.str.502 = private unnamed_addr constant [24 x i8] c"Use the minimum Z value\00", align 1
@rna_LimitScaleConstraint_use_max_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitScaleConstraint_use_max_z, ptr @rna_LimitScaleConstraint_use_max_x, i32 -1, ptr @.str.506, i32 3, ptr @.str.507, ptr @.str.508, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitScaleConstraint_use_max_y_get, ptr @LimitScaleConstraint_use_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.503 = private unnamed_addr constant [10 x i8] c"use_max_x\00", align 1
@.str.504 = private unnamed_addr constant [10 x i8] c"Maximum X\00", align 1
@.str.505 = private unnamed_addr constant [24 x i8] c"Use the maximum X value\00", align 1
@rna_LimitScaleConstraint_use_max_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitScaleConstraint_min_x, ptr @rna_LimitScaleConstraint_use_max_y, i32 -1, ptr @.str.509, i32 3, ptr @.str.510, ptr @.str.511, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitScaleConstraint_use_max_z_get, ptr @LimitScaleConstraint_use_max_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.506 = private unnamed_addr constant [10 x i8] c"use_max_y\00", align 1
@.str.507 = private unnamed_addr constant [10 x i8] c"Maximum Y\00", align 1
@.str.508 = private unnamed_addr constant [24 x i8] c"Use the maximum Y value\00", align 1
@rna_LimitScaleConstraint_min_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitScaleConstraint_min_y, ptr @rna_LimitScaleConstraint_use_max_z, i32 -1, ptr @.str.512, i32 8195, ptr @.str.495, ptr @.str.513, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @LimitScaleConstraint_min_x_get, ptr @LimitScaleConstraint_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.509 = private unnamed_addr constant [10 x i8] c"use_max_z\00", align 1
@.str.510 = private unnamed_addr constant [10 x i8] c"Maximum Z\00", align 1
@.str.511 = private unnamed_addr constant [24 x i8] c"Use the maximum Z value\00", align 1
@rna_LimitScaleConstraint_min_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitScaleConstraint_min_z, ptr @rna_LimitScaleConstraint_min_x, i32 -1, ptr @.str.514, i32 8195, ptr @.str.498, ptr @.str.515, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @LimitScaleConstraint_min_y_get, ptr @LimitScaleConstraint_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.512 = private unnamed_addr constant [6 x i8] c"min_x\00", align 1
@.str.513 = private unnamed_addr constant [24 x i8] c"Lowest X value to allow\00", align 1
@rna_LimitScaleConstraint_min_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitScaleConstraint_max_x, ptr @rna_LimitScaleConstraint_min_y, i32 -1, ptr @.str.516, i32 8195, ptr @.str.501, ptr @.str.517, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @LimitScaleConstraint_min_z_get, ptr @LimitScaleConstraint_min_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.514 = private unnamed_addr constant [6 x i8] c"min_y\00", align 1
@.str.515 = private unnamed_addr constant [24 x i8] c"Lowest Y value to allow\00", align 1
@rna_LimitScaleConstraint_max_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitScaleConstraint_max_y, ptr @rna_LimitScaleConstraint_min_z, i32 -1, ptr @.str.518, i32 8195, ptr @.str.504, ptr @.str.519, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @LimitScaleConstraint_max_x_get, ptr @LimitScaleConstraint_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.516 = private unnamed_addr constant [6 x i8] c"min_z\00", align 1
@.str.517 = private unnamed_addr constant [24 x i8] c"Lowest Z value to allow\00", align 1
@rna_LimitScaleConstraint_max_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitScaleConstraint_max_z, ptr @rna_LimitScaleConstraint_max_x, i32 -1, ptr @.str.520, i32 8195, ptr @.str.507, ptr @.str.521, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @LimitScaleConstraint_max_y_get, ptr @LimitScaleConstraint_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.518 = private unnamed_addr constant [6 x i8] c"max_x\00", align 1
@.str.519 = private unnamed_addr constant [25 x i8] c"Highest X value to allow\00", align 1
@rna_LimitScaleConstraint_max_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitScaleConstraint_use_transform_limit, ptr @rna_LimitScaleConstraint_max_y, i32 -1, ptr @.str.522, i32 8195, ptr @.str.510, ptr @.str.523, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @LimitScaleConstraint_max_z_get, ptr @LimitScaleConstraint_max_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.520 = private unnamed_addr constant [6 x i8] c"max_y\00", align 1
@.str.521 = private unnamed_addr constant [25 x i8] c"Highest Y value to allow\00", align 1
@rna_LimitScaleConstraint_use_transform_limit = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LimitScaleConstraint_max_z, i32 -1, ptr @.str.488, i32 3, ptr @.str.489, ptr @.str.490, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitScaleConstraint_use_transform_limit_get, ptr @LimitScaleConstraint_use_transform_limit_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.522 = private unnamed_addr constant [6 x i8] c"max_z\00", align 1
@.str.523 = private unnamed_addr constant [25 x i8] c"Highest Z value to allow\00", align 1
@RNA_LimitRotationConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LimitLocationConstraint, ptr @RNA_LimitScaleConstraint, ptr null, %struct.ListBase { ptr @rna_LimitRotationConstraint_use_limit_x, ptr @rna_LimitRotationConstraint_use_transform_limit } }, ptr @.str.527, ptr null, ptr null, i32 4, ptr @.str.528, ptr @.str.529, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.524 = private unnamed_addr constant [21 x i8] c"LimitScaleConstraint\00", align 1
@.str.525 = private unnamed_addr constant [22 x i8] c"Limit Size Constraint\00", align 1
@.str.526 = private unnamed_addr constant [44 x i8] c"Limit the scaling of the constrained object\00", align 1
@rna_LimitRotationConstraint_use_limit_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitRotationConstraint_use_limit_z, ptr @rna_LimitRotationConstraint_use_limit_x, i32 -1, ptr @.str.460, i32 3, ptr @.str.461, ptr @.str.499, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitRotationConstraint_use_limit_y_get, ptr @LimitRotationConstraint_use_limit_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LimitRotationConstraint_use_limit_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitRotationConstraint_use_limit_y, ptr null, i32 -1, ptr @.str.457, i32 3, ptr @.str.458, ptr @.str.496, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitRotationConstraint_use_limit_x_get, ptr @LimitRotationConstraint_use_limit_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LimitRotationConstraint_use_limit_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitRotationConstraint_min_x, ptr @rna_LimitRotationConstraint_use_limit_y, i32 -1, ptr @.str.463, i32 3, ptr @.str.464, ptr @.str.502, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitRotationConstraint_use_limit_z_get, ptr @LimitRotationConstraint_use_limit_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LimitRotationConstraint_min_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitRotationConstraint_min_y, ptr @rna_LimitRotationConstraint_use_limit_z, i32 -1, ptr @.str.512, i32 8195, ptr @.str.495, ptr @.str.513, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @LimitRotationConstraint_min_x_get, ptr @LimitRotationConstraint_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitRotationConstraint_min_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitRotationConstraint_min_z, ptr @rna_LimitRotationConstraint_min_x, i32 -1, ptr @.str.514, i32 8195, ptr @.str.498, ptr @.str.515, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @LimitRotationConstraint_min_y_get, ptr @LimitRotationConstraint_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitRotationConstraint_min_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitRotationConstraint_max_x, ptr @rna_LimitRotationConstraint_min_y, i32 -1, ptr @.str.516, i32 8195, ptr @.str.501, ptr @.str.517, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @LimitRotationConstraint_min_z_get, ptr @LimitRotationConstraint_min_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitRotationConstraint_max_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitRotationConstraint_max_y, ptr @rna_LimitRotationConstraint_min_z, i32 -1, ptr @.str.518, i32 8195, ptr @.str.504, ptr @.str.519, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @LimitRotationConstraint_max_x_get, ptr @LimitRotationConstraint_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitRotationConstraint_max_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitRotationConstraint_max_z, ptr @rna_LimitRotationConstraint_max_x, i32 -1, ptr @.str.520, i32 8195, ptr @.str.507, ptr @.str.521, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @LimitRotationConstraint_max_y_get, ptr @LimitRotationConstraint_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitRotationConstraint_max_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitRotationConstraint_use_transform_limit, ptr @rna_LimitRotationConstraint_max_y, i32 -1, ptr @.str.522, i32 8195, ptr @.str.510, ptr @.str.523, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @LimitRotationConstraint_max_z_get, ptr @LimitRotationConstraint_max_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitRotationConstraint_use_transform_limit = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LimitRotationConstraint_max_z, i32 -1, ptr @.str.488, i32 3, ptr @.str.489, ptr @.str.490, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitRotationConstraint_use_transform_limit_get, ptr @LimitRotationConstraint_use_transform_limit_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@RNA_LimitLocationConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_TransformConstraint, ptr @RNA_LimitRotationConstraint, ptr null, %struct.ListBase { ptr @rna_LimitLocationConstraint_use_min_x, ptr @rna_LimitLocationConstraint_use_transform_limit } }, ptr @.str.530, ptr null, ptr null, i32 4, ptr @.str.531, ptr @.str.532, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.527 = private unnamed_addr constant [24 x i8] c"LimitRotationConstraint\00", align 1
@.str.528 = private unnamed_addr constant [26 x i8] c"Limit Rotation Constraint\00", align 1
@.str.529 = private unnamed_addr constant [45 x i8] c"Limit the rotation of the constrained object\00", align 1
@rna_LimitLocationConstraint_use_min_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitLocationConstraint_use_min_z, ptr @rna_LimitLocationConstraint_use_min_x, i32 -1, ptr @.str.497, i32 3, ptr @.str.498, ptr @.str.499, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitLocationConstraint_use_min_y_get, ptr @LimitLocationConstraint_use_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LimitLocationConstraint_use_min_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitLocationConstraint_use_min_y, ptr null, i32 -1, ptr @.str.494, i32 3, ptr @.str.495, ptr @.str.496, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitLocationConstraint_use_min_x_get, ptr @LimitLocationConstraint_use_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LimitLocationConstraint_use_min_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitLocationConstraint_use_max_x, ptr @rna_LimitLocationConstraint_use_min_y, i32 -1, ptr @.str.500, i32 3, ptr @.str.501, ptr @.str.502, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitLocationConstraint_use_min_z_get, ptr @LimitLocationConstraint_use_min_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LimitLocationConstraint_use_max_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitLocationConstraint_use_max_y, ptr @rna_LimitLocationConstraint_use_min_z, i32 -1, ptr @.str.503, i32 3, ptr @.str.504, ptr @.str.505, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitLocationConstraint_use_max_x_get, ptr @LimitLocationConstraint_use_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LimitLocationConstraint_use_max_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitLocationConstraint_use_max_z, ptr @rna_LimitLocationConstraint_use_max_x, i32 -1, ptr @.str.506, i32 3, ptr @.str.507, ptr @.str.508, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitLocationConstraint_use_max_y_get, ptr @LimitLocationConstraint_use_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LimitLocationConstraint_use_max_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitLocationConstraint_min_x, ptr @rna_LimitLocationConstraint_use_max_y, i32 -1, ptr @.str.509, i32 3, ptr @.str.510, ptr @.str.511, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitLocationConstraint_use_max_z_get, ptr @LimitLocationConstraint_use_max_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LimitLocationConstraint_min_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitLocationConstraint_min_y, ptr @rna_LimitLocationConstraint_use_max_z, i32 -1, ptr @.str.512, i32 8195, ptr @.str.495, ptr @.str.513, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @LimitLocationConstraint_min_x_get, ptr @LimitLocationConstraint_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitLocationConstraint_min_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitLocationConstraint_min_z, ptr @rna_LimitLocationConstraint_min_x, i32 -1, ptr @.str.514, i32 8195, ptr @.str.498, ptr @.str.515, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @LimitLocationConstraint_min_y_get, ptr @LimitLocationConstraint_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitLocationConstraint_min_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitLocationConstraint_max_x, ptr @rna_LimitLocationConstraint_min_y, i32 -1, ptr @.str.516, i32 8195, ptr @.str.501, ptr @.str.517, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @LimitLocationConstraint_min_z_get, ptr @LimitLocationConstraint_min_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitLocationConstraint_max_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitLocationConstraint_max_y, ptr @rna_LimitLocationConstraint_min_z, i32 -1, ptr @.str.518, i32 8195, ptr @.str.504, ptr @.str.519, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @LimitLocationConstraint_max_x_get, ptr @LimitLocationConstraint_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitLocationConstraint_max_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitLocationConstraint_max_z, ptr @rna_LimitLocationConstraint_max_x, i32 -1, ptr @.str.520, i32 8195, ptr @.str.507, ptr @.str.521, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @LimitLocationConstraint_max_y_get, ptr @LimitLocationConstraint_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitLocationConstraint_max_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LimitLocationConstraint_use_transform_limit, ptr @rna_LimitLocationConstraint_max_y, i32 -1, ptr @.str.522, i32 8195, ptr @.str.510, ptr @.str.523, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @LimitLocationConstraint_max_z_get, ptr @LimitLocationConstraint_max_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float -1.000000e+03, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_LimitLocationConstraint_use_transform_limit = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LimitLocationConstraint_max_z, i32 -1, ptr @.str.488, i32 3, ptr @.str.489, ptr @.str.490, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LimitLocationConstraint_use_transform_limit_get, ptr @LimitLocationConstraint_use_transform_limit_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@RNA_TransformConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ShrinkwrapConstraint, ptr @RNA_LimitLocationConstraint, ptr null, %struct.ListBase { ptr @rna_TransformConstraint_target, ptr @rna_TransformConstraint_to_max_z_scale } }, ptr @.str.611, ptr null, ptr null, i32 4, ptr @.str.612, ptr @.str.613, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.530 = private unnamed_addr constant [24 x i8] c"LimitLocationConstraint\00", align 1
@.str.531 = private unnamed_addr constant [26 x i8] c"Limit Location Constraint\00", align 1
@.str.532 = private unnamed_addr constant [45 x i8] c"Limit the location of the constrained object\00", align 1
@rna_TransformConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_map_from, ptr @rna_TransformConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TransformConstraint_subtarget_get, ptr @TransformConstraint_subtarget_length, ptr @TransformConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_TransformConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_subtarget, ptr null, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TransformConstraint_target_get, ptr @TransformConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_TransformConstraint_map_from = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_map_to, ptr @rna_TransformConstraint_subtarget, i32 -1, ptr @.str.533, i32 3, ptr @.str.534, ptr @.str.535, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TransformConstraint_map_from_get, ptr @TransformConstraint_map_from_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_TransformConstraint_map_from_items, i32 3, i32 0 }, align 8
@rna_TransformConstraint_map_to = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_map_to_x_from, ptr @rna_TransformConstraint_map_from, i32 -1, ptr @.str.536, i32 3, ptr @.str.537, ptr @.str.538, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TransformConstraint_map_to_get, ptr @TransformConstraint_map_to_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_TransformConstraint_map_to_items, i32 3, i32 0 }, align 8
@.str.533 = private unnamed_addr constant [9 x i8] c"map_from\00", align 1
@.str.534 = private unnamed_addr constant [9 x i8] c"Map From\00", align 1
@.str.535 = private unnamed_addr constant [47 x i8] c"The transformation type to use from the target\00", align 1
@rna_TransformConstraint_map_from_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.813, i32 0, ptr @.str.814, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.815, i32 0, ptr @.str.816, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.817, i32 0, ptr @.str.818, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_TransformConstraint_map_to_x_from = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_map_to_y_from, ptr @rna_TransformConstraint_map_to, i32 -1, ptr @.str.539, i32 3, ptr @.str.540, ptr @.str.541, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TransformConstraint_map_to_x_from_get, ptr @TransformConstraint_map_to_x_from_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_TransformConstraint_map_to_x_from_items, i32 3, i32 0 }, align 8
@.str.536 = private unnamed_addr constant [7 x i8] c"map_to\00", align 1
@.str.537 = private unnamed_addr constant [7 x i8] c"Map To\00", align 1
@.str.538 = private unnamed_addr constant [60 x i8] c"The transformation type to affect of the constrained object\00", align 1
@rna_TransformConstraint_map_to_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.813, i32 0, ptr @.str.814, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.815, i32 0, ptr @.str.816, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.817, i32 0, ptr @.str.818, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_TransformConstraint_map_to_y_from = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_map_to_z_from, ptr @rna_TransformConstraint_map_to_x_from, i32 -1, ptr @.str.542, i32 3, ptr @.str.543, ptr @.str.544, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TransformConstraint_map_to_y_from_get, ptr @TransformConstraint_map_to_y_from_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_TransformConstraint_map_to_y_from_items, i32 3, i32 0 }, align 8
@.str.539 = private unnamed_addr constant [14 x i8] c"map_to_x_from\00", align 1
@.str.540 = private unnamed_addr constant [14 x i8] c"Map To X From\00", align 1
@.str.541 = private unnamed_addr constant [49 x i8] c"The source axis constrained object's X axis uses\00", align 1
@rna_TransformConstraint_map_to_x_from_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.726, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.737, i32 0, ptr @.str.737, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.728, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_TransformConstraint_map_to_z_from = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_use_motion_extrapolate, ptr @rna_TransformConstraint_map_to_y_from, i32 -1, ptr @.str.545, i32 3, ptr @.str.546, ptr @.str.547, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TransformConstraint_map_to_z_from_get, ptr @TransformConstraint_map_to_z_from_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_TransformConstraint_map_to_z_from_items, i32 3, i32 0 }, align 8
@.str.542 = private unnamed_addr constant [14 x i8] c"map_to_y_from\00", align 1
@.str.543 = private unnamed_addr constant [14 x i8] c"Map To Y From\00", align 1
@.str.544 = private unnamed_addr constant [49 x i8] c"The source axis constrained object's Y axis uses\00", align 1
@rna_TransformConstraint_map_to_y_from_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.726, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.737, i32 0, ptr @.str.737, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.728, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_TransformConstraint_use_motion_extrapolate = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_min_x, ptr @rna_TransformConstraint_map_to_z_from, i32 -1, ptr @.str.548, i32 3, ptr @.str.549, ptr @.str.550, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TransformConstraint_use_motion_extrapolate_get, ptr @TransformConstraint_use_motion_extrapolate_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.545 = private unnamed_addr constant [14 x i8] c"map_to_z_from\00", align 1
@.str.546 = private unnamed_addr constant [14 x i8] c"Map To Z From\00", align 1
@.str.547 = private unnamed_addr constant [49 x i8] c"The source axis constrained object's Z axis uses\00", align 1
@rna_TransformConstraint_map_to_z_from_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.726, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.737, i32 0, ptr @.str.737, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.728, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_TransformConstraint_from_min_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_min_y, ptr @rna_TransformConstraint_use_motion_extrapolate, i32 -1, ptr @.str.551, i32 8195, ptr @.str.552, ptr @.str.553, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 80, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_min_x_get, ptr @TransformConstraint_from_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.548 = private unnamed_addr constant [23 x i8] c"use_motion_extrapolate\00", align 1
@.str.549 = private unnamed_addr constant [19 x i8] c"Extrapolate Motion\00", align 1
@.str.550 = private unnamed_addr constant [19 x i8] c"Extrapolate ranges\00", align 1
@rna_TransformConstraint_from_min_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_min_z, ptr @rna_TransformConstraint_from_min_x, i32 -1, ptr @.str.554, i32 8195, ptr @.str.555, ptr @.str.556, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 84, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_min_y_get, ptr @TransformConstraint_from_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.551 = private unnamed_addr constant [11 x i8] c"from_min_x\00", align 1
@.str.552 = private unnamed_addr constant [15 x i8] c"From Minimum X\00", align 1
@.str.553 = private unnamed_addr constant [37 x i8] c"Bottom range of X axis source motion\00", align 1
@rna_TransformConstraint_from_min_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_max_x, ptr @rna_TransformConstraint_from_min_y, i32 -1, ptr @.str.557, i32 8195, ptr @.str.558, ptr @.str.559, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 88, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_min_z_get, ptr @TransformConstraint_from_min_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.554 = private unnamed_addr constant [11 x i8] c"from_min_y\00", align 1
@.str.555 = private unnamed_addr constant [15 x i8] c"From Minimum Y\00", align 1
@.str.556 = private unnamed_addr constant [37 x i8] c"Bottom range of Y axis source motion\00", align 1
@rna_TransformConstraint_from_max_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_max_y, ptr @rna_TransformConstraint_from_min_z, i32 -1, ptr @.str.560, i32 8195, ptr @.str.561, ptr @.str.562, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 92, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_max_x_get, ptr @TransformConstraint_from_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.557 = private unnamed_addr constant [11 x i8] c"from_min_z\00", align 1
@.str.558 = private unnamed_addr constant [15 x i8] c"From Minimum Z\00", align 1
@.str.559 = private unnamed_addr constant [37 x i8] c"Bottom range of Z axis source motion\00", align 1
@rna_TransformConstraint_from_max_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_max_z, ptr @rna_TransformConstraint_from_max_x, i32 -1, ptr @.str.563, i32 8195, ptr @.str.564, ptr @.str.565, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 96, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_max_y_get, ptr @TransformConstraint_from_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.560 = private unnamed_addr constant [11 x i8] c"from_max_x\00", align 1
@.str.561 = private unnamed_addr constant [15 x i8] c"From Maximum X\00", align 1
@.str.562 = private unnamed_addr constant [34 x i8] c"Top range of X axis source motion\00", align 1
@rna_TransformConstraint_from_max_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_min_x, ptr @rna_TransformConstraint_from_max_y, i32 -1, ptr @.str.566, i32 8195, ptr @.str.567, ptr @.str.568, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_max_z_get, ptr @TransformConstraint_from_max_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.563 = private unnamed_addr constant [11 x i8] c"from_max_y\00", align 1
@.str.564 = private unnamed_addr constant [15 x i8] c"From Maximum Y\00", align 1
@.str.565 = private unnamed_addr constant [34 x i8] c"Top range of Y axis source motion\00", align 1
@rna_TransformConstraint_to_min_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_min_y, ptr @rna_TransformConstraint_from_max_z, i32 -1, ptr @.str.569, i32 8195, ptr @.str.570, ptr @.str.571, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 104, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_min_x_get, ptr @TransformConstraint_to_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.566 = private unnamed_addr constant [11 x i8] c"from_max_z\00", align 1
@.str.567 = private unnamed_addr constant [15 x i8] c"From Maximum Z\00", align 1
@.str.568 = private unnamed_addr constant [34 x i8] c"Top range of Z axis source motion\00", align 1
@rna_TransformConstraint_to_min_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_min_z, ptr @rna_TransformConstraint_to_min_x, i32 -1, ptr @.str.572, i32 8195, ptr @.str.573, ptr @.str.574, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 108, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_min_y_get, ptr @TransformConstraint_to_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.569 = private unnamed_addr constant [9 x i8] c"to_min_x\00", align 1
@.str.570 = private unnamed_addr constant [13 x i8] c"To Minimum X\00", align 1
@.str.571 = private unnamed_addr constant [42 x i8] c"Bottom range of X axis destination motion\00", align 1
@rna_TransformConstraint_to_min_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_max_x, ptr @rna_TransformConstraint_to_min_y, i32 -1, ptr @.str.575, i32 8195, ptr @.str.576, ptr @.str.577, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_min_z_get, ptr @TransformConstraint_to_min_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.572 = private unnamed_addr constant [9 x i8] c"to_min_y\00", align 1
@.str.573 = private unnamed_addr constant [13 x i8] c"To Minimum Y\00", align 1
@.str.574 = private unnamed_addr constant [42 x i8] c"Bottom range of Y axis destination motion\00", align 1
@rna_TransformConstraint_to_max_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_max_y, ptr @rna_TransformConstraint_to_min_z, i32 -1, ptr @.str.578, i32 8195, ptr @.str.579, ptr @.str.580, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 116, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_max_x_get, ptr @TransformConstraint_to_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.575 = private unnamed_addr constant [9 x i8] c"to_min_z\00", align 1
@.str.576 = private unnamed_addr constant [13 x i8] c"To Minimum Z\00", align 1
@.str.577 = private unnamed_addr constant [42 x i8] c"Bottom range of Z axis destination motion\00", align 1
@rna_TransformConstraint_to_max_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_max_z, ptr @rna_TransformConstraint_to_max_x, i32 -1, ptr @.str.581, i32 8195, ptr @.str.582, ptr @.str.583, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 120, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_max_y_get, ptr @TransformConstraint_to_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.578 = private unnamed_addr constant [9 x i8] c"to_max_x\00", align 1
@.str.579 = private unnamed_addr constant [13 x i8] c"To Maximum X\00", align 1
@.str.580 = private unnamed_addr constant [39 x i8] c"Top range of X axis destination motion\00", align 1
@rna_TransformConstraint_to_max_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_min_x_rot, ptr @rna_TransformConstraint_to_max_y, i32 -1, ptr @.str.584, i32 8195, ptr @.str.585, ptr @.str.586, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 124, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_max_z_get, ptr @TransformConstraint_to_max_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.581 = private unnamed_addr constant [9 x i8] c"to_max_y\00", align 1
@.str.582 = private unnamed_addr constant [13 x i8] c"To Maximum Y\00", align 1
@.str.583 = private unnamed_addr constant [39 x i8] c"Top range of Y axis destination motion\00", align 1
@rna_TransformConstraint_from_min_x_rot = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_min_y_rot, ptr @rna_TransformConstraint_to_max_z, i32 -1, ptr @.str.587, i32 8195, ptr @.str.552, ptr @.str.553, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 128, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_min_x_rot_get, ptr @TransformConstraint_from_min_x_rot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.584 = private unnamed_addr constant [9 x i8] c"to_max_z\00", align 1
@.str.585 = private unnamed_addr constant [13 x i8] c"To Maximum Z\00", align 1
@.str.586 = private unnamed_addr constant [39 x i8] c"Top range of Z axis destination motion\00", align 1
@rna_TransformConstraint_from_min_y_rot = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_min_z_rot, ptr @rna_TransformConstraint_from_min_x_rot, i32 -1, ptr @.str.588, i32 8195, ptr @.str.555, ptr @.str.556, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 132, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_min_y_rot_get, ptr @TransformConstraint_from_min_y_rot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.587 = private unnamed_addr constant [15 x i8] c"from_min_x_rot\00", align 1
@rna_TransformConstraint_from_min_z_rot = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_max_x_rot, ptr @rna_TransformConstraint_from_min_y_rot, i32 -1, ptr @.str.589, i32 8195, ptr @.str.558, ptr @.str.559, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 136, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_min_z_rot_get, ptr @TransformConstraint_from_min_z_rot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.588 = private unnamed_addr constant [15 x i8] c"from_min_y_rot\00", align 1
@rna_TransformConstraint_from_max_x_rot = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_max_y_rot, ptr @rna_TransformConstraint_from_min_z_rot, i32 -1, ptr @.str.590, i32 8195, ptr @.str.561, ptr @.str.562, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 140, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_max_x_rot_get, ptr @TransformConstraint_from_max_x_rot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.589 = private unnamed_addr constant [15 x i8] c"from_min_z_rot\00", align 1
@rna_TransformConstraint_from_max_y_rot = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_max_z_rot, ptr @rna_TransformConstraint_from_max_x_rot, i32 -1, ptr @.str.591, i32 8195, ptr @.str.564, ptr @.str.565, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_max_y_rot_get, ptr @TransformConstraint_from_max_y_rot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.590 = private unnamed_addr constant [15 x i8] c"from_max_x_rot\00", align 1
@rna_TransformConstraint_from_max_z_rot = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_min_x_rot, ptr @rna_TransformConstraint_from_max_y_rot, i32 -1, ptr @.str.592, i32 8195, ptr @.str.567, ptr @.str.568, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 148, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_max_z_rot_get, ptr @TransformConstraint_from_max_z_rot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.591 = private unnamed_addr constant [15 x i8] c"from_max_y_rot\00", align 1
@rna_TransformConstraint_to_min_x_rot = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_min_y_rot, ptr @rna_TransformConstraint_from_max_z_rot, i32 -1, ptr @.str.593, i32 8195, ptr @.str.570, ptr @.str.571, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 152, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_min_x_rot_get, ptr @TransformConstraint_to_min_x_rot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.592 = private unnamed_addr constant [15 x i8] c"from_max_z_rot\00", align 1
@rna_TransformConstraint_to_min_y_rot = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_min_z_rot, ptr @rna_TransformConstraint_to_min_x_rot, i32 -1, ptr @.str.594, i32 8195, ptr @.str.573, ptr @.str.574, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 156, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_min_y_rot_get, ptr @TransformConstraint_to_min_y_rot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.593 = private unnamed_addr constant [13 x i8] c"to_min_x_rot\00", align 1
@rna_TransformConstraint_to_min_z_rot = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_max_x_rot, ptr @rna_TransformConstraint_to_min_y_rot, i32 -1, ptr @.str.595, i32 8195, ptr @.str.576, ptr @.str.577, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 160, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_min_z_rot_get, ptr @TransformConstraint_to_min_z_rot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.594 = private unnamed_addr constant [13 x i8] c"to_min_y_rot\00", align 1
@rna_TransformConstraint_to_max_x_rot = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_max_y_rot, ptr @rna_TransformConstraint_to_min_z_rot, i32 -1, ptr @.str.596, i32 8195, ptr @.str.579, ptr @.str.580, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 164, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_max_x_rot_get, ptr @TransformConstraint_to_max_x_rot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.595 = private unnamed_addr constant [13 x i8] c"to_min_z_rot\00", align 1
@rna_TransformConstraint_to_max_y_rot = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_max_z_rot, ptr @rna_TransformConstraint_to_max_x_rot, i32 -1, ptr @.str.597, i32 8195, ptr @.str.582, ptr @.str.583, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 168, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_max_y_rot_get, ptr @TransformConstraint_to_max_y_rot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.596 = private unnamed_addr constant [13 x i8] c"to_max_x_rot\00", align 1
@rna_TransformConstraint_to_max_z_rot = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_min_x_scale, ptr @rna_TransformConstraint_to_max_y_rot, i32 -1, ptr @.str.598, i32 8195, ptr @.str.585, ptr @.str.586, i32 0, ptr @.str.86, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 172, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_max_z_rot_get, ptr @TransformConstraint_to_max_z_rot_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.597 = private unnamed_addr constant [13 x i8] c"to_max_y_rot\00", align 1
@rna_TransformConstraint_from_min_x_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_min_y_scale, ptr @rna_TransformConstraint_to_max_z_rot, i32 -1, ptr @.str.599, i32 8195, ptr @.str.552, ptr @.str.553, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 176, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_min_x_scale_get, ptr @TransformConstraint_from_min_x_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.598 = private unnamed_addr constant [13 x i8] c"to_max_z_rot\00", align 1
@rna_TransformConstraint_from_min_y_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_min_z_scale, ptr @rna_TransformConstraint_from_min_x_scale, i32 -1, ptr @.str.600, i32 8195, ptr @.str.555, ptr @.str.556, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 180, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_min_y_scale_get, ptr @TransformConstraint_from_min_y_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.599 = private unnamed_addr constant [17 x i8] c"from_min_x_scale\00", align 1
@rna_TransformConstraint_from_min_z_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_max_x_scale, ptr @rna_TransformConstraint_from_min_y_scale, i32 -1, ptr @.str.601, i32 8195, ptr @.str.558, ptr @.str.559, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 184, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_min_z_scale_get, ptr @TransformConstraint_from_min_z_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.600 = private unnamed_addr constant [17 x i8] c"from_min_y_scale\00", align 1
@rna_TransformConstraint_from_max_x_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_max_y_scale, ptr @rna_TransformConstraint_from_min_z_scale, i32 -1, ptr @.str.602, i32 8195, ptr @.str.561, ptr @.str.562, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 188, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_max_x_scale_get, ptr @TransformConstraint_from_max_x_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.601 = private unnamed_addr constant [17 x i8] c"from_min_z_scale\00", align 1
@rna_TransformConstraint_from_max_y_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_from_max_z_scale, ptr @rna_TransformConstraint_from_max_x_scale, i32 -1, ptr @.str.603, i32 8195, ptr @.str.564, ptr @.str.565, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 192, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_max_y_scale_get, ptr @TransformConstraint_from_max_y_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.602 = private unnamed_addr constant [17 x i8] c"from_max_x_scale\00", align 1
@rna_TransformConstraint_from_max_z_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_min_x_scale, ptr @rna_TransformConstraint_from_max_y_scale, i32 -1, ptr @.str.604, i32 8195, ptr @.str.567, ptr @.str.568, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 196, i32 4, ptr null, ptr null }, ptr @TransformConstraint_from_max_z_scale_get, ptr @TransformConstraint_from_max_z_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.603 = private unnamed_addr constant [17 x i8] c"from_max_y_scale\00", align 1
@rna_TransformConstraint_to_min_x_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_min_y_scale, ptr @rna_TransformConstraint_from_max_z_scale, i32 -1, ptr @.str.605, i32 8195, ptr @.str.570, ptr @.str.571, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 200, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_min_x_scale_get, ptr @TransformConstraint_to_min_x_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.604 = private unnamed_addr constant [17 x i8] c"from_max_z_scale\00", align 1
@rna_TransformConstraint_to_min_y_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_min_z_scale, ptr @rna_TransformConstraint_to_min_x_scale, i32 -1, ptr @.str.606, i32 8195, ptr @.str.573, ptr @.str.574, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 204, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_min_y_scale_get, ptr @TransformConstraint_to_min_y_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.605 = private unnamed_addr constant [15 x i8] c"to_min_x_scale\00", align 1
@rna_TransformConstraint_to_min_z_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_max_x_scale, ptr @rna_TransformConstraint_to_min_y_scale, i32 -1, ptr @.str.607, i32 8195, ptr @.str.576, ptr @.str.577, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 208, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_min_z_scale_get, ptr @TransformConstraint_to_min_z_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.606 = private unnamed_addr constant [15 x i8] c"to_min_y_scale\00", align 1
@rna_TransformConstraint_to_max_x_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_max_y_scale, ptr @rna_TransformConstraint_to_min_z_scale, i32 -1, ptr @.str.608, i32 8195, ptr @.str.579, ptr @.str.580, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 212, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_max_x_scale_get, ptr @TransformConstraint_to_max_x_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.607 = private unnamed_addr constant [15 x i8] c"to_min_z_scale\00", align 1
@rna_TransformConstraint_to_max_y_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_TransformConstraint_to_max_z_scale, ptr @rna_TransformConstraint_to_max_x_scale, i32 -1, ptr @.str.609, i32 8195, ptr @.str.582, ptr @.str.583, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 216, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_max_y_scale_get, ptr @TransformConstraint_to_max_y_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.608 = private unnamed_addr constant [15 x i8] c"to_max_x_scale\00", align 1
@rna_TransformConstraint_to_max_z_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_TransformConstraint_to_max_y_scale, i32 -1, ptr @.str.610, i32 8195, ptr @.str.585, ptr @.str.586, i32 0, ptr @.str.86, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 220, i32 4, ptr null, ptr null }, ptr @TransformConstraint_to_max_z_scale_get, ptr @TransformConstraint_to_max_z_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.609 = private unnamed_addr constant [15 x i8] c"to_max_y_scale\00", align 1
@.str.610 = private unnamed_addr constant [15 x i8] c"to_max_z_scale\00", align 1
@RNA_ShrinkwrapConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_DampedTrackConstraint, ptr @RNA_TransformConstraint, ptr null, %struct.ListBase { ptr @rna_ShrinkwrapConstraint_target, ptr @rna_ShrinkwrapConstraint_project_limit } }, ptr @.str.627, ptr null, ptr null, i32 4, ptr @.str.628, ptr @.str.629, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.611 = private unnamed_addr constant [20 x i8] c"TransformConstraint\00", align 1
@.str.612 = private unnamed_addr constant [26 x i8] c"Transformation Constraint\00", align 1
@.str.613 = private unnamed_addr constant [48 x i8] c"Map transformations of the target to the object\00", align 1
@rna_ShrinkwrapConstraint_shrinkwrap_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapConstraint_distance, ptr @rna_ShrinkwrapConstraint_target, i32 -1, ptr @.str.614, i32 3, ptr @.str.615, ptr @.str.616, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapConstraint_shrinkwrap_type_get, ptr @ShrinkwrapConstraint_shrinkwrap_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ShrinkwrapConstraint_shrinkwrap_type_items, i32 3, i32 0 }, align 8
@rna_ShrinkwrapConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapConstraint_shrinkwrap_type, ptr null, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapConstraint_target_get, ptr @ShrinkwrapConstraint_target_set, ptr null, ptr @rna_Mesh_object_poll, ptr @RNA_Object }, align 8
@rna_ShrinkwrapConstraint_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapConstraint_project_axis, ptr @rna_ShrinkwrapConstraint_shrinkwrap_type, i32 -1, ptr @.str.399, i32 8195, ptr @.str.400, ptr @.str.617, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @ShrinkwrapConstraint_distance_get, ptr @ShrinkwrapConstraint_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.614 = private unnamed_addr constant [16 x i8] c"shrinkwrap_type\00", align 1
@.str.615 = private unnamed_addr constant [16 x i8] c"Shrinkwrap Type\00", align 1
@.str.616 = private unnamed_addr constant [56 x i8] c"Select type of shrinkwrap algorithm for target position\00", align 1
@rna_ShrinkwrapConstraint_shrinkwrap_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.819, i32 0, ptr @.str.820, ptr @.str.821 }, %struct.EnumPropertyItem { i32 1, ptr @.str.822, i32 0, ptr @.str.823, ptr @.str.824 }, %struct.EnumPropertyItem { i32 2, ptr @.str.825, i32 0, ptr @.str.826, ptr @.str.827 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ShrinkwrapConstraint_project_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapConstraint_project_axis_space, ptr @rna_ShrinkwrapConstraint_distance, i32 -1, ptr @.str.618, i32 3, ptr @.str.619, ptr @.str.620, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapConstraint_project_axis_get, ptr @ShrinkwrapConstraint_project_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ShrinkwrapConstraint_project_axis_items, i32 6, i32 0 }, align 8
@.str.617 = private unnamed_addr constant [19 x i8] c"Distance to Target\00", align 1
@rna_ShrinkwrapConstraint_project_axis_space = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapConstraint_project_limit, ptr @rna_ShrinkwrapConstraint_project_axis, i32 -1, ptr @.str.621, i32 3, ptr @.str.622, ptr @.str.623, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapConstraint_project_axis_space_get, ptr @ShrinkwrapConstraint_project_axis_space_set, ptr @rna_Constraint_owner_space_itemf, ptr null, ptr null, ptr null, ptr @rna_ShrinkwrapConstraint_project_axis_space_items, i32 4, i32 0 }, align 8
@.str.618 = private unnamed_addr constant [13 x i8] c"project_axis\00", align 1
@.str.619 = private unnamed_addr constant [13 x i8] c"Project Axis\00", align 1
@.str.620 = private unnamed_addr constant [18 x i8] c"Axis constrain to\00", align 1
@rna_ShrinkwrapConstraint_project_axis_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.828, i32 0, ptr @.str.829, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.830, i32 0, ptr @.str.831, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.832, i32 0, ptr @.str.833, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.834, i32 0, ptr @.str.740, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.835, i32 0, ptr @.str.742, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.836, i32 0, ptr @.str.744, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ShrinkwrapConstraint_project_limit = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ShrinkwrapConstraint_project_axis_space, i32 -1, ptr @.str.624, i32 8195, ptr @.str.625, ptr @.str.626, i32 0, ptr @.str.86, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @ShrinkwrapConstraint_project_limit_get, ptr @ShrinkwrapConstraint_project_limit_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.621 = private unnamed_addr constant [19 x i8] c"project_axis_space\00", align 1
@.str.622 = private unnamed_addr constant [11 x i8] c"Axis Space\00", align 1
@.str.623 = private unnamed_addr constant [30 x i8] c"Space for the projection axis\00", align 1
@rna_ShrinkwrapConstraint_project_axis_space_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.704, i32 0, ptr @.str.705, ptr @.str.706 }, %struct.EnumPropertyItem { i32 2, ptr @.str.707, i32 0, ptr @.str.708, ptr @.str.709 }, %struct.EnumPropertyItem { i32 3, ptr @.str.710, i32 0, ptr @.str.711, ptr @.str.712 }, %struct.EnumPropertyItem { i32 1, ptr @.str.713, i32 0, ptr @.str.714, ptr @.str.715 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.624 = private unnamed_addr constant [14 x i8] c"project_limit\00", align 1
@.str.625 = private unnamed_addr constant [17 x i8] c"Project Distance\00", align 1
@.str.626 = private unnamed_addr constant [55 x i8] c"Limit the distance used for projection (zero disables)\00", align 1
@RNA_DampedTrackConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SplineIKConstraint, ptr @RNA_ShrinkwrapConstraint, ptr null, %struct.ListBase { ptr @rna_DampedTrackConstraint_head_tail, ptr @rna_DampedTrackConstraint_track_axis } }, ptr @.str.630, ptr null, ptr null, i32 4, ptr @.str.631, ptr @.str.632, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.627 = private unnamed_addr constant [21 x i8] c"ShrinkwrapConstraint\00", align 1
@.str.628 = private unnamed_addr constant [22 x i8] c"Shrinkwrap Constraint\00", align 1
@.str.629 = private unnamed_addr constant [48 x i8] c"Create constraint-based shrinkwrap relationship\00", align 1
@rna_DampedTrackConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DampedTrackConstraint_subtarget, ptr @rna_DampedTrackConstraint_head_tail, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.129, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DampedTrackConstraint_target_get, ptr @DampedTrackConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_DampedTrackConstraint_head_tail = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DampedTrackConstraint_target, ptr null, i32 -1, ptr @.str.186, i32 8195, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.86, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr @DampedTrackConstraint_head_tail_get, ptr @DampedTrackConstraint_head_tail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_DampedTrackConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DampedTrackConstraint_track_axis, ptr @rna_DampedTrackConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DampedTrackConstraint_subtarget_get, ptr @DampedTrackConstraint_subtarget_length, ptr @DampedTrackConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_DampedTrackConstraint_track_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DampedTrackConstraint_subtarget, i32 -1, ptr @.str.241, i32 3, ptr @.str.242, ptr @.str.243, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DampedTrackConstraint_track_axis_get, ptr @DampedTrackConstraint_track_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DampedTrackConstraint_track_axis_items, i32 6, i32 0 }, align 8
@rna_DampedTrackConstraint_track_axis_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.748, i32 0, ptr @.str.726, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.749, i32 0, ptr @.str.737, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.750, i32 0, ptr @.str.728, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.739, i32 0, ptr @.str.740, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.741, i32 0, ptr @.str.742, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.743, i32 0, ptr @.str.744, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_SplineIKConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_PivotConstraint, ptr @RNA_DampedTrackConstraint, ptr null, %struct.ListBase { ptr @rna_SplineIKConstraint_target, ptr @rna_SplineIKConstraint_xz_scale_mode } }, ptr @.str.652, ptr null, ptr null, i32 4, ptr @.str.653, ptr @.str.654, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.630 = private unnamed_addr constant [22 x i8] c"DampedTrackConstraint\00", align 1
@.str.631 = private unnamed_addr constant [24 x i8] c"Damped Track Constraint\00", align 1
@.str.632 = private unnamed_addr constant [57 x i8] c"Point toward target by taking the shortest rotation path\00", align 1
@rna_SplineIKConstraint_chain_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SplineIKConstraint_joint_bindings, ptr @rna_SplineIKConstraint_target, i32 -1, ptr @.str.359, i32 8195, ptr @.str.360, ptr @.str.634, i32 0, ptr @.str.86, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 18, i32 1, ptr null, ptr null }, ptr @SplineIKConstraint_chain_count_get, ptr @SplineIKConstraint_chain_count_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 255, i32 1, i32 255, i32 1, i32 0, ptr null }, align 8
@.str.633 = private unnamed_addr constant [38 x i8] c"Curve that controls this relationship\00", align 1
@rna_SplineIKConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SplineIKConstraint_chain_count, ptr null, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.633, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SplineIKConstraint_target_get, ptr @SplineIKConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_SplineIKConstraint_joint_bindings = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SplineIKConstraint_use_chain_offset, ptr @rna_SplineIKConstraint_chain_count, i32 -1, ptr @.str.635, i32 131075, ptr @.str.636, ptr @.str.637, i32 0, ptr @.str.86, i32 2, i32 15, ptr @rna_SplineIKConstraint_joint_bindings_get_length, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i32 32, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @SplineIKConstraint_joint_bindings_get, ptr @SplineIKConstraint_joint_bindings_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_SplineIKConstraint_joint_bindings_default }, align 8
@.str.634 = private unnamed_addr constant [41 x i8] c"How many bones are included in the chain\00", align 1
@rna_SplineIKConstraint_use_chain_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SplineIKConstraint_use_even_divisions, ptr @rna_SplineIKConstraint_joint_bindings, i32 -1, ptr @.str.638, i32 3, ptr @.str.639, ptr @.str.640, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SplineIKConstraint_use_chain_offset_get, ptr @SplineIKConstraint_use_chain_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.635 = private unnamed_addr constant [15 x i8] c"joint_bindings\00", align 1
@.str.636 = private unnamed_addr constant [15 x i8] c"Joint Bindings\00", align 1
@.str.637 = private unnamed_addr constant [94 x i8] c"(EXPERIENCED USERS ONLY) The relative positions of the joints along the chain, as percentages\00", align 1
@rna_SplineIKConstraint_joint_bindings_default = internal global [32 x float] zeroinitializer, align 16
@rna_SplineIKConstraint_use_even_divisions = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SplineIKConstraint_use_y_stretch, ptr @rna_SplineIKConstraint_use_chain_offset, i32 -1, ptr @.str.641, i32 3, ptr @.str.642, ptr @.str.643, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SplineIKConstraint_use_even_divisions_get, ptr @SplineIKConstraint_use_even_divisions_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.638 = private unnamed_addr constant [17 x i8] c"use_chain_offset\00", align 1
@.str.639 = private unnamed_addr constant [13 x i8] c"Chain Offset\00", align 1
@.str.640 = private unnamed_addr constant [51 x i8] c"Offset the entire chain relative to the root joint\00", align 1
@rna_SplineIKConstraint_use_y_stretch = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SplineIKConstraint_use_curve_radius, ptr @rna_SplineIKConstraint_use_even_divisions, i32 -1, ptr @.str.644, i32 3, ptr @.str.645, ptr @.str.646, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SplineIKConstraint_use_y_stretch_get, ptr @SplineIKConstraint_use_y_stretch_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.641 = private unnamed_addr constant [19 x i8] c"use_even_divisions\00", align 1
@.str.642 = private unnamed_addr constant [15 x i8] c"Even Divisions\00", align 1
@.str.643 = private unnamed_addr constant [67 x i8] c"Ignore the relative lengths of the bones when fitting to the curve\00", align 1
@rna_SplineIKConstraint_use_curve_radius = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SplineIKConstraint_xz_scale_mode, ptr @rna_SplineIKConstraint_use_y_stretch, i32 -1, ptr @.str.235, i32 3, ptr @.str.647, ptr @.str.648, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SplineIKConstraint_use_curve_radius_get, ptr @SplineIKConstraint_use_curve_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.644 = private unnamed_addr constant [14 x i8] c"use_y_stretch\00", align 1
@.str.645 = private unnamed_addr constant [10 x i8] c"Y Stretch\00", align 1
@.str.646 = private unnamed_addr constant [49 x i8] c"Stretch the Y axis of the bones to fit the curve\00", align 1
@rna_SplineIKConstraint_xz_scale_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SplineIKConstraint_use_curve_radius, i32 -1, ptr @.str.649, i32 3, ptr @.str.650, ptr @.str.651, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SplineIKConstraint_xz_scale_mode_get, ptr @SplineIKConstraint_xz_scale_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SplineIKConstraint_xz_scale_mode_items, i32 3, i32 0 }, align 8
@.str.647 = private unnamed_addr constant [17 x i8] c"Use Curve Radius\00", align 1
@.str.648 = private unnamed_addr constant [107 x i8] c"Average radius of the endpoints is used to tweak the X and Z Scaling of the bones, on top of XZ Scale mode\00", align 1
@.str.649 = private unnamed_addr constant [14 x i8] c"xz_scale_mode\00", align 1
@.str.650 = private unnamed_addr constant [14 x i8] c"XZ Scale Mode\00", align 1
@.str.651 = private unnamed_addr constant [73 x i8] c"Method used for determining the scaling of the X and Z axes of the bones\00", align 1
@rna_SplineIKConstraint_xz_scale_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.837, i32 0, ptr @.str.730, ptr @.str.838 }, %struct.EnumPropertyItem { i32 1, ptr @.str.839, i32 0, ptr @.str.840, ptr @.str.841 }, %struct.EnumPropertyItem { i32 2, ptr @.str.842, i32 0, ptr @.str.843, ptr @.str.844 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_PivotConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FollowTrackConstraint, ptr @RNA_SplineIKConstraint, ptr null, %struct.ListBase { ptr @rna_PivotConstraint_head_tail, ptr @rna_PivotConstraint_rotation_range } }, ptr @.str.663, ptr null, ptr null, i32 4, ptr @.str.664, ptr @.str.665, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.652 = private unnamed_addr constant [19 x i8] c"SplineIKConstraint\00", align 1
@.str.653 = private unnamed_addr constant [21 x i8] c"Spline IK Constraint\00", align 1
@.str.654 = private unnamed_addr constant [30 x i8] c"Align 'n' bones along a curve\00", align 1
@rna_PivotConstraint_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PivotConstraint_subtarget, ptr @rna_PivotConstraint_head_tail, i32 -1, ptr @.str.127, i32 8388609, ptr @.str.128, ptr @.str.655, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PivotConstraint_target_get, ptr @PivotConstraint_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_PivotConstraint_head_tail = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PivotConstraint_target, ptr null, i32 -1, ptr @.str.186, i32 8195, ptr @.str.187, ptr @.str.188, i32 0, ptr @.str.86, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr @PivotConstraint_head_tail_get, ptr @PivotConstraint_head_tail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_PivotConstraint_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_PivotConstraint_use_relative_location, ptr @rna_PivotConstraint_target, i32 -1, ptr @.str.130, i32 262145, ptr @.str.131, ptr @.str, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PivotConstraint_subtarget_get, ptr @PivotConstraint_subtarget_length, ptr @PivotConstraint_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.655 = private unnamed_addr constant [63 x i8] c"Target Object, defining the position of the pivot when defined\00", align 1
@rna_PivotConstraint_use_relative_location = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PivotConstraint_offset, ptr @rna_PivotConstraint_subtarget, i32 -1, ptr @.str.656, i32 3, ptr @.str.657, ptr @.str.658, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PivotConstraint_use_relative_location_get, ptr @PivotConstraint_use_relative_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_PivotConstraint_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PivotConstraint_rotation_range, ptr @rna_PivotConstraint_use_relative_location, i32 -1, ptr @.str.217, i32 8195, ptr @.str.218, ptr @.str.659, i32 0, ptr @.str.86, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 72, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @PivotConstraint_offset_get, ptr @PivotConstraint_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_PivotConstraint_offset_default }, align 8
@.str.656 = private unnamed_addr constant [22 x i8] c"use_relative_location\00", align 1
@.str.657 = private unnamed_addr constant [20 x i8] c"Use Relative Offset\00", align 1
@.str.658 = private unnamed_addr constant [76 x i8] c"Offset will be an absolute point in space instead of relative to the target\00", align 1
@rna_PivotConstraint_rotation_range = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_PivotConstraint_offset, i32 -1, ptr @.str.660, i32 3, ptr @.str.661, ptr @.str.662, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PivotConstraint_rotation_range_get, ptr @PivotConstraint_rotation_range_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_PivotConstraint_rotation_range_items, i32 7, i32 0 }, align 8
@.str.659 = private unnamed_addr constant [123 x i8] c"Offset of pivot from target (when set), or from owner's location (when Fixed Position is off), or the absolute pivot point\00", align 1
@rna_PivotConstraint_offset_default = internal global [3 x float] zeroinitializer, align 4
@.str.660 = private unnamed_addr constant [15 x i8] c"rotation_range\00", align 1
@.str.661 = private unnamed_addr constant [23 x i8] c"Enabled Rotation Range\00", align 1
@.str.662 = private unnamed_addr constant [46 x i8] c"Rotation range on which pivoting should occur\00", align 1
@rna_PivotConstraint_rotation_range_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.845, i32 0, ptr @.str.846, ptr @.str.847 }, %struct.EnumPropertyItem { i32 0, ptr @.str.848, i32 0, ptr @.str.849, ptr @.str.850 }, %struct.EnumPropertyItem { i32 1, ptr @.str.851, i32 0, ptr @.str.852, ptr @.str.853 }, %struct.EnumPropertyItem { i32 2, ptr @.str.854, i32 0, ptr @.str.855, ptr @.str.856 }, %struct.EnumPropertyItem { i32 3, ptr @.str.726, i32 0, ptr @.str.857, ptr @.str.858 }, %struct.EnumPropertyItem { i32 4, ptr @.str.737, i32 0, ptr @.str.859, ptr @.str.860 }, %struct.EnumPropertyItem { i32 5, ptr @.str.728, i32 0, ptr @.str.861, ptr @.str.862 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_FollowTrackConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CameraSolverConstraint, ptr @RNA_PivotConstraint, ptr null, %struct.ListBase { ptr @rna_FollowTrackConstraint_clip, ptr @rna_FollowTrackConstraint_use_undistorted_position } }, ptr @.str.693, ptr null, ptr null, i32 4, ptr @.str.694, ptr @.str.695, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.663 = private unnamed_addr constant [16 x i8] c"PivotConstraint\00", align 1
@.str.664 = private unnamed_addr constant [17 x i8] c"Pivot Constraint\00", align 1
@.str.665 = private unnamed_addr constant [32 x i8] c"Rotate around a different point\00", align 1
@rna_FollowTrackConstraint_track = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowTrackConstraint_use_active_clip, ptr @rna_FollowTrackConstraint_clip, i32 -1, ptr @.str.669, i32 262145, ptr @.str.670, ptr @.str.671, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowTrackConstraint_track_get, ptr @FollowTrackConstraint_track_length, ptr @FollowTrackConstraint_track_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.666 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@.str.667 = private unnamed_addr constant [11 x i8] c"Movie Clip\00", align 1
@.str.668 = private unnamed_addr constant [37 x i8] c"Movie Clip to get tracking data from\00", align 1
@rna_FollowTrackConstraint_clip = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowTrackConstraint_track, ptr null, i32 -1, ptr @.str.666, i32 8388673, ptr @.str.667, ptr @.str.668, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowTrackConstraint_clip_get, ptr @FollowTrackConstraint_clip_set, ptr null, ptr null, ptr @RNA_MovieClip }, align 8
@rna_FollowTrackConstraint_use_active_clip = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowTrackConstraint_use_3d_position, ptr @rna_FollowTrackConstraint_track, i32 -1, ptr @.str.672, i32 3, ptr @.str.673, ptr @.str.674, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowTrackConstraint_use_active_clip_get, ptr @FollowTrackConstraint_use_active_clip_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.669 = private unnamed_addr constant [6 x i8] c"track\00", align 1
@.str.670 = private unnamed_addr constant [6 x i8] c"Track\00", align 1
@.str.671 = private unnamed_addr constant [31 x i8] c"Movie tracking track to follow\00", align 1
@rna_FollowTrackConstraint_use_3d_position = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowTrackConstraint_object, ptr @rna_FollowTrackConstraint_use_active_clip, i32 -1, ptr @.str.675, i32 3, ptr @.str.676, ptr @.str.677, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowTrackConstraint_use_3d_position_get, ptr @FollowTrackConstraint_use_3d_position_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.672 = private unnamed_addr constant [16 x i8] c"use_active_clip\00", align 1
@.str.673 = private unnamed_addr constant [12 x i8] c"Active Clip\00", align 1
@.str.674 = private unnamed_addr constant [33 x i8] c"Use active clip defined in scene\00", align 1
@rna_FollowTrackConstraint_object = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowTrackConstraint_camera, ptr @rna_FollowTrackConstraint_use_3d_position, i32 -1, ptr @.str.678, i32 262145, ptr @.str.679, ptr @.str.680, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowTrackConstraint_object_get, ptr @FollowTrackConstraint_object_length, ptr @FollowTrackConstraint_object_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.675 = private unnamed_addr constant [16 x i8] c"use_3d_position\00", align 1
@.str.676 = private unnamed_addr constant [12 x i8] c"3D Position\00", align 1
@.str.677 = private unnamed_addr constant [38 x i8] c"Use 3D position of track to parent to\00", align 1
@rna_FollowTrackConstraint_camera = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowTrackConstraint_depth_object, ptr @rna_FollowTrackConstraint_object, i32 -1, ptr @.str.681, i32 8388609, ptr @.str.682, ptr @.str.683, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowTrackConstraint_camera_get, ptr @FollowTrackConstraint_camera_set, ptr null, ptr @rna_Constraint_cameraObject_poll, ptr @RNA_Object }, align 8
@.str.678 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.679 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.680 = private unnamed_addr constant [66 x i8] c"Movie tracking object to follow (if empty, camera object is used)\00", align 1
@rna_FollowTrackConstraint_depth_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowTrackConstraint_frame_method, ptr @rna_FollowTrackConstraint_camera, i32 -1, ptr @.str.684, i32 8388609, ptr @.str.685, ptr @.str.686, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowTrackConstraint_depth_object_get, ptr @FollowTrackConstraint_depth_object_set, ptr null, ptr @rna_Constraint_followTrack_depthObject_poll, ptr @RNA_Object }, align 8
@.str.681 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.str.682 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.683 = private unnamed_addr constant [74 x i8] c"Camera to which motion is parented (if empty active scene camera is used)\00", align 1
@rna_FollowTrackConstraint_frame_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FollowTrackConstraint_use_undistorted_position, ptr @rna_FollowTrackConstraint_depth_object, i32 -1, ptr @.str.687, i32 3, ptr @.str.688, ptr @.str.689, i32 0, ptr @.str.86, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowTrackConstraint_frame_method_get, ptr @FollowTrackConstraint_frame_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FollowTrackConstraint_frame_method_items, i32 3, i32 0 }, align 8
@.str.684 = private unnamed_addr constant [13 x i8] c"depth_object\00", align 1
@.str.685 = private unnamed_addr constant [13 x i8] c"Depth Object\00", align 1
@.str.686 = private unnamed_addr constant [86 x i8] c"Object used to define depth in camera space by projecting onto surface of this object\00", align 1
@rna_FollowTrackConstraint_use_undistorted_position = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FollowTrackConstraint_frame_method, i32 -1, ptr @.str.690, i32 3, ptr @.str.691, ptr @.str.692, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FollowTrackConstraint_use_undistorted_position_get, ptr @FollowTrackConstraint_use_undistorted_position_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.687 = private unnamed_addr constant [13 x i8] c"frame_method\00", align 1
@.str.688 = private unnamed_addr constant [13 x i8] c"Frame Method\00", align 1
@.str.689 = private unnamed_addr constant [41 x i8] c"How the footage fits in the camera frame\00", align 1
@rna_FollowTrackConstraint_frame_method_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.863, i32 0, ptr @.str.392, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.864, i32 0, ptr @.str.865, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.866, i32 0, ptr @.str.867, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.690 = private unnamed_addr constant [25 x i8] c"use_undistorted_position\00", align 1
@.str.691 = private unnamed_addr constant [10 x i8] c"Undistort\00", align 1
@.str.692 = private unnamed_addr constant [43 x i8] c"Parent to undistorted position of 2D track\00", align 1
@RNA_CameraSolverConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ObjectSolverConstraint, ptr @RNA_FollowTrackConstraint, ptr null, %struct.ListBase { ptr @rna_CameraSolverConstraint_clip, ptr @rna_CameraSolverConstraint_use_active_clip } }, ptr @.str.696, ptr null, ptr null, i32 4, ptr @.str.697, ptr @.str.698, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.693 = private unnamed_addr constant [22 x i8] c"FollowTrackConstraint\00", align 1
@.str.694 = private unnamed_addr constant [24 x i8] c"Follow Track Constraint\00", align 1
@.str.695 = private unnamed_addr constant [39 x i8] c"Lock motion to the target motion track\00", align 1
@rna_CameraSolverConstraint_use_active_clip = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CameraSolverConstraint_clip, i32 -1, ptr @.str.672, i32 3, ptr @.str.673, ptr @.str.674, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CameraSolverConstraint_use_active_clip_get, ptr @CameraSolverConstraint_use_active_clip_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_CameraSolverConstraint_clip = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_CameraSolverConstraint_use_active_clip, ptr null, i32 -1, ptr @.str.666, i32 8388673, ptr @.str.667, ptr @.str.668, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CameraSolverConstraint_clip_get, ptr @CameraSolverConstraint_clip_set, ptr null, ptr null, ptr @RNA_MovieClip }, align 8
@RNA_ObjectSolverConstraint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Context, ptr @RNA_CameraSolverConstraint, ptr null, %struct.ListBase { ptr @rna_ObjectSolverConstraint_clip, ptr @rna_ObjectSolverConstraint_camera } }, ptr @.str.700, ptr null, ptr null, i32 4, ptr @.str.701, ptr @.str.702, ptr @.str.86, i32 17, ptr @rna_Constraint_name, ptr @rna_Constraint_rna_properties, ptr @RNA_Constraint, ptr null, ptr @rna_ConstraintType_refine, ptr @rna_Constraint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.696 = private unnamed_addr constant [23 x i8] c"CameraSolverConstraint\00", align 1
@.str.697 = private unnamed_addr constant [25 x i8] c"Camera Solver Constraint\00", align 1
@.str.698 = private unnamed_addr constant [49 x i8] c"Lock motion to the reconstructed camera movement\00", align 1
@rna_ObjectSolverConstraint_use_active_clip = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectSolverConstraint_object, ptr @rna_ObjectSolverConstraint_clip, i32 -1, ptr @.str.672, i32 3, ptr @.str.673, ptr @.str.674, i32 0, ptr @.str.86, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectSolverConstraint_use_active_clip_get, ptr @ObjectSolverConstraint_use_active_clip_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_ObjectSolverConstraint_clip = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectSolverConstraint_use_active_clip, ptr null, i32 -1, ptr @.str.666, i32 8388673, ptr @.str.667, ptr @.str.668, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectSolverConstraint_clip_get, ptr @ObjectSolverConstraint_clip_set, ptr null, ptr null, ptr @RNA_MovieClip }, align 8
@rna_ObjectSolverConstraint_object = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ObjectSolverConstraint_camera, ptr @rna_ObjectSolverConstraint_use_active_clip, i32 -1, ptr @.str.678, i32 262145, ptr @.str.679, ptr @.str.699, i32 0, ptr @.str.86, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectSolverConstraint_object_get, ptr @ObjectSolverConstraint_object_length, ptr @ObjectSolverConstraint_object_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_ObjectSolverConstraint_camera = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ObjectSolverConstraint_object, i32 -1, ptr @.str.681, i32 8388609, ptr @.str.682, ptr @.str.683, i32 0, ptr @.str.86, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Constraint_dependency_update, i32 85590016, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ObjectSolverConstraint_camera_get, ptr @ObjectSolverConstraint_camera_set, ptr null, ptr @rna_Constraint_cameraObject_poll, ptr @RNA_Object }, align 8
@.str.699 = private unnamed_addr constant [32 x i8] c"Movie tracking object to follow\00", align 1
@RNA_Context = external global %struct.StructRNA, align 8
@.str.700 = private unnamed_addr constant [23 x i8] c"ObjectSolverConstraint\00", align 1
@.str.701 = private unnamed_addr constant [25 x i8] c"Object Solver Constraint\00", align 1
@.str.702 = private unnamed_addr constant [49 x i8] c"Lock motion to the reconstructed object movement\00", align 1
@.str.703 = private unnamed_addr constant [12 x i8] c"constraints\00", align 1
@owner_space_pchan_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.704, i32 0, ptr @.str.705, ptr @.str.706 }, %struct.EnumPropertyItem { i32 2, ptr @.str.707, i32 0, ptr @.str.708, ptr @.str.709 }, %struct.EnumPropertyItem { i32 3, ptr @.str.710, i32 0, ptr @.str.711, ptr @.str.712 }, %struct.EnumPropertyItem { i32 1, ptr @.str.713, i32 0, ptr @.str.714, ptr @.str.715 }, %struct.EnumPropertyItem zeroinitializer], align 16
@space_object_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.704, i32 0, ptr @.str.705, ptr @.str.716 }, %struct.EnumPropertyItem { i32 1, ptr @.str.713, i32 0, ptr @.str.714, ptr @.str.717 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.704 = private unnamed_addr constant [6 x i8] c"WORLD\00", align 1
@.str.705 = private unnamed_addr constant [12 x i8] c"World Space\00", align 1
@.str.706 = private unnamed_addr constant [66 x i8] c"The constraint is applied relative to the world coordinate system\00", align 1
@.str.707 = private unnamed_addr constant [5 x i8] c"POSE\00", align 1
@.str.708 = private unnamed_addr constant [11 x i8] c"Pose Space\00", align 1
@.str.709 = private unnamed_addr constant [78 x i8] c"The constraint is applied in Pose Space, the object transformation is ignored\00", align 1
@.str.710 = private unnamed_addr constant [18 x i8] c"LOCAL_WITH_PARENT\00", align 1
@.str.711 = private unnamed_addr constant [18 x i8] c"Local With Parent\00", align 1
@.str.712 = private unnamed_addr constant [118 x i8] c"The constraint is applied relative to the local coordinate system of the object, with the parent transformation added\00", align 1
@.str.713 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@.str.714 = private unnamed_addr constant [12 x i8] c"Local Space\00", align 1
@.str.715 = private unnamed_addr constant [80 x i8] c"The constraint is applied relative to the local coordinate system of the object\00", align 1
@.str.716 = private unnamed_addr constant [86 x i8] c"The transformation of the target is evaluated relative to the world coordinate system\00", align 1
@.str.717 = private unnamed_addr constant [86 x i8] c"The transformation of the target is evaluated relative to its local coordinate system\00", align 1
@target_space_pchan_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.704, i32 0, ptr @.str.705, ptr @.str.716 }, %struct.EnumPropertyItem { i32 2, ptr @.str.707, i32 0, ptr @.str.708, ptr @.str.718 }, %struct.EnumPropertyItem { i32 3, ptr @.str.710, i32 0, ptr @.str.711, ptr @.str.719 }, %struct.EnumPropertyItem { i32 1, ptr @.str.713, i32 0, ptr @.str.714, ptr @.str.717 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.718 = private unnamed_addr constant [123 x i8] c"The transformation of the target is only evaluated in the Pose Space, the target armature object transformation is ignored\00", align 1
@.str.719 = private unnamed_addr constant [126 x i8] c"The transformation of the target bone is evaluated relative its local coordinate system, with the parent transformation added\00", align 1
@RNA_UnknownType = external global %struct.StructRNA, align 8
@.str.720 = private unnamed_addr constant [62 x i8] c"%s: internal error, constraint '%s' not found in object '%s'\0A\00", align 1
@__func__.rna_Constraint_path = private unnamed_addr constant [20 x i8] c"rna_Constraint_path\00", align 1
@.str.721 = private unnamed_addr constant [35 x i8] c"pose.bones[\22%s\22].constraints[\22%s\22]\00", align 1
@.str.722 = private unnamed_addr constant [18 x i8] c"constraints[\22%s\22]\00", align 1
@.str.723 = private unnamed_addr constant [11 x i8] c"VOLUME_XZX\00", align 1
@.str.724 = private unnamed_addr constant [3 x i8] c"XZ\00", align 1
@.str.725 = private unnamed_addr constant [9 x i8] c"VOLUME_X\00", align 1
@.str.726 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.727 = private unnamed_addr constant [9 x i8] c"VOLUME_Z\00", align 1
@.str.728 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.729 = private unnamed_addr constant [10 x i8] c"NO_VOLUME\00", align 1
@.str.730 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.731 = private unnamed_addr constant [8 x i8] c"PLANE_X\00", align 1
@.str.732 = private unnamed_addr constant [12 x i8] c"Keep X Axis\00", align 1
@.str.733 = private unnamed_addr constant [8 x i8] c"PLANE_Z\00", align 1
@.str.734 = private unnamed_addr constant [12 x i8] c"Keep Z Axis\00", align 1
@.str.735 = private unnamed_addr constant [10 x i8] c"FORWARD_X\00", align 1
@.str.736 = private unnamed_addr constant [10 x i8] c"FORWARD_Y\00", align 1
@.str.737 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.738 = private unnamed_addr constant [10 x i8] c"FORWARD_Z\00", align 1
@.str.739 = private unnamed_addr constant [17 x i8] c"TRACK_NEGATIVE_X\00", align 1
@.str.740 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@.str.741 = private unnamed_addr constant [17 x i8] c"TRACK_NEGATIVE_Y\00", align 1
@.str.742 = private unnamed_addr constant [3 x i8] c"-Y\00", align 1
@.str.743 = private unnamed_addr constant [17 x i8] c"TRACK_NEGATIVE_Z\00", align 1
@.str.744 = private unnamed_addr constant [3 x i8] c"-Z\00", align 1
@.str.745 = private unnamed_addr constant [5 x i8] c"UP_X\00", align 1
@.str.746 = private unnamed_addr constant [5 x i8] c"UP_Y\00", align 1
@.str.747 = private unnamed_addr constant [5 x i8] c"UP_Z\00", align 1
@.str.748 = private unnamed_addr constant [8 x i8] c"TRACK_X\00", align 1
@.str.749 = private unnamed_addr constant [8 x i8] c"TRACK_Y\00", align 1
@.str.750 = private unnamed_addr constant [8 x i8] c"TRACK_Z\00", align 1
@.str.751 = private unnamed_addr constant [7 x i8] c"LOCK_X\00", align 1
@.str.752 = private unnamed_addr constant [7 x i8] c"LOCK_Y\00", align 1
@.str.753 = private unnamed_addr constant [7 x i8] c"LOCK_Z\00", align 1
@.str.754 = private unnamed_addr constant [11 x i8] c"LOCATION_X\00", align 1
@.str.755 = private unnamed_addr constant [11 x i8] c"X Location\00", align 1
@.str.756 = private unnamed_addr constant [11 x i8] c"LOCATION_Y\00", align 1
@.str.757 = private unnamed_addr constant [11 x i8] c"Y Location\00", align 1
@.str.758 = private unnamed_addr constant [11 x i8] c"LOCATION_Z\00", align 1
@.str.759 = private unnamed_addr constant [11 x i8] c"Z Location\00", align 1
@.str.760 = private unnamed_addr constant [11 x i8] c"ROTATION_X\00", align 1
@.str.761 = private unnamed_addr constant [11 x i8] c"X Rotation\00", align 1
@.str.762 = private unnamed_addr constant [11 x i8] c"ROTATION_Y\00", align 1
@.str.763 = private unnamed_addr constant [11 x i8] c"Y Rotation\00", align 1
@.str.764 = private unnamed_addr constant [11 x i8] c"ROTATION_Z\00", align 1
@.str.765 = private unnamed_addr constant [11 x i8] c"Z Rotation\00", align 1
@.str.766 = private unnamed_addr constant [8 x i8] c"SCALE_X\00", align 1
@.str.767 = private unnamed_addr constant [8 x i8] c"X Scale\00", align 1
@.str.768 = private unnamed_addr constant [8 x i8] c"SCALE_Y\00", align 1
@.str.769 = private unnamed_addr constant [8 x i8] c"Y Scale\00", align 1
@.str.770 = private unnamed_addr constant [8 x i8] c"SCALE_Z\00", align 1
@.str.771 = private unnamed_addr constant [8 x i8] c"Z Scale\00", align 1
@.str.772 = private unnamed_addr constant [10 x i8] c"SAMEVOL_X\00", align 1
@.str.773 = private unnamed_addr constant [10 x i8] c"SAMEVOL_Y\00", align 1
@.str.774 = private unnamed_addr constant [10 x i8] c"SAMEVOL_Z\00", align 1
@.str.775 = private unnamed_addr constant [8 x i8] c"FLOOR_X\00", align 1
@.str.776 = private unnamed_addr constant [8 x i8] c"FLOOR_Y\00", align 1
@.str.777 = private unnamed_addr constant [8 x i8] c"FLOOR_Z\00", align 1
@.str.778 = private unnamed_addr constant [17 x i8] c"FLOOR_NEGATIVE_X\00", align 1
@.str.779 = private unnamed_addr constant [17 x i8] c"FLOOR_NEGATIVE_Y\00", align 1
@.str.780 = private unnamed_addr constant [17 x i8] c"FLOOR_NEGATIVE_Z\00", align 1
@.str.781 = private unnamed_addr constant [5 x i8] c"BONE\00", align 1
@.str.782 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@.str.783 = private unnamed_addr constant [7 x i8] c"TARGET\00", align 1
@.str.784 = private unnamed_addr constant [10 x i8] c"COPY_POSE\00", align 1
@.str.785 = private unnamed_addr constant [10 x i8] c"Copy Pose\00", align 1
@.str.786 = private unnamed_addr constant [9 x i8] c"DISTANCE\00", align 1
@.str.787 = private unnamed_addr constant [17 x i8] c"LIMITDIST_INSIDE\00", align 1
@.str.788 = private unnamed_addr constant [7 x i8] c"Inside\00", align 1
@.str.789 = private unnamed_addr constant [120 x i8] c"The object is constrained inside a virtual sphere around the target object, with a radius defined by the limit distance\00", align 1
@.str.790 = private unnamed_addr constant [18 x i8] c"LIMITDIST_OUTSIDE\00", align 1
@.str.791 = private unnamed_addr constant [8 x i8] c"Outside\00", align 1
@.str.792 = private unnamed_addr constant [121 x i8] c"The object is constrained outside a virtual sphere around the target object, with a radius defined by the limit distance\00", align 1
@.str.793 = private unnamed_addr constant [20 x i8] c"LIMITDIST_ONSURFACE\00", align 1
@.str.794 = private unnamed_addr constant [11 x i8] c"On Surface\00", align 1
@.str.795 = private unnamed_addr constant [131 x i8] c"The object is constrained on the surface of a virtual sphere around the target object, with a radius defined by the limit distance\00", align 1
@.str.796 = private unnamed_addr constant [5 x i8] c"BALL\00", align 1
@.str.797 = private unnamed_addr constant [5 x i8] c"Ball\00", align 1
@.str.798 = private unnamed_addr constant [32 x i8] c"Allow rotations around all axes\00", align 1
@.str.799 = private unnamed_addr constant [6 x i8] c"HINGE\00", align 1
@.str.800 = private unnamed_addr constant [6 x i8] c"Hinge\00", align 1
@.str.801 = private unnamed_addr constant [56 x i8] c"Work in one plane, allow rotations around one axis only\00", align 1
@.str.802 = private unnamed_addr constant [11 x i8] c"CONE_TWIST\00", align 1
@.str.803 = private unnamed_addr constant [11 x i8] c"Cone Twist\00", align 1
@.str.804 = private unnamed_addr constant [72 x i8] c"Allow rotations around all axes with limits for the cone and twist axes\00", align 1
@.str.805 = private unnamed_addr constant [14 x i8] c"GENERIC_6_DOF\00", align 1
@.str.806 = private unnamed_addr constant [14 x i8] c"Generic 6 DoF\00", align 1
@.str.807 = private unnamed_addr constant [58 x i8] c"No constraints by default, limits can be set individually\00", align 1
@.str.808 = private unnamed_addr constant [13 x i8] c"CLAMPTO_AUTO\00", align 1
@.str.809 = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@.str.810 = private unnamed_addr constant [10 x i8] c"CLAMPTO_X\00", align 1
@.str.811 = private unnamed_addr constant [10 x i8] c"CLAMPTO_Y\00", align 1
@.str.812 = private unnamed_addr constant [10 x i8] c"CLAMPTO_Z\00", align 1
@.str.813 = private unnamed_addr constant [9 x i8] c"LOCATION\00", align 1
@.str.814 = private unnamed_addr constant [4 x i8] c"Loc\00", align 1
@.str.815 = private unnamed_addr constant [9 x i8] c"ROTATION\00", align 1
@.str.816 = private unnamed_addr constant [4 x i8] c"Rot\00", align 1
@.str.817 = private unnamed_addr constant [6 x i8] c"SCALE\00", align 1
@.str.818 = private unnamed_addr constant [6 x i8] c"Scale\00", align 1
@.str.819 = private unnamed_addr constant [16 x i8] c"NEAREST_SURFACE\00", align 1
@.str.820 = private unnamed_addr constant [22 x i8] c"Nearest Surface Point\00", align 1
@.str.821 = private unnamed_addr constant [50 x i8] c"Shrink the location to the nearest target surface\00", align 1
@.str.822 = private unnamed_addr constant [8 x i8] c"PROJECT\00", align 1
@.str.823 = private unnamed_addr constant [8 x i8] c"Project\00", align 1
@.str.824 = private unnamed_addr constant [69 x i8] c"Shrink the location to the nearest target surface along a given axis\00", align 1
@.str.825 = private unnamed_addr constant [15 x i8] c"NEAREST_VERTEX\00", align 1
@.str.826 = private unnamed_addr constant [15 x i8] c"Nearest Vertex\00", align 1
@.str.827 = private unnamed_addr constant [49 x i8] c"Shrink the location to the nearest target vertex\00", align 1
@.str.828 = private unnamed_addr constant [6 x i8] c"POS_X\00", align 1
@.str.829 = private unnamed_addr constant [3 x i8] c"+X\00", align 1
@.str.830 = private unnamed_addr constant [6 x i8] c"POS_Y\00", align 1
@.str.831 = private unnamed_addr constant [3 x i8] c"+Y\00", align 1
@.str.832 = private unnamed_addr constant [6 x i8] c"POS_Z\00", align 1
@.str.833 = private unnamed_addr constant [3 x i8] c"+Z\00", align 1
@.str.834 = private unnamed_addr constant [6 x i8] c"NEG_X\00", align 1
@.str.835 = private unnamed_addr constant [6 x i8] c"NEG_Y\00", align 1
@.str.836 = private unnamed_addr constant [6 x i8] c"NEG_Z\00", align 1
@.str.837 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.838 = private unnamed_addr constant [39 x i8] c"Don't scale the X and Z axes (Default)\00", align 1
@.str.839 = private unnamed_addr constant [14 x i8] c"BONE_ORIGINAL\00", align 1
@.str.840 = private unnamed_addr constant [14 x i8] c"Bone Original\00", align 1
@.str.841 = private unnamed_addr constant [38 x i8] c"Use the original scaling of the bones\00", align 1
@.str.842 = private unnamed_addr constant [16 x i8] c"VOLUME_PRESERVE\00", align 1
@.str.843 = private unnamed_addr constant [20 x i8] c"Volume Preservation\00", align 1
@.str.844 = private unnamed_addr constant [56 x i8] c"Scale of the X and Z axes is the inverse of the Y-Scale\00", align 1
@.str.845 = private unnamed_addr constant [14 x i8] c"ALWAYS_ACTIVE\00", align 1
@.str.846 = private unnamed_addr constant [7 x i8] c"Always\00", align 1
@.str.847 = private unnamed_addr constant [38 x i8] c"Use the pivot point in every rotation\00", align 1
@.str.848 = private unnamed_addr constant [3 x i8] c"NX\00", align 1
@.str.849 = private unnamed_addr constant [7 x i8] c"-X Rot\00", align 1
@.str.850 = private unnamed_addr constant [69 x i8] c"Use the pivot point in the negative rotation range around the X-axis\00", align 1
@.str.851 = private unnamed_addr constant [3 x i8] c"NY\00", align 1
@.str.852 = private unnamed_addr constant [7 x i8] c"-Y Rot\00", align 1
@.str.853 = private unnamed_addr constant [69 x i8] c"Use the pivot point in the negative rotation range around the Y-axis\00", align 1
@.str.854 = private unnamed_addr constant [3 x i8] c"NZ\00", align 1
@.str.855 = private unnamed_addr constant [7 x i8] c"-Z Rot\00", align 1
@.str.856 = private unnamed_addr constant [69 x i8] c"Use the pivot point in the negative rotation range around the Z-axis\00", align 1
@.str.857 = private unnamed_addr constant [6 x i8] c"X Rot\00", align 1
@.str.858 = private unnamed_addr constant [69 x i8] c"Use the pivot point in the positive rotation range around the X-axis\00", align 1
@.str.859 = private unnamed_addr constant [6 x i8] c"Y Rot\00", align 1
@.str.860 = private unnamed_addr constant [69 x i8] c"Use the pivot point in the positive rotation range around the Y-axis\00", align 1
@.str.861 = private unnamed_addr constant [6 x i8] c"Z Rot\00", align 1
@.str.862 = private unnamed_addr constant [69 x i8] c"Use the pivot point in the positive rotation range around the Z-axis\00", align 1
@.str.863 = private unnamed_addr constant [8 x i8] c"STRETCH\00", align 1
@.str.864 = private unnamed_addr constant [4 x i8] c"FIT\00", align 1
@.str.865 = private unnamed_addr constant [4 x i8] c"Fit\00", align 1
@.str.866 = private unnamed_addr constant [5 x i8] c"CROP\00", align 1
@.str.867 = private unnamed_addr constant [5 x i8] c"Crop\00", align 1
@switch.table.rna_ConstraintType_refine = private unnamed_addr constant [28 x ptr] [ptr @RNA_ChildOfConstraint, ptr @RNA_TrackToConstraint, ptr @RNA_KinematicConstraint, ptr @RNA_FollowPathConstraint, ptr @RNA_LimitRotationConstraint, ptr @RNA_LimitLocationConstraint, ptr @RNA_LimitScaleConstraint, ptr @RNA_CopyRotationConstraint, ptr @RNA_CopyLocationConstraint, ptr @RNA_CopyScaleConstraint, ptr @RNA_PythonConstraint, ptr @RNA_ActionConstraint, ptr @RNA_LockedTrackConstraint, ptr @RNA_LimitDistanceConstraint, ptr @RNA_StretchToConstraint, ptr @RNA_FloorConstraint, ptr @RNA_RigidBodyJointConstraint, ptr @RNA_ClampToConstraint, ptr @RNA_TransformConstraint, ptr @RNA_ShrinkwrapConstraint, ptr @RNA_DampedTrackConstraint, ptr @RNA_SplineIKConstraint, ptr @RNA_CopyTransformsConstraint, ptr @RNA_MaintainVolumeConstraint, ptr @RNA_PivotConstraint, ptr @RNA_FollowTrackConstraint, ptr @RNA_CameraSolverConstraint, ptr @RNA_ObjectSolverConstraint], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Constraint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Constraint_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @Constraint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Constraint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !45 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Constraint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @Constraint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Constraint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Constraint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Constraint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Constraint_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 7
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Constraint_name_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 7
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #18
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Constraint_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Constraint_name_set(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Constraint_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !47 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %6 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 7
  %7 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %6, i64 noundef 64) #15
  %8 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #15
  %9 = load ptr, ptr %0, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = call ptr @get_constraint_lb(ptr noundef nonnull %9, ptr noundef %5, ptr noundef null) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void @BKE_constraint_unique_name(ptr noundef %5, ptr noundef nonnull %12) #15
  br label %15

15:                                               ; preds = %11, %14, %2
  call void @BKE_all_animdata_fix_paths_rename(ptr noundef null, ptr noundef nonnull @.str.703, ptr noundef nonnull %3, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Constraint_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !49
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Constraint_owner_space_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 4, !tbaa !53
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Constraint_owner_space_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 5
  store i8 %5, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Constraint_target_space_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !54
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Constraint_target_space_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 6
  store i8 %5, ptr %6, align 1, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Constraint_mute_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !55
  %6 = lshr i16 %5, 9
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Constraint_mute_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !55
  %8 = and i16 %7, -513
  %9 = select i1 %5, i16 0, i16 512
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Constraint_show_expanded_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !55
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Constraint_show_expanded_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !55
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Constraint_is_valid_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !55
  %6 = and i16 %5, 4
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Constraint_active_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !55
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Constraint_active_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !55
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Constraint_is_proxy_local_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !55
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Constraint_is_proxy_local_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !55
  %8 = and i16 %7, -257
  %9 = select i1 %5, i16 0, i16 256
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Constraint_influence_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 8, !tbaa !56
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Constraint_influence_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 9
  store float %8, ptr %9, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Constraint_error_location_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 8, !tbaa !57
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Constraint_error_rotation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 4, !tbaa !58
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConstraintTarget_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ConstraintTarget_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @ConstraintTarget_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ConstraintTarget_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !59 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConstraintTarget_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @ConstraintTarget_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConstraintTarget_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ConstraintTarget_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConstraintTarget_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConstraintTarget_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConstraintTarget_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 2
  store ptr %6, ptr %10, align 8, !tbaa !60
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConstraintTarget_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ConstraintTarget_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraintTarget, ptr %3, i64 0, i32 3
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #18
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConstraintTarget_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraintTarget, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ChildOfConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ChildOfConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ChildOfConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bChildOfConstraint, ptr %6, i64 0, i32 4
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ChildOfConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bChildOfConstraint, ptr %5, i64 0, i32 4
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ChildOfConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bChildOfConstraint, ptr %6, i64 0, i32 4
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ChildOfConstraint_use_location_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bChildOfConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ChildOfConstraint_use_location_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bChildOfConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ChildOfConstraint_use_location_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bChildOfConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ChildOfConstraint_use_location_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bChildOfConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = and i32 %9, -3
  %11 = select i1 %7, i32 0, i32 2
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ChildOfConstraint_use_location_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bChildOfConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ChildOfConstraint_use_location_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bChildOfConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = and i32 %9, -5
  %11 = select i1 %7, i32 0, i32 4
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ChildOfConstraint_use_rotation_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bChildOfConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ChildOfConstraint_use_rotation_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bChildOfConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = and i32 %9, -9
  %11 = select i1 %7, i32 0, i32 8
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ChildOfConstraint_use_rotation_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bChildOfConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ChildOfConstraint_use_rotation_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bChildOfConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = and i32 %9, -17
  %11 = select i1 %7, i32 0, i32 16
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ChildOfConstraint_use_rotation_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bChildOfConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = lshr i32 %7, 5
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ChildOfConstraint_use_rotation_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bChildOfConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = and i32 %9, -33
  %11 = select i1 %7, i32 0, i32 32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ChildOfConstraint_use_scale_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bChildOfConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = lshr i32 %7, 6
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ChildOfConstraint_use_scale_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bChildOfConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = and i32 %9, -65
  %11 = select i1 %7, i32 0, i32 64
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ChildOfConstraint_use_scale_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bChildOfConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = lshr i32 %7, 7
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ChildOfConstraint_use_scale_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bChildOfConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = and i32 %9, -129
  %11 = select i1 %7, i32 0, i32 128
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ChildOfConstraint_use_scale_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bChildOfConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = lshr i32 %7, 8
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ChildOfConstraint_use_scale_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bChildOfConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = and i32 %9, -257
  %11 = select i1 %7, i32 0, i32 256
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !65
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ChildOfConstraint_inverse_matrix_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bChildOfConstraint, ptr %6, i64 0, i32 3
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %7, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !66
  %12 = getelementptr inbounds float, ptr %1, i64 %9
  store float %11, ptr %12, align 4, !tbaa !66
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %15, label %8, !llvm.loop !67

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ChildOfConstraint_inverse_matrix_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bChildOfConstraint, ptr %6, i64 0, i32 3
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !66
  %12 = getelementptr inbounds float, ptr %7, i64 %9
  store float %11, ptr %12, align 4, !tbaa !66
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %15, label %8, !llvm.loop !69

15:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PythonConstraint_targets_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_PythonConstraint_targets, ptr %8, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.bPythonConstraint, ptr %7, i64 0, i32 4
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %9, ptr noundef null) #15
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @PythonConstraint_targets_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %15

15:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @PythonConstraint_targets_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !70 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #15
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ConstraintTarget, ptr noundef %3) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PythonConstraint_targets_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @PythonConstraint_targets_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PythonConstraint_targets_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PythonConstraint_targets_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #16
  call void @PythonConstraint_targets_begin(ptr noundef nonnull %4, ptr noundef %0) #17
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #15
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !73

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !74
  store ptr %37, ptr %10, align 8, !tbaa !76
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !77

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @PythonConstraint_targets_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @PythonConstraint_targets_end(ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #16
  ret i32 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PythonConstraint_target_count_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bPythonConstraint, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !78
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PythonConstraint_target_count_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bPythonConstraint, ptr %6, i64 0, i32 3
  store i32 %1, ptr %7, align 4, !tbaa !78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PythonConstraint_text_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Text, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PythonConstraint_text_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @id_us_plus(ptr noundef nonnull %12) #15
  br label %15

15:                                               ; preds = %14, %10
  store ptr %12, ptr %6, align 8, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PythonConstraint_use_targets_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bPythonConstraint, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !82
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PythonConstraint_use_targets_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bPythonConstraint, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !82
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PythonConstraint_has_script_error_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bPythonConstraint, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !82
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @StretchToConstraint_head_tail_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @StretchToConstraint_head_tail_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 4, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @StretchToConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @StretchToConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @StretchToConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bStretchToConstraint, ptr %6, i64 0, i32 9
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @StretchToConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bStretchToConstraint, ptr %5, i64 0, i32 9
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @StretchToConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bStretchToConstraint, ptr %6, i64 0, i32 9
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @StretchToConstraint_volume_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bStretchToConstraint, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !86
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @StretchToConstraint_volume_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bStretchToConstraint, ptr %6, i64 0, i32 2
  store i32 %1, ptr %7, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @StretchToConstraint_keep_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bStretchToConstraint, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !87
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @StretchToConstraint_keep_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bStretchToConstraint, ptr %6, i64 0, i32 3
  store i32 %1, ptr %7, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @StretchToConstraint_rest_length_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bStretchToConstraint, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !88
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @StretchToConstraint_rest_length_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+02
  %9 = select i1 %8, float 1.000000e+02, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bStretchToConstraint, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @StretchToConstraint_bulge_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bStretchToConstraint, ptr %5, i64 0, i32 5
  %7 = load float, ptr %6, align 8, !tbaa !89
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @StretchToConstraint_bulge_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+02
  %9 = select i1 %8, float 1.000000e+02, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bStretchToConstraint, ptr %6, i64 0, i32 5
  store float %10, ptr %11, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @StretchToConstraint_use_bulge_min_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bStretchToConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !90
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @StretchToConstraint_use_bulge_min_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bStretchToConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !90
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @StretchToConstraint_use_bulge_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bStretchToConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !90
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @StretchToConstraint_use_bulge_max_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bStretchToConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !90
  %10 = and i32 %9, -3
  %11 = select i1 %7, i32 0, i32 2
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @StretchToConstraint_bulge_min_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bStretchToConstraint, ptr %5, i64 0, i32 6
  %7 = load float, ptr %6, align 4, !tbaa !91
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @StretchToConstraint_bulge_min_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bStretchToConstraint, ptr %6, i64 0, i32 6
  store float %10, ptr %11, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @StretchToConstraint_bulge_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bStretchToConstraint, ptr %5, i64 0, i32 7
  %7 = load float, ptr %6, align 8, !tbaa !92
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @StretchToConstraint_bulge_max_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 1.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+02
  %9 = select i1 %8, float 1.000000e+02, float %1
  %10 = select i1 %7, float 1.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bStretchToConstraint, ptr %6, i64 0, i32 7
  store float %10, ptr %11, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @StretchToConstraint_bulge_smooth_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bStretchToConstraint, ptr %5, i64 0, i32 8
  %7 = load float, ptr %6, align 4, !tbaa !93
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @StretchToConstraint_bulge_smooth_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bStretchToConstraint, ptr %6, i64 0, i32 8
  store float %10, ptr %11, align 4, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FollowPathConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FollowPathConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FollowPathConstraint_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !96
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FollowPathConstraint_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -3.000000e+05
  %8 = fcmp ogt float %1, 3.000000e+05
  %9 = select i1 %8, float 3.000000e+05, float %1
  %10 = select i1 %7, float -3.000000e+05, float %9
  %11 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %6, i64 0, i32 1
  store float %10, ptr %11, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FollowPathConstraint_offset_factor_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !97
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FollowPathConstraint_offset_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %6, i64 0, i32 2
  store float %10, ptr %11, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FollowPathConstraint_forward_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 4, !tbaa !98
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FollowPathConstraint_forward_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %6, i64 0, i32 4
  store i16 %7, ptr %8, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FollowPathConstraint_up_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %5, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !99
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FollowPathConstraint_up_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %6, i64 0, i32 5
  store i16 %7, ptr %8, align 2, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FollowPathConstraint_use_curve_follow_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !100
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FollowPathConstraint_use_curve_follow_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !100
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FollowPathConstraint_use_fixed_location_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !100
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FollowPathConstraint_use_fixed_location_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !100
  %10 = and i32 %9, -3
  %11 = select i1 %7, i32 0, i32 2
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FollowPathConstraint_use_curve_radius_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !100
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FollowPathConstraint_use_curve_radius_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bFollowPathConstraint, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !100
  %10 = and i32 %9, -5
  %11 = select i1 %7, i32 0, i32 4
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LockedTrackConstraint_head_tail_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LockedTrackConstraint_head_tail_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 4, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LockedTrackConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LockedTrackConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LockedTrackConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LockedTrackConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %5, i64 0, i32 3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LockedTrackConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LockedTrackConstraint_track_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !103
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LockedTrackConstraint_track_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %6, i64 0, i32 1
  store i32 %1, ptr %7, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LockedTrackConstraint_lock_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !104
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LockedTrackConstraint_lock_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bLockTrackConstraint, ptr %6, i64 0, i32 2
  store i32 %1, ptr %7, align 4, !tbaa !104
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ActionConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ActionConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !105
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ActionConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bActionConstraint, ptr %6, i64 0, i32 9
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bActionConstraint, ptr %5, i64 0, i32 9
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ActionConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bActionConstraint, ptr %6, i64 0, i32 9
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionConstraint_transform_channel_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bActionConstraint, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !107
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionConstraint_transform_channel_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bActionConstraint, ptr %6, i64 0, i32 1
  store i16 %7, ptr %8, align 8, !tbaa !107
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ActionConstraint_action_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bActionConstraint, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Action, ptr noundef %8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ActionConstraint_action_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bActionConstraint, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @id_us_plus(ptr noundef nonnull %13) #15
  br label %16

16:                                               ; preds = %15, %11
  store ptr %13, ptr %7, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionConstraint_use_bone_object_action_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bActionConstraint, ptr %5, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !109
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionConstraint_use_bone_object_action_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bActionConstraint, ptr %6, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !109
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionConstraint_frame_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bActionConstraint, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !110
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionConstraint_frame_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 -300000)
  %9 = getelementptr inbounds %struct.bActionConstraint, ptr %6, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ActionConstraint_frame_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bActionConstraint, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !111
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionConstraint_frame_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 -300000)
  %9 = getelementptr inbounds %struct.bActionConstraint, ptr %6, i64 0, i32 4
  store i32 %8, ptr %9, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ActionConstraint_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bActionConstraint, ptr %5, i64 0, i32 6
  %7 = load float, ptr %6, align 8, !tbaa !112
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionConstraint_max_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store float 0xC7EFFFFFE0000000, ptr %3, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store float 0x47EFFFFFE0000000, ptr %4, align 4, !tbaa !66
  call void @rna_ActionConstraint_minmax_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull poison, ptr nonnull poison) #17
  %9 = load float, ptr %3, align 4, !tbaa !66
  %10 = fcmp ogt float %9, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load float, ptr %4, align 4
  %13 = fcmp olt float %12, %1
  %14 = select i1 %13, float %12, float %1
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi float [ %14, %11 ], [ %9, %2 ]
  %17 = getelementptr inbounds %struct.bActionConstraint, ptr %8, i64 0, i32 6
  store float %16, ptr %17, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_ActionConstraint_minmax_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #12 !PGOFuncName !113 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.bConstraint, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.bActionConstraint, ptr %9, i64 0, i32 1
  %11 = load i16, ptr %10, align 8, !tbaa !107
  %12 = icmp ult i16 %11, 3
  %13 = select i1 %12, float -1.800000e+02, float -1.000000e+03
  %14 = select i1 %12, float 1.800000e+02, float 1.000000e+03
  store float %13, ptr %1, align 4, !tbaa !66
  store float %14, ptr %2, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ActionConstraint_min_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bActionConstraint, ptr %5, i64 0, i32 5
  %7 = load float, ptr %6, align 4, !tbaa !114
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ActionConstraint_min_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store float 0xC7EFFFFFE0000000, ptr %3, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store float 0x47EFFFFFE0000000, ptr %4, align 4, !tbaa !66
  call void @rna_ActionConstraint_minmax_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull poison, ptr nonnull poison) #17
  %9 = load float, ptr %3, align 4, !tbaa !66
  %10 = fcmp ogt float %9, %1
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load float, ptr %4, align 4
  %13 = fcmp olt float %12, %1
  %14 = select i1 %13, float %12, float %1
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi float [ %14, %11 ], [ %9, %2 ]
  %17 = getelementptr inbounds %struct.bActionConstraint, ptr %8, i64 0, i32 5
  store float %16, ptr %17, align 4, !tbaa !114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyScaleConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyScaleConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !115
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyScaleConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyScaleConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %5, i64 0, i32 3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyScaleConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyScaleConstraint_use_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !117
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyScaleConstraint_use_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !117
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyScaleConstraint_use_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !117
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyScaleConstraint_use_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !117
  %10 = and i32 %9, -3
  %11 = select i1 %7, i32 0, i32 2
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyScaleConstraint_use_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !117
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyScaleConstraint_use_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !117
  %10 = and i32 %9, -5
  %11 = select i1 %7, i32 0, i32 4
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyScaleConstraint_use_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !117
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyScaleConstraint_use_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSizeLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !117
  %10 = and i32 %9, -9
  %11 = select i1 %7, i32 0, i32 8
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaintainVolumeConstraint_free_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load i32, ptr %5, align 4, !tbaa !118
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaintainVolumeConstraint_free_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  store i32 %1, ptr %6, align 4, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MaintainVolumeConstraint_volume_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSameVolumeConstraint, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !120
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaintainVolumeConstraint_volume_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0x3F50624DE0000000
  %8 = fcmp ogt float %1, 1.000000e+02
  %9 = select i1 %8, float 1.000000e+02, float %1
  %10 = select i1 %7, float 0x3F50624DE0000000, float %9
  %11 = getelementptr inbounds %struct.bSameVolumeConstraint, ptr %6, i64 0, i32 1
  store float %10, ptr %11, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CopyLocationConstraint_head_tail_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyLocationConstraint_head_tail_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 4, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyLocationConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyLocationConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !121
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyLocationConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyLocationConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %5, i64 0, i32 3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyLocationConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyLocationConstraint_use_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !123
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyLocationConstraint_use_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !123
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyLocationConstraint_use_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !123
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyLocationConstraint_use_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !123
  %10 = and i32 %9, -3
  %11 = select i1 %7, i32 0, i32 2
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyLocationConstraint_use_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !123
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyLocationConstraint_use_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !123
  %10 = and i32 %9, -5
  %11 = select i1 %7, i32 0, i32 4
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyLocationConstraint_invert_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !123
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyLocationConstraint_invert_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !123
  %10 = and i32 %9, -17
  %11 = select i1 %7, i32 0, i32 16
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyLocationConstraint_invert_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !123
  %8 = lshr i32 %7, 5
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyLocationConstraint_invert_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !123
  %10 = and i32 %9, -33
  %11 = select i1 %7, i32 0, i32 32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyLocationConstraint_invert_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !123
  %8 = lshr i32 %7, 6
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyLocationConstraint_invert_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !123
  %10 = and i32 %9, -65
  %11 = select i1 %7, i32 0, i32 64
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyLocationConstraint_use_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !123
  %8 = lshr i32 %7, 7
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyLocationConstraint_use_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !123
  %10 = and i32 %9, -129
  %11 = select i1 %7, i32 0, i32 128
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !123
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyRotationConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyRotationConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !124
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyRotationConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyRotationConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %5, i64 0, i32 3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyRotationConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyRotationConstraint_use_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyRotationConstraint_use_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyRotationConstraint_use_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyRotationConstraint_use_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = and i32 %9, -3
  %11 = select i1 %7, i32 0, i32 2
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyRotationConstraint_use_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyRotationConstraint_use_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = and i32 %9, -5
  %11 = select i1 %7, i32 0, i32 4
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyRotationConstraint_invert_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyRotationConstraint_invert_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = and i32 %9, -17
  %11 = select i1 %7, i32 0, i32 16
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyRotationConstraint_invert_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = lshr i32 %7, 5
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyRotationConstraint_invert_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = and i32 %9, -33
  %11 = select i1 %7, i32 0, i32 32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyRotationConstraint_invert_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = lshr i32 %7, 6
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyRotationConstraint_invert_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = and i32 %9, -65
  %11 = select i1 %7, i32 0, i32 64
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyRotationConstraint_use_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = lshr i32 %7, 7
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyRotationConstraint_use_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = and i32 %9, -129
  %11 = select i1 %7, i32 0, i32 128
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CopyTransformsConstraint_head_tail_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CopyTransformsConstraint_head_tail_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 4, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyTransformsConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyTransformsConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !127
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyTransformsConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransLikeConstraint, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CopyTransformsConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransLikeConstraint, ptr %5, i64 0, i32 1
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CopyTransformsConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransLikeConstraint, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FloorConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FloorConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !129
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FloorConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %6, i64 0, i32 9
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FloorConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %5, i64 0, i32 9
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FloorConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %6, i64 0, i32 9
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FloorConstraint_floor_location_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !131
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FloorConstraint_floor_location_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %6, i64 0, i32 1
  store i32 %1, ptr %7, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FloorConstraint_use_sticky_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !132
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FloorConstraint_use_sticky_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !132
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FloorConstraint_use_rotation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !132
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FloorConstraint_use_rotation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !132
  %10 = and i32 %9, -5
  %11 = select i1 %7, i32 0, i32 4
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FloorConstraint_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !133
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FloorConstraint_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %6, i64 0, i32 2
  store float %10, ptr %11, align 4, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TrackToConstraint_head_tail_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TrackToConstraint_head_tail_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 4, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TrackToConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !134
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TrackToConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !134
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TrackToConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTrackToConstraint, ptr %6, i64 0, i32 5
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TrackToConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTrackToConstraint, ptr %5, i64 0, i32 5
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TrackToConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTrackToConstraint, ptr %6, i64 0, i32 5
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TrackToConstraint_track_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTrackToConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !136
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TrackToConstraint_track_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTrackToConstraint, ptr %6, i64 0, i32 1
  store i32 %1, ptr %7, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TrackToConstraint_up_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTrackToConstraint, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !137
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TrackToConstraint_up_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTrackToConstraint, ptr %6, i64 0, i32 2
  store i32 %1, ptr %7, align 4, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TrackToConstraint_use_target_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTrackToConstraint, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !138
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TrackToConstraint_use_target_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bTrackToConstraint, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !138
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !138
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KinematicConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !139
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KinematicConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !139
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KinematicConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 5
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 5
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KinematicConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 5
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_iterations_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !141
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_iterations_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 10000)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !141
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KinematicConstraint_pole_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !142
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KinematicConstraint_pole_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 6
  store ptr %8, ptr %12, align 8, !tbaa !142
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KinematicConstraint_pole_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 7
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_pole_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 7
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KinematicConstraint_pole_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 7
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @KinematicConstraint_pole_angle_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 8
  %7 = load float, ptr %6, align 8, !tbaa !143
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_pole_angle_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0xC00921FB60000000
  %8 = fcmp ogt float %1, 0x400921FB60000000
  %9 = select i1 %8, float 0x400921FB60000000, float %1
  %10 = select i1 %7, float 0xC00921FB60000000, float %9
  %11 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 8
  store float %10, ptr %11, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @KinematicConstraint_weight_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 9
  %7 = load float, ptr %6, align 4, !tbaa !144
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0x3F847AE140000000
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0x3F847AE140000000, float %9
  %11 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 9
  store float %10, ptr %11, align 4, !tbaa !144
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @KinematicConstraint_orient_weight_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 10
  %7 = load float, ptr %6, align 8, !tbaa !145
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_orient_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0x3F847AE140000000
  %8 = fcmp ogt float %1, 1.000000e+00
  %9 = select i1 %8, float 1.000000e+00, float %1
  %10 = select i1 %7, float 0x3F847AE140000000, float %9
  %11 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 10
  store float %10, ptr %11, align 8, !tbaa !145
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_chain_count_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 4, !tbaa !146
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_chain_count_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 255)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 3
  store i16 %9, ptr %10, align 4, !tbaa !146
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_use_tail_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !147
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_use_tail_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !147
  %10 = and i16 %9, -2
  %11 = zext i1 %7 to i16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_reference_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !147
  %8 = and i16 %7, 16384
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_reference_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 2
  %8 = load i16, ptr %7, align 2, !tbaa !147
  %9 = and i16 %8, -16385
  %10 = trunc i32 %1 to i16
  %11 = or i16 %9, %10
  store i16 %11, ptr %7, align 2, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_use_location_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !147
  %8 = lshr i16 %7, 5
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_use_location_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !147
  %10 = and i16 %9, -33
  %11 = select i1 %7, i16 0, i16 32
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_lock_location_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !147
  %8 = and i16 %7, 256
  %9 = icmp eq i16 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_lock_location_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !147
  %10 = and i16 %9, -257
  %11 = select i1 %7, i16 256, i16 0
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_lock_location_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !147
  %8 = and i16 %7, 512
  %9 = icmp eq i16 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_lock_location_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !147
  %10 = and i16 %9, -513
  %11 = select i1 %7, i16 512, i16 0
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_lock_location_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !147
  %8 = and i16 %7, 1024
  %9 = icmp eq i16 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_lock_location_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !147
  %10 = and i16 %9, -1025
  %11 = select i1 %7, i16 1024, i16 0
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_use_rotation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !147
  %8 = lshr i16 %7, 1
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_use_rotation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !147
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 0, i16 2
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_lock_rotation_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !147
  %8 = and i16 %7, 2048
  %9 = icmp eq i16 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_lock_rotation_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !147
  %10 = and i16 %9, -2049
  %11 = select i1 %7, i16 2048, i16 0
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_lock_rotation_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !147
  %8 = and i16 %7, 4096
  %9 = icmp eq i16 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_lock_rotation_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !147
  %10 = and i16 %9, -4097
  %11 = select i1 %7, i16 4096, i16 0
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_lock_rotation_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !147
  %8 = and i16 %7, 8192
  %9 = icmp eq i16 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_lock_rotation_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !147
  %10 = and i16 %9, -8193
  %11 = select i1 %7, i16 8192, i16 0
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_use_stretch_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !147
  %8 = lshr i16 %7, 4
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_use_stretch_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !147
  %10 = and i16 %9, -17
  %11 = select i1 %7, i16 0, i16 16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_ik_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 8, !tbaa !148
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_ik_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  tail call fastcc void @rna_Constraint_ik_type_set(ptr noundef %0, i32 noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Constraint_ik_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !149 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 12
  %8 = load i16, ptr %7, align 8, !tbaa !148
  %9 = sext i16 %8 to i32
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = trunc i32 %1 to i16
  store i16 %12, ptr %7, align 8, !tbaa !148
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KinematicConstraint_limit_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 13
  %7 = load i16, ptr %6, align 2, !tbaa !150
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_limit_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 13
  store i16 %7, ptr %8, align 2, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @KinematicConstraint_distance_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bKinematicConstraint, ptr %5, i64 0, i32 14
  %7 = load float, ptr %6, align 4, !tbaa !151
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KinematicConstraint_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+02
  %9 = select i1 %8, float 1.000000e+02, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bKinematicConstraint, ptr %6, i64 0, i32 14
  store float %10, ptr %11, align 4, !tbaa !151
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyJointConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyJointConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !152
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyJointConstraint_child_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RigidBodyJointConstraint_child_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 1
  store ptr %8, ptr %12, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyJointConstraint_pivot_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !155
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_pivot_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_pivot_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !156
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_pivot_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 3
  store float %10, ptr %11, align 4, !tbaa !156
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_pivot_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 8, !tbaa !157
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_pivot_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_pivot_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 5
  %7 = load float, ptr %6, align 4, !tbaa !158
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_pivot_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 5
  store float %10, ptr %11, align 4, !tbaa !158
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_axis_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 6
  %7 = load float, ptr %6, align 8, !tbaa !159
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_axis_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0xC01921FB60000000
  %8 = fcmp ogt float %1, 0x401921FB60000000
  %9 = select i1 %8, float 0x401921FB60000000, float %1
  %10 = select i1 %7, float 0xC01921FB60000000, float %9
  %11 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 6
  store float %10, ptr %11, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_axis_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 7
  %7 = load float, ptr %6, align 4, !tbaa !160
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_axis_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0xC01921FB60000000
  %8 = fcmp ogt float %1, 0x401921FB60000000
  %9 = select i1 %8, float 0x401921FB60000000, float %1
  %10 = select i1 %7, float 0xC01921FB60000000, float %9
  %11 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 7
  store float %10, ptr %11, align 4, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_axis_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 8
  %7 = load float, ptr %6, align 8, !tbaa !161
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_axis_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0xC01921FB60000000
  %8 = fcmp ogt float %1, 0x401921FB60000000
  %9 = select i1 %8, float 0x401921FB60000000, float %1
  %10 = select i1 %7, float 0xC01921FB60000000, float %9
  %11 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 8
  store float %10, ptr %11, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyJointConstraint_use_linked_collision_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 8, !tbaa !162
  %8 = lshr i16 %7, 7
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_use_linked_collision_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 12
  %9 = load i16, ptr %8, align 8, !tbaa !162
  %10 = and i16 %9, -129
  %11 = select i1 %7, i16 0, i16 128
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyJointConstraint_show_pivot_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 8, !tbaa !162
  %8 = lshr i16 %7, 6
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_show_pivot_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 12
  %9 = load i16, ptr %8, align 8, !tbaa !162
  %10 = and i16 %9, -65
  %11 = select i1 %7, i16 0, i16 64
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_limit_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 9
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_limit_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 9
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_limit_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 9, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_limit_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 9, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_limit_min_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 9, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_limit_min_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 9, i64 2
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_limit_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 10
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_limit_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 10
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_limit_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 10, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_limit_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 10, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_limit_max_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 10, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_limit_max_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 10, i64 2
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_limit_angle_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 9, i64 3
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_limit_angle_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0xC01921FB60000000
  %8 = fcmp ogt float %1, 0x401921FB60000000
  %9 = select i1 %8, float 0x401921FB60000000, float %1
  %10 = select i1 %7, float 0xC01921FB60000000, float %9
  %11 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 9, i64 3
  store float %10, ptr %11, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_limit_angle_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 9, i64 4
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_limit_angle_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0xC01921FB60000000
  %8 = fcmp ogt float %1, 0x401921FB60000000
  %9 = select i1 %8, float 0x401921FB60000000, float %1
  %10 = select i1 %7, float 0xC01921FB60000000, float %9
  %11 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 9, i64 4
  store float %10, ptr %11, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_limit_angle_min_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 9, i64 5
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_limit_angle_min_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0xC01921FB60000000
  %8 = fcmp ogt float %1, 0x401921FB60000000
  %9 = select i1 %8, float 0x401921FB60000000, float %1
  %10 = select i1 %7, float 0xC01921FB60000000, float %9
  %11 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 9, i64 5
  store float %10, ptr %11, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_limit_angle_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 10, i64 3
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_limit_angle_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0xC01921FB60000000
  %8 = fcmp ogt float %1, 0x401921FB60000000
  %9 = select i1 %8, float 0x401921FB60000000, float %1
  %10 = select i1 %7, float 0xC01921FB60000000, float %9
  %11 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 10, i64 3
  store float %10, ptr %11, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_limit_angle_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 10, i64 4
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_limit_angle_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0xC01921FB60000000
  %8 = fcmp ogt float %1, 0x401921FB60000000
  %9 = select i1 %8, float 0x401921FB60000000, float %1
  %10 = select i1 %7, float 0xC01921FB60000000, float %9
  %11 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 10, i64 4
  store float %10, ptr %11, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RigidBodyJointConstraint_limit_angle_max_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 10, i64 5
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_limit_angle_max_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0xC01921FB60000000
  %8 = fcmp ogt float %1, 0x401921FB60000000
  %9 = select i1 %8, float 0x401921FB60000000, float %1
  %10 = select i1 %7, float 0xC01921FB60000000, float %9
  %11 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 10, i64 5
  store float %10, ptr %11, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyJointConstraint_use_limit_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 8, !tbaa !162
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_use_limit_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 12
  %9 = load i16, ptr %8, align 8, !tbaa !162
  %10 = and i16 %9, -2
  %11 = zext i1 %7 to i16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyJointConstraint_use_limit_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 8, !tbaa !162
  %8 = lshr i16 %7, 1
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_use_limit_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 12
  %9 = load i16, ptr %8, align 8, !tbaa !162
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 0, i16 2
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyJointConstraint_use_limit_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 8, !tbaa !162
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_use_limit_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 12
  %9 = load i16, ptr %8, align 8, !tbaa !162
  %10 = and i16 %9, -5
  %11 = select i1 %7, i16 0, i16 4
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyJointConstraint_use_angular_limit_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 8, !tbaa !162
  %8 = lshr i16 %7, 3
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_use_angular_limit_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 12
  %9 = load i16, ptr %8, align 8, !tbaa !162
  %10 = and i16 %9, -9
  %11 = select i1 %7, i16 0, i16 8
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyJointConstraint_use_angular_limit_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 8, !tbaa !162
  %8 = lshr i16 %7, 4
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_use_angular_limit_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 12
  %9 = load i16, ptr %8, align 8, !tbaa !162
  %10 = and i16 %9, -17
  %11 = select i1 %7, i16 0, i16 16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RigidBodyJointConstraint_use_angular_limit_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 8, !tbaa !162
  %8 = lshr i16 %7, 5
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RigidBodyJointConstraint_use_angular_limit_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %6, i64 0, i32 12
  %9 = load i16, ptr %8, align 8, !tbaa !162
  %10 = and i16 %9, -33
  %11 = select i1 %7, i16 0, i16 32
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 8, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClampToConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !163
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClampToConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ClampToConstraint_main_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bClampToConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !165
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClampToConstraint_main_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bClampToConstraint, ptr %6, i64 0, i32 1
  store i32 %1, ptr %7, align 8, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ClampToConstraint_use_cyclic_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bClampToConstraint, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !166
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClampToConstraint_use_cyclic_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bClampToConstraint, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !166
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !166
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitDistanceConstraint_head_tail_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitDistanceConstraint_head_tail_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 4, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LimitDistanceConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !167
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LimitDistanceConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !167
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LimitDistanceConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitDistanceConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %5, i64 0, i32 1
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @LimitDistanceConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitDistanceConstraint_distance_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 8, !tbaa !169
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitDistanceConstraint_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+02
  %9 = select i1 %8, float 1.000000e+02, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %6, i64 0, i32 2
  store float %10, ptr %11, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitDistanceConstraint_limit_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %5, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !170
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitDistanceConstraint_limit_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %6, i64 0, i32 5
  store i16 %7, ptr %8, align 2, !tbaa !170
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitDistanceConstraint_use_transform_limit_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !171
  %8 = lshr i16 %7, 1
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitDistanceConstraint_use_transform_limit_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bDistLimitConstraint, ptr %6, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !171
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 0, i16 2
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitScaleConstraint_use_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !172
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitScaleConstraint_use_min_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !172
  %10 = and i16 %9, -2
  %11 = zext i1 %7 to i16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitScaleConstraint_use_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !172
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitScaleConstraint_use_min_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !172
  %10 = and i16 %9, -5
  %11 = select i1 %7, i16 0, i16 4
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitScaleConstraint_use_min_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !172
  %8 = lshr i16 %7, 4
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitScaleConstraint_use_min_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !172
  %10 = and i16 %9, -17
  %11 = select i1 %7, i16 0, i16 16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitScaleConstraint_use_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !172
  %8 = lshr i16 %7, 1
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitScaleConstraint_use_max_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !172
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 0, i16 2
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitScaleConstraint_use_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !172
  %8 = lshr i16 %7, 3
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitScaleConstraint_use_max_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !172
  %10 = and i16 %9, -9
  %11 = select i1 %7, i16 0, i16 8
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitScaleConstraint_use_max_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !172
  %8 = lshr i16 %7, 5
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitScaleConstraint_use_max_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !172
  %10 = and i16 %9, -33
  %11 = select i1 %7, i16 0, i16 32
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitScaleConstraint_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load float, ptr %5, align 4, !tbaa !174
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitScaleConstraint_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  store float %10, ptr %6, align 4, !tbaa !174
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitScaleConstraint_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !175
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitScaleConstraint_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %6, i64 0, i32 2
  store float %10, ptr %11, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitScaleConstraint_min_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !176
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitScaleConstraint_min_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !176
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitScaleConstraint_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !177
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitScaleConstraint_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %6, i64 0, i32 1
  store float %10, ptr %11, align 4, !tbaa !177
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitScaleConstraint_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !178
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitScaleConstraint_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %6, i64 0, i32 3
  store float %10, ptr %11, align 4, !tbaa !178
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitScaleConstraint_max_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %5, i64 0, i32 5
  %7 = load float, ptr %6, align 4, !tbaa !179
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitScaleConstraint_max_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %6, i64 0, i32 5
  store float %10, ptr %11, align 4, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitScaleConstraint_use_transform_limit_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %5, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !180
  %8 = lshr i16 %7, 1
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitScaleConstraint_use_transform_limit_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSizeLimitConstraint, ptr %6, i64 0, i32 7
  %9 = load i16, ptr %8, align 2, !tbaa !180
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 0, i16 2
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !180
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitRotationConstraint_use_limit_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !181
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitRotationConstraint_use_limit_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !181
  %10 = and i16 %9, -2
  %11 = zext i1 %7 to i16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !181
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitRotationConstraint_use_limit_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !181
  %8 = lshr i16 %7, 1
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitRotationConstraint_use_limit_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !181
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 0, i16 2
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !181
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitRotationConstraint_use_limit_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !181
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitRotationConstraint_use_limit_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !181
  %10 = and i16 %9, -5
  %11 = select i1 %7, i16 0, i16 4
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !181
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitRotationConstraint_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load float, ptr %5, align 4, !tbaa !183
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitRotationConstraint_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  store float %10, ptr %6, align 4, !tbaa !183
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitRotationConstraint_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !184
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitRotationConstraint_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %6, i64 0, i32 2
  store float %10, ptr %11, align 4, !tbaa !184
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitRotationConstraint_min_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !185
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitRotationConstraint_min_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !185
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitRotationConstraint_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !186
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitRotationConstraint_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %6, i64 0, i32 1
  store float %10, ptr %11, align 4, !tbaa !186
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitRotationConstraint_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !187
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitRotationConstraint_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %6, i64 0, i32 3
  store float %10, ptr %11, align 4, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitRotationConstraint_max_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %5, i64 0, i32 5
  %7 = load float, ptr %6, align 4, !tbaa !188
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitRotationConstraint_max_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %6, i64 0, i32 5
  store float %10, ptr %11, align 4, !tbaa !188
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitRotationConstraint_use_transform_limit_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %5, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !189
  %8 = lshr i16 %7, 1
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitRotationConstraint_use_transform_limit_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %6, i64 0, i32 7
  %9 = load i16, ptr %8, align 2, !tbaa !189
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 0, i16 2
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitLocationConstraint_use_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !190
  %8 = and i16 %7, 1
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitLocationConstraint_use_min_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !190
  %10 = and i16 %9, -2
  %11 = zext i1 %7 to i16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitLocationConstraint_use_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !190
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitLocationConstraint_use_min_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !190
  %10 = and i16 %9, -5
  %11 = select i1 %7, i16 0, i16 4
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitLocationConstraint_use_min_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !190
  %8 = lshr i16 %7, 4
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitLocationConstraint_use_min_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !190
  %10 = and i16 %9, -17
  %11 = select i1 %7, i16 0, i16 16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitLocationConstraint_use_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !190
  %8 = lshr i16 %7, 1
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitLocationConstraint_use_max_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !190
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 0, i16 2
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitLocationConstraint_use_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !190
  %8 = lshr i16 %7, 3
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitLocationConstraint_use_max_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !190
  %10 = and i16 %9, -9
  %11 = select i1 %7, i16 0, i16 8
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitLocationConstraint_use_max_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !190
  %8 = lshr i16 %7, 5
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitLocationConstraint_use_max_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !190
  %10 = and i16 %9, -33
  %11 = select i1 %7, i16 0, i16 32
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitLocationConstraint_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load float, ptr %5, align 4, !tbaa !192
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitLocationConstraint_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  store float %10, ptr %6, align 4, !tbaa !192
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitLocationConstraint_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !193
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitLocationConstraint_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %6, i64 0, i32 2
  store float %10, ptr %11, align 4, !tbaa !193
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitLocationConstraint_min_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !194
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitLocationConstraint_min_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %6, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !194
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitLocationConstraint_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !195
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitLocationConstraint_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %6, i64 0, i32 1
  store float %10, ptr %11, align 4, !tbaa !195
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitLocationConstraint_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !196
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitLocationConstraint_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %6, i64 0, i32 3
  store float %10, ptr %11, align 4, !tbaa !196
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LimitLocationConstraint_max_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 5
  %7 = load float, ptr %6, align 4, !tbaa !197
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitLocationConstraint_max_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, -1.000000e+03
  %8 = fcmp ogt float %1, 1.000000e+03
  %9 = select i1 %8, float 1.000000e+03, float %1
  %10 = select i1 %7, float -1.000000e+03, float %9
  %11 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %6, i64 0, i32 5
  store float %10, ptr %11, align 4, !tbaa !197
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LimitLocationConstraint_use_transform_limit_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %5, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !198
  %8 = lshr i16 %7, 1
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LimitLocationConstraint_use_transform_limit_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %6, i64 0, i32 7
  %9 = load i16, ptr %8, align 2, !tbaa !198
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 0, i16 2
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !198
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TransformConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !199
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TransformConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !199
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TransformConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TransformConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 1
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TransformConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TransformConstraint_map_from_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !201
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_map_from_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 2
  store i16 %7, ptr %8, align 8, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TransformConstraint_map_to_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !202
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_map_to_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 3
  store i16 %7, ptr %8, align 2, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TransformConstraint_map_to_x_from_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 4
  %7 = load i8, ptr %6, align 4, !tbaa !203
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_map_to_x_from_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i8
  %8 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 4
  store i8 %7, ptr %8, align 4, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TransformConstraint_map_to_y_from_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 4, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !203
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_map_to_y_from_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i8
  %8 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 4, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TransformConstraint_map_to_z_from_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 4, i64 2
  %7 = load i8, ptr %6, align 2, !tbaa !203
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_map_to_z_from_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i8
  %8 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 4, i64 2
  store i8 %7, ptr %8, align 2, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TransformConstraint_use_motion_extrapolate_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 5
  %7 = load i8, ptr %6, align 1, !tbaa !204
  %8 = and i8 %7, 1
  %9 = zext nneg i8 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_use_motion_extrapolate_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 5
  %9 = load i8, ptr %8, align 1, !tbaa !204
  %10 = and i8 %9, -2
  %11 = zext i1 %7 to i8
  %12 = or disjoint i8 %10, %11
  store i8 %12, ptr %8, align 1, !tbaa !204
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 6
  %7 = load float, ptr %6, align 8, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 6
  store float %1, ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 6, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 6, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_min_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 6, i64 2
  %7 = load float, ptr %6, align 8, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_min_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 6, i64 2
  store float %1, ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 7
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 7
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 7, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 7, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_max_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 7, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_max_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 7, i64 2
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_min_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 8
  %7 = load float, ptr %6, align 8, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 8
  store float %1, ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_min_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 8, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 8, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_min_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 8, i64 2
  %7 = load float, ptr %6, align 8, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_min_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 8, i64 2
  store float %1, ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_max_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 9
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 9
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_max_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 9, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 9, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_max_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 9, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_max_z_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 9, i64 2
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_min_x_rot_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 10
  %7 = load float, ptr %6, align 8, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_min_x_rot_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 10
  store float %1, ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_min_y_rot_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 10, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_min_y_rot_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 10, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_min_z_rot_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 10, i64 2
  %7 = load float, ptr %6, align 8, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_min_z_rot_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 10, i64 2
  store float %1, ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_max_x_rot_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 11
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_max_x_rot_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 11
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_max_y_rot_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 11, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_max_y_rot_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 11, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_max_z_rot_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 11, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_max_z_rot_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 11, i64 2
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_min_x_rot_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 12
  %7 = load float, ptr %6, align 8, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_min_x_rot_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 12
  store float %1, ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_min_y_rot_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 12, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_min_y_rot_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 12, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_min_z_rot_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 12, i64 2
  %7 = load float, ptr %6, align 8, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_min_z_rot_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 12, i64 2
  store float %1, ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_max_x_rot_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 13
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_max_x_rot_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 13
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_max_y_rot_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 13, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_max_y_rot_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 13, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_max_z_rot_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 13, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_max_z_rot_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 13, i64 2
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_min_x_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 14
  %7 = load float, ptr %6, align 8, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_min_x_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 14
  store float %1, ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_min_y_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 14, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_min_y_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 14, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_min_z_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 14, i64 2
  %7 = load float, ptr %6, align 8, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_min_z_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 14, i64 2
  store float %1, ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_max_x_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 15
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_max_x_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 15
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_max_y_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 15, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_max_y_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 15, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_from_max_z_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 15, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_from_max_z_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 15, i64 2
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_min_x_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 16
  %7 = load float, ptr %6, align 8, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_min_x_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 16
  store float %1, ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_min_y_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 16, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_min_y_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 16, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_min_z_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 16, i64 2
  %7 = load float, ptr %6, align 8, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_min_z_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 16, i64 2
  store float %1, ptr %7, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_max_x_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 17
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_max_x_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 17
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_max_y_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 17, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_max_y_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 17, i64 1
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @TransformConstraint_to_max_z_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bTransformConstraint, ptr %5, i64 0, i32 17, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !66
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @TransformConstraint_to_max_z_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bTransformConstraint, ptr %6, i64 0, i32 17, i64 2
  store float %1, ptr %7, align 4, !tbaa !66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShrinkwrapConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !205
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShrinkwrapConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !205
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShrinkwrapConstraint_shrinkwrap_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 4, !tbaa !207
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapConstraint_shrinkwrap_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %6, i64 0, i32 2
  store i16 %7, ptr %8, align 4, !tbaa !207
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShrinkwrapConstraint_distance_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 8, !tbaa !208
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapConstraint_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+02
  %9 = select i1 %8, float 1.000000e+02, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %6, i64 0, i32 1
  store float %10, ptr %11, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShrinkwrapConstraint_project_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %5, i64 0, i32 3
  %7 = load i8, ptr %6, align 2, !tbaa !209
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapConstraint_project_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i8
  %8 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %6, i64 0, i32 3
  store i8 %7, ptr %8, align 2, !tbaa !209
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShrinkwrapConstraint_project_axis_space_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %5, i64 0, i32 4
  %7 = load i8, ptr %6, align 1, !tbaa !210
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapConstraint_project_axis_space_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i8
  %8 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %6, i64 0, i32 4
  store i8 %7, ptr %8, align 1, !tbaa !210
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShrinkwrapConstraint_project_limit_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %5, i64 0, i32 5
  %7 = load float, ptr %6, align 8, !tbaa !211
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapConstraint_project_limit_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = fcmp olt float %1, 0.000000e+00
  %8 = fcmp ogt float %1, 1.000000e+02
  %9 = select i1 %8, float 1.000000e+02, float %1
  %10 = select i1 %7, float 0.000000e+00, float %9
  %11 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %6, i64 0, i32 5
  store float %10, ptr %11, align 8, !tbaa !211
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DampedTrackConstraint_head_tail_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DampedTrackConstraint_head_tail_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 4, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DampedTrackConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !212
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DampedTrackConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !212
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DampedTrackConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DampedTrackConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %5, i64 0, i32 3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DampedTrackConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DampedTrackConstraint_track_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !214
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DampedTrackConstraint_track_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bDampTrackConstraint, ptr %6, i64 0, i32 1
  store i32 %1, ptr %7, align 8, !tbaa !214
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SplineIKConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !215
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SplineIKConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !215
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SplineIKConstraint_chain_count_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !217
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplineIKConstraint_chain_count_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 255)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %6, i64 0, i32 3
  store i16 %9, ptr %10, align 2, !tbaa !217
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplineIKConstraint_joint_bindings_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  tail call fastcc void @rna_SplineIKConstraint_joint_bindings_get(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_SplineIKConstraint_joint_bindings_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #9 !PGOFuncName !218 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !219
  %9 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %6, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !220
  %11 = sext i16 %10 to i64
  %12 = shl nsw i64 %11, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %8, i64 %12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplineIKConstraint_joint_bindings_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  tail call fastcc void @rna_SplineIKConstraint_joint_bindings_set(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_SplineIKConstraint_joint_bindings_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !221 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !219
  %9 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %6, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !220
  %11 = sext i16 %10 to i64
  %12 = shl nsw i64 %11, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %1, i64 %12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SplineIKConstraint_use_chain_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 4, !tbaa !222
  %8 = lshr i16 %7, 1
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplineIKConstraint_use_chain_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %6, i64 0, i32 4
  %9 = load i16, ptr %8, align 4, !tbaa !222
  %10 = and i16 %9, -3
  %11 = select i1 %7, i16 0, i16 2
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !222
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SplineIKConstraint_use_even_divisions_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 4, !tbaa !222
  %8 = lshr i16 %7, 3
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplineIKConstraint_use_even_divisions_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %6, i64 0, i32 4
  %9 = load i16, ptr %8, align 4, !tbaa !222
  %10 = and i16 %9, -9
  %11 = select i1 %7, i16 0, i16 8
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !222
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SplineIKConstraint_use_y_stretch_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 4, !tbaa !222
  %8 = and i16 %7, 4
  %9 = icmp eq i16 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplineIKConstraint_use_y_stretch_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %6, i64 0, i32 4
  %9 = load i16, ptr %8, align 4, !tbaa !222
  %10 = and i16 %9, -5
  %11 = select i1 %7, i16 4, i16 0
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !222
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SplineIKConstraint_use_curve_radius_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 4, !tbaa !222
  %8 = and i16 %7, 16
  %9 = icmp eq i16 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplineIKConstraint_use_curve_radius_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %6, i64 0, i32 4
  %9 = load i16, ptr %8, align 4, !tbaa !222
  %10 = and i16 %9, -17
  %11 = select i1 %7, i16 16, i16 0
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 4, !tbaa !222
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SplineIKConstraint_xz_scale_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %5, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !223
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SplineIKConstraint_xz_scale_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %6, i64 0, i32 5
  store i16 %7, ptr %8, align 2, !tbaa !223
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PivotConstraint_head_tail_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PivotConstraint_head_tail_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 4, !tbaa !83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PivotConstraint_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !224
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PivotConstraint_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %2
  store ptr %8, ptr %6, align 8, !tbaa !224
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PivotConstraint_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bPivotConstraint, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PivotConstraint_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bPivotConstraint, ptr %5, i64 0, i32 1
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PivotConstraint_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bPivotConstraint, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PivotConstraint_use_relative_location_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bPivotConstraint, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !226
  %8 = and i16 %7, 1
  %9 = xor i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PivotConstraint_use_relative_location_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bPivotConstraint, ptr %6, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !226
  %10 = and i16 %9, -2
  %11 = zext i1 %7 to i16
  %12 = or disjoint i16 %10, %11
  store i16 %12, ptr %8, align 2, !tbaa !226
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PivotConstraint_offset_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bPivotConstraint, ptr %6, i64 0, i32 2
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %7, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !66
  %12 = getelementptr inbounds float, ptr %1, i64 %9
  store float %11, ptr %12, align 4, !tbaa !66
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !227

15:                                               ; preds = %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PivotConstraint_offset_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bPivotConstraint, ptr %6, i64 0, i32 2
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %13, %8 ]
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !66
  %12 = getelementptr inbounds float, ptr %7, i64 %9
  store float %11, ptr %12, align 4, !tbaa !66
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, 3
  br i1 %14, label %15, label %8, !llvm.loop !228

15:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PivotConstraint_rotation_range_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bPivotConstraint, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 4, !tbaa !229
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PivotConstraint_rotation_range_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.bPivotConstraint, ptr %6, i64 0, i32 3
  store i16 %7, ptr %8, align 4, !tbaa !229
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FollowTrackConstraint_clip_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !230
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MovieClip, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FollowTrackConstraint_clip_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !230
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @id_us_plus(ptr noundef nonnull %12) #15
  br label %15

15:                                               ; preds = %14, %10
  store ptr %12, ptr %6, align 8, !tbaa !230
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FollowTrackConstraint_track_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FollowTrackConstraint_track_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %5, i64 0, i32 1
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FollowTrackConstraint_track_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FollowTrackConstraint_use_active_clip_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !232
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FollowTrackConstraint_use_active_clip_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !232
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FollowTrackConstraint_use_3d_position_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !232
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FollowTrackConstraint_use_3d_position_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !232
  %10 = and i32 %9, -3
  %11 = select i1 %7, i32 0, i32 2
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !232
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FollowTrackConstraint_object_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %6, i64 0, i32 4
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FollowTrackConstraint_object_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %5, i64 0, i32 4
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FollowTrackConstraint_object_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %6, i64 0, i32 4
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FollowTrackConstraint_camera_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !233
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FollowTrackConstraint_camera_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #9 {
  tail call fastcc void @rna_Constraint_followTrack_camera_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Constraint_followTrack_camera_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #9 !PGOFuncName !234 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !235
  %13 = icmp eq i16 %12, 11
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !48
  %16 = icmp eq ptr %8, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %2, %14
  %18 = phi ptr [ %8, %14 ], [ null, %2 ]
  %19 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %6, i64 0, i32 5
  store ptr %18, ptr %19, align 8, !tbaa !233
  br label %20

20:                                               ; preds = %17, %10, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FollowTrackConstraint_depth_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !240
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FollowTrackConstraint_depth_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #9 {
  tail call fastcc void @rna_Constraint_followTrack_depthObject_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Constraint_followTrack_depthObject_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #9 !PGOFuncName !241 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !235
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !48
  %16 = icmp eq ptr %8, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %2, %14
  %18 = phi ptr [ %8, %14 ], [ null, %2 ]
  %19 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %6, i64 0, i32 6
  store ptr %18, ptr %19, align 8, !tbaa !240
  br label %20

20:                                               ; preds = %17, %10, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FollowTrackConstraint_frame_method_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !242
  %8 = and i32 %7, 3
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FollowTrackConstraint_frame_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !242
  %9 = and i32 %8, -4
  %10 = or i32 %9, %1
  store i32 %10, ptr %7, align 4, !tbaa !242
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FollowTrackConstraint_use_undistorted_position_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !232
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FollowTrackConstraint_use_undistorted_position_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !232
  %10 = and i32 %9, -5
  %11 = select i1 %7, i32 0, i32 4
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !232
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CameraSolverConstraint_clip_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !243
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MovieClip, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CameraSolverConstraint_clip_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !243
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @id_us_plus(ptr noundef nonnull %12) #15
  br label %15

15:                                               ; preds = %14, %10
  store ptr %12, ptr %6, align 8, !tbaa !243
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CameraSolverConstraint_use_active_clip_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bCameraSolverConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !245
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CameraSolverConstraint_use_active_clip_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bCameraSolverConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !245
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !245
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectSolverConstraint_clip_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !246
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MovieClip, ptr noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectSolverConstraint_clip_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !246
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @id_us_plus(ptr noundef nonnull %12) #15
  br label %15

15:                                               ; preds = %14, %10
  store ptr %12, ptr %6, align 8, !tbaa !246
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectSolverConstraint_use_active_clip_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !248
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectSolverConstraint_use_active_clip_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !248
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 8, !tbaa !248
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectSolverConstraint_object_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %7, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ObjectSolverConstraint_object_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %5, i64 0, i32 3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #18
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectSolverConstraint_object_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %6, i64 0, i32 3
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ObjectSolverConstraint_camera_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !249
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %8) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ObjectSolverConstraint_camera_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #9 {
  tail call fastcc void @rna_Constraint_objectSolver_camera_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Constraint_objectSolver_camera_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #9 !PGOFuncName !250 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !235
  %13 = icmp eq i16 %12, 11
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !48
  %16 = icmp eq ptr %8, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %2, %14
  %18 = phi ptr [ %8, %14 ], [ null, %2 ]
  %19 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %6, i64 0, i32 5
  store ptr %18, ptr %19, align 8, !tbaa !249
  br label %20

20:                                               ; preds = %17, %10, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @SplineIKConstraint_joint_bindings_get_length(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #12 {
  %3 = tail call i32 @rna_SplineIKConstraint_joint_bindings_get_length(ptr noundef %0, ptr noundef %1) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @rna_SplineIKConstraint_joint_bindings_get_length(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 !PGOFuncName !251 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.bConstraint, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %6, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !220
  %11 = sext i16 %10 to i32
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi i32 [ %11, %8 ], [ 256, %2 ]
  store i32 %13, ptr %1, align 4, !tbaa !252
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal nonnull ptr @rna_Constraint_owner_space_itemf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #0 !PGOFuncName !253 {
  %5 = load ptr, ptr %1, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 106
  %9 = tail call i32 @BLI_findindex(ptr noundef nonnull %8, ptr noundef %7) #15
  %10 = icmp eq i32 %9, -1
  %11 = select i1 %10, ptr @owner_space_pchan_items, ptr @space_object_items
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @rna_Constraint_target_space_itemf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #0 !PGOFuncName !254 {
  %5 = alloca %struct.ListBase, align 8
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef %7) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %8, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !255
  %13 = icmp eq ptr %12, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %10
  %15 = call i32 %12(ptr noundef %7, ptr noundef nonnull %5) #15
  %16 = load ptr, ptr %5, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14, %27
  %19 = phi ptr [ %28, %27 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.bConstraintTarget, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !235
  %26 = icmp eq i16 %25, 25
  br i1 %26, label %30, label %27

27:                                               ; preds = %18, %23
  %28 = load ptr, ptr %19, align 8, !tbaa !35
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !257

30:                                               ; preds = %27, %23, %14
  %31 = phi i1 [ true, %14 ], [ false, %23 ], [ true, %27 ]
  %32 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %8, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !258
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  call void %33(ptr noundef %7, ptr noundef nonnull %5, i8 noundef zeroext 1) #15
  br label %36

36:                                               ; preds = %35, %30
  br i1 %31, label %37, label %38

37:                                               ; preds = %36, %10, %4
  br label %38

38:                                               ; preds = %36, %37
  %39 = phi ptr [ @space_object_items, %37 ], [ @target_space_pchan_items, %36 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Constraint_influence_update(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !259 {
  %4 = load ptr, ptr %2, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !260
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bPose, ptr %6, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !261
  %11 = or i16 %10, 6
  store i16 %11, ptr %9, align 8, !tbaa !261
  br label %12

12:                                               ; preds = %8, %3
  tail call void @rna_Constraint_update(ptr poison, ptr poison, ptr noundef nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef nonnull ptr @rna_ConstraintType_refine(ptr nocapture noundef readonly %0) #7 !PGOFuncName !263 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.bConstraint, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !49
  %6 = add i16 %5, -1
  %7 = icmp ult i16 %6, 28
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = zext nneg i16 %6 to i64
  %10 = getelementptr inbounds [28 x ptr], ptr @switch.table.rna_ConstraintType_refine, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %1, %8
  %13 = phi ptr [ %11, %8 ], [ @RNA_UnknownType, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_Constraint_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !264 {
  %2 = alloca ptr, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca [128 x i8], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %9 = call ptr @get_constraint_lb(ptr noundef %6, ptr noundef %8, ptr noundef nonnull %2) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 7
  %13 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.720, ptr noundef nonnull @__func__.rna_Constraint_path, ptr noundef nonnull %12, ptr noundef nonnull %13) #17
  br label %15

15:                                               ; preds = %11, %1
  %16 = load ptr, ptr %2, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #16
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 4
  %20 = call i64 @BLI_strescape(ptr noundef nonnull %3, ptr noundef nonnull %19, i64 noundef 128) #15
  %21 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 7
  %22 = call i64 @BLI_strescape(ptr noundef nonnull %4, ptr noundef nonnull %21, i64 noundef 128) #15
  %23 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.721, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #16
  br label %28

24:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #16
  %25 = getelementptr inbounds %struct.bConstraint, ptr %8, i64 0, i32 7
  %26 = call i64 @BLI_strescape(ptr noundef nonnull %5, ptr noundef nonnull %25, i64 noundef 128) #15
  %27 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.722, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #16
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi ptr [ %23, %18 ], [ %27, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Constraint_dependency_update(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !265 {
  %4 = load ptr, ptr %2, align 8, !tbaa !48
  tail call void @ED_object_constraint_dependency_update(ptr noundef %0, ptr noundef %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Constraint_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !266 {
  %4 = load ptr, ptr %2, align 8, !tbaa !48
  tail call void @ED_object_constraint_update(ptr noundef %4) #15
  ret void
}

; Function Attrs: optsize
declare i32 @rna_Curve_object_poll(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) #3

; Function Attrs: optsize
declare i32 @rna_Action_id_poll(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) #3

; Function Attrs: optsize
declare i32 @rna_Mesh_object_poll(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @rna_Constraint_cameraObject_poll(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #7 !PGOFuncName !267 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !235
  %9 = icmp eq i16 %8, 11
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !48
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6, %10, %2
  br label %14

14:                                               ; preds = %10, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %10 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @rna_Constraint_followTrack_depthObject_poll(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #7 !PGOFuncName !268 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !235
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !48
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6, %10, %2
  br label %14

14:                                               ; preds = %10, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %10 ]
  ret i32 %15
}

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_constraint_lb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_constraint_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_all_animdata_fix_paths_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_object_constraint_dependency_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_object_constraint_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }
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
!34 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 48}
!40 = !{!"CollectionPropertyIterator", !41, i64 0, !41, i64 24, !36, i64 48, !37, i64 56, !43, i64 96, !43, i64 100, !41, i64 104, !43, i64 128}
!41 = !{!"PointerRNA", !42, i64 0, !36, i64 8, !36, i64 16}
!42 = !{!"", !36, i64 0}
!43 = !{!"int", !37, i64 0}
!44 = !{!40, !43, i64 128}
!45 = !{!"rna_constraint_gen.c:Constraint_rna_properties_get"}
!46 = !{!41, !36, i64 16}
!47 = !{!"rna_constraint_gen.c:rna_Constraint_name_set"}
!48 = !{!41, !36, i64 0}
!49 = !{!50, !51, i64 24}
!50 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !51, i64 24, !51, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !51, i64 94, !52, i64 96, !52, i64 100, !36, i64 104, !52, i64 112, !52, i64 116}
!51 = !{!"short", !37, i64 0}
!52 = !{!"float", !37, i64 0}
!53 = !{!50, !37, i64 28}
!54 = !{!50, !37, i64 29}
!55 = !{!50, !51, i64 26}
!56 = !{!50, !52, i64 96}
!57 = !{!50, !52, i64 112}
!58 = !{!50, !52, i64 116}
!59 = !{!"rna_constraint_gen.c:ConstraintTarget_rna_properties_get"}
!60 = !{!61, !36, i64 16}
!61 = !{!"bConstraintTarget", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !51, i64 152, !51, i64 154, !51, i64 156, !51, i64 158}
!62 = !{!50, !36, i64 16}
!63 = !{!64, !36, i64 0}
!64 = !{!"bChildOfConstraint", !36, i64 0, !43, i64 8, !43, i64 12, !37, i64 16, !37, i64 80}
!65 = !{!64, !43, i64 8}
!66 = !{!52, !52, i64 0}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = distinct !{!69, !68}
!70 = !{!"rna_constraint_gen.c:PythonConstraint_targets_get"}
!71 = !{!72, !36, i64 16}
!72 = !{!"ListBaseIterator", !36, i64 0, !43, i64 8, !36, i64 16}
!73 = distinct !{!73, !68}
!74 = !{!75, !36, i64 0}
!75 = !{!"Link", !36, i64 0, !36, i64 8}
!76 = !{!72, !36, i64 0}
!77 = distinct !{!77, !68}
!78 = !{!79, !43, i64 20}
!79 = !{!"bPythonConstraint", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !80, i64 24, !36, i64 40, !37, i64 48}
!80 = !{!"ListBase", !36, i64 0, !36, i64 8}
!81 = !{!79, !36, i64 0}
!82 = !{!79, !43, i64 16}
!83 = !{!50, !52, i64 100}
!84 = !{!85, !36, i64 0}
!85 = !{!"bStretchToConstraint", !36, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !37, i64 40}
!86 = !{!85, !43, i64 12}
!87 = !{!85, !43, i64 16}
!88 = !{!85, !52, i64 20}
!89 = !{!85, !52, i64 24}
!90 = !{!85, !43, i64 8}
!91 = !{!85, !52, i64 28}
!92 = !{!85, !52, i64 32}
!93 = !{!85, !52, i64 36}
!94 = !{!95, !36, i64 0}
!95 = !{!"bFollowPathConstraint", !36, i64 0, !52, i64 8, !52, i64 12, !43, i64 16, !51, i64 20, !51, i64 22}
!96 = !{!95, !52, i64 8}
!97 = !{!95, !52, i64 12}
!98 = !{!95, !51, i64 20}
!99 = !{!95, !51, i64 22}
!100 = !{!95, !43, i64 16}
!101 = !{!102, !36, i64 0}
!102 = !{!"bLockTrackConstraint", !36, i64 0, !43, i64 8, !43, i64 12, !37, i64 16}
!103 = !{!102, !43, i64 8}
!104 = !{!102, !43, i64 12}
!105 = !{!106, !36, i64 0}
!106 = !{!"bActionConstraint", !36, i64 0, !51, i64 8, !51, i64 10, !43, i64 12, !43, i64 16, !52, i64 20, !52, i64 24, !43, i64 28, !36, i64 32, !37, i64 40}
!107 = !{!106, !51, i64 8}
!108 = !{!106, !36, i64 32}
!109 = !{!106, !43, i64 28}
!110 = !{!106, !43, i64 12}
!111 = !{!106, !43, i64 16}
!112 = !{!106, !52, i64 24}
!113 = !{!"rna_constraint_gen.c:rna_ActionConstraint_minmax_range"}
!114 = !{!106, !52, i64 20}
!115 = !{!116, !36, i64 0}
!116 = !{!"bSizeLikeConstraint", !36, i64 0, !43, i64 8, !43, i64 12, !37, i64 16}
!117 = !{!116, !43, i64 8}
!118 = !{!119, !43, i64 0}
!119 = !{!"bSameVolumeConstraint", !43, i64 0, !52, i64 4}
!120 = !{!119, !52, i64 4}
!121 = !{!122, !36, i64 0}
!122 = !{!"bLocateLikeConstraint", !36, i64 0, !43, i64 8, !43, i64 12, !37, i64 16}
!123 = !{!122, !43, i64 8}
!124 = !{!125, !36, i64 0}
!125 = !{!"bRotateLikeConstraint", !36, i64 0, !43, i64 8, !43, i64 12, !37, i64 16}
!126 = !{!125, !43, i64 8}
!127 = !{!128, !36, i64 0}
!128 = !{!"bTransLikeConstraint", !36, i64 0, !37, i64 8}
!129 = !{!130, !36, i64 0}
!130 = !{!"bMinMaxConstraint", !36, i64 0, !43, i64 8, !52, i64 12, !43, i64 16, !51, i64 20, !51, i64 22, !51, i64 24, !51, i64 26, !37, i64 28, !37, i64 40}
!131 = !{!130, !43, i64 8}
!132 = !{!130, !43, i64 16}
!133 = !{!130, !52, i64 12}
!134 = !{!135, !36, i64 0}
!135 = !{!"bTrackToConstraint", !36, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !37, i64 24}
!136 = !{!135, !43, i64 8}
!137 = !{!135, !43, i64 12}
!138 = !{!135, !43, i64 16}
!139 = !{!140, !36, i64 0}
!140 = !{!"bKinematicConstraint", !36, i64 0, !51, i64 8, !51, i64 10, !51, i64 12, !51, i64 14, !37, i64 16, !36, i64 80, !37, i64 88, !52, i64 152, !52, i64 156, !52, i64 160, !37, i64 164, !51, i64 176, !51, i64 178, !52, i64 180}
!141 = !{!140, !51, i64 8}
!142 = !{!140, !36, i64 80}
!143 = !{!140, !52, i64 152}
!144 = !{!140, !52, i64 156}
!145 = !{!140, !52, i64 160}
!146 = !{!140, !51, i64 12}
!147 = !{!140, !51, i64 10}
!148 = !{!140, !51, i64 176}
!149 = !{!"rna_constraint_gen.c:rna_Constraint_ik_type_set"}
!150 = !{!140, !51, i64 178}
!151 = !{!140, !52, i64 180}
!152 = !{!153, !36, i64 0}
!153 = !{!"bRigidBodyJointConstraint", !36, i64 0, !36, i64 8, !43, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !52, i64 40, !37, i64 44, !37, i64 68, !52, i64 92, !51, i64 96, !51, i64 98, !51, i64 100, !51, i64 102}
!154 = !{!153, !36, i64 8}
!155 = !{!153, !43, i64 16}
!156 = !{!153, !52, i64 20}
!157 = !{!153, !52, i64 24}
!158 = !{!153, !52, i64 28}
!159 = !{!153, !52, i64 32}
!160 = !{!153, !52, i64 36}
!161 = !{!153, !52, i64 40}
!162 = !{!153, !51, i64 96}
!163 = !{!164, !36, i64 0}
!164 = !{!"bClampToConstraint", !36, i64 0, !43, i64 8, !43, i64 12}
!165 = !{!164, !43, i64 8}
!166 = !{!164, !43, i64 12}
!167 = !{!168, !36, i64 0}
!168 = !{!"bDistLimitConstraint", !36, i64 0, !37, i64 8, !52, i64 72, !52, i64 76, !51, i64 80, !51, i64 82, !43, i64 84}
!169 = !{!168, !52, i64 72}
!170 = !{!168, !51, i64 82}
!171 = !{!168, !51, i64 80}
!172 = !{!173, !51, i64 24}
!173 = !{!"bSizeLimitConstraint", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !51, i64 24, !51, i64 26}
!174 = !{!173, !52, i64 0}
!175 = !{!173, !52, i64 8}
!176 = !{!173, !52, i64 16}
!177 = !{!173, !52, i64 4}
!178 = !{!173, !52, i64 12}
!179 = !{!173, !52, i64 20}
!180 = !{!173, !51, i64 26}
!181 = !{!182, !51, i64 24}
!182 = !{!"bRotLimitConstraint", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !51, i64 24, !51, i64 26}
!183 = !{!182, !52, i64 0}
!184 = !{!182, !52, i64 8}
!185 = !{!182, !52, i64 16}
!186 = !{!182, !52, i64 4}
!187 = !{!182, !52, i64 12}
!188 = !{!182, !52, i64 20}
!189 = !{!182, !51, i64 26}
!190 = !{!191, !51, i64 24}
!191 = !{!"bLocLimitConstraint", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !51, i64 24, !51, i64 26}
!192 = !{!191, !52, i64 0}
!193 = !{!191, !52, i64 8}
!194 = !{!191, !52, i64 16}
!195 = !{!191, !52, i64 4}
!196 = !{!191, !52, i64 12}
!197 = !{!191, !52, i64 20}
!198 = !{!191, !51, i64 26}
!199 = !{!200, !36, i64 0}
!200 = !{!"bTransformConstraint", !36, i64 0, !37, i64 8, !51, i64 72, !51, i64 74, !37, i64 76, !37, i64 79, !37, i64 80, !37, i64 92, !37, i64 104, !37, i64 116, !37, i64 128, !37, i64 140, !37, i64 152, !37, i64 164, !37, i64 176, !37, i64 188, !37, i64 200, !37, i64 212}
!201 = !{!200, !51, i64 72}
!202 = !{!200, !51, i64 74}
!203 = !{!37, !37, i64 0}
!204 = !{!200, !37, i64 79}
!205 = !{!206, !36, i64 0}
!206 = !{!"bShrinkwrapConstraint", !36, i64 0, !52, i64 8, !51, i64 12, !37, i64 14, !37, i64 15, !52, i64 16, !37, i64 20}
!207 = !{!206, !51, i64 12}
!208 = !{!206, !52, i64 8}
!209 = !{!206, !37, i64 14}
!210 = !{!206, !37, i64 15}
!211 = !{!206, !52, i64 16}
!212 = !{!213, !36, i64 0}
!213 = !{!"bDampTrackConstraint", !36, i64 0, !43, i64 8, !43, i64 12, !37, i64 16}
!214 = !{!213, !43, i64 8}
!215 = !{!216, !36, i64 0}
!216 = !{!"bSplineIKConstraint", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 18, !51, i64 20, !51, i64 22}
!217 = !{!216, !51, i64 18}
!218 = !{!"rna_constraint_gen.c:rna_SplineIKConstraint_joint_bindings_get"}
!219 = !{!216, !36, i64 8}
!220 = !{!216, !51, i64 16}
!221 = !{!"rna_constraint_gen.c:rna_SplineIKConstraint_joint_bindings_set"}
!222 = !{!216, !51, i64 20}
!223 = !{!216, !51, i64 22}
!224 = !{!225, !36, i64 0}
!225 = !{!"bPivotConstraint", !36, i64 0, !37, i64 8, !37, i64 72, !51, i64 84, !51, i64 86}
!226 = !{!225, !51, i64 86}
!227 = distinct !{!227, !68}
!228 = distinct !{!228, !68}
!229 = !{!225, !51, i64 84}
!230 = !{!231, !36, i64 0}
!231 = !{!"bFollowTrackConstraint", !36, i64 0, !37, i64 8, !43, i64 72, !43, i64 76, !37, i64 80, !36, i64 144, !36, i64 152}
!232 = !{!231, !43, i64 72}
!233 = !{!231, !36, i64 144}
!234 = !{!"rna_constraint_gen.c:rna_Constraint_followTrack_camera_set"}
!235 = !{!236, !51, i64 136}
!236 = !{!"Object", !237, i64 0, !36, i64 120, !36, i64 128, !51, i64 136, !51, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !238, i64 312, !36, i64 360, !80, i64 368, !80, i64 384, !80, i64 400, !80, i64 416, !43, i64 432, !43, i64 436, !36, i64 440, !36, i64 448, !43, i64 456, !43, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !52, i64 616, !52, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !43, i64 944, !51, i64 948, !51, i64 950, !51, i64 952, !51, i64 954, !51, i64 956, !51, i64 958, !51, i64 960, !51, i64 962, !51, i64 964, !37, i64 966, !37, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !52, i64 988, !52, i64 992, !52, i64 996, !52, i64 1000, !52, i64 1004, !52, i64 1008, !52, i64 1012, !52, i64 1016, !52, i64 1020, !52, i64 1024, !52, i64 1028, !52, i64 1032, !51, i64 1036, !51, i64 1038, !51, i64 1040, !37, i64 1042, !37, i64 1043, !51, i64 1044, !37, i64 1046, !37, i64 1047, !52, i64 1048, !52, i64 1052, !80, i64 1056, !80, i64 1072, !80, i64 1088, !80, i64 1104, !52, i64 1120, !51, i64 1124, !51, i64 1126, !37, i64 1128, !43, i64 1144, !43, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !51, i64 1162, !37, i64 1164, !80, i64 1176, !80, i64 1192, !80, i64 1208, !80, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !51, i64 1266, !52, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !239, i64 1304, !239, i64 1312, !43, i64 1320, !43, i64 1324, !80, i64 1328, !80, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !80, i64 1400, !36, i64 1416}
!237 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !51, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!238 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !51, i64 16, !51, i64 18, !51, i64 20, !51, i64 22, !51, i64 24, !51, i64 26, !51, i64 28, !51, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!239 = !{!"long", !37, i64 0}
!240 = !{!231, !36, i64 152}
!241 = !{!"rna_constraint_gen.c:rna_Constraint_followTrack_depthObject_set"}
!242 = !{!231, !43, i64 76}
!243 = !{!244, !36, i64 0}
!244 = !{!"bCameraSolverConstraint", !36, i64 0, !43, i64 8, !43, i64 12}
!245 = !{!244, !43, i64 8}
!246 = !{!247, !36, i64 0}
!247 = !{!"bObjectSolverConstraint", !36, i64 0, !43, i64 8, !43, i64 12, !37, i64 16, !37, i64 80, !36, i64 144}
!248 = !{!247, !43, i64 8}
!249 = !{!247, !36, i64 144}
!250 = !{!"rna_constraint_gen.c:rna_Constraint_objectSolver_camera_set"}
!251 = !{!"rna_constraint_gen.c:rna_SplineIKConstraint_joint_bindings_get_length"}
!252 = !{!43, !43, i64 0}
!253 = !{!"rna_constraint_gen.c:rna_Constraint_owner_space_itemf"}
!254 = !{!"rna_constraint_gen.c:rna_Constraint_target_space_itemf"}
!255 = !{!256, !36, i64 104}
!256 = !{!"bConstraintTypeInfo", !51, i64 0, !51, i64 2, !37, i64 4, !37, i64 36, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!257 = distinct !{!257, !68}
!258 = !{!256, !36, i64 112}
!259 = !{!"rna_constraint_gen.c:rna_Constraint_influence_update"}
!260 = !{!236, !36, i64 288}
!261 = !{!262, !51, i64 24}
!262 = !{!"bPose", !80, i64 0, !36, i64 16, !51, i64 24, !51, i64 26, !43, i64 28, !43, i64 32, !52, i64 36, !37, i64 40, !37, i64 52, !80, i64 64, !43, i64 80, !43, i64 84, !36, i64 88, !36, i64 96, !238, i64 104, !37, i64 152}
!263 = !{!"rna_constraint_gen.c:rna_ConstraintType_refine"}
!264 = !{!"rna_constraint_gen.c:rna_Constraint_path"}
!265 = !{!"rna_constraint_gen.c:rna_Constraint_dependency_update"}
!266 = !{!"rna_constraint_gen.c:rna_Constraint_update"}
!267 = !{!"rna_constraint_gen.c:rna_Constraint_cameraObject_poll"}
!268 = !{!"rna_constraint_gen.c:rna_Constraint_followTrack_depthObject_poll"}
