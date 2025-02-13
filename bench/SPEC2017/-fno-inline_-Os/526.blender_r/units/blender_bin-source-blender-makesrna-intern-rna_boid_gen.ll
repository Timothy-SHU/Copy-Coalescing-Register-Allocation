; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_boid_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_boid_gen.c"
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
%struct.BoidRule = type { ptr, ptr, i32, i32, [32 x i8] }
%struct.BoidRuleGoalAvoid = type { %struct.BoidRule, ptr, i32, float, i32, i32 }
%struct.BoidRuleAvoidCollision = type { %struct.BoidRule, i32, float }
%struct.BoidRuleFollowLeader = type { %struct.BoidRule, ptr, [3 x float], [3 x float], float, float, i32, i32 }
%struct.BoidRuleAverageSpeed = type { %struct.BoidRule, float, float, float, float }
%struct.BoidRuleFight = type { %struct.BoidRule, float, float }
%struct.BoidState = type { ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, [32 x i8], i32, i32, i32, float, i32, i32, float, float }
%struct.BoidSettings = type { i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.ListBase }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [5 x i8] c"GOAL\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Goal\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Go to assigned object or loudest assigned signal source\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"AVOID\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Avoid\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Get away from assigned object or loudest assigned signal source\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"AVOID_COLLISION\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Avoid Collision\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"Maneuver to avoid collisions with other boids and deflector objects in near future\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"SEPARATE\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Separate\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Keep from going through other boids\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"FLOCK\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Flock\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"Move to center of neighbors and match their velocity\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"FOLLOW_LEADER\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Follow Leader\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Follow a boid or assigned object\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"AVERAGE_SPEED\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Average Speed\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Maintain speed, flight level or wander\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"FIGHT\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Fight\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"Go to closest enemy and attack when in range\00", align 1
@boidrule_type_items = dso_local local_unnamed_addr global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 3, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 4, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 5, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 6, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 7, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 8, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.23 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_BoidRule_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRule_rna_type, ptr null, i32 -1, ptr @.str.25, i32 128, ptr @.str.26, ptr @.str.27, i32 0, ptr @.str.28, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRule_rna_properties_begin, ptr @BoidRule_rna_properties_next, ptr @BoidRule_rna_properties_end, ptr @BoidRule_rna_properties_get, ptr null, ptr null, ptr @BoidRule_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@rna_BoidState_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidState_rna_type, ptr null, i32 -1, ptr @.str.25, i32 128, ptr @.str.26, ptr @.str.27, i32 0, ptr @.str.28, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidState_rna_properties_begin, ptr @BoidState_rna_properties_next, ptr @BoidState_rna_properties_end, ptr @BoidState_rna_properties_get, ptr null, ptr null, ptr @BoidState_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BoidState_rules = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidState_active_boid_rule, ptr @rna_BoidState_ruleset_type, i32 -1, ptr @.str.99, i32 0, ptr @.str.100, ptr @.str.35, i32 0, ptr @.str.28, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidState_rules_begin, ptr @BoidState_rules_next, ptr @BoidState_rules_end, ptr @BoidState_rules_get, ptr null, ptr @BoidState_rules_lookup_int, ptr @BoidState_rules_lookup_string, ptr null, ptr @RNA_BoidRule }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@rna_BoidSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_rna_type, ptr null, i32 -1, ptr @.str.25, i32 128, ptr @.str.26, ptr @.str.27, i32 0, ptr @.str.28, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidSettings_rna_properties_begin, ptr @BoidSettings_rna_properties_next, ptr @BoidSettings_rna_properties_end, ptr @BoidSettings_rna_properties_get, ptr null, ptr null, ptr @BoidSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_BoidSettings_states = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_active_boid_state, ptr @rna_BoidSettings_height, i32 -1, ptr @.str.126, i32 0, ptr @.str.127, ptr @.str.35, i32 0, ptr @.str.28, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidSettings_states_begin, ptr @BoidSettings_states_next, ptr @BoidSettings_states_end, ptr @BoidSettings_states_get, ptr null, ptr @BoidSettings_states_lookup_int, ptr @BoidSettings_states_lookup_string, ptr null, ptr @RNA_BoidState }, align 8
@rna_BoidRule_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRule_name, ptr @rna_BoidRule_rna_properties, i32 -1, ptr @.str.29, i32 8912896, ptr @.str.30, ptr @.str.31, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRule_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.25 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_BoidRule_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRule_type, ptr @rna_BoidRule_rna_type, i32 -1, ptr @.str.32, i32 262145, ptr @.str.33, ptr @.str.34, i32 0, ptr @.str.28, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 32, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRule_name_get, ptr @BoidRule_name_length, ptr @BoidRule_name_set, ptr null, ptr null, ptr null, i32 32, ptr @.str.35 }, align 8
@.str.29 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_BoidRule_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRule_use_in_air, ptr @rna_BoidRule_name, i32 -1, ptr @.str.36, i32 2, ptr @.str.37, ptr @.str.35, i32 0, ptr @.str.28, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRule_type_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_BoidRule_type_items, i32 8, i32 1 }, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"Boid rule name\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rna_BoidRule_use_in_air = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRule_use_on_land, ptr @rna_BoidRule_type, i32 -1, ptr @.str.38, i32 3, ptr @.str.39, ptr @.str.40, i32 0, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRule_use_in_air_get, ptr @BoidRule_use_in_air_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.36 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@rna_BoidRule_type_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 3, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 4, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 5, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 6, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 7, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 8, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.23 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_BoidRule_use_on_land = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BoidRule_use_in_air, i32 -1, ptr @.str.41, i32 3, ptr @.str.42, ptr @.str.43, i32 0, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRule_use_on_land_get, ptr @BoidRule_use_on_land_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.38 = private unnamed_addr constant [11 x i8] c"use_in_air\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"In Air\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"Use rule when boid is flying\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"use_on_land\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"On Land\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"Use rule when boid is on land\00", align 1
@RNA_BoidRuleGoal = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BoidRuleAvoid, ptr @RNA_BoidRule, ptr null, %struct.ListBase { ptr @rna_BoidRuleGoal_object, ptr @rna_BoidRuleGoal_use_predict } }, ptr @.str.52, ptr null, ptr null, i32 4, ptr @.str.1, ptr @.str.35, ptr @.str.28, i32 17, ptr @rna_BoidRule_name, ptr @rna_BoidRule_rna_properties, ptr @RNA_BoidRule, ptr null, ptr @rna_BoidRule_refine, ptr @rna_BoidRule_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_EditBone = external global %struct.StructRNA, align 8
@.str.44 = private unnamed_addr constant [9 x i8] c"BoidRule\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"Boid Rule\00", align 1
@RNA_BoidRule = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BoidRuleGoal, ptr @RNA_EditBone, ptr null, %struct.ListBase { ptr @rna_BoidRule_rna_properties, ptr @rna_BoidRule_use_on_land } }, ptr @.str.44, ptr null, ptr null, i32 4, ptr @.str.45, ptr @.str.35, ptr @.str.28, i32 17, ptr @rna_BoidRule_name, ptr @rna_BoidRule_rna_properties, ptr null, ptr null, ptr @rna_BoidRule_refine, ptr @rna_BoidRule_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_BoidRuleGoal_use_predict = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BoidRuleGoal_object, i32 -1, ptr @.str.49, i32 3, ptr @.str.50, ptr @.str.51, i32 0, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRuleGoal_use_predict_get, ptr @BoidRuleGoal_use_predict_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.46 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Goal object\00", align 1
@rna_BoidRuleGoal_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRuleGoal_use_predict, ptr null, i32 -1, ptr @.str.46, i32 8388609, ptr @.str.47, ptr @.str.48, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset_deps, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRuleGoal_object_get, ptr @BoidRuleGoal_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.49 = private unnamed_addr constant [12 x i8] c"use_predict\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"Predict\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"Predict target movement\00", align 1
@RNA_BoidRuleAvoid = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BoidRuleAvoidCollision, ptr @RNA_BoidRuleGoal, ptr null, %struct.ListBase { ptr @rna_BoidRuleAvoid_object, ptr @rna_BoidRuleAvoid_fear_factor } }, ptr @.str.57, ptr null, ptr null, i32 4, ptr @.str.4, ptr @.str.35, ptr @.str.28, i32 17, ptr @rna_BoidRule_name, ptr @rna_BoidRule_rna_properties, ptr @RNA_BoidRule, ptr null, ptr @rna_BoidRule_refine, ptr @rna_BoidRule_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.52 = private unnamed_addr constant [13 x i8] c"BoidRuleGoal\00", align 1
@rna_BoidRuleAvoid_use_predict = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRuleAvoid_fear_factor, ptr @rna_BoidRuleAvoid_object, i32 -1, ptr @.str.49, i32 3, ptr @.str.50, ptr @.str.51, i32 0, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRuleAvoid_use_predict_get, ptr @BoidRuleAvoid_use_predict_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.53 = private unnamed_addr constant [16 x i8] c"Object to avoid\00", align 1
@rna_BoidRuleAvoid_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRuleAvoid_use_predict, ptr null, i32 -1, ptr @.str.46, i32 8388609, ptr @.str.47, ptr @.str.53, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset_deps, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRuleAvoid_object_get, ptr @BoidRuleAvoid_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_BoidRuleAvoid_fear_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BoidRuleAvoid_use_predict, i32 -1, ptr @.str.54, i32 8195, ptr @.str.55, ptr @.str.56, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 68, i32 4, ptr null, ptr null }, ptr @BoidRuleAvoid_fear_factor_get, ptr @BoidRuleAvoid_fear_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.54 = private unnamed_addr constant [12 x i8] c"fear_factor\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"Fear factor\00", align 1
@.str.56 = private unnamed_addr constant [55 x i8] c"Avoid object if danger from it is above this threshold\00", align 1
@RNA_BoidRuleAvoidCollision = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BoidRuleFollowLeader, ptr @RNA_BoidRuleAvoid, ptr null, %struct.ListBase { ptr @rna_BoidRuleAvoidCollision_use_avoid, ptr @rna_BoidRuleAvoidCollision_look_ahead } }, ptr @.str.67, ptr null, ptr null, i32 4, ptr @.str.7, ptr @.str.35, ptr @.str.28, i32 17, ptr @rna_BoidRule_name, ptr @rna_BoidRule_rna_properties, ptr @RNA_BoidRule, ptr null, ptr @rna_BoidRule_refine, ptr @rna_BoidRule_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.57 = private unnamed_addr constant [14 x i8] c"BoidRuleAvoid\00", align 1
@rna_BoidRuleAvoidCollision_use_avoid_collision = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRuleAvoidCollision_look_ahead, ptr @rna_BoidRuleAvoidCollision_use_avoid, i32 -1, ptr @.str.61, i32 3, ptr @.str.62, ptr @.str.63, i32 0, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRuleAvoidCollision_use_avoid_collision_get, ptr @BoidRuleAvoidCollision_use_avoid_collision_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.58 = private unnamed_addr constant [10 x i8] c"use_avoid\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"Boids\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"Avoid collision with other boids\00", align 1
@rna_BoidRuleAvoidCollision_use_avoid = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRuleAvoidCollision_use_avoid_collision, ptr null, i32 -1, ptr @.str.58, i32 3, ptr @.str.59, ptr @.str.60, i32 0, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRuleAvoidCollision_use_avoid_get, ptr @BoidRuleAvoidCollision_use_avoid_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BoidRuleAvoidCollision_look_ahead = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BoidRuleAvoidCollision_use_avoid_collision, i32 -1, ptr @.str.64, i32 8195, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr @BoidRuleAvoidCollision_look_ahead_get, ptr @BoidRuleAvoidCollision_look_ahead_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.61 = private unnamed_addr constant [20 x i8] c"use_avoid_collision\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"Deflectors\00", align 1
@.str.63 = private unnamed_addr constant [39 x i8] c"Avoid collision with deflector objects\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"look_ahead\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"Look ahead\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"Time to look ahead in seconds\00", align 1
@RNA_BoidRuleFollowLeader = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BoidRuleAverageSpeed, ptr @RNA_BoidRuleAvoidCollision, ptr null, %struct.ListBase { ptr @rna_BoidRuleFollowLeader_object, ptr @rna_BoidRuleFollowLeader_use_line } }, ptr @.str.78, ptr null, ptr null, i32 4, ptr @.str.16, ptr @.str.35, ptr @.str.28, i32 17, ptr @rna_BoidRule_name, ptr @rna_BoidRule_rna_properties, ptr @RNA_BoidRule, ptr null, ptr @rna_BoidRule_refine, ptr @rna_BoidRule_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.67 = private unnamed_addr constant [23 x i8] c"BoidRuleAvoidCollision\00", align 1
@rna_BoidRuleFollowLeader_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRuleFollowLeader_queue_count, ptr @rna_BoidRuleFollowLeader_object, i32 -1, ptr @.str.69, i32 8195, ptr @.str.70, ptr @.str.71, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 92, i32 4, ptr null, ptr null }, ptr @BoidRuleFollowLeader_distance_get, ptr @BoidRuleFollowLeader_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.68 = private unnamed_addr constant [37 x i8] c"Follow this object instead of a boid\00", align 1
@rna_BoidRuleFollowLeader_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRuleFollowLeader_distance, ptr null, i32 -1, ptr @.str.46, i32 8388609, ptr @.str.47, ptr @.str.68, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset_deps, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRuleFollowLeader_object_get, ptr @BoidRuleFollowLeader_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_BoidRuleFollowLeader_queue_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRuleFollowLeader_use_line, ptr @rna_BoidRuleFollowLeader_distance, i32 -1, ptr @.str.72, i32 8195, ptr @.str.73, ptr @.str.74, i32 0, ptr @.str.28, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 100, i32 0, ptr null, ptr null }, ptr @BoidRuleFollowLeader_queue_count_get, ptr @BoidRuleFollowLeader_queue_count_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 100, i32 0, i32 100, i32 1, i32 0, ptr null }, align 8
@.str.69 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.71 = private unnamed_addr constant [33 x i8] c"Distance behind leader to follow\00", align 1
@rna_BoidRuleFollowLeader_use_line = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BoidRuleFollowLeader_queue_count, i32 -1, ptr @.str.75, i32 3, ptr @.str.76, ptr @.str.77, i32 0, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidRuleFollowLeader_use_line_get, ptr @BoidRuleFollowLeader_use_line_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.72 = private unnamed_addr constant [12 x i8] c"queue_count\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"Queue Size\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"How many boids in a line\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"use_line\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"Follow leader in a line\00", align 1
@RNA_BoidRuleAverageSpeed = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BoidRuleFight, ptr @RNA_BoidRuleFollowLeader, ptr null, %struct.ListBase { ptr @rna_BoidRuleAverageSpeed_wander, ptr @rna_BoidRuleAverageSpeed_speed } }, ptr @.str.88, ptr null, ptr null, i32 4, ptr @.str.19, ptr @.str.35, ptr @.str.28, i32 17, ptr @rna_BoidRule_name, ptr @rna_BoidRule_rna_properties, ptr @RNA_BoidRule, ptr null, ptr @rna_BoidRule_refine, ptr @rna_BoidRule_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.78 = private unnamed_addr constant [21 x i8] c"BoidRuleFollowLeader\00", align 1
@rna_BoidRuleAverageSpeed_level = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRuleAverageSpeed_speed, ptr @rna_BoidRuleAverageSpeed_wander, i32 -1, ptr @.str.82, i32 8195, ptr @.str.83, ptr @.str.84, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr @BoidRuleAverageSpeed_level_get, ptr @BoidRuleAverageSpeed_level_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.79 = private unnamed_addr constant [7 x i8] c"wander\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"Wander\00", align 1
@.str.81 = private unnamed_addr constant [44 x i8] c"How fast velocity's direction is randomized\00", align 1
@rna_BoidRuleAverageSpeed_wander = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRuleAverageSpeed_level, ptr null, i32 -1, ptr @.str.79, i32 8195, ptr @.str.80, ptr @.str.81, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr @BoidRuleAverageSpeed_wander_get, ptr @BoidRuleAverageSpeed_wander_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_BoidRuleAverageSpeed_speed = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BoidRuleAverageSpeed_level, i32 -1, ptr @.str.85, i32 8195, ptr @.str.86, ptr @.str.87, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 64, i32 4, ptr null, ptr null }, ptr @BoidRuleAverageSpeed_speed_get, ptr @BoidRuleAverageSpeed_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.82 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"Level\00", align 1
@.str.84 = private unnamed_addr constant [49 x i8] c"How much velocity's z-component is kept constant\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"Percentage of maximum speed\00", align 1
@RNA_BoidRuleFight = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BoidState, ptr @RNA_BoidRuleAverageSpeed, ptr null, %struct.ListBase { ptr @rna_BoidRuleFight_distance, ptr @rna_BoidRuleFight_flee_distance } }, ptr @.str.94, ptr null, ptr null, i32 4, ptr @.str.22, ptr @.str.35, ptr @.str.28, i32 17, ptr @rna_BoidRule_name, ptr @rna_BoidRule_rna_properties, ptr @RNA_BoidRule, ptr null, ptr @rna_BoidRule_refine, ptr @rna_BoidRule_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.88 = private unnamed_addr constant [21 x i8] c"BoidRuleAverageSpeed\00", align 1
@rna_BoidRuleFight_flee_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BoidRuleFight_distance, i32 -1, ptr @.str.91, i32 8195, ptr @.str.92, ptr @.str.93, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr @BoidRuleFight_flee_distance_get, ptr @BoidRuleFight_flee_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.89 = private unnamed_addr constant [15 x i8] c"Fight Distance\00", align 1
@.str.90 = private unnamed_addr constant [34 x i8] c"Attack boids at max this distance\00", align 1
@rna_BoidRuleFight_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidRuleFight_flee_distance, ptr null, i32 -1, ptr @.str.69, i32 8195, ptr @.str.89, ptr @.str.90, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr @BoidRuleFight_distance_get, ptr @BoidRuleFight_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.91 = private unnamed_addr constant [14 x i8] c"flee_distance\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"Flee Distance\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"Flee to this distance\00", align 1
@RNA_BoidState = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BoidSettings, ptr @RNA_BoidRuleFight, ptr null, %struct.ListBase { ptr @rna_BoidState_rna_properties, ptr @rna_BoidState_falloff } }, ptr @.str.111, ptr null, ptr null, i32 4, ptr @.str.112, ptr @.str.113, ptr @.str.28, i32 17, ptr @rna_BoidState_name, ptr @rna_BoidState_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.94 = private unnamed_addr constant [14 x i8] c"BoidRuleFight\00", align 1
@rna_BoidState_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidState_name, ptr @rna_BoidState_rna_properties, i32 -1, ptr @.str.29, i32 8912896, ptr @.str.30, ptr @.str.31, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidState_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BoidState_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidState_ruleset_type, ptr @rna_BoidState_rna_type, i32 -1, ptr @.str.32, i32 262145, ptr @.str.33, ptr @.str.95, i32 0, ptr @.str.28, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 32, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidState_name_get, ptr @BoidState_name_length, ptr @BoidState_name_set, ptr null, ptr null, ptr null, i32 32, ptr @.str.35 }, align 8
@rna_BoidState_ruleset_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidState_rules, ptr @rna_BoidState_name, i32 -1, ptr @.str.96, i32 3, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.28, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidState_ruleset_type_get, ptr @BoidState_ruleset_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BoidState_ruleset_type_items, i32 3, i32 0 }, align 8
@.str.95 = private unnamed_addr constant [16 x i8] c"Boid state name\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"ruleset_type\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"Rule Evaluation\00", align 1
@.str.98 = private unnamed_addr constant [40 x i8] c"How the rules in the list are evaluated\00", align 1
@rna_BoidState_ruleset_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.192, i32 0, ptr @.str.193, ptr @.str.194 }, %struct.EnumPropertyItem { i32 1, ptr @.str.195, i32 0, ptr @.str.196, ptr @.str.197 }, %struct.EnumPropertyItem { i32 2, ptr @.str.198, i32 0, ptr @.str.199, ptr @.str.200 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_BoidState_active_boid_rule = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidState_active_boid_rule_index, ptr @rna_BoidState_rules, i32 -1, ptr @.str.101, i32 8388608, ptr @.str.102, ptr @.str.35, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidState_active_boid_rule_get, ptr null, ptr null, ptr null, ptr @RNA_BoidRule }, align 8
@.str.99 = private unnamed_addr constant [6 x i8] c"rules\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"Boid Rules\00", align 1
@rna_BoidState_active_boid_rule_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidState_rule_fuzzy, ptr @rna_BoidState_active_boid_rule, i32 -1, ptr @.str.103, i32 3, ptr @.str.104, ptr @.str.35, i32 0, ptr @.str.28, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidState_active_boid_rule_index_get, ptr @BoidState_active_boid_rule_index_set, ptr null, ptr null, ptr @rna_BoidState_active_boid_rule_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.101 = private unnamed_addr constant [17 x i8] c"active_boid_rule\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"Active Boid Rule\00", align 1
@rna_BoidState_rule_fuzzy = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidState_volume, ptr @rna_BoidState_active_boid_rule_index, i32 -1, ptr @.str.105, i32 8195, ptr @.str.106, ptr @.str.35, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 108, i32 4, ptr null, ptr null }, ptr @BoidState_rule_fuzzy_get, ptr @BoidState_rule_fuzzy_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.103 = private unnamed_addr constant [23 x i8] c"active_boid_rule_index\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"Active Boid Rule Index\00", align 1
@rna_BoidState_volume = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidState_falloff, ptr @rna_BoidState_rule_fuzzy, i32 -1, ptr @.str.107, i32 8195, ptr @.str.108, ptr @.str.35, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 120, i32 4, ptr null, ptr null }, ptr @BoidState_volume_get, ptr @BoidState_volume_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.105 = private unnamed_addr constant [11 x i8] c"rule_fuzzy\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"Rule Fuzziness\00", align 1
@rna_BoidState_falloff = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BoidState_volume, i32 -1, ptr @.str.109, i32 8195, ptr @.str.110, ptr @.str.35, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 124, i32 4, ptr null, ptr null }, ptr @BoidState_falloff_get, ptr @BoidState_falloff_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.107 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"falloff\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"Falloff\00", align 1
@RNA_BoidSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Brush, ptr @RNA_BoidState, ptr null, %struct.ListBase { ptr @rna_BoidSettings_rna_properties, ptr @rna_BoidSettings_use_climb } }, ptr @.str.188, ptr null, ptr null, i32 4, ptr @.str.189, ptr @.str.190, ptr @.str.28, i32 17, ptr null, ptr @rna_BoidSettings_rna_properties, ptr null, ptr null, ptr null, ptr @rna_BoidSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.111 = private unnamed_addr constant [10 x i8] c"BoidState\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"Boid State\00", align 1
@.str.113 = private unnamed_addr constant [28 x i8] c"Boid state for boid physics\00", align 1
@rna_BoidSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_land_smooth, ptr @rna_BoidSettings_rna_properties, i32 -1, ptr @.str.29, i32 8912896, ptr @.str.30, ptr @.str.31, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_BoidSettings_land_smooth = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_bank, ptr @rna_BoidSettings_rna_type, i32 -1, ptr @.str.114, i32 8195, ptr @.str.115, ptr @.str.116, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @BoidSettings_land_smooth_get, ptr @BoidSettings_land_smooth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_BoidSettings_bank = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_pitch, ptr @rna_BoidSettings_land_smooth, i32 -1, ptr @.str.117, i32 8195, ptr @.str.118, ptr @.str.119, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @BoidSettings_bank_get, ptr @BoidSettings_bank_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.114 = private unnamed_addr constant [12 x i8] c"land_smooth\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"Landing Smoothness\00", align 1
@.str.116 = private unnamed_addr constant [28 x i8] c"How smoothly the boids land\00", align 1
@rna_BoidSettings_pitch = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_height, ptr @rna_BoidSettings_bank, i32 -1, ptr @.str.120, i32 8195, ptr @.str.121, ptr @.str.122, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @BoidSettings_pitch_get, ptr @BoidSettings_pitch_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.117 = private unnamed_addr constant [5 x i8] c"bank\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"Banking\00", align 1
@.str.119 = private unnamed_addr constant [51 x i8] c"Amount of rotation around velocity vector on turns\00", align 1
@rna_BoidSettings_height = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_states, ptr @rna_BoidSettings_pitch, i32 -1, ptr @.str.123, i32 8195, ptr @.str.124, ptr @.str.125, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @BoidSettings_height_get, ptr @BoidSettings_height_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.120 = private unnamed_addr constant [6 x i8] c"pitch\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"Pitch\00", align 1
@.str.122 = private unnamed_addr constant [38 x i8] c"Amount of rotation around side vector\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.125 = private unnamed_addr constant [38 x i8] c"Boid height relative to particle size\00", align 1
@rna_BoidSettings_active_boid_state = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_active_boid_state_index, ptr @rna_BoidSettings_states, i32 -1, ptr @.str.128, i32 8388608, ptr @.str.102, ptr @.str.35, i32 0, ptr @.str.28, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidSettings_active_boid_state_get, ptr null, ptr null, ptr null, ptr @RNA_BoidRule }, align 8
@.str.126 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"Boid States\00", align 1
@rna_BoidSettings_active_boid_state_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_health, ptr @rna_BoidSettings_active_boid_state, i32 -1, ptr @.str.129, i32 3, ptr @.str.130, ptr @.str.35, i32 0, ptr @.str.28, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidSettings_active_boid_state_index_get, ptr @BoidSettings_active_boid_state_index_set, ptr null, ptr null, ptr @rna_BoidSettings_active_boid_state_index_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.128 = private unnamed_addr constant [18 x i8] c"active_boid_state\00", align 1
@rna_BoidSettings_health = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_strength, ptr @rna_BoidSettings_active_boid_state_index, i32 -1, ptr @.str.131, i32 8195, ptr @.str.132, ptr @.str.133, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 24, i32 4, ptr null, ptr null }, ptr @BoidSettings_health_get, ptr @BoidSettings_health_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.129 = private unnamed_addr constant [24 x i8] c"active_boid_state_index\00", align 1
@.str.130 = private unnamed_addr constant [24 x i8] c"Active Boid State Index\00", align 1
@rna_BoidSettings_strength = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_aggression, ptr @rna_BoidSettings_health, i32 -1, ptr @.str.134, i32 8195, ptr @.str.135, ptr @.str.136, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 32, i32 4, ptr null, ptr null }, ptr @BoidSettings_strength_get, ptr @BoidSettings_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.131 = private unnamed_addr constant [7 x i8] c"health\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"Health\00", align 1
@.str.133 = private unnamed_addr constant [30 x i8] c"Initial boid health when born\00", align 1
@rna_BoidSettings_aggression = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_accuracy, ptr @rna_BoidSettings_strength, i32 -1, ptr @.str.137, i32 8195, ptr @.str.138, ptr @.str.139, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 28, i32 4, ptr null, ptr null }, ptr @BoidSettings_aggression_get, ptr @BoidSettings_aggression_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.134 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"Strength\00", align 1
@.str.136 = private unnamed_addr constant [43 x i8] c"Maximum caused damage on attack per second\00", align 1
@rna_BoidSettings_accuracy = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_range, ptr @rna_BoidSettings_aggression, i32 -1, ptr @.str.140, i32 8195, ptr @.str.141, ptr @.str.142, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 36, i32 4, ptr null, ptr null }, ptr @BoidSettings_accuracy_get, ptr @BoidSettings_accuracy_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.137 = private unnamed_addr constant [11 x i8] c"aggression\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"Aggression\00", align 1
@.str.139 = private unnamed_addr constant [42 x i8] c"Boid will fight this times stronger enemy\00", align 1
@rna_BoidSettings_range = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_air_speed_min, ptr @rna_BoidSettings_accuracy, i32 -1, ptr @.str.143, i32 8195, ptr @.str.144, ptr @.str.145, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 40, i32 4, ptr null, ptr null }, ptr @BoidSettings_range_get, ptr @BoidSettings_range_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.140 = private unnamed_addr constant [9 x i8] c"accuracy\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"Accuracy\00", align 1
@.str.142 = private unnamed_addr constant [19 x i8] c"Accuracy of attack\00", align 1
@rna_BoidSettings_air_speed_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_air_speed_max, ptr @rna_BoidSettings_range, i32 -1, ptr @.str.146, i32 8195, ptr @.str.147, ptr @.str.148, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 44, i32 4, ptr null, ptr null }, ptr @BoidSettings_air_speed_min_get, ptr @BoidSettings_air_speed_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.143 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@.str.145 = private unnamed_addr constant [46 x i8] c"Maximum distance from which a boid can attack\00", align 1
@rna_BoidSettings_air_speed_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_air_acc_max, ptr @rna_BoidSettings_air_speed_min, i32 -1, ptr @.str.149, i32 8195, ptr @.str.150, ptr @.str.151, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 48, i32 4, ptr null, ptr null }, ptr @BoidSettings_air_speed_max_get, ptr @BoidSettings_air_speed_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.146 = private unnamed_addr constant [14 x i8] c"air_speed_min\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"Min Air Speed\00", align 1
@.str.148 = private unnamed_addr constant [49 x i8] c"Minimum speed in air (relative to maximum speed)\00", align 1
@rna_BoidSettings_air_acc_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_air_ave_max, ptr @rna_BoidSettings_air_speed_max, i32 -1, ptr @.str.152, i32 8195, ptr @.str.153, ptr @.str.154, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 52, i32 4, ptr null, ptr null }, ptr @BoidSettings_air_acc_max_get, ptr @BoidSettings_air_acc_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.149 = private unnamed_addr constant [14 x i8] c"air_speed_max\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"Max Air Speed\00", align 1
@.str.151 = private unnamed_addr constant [21 x i8] c"Maximum speed in air\00", align 1
@rna_BoidSettings_air_ave_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_air_personal_space, ptr @rna_BoidSettings_air_acc_max, i32 -1, ptr @.str.155, i32 8195, ptr @.str.156, ptr @.str.157, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr @BoidSettings_air_ave_max_get, ptr @BoidSettings_air_ave_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.152 = private unnamed_addr constant [12 x i8] c"air_acc_max\00", align 1
@.str.153 = private unnamed_addr constant [21 x i8] c"Max Air Acceleration\00", align 1
@.str.154 = private unnamed_addr constant [56 x i8] c"Maximum acceleration in air (relative to maximum speed)\00", align 1
@rna_BoidSettings_air_personal_space = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_land_jump_speed, ptr @rna_BoidSettings_air_ave_max, i32 -1, ptr @.str.158, i32 8195, ptr @.str.159, ptr @.str.160, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr @BoidSettings_air_personal_space_get, ptr @BoidSettings_air_personal_space_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.155 = private unnamed_addr constant [12 x i8] c"air_ave_max\00", align 1
@.str.156 = private unnamed_addr constant [25 x i8] c"Max Air Angular Velocity\00", align 1
@.str.157 = private unnamed_addr constant [58 x i8] c"Maximum angular velocity in air (relative to 180 degrees)\00", align 1
@rna_BoidSettings_land_jump_speed = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_land_speed_max, ptr @rna_BoidSettings_air_personal_space, i32 -1, ptr @.str.161, i32 8195, ptr @.str.162, ptr @.str.163, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 64, i32 4, ptr null, ptr null }, ptr @BoidSettings_land_jump_speed_get, ptr @BoidSettings_land_jump_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.158 = private unnamed_addr constant [19 x i8] c"air_personal_space\00", align 1
@.str.159 = private unnamed_addr constant [19 x i8] c"Air Personal Space\00", align 1
@.str.160 = private unnamed_addr constant [59 x i8] c"Radius of boids personal space in air (% of particle size)\00", align 1
@rna_BoidSettings_land_speed_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_land_acc_max, ptr @rna_BoidSettings_land_jump_speed, i32 -1, ptr @.str.164, i32 8195, ptr @.str.165, ptr @.str.166, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 68, i32 4, ptr null, ptr null }, ptr @BoidSettings_land_speed_max_get, ptr @BoidSettings_land_speed_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.161 = private unnamed_addr constant [16 x i8] c"land_jump_speed\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"Jump Speed\00", align 1
@.str.163 = private unnamed_addr constant [26 x i8] c"Maximum speed for jumping\00", align 1
@rna_BoidSettings_land_acc_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_land_ave_max, ptr @rna_BoidSettings_land_speed_max, i32 -1, ptr @.str.167, i32 8195, ptr @.str.168, ptr @.str.169, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 72, i32 4, ptr null, ptr null }, ptr @BoidSettings_land_acc_max_get, ptr @BoidSettings_land_acc_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.164 = private unnamed_addr constant [15 x i8] c"land_speed_max\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"Max Land Speed\00", align 1
@.str.166 = private unnamed_addr constant [22 x i8] c"Maximum speed on land\00", align 1
@rna_BoidSettings_land_ave_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_land_personal_space, ptr @rna_BoidSettings_land_acc_max, i32 -1, ptr @.str.170, i32 8195, ptr @.str.171, ptr @.str.172, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 76, i32 4, ptr null, ptr null }, ptr @BoidSettings_land_ave_max_get, ptr @BoidSettings_land_ave_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.167 = private unnamed_addr constant [13 x i8] c"land_acc_max\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"Max Land Acceleration\00", align 1
@.str.169 = private unnamed_addr constant [57 x i8] c"Maximum acceleration on land (relative to maximum speed)\00", align 1
@rna_BoidSettings_land_personal_space = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_land_stick_force, ptr @rna_BoidSettings_land_ave_max, i32 -1, ptr @.str.173, i32 8195, ptr @.str.174, ptr @.str.175, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 80, i32 4, ptr null, ptr null }, ptr @BoidSettings_land_personal_space_get, ptr @BoidSettings_land_personal_space_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.170 = private unnamed_addr constant [13 x i8] c"land_ave_max\00", align 1
@.str.171 = private unnamed_addr constant [26 x i8] c"Max Land Angular Velocity\00", align 1
@.str.172 = private unnamed_addr constant [59 x i8] c"Maximum angular velocity on land (relative to 180 degrees)\00", align 1
@rna_BoidSettings_land_stick_force = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_use_flight, ptr @rna_BoidSettings_land_personal_space, i32 -1, ptr @.str.176, i32 8195, ptr @.str.177, ptr @.str.178, i32 0, ptr @.str.28, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 84, i32 4, ptr null, ptr null }, ptr @BoidSettings_land_stick_force_get, ptr @BoidSettings_land_stick_force_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.173 = private unnamed_addr constant [20 x i8] c"land_personal_space\00", align 1
@.str.174 = private unnamed_addr constant [20 x i8] c"Land Personal Space\00", align 1
@.str.175 = private unnamed_addr constant [60 x i8] c"Radius of boids personal space on land (% of particle size)\00", align 1
@rna_BoidSettings_use_flight = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_use_land, ptr @rna_BoidSettings_land_stick_force, i32 -1, ptr @.str.179, i32 3, ptr @.str.180, ptr @.str.181, i32 0, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidSettings_use_flight_get, ptr @BoidSettings_use_flight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.176 = private unnamed_addr constant [17 x i8] c"land_stick_force\00", align 1
@.str.177 = private unnamed_addr constant [17 x i8] c"Land Stick Force\00", align 1
@.str.178 = private unnamed_addr constant [61 x i8] c"How strong a force must be to start effecting a boid on land\00", align 1
@rna_BoidSettings_use_land = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BoidSettings_use_climb, ptr @rna_BoidSettings_use_flight, i32 -1, ptr @.str.182, i32 3, ptr @.str.183, ptr @.str.184, i32 0, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidSettings_use_land_get, ptr @BoidSettings_use_land_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.179 = private unnamed_addr constant [11 x i8] c"use_flight\00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c"Allow Flight\00", align 1
@.str.181 = private unnamed_addr constant [27 x i8] c"Allow boids to move in air\00", align 1
@rna_BoidSettings_use_climb = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BoidSettings_use_land, i32 -1, ptr @.str.185, i32 3, ptr @.str.186, ptr @.str.187, i32 0, ptr @.str.28, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Boids_reset, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BoidSettings_use_climb_get, ptr @BoidSettings_use_climb_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.182 = private unnamed_addr constant [9 x i8] c"use_land\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"Allow Land\00", align 1
@.str.184 = private unnamed_addr constant [28 x i8] c"Allow boids to move on land\00", align 1
@.str.185 = private unnamed_addr constant [10 x i8] c"use_climb\00", align 1
@.str.186 = private unnamed_addr constant [15 x i8] c"Allow Climbing\00", align 1
@.str.187 = private unnamed_addr constant [34 x i8] c"Allow boids to climb goal objects\00", align 1
@RNA_Brush = external global %struct.StructRNA, align 8
@.str.188 = private unnamed_addr constant [13 x i8] c"BoidSettings\00", align 1
@.str.189 = private unnamed_addr constant [14 x i8] c"Boid Settings\00", align 1
@.str.190 = private unnamed_addr constant [26 x i8] c"Settings for boid physics\00", align 1
@RNA_ParticleSystem = external global %struct.StructRNA, align 8
@.str.191 = private unnamed_addr constant [12 x i8] c"rules[\22%s\22]\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"FUZZY\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"Fuzzy\00", align 1
@.str.194 = private unnamed_addr constant [114 x i8] c"Rules are gone through top to bottom (only the first rule which effect is above fuzziness threshold is evaluated)\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"RANDOM\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.197 = private unnamed_addr constant [40 x i8] c"A random rule is selected for each boid\00", align 1
@.str.198 = private unnamed_addr constant [8 x i8] c"AVERAGE\00", align 1
@.str.199 = private unnamed_addr constant [8 x i8] c"Average\00", align 1
@.str.200 = private unnamed_addr constant [23 x i8] c"All rules are averaged\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"boids\00", align 1
@switch.table.rna_BoidRule_refine = private unnamed_addr constant [8 x ptr] [ptr @RNA_BoidRuleGoal, ptr @RNA_BoidRuleAvoid, ptr @RNA_BoidRuleAvoidCollision, ptr @RNA_BoidRule, ptr @RNA_BoidRule, ptr @RNA_BoidRuleFollowLeader, ptr @RNA_BoidRuleAverageSpeed, ptr @RNA_BoidRuleFight], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidRule_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BoidRule_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BoidRule_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
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
define internal void @BoidRule_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !45 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidRule_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BoidRule_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidRule_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BoidRule_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidRule_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidRule_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.BoidRule, ptr %4, i64 0, i32 4
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 32) #14
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidRule_name_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRule, ptr %3, i64 0, i32 4
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidRule_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.BoidRule, ptr %4, i64 0, i32 4
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 32) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidRule_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRule, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !47
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidRule_use_in_air_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRule, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRule_use_in_air_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.BoidRule, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !49
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidRule_use_on_land_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRule, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRule_use_on_land_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.BoidRule, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !49
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidRuleGoal_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #14
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidRuleGoal_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #14
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %4, i64 0, i32 1
  store ptr %6, ptr %10, align 8, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidRuleGoal_use_predict_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleGoal_use_predict_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !53
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidRuleAvoid_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidRuleAvoid_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #14
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %4, i64 0, i32 1
  store ptr %6, ptr %10, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidRuleAvoid_use_predict_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !53
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleAvoid_use_predict_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !53
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidRuleAvoid_fear_factor_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !54
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleAvoid_fear_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidRuleAvoidCollision_use_avoid_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleAvoidCollision_use_avoid_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidRuleAvoidCollision_use_avoid_collision_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !55
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleAvoidCollision_use_avoid_collision_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidRuleAvoidCollision_look_ahead_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !57
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleAvoidCollision_look_ahead_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidRuleAvoidCollision, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidRuleFollowLeader_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidRuleFollowLeader_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #14
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %4, i64 0, i32 1
  store ptr %6, ptr %10, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidRuleFollowLeader_distance_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !60
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleFollowLeader_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidRuleFollowLeader_queue_count_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !61
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleFollowLeader_queue_count_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 100)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %4, i64 0, i32 7
  store i32 %6, ptr %7, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidRuleFollowLeader_use_line_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !62
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleFollowLeader_use_line_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !62
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidRuleAverageSpeed_wander_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !63
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleAverageSpeed_wander_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidRuleAverageSpeed_level_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !65
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleAverageSpeed_level_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidRuleAverageSpeed_speed_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 8, !tbaa !66
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleAverageSpeed_speed_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidRuleAverageSpeed, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidRuleFight_distance_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleFight, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !67
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleFight_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidRuleFight, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidRuleFight_flee_distance_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRuleFight, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !69
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidRuleFight_flee_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidRuleFight, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !69
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidState_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BoidState_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BoidState_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BoidState_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !70 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidState_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BoidState_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidState_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BoidState_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidState_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidState_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 32) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidState_name_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 5
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidState_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 32) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidState_ruleset_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !71
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidState_ruleset_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 8
  store i32 %1, ptr %5, align 8, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidState_rules_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BoidState_rules, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.BoidState, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #14
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BoidState_rules_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BoidState_rules_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !74 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_BoidRule, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidState_rules_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BoidState_rules_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidState_rules_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BoidState_rules_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #15
  call void @BoidState_rules_begin(ptr noundef nonnull %4, ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !75
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #14
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !77

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
  %37 = load ptr, ptr %33, align 8, !tbaa !79
  store ptr %37, ptr %10, align 8, !tbaa !81
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !82

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @BoidState_rules_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @BoidState_rules_end(ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #15
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BoidState_rules_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #15
  call void @BoidState_rules_begin(ptr noundef nonnull %4, ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !83
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @BoidRule_name_length(ptr noundef nonnull %10) #16
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @BoidRule_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #16
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.24) #14
  call void @BoidRule_name_get(ptr noundef nonnull %10, ptr noundef %25) #16
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #17
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %28(ptr noundef %25) #14
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @BoidState_rules_next(ptr noundef nonnull %4) #16
  %30 = load i32, ptr %6, align 8, !tbaa !44
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !84

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @BoidState_rules_end(ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #15
  ret i32 %34
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidState_active_boid_rule_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_BoidState_active_boid_rule_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_BoidState_active_boid_rule_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !85 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 2
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %5, %2 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BoidRule, ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !49
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %6, label %15, !llvm.loop !86

15:                                               ; preds = %10
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_BoidRule, ptr noundef nonnull %8) #14
  br label %17

16:                                               ; preds = %6
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_BoidRule, ptr noundef null) #14
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidState_active_boid_rule_index_get(ptr nocapture noundef readonly %0) #10 {
  %2 = tail call fastcc i32 @rna_BoidState_active_boid_rule_index_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_BoidState_active_boid_rule_index_get(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !87 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %1, %14
  %8 = phi ptr [ %16, %14 ], [ %5, %1 ]
  %9 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.BoidRule, ptr %8, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !49
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = add nuw nsw i32 %9, 1
  %16 = load ptr, ptr %8, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7, !llvm.loop !88

18:                                               ; preds = %7, %14, %1
  %19 = phi i32 [ 0, %1 ], [ 0, %14 ], [ %9, %7 ]
  ret i32 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidState_active_boid_rule_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  tail call fastcc void @rna_BoidState_active_boid_rule_index_set(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_BoidState_active_boid_rule_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !89 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %18, %8 ], [ %6, %2 ]
  %10 = phi i32 [ %17, %8 ], [ 0, %2 ]
  %11 = icmp eq i32 %10, %1
  %12 = getelementptr inbounds %struct.BoidRule, ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !49
  %14 = and i32 %13, -2
  %15 = zext i1 %11 to i32
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %12, align 4, !tbaa !49
  %17 = add nuw nsw i32 %10, 1
  %18 = load ptr, ptr %9, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !90

20:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidState_rule_fuzzy_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 4, !tbaa !91
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidState_rule_fuzzy_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 9
  store float %8, ptr %9, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidState_volume_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 8, !tbaa !92
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidState_volume_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 12
  store float %8, ptr %9, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidState_falloff_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidState, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 4, !tbaa !93
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidState_falloff_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidState, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 4, !tbaa !93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BoidSettings_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #14
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BoidSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BoidSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !94 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BoidSettings_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BoidSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_land_smooth_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !95
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_land_smooth_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_bank_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 8, !tbaa !97
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_bank_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_pitch_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_pitch_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_height_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !99
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_height_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !99
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidSettings_states_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_BoidSettings_states, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.BoidSettings, ptr %5, i64 0, i32 22
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #14
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @BoidSettings_states_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @BoidSettings_states_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !100 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_BoidState, ptr noundef %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidSettings_states_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @BoidSettings_states_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidSettings_states_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BoidSettings_states_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #15
  call void @BoidSettings_states_begin(ptr noundef nonnull %4, ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !75
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #14
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !101

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
  %37 = load ptr, ptr %33, align 8, !tbaa !79
  store ptr %37, ptr %10, align 8, !tbaa !81
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !102

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @BoidSettings_states_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @BoidSettings_states_end(ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #15
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BoidSettings_states_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #15
  call void @BoidSettings_states_begin(ptr noundef nonnull %4, ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !83
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @BoidState_name_length(ptr noundef nonnull %10) #16
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @BoidState_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #16
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.24) #14
  call void @BoidState_name_get(ptr noundef nonnull %10, ptr noundef %25) #16
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #17
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %28(ptr noundef %25) #14
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @BoidSettings_states_next(ptr noundef nonnull %4) #16
  %30 = load i32, ptr %6, align 8, !tbaa !44
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !103

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @BoidSettings_states_end(ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #15
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BoidSettings_active_boid_state_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_BoidSettings_active_boid_state_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_BoidSettings_active_boid_state_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !104 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 22
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %5, %2 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BoidState, ptr %8, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !105
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %6, label %15, !llvm.loop !106

15:                                               ; preds = %10
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_BoidState, ptr noundef nonnull %8) #14
  br label %17

16:                                               ; preds = %6
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_BoidState, ptr noundef null) #14
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidSettings_active_boid_state_index_get(ptr nocapture noundef readonly %0) #10 {
  %2 = tail call fastcc i32 @rna_BoidSettings_active_boid_state_index_get(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_BoidSettings_active_boid_state_index_get(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !107 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %1, %14
  %8 = phi ptr [ %16, %14 ], [ %5, %1 ]
  %9 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.BoidState, ptr %8, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !105
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = add nuw nsw i32 %9, 1
  %16 = load ptr, ptr %8, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7, !llvm.loop !108

18:                                               ; preds = %7, %14, %1
  %19 = phi i32 [ 0, %1 ], [ 0, %14 ], [ %9, %7 ]
  ret i32 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_active_boid_state_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  tail call fastcc void @rna_BoidSettings_active_boid_state_index_set(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_BoidSettings_active_boid_state_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !109 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %18, %8 ], [ %6, %2 ]
  %10 = phi i32 [ %17, %8 ], [ 0, %2 ]
  %11 = icmp eq i32 %10, %1
  %12 = getelementptr inbounds %struct.BoidState, ptr %9, i64 0, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !105
  %14 = and i32 %13, -2
  %15 = zext i1 %11 to i32
  %16 = or disjoint i32 %14, %15
  store i32 %16, ptr %12, align 4, !tbaa !105
  %17 = add nuw nsw i32 %10, 1
  %18 = load ptr, ptr %9, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !110

20:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_health_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 8, !tbaa !111
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_health_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 6
  store float %8, ptr %9, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_strength_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 8, !tbaa !112
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_strength_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 8, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_aggression_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 4, !tbaa !113
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_aggression_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 7
  store float %8, ptr %9, align 4, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_accuracy_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 4, !tbaa !114
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_accuracy_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 9
  store float %8, ptr %9, align 4, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_range_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 8, !tbaa !115
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_range_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_air_speed_min_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !116
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_air_speed_min_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 11
  store float %8, ptr %9, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_air_speed_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 8, !tbaa !117
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_air_speed_max_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 12
  store float %8, ptr %9, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_air_acc_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 4, !tbaa !118
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_air_acc_max_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 4, !tbaa !118
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_air_ave_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 8, !tbaa !119
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_air_ave_max_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 14
  store float %8, ptr %9, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_air_personal_space_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 4, !tbaa !120
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_air_personal_space_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 15
  store float %8, ptr %9, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_land_jump_speed_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 8, !tbaa !121
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_land_jump_speed_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_land_speed_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 4, !tbaa !122
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_land_speed_max_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 4, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_land_acc_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 8, !tbaa !123
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_land_acc_max_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_land_ave_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 19
  %5 = load float, ptr %4, align 4, !tbaa !124
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_land_ave_max_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 19
  store float %8, ptr %9, align 4, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_land_personal_space_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 20
  %5 = load float, ptr %4, align 8, !tbaa !125
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_land_personal_space_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 20
  store float %8, ptr %9, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BoidSettings_land_stick_force_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidSettings, ptr %3, i64 0, i32 21
  %5 = load float, ptr %4, align 4, !tbaa !126
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_land_stick_force_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BoidSettings, ptr %4, i64 0, i32 21
  store float %8, ptr %9, align 4, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidSettings_use_flight_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i32, ptr %3, align 8, !tbaa !127
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_use_flight_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp ne i32 %1, 0
  %6 = load i32, ptr %4, align 8, !tbaa !127
  %7 = and i32 %6, -2
  %8 = zext i1 %5 to i32
  %9 = or disjoint i32 %7, %8
  store i32 %9, ptr %4, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidSettings_use_land_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i32, ptr %3, align 8, !tbaa !127
  %5 = lshr i32 %4, 1
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_use_land_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = load i32, ptr %4, align 8, !tbaa !127
  %7 = and i32 %6, -3
  %8 = select i1 %5, i32 0, i32 2
  %9 = or disjoint i32 %7, %8
  store i32 %9, ptr %4, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BoidSettings_use_climb_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = load i32, ptr %3, align 8, !tbaa !127
  %5 = lshr i32 %4, 2
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BoidSettings_use_climb_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %1, 0
  %6 = load i32, ptr %4, align 8, !tbaa !127
  %7 = and i32 %6, -5
  %8 = select i1 %5, i32 0, i32 4
  %9 = or disjoint i32 %7, %8
  store i32 %9, ptr %4, align 8, !tbaa !127
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Boids_reset(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !128 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = icmp eq ptr %5, @RNA_ParticleSystem
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 31
  store i16 16, ptr %10, align 4, !tbaa !130
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi i16 [ 2, %7 ], [ 18, %3 ]
  %13 = load ptr, ptr %2, align 8, !tbaa !133
  tail call void @DAG_id_tag_update(ptr noundef %13, i16 noundef signext %12) #14
  tail call void @WM_main_add_notifier(i32 noundef 85655553, ptr noundef null) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef nonnull ptr @rna_BoidRule_refine(ptr nocapture noundef readonly %0) #7 !PGOFuncName !134 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.BoidRule, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = add i32 %5, -1
  %7 = icmp ult i32 %6, 8
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr inbounds [8 x ptr], ptr @switch.table.rna_BoidRule_refine, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %1, %8
  %13 = phi ptr [ %11, %8 ], [ @RNA_BoidRule, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_BoidRule_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !135 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #15
  %5 = getelementptr inbounds %struct.BoidRule, ptr %4, i64 0, i32 4
  %6 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %5, i64 noundef 64) #14
  %7 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.191, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #15
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Boids_reset_deps(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !136 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = icmp eq ptr %5, @RNA_ParticleSystem
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 31
  store i16 16, ptr %10, align 4, !tbaa !130
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi i16 [ 2, %7 ], [ 18, %3 ]
  %13 = load ptr, ptr %2, align 8, !tbaa !133
  tail call void @DAG_id_tag_update(ptr noundef %13, i16 noundef signext %12) #14
  tail call void @DAG_relations_tag_update(ptr noundef %0) #14
  tail call void @WM_main_add_notifier(i32 noundef 85655553, ptr noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_BoidState_active_boid_rule_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !137 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  store i32 0, ptr %1, align 4, !tbaa !138
  %8 = getelementptr inbounds %struct.BoidState, ptr %7, i64 0, i32 2
  %9 = tail call i32 @BLI_countlist(ptr noundef nonnull %8) #14
  %10 = add nsw i32 %9, -1
  %11 = tail call fastcc i32 @max_ii(i32 noundef %10) #16
  store i32 %11, ptr %2, align 4, !tbaa !138
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_BoidSettings_active_boid_state_index_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 !PGOFuncName !139 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  store i32 0, ptr %1, align 4, !tbaa !138
  %8 = getelementptr inbounds %struct.BoidSettings, ptr %7, i64 0, i32 22
  %9 = tail call i32 @BLI_countlist(ptr noundef nonnull %8) #14
  %10 = add nsw i32 %9, -1
  %11 = tail call fastcc i32 @max_ii(i32 noundef %10) #16
  store i32 %11, ptr %2, align 4, !tbaa !138
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_BoidSettings_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !140 {
  %2 = tail call fastcc i32 @particle_id_check(ptr noundef %0) #16, !range !141
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %0, align 8, !tbaa !133
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !142
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.201) #14
  br label %13

13:                                               ; preds = %1, %4, %11
  %14 = phi ptr [ %12, %11 ], [ null, %4 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #12 !PGOFuncName !145 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @particle_id_check(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !146 {
  %2 = load ptr, ptr %0, align 8, !tbaa !133
  %3 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8, !tbaa !147
  %5 = icmp eq i16 %4, 16720
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }

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
!45 = !{!"rna_boid_gen.c:BoidRule_rna_properties_get"}
!46 = !{!41, !36, i64 16}
!47 = !{!48, !43, i64 16}
!48 = !{!"BoidRule", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !37, i64 24}
!49 = !{!48, !43, i64 20}
!50 = !{!51, !36, i64 56}
!51 = !{!"BoidRuleGoalAvoid", !48, i64 0, !36, i64 56, !43, i64 64, !52, i64 68, !43, i64 72, !43, i64 76}
!52 = !{!"float", !37, i64 0}
!53 = !{!51, !43, i64 64}
!54 = !{!51, !52, i64 68}
!55 = !{!56, !43, i64 56}
!56 = !{!"BoidRuleAvoidCollision", !48, i64 0, !43, i64 56, !52, i64 60}
!57 = !{!56, !52, i64 60}
!58 = !{!59, !36, i64 56}
!59 = !{!"BoidRuleFollowLeader", !48, i64 0, !36, i64 56, !37, i64 64, !37, i64 76, !52, i64 88, !52, i64 92, !43, i64 96, !43, i64 100}
!60 = !{!59, !52, i64 92}
!61 = !{!59, !43, i64 100}
!62 = !{!59, !43, i64 96}
!63 = !{!64, !52, i64 56}
!64 = !{!"BoidRuleAverageSpeed", !48, i64 0, !52, i64 56, !52, i64 60, !52, i64 64, !52, i64 68}
!65 = !{!64, !52, i64 60}
!66 = !{!64, !52, i64 64}
!67 = !{!68, !52, i64 56}
!68 = !{!"BoidRuleFight", !48, i64 0, !52, i64 56, !52, i64 60}
!69 = !{!68, !52, i64 60}
!70 = !{!"rna_boid_gen.c:BoidState_rna_properties_get"}
!71 = !{!72, !43, i64 104}
!72 = !{!"BoidState", !36, i64 0, !36, i64 8, !73, i64 16, !73, i64 32, !73, i64 48, !37, i64 64, !43, i64 96, !43, i64 100, !43, i64 104, !52, i64 108, !43, i64 112, !43, i64 116, !52, i64 120, !52, i64 124}
!73 = !{!"ListBase", !36, i64 0, !36, i64 8}
!74 = !{!"rna_boid_gen.c:BoidState_rules_get"}
!75 = !{!76, !36, i64 16}
!76 = !{!"ListBaseIterator", !36, i64 0, !43, i64 8, !36, i64 16}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!80, !36, i64 0}
!80 = !{!"Link", !36, i64 0, !36, i64 8}
!81 = !{!76, !36, i64 0}
!82 = distinct !{!82, !78}
!83 = !{!40, !36, i64 120}
!84 = distinct !{!84, !78}
!85 = !{!"rna_boid_gen.c:rna_BoidState_active_boid_rule_get"}
!86 = distinct !{!86, !78}
!87 = !{!"rna_boid_gen.c:rna_BoidState_active_boid_rule_index_get"}
!88 = distinct !{!88, !78}
!89 = !{!"rna_boid_gen.c:rna_BoidState_active_boid_rule_index_set"}
!90 = distinct !{!90, !78}
!91 = !{!72, !52, i64 108}
!92 = !{!72, !52, i64 120}
!93 = !{!72, !52, i64 124}
!94 = !{!"rna_boid_gen.c:BoidSettings_rna_properties_get"}
!95 = !{!96, !52, i64 8}
!96 = !{!"BoidSettings", !43, i64 0, !43, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52, !52, i64 56, !52, i64 60, !52, i64 64, !52, i64 68, !52, i64 72, !52, i64 76, !52, i64 80, !52, i64 84, !73, i64 88}
!97 = !{!96, !52, i64 16}
!98 = !{!96, !52, i64 20}
!99 = !{!96, !52, i64 12}
!100 = !{!"rna_boid_gen.c:BoidSettings_states_get"}
!101 = distinct !{!101, !78}
!102 = distinct !{!102, !78}
!103 = distinct !{!103, !78}
!104 = !{!"rna_boid_gen.c:rna_BoidSettings_active_boid_state_get"}
!105 = !{!72, !43, i64 100}
!106 = distinct !{!106, !78}
!107 = !{!"rna_boid_gen.c:rna_BoidSettings_active_boid_state_index_get"}
!108 = distinct !{!108, !78}
!109 = !{!"rna_boid_gen.c:rna_BoidSettings_active_boid_state_index_set"}
!110 = distinct !{!110, !78}
!111 = !{!96, !52, i64 24}
!112 = !{!96, !52, i64 32}
!113 = !{!96, !52, i64 28}
!114 = !{!96, !52, i64 36}
!115 = !{!96, !52, i64 40}
!116 = !{!96, !52, i64 44}
!117 = !{!96, !52, i64 48}
!118 = !{!96, !52, i64 52}
!119 = !{!96, !52, i64 56}
!120 = !{!96, !52, i64 60}
!121 = !{!96, !52, i64 64}
!122 = !{!96, !52, i64 68}
!123 = !{!96, !52, i64 72}
!124 = !{!96, !52, i64 76}
!125 = !{!96, !52, i64 80}
!126 = !{!96, !52, i64 84}
!127 = !{!96, !43, i64 0}
!128 = !{!"rna_boid_gen.c:rna_Boids_reset"}
!129 = !{!41, !36, i64 8}
!130 = !{!131, !132, i64 340}
!131 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !73, i64 72, !73, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !73, i64 152, !37, i64 168, !37, i64 232, !52, i64 296, !52, i64 300, !52, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !132, i64 340, !132, i64 342, !132, i64 344, !132, i64 346, !37, i64 348, !37, i64 540, !132, i64 564, !132, i64 566, !36, i64 568, !36, i64 576, !73, i64 584, !36, i64 600, !36, i64 608, !43, i64 616, !43, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !52, i64 648, !52, i64 652}
!132 = !{!"short", !37, i64 0}
!133 = !{!41, !36, i64 0}
!134 = !{!"rna_boid_gen.c:rna_BoidRule_refine"}
!135 = !{!"rna_boid_gen.c:rna_BoidRule_path"}
!136 = !{!"rna_boid_gen.c:rna_Boids_reset_deps"}
!137 = !{!"rna_boid_gen.c:rna_BoidState_active_boid_rule_index_range"}
!138 = !{!43, !43, i64 0}
!139 = !{!"rna_boid_gen.c:rna_BoidSettings_active_boid_state_index_range"}
!140 = !{!"rna_boid_gen.c:rna_BoidSettings_path"}
!141 = !{i32 0, i32 2}
!142 = !{!143, !36, i64 128}
!143 = !{!"ParticleSettings", !144, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !43, i64 152, !43, i64 156, !132, i64 160, !132, i64 162, !132, i64 164, !132, i64 166, !132, i64 168, !132, i64 170, !132, i64 172, !132, i64 174, !43, i64 176, !43, i64 180, !132, i64 184, !132, i64 186, !132, i64 188, !132, i64 190, !132, i64 192, !132, i64 194, !132, i64 196, !132, i64 198, !132, i64 200, !132, i64 202, !132, i64 204, !132, i64 206, !132, i64 208, !132, i64 210, !132, i64 212, !132, i64 214, !132, i64 216, !132, i64 218, !132, i64 220, !132, i64 222, !132, i64 224, !132, i64 226, !132, i64 228, !132, i64 230, !52, i64 232, !52, i64 236, !37, i64 240, !37, i64 248, !52, i64 256, !52, i64 260, !52, i64 264, !132, i64 268, !132, i64 270, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308, !52, i64 312, !52, i64 316, !37, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !132, i64 340, !37, i64 342, !52, i64 348, !52, i64 352, !52, i64 356, !52, i64 360, !52, i64 364, !52, i64 368, !52, i64 372, !37, i64 376, !52, i64 388, !52, i64 392, !52, i64 396, !52, i64 400, !52, i64 404, !52, i64 408, !52, i64 412, !37, i64 416, !52, i64 428, !52, i64 432, !52, i64 436, !52, i64 440, !43, i64 444, !43, i64 448, !52, i64 452, !52, i64 456, !52, i64 460, !52, i64 464, !52, i64 468, !52, i64 472, !52, i64 476, !52, i64 480, !52, i64 484, !52, i64 488, !52, i64 492, !52, i64 496, !52, i64 500, !52, i64 504, !52, i64 508, !52, i64 512, !52, i64 516, !52, i64 520, !52, i64 524, !52, i64 528, !52, i64 532, !52, i64 536, !52, i64 540, !52, i64 544, !52, i64 548, !37, i64 552, !52, i64 560, !52, i64 564, !43, i64 568, !43, i64 572, !37, i64 576, !36, i64 720, !73, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !132, i64 792, !37, i64 794}
!144 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !132, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!145 = !{!"rna_boid_gen.c:max_ii"}
!146 = !{!"rna_boid_gen.c:particle_id_check"}
!147 = !{!132, !132, i64 0}
