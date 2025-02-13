; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_cloth_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_cloth_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ClothCollSettings = type { ptr, float, float, float, float, float, float, i32, i16, i16, ptr, i16, i16, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }

@rna_ClothSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_rna_type, ptr null, i32 -1, ptr @.str, i32 128, ptr @.str.1, ptr @.str.2, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_rna_properties_begin, ptr @ClothSettings_rna_properties_next, ptr @ClothSettings_rna_properties_end, ptr @ClothSettings_rna_properties_get, ptr null, ptr null, ptr @ClothSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_EffectorWeights = external global %struct.StructRNA, align 8
@rna_ClothCollisionSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothCollisionSettings_rna_type, ptr null, i32 -1, ptr @.str, i32 128, ptr @.str.1, ptr @.str.2, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothCollisionSettings_rna_properties_begin, ptr @ClothCollisionSettings_rna_properties_next, ptr @ClothCollisionSettings_rna_properties_end, ptr @ClothCollisionSettings_rna_properties_get, ptr null, ptr null, ptr @ClothCollisionSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Group = external global %struct.StructRNA, align 8
@rna_ClothSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_goal_min, ptr @rna_ClothSettings_rna_properties, i32 -1, ptr @.str.4, i32 8912896, ptr @.str.5, ptr @.str.6, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_ClothSettings_goal_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_goal_max, ptr @rna_ClothSettings_rna_type, i32 -1, ptr @.str.7, i32 8195, ptr @.str.8, ptr @.str.9, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @ClothSettings_goal_min_get, ptr @ClothSettings_goal_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_ClothSettings_goal_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_goal_default, ptr @rna_ClothSettings_goal_min, i32 -1, ptr @.str.10, i32 8195, ptr @.str.11, ptr @.str.12, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 76, i32 4, ptr null, ptr null }, ptr @ClothSettings_goal_max_get, ptr @ClothSettings_goal_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"goal_min\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Goal Minimum\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"Goal minimum, vertex group weights are scaled to match this range\00", align 1
@rna_ClothSettings_goal_default = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_goal_spring, ptr @rna_ClothSettings_goal_max, i32 -1, ptr @.str.13, i32 8195, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 92, i32 4, ptr null, ptr null }, ptr @ClothSettings_goal_default_get, ptr @ClothSettings_goal_default_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"goal_max\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"Goal Maximum\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"Goal maximum, vertex group weights are scaled to match this range\00", align 1
@rna_ClothSettings_goal_spring = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_goal_friction, ptr @rna_ClothSettings_goal_default, i32 -1, ptr @.str.16, i32 8195, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 96, i32 4, ptr null, ptr null }, ptr @ClothSettings_goal_spring_get, ptr @ClothSettings_goal_spring_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x3FEFF7CEE0000000, float 0.000000e+00, float 0x3FEFF7CEE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"goal_default\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Goal Default\00", align 1
@.str.15 = private unnamed_addr constant [71 x i8] c"Default Goal (vertex target position) value, when no Vertex Group used\00", align 1
@rna_ClothSettings_goal_friction = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_internal_friction, ptr @rna_ClothSettings_goal_spring, i32 -1, ptr @.str.19, i32 8195, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr @ClothSettings_goal_friction_get, ptr @ClothSettings_goal_friction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+01, float 0.000000e+00, float 5.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"goal_spring\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Goal Stiffness\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"Goal (vertex target position) spring stiffness\00", align 1
@rna_ClothSettings_internal_friction = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_collider_friction, ptr @rna_ClothSettings_goal_friction, i32 -1, ptr @.str.22, i32 8195, ptr @.str.23, ptr @.str.24, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 104, i32 4, ptr null, ptr null }, ptr @ClothSettings_internal_friction_get, ptr @ClothSettings_internal_friction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.19 = private unnamed_addr constant [14 x i8] c"goal_friction\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Goal Damping\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Goal (vertex target position) friction\00", align 1
@rna_ClothSettings_collider_friction = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_mass, ptr @rna_ClothSettings_internal_friction, i32 -1, ptr @.str.25, i32 8195, ptr @.str.26, ptr @.str.24, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 108, i32 4, ptr null, ptr null }, ptr @ClothSettings_collider_friction_get, ptr @ClothSettings_collider_friction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.22 = private unnamed_addr constant [18 x i8] c"internal_friction\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Internal Friction\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rna_ClothSettings_mass = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_vertex_group_mass, ptr @rna_ClothSettings_collider_friction, i32 -1, ptr @.str.27, i32 8195, ptr @.str.28, ptr @.str.29, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 36, i32 4, ptr null, ptr null }, ptr @ClothSettings_mass_get, ptr @ClothSettings_mass_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.25 = private unnamed_addr constant [18 x i8] c"collider_friction\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Collider Friction\00", align 1
@rna_ClothSettings_vertex_group_mass = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_gravity, ptr @rna_ClothSettings_mass, i32 -1, ptr @.str.30, i32 262145, ptr @.str.31, ptr @.str.32, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_pinning_changed, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_vertex_group_mass_get, ptr @ClothSettings_vertex_group_mass_length, ptr @ClothSettings_vertex_group_mass_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.24 }, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"mass\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"Mass\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Mass of cloth material\00", align 1
@rna_ClothSettings_gravity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_air_damping, ptr @rna_ClothSettings_vertex_group_mass, i32 -1, ptr @.str.33, i32 3, ptr @.str.34, ptr @.str.35, i32 0, ptr @.str.3, i32 2, i32 524312, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @ClothSettings_gravity_get, ptr @ClothSettings_gravity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float -1.000000e+02, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_ClothSettings_gravity_default }, align 8
@.str.30 = private unnamed_addr constant [18 x i8] c"vertex_group_mass\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Mass Vertex Group\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"Vertex Group for pinning of vertices\00", align 1
@rna_ClothSettings_air_damping = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_vel_damping, ptr @rna_ClothSettings_gravity, i32 -1, ptr @.str.36, i32 8195, ptr @.str.37, ptr @.str.38, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @ClothSettings_air_damping_get, ptr @ClothSettings_air_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.33 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"Gravity\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"Gravity or external force vector\00", align 1
@rna_ClothSettings_gravity_default = internal global [3 x float] zeroinitializer, align 4
@rna_ClothSettings_vel_damping = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_use_pin_cloth, ptr @rna_ClothSettings_air_damping, i32 -1, ptr @.str.39, i32 8195, ptr @.str.40, ptr @.str.41, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @ClothSettings_vel_damping_get, ptr @ClothSettings_vel_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.36 = private unnamed_addr constant [12 x i8] c"air_damping\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Air Damping\00", align 1
@.str.38 = private unnamed_addr constant [64 x i8] c"Air has normally some thickness which slows falling things down\00", align 1
@rna_ClothSettings_use_pin_cloth = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_pin_stiffness, ptr @rna_ClothSettings_vel_damping, i32 -1, ptr @.str.42, i32 1, ptr @.str.43, ptr @.str.44, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_pinning_changed, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_use_pin_cloth_get, ptr @ClothSettings_use_pin_cloth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.39 = private unnamed_addr constant [12 x i8] c"vel_damping\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"Velocity Damping\00", align 1
@.str.41 = private unnamed_addr constant [103 x i8] c"Damp velocity to help cloth reach the resting position faster (1.0 = no damping, 0.0 = fully dampened)\00", align 1
@rna_ClothSettings_pin_stiffness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_quality, ptr @rna_ClothSettings_use_pin_cloth, i32 -1, ptr @.str.45, i32 8195, ptr @.str.46, ptr @.str.47, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 96, i32 4, ptr null, ptr null }, ptr @ClothSettings_pin_stiffness_get, ptr @ClothSettings_pin_stiffness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+01, float 0.000000e+00, float 5.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.42 = private unnamed_addr constant [14 x i8] c"use_pin_cloth\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"Pin Cloth\00", align 1
@.str.44 = private unnamed_addr constant [60 x i8] c"Enable pinning of cloth vertices to other objects/positions\00", align 1
@rna_ClothSettings_quality = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_vertex_group_shrink, ptr @rna_ClothSettings_pin_stiffness, i32 -1, ptr @.str.48, i32 8195, ptr @.str.49, ptr @.str.50, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 124, i32 0, ptr null, ptr null }, ptr @ClothSettings_quality_get, ptr @ClothSettings_quality_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4, i32 80, i32 4, i32 80, i32 1, i32 0, ptr null }, align 8
@.str.45 = private unnamed_addr constant [14 x i8] c"pin_stiffness\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"Pin Stiffness\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"Pin (vertex target position) spring stiffness\00", align 1
@rna_ClothSettings_vertex_group_shrink = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_shrink_min, ptr @rna_ClothSettings_quality, i32 -1, ptr @.str.51, i32 262145, ptr @.str.52, ptr @.str.53, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_vertex_group_shrink_get, ptr @ClothSettings_vertex_group_shrink_length, ptr @ClothSettings_vertex_group_shrink_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.24 }, align 8
@.str.48 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"Quality\00", align 1
@.str.50 = private unnamed_addr constant [83 x i8] c"Quality of the simulation in steps per frame (higher is better quality but slower)\00", align 1
@rna_ClothSettings_shrink_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_shrink_max, ptr @rna_ClothSettings_vertex_group_shrink, i32 -1, ptr @.str.54, i32 8195, ptr @.str.55, ptr @.str.56, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 116, i32 4, ptr null, ptr null }, ptr @ClothSettings_shrink_min_get, ptr @ClothSettings_shrink_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.51 = private unnamed_addr constant [20 x i8] c"vertex_group_shrink\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Shrink Vertex Group\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"Vertex Group for shrinking cloth\00", align 1
@rna_ClothSettings_shrink_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_use_stiffness_scale, ptr @rna_ClothSettings_shrink_min, i32 -1, ptr @.str.57, i32 8195, ptr @.str.58, ptr @.str.59, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 120, i32 4, ptr null, ptr null }, ptr @ClothSettings_shrink_max_get, ptr @ClothSettings_shrink_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.54 = private unnamed_addr constant [11 x i8] c"shrink_min\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"Shrink Factor Min\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"Min amount to shrink cloth by\00", align 1
@rna_ClothSettings_use_stiffness_scale = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_spring_damping, ptr @rna_ClothSettings_shrink_max, i32 -1, ptr @.str.60, i32 1, ptr @.str.61, ptr @.str.62, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_use_stiffness_scale_get, ptr @ClothSettings_use_stiffness_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.57 = private unnamed_addr constant [11 x i8] c"shrink_max\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"Shrink Factor Max\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"Max amount to shrink cloth by\00", align 1
@rna_ClothSettings_spring_damping = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_structural_stiffness, ptr @rna_ClothSettings_use_stiffness_scale, i32 -1, ptr @.str.63, i32 8195, ptr @.str.64, ptr @.str.65, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @ClothSettings_spring_damping_get, ptr @ClothSettings_spring_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+01, float 0.000000e+00, float 5.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.60 = private unnamed_addr constant [20 x i8] c"use_stiffness_scale\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"Stiffness Scaling\00", align 1
@.str.62 = private unnamed_addr constant [72 x i8] c"If enabled, stiffness can be scaled along a weight painted vertex group\00", align 1
@rna_ClothSettings_structural_stiffness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_structural_stiffness_max, ptr @rna_ClothSettings_spring_damping, i32 -1, ptr @.str.66, i32 8195, ptr @.str.67, ptr @.str.68, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 40, i32 4, ptr null, ptr null }, ptr @ClothSettings_structural_stiffness_get, ptr @ClothSettings_structural_stiffness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+04, float 0.000000e+00, float 1.000000e+04, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.63 = private unnamed_addr constant [15 x i8] c"spring_damping\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"Spring Damping\00", align 1
@.str.65 = private unnamed_addr constant [64 x i8] c"Damping of cloth velocity (higher = more smooth, less jiggling)\00", align 1
@rna_ClothSettings_structural_stiffness_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_sewing_force_max, ptr @rna_ClothSettings_structural_stiffness, i32 -1, ptr @.str.69, i32 3, ptr @.str.70, ptr @.str.71, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_structural_stiffness_max_get, ptr @ClothSettings_structural_stiffness_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+04, float 0.000000e+00, float 1.000000e+04, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.66 = private unnamed_addr constant [21 x i8] c"structural_stiffness\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"Structural Stiffness\00", align 1
@.str.68 = private unnamed_addr constant [31 x i8] c"Overall stiffness of structure\00", align 1
@rna_ClothSettings_sewing_force_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_vertex_group_structural_stiffness, ptr @rna_ClothSettings_structural_stiffness_max, i32 -1, ptr @.str.72, i32 3, ptr @.str.73, ptr @.str.74, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_sewing_force_max_get, ptr @ClothSettings_sewing_force_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+04, float 0.000000e+00, float 1.000000e+04, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.69 = private unnamed_addr constant [25 x i8] c"structural_stiffness_max\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"Structural Stiffness Maximum\00", align 1
@.str.71 = private unnamed_addr constant [35 x i8] c"Maximum structural stiffness value\00", align 1
@rna_ClothSettings_vertex_group_structural_stiffness = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_bending_stiffness, ptr @rna_ClothSettings_sewing_force_max, i32 -1, ptr @.str.75, i32 262145, ptr @.str.76, ptr @.str.77, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_vertex_group_structural_stiffness_get, ptr @ClothSettings_vertex_group_structural_stiffness_length, ptr @ClothSettings_vertex_group_structural_stiffness_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.24 }, align 8
@.str.72 = private unnamed_addr constant [17 x i8] c"sewing_force_max\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"Sewing Force Max\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"Maximum sewing force\00", align 1
@rna_ClothSettings_bending_stiffness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_bending_stiffness_max, ptr @rna_ClothSettings_vertex_group_structural_stiffness, i32 -1, ptr @.str.78, i32 8195, ptr @.str.79, ptr @.str.80, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 48, i32 4, ptr null, ptr null }, ptr @ClothSettings_bending_stiffness_get, ptr @ClothSettings_bending_stiffness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+04, float 0.000000e+00, float 1.000000e+04, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.75 = private unnamed_addr constant [34 x i8] c"vertex_group_structural_stiffness\00", align 1
@.str.76 = private unnamed_addr constant [34 x i8] c"Structural Stiffness Vertex Group\00", align 1
@.str.77 = private unnamed_addr constant [56 x i8] c"Vertex group for fine control over structural stiffness\00", align 1
@rna_ClothSettings_bending_stiffness_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_use_sewing_springs, ptr @rna_ClothSettings_bending_stiffness, i32 -1, ptr @.str.81, i32 3, ptr @.str.82, ptr @.str.83, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_bending_stiffness_max_get, ptr @ClothSettings_bending_stiffness_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+04, float 0.000000e+00, float 1.000000e+04, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.78 = private unnamed_addr constant [18 x i8] c"bending_stiffness\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"Bending Stiffness\00", align 1
@.str.80 = private unnamed_addr constant [66 x i8] c"Wrinkle coefficient (higher = less smaller but more big wrinkles)\00", align 1
@rna_ClothSettings_use_sewing_springs = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_vertex_group_bending, ptr @rna_ClothSettings_bending_stiffness_max, i32 -1, ptr @.str.84, i32 1, ptr @.str.85, ptr @.str.86, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_use_sewing_springs_get, ptr @ClothSettings_use_sewing_springs_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.81 = private unnamed_addr constant [22 x i8] c"bending_stiffness_max\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"Bending Stiffness Maximum\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"Maximum bending stiffness value\00", align 1
@rna_ClothSettings_vertex_group_bending = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_effector_weights, ptr @rna_ClothSettings_use_sewing_springs, i32 -1, ptr @.str.87, i32 262145, ptr @.str.88, ptr @.str.89, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_vertex_group_bending_get, ptr @ClothSettings_vertex_group_bending_length, ptr @ClothSettings_vertex_group_bending_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.24 }, align 8
@.str.84 = private unnamed_addr constant [19 x i8] c"use_sewing_springs\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"Sew Cloth\00", align 1
@.str.86 = private unnamed_addr constant [27 x i8] c"Pulls loose edges together\00", align 1
@rna_ClothSettings_effector_weights = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_pre_roll, ptr @rna_ClothSettings_vertex_group_bending, i32 -1, ptr @.str.90, i32 8388608, ptr @.str.91, ptr @.str.24, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_effector_weights_get, ptr null, ptr null, ptr null, ptr @RNA_EffectorWeights }, align 8
@.str.87 = private unnamed_addr constant [21 x i8] c"vertex_group_bending\00", align 1
@.str.88 = private unnamed_addr constant [31 x i8] c"Bending Stiffness Vertex Group\00", align 1
@.str.89 = private unnamed_addr constant [53 x i8] c"Vertex group for fine control over bending stiffness\00", align 1
@rna_ClothSettings_pre_roll = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothSettings_rest_shape_key, ptr @rna_ClothSettings_effector_weights, i32 -1, ptr @.str.92, i32 8195, ptr @.str.93, ptr @.str.94, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_reset, i32 0, ptr null, ptr null, i32 132, i32 0, ptr null, ptr null }, ptr @ClothSettings_pre_roll_get, ptr @ClothSettings_pre_roll_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 300000, i32 0, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.90 = private unnamed_addr constant [17 x i8] c"effector_weights\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"Effector Weights\00", align 1
@rna_ClothSettings_rest_shape_key = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ClothSettings_pre_roll, i32 -1, ptr @.str.95, i32 8388609, ptr @.str.96, ptr @.str.97, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothSettings_rest_shape_key_get, ptr @ClothSettings_rest_shape_key_set, ptr null, ptr null, ptr @RNA_ShapeKey }, align 8
@.str.92 = private unnamed_addr constant [9 x i8] c"pre_roll\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"Pre Roll\00", align 1
@.str.94 = private unnamed_addr constant [71 x i8] c"Start simulation a number of frames earlier to let the cloth settle in\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"rest_shape_key\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"Rest Shape Key\00", align 1
@.str.97 = private unnamed_addr constant [46 x i8] c"Shape key to use the rest spring lengths from\00", align 1
@RNA_ShapeKey = external global %struct.StructRNA, align 8
@RNA_ClothCollisionSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CurveMapPoint, ptr @RNA_ClothSettings, ptr null, %struct.ListBase { ptr @rna_ClothCollisionSettings_rna_properties, ptr @rna_ClothCollisionSettings_vertex_group_self_collisions } }, ptr @.str.137, ptr null, ptr null, i32 4, ptr @.str.138, ptr @.str.139, ptr @.str.3, i32 17, ptr null, ptr @rna_ClothCollisionSettings_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ClothCollisionSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_Camera = external global %struct.StructRNA, align 8
@.str.98 = private unnamed_addr constant [14 x i8] c"ClothSettings\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"Cloth Settings\00", align 1
@.str.100 = private unnamed_addr constant [40 x i8] c"Cloth simulation settings for an object\00", align 1
@RNA_ClothSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ClothCollisionSettings, ptr @RNA_Camera, ptr null, %struct.ListBase { ptr @rna_ClothSettings_rna_properties, ptr @rna_ClothSettings_rest_shape_key } }, ptr @.str.98, ptr null, ptr null, i32 4, ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 17, ptr null, ptr @rna_ClothSettings_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ClothSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_ClothCollisionSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothCollisionSettings_use_collision, ptr @rna_ClothCollisionSettings_rna_properties, i32 -1, ptr @.str.4, i32 8912896, ptr @.str.5, ptr @.str.6, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothCollisionSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ClothCollisionSettings_use_collision = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothCollisionSettings_repel_force, ptr @rna_ClothCollisionSettings_rna_type, i32 -1, ptr @.str.101, i32 3, ptr @.str.102, ptr @.str.103, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothCollisionSettings_use_collision_get, ptr @ClothCollisionSettings_use_collision_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_ClothCollisionSettings_repel_force = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothCollisionSettings_distance_repel, ptr @rna_ClothCollisionSettings_use_collision, i32 -1, ptr @.str.104, i32 8195, ptr @.str.105, ptr @.str.106, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 24, i32 4, ptr null, ptr null }, ptr @ClothCollisionSettings_repel_force_get, ptr @ClothCollisionSettings_repel_force_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+01, float 0.000000e+00, float 2.000000e+01, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.101 = private unnamed_addr constant [14 x i8] c"use_collision\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"Enable Collision\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"Enable collisions with other objects\00", align 1
@rna_ClothCollisionSettings_distance_repel = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothCollisionSettings_distance_min, ptr @rna_ClothCollisionSettings_repel_force, i32 -1, ptr @.str.107, i32 8195, ptr @.str.108, ptr @.str.109, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 28, i32 4, ptr null, ptr null }, ptr @ClothCollisionSettings_distance_repel_get, ptr @ClothCollisionSettings_distance_repel_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+01, float 0x3F50624DE0000000, float 1.000000e+01, float 1.000000e+01, i32 3, float 0x3F747AE140000000, ptr null }, align 8
@.str.104 = private unnamed_addr constant [12 x i8] c"repel_force\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"Repulsion Force\00", align 1
@.str.106 = private unnamed_addr constant [58 x i8] c"Repulsion force to apply on cloth when close to colliding\00", align 1
@rna_ClothCollisionSettings_distance_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothCollisionSettings_friction, ptr @rna_ClothCollisionSettings_distance_repel, i32 -1, ptr @.str.110, i32 8195, ptr @.str.111, ptr @.str.112, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @ClothCollisionSettings_distance_min_get, ptr @ClothCollisionSettings_distance_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F50624DE0000000, float 1.000000e+00, float 0x3F50624DE0000000, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.107 = private unnamed_addr constant [15 x i8] c"distance_repel\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"Repulsion Distance\00", align 1
@.str.109 = private unnamed_addr constant [81 x i8] c"Maximum distance to apply repulsion force, must be greater than minimum distance\00", align 1
@rna_ClothCollisionSettings_friction = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothCollisionSettings_collision_quality, ptr @rna_ClothCollisionSettings_distance_min, i32 -1, ptr @.str.113, i32 8195, ptr @.str.114, ptr @.str.115, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @ClothCollisionSettings_friction_get, ptr @ClothCollisionSettings_friction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 8.000000e+01, float 0.000000e+00, float 8.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.110 = private unnamed_addr constant [13 x i8] c"distance_min\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"Minimum Distance\00", align 1
@.str.112 = private unnamed_addr constant [78 x i8] c"Minimum distance between collision objects before collision response takes in\00", align 1
@rna_ClothCollisionSettings_collision_quality = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothCollisionSettings_use_self_collision, ptr @rna_ClothCollisionSettings_friction, i32 -1, ptr @.str.116, i32 8195, ptr @.str.117, ptr @.str.118, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 38, i32 1, ptr null, ptr null }, ptr @ClothCollisionSettings_collision_quality_get, ptr @ClothCollisionSettings_collision_quality_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 20, i32 1, i32 20, i32 1, i32 0, ptr null }, align 8
@.str.113 = private unnamed_addr constant [9 x i8] c"friction\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"Friction\00", align 1
@.str.115 = private unnamed_addr constant [64 x i8] c"Friction force if a collision happened (higher = less movement)\00", align 1
@rna_ClothCollisionSettings_use_self_collision = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothCollisionSettings_self_distance_min, ptr @rna_ClothCollisionSettings_collision_quality, i32 -1, ptr @.str.119, i32 3, ptr @.str.120, ptr @.str.121, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothCollisionSettings_use_self_collision_get, ptr @ClothCollisionSettings_use_self_collision_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.116 = private unnamed_addr constant [18 x i8] c"collision_quality\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"Collision Quality\00", align 1
@.str.118 = private unnamed_addr constant [84 x i8] c"How many collision iterations should be done. (higher is better quality but slower)\00", align 1
@rna_ClothCollisionSettings_self_distance_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothCollisionSettings_self_friction, ptr @rna_ClothCollisionSettings_use_self_collision, i32 -1, ptr @.str.122, i32 8195, ptr @.str.123, ptr @.str.124, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @ClothCollisionSettings_self_distance_min_get, ptr @ClothCollisionSettings_self_distance_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 5.000000e-01, float 1.000000e+00, float 5.000000e-01, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.119 = private unnamed_addr constant [19 x i8] c"use_self_collision\00", align 1
@.str.120 = private unnamed_addr constant [22 x i8] c"Enable Self Collision\00", align 1
@.str.121 = private unnamed_addr constant [23 x i8] c"Enable self collisions\00", align 1
@rna_ClothCollisionSettings_self_friction = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothCollisionSettings_self_collision_quality, ptr @rna_ClothCollisionSettings_self_distance_min, i32 -1, ptr @.str.125, i32 8195, ptr @.str.126, ptr @.str.127, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @ClothCollisionSettings_self_friction_get, ptr @ClothCollisionSettings_self_friction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 8.000000e+01, float 0.000000e+00, float 8.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.122 = private unnamed_addr constant [18 x i8] c"self_distance_min\00", align 1
@.str.123 = private unnamed_addr constant [22 x i8] c"Self Minimum Distance\00", align 1
@.str.124 = private unnamed_addr constant [54 x i8] c"0.5 means no distance at all, 1.0 is maximum distance\00", align 1
@rna_ClothCollisionSettings_self_collision_quality = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothCollisionSettings_group, ptr @rna_ClothCollisionSettings_self_friction, i32 -1, ptr @.str.128, i32 8195, ptr @.str.129, ptr @.str.130, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 36, i32 1, ptr null, ptr null }, ptr @ClothCollisionSettings_self_collision_quality_get, ptr @ClothCollisionSettings_self_collision_quality_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 10, i32 1, i32 10, i32 1, i32 0, ptr null }, align 8
@.str.125 = private unnamed_addr constant [14 x i8] c"self_friction\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"Self Friction\00", align 1
@.str.127 = private unnamed_addr constant [35 x i8] c"Friction/damping with self contact\00", align 1
@rna_ClothCollisionSettings_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothCollisionSettings_vertex_group_self_collisions, ptr @rna_ClothCollisionSettings_self_collision_quality, i32 -1, ptr @.str.131, i32 8388609, ptr @.str.132, ptr @.str.133, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothCollisionSettings_group_get, ptr @ClothCollisionSettings_group_set, ptr null, ptr null, ptr @RNA_Group }, align 8
@.str.128 = private unnamed_addr constant [23 x i8] c"self_collision_quality\00", align 1
@.str.129 = private unnamed_addr constant [23 x i8] c"Self Collision Quality\00", align 1
@.str.130 = private unnamed_addr constant [88 x i8] c"How many self collision iterations should be done (higher is better quality but slower)\00", align 1
@rna_ClothCollisionSettings_vertex_group_self_collisions = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ClothCollisionSettings_group, i32 -1, ptr @.str.134, i32 262145, ptr @.str.135, ptr @.str.136, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_cloth_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothCollisionSettings_vertex_group_self_collisions_get, ptr @ClothCollisionSettings_vertex_group_self_collisions_length, ptr @ClothCollisionSettings_vertex_group_self_collisions_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.24 }, align 8
@.str.131 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"Collision Group\00", align 1
@.str.133 = private unnamed_addr constant [30 x i8] c"Limit colliders to this Group\00", align 1
@.str.134 = private unnamed_addr constant [29 x i8] c"vertex_group_self_collisions\00", align 1
@.str.135 = private unnamed_addr constant [27 x i8] c"Selfcollision Vertex Group\00", align 1
@.str.136 = private unnamed_addr constant [74 x i8] c"Vertex group to define vertices which are not used during self collisions\00", align 1
@RNA_CurveMapPoint = external global %struct.StructRNA, align 8
@.str.137 = private unnamed_addr constant [23 x i8] c"ClothCollisionSettings\00", align 1
@.str.138 = private unnamed_addr constant [25 x i8] c"Cloth Collision Settings\00", align 1
@.str.139 = private unnamed_addr constant [78 x i8] c"Cloth simulation settings for self collision and collision with other objects\00", align 1
@.str.140 = private unnamed_addr constant [25 x i8] c"modifiers[\22%s\22].settings\00", align 1
@.str.141 = private unnamed_addr constant [35 x i8] c"modifiers[\22%s\22].collision_settings\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ClothSettings_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #10
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @ClothSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
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
define internal void @ClothSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !45 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @ClothSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #10
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClothSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_goal_min_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !47
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_goal_min_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_goal_max_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 4, !tbaa !51
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_goal_max_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_goal_default_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 20
  %5 = load float, ptr %4, align 4, !tbaa !52
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_goal_default_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 20
  store float %8, ptr %9, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_goal_spring_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 21
  %5 = load float, ptr %4, align 8, !tbaa !53
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_goal_spring_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x3FEFF7CEE0000000
  %7 = select i1 %6, float 0x3FEFF7CEE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 21
  store float %8, ptr %9, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_goal_friction_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 22
  %5 = load float, ptr %4, align 4, !tbaa !54
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_goal_friction_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+01
  %7 = select i1 %6, float 5.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 22
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_internal_friction_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 23
  %5 = load float, ptr %4, align 8, !tbaa !55
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_internal_friction_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 23
  store float %8, ptr %9, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_collider_friction_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 24
  %5 = load float, ptr %4, align 4, !tbaa !56
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_collider_friction_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 24
  store float %8, ptr %9, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_mass_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 4, !tbaa !57
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_mass_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 6
  store float %8, ptr %9, align 4, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_vertex_group_mass_get(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_ClothSettings_mass_vgroup_get(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ClothSettings_mass_vgroup_get(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !58 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 34
  %6 = load i16, ptr %5, align 8, !tbaa !59
  %7 = sext i16 %6 to i32
  tail call void @rna_object_vgroup_name_index_get(ptr noundef %0, ptr noundef %1, i32 noundef %7) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClothSettings_vertex_group_mass_length(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @rna_ClothSettings_mass_vgroup_length(ptr noundef %0) #12
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_ClothSettings_mass_vgroup_length(ptr noundef %0) unnamed_addr #0 !PGOFuncName !60 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 34
  %5 = load i16, ptr %4, align 8, !tbaa !59
  %6 = sext i16 %5 to i32
  %7 = tail call i32 @rna_object_vgroup_name_index_length(ptr noundef %0, i32 noundef %6) #10
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_vertex_group_mass_set(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_ClothSettings_mass_vgroup_set(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ClothSettings_mass_vgroup_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !61 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 34
  tail call void @rna_object_vgroup_name_index_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_gravity_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  tail call fastcc void @rna_ClothSettings_gravity_get(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ClothSettings_gravity_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !PGOFuncName !62 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 4
  %6 = load float, ptr %5, align 4, !tbaa !63
  store float %6, ptr %1, align 4, !tbaa !63
  %7 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 4, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !63
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !63
  %10 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 4, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !63
  %12 = getelementptr inbounds float, ptr %1, i64 2
  store float %11, ptr %12, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_gravity_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  tail call fastcc void @rna_ClothSettings_gravity_set(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ClothSettings_gravity_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !64 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load float, ptr %1, align 4, !tbaa !63
  %6 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 4
  store float %5, ptr %6, align 4, !tbaa !63
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !63
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 4, i64 1
  store float %8, ptr %9, align 4, !tbaa !63
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !63
  %12 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 4, i64 2
  store float %11, ptr %12, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_air_damping_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 8, !tbaa !65
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_air_damping_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_vel_damping_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 25
  %5 = load float, ptr %4, align 8, !tbaa !66
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_vel_damping_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 25
  store float %8, ptr %9, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ClothSettings_use_pin_cloth_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 29
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_use_pin_cloth_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 29
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_pin_stiffness_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 21
  %5 = load float, ptr %4, align 8, !tbaa !53
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_pin_stiffness_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+01
  %7 = select i1 %6, float 5.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 21
  store float %8, ptr %9, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ClothSettings_quality_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 28
  %5 = load i32, ptr %4, align 4, !tbaa !68
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_quality_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 80)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 4)
  %7 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 28
  store i32 %6, ptr %7, align 4, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_vertex_group_shrink_get(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_ClothSettings_shrink_vgroup_get(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ClothSettings_shrink_vgroup_get(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !69 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 36
  %6 = load i16, ptr %5, align 4, !tbaa !70
  %7 = sext i16 %6 to i32
  tail call void @rna_object_vgroup_name_index_get(ptr noundef %0, ptr noundef %1, i32 noundef %7) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClothSettings_vertex_group_shrink_length(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @rna_ClothSettings_shrink_vgroup_length(ptr noundef %0) #12
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_ClothSettings_shrink_vgroup_length(ptr noundef %0) unnamed_addr #0 !PGOFuncName !71 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 36
  %5 = load i16, ptr %4, align 4, !tbaa !70
  %6 = sext i16 %5 to i32
  %7 = tail call i32 @rna_object_vgroup_name_index_length(ptr noundef %0, i32 noundef %6) #10
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_vertex_group_shrink_set(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_ClothSettings_shrink_vgroup_set(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ClothSettings_shrink_vgroup_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !72 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 36
  tail call void @rna_object_vgroup_name_index_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_shrink_min_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 26
  %5 = load float, ptr %4, align 4, !tbaa !73
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_shrink_min_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 26
  store float %8, ptr %9, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_shrink_max_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 27
  %5 = load float, ptr %4, align 8, !tbaa !74
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_shrink_max_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 27
  store float %8, ptr %9, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ClothSettings_use_stiffness_scale_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 29
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_use_stiffness_scale_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 29
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = and i32 %7, -257
  %9 = select i1 %5, i32 0, i32 256
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_spring_damping_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !75
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_spring_damping_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+01
  %7 = select i1 %6, float 5.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_structural_stiffness_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 8, !tbaa !76
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_structural_stiffness_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+04
  %7 = select i1 %6, float 1.000000e+04, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 7
  store float %8, ptr %9, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_structural_stiffness_max_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 8, !tbaa !77
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_structural_stiffness_max_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_ClothSettings_max_struct_set(ptr noundef %0, float noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ClothSettings_max_struct_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 7
  %6 = load float, ptr %5, align 8, !tbaa !76
  %7 = fcmp ogt float %6, %1
  %8 = select i1 %7, float %6, float %1
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 11
  store float %8, ptr %9, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_sewing_force_max_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 8, !tbaa !79
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_sewing_force_max_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  tail call fastcc void @rna_ClothSettings_max_sewing_set(ptr noundef %0, float noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ClothSettings_max_sewing_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #6 !PGOFuncName !80 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = select i1 %5, float 0.000000e+00, float %1
  %7 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 13
  store float %6, ptr %7, align 8, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_vertex_group_structural_stiffness_get(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_ClothSettings_struct_vgroup_get(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ClothSettings_struct_vgroup_get(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !81 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 35
  %6 = load i16, ptr %5, align 2, !tbaa !82
  %7 = sext i16 %6 to i32
  tail call void @rna_object_vgroup_name_index_get(ptr noundef %0, ptr noundef %1, i32 noundef %7) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClothSettings_vertex_group_structural_stiffness_length(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @rna_ClothSettings_struct_vgroup_length(ptr noundef %0) #12
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_ClothSettings_struct_vgroup_length(ptr noundef %0) unnamed_addr #0 !PGOFuncName !83 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 35
  %5 = load i16, ptr %4, align 2, !tbaa !82
  %6 = sext i16 %5 to i32
  %7 = tail call i32 @rna_object_vgroup_name_index_length(ptr noundef %0, i32 noundef %6) #10
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_vertex_group_structural_stiffness_set(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_ClothSettings_struct_vgroup_set(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ClothSettings_struct_vgroup_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 35
  tail call void @rna_object_vgroup_name_index_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_bending_stiffness_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 8, !tbaa !85
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_bending_stiffness_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+04
  %7 = select i1 %6, float 1.000000e+04, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 9
  store float %8, ptr %9, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothSettings_bending_stiffness_max_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !86
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_bending_stiffness_max_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_ClothSettings_max_bend_set(ptr noundef %0, float noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ClothSettings_max_bend_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !87 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 9
  %6 = load float, ptr %5, align 8, !tbaa !85
  %7 = fcmp ogt float %6, %1
  %8 = select i1 %7, float %6, float %1
  %9 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ClothSettings_use_sewing_springs_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 29
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = lshr i32 %5, 14
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_use_sewing_springs_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 29
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = and i32 %7, -16385
  %9 = select i1 %5, i32 0, i32 16384
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_vertex_group_bending_get(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_ClothSettings_bend_vgroup_get(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ClothSettings_bend_vgroup_get(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !88 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 33
  %6 = load i16, ptr %5, align 2, !tbaa !89
  %7 = sext i16 %6 to i32
  tail call void @rna_object_vgroup_name_index_get(ptr noundef %0, ptr noundef %1, i32 noundef %7) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClothSettings_vertex_group_bending_length(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @rna_ClothSettings_bend_vgroup_length(ptr noundef %0) #12
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_ClothSettings_bend_vgroup_length(ptr noundef %0) unnamed_addr #0 !PGOFuncName !90 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 33
  %5 = load i16, ptr %4, align 2, !tbaa !89
  %6 = sext i16 %5 to i32
  %7 = tail call i32 @rna_object_vgroup_name_index_length(ptr noundef %0, i32 noundef %6) #10
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_vertex_group_bending_set(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_ClothSettings_bend_vgroup_set(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ClothSettings_bend_vgroup_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !91 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 33
  tail call void @rna_object_vgroup_name_index_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_effector_weights_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 41
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_EffectorWeights, ptr noundef %6) #10
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ClothSettings_pre_roll_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothSimSettings, ptr %3, i64 0, i32 30
  %5 = load i32, ptr %4, align 4, !tbaa !93
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothSettings_pre_roll_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 30
  store i32 %6, ptr %7, align 4, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_rest_shape_key_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @rna_ClothSettings_rest_shape_key_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ClothSettings_rest_shape_key_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !94 {
  %3 = load ptr, ptr %1, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.ClothSimSettings, ptr %5, i64 0, i32 37
  %9 = load i16, ptr %8, align 2, !tbaa !102
  %10 = sext i16 %9 to i32
  tail call void @rna_object_shapekey_index_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %7, i32 noundef %10) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothSettings_rest_shape_key_set(ptr nocapture noundef readonly %0, ptr noundef byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_ClothSettings_rest_shape_key_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ClothSettings_rest_shape_key_set(ptr nocapture noundef readonly %0, ptr noundef byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !103 {
  %3 = load ptr, ptr %0, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.ClothSimSettings, ptr %5, i64 0, i32 37
  %9 = load i16, ptr %8, align 2, !tbaa !102
  %10 = sext i16 %9 to i32
  %11 = tail call i32 @rna_object_shapekey_index_set(ptr noundef %7, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1, i32 noundef %10) #10
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %8, align 2, !tbaa !102
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothCollisionSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ClothCollisionSettings_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #10
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @ClothCollisionSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ClothCollisionSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !104 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothCollisionSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @ClothCollisionSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothCollisionSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClothCollisionSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothCollisionSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ClothCollisionSettings_use_collision_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothCollSettings, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !105
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothCollisionSettings_use_collision_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !105
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothCollisionSettings_repel_force_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothCollSettings, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !107
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothCollisionSettings_repel_force_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothCollisionSettings_distance_repel_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothCollSettings, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 4, !tbaa !108
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothCollisionSettings_distance_repel_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 6
  store float %8, ptr %9, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothCollisionSettings_distance_min_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothCollSettings, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !109
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothCollisionSettings_distance_min_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0x3F50624DE0000000
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0x3F50624DE0000000, float %7
  %9 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothCollisionSettings_friction_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothCollSettings, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 8, !tbaa !110
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothCollisionSettings_friction_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 8.000000e+01
  %7 = select i1 %6, float 8.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ClothCollisionSettings_collision_quality_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothCollSettings, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 2, !tbaa !111
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothCollisionSettings_collision_quality_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 20)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 9
  store i16 %7, ptr %8, align 2, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ClothCollisionSettings_use_self_collision_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothCollSettings, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !105
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothCollisionSettings_use_self_collision_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !105
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothCollisionSettings_self_distance_min_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothCollSettings, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 4, !tbaa !112
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothCollisionSettings_self_distance_min_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 5.000000e-01
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 5.000000e-01, float %7
  %9 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 4, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ClothCollisionSettings_self_friction_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothCollSettings, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !113
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothCollisionSettings_self_friction_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 8.000000e+01
  %7 = select i1 %6, float 8.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ClothCollisionSettings_self_collision_quality_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothCollSettings, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !114
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ClothCollisionSettings_self_collision_quality_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 8
  store i16 %7, ptr %8, align 4, !tbaa !114
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothCollisionSettings_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Group, ptr noundef %6) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothCollisionSettings_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #10
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 10
  store ptr %6, ptr %10, align 8, !tbaa !115
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothCollisionSettings_vertex_group_self_collisions_get(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_CollSettings_selfcol_vgroup_get(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_CollSettings_selfcol_vgroup_get(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !116 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 11
  %6 = load i16, ptr %5, align 8, !tbaa !117
  %7 = sext i16 %6 to i32
  tail call void @rna_object_vgroup_name_index_get(ptr noundef %0, ptr noundef %1, i32 noundef %7) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ClothCollisionSettings_vertex_group_self_collisions_length(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @rna_CollSettings_selfcol_vgroup_length(ptr noundef %0) #12
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_CollSettings_selfcol_vgroup_length(ptr noundef %0) unnamed_addr #0 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.ClothCollSettings, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 8, !tbaa !117
  %6 = sext i16 %5 to i32
  %7 = tail call i32 @rna_object_vgroup_name_index_length(ptr noundef %0, i32 noundef %6) #10
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ClothCollisionSettings_vertex_group_self_collisions_set(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_CollSettings_selfcol_vgroup_set(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_CollSettings_selfcol_vgroup_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !119 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ClothCollSettings, ptr %4, i64 0, i32 11
  tail call void @rna_object_vgroup_name_index_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_cloth_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !120 {
  %4 = load ptr, ptr %2, align 8, !tbaa !95
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #10
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_cloth_pinning_changed(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !121 {
  %4 = load ptr, ptr %2, align 8, !tbaa !95
  %5 = tail call ptr @modifiers_findByType(ptr noundef %4, i32 noundef 22) #10
  tail call void @cloth_free_modifier(ptr noundef %5) #10
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #10
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_cloth_reset(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !122 {
  %4 = load ptr, ptr %2, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.ClothSimSettings, ptr %6, i64 0, i32 39
  store i16 1, ptr %7, align 2, !tbaa !123
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #10
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ClothSettings_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !124 {
  %2 = alloca [128 x i8], align 16
  %3 = load ptr, ptr %0, align 8, !tbaa !95
  %4 = tail call ptr @modifiers_findByType(ptr noundef %3, i32 noundef 22) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #11
  %7 = getelementptr inbounds %struct.ModifierData, ptr %4, i64 0, i32 6
  %8 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %7, i64 noundef 128) #10
  %9 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.140, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #11
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi ptr [ %9, %6 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ClothCollisionSettings_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !125 {
  %2 = alloca [128 x i8], align 16
  %3 = load ptr, ptr %0, align 8, !tbaa !95
  %4 = tail call ptr @modifiers_findByType(ptr noundef %3, i32 noundef 22) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #11
  %7 = getelementptr inbounds %struct.ModifierData, ptr %4, i64 0, i32 6
  %8 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %7, i64 noundef 128) #10
  %9 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.141, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #11
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi ptr [ %9, %6 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rna_object_vgroup_name_index_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rna_object_vgroup_name_index_length(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rna_object_vgroup_name_index_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rna_object_shapekey_index_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rna_object_shapekey_index_set(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cloth_free_modifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }

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
!45 = !{!"rna_cloth_gen.c:ClothSettings_rna_properties_get"}
!46 = !{!41, !36, i64 16}
!47 = !{!48, !49, i64 8}
!48 = !{!"ClothSimSettings", !36, i64 0, !49, i64 8, !49, i64 12, !49, i64 16, !37, i64 20, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !49, i64 56, !49, i64 60, !49, i64 64, !49, i64 68, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84, !49, i64 88, !49, i64 92, !49, i64 96, !49, i64 100, !49, i64 104, !49, i64 108, !49, i64 112, !49, i64 116, !49, i64 120, !43, i64 124, !43, i64 128, !43, i64 132, !43, i64 136, !50, i64 140, !50, i64 142, !50, i64 144, !50, i64 146, !50, i64 148, !50, i64 150, !50, i64 152, !50, i64 154, !37, i64 156, !36, i64 160}
!49 = !{!"float", !37, i64 0}
!50 = !{!"short", !37, i64 0}
!51 = !{!48, !49, i64 76}
!52 = !{!48, !49, i64 92}
!53 = !{!48, !49, i64 96}
!54 = !{!48, !49, i64 100}
!55 = !{!48, !49, i64 104}
!56 = !{!48, !49, i64 108}
!57 = !{!48, !49, i64 36}
!58 = !{!"rna_cloth_gen.c:rna_ClothSettings_mass_vgroup_get"}
!59 = !{!48, !50, i64 144}
!60 = !{!"rna_cloth_gen.c:rna_ClothSettings_mass_vgroup_length"}
!61 = !{!"rna_cloth_gen.c:rna_ClothSettings_mass_vgroup_set"}
!62 = !{!"rna_cloth_gen.c:rna_ClothSettings_gravity_get"}
!63 = !{!49, !49, i64 0}
!64 = !{!"rna_cloth_gen.c:rna_ClothSettings_gravity_set"}
!65 = !{!48, !49, i64 16}
!66 = !{!48, !49, i64 112}
!67 = !{!48, !43, i64 128}
!68 = !{!48, !43, i64 124}
!69 = !{!"rna_cloth_gen.c:rna_ClothSettings_shrink_vgroup_get"}
!70 = !{!48, !50, i64 148}
!71 = !{!"rna_cloth_gen.c:rna_ClothSettings_shrink_vgroup_length"}
!72 = !{!"rna_cloth_gen.c:rna_ClothSettings_shrink_vgroup_set"}
!73 = !{!48, !49, i64 116}
!74 = !{!48, !49, i64 120}
!75 = !{!48, !49, i64 12}
!76 = !{!48, !49, i64 40}
!77 = !{!48, !49, i64 56}
!78 = !{!"rna_cloth_gen.c:rna_ClothSettings_max_struct_set"}
!79 = !{!48, !49, i64 64}
!80 = !{!"rna_cloth_gen.c:rna_ClothSettings_max_sewing_set"}
!81 = !{!"rna_cloth_gen.c:rna_ClothSettings_struct_vgroup_get"}
!82 = !{!48, !50, i64 146}
!83 = !{!"rna_cloth_gen.c:rna_ClothSettings_struct_vgroup_length"}
!84 = !{!"rna_cloth_gen.c:rna_ClothSettings_struct_vgroup_set"}
!85 = !{!48, !49, i64 48}
!86 = !{!48, !49, i64 52}
!87 = !{!"rna_cloth_gen.c:rna_ClothSettings_max_bend_set"}
!88 = !{!"rna_cloth_gen.c:rna_ClothSettings_bend_vgroup_get"}
!89 = !{!48, !50, i64 142}
!90 = !{!"rna_cloth_gen.c:rna_ClothSettings_bend_vgroup_length"}
!91 = !{!"rna_cloth_gen.c:rna_ClothSettings_bend_vgroup_set"}
!92 = !{!48, !36, i64 160}
!93 = !{!48, !43, i64 132}
!94 = !{!"rna_cloth_gen.c:rna_ClothSettings_rest_shape_key_get"}
!95 = !{!41, !36, i64 0}
!96 = !{!97, !36, i64 296}
!97 = !{!"Object", !98, i64 0, !36, i64 120, !36, i64 128, !50, i64 136, !50, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !99, i64 312, !36, i64 360, !100, i64 368, !100, i64 384, !100, i64 400, !100, i64 416, !43, i64 432, !43, i64 436, !36, i64 440, !36, i64 448, !43, i64 456, !43, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !49, i64 616, !49, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !43, i64 944, !50, i64 948, !50, i64 950, !50, i64 952, !50, i64 954, !50, i64 956, !50, i64 958, !50, i64 960, !50, i64 962, !50, i64 964, !37, i64 966, !37, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !50, i64 1036, !50, i64 1038, !50, i64 1040, !37, i64 1042, !37, i64 1043, !50, i64 1044, !37, i64 1046, !37, i64 1047, !49, i64 1048, !49, i64 1052, !100, i64 1056, !100, i64 1072, !100, i64 1088, !100, i64 1104, !49, i64 1120, !50, i64 1124, !50, i64 1126, !37, i64 1128, !43, i64 1144, !43, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !50, i64 1162, !37, i64 1164, !100, i64 1176, !100, i64 1192, !100, i64 1208, !100, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !50, i64 1266, !49, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !101, i64 1304, !101, i64 1312, !43, i64 1320, !43, i64 1324, !100, i64 1328, !100, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !100, i64 1400, !36, i64 1416}
!98 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !50, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!99 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !50, i64 16, !50, i64 18, !50, i64 20, !50, i64 22, !50, i64 24, !50, i64 26, !50, i64 28, !50, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!100 = !{!"ListBase", !36, i64 0, !36, i64 8}
!101 = !{!"long", !37, i64 0}
!102 = !{!48, !50, i64 150}
!103 = !{!"rna_cloth_gen.c:rna_ClothSettings_rest_shape_key_set"}
!104 = !{!"rna_cloth_gen.c:ClothCollisionSettings_rna_properties_get"}
!105 = !{!106, !43, i64 32}
!106 = !{!"ClothCollSettings", !36, i64 0, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !43, i64 32, !50, i64 36, !50, i64 38, !36, i64 40, !50, i64 48, !50, i64 50, !43, i64 52}
!107 = !{!106, !49, i64 24}
!108 = !{!106, !49, i64 28}
!109 = !{!106, !49, i64 8}
!110 = !{!106, !49, i64 16}
!111 = !{!106, !50, i64 38}
!112 = !{!106, !49, i64 20}
!113 = !{!106, !49, i64 12}
!114 = !{!106, !50, i64 36}
!115 = !{!106, !36, i64 40}
!116 = !{!"rna_cloth_gen.c:rna_CollSettings_selfcol_vgroup_get"}
!117 = !{!106, !50, i64 48}
!118 = !{!"rna_cloth_gen.c:rna_CollSettings_selfcol_vgroup_length"}
!119 = !{!"rna_cloth_gen.c:rna_CollSettings_selfcol_vgroup_set"}
!120 = !{!"rna_cloth_gen.c:rna_cloth_update"}
!121 = !{!"rna_cloth_gen.c:rna_cloth_pinning_changed"}
!122 = !{!"rna_cloth_gen.c:rna_cloth_reset"}
!123 = !{!48, !50, i64 154}
!124 = !{!"rna_cloth_gen.c:rna_ClothSettings_path"}
!125 = !{!"rna_cloth_gen.c:rna_ClothCollisionSettings_path"}
