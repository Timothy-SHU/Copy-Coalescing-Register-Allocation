; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_pose_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_pose_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bItasc = type { i32, float, i16, i16, float, float, i16, i16, float, float, float, float }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%union.IDPropertyTemplate = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, i16, i8 }

@.str = private unnamed_addr constant [11 x i8] c"QUATERNION\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Quaternion (WXYZ)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"No Gimbal Lock (default)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"XYZ\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"XYZ Euler\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"XYZ Rotation Order (prone to Gimbal Lock)\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"XZY\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"XZY Euler\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"XZY Rotation Order (prone to Gimbal Lock)\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"YXZ\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"YXZ Euler\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"YXZ Rotation Order (prone to Gimbal Lock)\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"YZX\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"YZX Euler\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"YZX Rotation Order (prone to Gimbal Lock)\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ZXY\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"ZXY Euler\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"ZXY Rotation Order (prone to Gimbal Lock)\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ZYX\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"ZYX Euler\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"ZYX Rotation Order (prone to Gimbal Lock)\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"AXIS_ANGLE\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Axis Angle\00", align 1
@.str.23 = private unnamed_addr constant [77 x i8] c"Axis Angle (W+XYZ), defines a rotation around some axis defined by 3D-Vector\00", align 1
@posebone_rotmode_items = dso_local local_unnamed_addr global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 3, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 4, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 5, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 6, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.23 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Default Colors\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"THEME01\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"01 - Theme Color Set\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"THEME02\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"02 - Theme Color Set\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"THEME03\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"03 - Theme Color Set\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"THEME04\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"04 - Theme Color Set\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"THEME05\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"05 - Theme Color Set\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"THEME06\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"06 - Theme Color Set\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"THEME07\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"07 - Theme Color Set\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"THEME08\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"08 - Theme Color Set\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"THEME09\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"09 - Theme Color Set\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"THEME10\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"10 - Theme Color Set\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"THEME11\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"11 - Theme Color Set\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"THEME12\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"12 - Theme Color Set\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"THEME13\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"13 - Theme Color Set\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"THEME14\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"14 - Theme Color Set\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"THEME15\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"15 - Theme Color Set\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"THEME16\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"16 - Theme Color Set\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"THEME17\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"17 - Theme Color Set\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"THEME18\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"18 - Theme Color Set\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"THEME19\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"19 - Theme Color Set\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"THEME20\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"20 - Theme Color Set\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"CUSTOM\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"Custom Color Set\00", align 1
@color_sets_items = dso_local local_unnamed_addr global [23 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem { i32 1, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.26 }, %struct.EnumPropertyItem { i32 2, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.26 }, %struct.EnumPropertyItem { i32 3, ptr @.str.31, i32 0, ptr @.str.32, ptr @.str.26 }, %struct.EnumPropertyItem { i32 4, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.26 }, %struct.EnumPropertyItem { i32 5, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.26 }, %struct.EnumPropertyItem { i32 6, ptr @.str.37, i32 0, ptr @.str.38, ptr @.str.26 }, %struct.EnumPropertyItem { i32 7, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.26 }, %struct.EnumPropertyItem { i32 8, ptr @.str.41, i32 0, ptr @.str.42, ptr @.str.26 }, %struct.EnumPropertyItem { i32 9, ptr @.str.43, i32 0, ptr @.str.44, ptr @.str.26 }, %struct.EnumPropertyItem { i32 10, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.26 }, %struct.EnumPropertyItem { i32 11, ptr @.str.47, i32 0, ptr @.str.48, ptr @.str.26 }, %struct.EnumPropertyItem { i32 12, ptr @.str.49, i32 0, ptr @.str.50, ptr @.str.26 }, %struct.EnumPropertyItem { i32 13, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.26 }, %struct.EnumPropertyItem { i32 14, ptr @.str.53, i32 0, ptr @.str.54, ptr @.str.26 }, %struct.EnumPropertyItem { i32 15, ptr @.str.55, i32 0, ptr @.str.56, ptr @.str.26 }, %struct.EnumPropertyItem { i32 16, ptr @.str.57, i32 0, ptr @.str.58, ptr @.str.26 }, %struct.EnumPropertyItem { i32 17, ptr @.str.59, i32 0, ptr @.str.60, ptr @.str.26 }, %struct.EnumPropertyItem { i32 18, ptr @.str.61, i32 0, ptr @.str.62, ptr @.str.26 }, %struct.EnumPropertyItem { i32 19, ptr @.str.63, i32 0, ptr @.str.64, ptr @.str.26 }, %struct.EnumPropertyItem { i32 20, ptr @.str.65, i32 0, ptr @.str.66, ptr @.str.26 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.67, i32 0, ptr @.str.68, ptr @.str.26 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Pose_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Pose_rna_type, ptr null, i32 -1, ptr @.str.70, i32 128, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.73, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Pose_rna_properties_begin, ptr @Pose_rna_properties_next, ptr @Pose_rna_properties_end, ptr @Pose_rna_properties_get, ptr null, ptr null, ptr @Pose_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Pose_bones = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Pose_bone_groups, ptr @rna_Pose_rna_type, i32 -1, ptr @.str.77, i32 0, ptr @.str.78, ptr @.str.79, i32 0, ptr @.str.73, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Pose_bones_begin, ptr @Pose_bones_next, ptr @Pose_bones_end, ptr @Pose_bones_get, ptr null, ptr @Pose_bones_lookup_int, ptr @Pose_bones_lookup_string, ptr null, ptr @RNA_PoseBone }, align 8
@rna_Pose_bone_groups = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Pose_ik_solver, ptr @rna_Pose_bones, i32 -1, ptr @.str.80, i32 0, ptr @.str.81, ptr @.str.82, i32 0, ptr @.str.73, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_BoneGroups, ptr null }, ptr @Pose_bone_groups_begin, ptr @Pose_bone_groups_next, ptr @Pose_bone_groups_end, ptr @Pose_bone_groups_get, ptr null, ptr @Pose_bone_groups_lookup_int, ptr @Pose_bone_groups_lookup_string, ptr null, ptr @RNA_BoneGroup }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.69 = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@RNA_AnimViz = external global %struct.StructRNA, align 8
@rna_BoneGroups_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BoneGroups_rna_type, ptr null, i32 -1, ptr @.str.70, i32 128, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.73, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoneGroups_rna_properties_begin, ptr @BoneGroups_rna_properties_next, ptr @BoneGroups_rna_properties_end, ptr @BoneGroups_rna_properties_get, ptr null, ptr null, ptr @BoneGroups_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_PoseBone_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_rna_type, ptr null, i32 -1, ptr @.str.70, i32 128, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.73, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_rna_properties_begin, ptr @PoseBone_rna_properties_next, ptr @PoseBone_rna_properties_end, ptr @PoseBone_rna_properties_get, ptr null, ptr null, ptr @PoseBone_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_PoseBone_constraints = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_name, ptr @rna_PoseBone_rna_type, i32 -1, ptr @.str.112, i32 0, ptr @.str.113, ptr @.str.114, i32 0, ptr @.str.73, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_PoseBoneConstraints, ptr null }, ptr @PoseBone_constraints_begin, ptr @PoseBone_constraints_next, ptr @PoseBone_constraints_end, ptr @PoseBone_constraints_get, ptr null, ptr @PoseBone_constraints_lookup_int, ptr @PoseBone_constraints_lookup_string, ptr null, ptr @RNA_Constraint }, align 8
@RNA_MotionPath = external global %struct.StructRNA, align 8
@RNA_Bone = external global %struct.StructRNA, align 8
@RNA_PoseBone = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_PoseBoneConstraints, ptr @RNA_BoneGroups, ptr null, %struct.ListBase { ptr @rna_PoseBone_rna_properties, ptr @rna_PoseBone_lock_scale } }, ptr @.str.251, ptr null, ptr null, i32 4, ptr @.str.252, ptr @.str.253, ptr @.str.73, i32 174, ptr @rna_PoseBone_name, ptr @rna_PoseBone_rna_properties, ptr null, ptr null, ptr null, ptr @rna_PoseBone_path, ptr null, ptr null, ptr null, ptr @rna_PoseBone_idprops, %struct.ListBase { ptr @rna_PoseBone_evaluate_envelope_func, ptr @rna_PoseBone_evaluate_envelope_func } }, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@rna_PoseBoneConstraints_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBoneConstraints_rna_type, ptr null, i32 -1, ptr @.str.70, i32 128, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.73, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBoneConstraints_rna_properties_begin, ptr @PoseBoneConstraints_rna_properties_next, ptr @PoseBoneConstraints_rna_properties_end, ptr @PoseBoneConstraints_rna_properties_get, ptr null, ptr null, ptr @PoseBoneConstraints_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_IKParam_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_IKParam_rna_type, ptr null, i32 -1, ptr @.str.70, i32 128, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.73, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @IKParam_rna_properties_begin, ptr @IKParam_rna_properties_next, ptr @IKParam_rna_properties_end, ptr @IKParam_rna_properties_get, ptr null, ptr null, ptr @IKParam_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BoneGroup_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BoneGroup_rna_type, ptr null, i32 -1, ptr @.str.70, i32 128, ptr @.str.71, ptr @.str.72, i32 0, ptr @.str.73, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoneGroup_rna_properties_begin, ptr @BoneGroup_rna_properties_next, ptr @BoneGroup_rna_properties_end, ptr @BoneGroup_rna_properties_get, ptr null, ptr null, ptr @BoneGroup_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_ThemeBoneColorSet = external global %struct.StructRNA, align 8
@rna_Pose_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Pose_bones, ptr @rna_Pose_rna_properties, i32 -1, ptr @.str.74, i32 8912896, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Pose_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.70 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@.str.74 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@.str.77 = private unnamed_addr constant [6 x i8] c"bones\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"Pose Bones\00", align 1
@.str.79 = private unnamed_addr constant [39 x i8] c"Individual pose bones for the armature\00", align 1
@rna_Pose_ik_solver = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Pose_ik_param, ptr @rna_Pose_bone_groups, i32 -1, ptr @.str.83, i32 3, ptr @.str.84, ptr @.str.85, i32 0, ptr @.str.73, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_ik_solver_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Pose_ik_solver_get, ptr @Pose_ik_solver_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Pose_ik_solver_items, i32 2, i32 0 }, align 8
@.str.80 = private unnamed_addr constant [12 x i8] c"bone_groups\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"Bone Groups\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"Groups of the bones\00", align 1
@RNA_BoneGroups = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_PoseBone, ptr @RNA_Pose, ptr null, %struct.ListBase { ptr @rna_BoneGroups_rna_properties, ptr @rna_BoneGroups_active_index } }, ptr @.str.110, ptr null, ptr null, i32 4, ptr @.str.81, ptr @.str.111, ptr @.str.73, i32 17, ptr null, ptr @rna_BoneGroups_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_BoneGroups_new_func, ptr @rna_BoneGroups_remove_func } }, align 8
@RNA_BoneGroup = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GameProperty, ptr @RNA_Itasc, ptr null, %struct.ListBase { ptr @rna_BoneGroup_rna_properties, ptr @rna_BoneGroup_colors } }, ptr @.str.318, ptr null, ptr null, i32 4, ptr @.str.226, ptr @.str.319, ptr @.str.73, i32 200, ptr @rna_BoneGroup_name, ptr @rna_BoneGroup_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Pose_ik_param = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Pose_animation_visualization, ptr @rna_Pose_ik_solver, i32 -1, ptr @.str.86, i32 8388608, ptr @.str.87, ptr @.str.88, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Pose_ik_param_get, ptr null, ptr @rna_Pose_ikparam_typef, ptr null, ptr @RNA_IKParam }, align 8
@.str.83 = private unnamed_addr constant [10 x i8] c"ik_solver\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"IK Solver\00", align 1
@.str.85 = private unnamed_addr constant [36 x i8] c"Selection of IK solver for IK chain\00", align 1
@rna_Pose_ik_solver_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.322, i32 0, ptr @.str.323, ptr @.str.324 }, %struct.EnumPropertyItem { i32 1, ptr @.str.325, i32 0, ptr @.str.326, ptr @.str.327 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Pose_animation_visualization = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Pose_ik_param, i32 -1, ptr @.str.89, i32 8650752, ptr @.str.90, ptr @.str.91, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Pose_animation_visualization_get, ptr null, ptr null, ptr null, ptr @RNA_AnimViz }, align 8
@.str.86 = private unnamed_addr constant [9 x i8] c"ik_param\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"IK Param\00", align 1
@.str.88 = private unnamed_addr constant [25 x i8] c"Parameters for IK solver\00", align 1
@RNA_IKParam = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Itasc, ptr @RNA_PoseBoneConstraints, ptr null, %struct.ListBase { ptr @rna_IKParam_rna_properties, ptr @rna_IKParam_ik_solver } }, ptr @.str.267, ptr null, ptr null, i32 4, ptr @.str.267, ptr @.str.268, ptr @.str.73, i32 17, ptr null, ptr @rna_IKParam_rna_properties, ptr null, ptr null, ptr @rna_IKParam_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.89 = private unnamed_addr constant [24 x i8] c"animation_visualization\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"Animation Visualization\00", align 1
@.str.91 = private unnamed_addr constant [34 x i8] c"Animation data for this datablock\00", align 1
@RNA_ParticleSettingsTextureSlots = external global %struct.StructRNA, align 8
@.str.92 = private unnamed_addr constant [5 x i8] c"Pose\00", align 1
@.str.93 = private unnamed_addr constant [70 x i8] c"A collection of pose channels, including settings for animating bones\00", align 1
@RNA_Pose = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BoneGroups, ptr @RNA_ParticleSettingsTextureSlots, ptr null, %struct.ListBase { ptr @rna_Pose_rna_properties, ptr @rna_Pose_animation_visualization } }, ptr @.str.92, ptr null, ptr null, i32 4, ptr @.str.92, ptr @.str.93, ptr @.str.73, i32 17, ptr null, ptr @rna_Pose_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_BoneGroups_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BoneGroups_active, ptr @rna_BoneGroups_rna_properties, i32 -1, ptr @.str.74, i32 8912896, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoneGroups_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BoneGroups_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BoneGroups_active_index, ptr @rna_BoneGroups_rna_type, i32 -1, ptr @.str.94, i32 8388609, ptr @.str.95, ptr @.str.96, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoneGroups_active_get, ptr @BoneGroups_active_set, ptr null, ptr null, ptr @RNA_BoneGroup }, align 8
@rna_BoneGroups_active_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BoneGroups_active, i32 -1, ptr @.str.97, i32 3, ptr @.str.98, ptr @.str.99, i32 0, ptr @.str.73, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoneGroups_active_index_get, ptr @BoneGroups_active_index_set, ptr null, ptr null, ptr @rna_Pose_active_bone_group_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.94 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"Active Bone Group\00", align 1
@.str.96 = private unnamed_addr constant [32 x i8] c"Active bone group for this pose\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"active_index\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"Active Bone Group Index\00", align 1
@.str.99 = private unnamed_addr constant [34 x i8] c"Active index in bone groups array\00", align 1
@rna_BoneGroups_new_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BoneGroups_new_name, i32 -1, ptr @.str.103, i32 8388616, ptr @.str.26, ptr @.str.104, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_BoneGroup }, align 8
@.str.100 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.101 = private unnamed_addr constant [22 x i8] c"Name of the new group\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@rna_BoneGroups_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BoneGroups_new_group, ptr null, i32 -1, ptr @.str.100, i32 262145, ptr @.str.26, ptr @.str.101, i32 0, ptr @.str.73, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 64, ptr @.str.102 }, align 8
@.str.103 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"New bone group\00", align 1
@rna_BoneGroups_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_BoneGroups_new_func, ptr null, %struct.ListBase { ptr @rna_BoneGroups_remove_group, ptr @rna_BoneGroups_remove_group } }, ptr @.str.108, i32 2064, ptr @.str.109, ptr @BoneGroups_remove_call, ptr null }, align 8
@.str.105 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.106 = private unnamed_addr constant [35 x i8] c"Add a new bone group to the object\00", align 1
@rna_BoneGroups_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_BoneGroups_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_BoneGroups_new_name, ptr @rna_BoneGroups_new_group } }, ptr @.str.105, i32 2048, ptr @.str.106, ptr @BoneGroups_new_call, ptr @rna_BoneGroups_new_group }, align 8
@.str.107 = private unnamed_addr constant [19 x i8] c"Removed bone group\00", align 1
@rna_BoneGroups_remove_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.103, i32 264196, ptr @.str.26, ptr @.str.107, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_BoneGroup }, align 8
@.str.108 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.109 = private unnamed_addr constant [37 x i8] c"Remove a bone group from this object\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"BoneGroups\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"Collection of bone groups\00", align 1
@rna_PoseBone_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_constraints, ptr @rna_PoseBone_rna_properties, i32 -1, ptr @.str.74, i32 8912896, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_PoseBone_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_motion_path, ptr @rna_PoseBone_constraints, i32 -1, ptr @.str.100, i32 262145, ptr @.str.115, ptr @.str.26, i32 0, ptr @.str.73, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 0, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_name_get, ptr @PoseBone_name_length, ptr @PoseBone_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.26 }, align 8
@.str.112 = private unnamed_addr constant [12 x i8] c"constraints\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"Constraints\00", align 1
@.str.114 = private unnamed_addr constant [41 x i8] c"Constraints that act on this PoseChannel\00", align 1
@RNA_PoseBoneConstraints = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_IKParam, ptr @RNA_PoseBone, ptr null, %struct.ListBase { ptr @rna_PoseBoneConstraints_rna_properties, ptr @rna_PoseBoneConstraints_active } }, ptr @.str.263, ptr null, ptr null, i32 4, ptr @.str.264, ptr @.str.265, ptr @.str.73, i32 17, ptr null, ptr @rna_PoseBoneConstraints_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_PoseBoneConstraints_new_func, ptr @rna_PoseBoneConstraints_remove_func } }, align 8
@RNA_Constraint = external global %struct.StructRNA, align 8
@rna_PoseBone_motion_path = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_bone, ptr @rna_PoseBone_name, i32 -1, ptr @.str.116, i32 8388608, ptr @.str.117, ptr @.str.118, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_motion_path_get, ptr null, ptr null, ptr null, ptr @RNA_MotionPath }, align 8
@.str.115 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@rna_PoseBone_bone = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_parent, ptr @rna_PoseBone_motion_path, i32 -1, ptr @.str.119, i32 8650752, ptr @.str.120, ptr @.str.121, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_bone_get, ptr null, ptr null, ptr null, ptr @RNA_Bone }, align 8
@.str.116 = private unnamed_addr constant [12 x i8] c"motion_path\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"Motion Path\00", align 1
@.str.118 = private unnamed_addr constant [29 x i8] c"Motion Path for this element\00", align 1
@rna_PoseBone_parent = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_child, ptr @rna_PoseBone_bone, i32 -1, ptr @.str.122, i32 8388608, ptr @.str.123, ptr @.str.124, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_parent_get, ptr null, ptr null, ptr null, ptr @RNA_PoseBone }, align 8
@.str.119 = private unnamed_addr constant [5 x i8] c"bone\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@.str.121 = private unnamed_addr constant [35 x i8] c"Bone associated with this PoseBone\00", align 1
@rna_PoseBone_child = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_location, ptr @rna_PoseBone_parent, i32 -1, ptr @.str.125, i32 8388608, ptr @.str.126, ptr @.str.127, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_child_get, ptr null, ptr null, ptr null, ptr @RNA_PoseBone }, align 8
@.str.122 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@.str.124 = private unnamed_addr constant [25 x i8] c"Parent of this pose bone\00", align 1
@rna_PoseBone_location = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_scale, ptr @rna_PoseBone_child, i32 -1, ptr @.str.128, i32 8195, ptr @.str.129, ptr @.str.26, i32 0, ptr @.str.73, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Pose_IK_update, i32 85196800, ptr null, ptr @rna_PoseChannel_location_editable, i32 200, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @PoseBone_location_get, ptr @PoseBone_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_PoseBone_location_default }, align 8
@.str.125 = private unnamed_addr constant [6 x i8] c"child\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"Child\00", align 1
@.str.127 = private unnamed_addr constant [24 x i8] c"Child of this pose bone\00", align 1
@rna_PoseBone_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_rotation_quaternion, ptr @rna_PoseBone_location, i32 -1, ptr @.str.130, i32 67117059, ptr @.str.131, ptr @.str.26, i32 0, ptr @.str.73, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Pose_IK_update, i32 85196800, ptr null, ptr @rna_PoseChannel_scale_editable, i32 212, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @PoseBone_scale_get, ptr @PoseBone_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_PoseBone_scale_default }, align 8
@.str.128 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@rna_PoseBone_location_default = internal global [3 x float] zeroinitializer, align 4
@rna_PoseBone_rotation_quaternion = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_rotation_axis_angle, ptr @rna_PoseBone_scale, i32 -1, ptr @.str.132, i32 8195, ptr @.str.133, ptr @.str.134, i32 0, ptr @.str.73, i32 2, i32 27, ptr null, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 4, ptr @rna_Pose_update, i32 85196800, ptr null, ptr @rna_PoseChannel_rotation_4d_editable, i32 236, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @PoseBone_rotation_quaternion_get, ptr @PoseBone_rotation_quaternion_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_PoseBone_rotation_quaternion_default }, align 8
@.str.130 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"Scale\00", align 1
@rna_PoseBone_scale_default = internal global [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@rna_PoseBone_rotation_axis_angle = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_rotation_euler, ptr @rna_PoseBone_rotation_quaternion, i32 -1, ptr @.str.135, i32 3, ptr @.str.136, ptr @.str.137, i32 0, ptr @.str.73, i32 2, i32 28, ptr null, i32 1, [3 x i32] [i32 4, i32 0, i32 0], i32 4, ptr @rna_Pose_update, i32 85196800, ptr null, ptr @rna_PoseChannel_rotation_4d_editable, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @PoseBone_rotation_axis_angle_get, ptr @PoseBone_rotation_axis_angle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_PoseBone_rotation_axis_angle_default }, align 8
@.str.132 = private unnamed_addr constant [20 x i8] c"rotation_quaternion\00", align 1
@.str.133 = private unnamed_addr constant [20 x i8] c"Quaternion Rotation\00", align 1
@.str.134 = private unnamed_addr constant [24 x i8] c"Rotation in Quaternions\00", align 1
@rna_PoseBone_rotation_quaternion_default = internal global [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 16
@rna_PoseBone_rotation_euler = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_rotation_mode, ptr @rna_PoseBone_rotation_axis_angle, i32 -1, ptr @.str.138, i32 8195, ptr @.str.139, ptr @.str.140, i32 0, ptr @.str.73, i32 2, i32 327706, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Pose_update, i32 85196800, ptr null, ptr @rna_PoseChannel_rotation_euler_editable, i32 224, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @PoseBone_rotation_euler_get, ptr @PoseBone_rotation_euler_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_PoseBone_rotation_euler_default }, align 8
@.str.135 = private unnamed_addr constant [20 x i8] c"rotation_axis_angle\00", align 1
@.str.136 = private unnamed_addr constant [20 x i8] c"Axis-Angle Rotation\00", align 1
@.str.137 = private unnamed_addr constant [57 x i8] c"Angle of Rotation for Axis-Angle rotation representation\00", align 1
@rna_PoseBone_rotation_axis_angle_default = internal global [4 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], align 16
@rna_PoseBone_rotation_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_matrix_channel, ptr @rna_PoseBone_rotation_euler, i32 -1, ptr @.str.141, i32 3, ptr @.str.142, ptr @.str.26, i32 0, ptr @.str.73, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_rotation_mode_get, ptr @PoseBone_rotation_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_PoseBone_rotation_mode_items, i32 8, i32 0 }, align 8
@.str.138 = private unnamed_addr constant [15 x i8] c"rotation_euler\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"Euler Rotation\00", align 1
@.str.140 = private unnamed_addr constant [19 x i8] c"Rotation in Eulers\00", align 1
@rna_PoseBone_rotation_euler_default = internal global [3 x float] zeroinitializer, align 4
@rna_PoseBone_matrix_channel = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_matrix_basis, ptr @rna_PoseBone_rotation_mode, i32 -1, ptr @.str.143, i32 8194, ptr @.str.144, ptr @.str.145, i32 0, ptr @.str.73, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 0, ptr null, ptr null, i32 272, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @PoseBone_matrix_channel_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_PoseBone_matrix_channel_default }, align 8
@.str.141 = private unnamed_addr constant [14 x i8] c"rotation_mode\00", align 1
@.str.142 = private unnamed_addr constant [14 x i8] c"Rotation Mode\00", align 1
@rna_PoseBone_rotation_mode_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 3, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 4, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 5, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 6, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.23 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_PoseBone_matrix_basis = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_matrix, ptr @rna_PoseBone_matrix_channel, i32 -1, ptr @.str.146, i32 1, ptr @.str.147, ptr @.str.148, i32 0, ptr @.str.73, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr @rna_Pose_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @PoseBone_matrix_basis_get, ptr @PoseBone_matrix_basis_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_PoseBone_matrix_basis_default }, align 8
@.str.143 = private unnamed_addr constant [15 x i8] c"matrix_channel\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"Channel Matrix\00", align 1
@.str.145 = private unnamed_addr constant [31 x i8] c"4x4 matrix, before constraints\00", align 1
@rna_PoseBone_matrix_channel_default = internal global [16 x float] zeroinitializer, align 16
@rna_PoseBone_matrix = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_head, ptr @rna_PoseBone_matrix_basis, i32 -1, ptr @.str.149, i32 3, ptr @.str.150, ptr @.str.151, i32 0, ptr @.str.73, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr @rna_Pose_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @PoseBone_matrix_get, ptr @PoseBone_matrix_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_PoseBone_matrix_default }, align 8
@.str.146 = private unnamed_addr constant [13 x i8] c"matrix_basis\00", align 1
@.str.147 = private unnamed_addr constant [13 x i8] c"Basis Matrix\00", align 1
@.str.148 = private unnamed_addr constant [87 x i8] c"Alternative access to location/scale/rotation relative to the parent and own rest bone\00", align 1
@rna_PoseBone_matrix_basis_default = internal global [16 x float] zeroinitializer, align 16
@rna_PoseBone_head = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_tail, ptr @rna_PoseBone_matrix, i32 -1, ptr @.str.152, i32 8194, ptr @.str.153, ptr @.str.154, i32 0, ptr @.str.73, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 464, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @PoseBone_head_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_PoseBone_head_default }, align 8
@.str.149 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"Pose Matrix\00", align 1
@.str.151 = private unnamed_addr constant [74 x i8] c"Final 4x4 matrix after constraints and drivers are applied (object space)\00", align 1
@rna_PoseBone_matrix_default = internal global [16 x float] zeroinitializer, align 16
@rna_PoseBone_tail = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_is_in_ik_chain, ptr @rna_PoseBone_head, i32 -1, ptr @.str.155, i32 8194, ptr @.str.156, ptr @.str.157, i32 0, ptr @.str.73, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 476, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @PoseBone_tail_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_PoseBone_tail_default }, align 8
@.str.152 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"Pose Head Position\00", align 1
@.str.154 = private unnamed_addr constant [39 x i8] c"Location of head of the channel's bone\00", align 1
@rna_PoseBone_head_default = internal global [3 x float] zeroinitializer, align 4
@rna_PoseBone_is_in_ik_chain = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_lock_ik_x, ptr @rna_PoseBone_tail, i32 -1, ptr @.str.158, i32 2, ptr @.str.159, ptr @.str.160, i32 0, ptr @.str.73, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_is_in_ik_chain_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.155 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"Pose Tail Position\00", align 1
@.str.157 = private unnamed_addr constant [39 x i8] c"Location of tail of the channel's bone\00", align 1
@rna_PoseBone_tail_default = internal global [3 x float] zeroinitializer, align 4
@rna_PoseBone_lock_ik_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_lock_ik_y, ptr @rna_PoseBone_is_in_ik_chain, i32 -1, ptr @.str.161, i32 4099, ptr @.str.162, ptr @.str.163, i32 40, ptr @.str.73, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_lock_ik_x_get, ptr @PoseBone_lock_ik_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.158 = private unnamed_addr constant [15 x i8] c"is_in_ik_chain\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"Has IK\00", align 1
@.str.160 = private unnamed_addr constant [23 x i8] c"Is part of an IK chain\00", align 1
@rna_PoseBone_lock_ik_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_lock_ik_z, ptr @rna_PoseBone_lock_ik_x, i32 -1, ptr @.str.164, i32 4099, ptr @.str.165, ptr @.str.166, i32 40, ptr @.str.73, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_lock_ik_y_get, ptr @PoseBone_lock_ik_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.161 = private unnamed_addr constant [10 x i8] c"lock_ik_x\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"IK X Lock\00", align 1
@.str.163 = private unnamed_addr constant [36 x i8] c"Disallow movement around the X axis\00", align 1
@rna_PoseBone_lock_ik_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_use_ik_limit_x, ptr @rna_PoseBone_lock_ik_y, i32 -1, ptr @.str.167, i32 4099, ptr @.str.168, ptr @.str.169, i32 40, ptr @.str.73, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_lock_ik_z_get, ptr @PoseBone_lock_ik_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.164 = private unnamed_addr constant [10 x i8] c"lock_ik_y\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"IK Y Lock\00", align 1
@.str.166 = private unnamed_addr constant [36 x i8] c"Disallow movement around the Y axis\00", align 1
@rna_PoseBone_use_ik_limit_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_use_ik_limit_y, ptr @rna_PoseBone_lock_ik_z, i32 -1, ptr @.str.170, i32 3, ptr @.str.171, ptr @.str.172, i32 0, ptr @.str.73, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_use_ik_limit_x_get, ptr @PoseBone_use_ik_limit_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.167 = private unnamed_addr constant [10 x i8] c"lock_ik_z\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"IK Z Lock\00", align 1
@.str.169 = private unnamed_addr constant [36 x i8] c"Disallow movement around the Z axis\00", align 1
@rna_PoseBone_use_ik_limit_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_use_ik_limit_z, ptr @rna_PoseBone_use_ik_limit_x, i32 -1, ptr @.str.173, i32 3, ptr @.str.174, ptr @.str.175, i32 0, ptr @.str.73, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_use_ik_limit_y_get, ptr @PoseBone_use_ik_limit_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.170 = private unnamed_addr constant [15 x i8] c"use_ik_limit_x\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"IK X Limit\00", align 1
@.str.172 = private unnamed_addr constant [33 x i8] c"Limit movement around the X axis\00", align 1
@rna_PoseBone_use_ik_limit_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_use_ik_rotation_control, ptr @rna_PoseBone_use_ik_limit_y, i32 -1, ptr @.str.176, i32 3, ptr @.str.177, ptr @.str.178, i32 0, ptr @.str.73, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_use_ik_limit_z_get, ptr @PoseBone_use_ik_limit_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.173 = private unnamed_addr constant [15 x i8] c"use_ik_limit_y\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"IK Y Limit\00", align 1
@.str.175 = private unnamed_addr constant [33 x i8] c"Limit movement around the Y axis\00", align 1
@rna_PoseBone_use_ik_rotation_control = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_use_ik_linear_control, ptr @rna_PoseBone_use_ik_limit_z, i32 -1, ptr @.str.179, i32 3, ptr @.str.180, ptr @.str.181, i32 0, ptr @.str.73, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_use_ik_rotation_control_get, ptr @PoseBone_use_ik_rotation_control_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.176 = private unnamed_addr constant [15 x i8] c"use_ik_limit_z\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"IK Z Limit\00", align 1
@.str.178 = private unnamed_addr constant [33 x i8] c"Limit movement around the Z axis\00", align 1
@rna_PoseBone_use_ik_linear_control = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_ik_min_x, ptr @rna_PoseBone_use_ik_rotation_control, i32 -1, ptr @.str.182, i32 3, ptr @.str.180, ptr @.str.183, i32 0, ptr @.str.73, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_use_ik_linear_control_get, ptr @PoseBone_use_ik_linear_control_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.179 = private unnamed_addr constant [24 x i8] c"use_ik_rotation_control\00", align 1
@.str.180 = private unnamed_addr constant [15 x i8] c"IK rot control\00", align 1
@.str.181 = private unnamed_addr constant [40 x i8] c"Apply channel rotation as IK constraint\00", align 1
@rna_PoseBone_ik_min_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_ik_max_x, ptr @rna_PoseBone_use_ik_linear_control, i32 -1, ptr @.str.184, i32 8195, ptr @.str.185, ptr @.str.186, i32 0, ptr @.str.73, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 488, i32 4, ptr null, ptr null }, ptr @PoseBone_ik_min_x_get, ptr @PoseBone_ik_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0.000000e+00, float 0xC00921FB60000000, float 0.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.182 = private unnamed_addr constant [22 x i8] c"use_ik_linear_control\00", align 1
@.str.183 = private unnamed_addr constant [61 x i8] c"Apply channel size as IK constraint if stretching is enabled\00", align 1
@rna_PoseBone_ik_max_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_ik_min_y, ptr @rna_PoseBone_ik_min_x, i32 -1, ptr @.str.187, i32 8195, ptr @.str.188, ptr @.str.189, i32 0, ptr @.str.73, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 500, i32 4, ptr null, ptr null }, ptr @PoseBone_ik_max_x_get, ptr @PoseBone_ik_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x400921FB60000000, float 0.000000e+00, float 0x400921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.184 = private unnamed_addr constant [9 x i8] c"ik_min_x\00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"IK X Minimum\00", align 1
@.str.186 = private unnamed_addr constant [28 x i8] c"Minimum angles for IK Limit\00", align 1
@rna_PoseBone_ik_min_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_ik_max_y, ptr @rna_PoseBone_ik_max_x, i32 -1, ptr @.str.190, i32 8195, ptr @.str.191, ptr @.str.186, i32 0, ptr @.str.73, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 492, i32 4, ptr null, ptr null }, ptr @PoseBone_ik_min_y_get, ptr @PoseBone_ik_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0.000000e+00, float 0xC00921FB60000000, float 0.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.187 = private unnamed_addr constant [9 x i8] c"ik_max_x\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"IK X Maximum\00", align 1
@.str.189 = private unnamed_addr constant [28 x i8] c"Maximum angles for IK Limit\00", align 1
@rna_PoseBone_ik_max_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_ik_min_z, ptr @rna_PoseBone_ik_min_y, i32 -1, ptr @.str.192, i32 8195, ptr @.str.193, ptr @.str.189, i32 0, ptr @.str.73, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 504, i32 4, ptr null, ptr null }, ptr @PoseBone_ik_max_y_get, ptr @PoseBone_ik_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x400921FB60000000, float 0.000000e+00, float 0x400921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.190 = private unnamed_addr constant [9 x i8] c"ik_min_y\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"IK Y Minimum\00", align 1
@rna_PoseBone_ik_min_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_ik_max_z, ptr @rna_PoseBone_ik_max_y, i32 -1, ptr @.str.194, i32 8195, ptr @.str.195, ptr @.str.186, i32 0, ptr @.str.73, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 496, i32 4, ptr null, ptr null }, ptr @PoseBone_ik_min_z_get, ptr @PoseBone_ik_min_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0.000000e+00, float 0xC00921FB60000000, float 0.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.192 = private unnamed_addr constant [9 x i8] c"ik_max_y\00", align 1
@.str.193 = private unnamed_addr constant [13 x i8] c"IK Y Maximum\00", align 1
@rna_PoseBone_ik_max_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_ik_stiffness_x, ptr @rna_PoseBone_ik_min_z, i32 -1, ptr @.str.196, i32 8195, ptr @.str.197, ptr @.str.189, i32 0, ptr @.str.73, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 508, i32 4, ptr null, ptr null }, ptr @PoseBone_ik_max_z_get, ptr @PoseBone_ik_max_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x400921FB60000000, float 0.000000e+00, float 0x400921FB60000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.194 = private unnamed_addr constant [9 x i8] c"ik_min_z\00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"IK Z Minimum\00", align 1
@rna_PoseBone_ik_stiffness_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_ik_stiffness_y, ptr @rna_PoseBone_ik_max_z, i32 -1, ptr @.str.198, i32 8195, ptr @.str.199, ptr @.str.200, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 512, i32 4, ptr null, ptr null }, ptr @PoseBone_ik_stiffness_x_get, ptr @PoseBone_ik_stiffness_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x3FEFAE1480000000, float 0.000000e+00, float 0x3FEFAE1480000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.196 = private unnamed_addr constant [9 x i8] c"ik_max_z\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"IK Z Maximum\00", align 1
@rna_PoseBone_ik_stiffness_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_ik_stiffness_z, ptr @rna_PoseBone_ik_stiffness_x, i32 -1, ptr @.str.201, i32 8195, ptr @.str.202, ptr @.str.203, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 516, i32 4, ptr null, ptr null }, ptr @PoseBone_ik_stiffness_y_get, ptr @PoseBone_ik_stiffness_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x3FEFAE1480000000, float 0.000000e+00, float 0x3FEFAE1480000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.198 = private unnamed_addr constant [15 x i8] c"ik_stiffness_x\00", align 1
@.str.199 = private unnamed_addr constant [15 x i8] c"IK X Stiffness\00", align 1
@.str.200 = private unnamed_addr constant [31 x i8] c"IK stiffness around the X axis\00", align 1
@rna_PoseBone_ik_stiffness_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_ik_stretch, ptr @rna_PoseBone_ik_stiffness_y, i32 -1, ptr @.str.204, i32 8195, ptr @.str.205, ptr @.str.206, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 520, i32 4, ptr null, ptr null }, ptr @PoseBone_ik_stiffness_z_get, ptr @PoseBone_ik_stiffness_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x3FEFAE1480000000, float 0.000000e+00, float 0x3FEFAE1480000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.201 = private unnamed_addr constant [15 x i8] c"ik_stiffness_y\00", align 1
@.str.202 = private unnamed_addr constant [15 x i8] c"IK Y Stiffness\00", align 1
@.str.203 = private unnamed_addr constant [31 x i8] c"IK stiffness around the Y axis\00", align 1
@rna_PoseBone_ik_stretch = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_ik_rotation_weight, ptr @rna_PoseBone_ik_stiffness_z, i32 -1, ptr @.str.207, i32 8195, ptr @.str.208, ptr @.str.209, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_IK_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 524, i32 4, ptr null, ptr null }, ptr @PoseBone_ik_stretch_get, ptr @PoseBone_ik_stretch_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.204 = private unnamed_addr constant [15 x i8] c"ik_stiffness_z\00", align 1
@.str.205 = private unnamed_addr constant [15 x i8] c"IK Z Stiffness\00", align 1
@.str.206 = private unnamed_addr constant [31 x i8] c"IK stiffness around the Z axis\00", align 1
@rna_PoseBone_ik_rotation_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_ik_linear_weight, ptr @rna_PoseBone_ik_stretch, i32 -1, ptr @.str.210, i32 8195, ptr @.str.211, ptr @.str.212, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 528, i32 4, ptr null, ptr null }, ptr @PoseBone_ik_rotation_weight_get, ptr @PoseBone_ik_rotation_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.207 = private unnamed_addr constant [11 x i8] c"ik_stretch\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"IK Stretch\00", align 1
@.str.209 = private unnamed_addr constant [33 x i8] c"Allow scaling of the bone for IK\00", align 1
@rna_PoseBone_ik_linear_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_custom_shape, ptr @rna_PoseBone_ik_rotation_weight, i32 -1, ptr @.str.213, i32 8195, ptr @.str.214, ptr @.str.215, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 532, i32 4, ptr null, ptr null }, ptr @PoseBone_ik_linear_weight_get, ptr @PoseBone_ik_linear_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.210 = private unnamed_addr constant [19 x i8] c"ik_rotation_weight\00", align 1
@.str.211 = private unnamed_addr constant [14 x i8] c"IK Rot Weight\00", align 1
@.str.212 = private unnamed_addr constant [37 x i8] c"Weight of rotation constraint for IK\00", align 1
@rna_PoseBone_custom_shape = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_custom_shape_transform, ptr @rna_PoseBone_ik_linear_weight, i32 -1, ptr @.str.216, i32 8388609, ptr @.str.217, ptr @.str.218, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_custom_shape_get, ptr @PoseBone_custom_shape_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.213 = private unnamed_addr constant [17 x i8] c"ik_linear_weight\00", align 1
@.str.214 = private unnamed_addr constant [14 x i8] c"IK Lin Weight\00", align 1
@.str.215 = private unnamed_addr constant [34 x i8] c"Weight of scale constraint for IK\00", align 1
@rna_PoseBone_custom_shape_transform = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_bone_group_index, ptr @rna_PoseBone_custom_shape, i32 -1, ptr @.str.219, i32 8388609, ptr @.str.220, ptr @.str.221, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_custom_shape_transform_get, ptr @PoseBone_custom_shape_transform_set, ptr null, ptr null, ptr @RNA_PoseBone }, align 8
@.str.216 = private unnamed_addr constant [13 x i8] c"custom_shape\00", align 1
@.str.217 = private unnamed_addr constant [14 x i8] c"Custom Object\00", align 1
@.str.218 = private unnamed_addr constant [51 x i8] c"Object that defines custom draw type for this bone\00", align 1
@rna_PoseBone_bone_group_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_bone_group, ptr @rna_PoseBone_custom_shape_transform, i32 -1, ptr @.str.222, i32 1, ptr @.str.223, ptr @.str.224, i32 0, ptr @.str.73, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_bone_group_index_get, ptr @PoseBone_bone_group_index_set, ptr null, ptr null, ptr @rna_PoseChannel_bone_group_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -32768, i32 32767, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.219 = private unnamed_addr constant [23 x i8] c"custom_shape_transform\00", align 1
@.str.220 = private unnamed_addr constant [23 x i8] c"Custom Shape Transform\00", align 1
@.str.221 = private unnamed_addr constant [61 x i8] c"Bone that defines the display transform of this custom shape\00", align 1
@rna_PoseBone_bone_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_lock_location, ptr @rna_PoseBone_bone_group_index, i32 -1, ptr @.str.225, i32 8388609, ptr @.str.226, ptr @.str.227, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_bone_group_get, ptr @PoseBone_bone_group_set, ptr null, ptr null, ptr @RNA_BoneGroup }, align 8
@.str.222 = private unnamed_addr constant [17 x i8] c"bone_group_index\00", align 1
@.str.223 = private unnamed_addr constant [17 x i8] c"Bone Group Index\00", align 1
@.str.224 = private unnamed_addr constant [53 x i8] c"Bone Group this pose channel belongs to (0=no group)\00", align 1
@rna_PoseBone_lock_location = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_lock_rotation, ptr @rna_PoseBone_bone_group, i32 -1, ptr @.str.228, i32 4099, ptr @.str.229, ptr @.str.230, i32 40, ptr @.str.73, i32 0, i32 0, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Pose_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @PoseBone_lock_location_get, ptr @PoseBone_lock_location_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_PoseBone_lock_location_default }, align 8
@.str.225 = private unnamed_addr constant [11 x i8] c"bone_group\00", align 1
@.str.226 = private unnamed_addr constant [11 x i8] c"Bone Group\00", align 1
@.str.227 = private unnamed_addr constant [40 x i8] c"Bone Group this pose channel belongs to\00", align 1
@rna_PoseBone_lock_rotation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_lock_rotation_w, ptr @rna_PoseBone_lock_location, i32 -1, ptr @.str.231, i32 4099, ptr @.str.232, ptr @.str.233, i32 40, ptr @.str.73, i32 0, i32 0, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Pose_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @PoseBone_lock_rotation_get, ptr @PoseBone_lock_rotation_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_PoseBone_lock_rotation_default }, align 8
@.str.228 = private unnamed_addr constant [14 x i8] c"lock_location\00", align 1
@.str.229 = private unnamed_addr constant [14 x i8] c"Lock Location\00", align 1
@.str.230 = private unnamed_addr constant [42 x i8] c"Lock editing of location in the interface\00", align 1
@rna_PoseBone_lock_location_default = internal global [3 x i32] zeroinitializer, align 4
@rna_PoseBone_lock_rotation_w = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_lock_rotations_4d, ptr @rna_PoseBone_lock_rotation, i32 -1, ptr @.str.234, i32 4099, ptr @.str.235, ptr @.str.236, i32 40, ptr @.str.73, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_lock_rotation_w_get, ptr @PoseBone_lock_rotation_w_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.231 = private unnamed_addr constant [14 x i8] c"lock_rotation\00", align 1
@.str.232 = private unnamed_addr constant [14 x i8] c"Lock Rotation\00", align 1
@.str.233 = private unnamed_addr constant [42 x i8] c"Lock editing of rotation in the interface\00", align 1
@rna_PoseBone_lock_rotation_default = internal global [3 x i32] zeroinitializer, align 4
@rna_PoseBone_lock_rotations_4d = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_lock_scale, ptr @rna_PoseBone_lock_rotation_w, i32 -1, ptr @.str.237, i32 3, ptr @.str.238, ptr @.str.239, i32 0, ptr @.str.73, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBone_lock_rotations_4d_get, ptr @PoseBone_lock_rotations_4d_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.234 = private unnamed_addr constant [16 x i8] c"lock_rotation_w\00", align 1
@.str.235 = private unnamed_addr constant [25 x i8] c"Lock Rotation (4D Angle)\00", align 1
@.str.236 = private unnamed_addr constant [79 x i8] c"Lock editing of 'angle' component of four-component rotations in the interface\00", align 1
@rna_PoseBone_lock_scale = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_PoseBone_lock_rotations_4d, i32 -1, ptr @.str.240, i32 4099, ptr @.str.241, ptr @.str.242, i32 40, ptr @.str.73, i32 0, i32 0, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Pose_update, i32 85196800, ptr @rna_PoseChannel_proxy_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @PoseBone_lock_scale_get, ptr @PoseBone_lock_scale_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_PoseBone_lock_scale_default }, align 8
@.str.237 = private unnamed_addr constant [18 x i8] c"lock_rotations_4d\00", align 1
@.str.238 = private unnamed_addr constant [20 x i8] c"Lock Rotations (4D)\00", align 1
@.str.239 = private unnamed_addr constant [78 x i8] c"Lock editing of four component rotations by components (instead of as Eulers)\00", align 1
@.str.240 = private unnamed_addr constant [11 x i8] c"lock_scale\00", align 1
@.str.241 = private unnamed_addr constant [11 x i8] c"Lock Scale\00", align 1
@.str.242 = private unnamed_addr constant [39 x i8] c"Lock editing of scale in the interface\00", align 1
@rna_PoseBone_lock_scale_default = internal global [3 x i32] zeroinitializer, align 4
@rna_PoseBone_evaluate_envelope_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_PoseBone_evaluate_envelope_point, i32 -1, ptr @.str.246, i32 11, ptr @.str.247, ptr @.str.248, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.243 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.244 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.245 = private unnamed_addr constant [33 x i8] c"Position in 3d space to evaluate\00", align 1
@rna_PoseBone_evaluate_envelope_point_default = internal global [3 x float] zeroinitializer, align 4
@rna_PoseBone_evaluate_envelope_point = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBone_evaluate_envelope_factor, ptr null, i32 -1, ptr @.str.243, i32 7, ptr @.str.244, ptr @.str.245, i32 0, ptr @.str.73, i32 2, i32 65565, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_PoseBone_evaluate_envelope_point_default }, align 8
@.str.246 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.247 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.248 = private unnamed_addr constant [16 x i8] c"Envelope factor\00", align 1
@.str.249 = private unnamed_addr constant [18 x i8] c"evaluate_envelope\00", align 1
@.str.250 = private unnamed_addr constant [39 x i8] c"Calculate bone envelope at given point\00", align 1
@rna_PoseBone_evaluate_envelope_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_PoseBone_evaluate_envelope_point, ptr @rna_PoseBone_evaluate_envelope_factor } }, ptr @.str.249, i32 0, ptr @.str.250, ptr @PoseBone_evaluate_envelope_call, ptr @rna_PoseBone_evaluate_envelope_factor }, align 8
@.str.251 = private unnamed_addr constant [9 x i8] c"PoseBone\00", align 1
@.str.252 = private unnamed_addr constant [10 x i8] c"Pose Bone\00", align 1
@.str.253 = private unnamed_addr constant [48 x i8] c"Channel defining pose data for a bone in a Pose\00", align 1
@rna_PoseBoneConstraints_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBoneConstraints_active, ptr @rna_PoseBoneConstraints_rna_properties, i32 -1, ptr @.str.74, i32 8912896, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBoneConstraints_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_PoseBoneConstraints_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_PoseBoneConstraints_rna_type, i32 -1, ptr @.str.94, i32 8388609, ptr @.str.254, ptr @.str.255, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PoseBoneConstraints_active_get, ptr @PoseBoneConstraints_active_set, ptr null, ptr null, ptr @RNA_Constraint }, align 8
@.str.254 = private unnamed_addr constant [18 x i8] c"Active Constraint\00", align 1
@.str.255 = private unnamed_addr constant [30 x i8] c"Active PoseChannel constraint\00", align 1
@rna_PoseBoneConstraints_new_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_PoseBoneConstraints_new_constraint, i32 -1, ptr @.str.258, i32 7, ptr @.str.26, ptr @.str.259, i32 0, ptr @.str.73, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_PoseBoneConstraints_new_type_items, i32 31, i32 1 }, align 8
@.str.256 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str.257 = private unnamed_addr constant [15 x i8] c"New constraint\00", align 1
@rna_PoseBoneConstraints_new_constraint = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PoseBoneConstraints_new_type, ptr null, i32 -1, ptr @.str.256, i32 8388616, ptr @.str.26, ptr @.str.257, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Constraint }, align 8
@.str.258 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.259 = private unnamed_addr constant [23 x i8] c"Constraint type to add\00", align 1
@rna_PoseBoneConstraints_new_type_items = internal global [32 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.26, i32 0, ptr @.str.330, ptr @.str.26 }, %struct.EnumPropertyItem { i32 27, ptr @.str.331, i32 459, ptr @.str.332, ptr @.str.26 }, %struct.EnumPropertyItem { i32 26, ptr @.str.333, i32 459, ptr @.str.334, ptr @.str.26 }, %struct.EnumPropertyItem { i32 28, ptr @.str.335, i32 459, ptr @.str.336, ptr @.str.26 }, %struct.EnumPropertyItem { i32 0, ptr @.str.26, i32 0, ptr @.str.337, ptr @.str.26 }, %struct.EnumPropertyItem { i32 9, ptr @.str.338, i32 459, ptr @.str.339, ptr @.str.340 }, %struct.EnumPropertyItem { i32 8, ptr @.str.341, i32 459, ptr @.str.342, ptr @.str.343 }, %struct.EnumPropertyItem { i32 10, ptr @.str.344, i32 459, ptr @.str.345, ptr @.str.346 }, %struct.EnumPropertyItem { i32 23, ptr @.str.347, i32 459, ptr @.str.348, ptr @.str.349 }, %struct.EnumPropertyItem { i32 14, ptr @.str.350, i32 459, ptr @.str.351, ptr @.str.352 }, %struct.EnumPropertyItem { i32 6, ptr @.str.353, i32 459, ptr @.str.354, ptr @.str.355 }, %struct.EnumPropertyItem { i32 5, ptr @.str.356, i32 459, ptr @.str.357, ptr @.str.358 }, %struct.EnumPropertyItem { i32 7, ptr @.str.359, i32 459, ptr @.str.360, ptr @.str.361 }, %struct.EnumPropertyItem { i32 24, ptr @.str.362, i32 459, ptr @.str.363, ptr @.str.364 }, %struct.EnumPropertyItem { i32 19, ptr @.str.365, i32 459, ptr @.str.366, ptr @.str.367 }, %struct.EnumPropertyItem { i32 0, ptr @.str.26, i32 0, ptr @.str.368, ptr @.str.26 }, %struct.EnumPropertyItem { i32 18, ptr @.str.369, i32 459, ptr @.str.370, ptr @.str.371 }, %struct.EnumPropertyItem { i32 21, ptr @.str.372, i32 459, ptr @.str.373, ptr @.str.374 }, %struct.EnumPropertyItem { i32 3, ptr @.str.375, i32 459, ptr @.str.376, ptr @.str.377 }, %struct.EnumPropertyItem { i32 13, ptr @.str.378, i32 459, ptr @.str.379, ptr @.str.380 }, %struct.EnumPropertyItem { i32 22, ptr @.str.381, i32 459, ptr @.str.382, ptr @.str.383 }, %struct.EnumPropertyItem { i32 15, ptr @.str.384, i32 459, ptr @.str.385, ptr @.str.386 }, %struct.EnumPropertyItem { i32 2, ptr @.str.387, i32 459, ptr @.str.388, ptr @.str.389 }, %struct.EnumPropertyItem { i32 0, ptr @.str.26, i32 0, ptr @.str.390, ptr @.str.26 }, %struct.EnumPropertyItem { i32 12, ptr @.str.391, i32 459, ptr @.str.392, ptr @.str.393 }, %struct.EnumPropertyItem { i32 1, ptr @.str.394, i32 459, ptr @.str.395, ptr @.str.396 }, %struct.EnumPropertyItem { i32 16, ptr @.str.397, i32 459, ptr @.str.398, ptr @.str.399 }, %struct.EnumPropertyItem { i32 4, ptr @.str.400, i32 459, ptr @.str.401, ptr @.str.402 }, %struct.EnumPropertyItem { i32 25, ptr @.str.403, i32 459, ptr @.str.404, ptr @.str.405 }, %struct.EnumPropertyItem { i32 17, ptr @.str.406, i32 459, ptr @.str.407, ptr @.str.408 }, %struct.EnumPropertyItem { i32 20, ptr @.str.409, i32 459, ptr @.str.410, ptr @.str.411 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_PoseBoneConstraints_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_PoseBoneConstraints_new_func, ptr null, %struct.ListBase { ptr @rna_PoseBoneConstraints_remove_constraint, ptr @rna_PoseBoneConstraints_remove_constraint } }, ptr @.str.108, i32 2064, ptr @.str.262, ptr @PoseBoneConstraints_remove_call, ptr null }, align 8
@.str.260 = private unnamed_addr constant [32 x i8] c"Add a constraint to this object\00", align 1
@rna_PoseBoneConstraints_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_PoseBoneConstraints_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_PoseBoneConstraints_new_constraint, ptr @rna_PoseBoneConstraints_new_type } }, ptr @.str.105, i32 0, ptr @.str.260, ptr @PoseBoneConstraints_new_call, ptr @rna_PoseBoneConstraints_new_constraint }, align 8
@.str.261 = private unnamed_addr constant [19 x i8] c"Removed constraint\00", align 1
@rna_PoseBoneConstraints_remove_constraint = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.256, i32 264196, ptr @.str.26, ptr @.str.261, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Constraint }, align 8
@.str.262 = private unnamed_addr constant [37 x i8] c"Remove a constraint from this object\00", align 1
@.str.263 = private unnamed_addr constant [20 x i8] c"PoseBoneConstraints\00", align 1
@.str.264 = private unnamed_addr constant [21 x i8] c"PoseBone Constraints\00", align 1
@.str.265 = private unnamed_addr constant [36 x i8] c"Collection of pose bone constraints\00", align 1
@rna_IKParam_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_IKParam_ik_solver, ptr @rna_IKParam_rna_properties, i32 -1, ptr @.str.74, i32 8912896, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @IKParam_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_IKParam_ik_solver = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_IKParam_rna_type, i32 -1, ptr @.str.83, i32 2, ptr @.str.84, ptr @.str.266, i32 0, ptr @.str.73, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @IKParam_ik_solver_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_IKParam_ik_solver_items, i32 2, i32 0 }, align 8
@.str.266 = private unnamed_addr constant [49 x i8] c"IK solver for which these parameters are defined\00", align 1
@rna_IKParam_ik_solver_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.322, i32 0, ptr @.str.323, ptr @.str.324 }, %struct.EnumPropertyItem { i32 1, ptr @.str.325, i32 0, ptr @.str.326, ptr @.str.327 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_Itasc = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BoneGroup, ptr @RNA_IKParam, ptr null, %struct.ListBase { ptr @rna_Itasc_precision, ptr @rna_Itasc_damping_epsilon } }, ptr @.str.307, ptr null, ptr null, i32 4, ptr @.str.308, ptr @.str.309, ptr @.str.73, i32 17, ptr null, ptr @rna_IKParam_rna_properties, ptr @RNA_IKParam, ptr null, ptr @rna_IKParam_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.267 = private unnamed_addr constant [8 x i8] c"IKParam\00", align 1
@.str.268 = private unnamed_addr constant [35 x i8] c"Base type for IK solver parameters\00", align 1
@rna_Itasc_iterations = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Itasc_step_count, ptr @rna_Itasc_precision, i32 -1, ptr @.str.272, i32 8195, ptr @.str.273, ptr @.str.274, i32 0, ptr @.str.73, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Itasc_update, i32 85196800, ptr null, ptr null, i32 8, i32 1, ptr null, ptr null }, ptr @Itasc_iterations_get, ptr @Itasc_iterations_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1000, i32 0, i32 1000, i32 1, i32 0, ptr null }, align 8
@.str.269 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.270 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.271 = private unnamed_addr constant [48 x i8] c"Precision of convergence in case of reiteration\00", align 1
@rna_Itasc_precision = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Itasc_iterations, ptr null, i32 -1, ptr @.str.269, i32 8195, ptr @.str.270, ptr @.str.271, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Itasc_update, i32 85196800, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @Itasc_precision_get, ptr @Itasc_precision_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x3FB99999A0000000, float 0.000000e+00, float 0x3FB99999A0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_Itasc_step_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Itasc_mode, ptr @rna_Itasc_iterations, i32 -1, ptr @.str.275, i32 8195, ptr @.str.276, ptr @.str.277, i32 0, ptr @.str.73, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Itasc_update, i32 85196800, ptr null, ptr null, i32 10, i32 1, ptr null, ptr null }, ptr @Itasc_step_count_get, ptr @Itasc_step_count_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 50, i32 1, i32 50, i32 1, i32 0, ptr null }, align 8
@.str.272 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.273 = private unnamed_addr constant [11 x i8] c"Iterations\00", align 1
@.str.274 = private unnamed_addr constant [68 x i8] c"Maximum number of iterations for convergence in case of reiteration\00", align 1
@rna_Itasc_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Itasc_reiteration_method, ptr @rna_Itasc_step_count, i32 -1, ptr @.str.278, i32 3, ptr @.str.279, ptr null, i32 0, ptr @.str.73, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Itasc_update_rebuild, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Itasc_mode_get, ptr @Itasc_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Itasc_mode_items, i32 2, i32 0 }, align 8
@.str.275 = private unnamed_addr constant [11 x i8] c"step_count\00", align 1
@.str.276 = private unnamed_addr constant [10 x i8] c"Num steps\00", align 1
@.str.277 = private unnamed_addr constant [47 x i8] c"Divide the frame interval into this many steps\00", align 1
@rna_Itasc_reiteration_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Itasc_use_auto_step, ptr @rna_Itasc_mode, i32 -1, ptr @.str.280, i32 3, ptr @.str.281, ptr @.str.282, i32 0, ptr @.str.73, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Itasc_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Itasc_reiteration_method_get, ptr @Itasc_reiteration_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Itasc_reiteration_method_items, i32 3, i32 0 }, align 8
@.str.278 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.279 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@rna_Itasc_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.412, i32 0, ptr @.str.413, ptr @.str.414 }, %struct.EnumPropertyItem { i32 8, ptr @.str.415, i32 0, ptr @.str.416, ptr @.str.417 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Itasc_use_auto_step = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Itasc_step_min, ptr @rna_Itasc_reiteration_method, i32 -1, ptr @.str.283, i32 3, ptr @.str.284, ptr @.str.285, i32 0, ptr @.str.73, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Itasc_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Itasc_use_auto_step_get, ptr @Itasc_use_auto_step_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.280 = private unnamed_addr constant [19 x i8] c"reiteration_method\00", align 1
@.str.281 = private unnamed_addr constant [12 x i8] c"Reiteration\00", align 1
@.str.282 = private unnamed_addr constant [109 x i8] c"Defines if the solver is allowed to reiterate (converge until precision is met) on none, first or all frames\00", align 1
@rna_Itasc_reiteration_method_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.418, i32 0, ptr @.str.419, ptr @.str.420 }, %struct.EnumPropertyItem { i32 2, ptr @.str.421, i32 0, ptr @.str.422, ptr @.str.423 }, %struct.EnumPropertyItem { i32 6, ptr @.str.424, i32 0, ptr @.str.425, ptr @.str.426 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Itasc_step_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Itasc_step_max, ptr @rna_Itasc_use_auto_step, i32 -1, ptr @.str.286, i32 8195, ptr @.str.287, ptr @.str.288, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Itasc_update, i32 85196800, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @Itasc_step_min_get, ptr @Itasc_step_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x3FB99999A0000000, float 0.000000e+00, float 0x3FB99999A0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.283 = private unnamed_addr constant [14 x i8] c"use_auto_step\00", align 1
@.str.284 = private unnamed_addr constant [10 x i8] c"Auto step\00", align 1
@.str.285 = private unnamed_addr constant [92 x i8] c"Automatically determine the optimal number of steps for best performance/accuracy trade off\00", align 1
@rna_Itasc_step_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Itasc_feedback, ptr @rna_Itasc_step_min, i32 -1, ptr @.str.289, i32 8195, ptr @.str.290, ptr @.str.291, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Itasc_update, i32 85196800, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @Itasc_step_max_get, ptr @Itasc_step_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.286 = private unnamed_addr constant [9 x i8] c"step_min\00", align 1
@.str.287 = private unnamed_addr constant [9 x i8] c"Min step\00", align 1
@.str.288 = private unnamed_addr constant [65 x i8] c"Lower bound for timestep in second in case of automatic substeps\00", align 1
@rna_Itasc_feedback = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Itasc_velocity_max, ptr @rna_Itasc_step_max, i32 -1, ptr @.str.292, i32 8195, ptr @.str.293, ptr @.str.294, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Itasc_update, i32 85196800, ptr null, ptr null, i32 24, i32 4, ptr null, ptr null }, ptr @Itasc_feedback_get, ptr @Itasc_feedback_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.289 = private unnamed_addr constant [9 x i8] c"step_max\00", align 1
@.str.290 = private unnamed_addr constant [9 x i8] c"Max step\00", align 1
@.str.291 = private unnamed_addr constant [66 x i8] c"Higher bound for timestep in second in case of automatic substeps\00", align 1
@rna_Itasc_velocity_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Itasc_solver, ptr @rna_Itasc_feedback, i32 -1, ptr @.str.295, i32 8195, ptr @.str.296, ptr @.str.297, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Itasc_update, i32 85196800, ptr null, ptr null, i32 28, i32 4, ptr null, ptr null }, ptr @Itasc_velocity_max_get, ptr @Itasc_velocity_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.292 = private unnamed_addr constant [9 x i8] c"feedback\00", align 1
@.str.293 = private unnamed_addr constant [9 x i8] c"Feedback\00", align 1
@.str.294 = private unnamed_addr constant [92 x i8] c"Feedback coefficient for error correction, average response time is 1/feedback (default=20)\00", align 1
@rna_Itasc_solver = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Itasc_damping_max, ptr @rna_Itasc_velocity_max, i32 -1, ptr @.str.298, i32 3, ptr @.str.299, ptr @.str.300, i32 0, ptr @.str.73, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Itasc_update_rebuild, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Itasc_solver_get, ptr @Itasc_solver_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Itasc_solver_items, i32 2, i32 0 }, align 8
@.str.295 = private unnamed_addr constant [13 x i8] c"velocity_max\00", align 1
@.str.296 = private unnamed_addr constant [13 x i8] c"Max Velocity\00", align 1
@.str.297 = private unnamed_addr constant [45 x i8] c"Maximum joint velocity in rad/s (default=50)\00", align 1
@rna_Itasc_damping_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Itasc_damping_epsilon, ptr @rna_Itasc_solver, i32 -1, ptr @.str.301, i32 8195, ptr @.str.302, ptr @.str.303, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Itasc_update, i32 85196800, ptr null, ptr null, i32 32, i32 4, ptr null, ptr null }, ptr @Itasc_damping_max_get, ptr @Itasc_damping_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.298 = private unnamed_addr constant [7 x i8] c"solver\00", align 1
@.str.299 = private unnamed_addr constant [7 x i8] c"Solver\00", align 1
@.str.300 = private unnamed_addr constant [62 x i8] c"Solving method selection: automatic damping or manual damping\00", align 1
@rna_Itasc_solver_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.427, i32 0, ptr @.str.427, ptr @.str.428 }, %struct.EnumPropertyItem { i32 1, ptr @.str.429, i32 0, ptr @.str.429, ptr @.str.430 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Itasc_damping_epsilon = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Itasc_damping_max, i32 -1, ptr @.str.304, i32 8195, ptr @.str.305, ptr @.str.306, i32 0, ptr @.str.73, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Itasc_update, i32 85196800, ptr null, ptr null, i32 36, i32 4, ptr null, ptr null }, ptr @Itasc_damping_epsilon_get, ptr @Itasc_damping_epsilon_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.301 = private unnamed_addr constant [12 x i8] c"damping_max\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c"Damp\00", align 1
@.str.303 = private unnamed_addr constant [122 x i8] c"Maximum damping coefficient when singular value is nearly 0 (higher values=more stability, less reactivity - default=0.5)\00", align 1
@.str.304 = private unnamed_addr constant [16 x i8] c"damping_epsilon\00", align 1
@.str.305 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.306 = private unnamed_addr constant [122 x i8] c"Singular value under which damping is progressively applied (higher values=more stability, less reactivity - default=0.1)\00", align 1
@.str.307 = private unnamed_addr constant [6 x i8] c"Itasc\00", align 1
@.str.308 = private unnamed_addr constant [7 x i8] c"bItasc\00", align 1
@.str.309 = private unnamed_addr constant [35 x i8] c"Parameters for the iTaSC IK solver\00", align 1
@rna_BoneGroup_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BoneGroup_name, ptr @rna_BoneGroup_rna_properties, i32 -1, ptr @.str.74, i32 8912896, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoneGroup_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BoneGroup_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BoneGroup_color_set, ptr @rna_BoneGroup_rna_type, i32 -1, ptr @.str.100, i32 262145, ptr @.str.115, ptr @.str.26, i32 0, ptr @.str.73, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoneGroup_name_get, ptr @BoneGroup_name_length, ptr @BoneGroup_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.26 }, align 8
@rna_BoneGroup_color_set = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BoneGroup_is_custom_color_set, ptr @rna_BoneGroup_name, i32 -1, ptr @.str.310, i32 3, ptr @.str.311, ptr @.str.312, i32 0, ptr @.str.73, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoneGroup_color_set_get, ptr @BoneGroup_color_set_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BoneGroup_color_set_items, i32 22, i32 0 }, align 8
@rna_BoneGroup_is_custom_color_set = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BoneGroup_colors, ptr @rna_BoneGroup_color_set, i32 -1, ptr @.str.313, i32 2, ptr @.str.68, ptr @.str.314, i32 0, ptr @.str.73, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoneGroup_is_custom_color_set_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.310 = private unnamed_addr constant [10 x i8] c"color_set\00", align 1
@.str.311 = private unnamed_addr constant [10 x i8] c"Color Set\00", align 1
@.str.312 = private unnamed_addr constant [24 x i8] c"Custom color set to use\00", align 1
@rna_BoneGroup_color_set_items = internal global [23 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem { i32 1, ptr @.str.27, i32 0, ptr @.str.28, ptr @.str.26 }, %struct.EnumPropertyItem { i32 2, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.26 }, %struct.EnumPropertyItem { i32 3, ptr @.str.31, i32 0, ptr @.str.32, ptr @.str.26 }, %struct.EnumPropertyItem { i32 4, ptr @.str.33, i32 0, ptr @.str.34, ptr @.str.26 }, %struct.EnumPropertyItem { i32 5, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.26 }, %struct.EnumPropertyItem { i32 6, ptr @.str.37, i32 0, ptr @.str.38, ptr @.str.26 }, %struct.EnumPropertyItem { i32 7, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.26 }, %struct.EnumPropertyItem { i32 8, ptr @.str.41, i32 0, ptr @.str.42, ptr @.str.26 }, %struct.EnumPropertyItem { i32 9, ptr @.str.43, i32 0, ptr @.str.44, ptr @.str.26 }, %struct.EnumPropertyItem { i32 10, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.26 }, %struct.EnumPropertyItem { i32 11, ptr @.str.47, i32 0, ptr @.str.48, ptr @.str.26 }, %struct.EnumPropertyItem { i32 12, ptr @.str.49, i32 0, ptr @.str.50, ptr @.str.26 }, %struct.EnumPropertyItem { i32 13, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.26 }, %struct.EnumPropertyItem { i32 14, ptr @.str.53, i32 0, ptr @.str.54, ptr @.str.26 }, %struct.EnumPropertyItem { i32 15, ptr @.str.55, i32 0, ptr @.str.56, ptr @.str.26 }, %struct.EnumPropertyItem { i32 16, ptr @.str.57, i32 0, ptr @.str.58, ptr @.str.26 }, %struct.EnumPropertyItem { i32 17, ptr @.str.59, i32 0, ptr @.str.60, ptr @.str.26 }, %struct.EnumPropertyItem { i32 18, ptr @.str.61, i32 0, ptr @.str.62, ptr @.str.26 }, %struct.EnumPropertyItem { i32 19, ptr @.str.63, i32 0, ptr @.str.64, ptr @.str.26 }, %struct.EnumPropertyItem { i32 20, ptr @.str.65, i32 0, ptr @.str.66, ptr @.str.26 }, %struct.EnumPropertyItem { i32 -1, ptr @.str.67, i32 0, ptr @.str.68, ptr @.str.26 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_BoneGroup_colors = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BoneGroup_is_custom_color_set, i32 -1, ptr @.str.315, i32 8650752, ptr @.str.316, ptr @.str.317, i32 0, ptr @.str.73, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Pose_update, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoneGroup_colors_get, ptr null, ptr null, ptr null, ptr @RNA_ThemeBoneColorSet }, align 8
@.str.313 = private unnamed_addr constant [20 x i8] c"is_custom_color_set\00", align 1
@.str.314 = private unnamed_addr constant [61 x i8] c"Color set is user-defined instead of a fixed theme color set\00", align 1
@.str.315 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@.str.316 = private unnamed_addr constant [7 x i8] c"Colors\00", align 1
@.str.317 = private unnamed_addr constant [57 x i8] c"Copy of the colors associated with the group's color set\00", align 1
@RNA_GameProperty = external global %struct.StructRNA, align 8
@.str.318 = private unnamed_addr constant [10 x i8] c"BoneGroup\00", align 1
@.str.319 = private unnamed_addr constant [32 x i8] c"Groups of Pose Channels (Bones)\00", align 1
@.str.320 = private unnamed_addr constant [41 x i8] c"Bone group '%s' not found in this object\00", align 1
@.str.321 = private unnamed_addr constant [44 x i8] c"Constraint '%s' not found in pose bone '%s'\00", align 1
@.str.322 = private unnamed_addr constant [7 x i8] c"LEGACY\00", align 1
@.str.323 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.324 = private unnamed_addr constant [19 x i8] c"Original IK solver\00", align 1
@.str.325 = private unnamed_addr constant [6 x i8] c"ITASC\00", align 1
@.str.326 = private unnamed_addr constant [6 x i8] c"iTaSC\00", align 1
@.str.327 = private unnamed_addr constant [37 x i8] c"Multi constraint, stateful IK solver\00", align 1
@.str.328 = private unnamed_addr constant [17 x i8] c"pose.bones[\22%s\22]\00", align 1
@.str.329 = private unnamed_addr constant [19 x i8] c"RNA_PoseBone group\00", align 1
@.str.330 = private unnamed_addr constant [16 x i8] c"Motion Tracking\00", align 1
@.str.331 = private unnamed_addr constant [14 x i8] c"CAMERA_SOLVER\00", align 1
@.str.332 = private unnamed_addr constant [14 x i8] c"Camera Solver\00", align 1
@.str.333 = private unnamed_addr constant [13 x i8] c"FOLLOW_TRACK\00", align 1
@.str.334 = private unnamed_addr constant [13 x i8] c"Follow Track\00", align 1
@.str.335 = private unnamed_addr constant [14 x i8] c"OBJECT_SOLVER\00", align 1
@.str.336 = private unnamed_addr constant [14 x i8] c"Object Solver\00", align 1
@.str.337 = private unnamed_addr constant [10 x i8] c"Transform\00", align 1
@.str.338 = private unnamed_addr constant [14 x i8] c"COPY_LOCATION\00", align 1
@.str.339 = private unnamed_addr constant [14 x i8] c"Copy Location\00", align 1
@.str.340 = private unnamed_addr constant [84 x i8] c"Copy the location of a target (with an optional offset), so that they move together\00", align 1
@.str.341 = private unnamed_addr constant [14 x i8] c"COPY_ROTATION\00", align 1
@.str.342 = private unnamed_addr constant [14 x i8] c"Copy Rotation\00", align 1
@.str.343 = private unnamed_addr constant [86 x i8] c"Copy the rotation of a target (with an optional offset), so that they rotate together\00", align 1
@.str.344 = private unnamed_addr constant [11 x i8] c"COPY_SCALE\00", align 1
@.str.345 = private unnamed_addr constant [11 x i8] c"Copy Scale\00", align 1
@.str.346 = private unnamed_addr constant [105 x i8] c"Copy the scale factors of a target (with an optional offset), so that they are scaled by the same amount\00", align 1
@.str.347 = private unnamed_addr constant [16 x i8] c"COPY_TRANSFORMS\00", align 1
@.str.348 = private unnamed_addr constant [16 x i8] c"Copy Transforms\00", align 1
@.str.349 = private unnamed_addr constant [69 x i8] c"Copy all the transformations of a target, so that they move together\00", align 1
@.str.350 = private unnamed_addr constant [15 x i8] c"LIMIT_DISTANCE\00", align 1
@.str.351 = private unnamed_addr constant [15 x i8] c"Limit Distance\00", align 1
@.str.352 = private unnamed_addr constant [104 x i8] c"Restrict movements to within a certain distance of a target (at the time of constraint evaluation only)\00", align 1
@.str.353 = private unnamed_addr constant [15 x i8] c"LIMIT_LOCATION\00", align 1
@.str.354 = private unnamed_addr constant [15 x i8] c"Limit Location\00", align 1
@.str.355 = private unnamed_addr constant [54 x i8] c"Restrict movement along each axis within given ranges\00", align 1
@.str.356 = private unnamed_addr constant [15 x i8] c"LIMIT_ROTATION\00", align 1
@.str.357 = private unnamed_addr constant [15 x i8] c"Limit Rotation\00", align 1
@.str.358 = private unnamed_addr constant [54 x i8] c"Restrict rotation along each axis within given ranges\00", align 1
@.str.359 = private unnamed_addr constant [12 x i8] c"LIMIT_SCALE\00", align 1
@.str.360 = private unnamed_addr constant [12 x i8] c"Limit Scale\00", align 1
@.str.361 = private unnamed_addr constant [51 x i8] c"Restrict scaling along each axis with given ranges\00", align 1
@.str.362 = private unnamed_addr constant [16 x i8] c"MAINTAIN_VOLUME\00", align 1
@.str.363 = private unnamed_addr constant [16 x i8] c"Maintain Volume\00", align 1
@.str.364 = private unnamed_addr constant [83 x i8] c"Compensate for scaling one axis by applying suitable scaling to the other two axes\00", align 1
@.str.365 = private unnamed_addr constant [10 x i8] c"TRANSFORM\00", align 1
@.str.366 = private unnamed_addr constant [15 x i8] c"Transformation\00", align 1
@.str.367 = private unnamed_addr constant [86 x i8] c"Use one transform property from target to control another (or same) property on owner\00", align 1
@.str.368 = private unnamed_addr constant [9 x i8] c"Tracking\00", align 1
@.str.369 = private unnamed_addr constant [9 x i8] c"CLAMP_TO\00", align 1
@.str.370 = private unnamed_addr constant [9 x i8] c"Clamp To\00", align 1
@.str.371 = private unnamed_addr constant [89 x i8] c"Restrict movements to lie along a curve by remapping location along curve's longest axis\00", align 1
@.str.372 = private unnamed_addr constant [13 x i8] c"DAMPED_TRACK\00", align 1
@.str.373 = private unnamed_addr constant [13 x i8] c"Damped Track\00", align 1
@.str.374 = private unnamed_addr constant [69 x i8] c"Point towards a target by performing the smallest rotation necessary\00", align 1
@.str.375 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.376 = private unnamed_addr constant [19 x i8] c"Inverse Kinematics\00", align 1
@.str.377 = private unnamed_addr constant [72 x i8] c"Control a chain of bones by specifying the endpoint target (Bones only)\00", align 1
@.str.378 = private unnamed_addr constant [13 x i8] c"LOCKED_TRACK\00", align 1
@.str.379 = private unnamed_addr constant [13 x i8] c"Locked Track\00", align 1
@.str.380 = private unnamed_addr constant [70 x i8] c"Rotate around the specified ('locked') axis to point towards a target\00", align 1
@.str.381 = private unnamed_addr constant [10 x i8] c"SPLINE_IK\00", align 1
@.str.382 = private unnamed_addr constant [10 x i8] c"Spline IK\00", align 1
@.str.383 = private unnamed_addr constant [48 x i8] c"Align chain of bones along a curve (Bones only)\00", align 1
@.str.384 = private unnamed_addr constant [11 x i8] c"STRETCH_TO\00", align 1
@.str.385 = private unnamed_addr constant [11 x i8] c"Stretch To\00", align 1
@.str.386 = private unnamed_addr constant [47 x i8] c"Stretch along Y-Axis to point towards a target\00", align 1
@.str.387 = private unnamed_addr constant [9 x i8] c"TRACK_TO\00", align 1
@.str.388 = private unnamed_addr constant [9 x i8] c"Track To\00", align 1
@.str.389 = private unnamed_addr constant [55 x i8] c"Legacy tracking constraint prone to twisting artifacts\00", align 1
@.str.390 = private unnamed_addr constant [13 x i8] c"Relationship\00", align 1
@.str.391 = private unnamed_addr constant [7 x i8] c"ACTION\00", align 1
@.str.392 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.393 = private unnamed_addr constant [74 x i8] c"Use transform property of target to look up pose for owner from an Action\00", align 1
@.str.394 = private unnamed_addr constant [9 x i8] c"CHILD_OF\00", align 1
@.str.395 = private unnamed_addr constant [9 x i8] c"Child Of\00", align 1
@.str.396 = private unnamed_addr constant [45 x i8] c"Make target the 'detachable' parent of owner\00", align 1
@.str.397 = private unnamed_addr constant [6 x i8] c"FLOOR\00", align 1
@.str.398 = private unnamed_addr constant [6 x i8] c"Floor\00", align 1
@.str.399 = private unnamed_addr constant [108 x i8] c"Use position (and optionally rotation) of target to define a 'wall' or 'floor' that the owner can not cross\00", align 1
@.str.400 = private unnamed_addr constant [12 x i8] c"FOLLOW_PATH\00", align 1
@.str.401 = private unnamed_addr constant [12 x i8] c"Follow Path\00", align 1
@.str.402 = private unnamed_addr constant [47 x i8] c"Use to animate an object/bone following a path\00", align 1
@.str.403 = private unnamed_addr constant [6 x i8] c"PIVOT\00", align 1
@.str.404 = private unnamed_addr constant [6 x i8] c"Pivot\00", align 1
@.str.405 = private unnamed_addr constant [42 x i8] c"Change pivot point for transforms (buggy)\00", align 1
@.str.406 = private unnamed_addr constant [17 x i8] c"RIGID_BODY_JOINT\00", align 1
@.str.407 = private unnamed_addr constant [17 x i8] c"Rigid Body Joint\00", align 1
@.str.408 = private unnamed_addr constant [65 x i8] c"Use to define a Rigid Body Constraint (for Game Engine use only)\00", align 1
@.str.409 = private unnamed_addr constant [11 x i8] c"SHRINKWRAP\00", align 1
@.str.410 = private unnamed_addr constant [11 x i8] c"Shrinkwrap\00", align 1
@.str.411 = private unnamed_addr constant [45 x i8] c"Restrict movements to surface of target mesh\00", align 1
@.str.412 = private unnamed_addr constant [10 x i8] c"ANIMATION\00", align 1
@.str.413 = private unnamed_addr constant [10 x i8] c"Animation\00", align 1
@.str.414 = private unnamed_addr constant [84 x i8] c"Stateless solver computing pose starting from current action and non-IK constraints\00", align 1
@.str.415 = private unnamed_addr constant [11 x i8] c"SIMULATION\00", align 1
@.str.416 = private unnamed_addr constant [11 x i8] c"Simulation\00", align 1
@.str.417 = private unnamed_addr constant [91 x i8] c"State-full solver running in real-time context and ignoring actions and non-IK constraints\00", align 1
@.str.418 = private unnamed_addr constant [6 x i8] c"NEVER\00", align 1
@.str.419 = private unnamed_addr constant [6 x i8] c"Never\00", align 1
@.str.420 = private unnamed_addr constant [79 x i8] c"The solver does not reiterate, not even on first frame (starts from rest pose)\00", align 1
@.str.421 = private unnamed_addr constant [8 x i8] c"INITIAL\00", align 1
@.str.422 = private unnamed_addr constant [8 x i8] c"Initial\00", align 1
@.str.423 = private unnamed_addr constant [81 x i8] c"The solver reiterates (converges) on the first frame but not on subsequent frame\00", align 1
@.str.424 = private unnamed_addr constant [7 x i8] c"ALWAYS\00", align 1
@.str.425 = private unnamed_addr constant [7 x i8] c"Always\00", align 1
@.str.426 = private unnamed_addr constant [48 x i8] c"The solver reiterates (converges) on all frames\00", align 1
@.str.427 = private unnamed_addr constant [5 x i8] c"SDLS\00", align 1
@.str.428 = private unnamed_addr constant [30 x i8] c"Selective Damped Least Square\00", align 1
@.str.429 = private unnamed_addr constant [4 x i8] c"DLS\00", align 1
@.str.430 = private unnamed_addr constant [45 x i8] c"Damped Least Square with Numerical Filtering\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_ActionGroup_colorset_set(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, 1
  %4 = icmp ult i32 %3, 22
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.bActionGroup, ptr %7, i64 0, i32 4
  store i32 %1, ptr %8, align 4, !tbaa !40
  tail call void @action_group_colors_sync(ptr noundef %7, ptr noundef null) #16
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @action_group_colors_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rna_ActionGroup_is_custom_colorset_get(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !40
  %6 = lshr i32 %5, 31
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Pose_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Pose_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @Pose_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Pose_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !51 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Pose_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @Pose_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Pose_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Pose_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Pose_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Pose_bones_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Pose_bones, ptr %6, align 8, !tbaa !48
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef %5, ptr noundef null) #16
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @Pose_bones_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %12

12:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Pose_bones_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !52 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #16
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PoseBone, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Pose_bones_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @Pose_bones_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Pose_bones_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Pose_bones_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @Pose_bones_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !53
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #16
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !55

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
  %37 = load ptr, ptr %33, align 8, !tbaa !57
  store ptr %37, ptr %10, align 8, !tbaa !59
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !60

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @Pose_bones_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @Pose_bones_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Pose_bones_lookup_string(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @rna_PoseBones_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !range !61
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @rna_PoseBones_lookup_string(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !62 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %5, ptr noundef %1) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !63
  tail call void @RNA_pointer_create(ptr noundef %9, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %6, ptr noundef %2) #16
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i32 [ 1, %8 ], [ 0, %3 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Pose_bone_groups_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Pose_bone_groups, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.bPose, ptr %5, i64 0, i32 9
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #16
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @Pose_bone_groups_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Pose_bone_groups_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !64 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #16
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_BoneGroup, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Pose_bone_groups_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @Pose_bone_groups_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Pose_bone_groups_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Pose_bone_groups_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @Pose_bone_groups_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !53
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #16
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !65

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
  %37 = load ptr, ptr %33, align 8, !tbaa !57
  store ptr %37, ptr %10, align 8, !tbaa !59
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !66

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @Pose_bone_groups_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @Pose_bone_groups_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Pose_bone_groups_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #17
  call void @Pose_bone_groups_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !67
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @BoneGroup_name_length(ptr noundef nonnull %10) #18
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @BoneGroup_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #18
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.69) #16
  call void @BoneGroup_name_get(ptr noundef nonnull %10, ptr noundef %25) #18
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #19
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %28(ptr noundef %25) #16
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @Pose_bone_groups_next(ptr noundef nonnull %4) #18
  %30 = load i32, ptr %6, align 8, !tbaa !50
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !68

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @Pose_bone_groups_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoneGroup_name_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 5
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #19
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroup_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bActionGroup, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Pose_ik_solver_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPose, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !69
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Pose_ik_solver_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_Pose_ik_solver_set(ptr noundef %0, i32 noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Pose_ik_solver_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !73 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPose, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !69
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  tail call void @BIK_clear_data(ptr noundef nonnull %4) #16
  %9 = getelementptr inbounds %struct.bPose, ptr %4, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %13(ptr noundef nonnull %10) #16
  store ptr null, ptr %9, align 8, !tbaa !74
  br label %14

14:                                               ; preds = %12, %8
  store i32 %1, ptr %5, align 4, !tbaa !69
  tail call void @BKE_pose_ikparam_init(ptr noundef nonnull %4) #16
  br label %15

15:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Pose_ik_param_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Pose_ikparam_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Pose_ikparam_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !75 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPose, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_IKParam, ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Pose_animation_visualization_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPose, ptr %4, i64 0, i32 14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimViz, ptr noundef nonnull %5) #16
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroups_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BoneGroups_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @BoneGroups_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BoneGroups_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !76 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroups_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @BoneGroups_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroups_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BoneGroups_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroups_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroups_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Pose_active_bone_group_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Pose_active_bone_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !77 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPose, ptr %4, i64 0, i32 9
  %6 = getelementptr inbounds %struct.bPose, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = add nsw i32 %7, -1
  %9 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %8) #16
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_BoneGroup, ptr noundef %9) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroups_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_Pose_active_bone_group_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Pose_active_bone_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !79 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPose, ptr %4, i64 0, i32 9
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = tail call i32 @BLI_findindex(ptr noundef nonnull %5, ptr noundef %7) #16
  %9 = add nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.bPose, ptr %4, i64 0, i32 10
  store i32 %9, ptr %10, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoneGroups_active_index_get(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call fastcc i32 @rna_Pose_active_bone_group_index_get(ptr noundef %0) #18, !range !80
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Pose_active_bone_group_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !81 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPose, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !78
  %6 = icmp sgt i32 %5, 1
  %7 = add nsw i32 %5, -1
  %8 = select i1 %6, i32 %7, i32 0
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoneGroups_active_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  tail call fastcc void @rna_Pose_active_bone_group_index_set(ptr noundef %0, i32 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Pose_active_bone_group_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = add nsw i32 %1, 1
  %6 = getelementptr inbounds %struct.bPose, ptr %4, i64 0, i32 10
  store i32 %5, ptr %6, align 8, !tbaa !78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_PoseBone_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @PoseBone_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @PoseBone_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !83 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @PoseBone_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PoseBone_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_constraints_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_PoseBone_constraints, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 3
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #16
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @PoseBone_constraints_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @PoseBone_constraints_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !84 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #16
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Constraint, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_constraints_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @PoseBone_constraints_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_constraints_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PoseBone_constraints_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @PoseBone_constraints_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !53
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #16
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !85

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
  %37 = load ptr, ptr %33, align 8, !tbaa !57
  store ptr %37, ptr %10, align 8, !tbaa !59
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !86

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @PoseBone_constraints_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @PoseBone_constraints_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @PoseBone_constraints_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #17
  call void @PoseBone_constraints_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !67
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @Constraint_name_length(ptr noundef nonnull %10) #16
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @Constraint_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #16
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.69) #16
  call void @Constraint_name_get(ptr noundef nonnull %10, ptr noundef %25) #16
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #19
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %28(ptr noundef %25) #16
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @PoseBone_constraints_next(ptr noundef nonnull %4) #18
  %30 = load i32, ptr %6, align 8, !tbaa !50
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !87

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @PoseBone_constraints_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @Constraint_name_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Constraint_name_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 4
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #16
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PoseBone_name_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 4
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #19
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_PoseChannel_name_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PoseChannel_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !88 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %8 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 64) #16
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %7, i64 0, i32 4
  %10 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %9, i64 noundef 64) #16
  %11 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  call void @ED_armature_bone_rename(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_motion_path_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_MotionPath, ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_bone_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !95
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Bone, ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_parent_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PoseBone, ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_child_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PoseBone, ptr noundef %6) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 20
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !98
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !99

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 20
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !98
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !100

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_scale_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 21
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !98
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !101

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_scale_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 21
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !98
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !102

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_rotation_quaternion_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 23
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !98
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %6, !llvm.loop !103

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_rotation_quaternion_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 23
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !98
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %6, !llvm.loop !104

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_rotation_axis_angle_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  tail call fastcc void @rna_PoseChannel_rotation_axis_angle_get(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_PoseChannel_rotation_axis_angle_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 !PGOFuncName !105 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 25
  %6 = load float, ptr %5, align 8, !tbaa !106
  store float %6, ptr %1, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 24
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_rotation_axis_angle_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  tail call fastcc void @rna_PoseChannel_rotation_axis_angle_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_PoseChannel_rotation_axis_angle_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !107 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load float, ptr %1, align 4, !tbaa !98
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 25
  store float %5, ptr %6, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 24
  %8 = getelementptr inbounds float, ptr %1, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_rotation_euler_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 22
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !98
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !108

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_rotation_euler_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 22
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !98
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !109

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PoseBone_rotation_mode_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 26
  %5 = load i16, ptr %4, align 4, !tbaa !110
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_rotation_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_PoseChannel_rotation_mode_set(ptr noundef %0, i32 noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PoseChannel_rotation_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !111 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 23
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 22
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 24
  %8 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 25
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 26
  %10 = load i16, ptr %9, align 4, !tbaa !110
  %11 = trunc i32 %1 to i16
  tail call void @BKE_rotMode_change_values(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i16 noundef signext %10, i16 noundef signext %11) #16
  store i16 %11, ptr %9, align 4, !tbaa !110
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_matrix_channel_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 28
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !98
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %13, label %6, !llvm.loop !112

13:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_matrix_basis_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_PoseChannel_matrix_basis_get(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PoseChannel_matrix_basis_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !113 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @BKE_pchan_to_mat4(ptr noundef %4, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_matrix_basis_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_PoseChannel_matrix_basis_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PoseChannel_matrix_basis_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !114 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @BKE_pchan_apply_mat4(ptr noundef %4, ptr noundef %1, i8 noundef zeroext 0) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_matrix_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 29
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !98
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %13, label %6, !llvm.loop !115

13:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_matrix_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_PoseChannel_matrix_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PoseChannel_matrix_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !116 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = load ptr, ptr %0, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @BKE_armature_mat_pose_to_bone_ex(ptr noundef %6, ptr noundef %5, ptr noundef %1, ptr noundef nonnull %3) #16
  call void @BKE_pchan_apply_mat4(ptr noundef %5, ptr noundef nonnull %3, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_head_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 31
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !98
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !117

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_tail_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 32
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !98
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !98
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !118

13:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PoseBone_is_in_ik_chain_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_PoseChannel_has_ik_get(ptr noundef %0) #18, !range !119
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_PoseChannel_has_ik_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !120 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call zeroext i8 @BKE_pose_channel_in_IK_chain(ptr noundef %2, ptr noundef %4) #16
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PoseBone_lock_ik_x_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !121
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_lock_ik_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !121
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PoseBone_lock_ik_y_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !121
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_lock_ik_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !121
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PoseBone_lock_ik_z_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !121
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_lock_ik_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !121
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PoseBone_use_ik_limit_x_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !121
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_use_ik_limit_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !121
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PoseBone_use_ik_limit_y_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !121
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_use_ik_limit_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !121
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PoseBone_use_ik_limit_z_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !121
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_use_ik_limit_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !121
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PoseBone_use_ik_rotation_control_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !121
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_use_ik_rotation_control_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !121
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PoseBone_use_ik_linear_control_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !121
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_use_ik_linear_control_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 2, !tbaa !121
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PoseBone_ik_min_x_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 33
  %5 = load float, ptr %4, align 8, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_ik_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0xC00921FB60000000
  %6 = fcmp ogt float %1, 0.000000e+00
  %7 = select i1 %6, float 0.000000e+00, float %1
  %8 = select i1 %5, float 0xC00921FB60000000, float %7
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 33
  store float %8, ptr %9, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PoseBone_ik_max_x_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 34
  %5 = load float, ptr %4, align 4, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_ik_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x400921FB60000000
  %7 = select i1 %6, float 0x400921FB60000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 34
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PoseBone_ik_min_y_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 33, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_ik_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0xC00921FB60000000
  %6 = fcmp ogt float %1, 0.000000e+00
  %7 = select i1 %6, float 0.000000e+00, float %1
  %8 = select i1 %5, float 0xC00921FB60000000, float %7
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 33, i64 1
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PoseBone_ik_max_y_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 34, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_ik_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x400921FB60000000
  %7 = select i1 %6, float 0x400921FB60000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 34, i64 1
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PoseBone_ik_min_z_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 33, i64 2
  %5 = load float, ptr %4, align 8, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_ik_min_z_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0xC00921FB60000000
  %6 = fcmp ogt float %1, 0.000000e+00
  %7 = select i1 %6, float 0.000000e+00, float %1
  %8 = select i1 %5, float 0xC00921FB60000000, float %7
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 33, i64 2
  store float %8, ptr %9, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PoseBone_ik_max_z_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 34, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_ik_max_z_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x400921FB60000000
  %7 = select i1 %6, float 0x400921FB60000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 34, i64 2
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PoseBone_ik_stiffness_x_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 35
  %5 = load float, ptr %4, align 8, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_ik_stiffness_x_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x3FEFAE1480000000
  %7 = select i1 %6, float 0x3FEFAE1480000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 35
  store float %8, ptr %9, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PoseBone_ik_stiffness_y_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 35, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_ik_stiffness_y_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x3FEFAE1480000000
  %7 = select i1 %6, float 0x3FEFAE1480000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 35, i64 1
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PoseBone_ik_stiffness_z_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 35, i64 2
  %5 = load float, ptr %4, align 8, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_ik_stiffness_z_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x3FEFAE1480000000
  %7 = select i1 %6, float 0x3FEFAE1480000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 35, i64 2
  store float %8, ptr %9, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PoseBone_ik_stretch_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 36
  %5 = load float, ptr %4, align 4, !tbaa !122
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_ik_stretch_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 36
  store float %8, ptr %9, align 4, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PoseBone_ik_rotation_weight_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 37
  %5 = load float, ptr %4, align 8, !tbaa !123
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_ik_rotation_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 37
  store float %8, ptr %9, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @PoseBone_ik_linear_weight_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 38
  %5 = load float, ptr %4, align 4, !tbaa !124
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_ik_linear_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 38
  store float %8, ptr %9, align 4, !tbaa !124
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_custom_shape_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_custom_shape_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_PoseChannel_bone_custom_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PoseChannel_bone_custom_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !126 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #16
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  store ptr %11, ptr %5, align 8, !tbaa !125
  tail call void @id_us_plus(ptr noundef %11) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_custom_shape_transform_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PoseBone, ptr noundef %6) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_custom_shape_transform_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 19
  store ptr %6, ptr %7, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PoseBone_bone_group_index_get(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call fastcc i32 @rna_PoseChannel_bone_group_index_get(ptr noundef %0) #18, !range !128
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_PoseChannel_bone_group_index_get(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !129 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 2, !tbaa !130
  %6 = icmp sgt i16 %5, 1
  %7 = sext i16 %5 to i32
  %8 = add nsw i32 %7, -1
  %9 = select i1 %6, i32 %8, i32 0
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_bone_group_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  tail call fastcc void @rna_PoseChannel_bone_group_index_set(ptr noundef %0, i32 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_PoseChannel_bone_group_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !131 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = add i16 %5, 1
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 8
  store i16 %6, ptr %7, align 2, !tbaa !130
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_bone_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_PoseChannel_bone_group_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PoseChannel_bone_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !132 {
  %3 = load ptr, ptr %1, align 8, !tbaa !63
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.bPose, ptr %7, i64 0, i32 9
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %11, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !130
  %15 = sext i16 %14 to i32
  %16 = add nsw i32 %15, -1
  %17 = tail call ptr @BLI_findlink(ptr noundef nonnull %12, i32 noundef %16) #16
  br label %18

18:                                               ; preds = %2, %5, %9
  %19 = phi ptr [ %17, %9 ], [ null, %5 ], [ null, %2 ]
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_BoneGroup, ptr noundef %19) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_bone_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_PoseChannel_bone_group_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PoseChannel_bone_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !134 {
  %3 = load ptr, ptr %0, align 8, !tbaa !63
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  br label %21

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !133
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %10, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.bPose, ptr %10, i64 0, i32 9
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = tail call i32 @BLI_findindex(ptr noundef nonnull %15, ptr noundef %17) #16
  %19 = trunc i32 %18 to i16
  %20 = add i16 %19, 1
  br label %21

21:                                               ; preds = %8, %5, %14
  %22 = phi ptr [ %12, %14 ], [ %7, %5 ], [ %12, %8 ]
  %23 = phi i16 [ %20, %14 ], [ 0, %5 ], [ 0, %8 ]
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 8
  store i16 %23, ptr %24, align 2, !tbaa !130
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_lock_location_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %6 = load i16, ptr %5, align 4, !tbaa !135
  %7 = sext i16 %6 to i32
  %8 = and i32 %7, 1
  store i32 %8, ptr %1, align 4, !tbaa !136
  %9 = lshr i32 %7, 1
  %10 = getelementptr inbounds i32, ptr %1, i64 1
  %11 = and i32 %9, 1
  store i32 %11, ptr %10, align 4, !tbaa !136
  %12 = lshr i32 %7, 2
  %13 = getelementptr inbounds i32, ptr %1, i64 2
  %14 = and i32 %12, 1
  store i32 %14, ptr %13, align 4, !tbaa !136
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_lock_location_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %6 = load i16, ptr %5, align 4, !tbaa !135
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i16 [ %6, %2 ], [ %19, %7 ]
  %9 = phi i64 [ 0, %2 ], [ %20, %7 ]
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !136
  %12 = icmp eq i32 %11, 0
  %13 = trunc i64 %9 to i32
  %14 = shl nuw nsw i32 1, %13
  %15 = trunc i32 %14 to i16
  %16 = or i16 %8, %15
  %17 = xor i16 %15, -1
  %18 = and i16 %8, %17
  %19 = select i1 %12, i16 %18, i16 %16
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, 3
  br i1 %21, label %22, label %7, !llvm.loop !137

22:                                               ; preds = %7
  store i16 %19, ptr %5, align 4, !tbaa !135
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_lock_rotation_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %6 = load i16, ptr %5, align 4, !tbaa !135
  %7 = sext i16 %6 to i32
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 1
  store i32 %9, ptr %1, align 4, !tbaa !136
  %10 = getelementptr inbounds i32, ptr %1, i64 1
  %11 = lshr i32 %7, 4
  %12 = and i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !136
  %13 = getelementptr inbounds i32, ptr %1, i64 2
  %14 = lshr i32 %7, 5
  %15 = and i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !136
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_lock_rotation_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %6 = load i16, ptr %5, align 4, !tbaa !135
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i16 [ %6, %2 ], [ %19, %7 ]
  %9 = phi i64 [ 0, %2 ], [ %20, %7 ]
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !136
  %12 = icmp eq i32 %11, 0
  %13 = trunc i64 %9 to i32
  %14 = shl nuw nsw i32 8, %13
  %15 = trunc i32 %14 to i16
  %16 = or i16 %8, %15
  %17 = xor i16 %15, -1
  %18 = and i16 %8, %17
  %19 = select i1 %12, i16 %18, i16 %16
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, 3
  br i1 %21, label %22, label %7, !llvm.loop !138

22:                                               ; preds = %7
  store i16 %19, ptr %5, align 4, !tbaa !135
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PoseBone_lock_rotation_w_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !135
  %6 = lshr i16 %5, 9
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_lock_rotation_w_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !135
  %8 = and i16 %7, -513
  %9 = select i1 %5, i16 0, i16 512
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !135
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @PoseBone_lock_rotations_4d_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !135
  %6 = lshr i16 %5, 10
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_lock_rotations_4d_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !135
  %8 = and i16 %7, -1025
  %9 = select i1 %5, i16 0, i16 1024
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !135
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_lock_scale_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %6 = load i16, ptr %5, align 4, !tbaa !135
  %7 = sext i16 %6 to i32
  %8 = lshr i32 %7, 6
  %9 = and i32 %8, 1
  store i32 %9, ptr %1, align 4, !tbaa !136
  %10 = getelementptr inbounds i32, ptr %1, i64 1
  %11 = lshr i32 %7, 7
  %12 = and i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !136
  %13 = getelementptr inbounds i32, ptr %1, i64 2
  %14 = lshr i32 %7, 8
  %15 = and i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !136
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @PoseBone_lock_scale_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %6 = load i16, ptr %5, align 4, !tbaa !135
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i16 [ %6, %2 ], [ %19, %7 ]
  %9 = phi i64 [ 0, %2 ], [ %20, %7 ]
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !136
  %12 = icmp eq i32 %11, 0
  %13 = trunc i64 %9 to i32
  %14 = shl nuw nsw i32 64, %13
  %15 = trunc i32 %14 to i16
  %16 = or i16 %8, %15
  %17 = xor i16 %15, -1
  %18 = and i16 %8, %17
  %19 = select i1 %12, i16 %18, i16 %16
  %20 = add nuw nsw i64 %9, 1
  %21 = icmp eq i64 %20, 3
  br i1 %21, label %22, label %7, !llvm.loop !139

22:                                               ; preds = %7
  store i16 %19, ptr %5, align 4, !tbaa !135
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBoneConstraints_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_PoseBoneConstraints_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @PoseBoneConstraints_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @PoseBoneConstraints_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !140 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBoneConstraints_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @PoseBoneConstraints_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBoneConstraints_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PoseBoneConstraints_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBoneConstraints_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBoneConstraints_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_PoseChannel_active_constraint_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PoseChannel_active_constraint_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !141 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BKE_constraints_active_get(ptr noundef nonnull %5) #16
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Constraint, ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBoneConstraints_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_PoseChannel_active_constraint_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PoseChannel_active_constraint_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !142 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 3
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  tail call void @BKE_constraints_active_set(ptr noundef nonnull %5, ptr noundef %7) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IKParam_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_IKParam_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @IKParam_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @IKParam_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !143 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IKParam_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @IKParam_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IKParam_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IKParam_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IKParam_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @IKParam_ik_solver_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = load i32, ptr %3, align 4, !tbaa !144
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Itasc_precision_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bItasc, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !146
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Itasc_precision_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x3FB99999A0000000
  %7 = select i1 %6, float 0x3FB99999A0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bItasc, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 4, !tbaa !146
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Itasc_iterations_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bItasc, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 4, !tbaa !148
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Itasc_iterations_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.bItasc, ptr %4, i64 0, i32 2
  store i16 %7, ptr %8, align 4, !tbaa !148
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Itasc_step_count_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bItasc, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !149
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Itasc_step_count_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 50)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.bItasc, ptr %4, i64 0, i32 3
  store i16 %7, ptr %8, align 2, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Itasc_mode_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bItasc, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !150
  %6 = and i16 %5, 8
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Itasc_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bItasc, ptr %4, i64 0, i32 7
  %6 = load i16, ptr %5, align 2, !tbaa !150
  %7 = and i16 %6, -9
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 2, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Itasc_reiteration_method_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bItasc, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !150
  %6 = and i16 %5, 6
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Itasc_reiteration_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bItasc, ptr %4, i64 0, i32 7
  %6 = load i16, ptr %5, align 2, !tbaa !150
  %7 = and i16 %6, -7
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 2, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Itasc_use_auto_step_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bItasc, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !150
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Itasc_use_auto_step_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.bItasc, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !150
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !150
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Itasc_step_min_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bItasc, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 4, !tbaa !151
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Itasc_step_min_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x3FB99999A0000000
  %7 = select i1 %6, float 0x3FB99999A0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bItasc, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 4, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Itasc_step_max_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bItasc, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !152
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Itasc_step_max_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bItasc, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 4, !tbaa !152
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Itasc_feedback_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bItasc, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !153
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Itasc_feedback_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bItasc, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 4, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Itasc_velocity_max_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bItasc, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 4, !tbaa !154
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Itasc_velocity_max_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bItasc, ptr %4, i64 0, i32 9
  store float %8, ptr %9, align 4, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Itasc_solver_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bItasc, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 4, !tbaa !155
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Itasc_solver_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.bItasc, ptr %4, i64 0, i32 6
  store i16 %5, ptr %6, align 4, !tbaa !155
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Itasc_damping_max_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bItasc, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !156
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Itasc_damping_max_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bItasc, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 4, !tbaa !156
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Itasc_damping_epsilon_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bItasc, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !157
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Itasc_damping_epsilon_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.bItasc, ptr %4, i64 0, i32 11
  store float %8, ptr %9, align 4, !tbaa !157
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroup_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BoneGroup_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @BoneGroup_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BoneGroup_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !158 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroup_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @BoneGroup_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroup_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BoneGroup_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroup_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroup_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_BoneGroup_name_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_BoneGroup_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !159 {
  %3 = load ptr, ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bActionGroup, ptr %5, i64 0, i32 5
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #16
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  %10 = getelementptr inbounds %struct.bPose, ptr %9, i64 0, i32 9
  tail call void @BLI_uniquename(ptr noundef nonnull %10, ptr noundef %5, ptr noundef nonnull @.str.102, i8 noundef zeroext 46, i32 noundef 40, i32 noundef 64) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoneGroup_color_set_get(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !40
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroup_color_set_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call void @rna_ActionGroup_colorset_set(ptr noundef %0, i32 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoneGroup_is_custom_color_set_get(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call i32 @rna_ActionGroup_is_custom_colorset_get(ptr noundef %0) #18, !range !61
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroup_colors_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bActionGroup, ptr %4, i64 0, i32 6
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ThemeBoneColorSet, ptr noundef nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BoneGroups_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_bone_group_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_bone_group_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !160 {
  %4 = tail call ptr @BKE_pose_add_group(ptr noundef %1, ptr noundef %2) #16
  tail call void @WM_main_add_notifier(i32 noundef 85196803, ptr noundef %0) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroups_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %3, align 8, !tbaa !161
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds i8, ptr %8, i64 8
  %11 = tail call fastcc ptr @rna_bone_group_new(ptr noundef %5, ptr noundef %7, ptr noundef %9) #18
  store ptr %11, ptr %10, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroups_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  tail call fastcc void @rna_bone_group_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_bone_group_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !163 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.bPose, ptr %1, i64 0, i32 9
  %8 = tail call i32 @BLI_findindex(ptr noundef nonnull %7, ptr noundef %6) #16
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.bActionGroup, ptr %6, i64 0, i32 5
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.320, ptr noundef nonnull %11) #16
  br label %14

12:                                               ; preds = %4
  %13 = add nuw nsw i32 %8, 1
  tail call void @BKE_pose_remove_group(ptr noundef %1, ptr noundef %6, i32 noundef %13) #16
  tail call void @WM_main_add_notifier(i32 noundef 85196804, ptr noundef %0) #16
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoneGroups_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %3, align 8, !tbaa !161
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  tail call fastcc void @rna_bone_group_remove(ptr noundef %5, ptr noundef %7, ptr noundef %1, ptr noundef %9) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @PoseBone_evaluate_envelope(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc float @rna_PoseBone_do_envelope(ptr noundef %0, ptr noundef %1) #18
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @rna_PoseBone_do_envelope(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !164 {
  %3 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !165
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 16
  %11 = load float, ptr %10, align 4, !tbaa !167
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi float [ %11, %9 ], [ 1.000000e+00, %2 ]
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 31
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 32
  %16 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 22
  %17 = load float, ptr %16, align 4, !tbaa !168
  %18 = fmul float %13, %17
  %19 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 23
  %20 = load float, ptr %19, align 8, !tbaa !169
  %21 = fmul float %13, %20
  %22 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 15
  %23 = load float, ptr %22, align 8, !tbaa !170
  %24 = fmul float %13, %23
  %25 = tail call float @distfactor_to_bone(ptr noundef %1, ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef %18, float noundef %21, float noundef %24) #16
  ret float %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBone_evaluate_envelope_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !161
  %8 = getelementptr inbounds i8, ptr %7, i64 12
  %9 = tail call fastcc float @rna_PoseBone_do_envelope(ptr noundef %6, ptr noundef %7) #18
  store float %9, ptr %8, align 4, !tbaa !98
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @PoseBoneConstraints_new(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_PoseChannel_constraints_new(ptr noundef %0, i32 noundef %1) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_PoseChannel_constraints_new(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !171 {
  %3 = trunc i32 %1 to i16
  %4 = tail call ptr @BKE_constraint_add_for_pose(ptr noundef null, ptr noundef %0, ptr noundef null, i16 noundef signext %3) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBoneConstraints_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !161
  %8 = getelementptr inbounds i8, ptr %7, i64 8
  %9 = load i32, ptr %8, align 4, !tbaa !136
  %10 = tail call fastcc ptr @rna_PoseChannel_constraints_new(ptr noundef %6, i32 noundef %9) #18
  store ptr %10, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBoneConstraints_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @rna_PoseChannel_constraints_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PoseChannel_constraints_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !172 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !173
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 3
  %10 = tail call i32 @BLI_findindex(ptr noundef nonnull %9, ptr noundef %6) #16
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 7
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.321, ptr noundef nonnull %13, ptr noundef nonnull %14) #16
  br label %20

15:                                               ; preds = %4
  %16 = tail call zeroext i8 @BKE_constraint_remove(ptr noundef nonnull %9, ptr noundef nonnull %6) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @ED_object_constraint_update(ptr noundef %0) #16
  tail call void @BKE_constraints_active_set(ptr noundef nonnull %9, ptr noundef null) #16
  tail call void @WM_main_add_notifier(i32 noundef 85590020, ptr noundef %0) #16
  switch i16 %8, label %20 [
    i16 22, label %17
    i16 3, label %17
  ]

17:                                               ; preds = %15, %15
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !133
  tail call void @BIK_clear_data(ptr noundef %19) #16
  br label %20

20:                                               ; preds = %15, %17, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PoseBoneConstraints_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %3, align 8, !tbaa !161
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  tail call fastcc void @rna_PoseChannel_constraints_remove(ptr noundef %5, ptr noundef %7, ptr noundef %1, ptr noundef %9) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Pose_ik_solver_update(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !175 {
  %4 = load ptr, ptr %2, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.bPose, ptr %6, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !176
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 8, !tbaa !176
  tail call void @DAG_relations_tag_update(ptr noundef %0) #16
  tail call void @BKE_pose_update_constraint_flags(ptr noundef %6) #16
  tail call void @object_test_constraints(ptr noundef %4) #16
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 3) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @rna_Pose_ikparam_typef(ptr nocapture noundef readonly %0) #3 !PGOFuncName !177 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bPose, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !69
  %6 = icmp eq i32 %5, 1
  %7 = select i1 %6, ptr @RNA_Itasc, ptr @RNA_IKParam
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Pose_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !178 {
  %4 = load ptr, ptr %2, align 8, !tbaa !63
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Pose_active_bone_group_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !179 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  store i32 0, ptr %1, align 4, !tbaa !136
  %8 = getelementptr inbounds %struct.bPose, ptr %7, i64 0, i32 9
  %9 = tail call i32 @BLI_countlist(ptr noundef nonnull %8) #16
  %10 = add nsw i32 %9, -1
  %11 = tail call fastcc i32 @max_ii(i32 noundef %10) #18
  store i32 %11, ptr %2, align 4, !tbaa !136
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_PoseChannel_proxy_editable(ptr nocapture noundef readonly %0) #3 !PGOFuncName !180 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %10, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 25
  %16 = load i32, ptr %15, align 8, !tbaa !182
  %17 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 16
  %18 = load i32, ptr %17, align 4, !tbaa !183
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %14, %8, %1
  %23 = phi i32 [ 1, %8 ], [ 1, %1 ], [ %21, %14 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Pose_IK_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !185 {
  %4 = load ptr, ptr %2, align 8, !tbaa !63
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #16
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  tail call void @BIK_clear_data(ptr noundef %6) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @rna_PoseChannel_location_editable(ptr nocapture noundef readonly %0, i32 noundef %1) #3 !PGOFuncName !186 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  switch i32 %1, label %20 [
    i32 0, label %5
    i32 1, label %10
    i32 2, label %15
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !135
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %20, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %12 = load i16, ptr %11, align 4, !tbaa !135
  %13 = and i16 %12, 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %20, label %21

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %17 = load i16, ptr %16, align 4, !tbaa !135
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10, %5, %2, %15
  br label %21

21:                                               ; preds = %15, %10, %5, %20
  %22 = phi i32 [ 1, %20 ], [ 0, %5 ], [ 0, %10 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @rna_PoseChannel_scale_editable(ptr nocapture noundef readonly %0, i32 noundef %1) #3 !PGOFuncName !187 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  switch i32 %1, label %20 [
    i32 0, label %5
    i32 1, label %10
    i32 2, label %15
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !135
  %8 = and i16 %7, 64
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %20, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %12 = load i16, ptr %11, align 4, !tbaa !135
  %13 = and i16 %12, 128
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %20, label %21

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %17 = load i16, ptr %16, align 4, !tbaa !135
  %18 = and i16 %17, 256
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10, %5, %2, %15
  br label %21

21:                                               ; preds = %15, %10, %5, %20
  %22 = phi i32 [ 1, %20 ], [ 0, %5 ], [ 0, %10 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @rna_PoseChannel_rotation_4d_editable(ptr nocapture noundef readonly %0, i32 noundef %1) #3 !PGOFuncName !188 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %6 = load i16, ptr %5, align 4, !tbaa !135
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = icmp ne i32 %1, 0
  %12 = and i32 %7, 512
  %13 = icmp eq i32 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  switch i32 %1, label %25 [
    i32 1, label %16
    i32 2, label %19
    i32 3, label %22
  ]

16:                                               ; preds = %15
  %17 = and i16 %6, 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %25, label %26

19:                                               ; preds = %15
  %20 = and i16 %6, 16
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %25, label %26

22:                                               ; preds = %15
  %23 = and i16 %6, 32
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %16, %15, %22, %2
  br label %26

26:                                               ; preds = %22, %19, %16, %10, %25
  %27 = phi i32 [ 1, %25 ], [ 0, %10 ], [ 0, %16 ], [ 0, %19 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @rna_PoseChannel_rotation_euler_editable(ptr nocapture noundef readonly %0, i32 noundef %1) #3 !PGOFuncName !189 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  switch i32 %1, label %20 [
    i32 0, label %5
    i32 1, label %10
    i32 2, label %15
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !135
  %8 = and i16 %7, 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %20, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %12 = load i16, ptr %11, align 4, !tbaa !135
  %13 = and i16 %12, 16
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %20, label %21

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 7
  %17 = load i16, ptr %16, align 4, !tbaa !135
  %18 = and i16 %17, 32
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10, %5, %2, %15
  br label %21

21:                                               ; preds = %15, %10, %5, %20
  %22 = phi i32 [ 1, %20 ], [ 0, %5 ], [ 0, %10 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_PoseChannel_bone_group_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !190 {
  %6 = load ptr, ptr %0, align 8, !tbaa !63
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 0, ptr %1, align 4, !tbaa !136
  br label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !133
  store i32 0, ptr %1, align 4, !tbaa !136
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bPose, ptr %11, i64 0, i32 9
  %15 = tail call i32 @BLI_countlist(ptr noundef nonnull %14) #16
  %16 = add nsw i32 %15, -1
  %17 = tail call fastcc i32 @max_ii(i32 noundef %16) #18
  br label %18

18:                                               ; preds = %8, %9, %13
  %19 = phi i32 [ %17, %13 ], [ 0, %9 ], [ 0, %8 ]
  store i32 %19, ptr %2, align 4, !tbaa !136
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_PoseBone_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !191 {
  %2 = alloca [128 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #17
  %5 = getelementptr inbounds %struct.bPoseChannel, ptr %4, i64 0, i32 4
  %6 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %5, i64 noundef 128) #16
  %7 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.328, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #17
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_PoseBone_idprops(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 !PGOFuncName !192 {
  %3 = alloca %union.IDPropertyTemplate, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp ne i8 %1, 0
  %7 = getelementptr inbounds %struct.bPoseChannel, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !193
  %9 = icmp eq ptr %8, null
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %12 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %3, ptr noundef nonnull @.str.329) #16
  store ptr %12, ptr %7, align 8, !tbaa !193
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi ptr [ %12, %11 ], [ %8, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @rna_IKParam_refine(ptr nocapture noundef readonly %0) #3 !PGOFuncName !194 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = load i32, ptr %3, align 4, !tbaa !144
  %5 = icmp eq i32 %4, 1
  %6 = select i1 %5, ptr @RNA_Itasc, ptr @RNA_IKParam
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Itasc_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !195 {
  %4 = load ptr, ptr %2, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.bItasc, ptr %6, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !146
  %9 = fcmp olt float %8, 0x3F1A36E2E0000000
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store float 0x3F1A36E2E0000000, ptr %7, align 4, !tbaa !146
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.bItasc, ptr %6, i64 0, i32 4
  %13 = load float, ptr %12, align 4, !tbaa !151
  %14 = fcmp olt float %13, 0x3F50624DE0000000
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store float 0x3F50624DE0000000, ptr %12, align 4, !tbaa !151
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi float [ 0x3F50624DE0000000, %15 ], [ %13, %11 ]
  %18 = getelementptr inbounds %struct.bItasc, ptr %6, i64 0, i32 5
  %19 = load float, ptr %18, align 4, !tbaa !152
  %20 = fcmp olt float %19, %17
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store float %17, ptr %18, align 4, !tbaa !152
  br label %22

22:                                               ; preds = %21, %16
  %23 = getelementptr inbounds %struct.bItasc, ptr %6, i64 0, i32 8
  %24 = load float, ptr %23, align 4, !tbaa !153
  %25 = fcmp olt float %24, 0x3F847AE140000000
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = fcmp ogt float %24, 1.000000e+02
  br i1 %27, label %28, label %30

28:                                               ; preds = %26, %22
  %29 = phi float [ 0x3F847AE140000000, %22 ], [ 1.000000e+02, %26 ]
  store float %29, ptr %23, align 4, !tbaa !153
  br label %30

30:                                               ; preds = %28, %26
  %31 = getelementptr inbounds %struct.bItasc, ptr %6, i64 0, i32 9
  %32 = load float, ptr %31, align 4, !tbaa !154
  %33 = fcmp olt float %32, 0x3F847AE140000000
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = fcmp ogt float %32, 1.000000e+02
  br i1 %35, label %36, label %38

36:                                               ; preds = %34, %30
  %37 = phi float [ 0x3F847AE140000000, %30 ], [ 1.000000e+02, %34 ]
  store float %37, ptr %31, align 4, !tbaa !154
  br label %38

38:                                               ; preds = %36, %34
  %39 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %40 = load ptr, ptr %39, align 8, !tbaa !133
  tail call void @BIK_update_param(ptr noundef %40) #16
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Itasc_update_rebuild(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !196 {
  %4 = load ptr, ptr %2, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  %7 = getelementptr inbounds %struct.bPose, ptr %6, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !176
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 8, !tbaa !176
  tail call void @rna_Itasc_update(ptr poison, ptr poison, ptr noundef nonnull %2) #18
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BIK_clear_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_ikparam_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_bone_rename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !197 {
  %3 = load float, ptr %1, align 4, !tbaa !98
  store float %3, ptr %0, align 4, !tbaa !98
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !98
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !98
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !98
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare void @BKE_rotMode_change_values(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pchan_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pchan_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_armature_mat_pose_to_bone_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_pose_channel_in_IK_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_constraints_active_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_constraints_active_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pose_add_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_remove_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @distfactor_to_bone(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_constraint_add_for_pose(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_constraint_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_object_constraint_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_update_constraint_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @object_test_constraints(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #14 !PGOFuncName !198 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BIK_update_param(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"PointerRNA", !36, i64 0, !37, i64 8, !37, i64 16}
!36 = !{!"", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !43, i64 36}
!41 = !{!"bActionGroup", !37, i64 0, !37, i64 8, !42, i64 16, !43, i64 32, !43, i64 36, !38, i64 40, !44, i64 104}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"int", !38, i64 0}
!44 = !{!"ThemeWireColor", !38, i64 0, !38, i64 4, !38, i64 8, !45, i64 12, !45, i64 14}
!45 = !{!"short", !38, i64 0}
!46 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47}
!47 = !{!37, !37, i64 0}
!48 = !{!49, !37, i64 48}
!49 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !43, i64 96, !43, i64 100, !35, i64 104, !43, i64 128}
!50 = !{!49, !43, i64 128}
!51 = !{!"rna_pose_gen.c:Pose_rna_properties_get"}
!52 = !{!"rna_pose_gen.c:Pose_bones_get"}
!53 = !{!54, !37, i64 16}
!54 = !{!"ListBaseIterator", !37, i64 0, !43, i64 8, !37, i64 16}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!58, !37, i64 0}
!58 = !{!"Link", !37, i64 0, !37, i64 8}
!59 = !{!54, !37, i64 0}
!60 = distinct !{!60, !56}
!61 = !{i32 0, i32 2}
!62 = !{!"rna_pose_gen.c:rna_PoseBones_lookup_string"}
!63 = !{!35, !37, i64 0}
!64 = !{!"rna_pose_gen.c:Pose_bone_groups_get"}
!65 = distinct !{!65, !56}
!66 = distinct !{!66, !56}
!67 = !{!49, !37, i64 120}
!68 = distinct !{!68, !56}
!69 = !{!70, !43, i64 84}
!70 = !{!"bPose", !42, i64 0, !37, i64 16, !45, i64 24, !45, i64 26, !43, i64 28, !43, i64 32, !71, i64 36, !38, i64 40, !38, i64 52, !42, i64 64, !43, i64 80, !43, i64 84, !37, i64 88, !37, i64 96, !72, i64 104, !38, i64 152}
!71 = !{!"float", !38, i64 0}
!72 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!73 = !{!"rna_pose_gen.c:rna_Pose_ik_solver_set"}
!74 = !{!70, !37, i64 96}
!75 = !{!"rna_pose_gen.c:rna_Pose_ikparam_get"}
!76 = !{!"rna_pose_gen.c:BoneGroups_rna_properties_get"}
!77 = !{!"rna_pose_gen.c:rna_Pose_active_bone_group_get"}
!78 = !{!70, !43, i64 80}
!79 = !{!"rna_pose_gen.c:rna_Pose_active_bone_group_set"}
!80 = !{i32 0, i32 -2147483648}
!81 = !{!"rna_pose_gen.c:rna_Pose_active_bone_group_index_get"}
!82 = !{!"rna_pose_gen.c:rna_Pose_active_bone_group_index_set"}
!83 = !{!"rna_pose_gen.c:PoseBone_rna_properties_get"}
!84 = !{!"rna_pose_gen.c:PoseBone_constraints_get"}
!85 = distinct !{!85, !56}
!86 = distinct !{!86, !56}
!87 = distinct !{!87, !56}
!88 = !{!"rna_pose_gen.c:rna_PoseChannel_name_set"}
!89 = !{!90, !37, i64 296}
!90 = !{!"Object", !91, i64 0, !37, i64 120, !37, i64 128, !45, i64 136, !45, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !72, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !43, i64 432, !43, i64 436, !37, i64 440, !37, i64 448, !43, i64 456, !43, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !71, i64 616, !71, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !43, i64 944, !45, i64 948, !45, i64 950, !45, i64 952, !45, i64 954, !45, i64 956, !45, i64 958, !45, i64 960, !45, i64 962, !45, i64 964, !38, i64 966, !38, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !71, i64 988, !71, i64 992, !71, i64 996, !71, i64 1000, !71, i64 1004, !71, i64 1008, !71, i64 1012, !71, i64 1016, !71, i64 1020, !71, i64 1024, !71, i64 1028, !71, i64 1032, !45, i64 1036, !45, i64 1038, !45, i64 1040, !38, i64 1042, !38, i64 1043, !45, i64 1044, !38, i64 1046, !38, i64 1047, !71, i64 1048, !71, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !71, i64 1120, !45, i64 1124, !45, i64 1126, !38, i64 1128, !43, i64 1144, !43, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !45, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !45, i64 1266, !71, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !92, i64 1304, !92, i64 1312, !43, i64 1320, !43, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!91 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !45, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !37, i64 112}
!92 = !{!"long", !38, i64 0}
!93 = !{!94, !37, i64 176}
!94 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !38, i64 40, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !42, i64 144, !42, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !71, i64 264, !45, i64 268, !45, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !71, i64 524, !71, i64 528, !71, i64 532, !37, i64 536}
!95 = !{!94, !37, i64 120}
!96 = !{!94, !37, i64 128}
!97 = !{!94, !37, i64 136}
!98 = !{!71, !71, i64 0}
!99 = distinct !{!99, !56}
!100 = distinct !{!100, !56}
!101 = distinct !{!101, !56}
!102 = distinct !{!102, !56}
!103 = distinct !{!103, !56}
!104 = distinct !{!104, !56}
!105 = !{!"rna_pose_gen.c:rna_PoseChannel_rotation_axis_angle_get"}
!106 = !{!94, !71, i64 264}
!107 = !{!"rna_pose_gen.c:rna_PoseChannel_rotation_axis_angle_set"}
!108 = distinct !{!108, !56}
!109 = distinct !{!109, !56}
!110 = !{!94, !45, i64 268}
!111 = !{!"rna_pose_gen.c:rna_PoseChannel_rotation_mode_set"}
!112 = distinct !{!112, !56}
!113 = !{!"rna_pose_gen.c:rna_PoseChannel_matrix_basis_get"}
!114 = !{!"rna_pose_gen.c:rna_PoseChannel_matrix_basis_set"}
!115 = distinct !{!115, !56}
!116 = !{!"rna_pose_gen.c:rna_PoseChannel_matrix_set"}
!117 = distinct !{!117, !56}
!118 = distinct !{!118, !56}
!119 = !{i32 0, i32 256}
!120 = !{!"rna_pose_gen.c:rna_PoseChannel_has_ik_get"}
!121 = !{!94, !45, i64 106}
!122 = !{!94, !71, i64 524}
!123 = !{!94, !71, i64 528}
!124 = !{!94, !71, i64 532}
!125 = !{!94, !37, i64 184}
!126 = !{!"rna_pose_gen.c:rna_PoseChannel_bone_custom_set"}
!127 = !{!94, !37, i64 192}
!128 = !{i32 0, i32 32767}
!129 = !{!"rna_pose_gen.c:rna_PoseChannel_bone_group_index_get"}
!130 = !{!94, !45, i64 110}
!131 = !{!"rna_pose_gen.c:rna_PoseChannel_bone_group_index_set"}
!132 = !{!"rna_pose_gen.c:rna_PoseChannel_bone_group_get"}
!133 = !{!90, !37, i64 288}
!134 = !{!"rna_pose_gen.c:rna_PoseChannel_bone_group_set"}
!135 = !{!94, !45, i64 108}
!136 = !{!43, !43, i64 0}
!137 = distinct !{!137, !56}
!138 = distinct !{!138, !56}
!139 = distinct !{!139, !56}
!140 = !{!"rna_pose_gen.c:PoseBoneConstraints_rna_properties_get"}
!141 = !{!"rna_pose_gen.c:rna_PoseChannel_active_constraint_get"}
!142 = !{!"rna_pose_gen.c:rna_PoseChannel_active_constraint_set"}
!143 = !{!"rna_pose_gen.c:IKParam_rna_properties_get"}
!144 = !{!145, !43, i64 0}
!145 = !{!"bIKParam", !43, i64 0}
!146 = !{!147, !71, i64 4}
!147 = !{!"bItasc", !43, i64 0, !71, i64 4, !45, i64 8, !45, i64 10, !71, i64 12, !71, i64 16, !45, i64 20, !45, i64 22, !71, i64 24, !71, i64 28, !71, i64 32, !71, i64 36}
!148 = !{!147, !45, i64 8}
!149 = !{!147, !45, i64 10}
!150 = !{!147, !45, i64 22}
!151 = !{!147, !71, i64 12}
!152 = !{!147, !71, i64 16}
!153 = !{!147, !71, i64 24}
!154 = !{!147, !71, i64 28}
!155 = !{!147, !45, i64 20}
!156 = !{!147, !71, i64 32}
!157 = !{!147, !71, i64 36}
!158 = !{!"rna_pose_gen.c:BoneGroup_rna_properties_get"}
!159 = !{!"rna_pose_gen.c:rna_BoneGroup_name_set"}
!160 = !{!"rna_pose_gen.c:rna_bone_group_new"}
!161 = !{!162, !37, i64 0}
!162 = !{!"ParameterList", !37, i64 0, !37, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!163 = !{!"rna_pose_gen.c:rna_bone_group_remove"}
!164 = !{!"rna_pose_gen.c:rna_PoseBone_do_envelope"}
!165 = !{!166, !43, i64 176}
!166 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !38, i64 48, !71, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !43, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !71, i64 268, !71, i64 272, !71, i64 276, !71, i64 280, !71, i64 284, !71, i64 288, !71, i64 292, !71, i64 296, !71, i64 300, !71, i64 304, !38, i64 308, !43, i64 320, !45, i64 324, !38, i64 326}
!167 = !{!166, !71, i64 276}
!168 = !{!166, !71, i64 300}
!169 = !{!166, !71, i64 304}
!170 = !{!166, !71, i64 272}
!171 = !{!"rna_pose_gen.c:rna_PoseChannel_constraints_new"}
!172 = !{!"rna_pose_gen.c:rna_PoseChannel_constraints_remove"}
!173 = !{!174, !45, i64 24}
!174 = !{!"bConstraint", !37, i64 0, !37, i64 8, !37, i64 16, !45, i64 24, !45, i64 26, !38, i64 28, !38, i64 29, !38, i64 30, !45, i64 94, !71, i64 96, !71, i64 100, !37, i64 104, !71, i64 112, !71, i64 116}
!175 = !{!"rna_pose_gen.c:rna_Pose_ik_solver_update"}
!176 = !{!70, !45, i64 24}
!177 = !{!"rna_pose_gen.c:rna_Pose_ikparam_typef"}
!178 = !{!"rna_pose_gen.c:rna_Pose_update"}
!179 = !{!"rna_pose_gen.c:rna_Pose_active_bone_group_index_range"}
!180 = !{!"rna_pose_gen.c:rna_PoseChannel_proxy_editable"}
!181 = !{!90, !37, i64 232}
!182 = !{!166, !43, i64 320}
!183 = !{!184, !43, i64 220}
!184 = !{!"bArmature", !91, i64 0, !37, i64 120, !42, i64 128, !42, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !45, i64 208, !45, i64 210, !43, i64 212, !43, i64 216, !43, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252}
!185 = !{!"rna_pose_gen.c:rna_Pose_IK_update"}
!186 = !{!"rna_pose_gen.c:rna_PoseChannel_location_editable"}
!187 = !{!"rna_pose_gen.c:rna_PoseChannel_scale_editable"}
!188 = !{!"rna_pose_gen.c:rna_PoseChannel_rotation_4d_editable"}
!189 = !{!"rna_pose_gen.c:rna_PoseChannel_rotation_euler_editable"}
!190 = !{!"rna_pose_gen.c:rna_PoseChannel_bone_group_index_range"}
!191 = !{!"rna_pose_gen.c:rna_PoseBone_path"}
!192 = !{!"rna_pose_gen.c:rna_PoseBone_idprops"}
!193 = !{!94, !37, i64 16}
!194 = !{!"rna_pose_gen.c:rna_IKParam_refine"}
!195 = !{!"rna_pose_gen.c:rna_Itasc_update"}
!196 = !{!"rna_pose_gen.c:rna_Itasc_update_rebuild"}
!197 = !{!"rna_pose_gen.c:copy_v3_v3"}
!198 = !{!"rna_pose_gen.c:max_ii"}
