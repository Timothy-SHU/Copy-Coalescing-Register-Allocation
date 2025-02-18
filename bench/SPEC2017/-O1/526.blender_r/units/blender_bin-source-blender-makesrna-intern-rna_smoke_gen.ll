; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_smoke_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_smoke_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.SmokeDomainSettings = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x i32], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, float, float, i32, i32, float, float, float, i32, i32, i32, i32, i16, i16, i32, float, [3 x i32], float, i32, i32, [2 x ptr], [2 x %struct.ListBase], ptr, i32, float, float, i32, [3 x float], i32, float, float, float, float, float, [3 x float] }
%struct.SmokeFlowSettings = type { ptr, ptr, ptr, ptr, ptr, i32, float, float, float, float, [3 x float], float, float, float, float, float, i32, float, float, i32, [64 x i8], i16, i16, i16, i16, i32 }
%struct.SmokeCollSettings = type { ptr, ptr, ptr, i32, i16, i16 }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }

@rna_SmokeDomainSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_rna_type, ptr null, i32 -1, ptr @.str, i32 128, ptr @.str.1, ptr @.str.2, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_rna_properties_begin, ptr @SmokeDomainSettings_rna_properties_next, ptr @SmokeDomainSettings_rna_properties_end, ptr @SmokeDomainSettings_rna_properties_get, ptr null, ptr null, ptr @SmokeDomainSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Group = external global %struct.StructRNA, align 8
@RNA_PointCache = external global %struct.StructRNA, align 8
@RNA_EffectorWeights = external global %struct.StructRNA, align 8
@rna_SmokeFlowSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_rna_type, ptr null, i32 -1, ptr @.str, i32 128, ptr @.str.1, ptr @.str.2, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeFlowSettings_rna_properties_begin, ptr @SmokeFlowSettings_rna_properties_next, ptr @SmokeFlowSettings_rna_properties_end, ptr @SmokeFlowSettings_rna_properties_get, ptr null, ptr null, ptr @SmokeFlowSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_ParticleSystem = external global %struct.StructRNA, align 8
@RNA_Texture = external global %struct.StructRNA, align 8
@rna_SmokeCollSettings_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeCollSettings_rna_type, ptr null, i32 -1, ptr @.str, i32 128, ptr @.str.1, ptr @.str.2, i32 0, ptr @.str.3, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeCollSettings_rna_properties_begin, ptr @SmokeCollSettings_rna_properties_next, ptr @SmokeCollSettings_rna_properties_end, ptr @SmokeCollSettings_rna_properties_get, ptr null, ptr null, ptr @SmokeCollSettings_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_SmokeDomainSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_resolution_max, ptr @rna_SmokeDomainSettings_rna_properties, i32 -1, ptr @.str.4, i32 8912896, ptr @.str.5, ptr @.str.6, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_SmokeDomainSettings_resolution_max = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_amplify, ptr @rna_SmokeDomainSettings_rna_type, i32 -1, ptr @.str.7, i32 8193, ptr @.str.8, ptr @.str.9, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 416, i32 0, ptr null, ptr null }, ptr @SmokeDomainSettings_resolution_max_get, ptr @SmokeDomainSettings_resolution_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 24, i32 512, i32 6, i32 512, i32 2, i32 0, ptr null }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_SmokeDomainSettings_amplify = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_use_high_resolution, ptr @rna_SmokeDomainSettings_resolution_max, i32 -1, ptr @.str.10, i32 8193, ptr @.str.11, ptr @.str.12, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 412, i32 0, ptr null, ptr null }, ptr @SmokeDomainSettings_amplify_get, ptr @SmokeDomainSettings_amplify_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 10, i32 1, i32 10, i32 1, i32 0, ptr null }, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"resolution_max\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Max Res\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Maximal resolution used in the fluid domain\00", align 1
@rna_SmokeDomainSettings_use_high_resolution = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_show_high_resolution, ptr @rna_SmokeDomainSettings_amplify, i32 -1, ptr @.str.13, i32 1, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_use_high_resolution_get, ptr @SmokeDomainSettings_use_high_resolution_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"amplify\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Amplification\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"Enhance the resolution of smoke by this factor using noise\00", align 1
@rna_SmokeDomainSettings_show_high_resolution = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_noise_type, ptr @rna_SmokeDomainSettings_use_high_resolution, i32 -1, ptr @.str.16, i32 3, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_show_high_resolution_get, ptr @SmokeDomainSettings_show_high_resolution_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c"use_high_resolution\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"High res\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Enable high resolution (using amplification)\00", align 1
@rna_SmokeDomainSettings_noise_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_alpha, ptr @rna_SmokeDomainSettings_show_high_resolution, i32 -1, ptr @.str.19, i32 1, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_noise_type_get, ptr @SmokeDomainSettings_noise_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SmokeDomainSettings_noise_type_items, i32 1, i32 1 }, align 8
@.str.16 = private unnamed_addr constant [21 x i8] c"show_high_resolution\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Show High Resolution\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Show high resolution (using amplification)\00", align 1
@rna_SmokeDomainSettings_alpha = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_beta, ptr @rna_SmokeDomainSettings_noise_type, i32 -1, ptr @.str.22, i32 8195, ptr @.str.23, ptr @.str.24, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 404, i32 4, ptr null, ptr null }, ptr @SmokeDomainSettings_alpha_get, ptr @SmokeDomainSettings_alpha_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -5.000000e+00, float 5.000000e+00, float -5.000000e+00, float 5.000000e+00, float 0x3F947AE140000000, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"noise_type\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Noise Method\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"Noise method which is used for creating the high resolution\00", align 1
@rna_SmokeDomainSettings_noise_type_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.191, i32 0, ptr @.str.192, ptr @.str.50 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SmokeDomainSettings_beta = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_collision_group, ptr @rna_SmokeDomainSettings_alpha, i32 -1, ptr @.str.25, i32 8195, ptr @.str.26, ptr @.str.27, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 408, i32 4, ptr null, ptr null }, ptr @SmokeDomainSettings_beta_get, ptr @SmokeDomainSettings_beta_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -5.000000e+00, float 5.000000e+00, float -5.000000e+00, float 5.000000e+00, float 0x3F947AE140000000, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Density\00", align 1
@.str.24 = private unnamed_addr constant [84 x i8] c"How much density affects smoke motion (higher value results in faster rising smoke)\00", align 1
@rna_SmokeDomainSettings_collision_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_fluid_group, ptr @rna_SmokeDomainSettings_beta, i32 -1, ptr @.str.28, i32 8388609, ptr @.str.29, ptr @.str.30, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset_dependency, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_collision_group_get, ptr @SmokeDomainSettings_collision_group_set, ptr null, ptr null, ptr @RNA_Group }, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"beta\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Heat\00", align 1
@.str.27 = private unnamed_addr constant [81 x i8] c"How much heat affects smoke motion (higher value results in faster rising smoke)\00", align 1
@rna_SmokeDomainSettings_fluid_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_effector_group, ptr @rna_SmokeDomainSettings_collision_group, i32 -1, ptr @.str.31, i32 8388609, ptr @.str.32, ptr @.str.33, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset_dependency, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_fluid_group_get, ptr @SmokeDomainSettings_fluid_group_set, ptr null, ptr null, ptr @RNA_Group }, align 8
@.str.28 = private unnamed_addr constant [16 x i8] c"collision_group\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"Collision Group\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Limit collisions to this group\00", align 1
@rna_SmokeDomainSettings_effector_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_strength, ptr @rna_SmokeDomainSettings_fluid_group, i32 -1, ptr @.str.34, i32 8388609, ptr @.str.35, ptr @.str.36, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset_dependency, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_effector_group_get, ptr @SmokeDomainSettings_effector_group_set, ptr null, ptr null, ptr @RNA_Group }, align 8
@.str.31 = private unnamed_addr constant [12 x i8] c"fluid_group\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"Fluid Group\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"Limit fluid objects to this group\00", align 1
@rna_SmokeDomainSettings_strength = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_dissolve_speed, ptr @rna_SmokeDomainSettings_effector_group, i32 -1, ptr @.str.37, i32 8195, ptr @.str.38, ptr @.str.39, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 436, i32 4, ptr null, ptr null }, ptr @SmokeDomainSettings_strength_get, ptr @SmokeDomainSettings_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.34 = private unnamed_addr constant [15 x i8] c"effector_group\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Effector Group\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"Limit effectors to this group\00", align 1
@rna_SmokeDomainSettings_dissolve_speed = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_use_dissolve_smoke, ptr @rna_SmokeDomainSettings_strength, i32 -1, ptr @.str.40, i32 8195, ptr @.str.41, ptr @.str.41, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 432, i32 0, ptr null, ptr null }, ptr @SmokeDomainSettings_dissolve_speed_get, ptr @SmokeDomainSettings_dissolve_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 10000, i32 1, i32 10000, i32 1, i32 0, ptr null }, align 8
@.str.37 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"Strength\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"Strength of noise\00", align 1
@rna_SmokeDomainSettings_use_dissolve_smoke = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_use_dissolve_smoke_log, ptr @rna_SmokeDomainSettings_dissolve_speed, i32 -1, ptr @.str.42, i32 3, ptr @.str.43, ptr @.str.44, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_use_dissolve_smoke_get, ptr @SmokeDomainSettings_use_dissolve_smoke_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.40 = private unnamed_addr constant [15 x i8] c"dissolve_speed\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"Dissolve Speed\00", align 1
@rna_SmokeDomainSettings_use_dissolve_smoke_log = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_point_cache, ptr @rna_SmokeDomainSettings_use_dissolve_smoke, i32 -1, ptr @.str.45, i32 3, ptr @.str.46, ptr @.str.47, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_use_dissolve_smoke_log_get, ptr @SmokeDomainSettings_use_dissolve_smoke_log_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.42 = private unnamed_addr constant [19 x i8] c"use_dissolve_smoke\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Dissolve Smoke\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"Enable smoke to disappear over time\00", align 1
@rna_SmokeDomainSettings_point_cache = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_point_cache_compress_type, ptr @rna_SmokeDomainSettings_use_dissolve_smoke_log, i32 -1, ptr @.str.48, i32 8650752, ptr @.str.49, ptr @.str.50, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] [i32 2, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_point_cache_get, ptr null, ptr null, ptr null, ptr @RNA_PointCache }, align 8
@.str.45 = private unnamed_addr constant [23 x i8] c"use_dissolve_smoke_log\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"Logarithmic dissolve\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"Using 1/x \00", align 1
@rna_SmokeDomainSettings_point_cache_compress_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_collision_extents, ptr @rna_SmokeDomainSettings_point_cache, i32 -1, ptr @.str.51, i32 3, ptr @.str.52, ptr @.str.53, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_point_cache_compress_type_get, ptr @SmokeDomainSettings_point_cache_compress_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SmokeDomainSettings_point_cache_compress_type_items, i32 2, i32 0 }, align 8
@.str.48 = private unnamed_addr constant [12 x i8] c"point_cache\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"Point Cache\00", align 1
@.str.50 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rna_SmokeDomainSettings_collision_extents = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_effector_weights, ptr @rna_SmokeDomainSettings_point_cache_compress_type, i32 -1, ptr @.str.54, i32 3, ptr @.str.55, ptr @.str.56, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_collision_extents_get, ptr @SmokeDomainSettings_collision_extents_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SmokeDomainSettings_collision_extents_items, i32 3, i32 0 }, align 8
@.str.51 = private unnamed_addr constant [26 x i8] c"point_cache_compress_type\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"Cache Compression\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"Compression method to be used\00", align 1
@rna_SmokeDomainSettings_point_cache_compress_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.193, i32 0, ptr @.str.194, ptr @.str.195 }, %struct.EnumPropertyItem { i32 1, ptr @.str.196, i32 0, ptr @.str.197, ptr @.str.198 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SmokeDomainSettings_effector_weights = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_highres_sampling, ptr @rna_SmokeDomainSettings_collision_extents, i32 -1, ptr @.str.57, i32 8388608, ptr @.str.58, ptr @.str.50, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_effector_weights_get, ptr null, ptr null, ptr null, ptr @RNA_EffectorWeights }, align 8
@.str.54 = private unnamed_addr constant [18 x i8] c"collision_extents\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"Border Collisions\00", align 1
@.str.56 = private unnamed_addr constant [63 x i8] c"Select which domain border will be treated as collision object\00", align 1
@rna_SmokeDomainSettings_collision_extents_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.199, i32 0, ptr @.str.200, ptr @.str.201 }, %struct.EnumPropertyItem { i32 1, ptr @.str.202, i32 0, ptr @.str.203, ptr @.str.204 }, %struct.EnumPropertyItem { i32 2, ptr @.str.205, i32 0, ptr @.str.206, ptr @.str.207 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SmokeDomainSettings_highres_sampling = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_time_scale, ptr @rna_SmokeDomainSettings_effector_weights, i32 -1, ptr @.str.59, i32 3, ptr @.str.60, ptr @.str.61, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_highres_sampling_get, ptr @SmokeDomainSettings_highres_sampling_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SmokeDomainSettings_highres_sampling_items, i32 3, i32 0 }, align 8
@.str.57 = private unnamed_addr constant [17 x i8] c"effector_weights\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"Effector Weights\00", align 1
@rna_SmokeDomainSettings_time_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_vorticity, ptr @rna_SmokeDomainSettings_highres_sampling, i32 -1, ptr @.str.62, i32 8195, ptr @.str.63, ptr @.str.64, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 524, i32 4, ptr null, ptr null }, ptr @SmokeDomainSettings_time_scale_get, ptr @SmokeDomainSettings_time_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FC99999A0000000, float 1.500000e+00, float 0x3FC99999A0000000, float 1.500000e+00, float 0x3F947AE140000000, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.59 = private unnamed_addr constant [17 x i8] c"highres_sampling\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"Emitter\00", align 1
@.str.61 = private unnamed_addr constant [45 x i8] c"Method for sampling the high resolution flow\00", align 1
@rna_SmokeDomainSettings_highres_sampling_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 2, ptr @.str.208, i32 0, ptr @.str.209, ptr @.str.50 }, %struct.EnumPropertyItem { i32 1, ptr @.str.210, i32 0, ptr @.str.211, ptr @.str.50 }, %struct.EnumPropertyItem { i32 0, ptr @.str.212, i32 0, ptr @.str.213, ptr @.str.50 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SmokeDomainSettings_vorticity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_density_grid, ptr @rna_SmokeDomainSettings_time_scale, i32 -1, ptr @.str.65, i32 8195, ptr @.str.66, ptr @.str.67, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 528, i32 4, ptr null, ptr null }, ptr @SmokeDomainSettings_vorticity_get, ptr @SmokeDomainSettings_vorticity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 4.000000e+00, float 0x3F847AE140000000, float 4.000000e+00, float 0x3F947AE140000000, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.62 = private unnamed_addr constant [11 x i8] c"time_scale\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"Time Scale\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"Adjust simulation speed\00", align 1
@rna_SmokeDomainSettings_density_grid = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_flame_grid, ptr @rna_SmokeDomainSettings_vorticity, i32 -1, ptr @.str.68, i32 131074, ptr @.str.69, ptr @.str.70, i32 0, ptr @.str.3, i32 2, i32 0, ptr @rna_SmokeModifier_grid_get_length, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i32 32, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @SmokeDomainSettings_density_grid_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_SmokeDomainSettings_density_grid_default }, align 8
@.str.65 = private unnamed_addr constant [10 x i8] c"vorticity\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"Vorticity\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"Amount of turbulence/rotation in fluid\00", align 1
@rna_SmokeDomainSettings_flame_grid = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_color_grid, ptr @rna_SmokeDomainSettings_density_grid, i32 -1, ptr @.str.71, i32 131074, ptr @.str.72, ptr @.str.73, i32 0, ptr @.str.3, i32 2, i32 0, ptr @rna_SmokeModifier_grid_get_length, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i32 32, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @SmokeDomainSettings_flame_grid_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_SmokeDomainSettings_flame_grid_default }, align 8
@.str.68 = private unnamed_addr constant [13 x i8] c"density_grid\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"Density Grid\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"Smoke density grid\00", align 1
@rna_SmokeDomainSettings_density_grid_default = internal global [32 x float] zeroinitializer, align 16
@rna_SmokeDomainSettings_color_grid = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_cell_size, ptr @rna_SmokeDomainSettings_flame_grid, i32 -1, ptr @.str.74, i32 131074, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.3, i32 2, i32 0, ptr @rna_SmokeModifier_color_grid_get_length, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i32 32, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @SmokeDomainSettings_color_grid_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_SmokeDomainSettings_color_grid_default }, align 8
@.str.71 = private unnamed_addr constant [11 x i8] c"flame_grid\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"Flame Grid\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"Smoke flame grid\00", align 1
@rna_SmokeDomainSettings_flame_grid_default = internal global [32 x float] zeroinitializer, align 16
@rna_SmokeDomainSettings_cell_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_start_point, ptr @rna_SmokeDomainSettings_color_grid, i32 -1, ptr @.str.77, i32 8194, ptr @.str.77, ptr @.str.78, i32 0, ptr @.str.3, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 132, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @SmokeDomainSettings_cell_size_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_SmokeDomainSettings_cell_size_default }, align 8
@.str.74 = private unnamed_addr constant [11 x i8] c"color_grid\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"Color Grid\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"Smoke color grid\00", align 1
@rna_SmokeDomainSettings_color_grid_default = internal global [32 x float] zeroinitializer, align 16
@rna_SmokeDomainSettings_start_point = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_domain_resolution, ptr @rna_SmokeDomainSettings_cell_size, i32 -1, ptr @.str.79, i32 8194, ptr @.str.80, ptr @.str.81, i32 0, ptr @.str.3, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 96, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @SmokeDomainSettings_start_point_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_SmokeDomainSettings_start_point_default }, align 8
@.str.77 = private unnamed_addr constant [10 x i8] c"cell_size\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"Cell Size\00", align 1
@rna_SmokeDomainSettings_cell_size_default = internal global [3 x float] zeroinitializer, align 4
@rna_SmokeDomainSettings_domain_resolution = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_burning_rate, ptr @rna_SmokeDomainSettings_start_point, i32 -1, ptr @.str.82, i32 8194, ptr @.str.83, ptr @.str.84, i32 0, ptr @.str.3, i32 1, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 368, i32 0, ptr null, ptr null }, ptr null, ptr null, ptr @SmokeDomainSettings_domain_resolution_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr @rna_SmokeDomainSettings_domain_resolution_default }, align 8
@.str.79 = private unnamed_addr constant [12 x i8] c"start_point\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"p0\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"Start point\00", align 1
@rna_SmokeDomainSettings_start_point_default = internal global [3 x float] zeroinitializer, align 4
@rna_SmokeDomainSettings_burning_rate = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_flame_smoke, ptr @rna_SmokeDomainSettings_domain_resolution, i32 -1, ptr @.str.85, i32 8195, ptr @.str.86, ptr @.str.87, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 552, i32 4, ptr null, ptr null }, ptr @SmokeDomainSettings_burning_rate_get, ptr @SmokeDomainSettings_burning_rate_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 2.000000e+00, float 0x3F847AE140000000, float 4.000000e+00, float 1.000000e+00, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.82 = private unnamed_addr constant [18 x i8] c"domain_resolution\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"res\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"Smoke Grid Resolution\00", align 1
@rna_SmokeDomainSettings_domain_resolution_default = internal global [3 x i32] zeroinitializer, align 4
@rna_SmokeDomainSettings_flame_smoke = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_flame_vorticity, ptr @rna_SmokeDomainSettings_burning_rate, i32 -1, ptr @.str.88, i32 8195, ptr @.str.89, ptr @.str.90, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 556, i32 4, ptr null, ptr null }, ptr @SmokeDomainSettings_flame_smoke_get, ptr @SmokeDomainSettings_flame_smoke_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 4.000000e+00, float 0.000000e+00, float 8.000000e+00, float 1.000000e+00, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.85 = private unnamed_addr constant [13 x i8] c"burning_rate\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@.str.87 = private unnamed_addr constant [68 x i8] c"Speed of the burning reaction (use larger values for smaller flame)\00", align 1
@rna_SmokeDomainSettings_flame_vorticity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_flame_ignition, ptr @rna_SmokeDomainSettings_flame_smoke, i32 -1, ptr @.str.91, i32 8195, ptr @.str.66, ptr @.str.92, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 560, i32 4, ptr null, ptr null }, ptr @SmokeDomainSettings_flame_vorticity_get, ptr @SmokeDomainSettings_flame_vorticity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+00, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.88 = private unnamed_addr constant [12 x i8] c"flame_smoke\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"Smoke\00", align 1
@.str.90 = private unnamed_addr constant [40 x i8] c"Amount of smoke created by burning fuel\00", align 1
@rna_SmokeDomainSettings_flame_ignition = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_flame_max_temp, ptr @rna_SmokeDomainSettings_flame_vorticity, i32 -1, ptr @.str.93, i32 8195, ptr @.str.94, ptr @.str.95, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 564, i32 4, ptr null, ptr null }, ptr @SmokeDomainSettings_flame_ignition_get, ptr @SmokeDomainSettings_flame_ignition_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 5.000000e-01, float 2.500000e+00, float 5.000000e-01, float 5.000000e+00, float 1.000000e+00, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.91 = private unnamed_addr constant [16 x i8] c"flame_vorticity\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"Additional vorticity for the flames\00", align 1
@rna_SmokeDomainSettings_flame_max_temp = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_flame_smoke_color, ptr @rna_SmokeDomainSettings_flame_ignition, i32 -1, ptr @.str.96, i32 8195, ptr @.str.97, ptr @.str.98, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 568, i32 4, ptr null, ptr null }, ptr @SmokeDomainSettings_flame_max_temp_get, ptr @SmokeDomainSettings_flame_max_temp_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 5.000000e+00, float 1.000000e+00, float 1.000000e+01, float 1.000000e+00, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.93 = private unnamed_addr constant [15 x i8] c"flame_ignition\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"Ignition\00", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"Minimum temperature of flames\00", align 1
@rna_SmokeDomainSettings_flame_smoke_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_use_adaptive_domain, ptr @rna_SmokeDomainSettings_flame_max_temp, i32 -1, ptr @.str.99, i32 8195, ptr @.str.100, ptr @.str.101, i32 0, ptr @.str.3, i32 2, i32 30, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 572, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @SmokeDomainSettings_flame_smoke_color_get, ptr @SmokeDomainSettings_flame_smoke_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_SmokeDomainSettings_flame_smoke_color_default }, align 8
@.str.96 = private unnamed_addr constant [15 x i8] c"flame_max_temp\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"Maximum\00", align 1
@.str.98 = private unnamed_addr constant [30 x i8] c"Maximum temperature of flames\00", align 1
@rna_SmokeDomainSettings_use_adaptive_domain = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_additional_res, ptr @rna_SmokeDomainSettings_flame_smoke_color, i32 -1, ptr @.str.102, i32 1, ptr @.str.103, ptr @.str.104, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeDomainSettings_use_adaptive_domain_get, ptr @SmokeDomainSettings_use_adaptive_domain_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.99 = private unnamed_addr constant [18 x i8] c"flame_smoke_color\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"Smoke Color\00", align 1
@.str.101 = private unnamed_addr constant [41 x i8] c"Color of smoke emitted from burning fuel\00", align 1
@rna_SmokeDomainSettings_flame_smoke_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_SmokeDomainSettings_additional_res = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_adapt_margin, ptr @rna_SmokeDomainSettings_use_adaptive_domain, i32 -1, ptr @.str.105, i32 8195, ptr @.str.106, ptr @.str.107, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 396, i32 0, ptr null, ptr null }, ptr @SmokeDomainSettings_additional_res_get, ptr @SmokeDomainSettings_additional_res_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 512, i32 0, i32 512, i32 2, i32 0, ptr null }, align 8
@.str.102 = private unnamed_addr constant [20 x i8] c"use_adaptive_domain\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"Adaptive Domain\00", align 1
@.str.104 = private unnamed_addr constant [46 x i8] c"Adapt simulation resolution and size to fluid\00", align 1
@rna_SmokeDomainSettings_adapt_margin = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeDomainSettings_adapt_threshold, ptr @rna_SmokeDomainSettings_additional_res, i32 -1, ptr @.str.108, i32 8195, ptr @.str.109, ptr @.str.110, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 392, i32 0, ptr null, ptr null }, ptr @SmokeDomainSettings_adapt_margin_get, ptr @SmokeDomainSettings_adapt_margin_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 2, i32 24, i32 2, i32 24, i32 2, i32 0, ptr null }, align 8
@.str.105 = private unnamed_addr constant [15 x i8] c"additional_res\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"Additional\00", align 1
@.str.107 = private unnamed_addr constant [35 x i8] c"Maximum number of additional cells\00", align 1
@rna_SmokeDomainSettings_adapt_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SmokeDomainSettings_adapt_margin, i32 -1, ptr @.str.111, i32 8195, ptr @.str.112, ptr @.str.113, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_resetCache, i32 85458944, ptr null, ptr null, i32 400, i32 4, ptr null, ptr null }, ptr @SmokeDomainSettings_adapt_threshold_get, ptr @SmokeDomainSettings_adapt_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 5.000000e-01, float 0x3F847AE140000000, float 5.000000e-01, float 1.000000e+00, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.108 = private unnamed_addr constant [13 x i8] c"adapt_margin\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"Margin\00", align 1
@.str.110 = private unnamed_addr constant [60 x i8] c"Margin added around fluid to minimize boundary interference\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"adapt_threshold\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.113 = private unnamed_addr constant [71 x i8] c"Maximum amount of fluid cell can contain before it is considered empty\00", align 1
@RNA_SmokeFlowSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SmokeCollSettings, ptr @RNA_SmokeDomainSettings, ptr null, %struct.ListBase { ptr @rna_SmokeFlowSettings_rna_properties, ptr @rna_SmokeFlowSettings_texture_offset } }, ptr @.str.183, ptr null, ptr null, i32 4, ptr @.str.184, ptr @.str.185, ptr @.str.3, i32 17, ptr null, ptr @rna_SmokeFlowSettings_rna_properties, ptr null, ptr null, ptr null, ptr @rna_SmokeFlowSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_BrightContrastModifier = external global %struct.StructRNA, align 8
@.str.114 = private unnamed_addr constant [20 x i8] c"SmokeDomainSettings\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"Domain Settings\00", align 1
@.str.116 = private unnamed_addr constant [22 x i8] c"Smoke domain settings\00", align 1
@RNA_SmokeDomainSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SmokeFlowSettings, ptr @RNA_BrightContrastModifier, ptr null, %struct.ListBase { ptr @rna_SmokeDomainSettings_rna_properties, ptr @rna_SmokeDomainSettings_adapt_threshold } }, ptr @.str.114, ptr null, ptr null, i32 4, ptr @.str.115, ptr @.str.116, ptr @.str.3, i32 17, ptr null, ptr @rna_SmokeDomainSettings_rna_properties, ptr null, ptr null, ptr null, ptr @rna_SmokeDomainSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_SmokeFlowSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_density, ptr @rna_SmokeFlowSettings_rna_properties, i32 -1, ptr @.str.4, i32 8912896, ptr @.str.5, ptr @.str.6, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeFlowSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SmokeFlowSettings_density = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_smoke_color, ptr @rna_SmokeFlowSettings_rna_type, i32 -1, ptr @.str.117, i32 8195, ptr @.str.23, ptr @.str.50, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr @SmokeFlowSettings_density_get, ptr @SmokeFlowSettings_density_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 4, float 0.000000e+00, ptr null }, align 8
@rna_SmokeFlowSettings_smoke_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_fuel_amount, ptr @rna_SmokeFlowSettings_density, i32 -1, ptr @.str.118, i32 8195, ptr @.str.100, ptr @.str.119, i32 0, ptr @.str.3, i32 2, i32 30, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @SmokeFlowSettings_smoke_color_get, ptr @SmokeFlowSettings_smoke_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_SmokeFlowSettings_smoke_color_default }, align 8
@.str.117 = private unnamed_addr constant [8 x i8] c"density\00", align 1
@rna_SmokeFlowSettings_fuel_amount = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_temperature, ptr @rna_SmokeFlowSettings_smoke_color, i32 -1, ptr @.str.120, i32 8195, ptr @.str.121, ptr @.str.50, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 72, i32 4, ptr null, ptr null }, ptr @SmokeFlowSettings_fuel_amount_get, ptr @SmokeFlowSettings_fuel_amount_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 1.000000e+01, float 1.000000e+00, i32 4, float 0.000000e+00, ptr null }, align 8
@.str.118 = private unnamed_addr constant [12 x i8] c"smoke_color\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"Color of smoke\00", align 1
@rna_SmokeFlowSettings_smoke_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_SmokeFlowSettings_temperature = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_particle_system, ptr @rna_SmokeFlowSettings_fuel_amount, i32 -1, ptr @.str.122, i32 8195, ptr @.str.123, ptr @.str.124, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 76, i32 4, ptr null, ptr null }, ptr @SmokeFlowSettings_temperature_get, ptr @SmokeFlowSettings_temperature_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+01, float 1.000000e+01, float -1.000000e+01, float 1.000000e+01, float 1.000000e+00, i32 1, float 0.000000e+00, ptr null }, align 8
@.str.120 = private unnamed_addr constant [12 x i8] c"fuel_amount\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"Flame Rate\00", align 1
@rna_SmokeFlowSettings_particle_system = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_smoke_flow_type, ptr @rna_SmokeFlowSettings_temperature, i32 -1, ptr @.str.125, i32 8388609, ptr @.str.126, ptr @.str.127, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset_dependency, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeFlowSettings_particle_system_get, ptr @SmokeFlowSettings_particle_system_set, ptr null, ptr null, ptr @RNA_ParticleSystem }, align 8
@.str.122 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"Temp. Diff.\00", align 1
@.str.124 = private unnamed_addr constant [46 x i8] c"Temperature difference to ambient temperature\00", align 1
@rna_SmokeFlowSettings_smoke_flow_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_smoke_flow_source, ptr @rna_SmokeFlowSettings_particle_system, i32 -1, ptr @.str.128, i32 3, ptr @.str.129, ptr @.str.130, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeFlowSettings_smoke_flow_type_get, ptr @SmokeFlowSettings_smoke_flow_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SmokeFlowSettings_smoke_flow_type_items, i32 4, i32 0 }, align 8
@.str.125 = private unnamed_addr constant [16 x i8] c"particle_system\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"Particle Systems\00", align 1
@.str.127 = private unnamed_addr constant [41 x i8] c"Particle systems emitted from the object\00", align 1
@rna_SmokeFlowSettings_smoke_flow_source = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_use_absolute, ptr @rna_SmokeFlowSettings_smoke_flow_type, i32 -1, ptr @.str.131, i32 3, ptr @.str.132, ptr @.str.133, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeFlowSettings_smoke_flow_source_get, ptr @SmokeFlowSettings_smoke_flow_source_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SmokeFlowSettings_smoke_flow_source_items, i32 2, i32 0 }, align 8
@.str.128 = private unnamed_addr constant [16 x i8] c"smoke_flow_type\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"Flow Type\00", align 1
@.str.130 = private unnamed_addr constant [39 x i8] c"Change how flow affects the simulation\00", align 1
@rna_SmokeFlowSettings_smoke_flow_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 2, ptr @.str.215, i32 0, ptr @.str.216, ptr @.str.217 }, %struct.EnumPropertyItem { i32 0, ptr @.str.218, i32 0, ptr @.str.89, ptr @.str.219 }, %struct.EnumPropertyItem { i32 3, ptr @.str.220, i32 0, ptr @.str.221, ptr @.str.222 }, %struct.EnumPropertyItem { i32 1, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.225 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SmokeFlowSettings_use_absolute = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_use_initial_velocity, ptr @rna_SmokeFlowSettings_smoke_flow_source, i32 -1, ptr @.str.134, i32 3, ptr @.str.135, ptr @.str.136, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeFlowSettings_use_absolute_get, ptr @SmokeFlowSettings_use_absolute_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.131 = private unnamed_addr constant [18 x i8] c"smoke_flow_source\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@.str.133 = private unnamed_addr constant [28 x i8] c"Change how smoke is emitted\00", align 1
@rna_SmokeFlowSettings_smoke_flow_source_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.226, i32 88, ptr @.str.227, ptr @.str.228 }, %struct.EnumPropertyItem { i32 1, ptr @.str.229, i32 307, ptr @.str.230, ptr @.str.231 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SmokeFlowSettings_use_initial_velocity = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_velocity_factor, ptr @rna_SmokeFlowSettings_use_absolute, i32 -1, ptr @.str.137, i32 3, ptr @.str.138, ptr @.str.139, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeFlowSettings_use_initial_velocity_get, ptr @SmokeFlowSettings_use_initial_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.134 = private unnamed_addr constant [13 x i8] c"use_absolute\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"Absolute Density\00", align 1
@.str.136 = private unnamed_addr constant [47 x i8] c"Only allow given density value in emitter area\00", align 1
@rna_SmokeFlowSettings_velocity_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_velocity_normal, ptr @rna_SmokeFlowSettings_use_initial_velocity, i32 -1, ptr @.str.140, i32 8195, ptr @.str.132, ptr @.str.141, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 44, i32 4, ptr null, ptr null }, ptr @SmokeFlowSettings_velocity_factor_get, ptr @SmokeFlowSettings_velocity_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -2.000000e+00, float 2.000000e+00, float -1.000000e+02, float 1.000000e+02, float 0x3FA99999A0000000, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.137 = private unnamed_addr constant [21 x i8] c"use_initial_velocity\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"Initial Velocity\00", align 1
@.str.139 = private unnamed_addr constant [51 x i8] c"Smoke has some initial velocity when it is emitted\00", align 1
@rna_SmokeFlowSettings_velocity_normal = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_velocity_random, ptr @rna_SmokeFlowSettings_velocity_factor, i32 -1, ptr @.str.142, i32 8195, ptr @.str.143, ptr @.str.144, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 48, i32 4, ptr null, ptr null }, ptr @SmokeFlowSettings_velocity_normal_get, ptr @SmokeFlowSettings_velocity_normal_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -2.000000e+00, float 2.000000e+00, float -1.000000e+02, float 1.000000e+02, float 0x3FA99999A0000000, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.140 = private unnamed_addr constant [16 x i8] c"velocity_factor\00", align 1
@.str.141 = private unnamed_addr constant [46 x i8] c"Multiplier of source velocity passed to smoke\00", align 1
@rna_SmokeFlowSettings_velocity_random = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_volume_density, ptr @rna_SmokeFlowSettings_velocity_normal, i32 -1, ptr @.str.145, i32 8195, ptr @.str.146, ptr @.str.147, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 52, i32 4, ptr null, ptr null }, ptr @SmokeFlowSettings_velocity_random_get, ptr @SmokeFlowSettings_velocity_random_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 1.000000e+01, float 0x3FA99999A0000000, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.142 = private unnamed_addr constant [16 x i8] c"velocity_normal\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.144 = private unnamed_addr constant [38 x i8] c"Amount of normal directional velocity\00", align 1
@rna_SmokeFlowSettings_volume_density = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_surface_distance, ptr @rna_SmokeFlowSettings_velocity_random, i32 -1, ptr @.str.148, i32 8195, ptr @.str.149, ptr @.str.150, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 80, i32 4, ptr null, ptr null }, ptr @SmokeFlowSettings_volume_density_get, ptr @SmokeFlowSettings_volume_density_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FA99999A0000000, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.145 = private unnamed_addr constant [16 x i8] c"velocity_random\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.147 = private unnamed_addr constant [26 x i8] c"Amount of random velocity\00", align 1
@rna_SmokeFlowSettings_surface_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_particle_size, ptr @rna_SmokeFlowSettings_volume_density, i32 -1, ptr @.str.151, i32 8195, ptr @.str.152, ptr @.str.153, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 84, i32 4, ptr null, ptr null }, ptr @SmokeFlowSettings_surface_distance_get, ptr @SmokeFlowSettings_surface_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 5.000000e-01, float 5.000000e+00, float 0.000000e+00, float 1.000000e+01, float 0x3FA99999A0000000, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.148 = private unnamed_addr constant [15 x i8] c"volume_density\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.150 = private unnamed_addr constant [53 x i8] c"Factor for smoke emitted from inside the mesh volume\00", align 1
@rna_SmokeFlowSettings_particle_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_use_particle_size, ptr @rna_SmokeFlowSettings_surface_distance, i32 -1, ptr @.str.154, i32 8195, ptr @.str.155, ptr @.str.156, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 88, i32 4, ptr null, ptr null }, ptr @SmokeFlowSettings_particle_size_get, ptr @SmokeFlowSettings_particle_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 5.000000e-01, float 5.000000e+00, float 0x3FB99999A0000000, float 2.000000e+01, float 0x3FA99999A0000000, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.151 = private unnamed_addr constant [17 x i8] c"surface_distance\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"Surface\00", align 1
@.str.153 = private unnamed_addr constant [49 x i8] c"Maximum distance from mesh surface to emit smoke\00", align 1
@rna_SmokeFlowSettings_use_particle_size = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_subframes, ptr @rna_SmokeFlowSettings_particle_size, i32 -1, ptr @.str.157, i32 3, ptr @.str.158, ptr @.str.159, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeFlowSettings_use_particle_size_get, ptr @SmokeFlowSettings_use_particle_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.154 = private unnamed_addr constant [14 x i8] c"particle_size\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.156 = private unnamed_addr constant [34 x i8] c"Particle size in simulation cells\00", align 1
@rna_SmokeFlowSettings_subframes = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_density_vertex_group, ptr @rna_SmokeFlowSettings_use_particle_size, i32 -1, ptr @.str.160, i32 8195, ptr @.str.161, ptr @.str.162, i32 0, ptr @.str.3, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 92, i32 0, ptr null, ptr null }, ptr @SmokeFlowSettings_subframes_get, ptr @SmokeFlowSettings_subframes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10, i32 0, i32 50, i32 1, i32 0, ptr null }, align 8
@.str.157 = private unnamed_addr constant [18 x i8] c"use_particle_size\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"Set Size\00", align 1
@.str.159 = private unnamed_addr constant [58 x i8] c"Set particle size in simulation cells or use nearest cell\00", align 1
@rna_SmokeFlowSettings_density_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_use_texture, ptr @rna_SmokeFlowSettings_subframes, i32 -1, ptr @.str.163, i32 262145, ptr @.str.164, ptr @.str.165, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeFlowSettings_density_vertex_group_get, ptr @SmokeFlowSettings_density_vertex_group_length, ptr @SmokeFlowSettings_density_vertex_group_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.50 }, align 8
@.str.160 = private unnamed_addr constant [10 x i8] c"subframes\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"Subframes\00", align 1
@.str.162 = private unnamed_addr constant [92 x i8] c"Number of additional samples to take between frames to improve quality of fast moving flows\00", align 1
@rna_SmokeFlowSettings_use_texture = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_texture_map_type, ptr @rna_SmokeFlowSettings_density_vertex_group, i32 -1, ptr @.str.166, i32 3, ptr @.str.167, ptr @.str.168, i32 0, ptr @.str.3, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeFlowSettings_use_texture_get, ptr @SmokeFlowSettings_use_texture_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.163 = private unnamed_addr constant [21 x i8] c"density_vertex_group\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"Vertex Group\00", align 1
@.str.165 = private unnamed_addr constant [60 x i8] c"Name of vertex group which determines surface emission rate\00", align 1
@rna_SmokeFlowSettings_texture_map_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_uv_layer, ptr @rna_SmokeFlowSettings_use_texture, i32 -1, ptr @.str.169, i32 3, ptr @.str.170, ptr @.str.171, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeFlowSettings_texture_map_type_get, ptr @SmokeFlowSettings_texture_map_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SmokeFlowSettings_texture_map_type_items, i32 2, i32 0 }, align 8
@.str.166 = private unnamed_addr constant [12 x i8] c"use_texture\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"Use Texture\00", align 1
@.str.168 = private unnamed_addr constant [43 x i8] c"Use a texture to control emission strength\00", align 1
@rna_SmokeFlowSettings_uv_layer = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_noise_texture, ptr @rna_SmokeFlowSettings_texture_map_type, i32 -1, ptr @.str.172, i32 262145, ptr @.str.173, ptr @.str.174, i32 0, ptr @.str.3, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeFlowSettings_uv_layer_get, ptr @SmokeFlowSettings_uv_layer_length, ptr @SmokeFlowSettings_uv_layer_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.50 }, align 8
@.str.169 = private unnamed_addr constant [17 x i8] c"texture_map_type\00", align 1
@.str.170 = private unnamed_addr constant [8 x i8] c"Mapping\00", align 1
@.str.171 = private unnamed_addr constant [21 x i8] c"Texture mapping type\00", align 1
@rna_SmokeFlowSettings_texture_map_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.232, i32 0, ptr @.str.233, ptr @.str.234 }, %struct.EnumPropertyItem { i32 1, ptr @.str.235, i32 0, ptr @.str.235, ptr @.str.236 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SmokeFlowSettings_noise_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_texture_size, ptr @rna_SmokeFlowSettings_uv_layer, i32 -1, ptr @.str.175, i32 8388673, ptr @.str.176, ptr @.str.177, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeFlowSettings_noise_texture_get, ptr @SmokeFlowSettings_noise_texture_set, ptr null, ptr null, ptr @RNA_Texture }, align 8
@.str.172 = private unnamed_addr constant [9 x i8] c"uv_layer\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"UV Map\00", align 1
@.str.174 = private unnamed_addr constant [12 x i8] c"UV map name\00", align 1
@rna_SmokeFlowSettings_texture_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeFlowSettings_texture_offset, ptr @rna_SmokeFlowSettings_noise_texture, i32 -1, ptr @.str.178, i32 8195, ptr @.str.155, ptr @.str.179, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 96, i32 4, ptr null, ptr null }, ptr @SmokeFlowSettings_texture_size_get, ptr @SmokeFlowSettings_texture_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FB99999A0000000, float 5.000000e+00, float 0x3F847AE140000000, float 1.000000e+01, float 0x3FA99999A0000000, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.175 = private unnamed_addr constant [14 x i8] c"noise_texture\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.177 = private unnamed_addr constant [40 x i8] c"Texture that controls emission strength\00", align 1
@rna_SmokeFlowSettings_texture_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SmokeFlowSettings_texture_size, i32 -1, ptr @.str.180, i32 8195, ptr @.str.181, ptr @.str.182, i32 0, ptr @.str.3, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 100, i32 4, ptr null, ptr null }, ptr @SmokeFlowSettings_texture_offset_get, ptr @SmokeFlowSettings_texture_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 2.000000e+02, float 0x3FA99999A0000000, i32 5, float 0.000000e+00, ptr null }, align 8
@.str.178 = private unnamed_addr constant [13 x i8] c"texture_size\00", align 1
@.str.179 = private unnamed_addr constant [24 x i8] c"Size of texture mapping\00", align 1
@.str.180 = private unnamed_addr constant [15 x i8] c"texture_offset\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.182 = private unnamed_addr constant [28 x i8] c"Z-offset of texture mapping\00", align 1
@RNA_SmokeCollSettings = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Space, ptr @RNA_SmokeFlowSettings, ptr null, %struct.ListBase { ptr @rna_SmokeCollSettings_rna_properties, ptr @rna_SmokeCollSettings_collision_type } }, ptr @.str.188, ptr null, ptr null, i32 4, ptr @.str.189, ptr @.str.190, ptr @.str.3, i32 17, ptr null, ptr @rna_SmokeCollSettings_rna_properties, ptr null, ptr null, ptr null, ptr @rna_SmokeCollSettings_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.183 = private unnamed_addr constant [18 x i8] c"SmokeFlowSettings\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"Flow Settings\00", align 1
@.str.185 = private unnamed_addr constant [20 x i8] c"Smoke flow settings\00", align 1
@rna_SmokeCollSettings_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeCollSettings_collision_type, ptr @rna_SmokeCollSettings_rna_properties, i32 -1, ptr @.str.4, i32 8912896, ptr @.str.5, ptr @.str.6, i32 0, ptr @.str.3, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeCollSettings_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_SmokeCollSettings_collision_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SmokeCollSettings_rna_type, i32 -1, ptr @.str.186, i32 3, ptr @.str.187, ptr @.str.187, i32 0, ptr @.str.3, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_reset, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeCollSettings_collision_type_get, ptr @SmokeCollSettings_collision_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SmokeCollSettings_collision_type_items, i32 3, i32 0 }, align 8
@.str.186 = private unnamed_addr constant [15 x i8] c"collision_type\00", align 1
@.str.187 = private unnamed_addr constant [15 x i8] c"Collision type\00", align 1
@rna_SmokeCollSettings_collision_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.238, i32 0, ptr @.str.239, ptr @.str.240 }, %struct.EnumPropertyItem { i32 1, ptr @.str.241, i32 0, ptr @.str.242, ptr @.str.243 }, %struct.EnumPropertyItem { i32 2, ptr @.str.244, i32 0, ptr @.str.245, ptr @.str.246 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_Space = external global %struct.StructRNA, align 8
@.str.188 = private unnamed_addr constant [18 x i8] c"SmokeCollSettings\00", align 1
@.str.189 = private unnamed_addr constant [19 x i8] c"Collision Settings\00", align 1
@.str.190 = private unnamed_addr constant [25 x i8] c"Smoke collision settings\00", align 1
@.str.191 = private unnamed_addr constant [10 x i8] c"NOISEWAVE\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"Wavelet\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"CACHELIGHT\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"Light\00", align 1
@.str.195 = private unnamed_addr constant [38 x i8] c"Fast but not so effective compression\00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"CACHEHEAVY\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"Heavy\00", align 1
@.str.198 = private unnamed_addr constant [31 x i8] c"Effective but slow compression\00", align 1
@.str.199 = private unnamed_addr constant [11 x i8] c"BORDEROPEN\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"Open\00", align 1
@.str.201 = private unnamed_addr constant [38 x i8] c"Smoke doesn't collide with any border\00", align 1
@.str.202 = private unnamed_addr constant [15 x i8] c"BORDERVERTICAL\00", align 1
@.str.203 = private unnamed_addr constant [16 x i8] c"Vertically Open\00", align 1
@.str.204 = private unnamed_addr constant [48 x i8] c"Smoke doesn't collide with top and bottom sides\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"BORDERCLOSED\00", align 1
@.str.206 = private unnamed_addr constant [12 x i8] c"Collide All\00", align 1
@.str.207 = private unnamed_addr constant [31 x i8] c"Smoke collides with every side\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"FULLSAMPLE\00", align 1
@.str.209 = private unnamed_addr constant [12 x i8] c"Full Sample\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.212 = private unnamed_addr constant [8 x i8] c"NEAREST\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"Nearest\00", align 1
@.str.214 = private unnamed_addr constant [32 x i8] c"modifiers[\22%s\22].domain_settings\00", align 1
@.str.215 = private unnamed_addr constant [8 x i8] c"OUTFLOW\00", align 1
@.str.216 = private unnamed_addr constant [8 x i8] c"Outflow\00", align 1
@.str.217 = private unnamed_addr constant [29 x i8] c"Delete smoke from simulation\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"SMOKE\00", align 1
@.str.219 = private unnamed_addr constant [10 x i8] c"Add smoke\00", align 1
@.str.220 = private unnamed_addr constant [5 x i8] c"BOTH\00", align 1
@.str.221 = private unnamed_addr constant [13 x i8] c"Fire + Smoke\00", align 1
@.str.222 = private unnamed_addr constant [19 x i8] c"Add fire and smoke\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"FIRE\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"Fire\00", align 1
@.str.225 = private unnamed_addr constant [9 x i8] c"Add fire\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"PARTICLES\00", align 1
@.str.227 = private unnamed_addr constant [16 x i8] c"Particle System\00", align 1
@.str.228 = private unnamed_addr constant [26 x i8] c"Emit smoke from particles\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"MESH\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.231 = private unnamed_addr constant [39 x i8] c"Emit smoke from mesh surface or volume\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"AUTO\00", align 1
@.str.233 = private unnamed_addr constant [10 x i8] c"Generated\00", align 1
@.str.234 = private unnamed_addr constant [46 x i8] c"Generated coordinates centered to flow object\00", align 1
@.str.235 = private unnamed_addr constant [3 x i8] c"UV\00", align 1
@.str.236 = private unnamed_addr constant [37 x i8] c"Use UV layer for texture coordinates\00", align 1
@.str.237 = private unnamed_addr constant [30 x i8] c"modifiers[\22%s\22].flow_settings\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"COLLSTATIC\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"Static\00", align 1
@.str.240 = private unnamed_addr constant [20 x i8] c"Non moving obstacle\00", align 1
@.str.241 = private unnamed_addr constant [10 x i8] c"COLLRIGID\00", align 1
@.str.242 = private unnamed_addr constant [6 x i8] c"Rigid\00", align 1
@.str.243 = private unnamed_addr constant [15 x i8] c"Rigid obstacle\00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"COLLANIMATED\00", align 1
@.str.245 = private unnamed_addr constant [9 x i8] c"Animated\00", align 1
@.str.246 = private unnamed_addr constant [18 x i8] c"Animated obstacle\00", align 1
@.str.247 = private unnamed_addr constant [30 x i8] c"modifiers[\22%s\22].coll_settings\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @SmokeDomainSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SmokeDomainSettings_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
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

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define internal void @SmokeDomainSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @SmokeDomainSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SmokeDomainSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SmokeDomainSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SmokeDomainSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_resolution_max_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 36
  %5 = load i32, ptr %4, align 8, !tbaa !46
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_resolution_max_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 512)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 6)
  %7 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 36
  store i32 %6, ptr %7, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_amplify_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 35
  %5 = load i32, ptr %4, align 4, !tbaa !50
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_amplify_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 35
  store i32 %6, ptr %7, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_use_high_resolution_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 37
  %5 = load i32, ptr %4, align 4, !tbaa !51
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_use_high_resolution_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 37
  %7 = load i32, ptr %6, align 4, !tbaa !51
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_show_high_resolution_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 38
  %5 = load i32, ptr %4, align 8, !tbaa !52
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_show_high_resolution_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 38
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_noise_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 39
  %5 = load i16, ptr %4, align 4, !tbaa !53
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_noise_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 39
  store i16 %5, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeDomainSettings_alpha_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 33
  %5 = load float, ptr %4, align 4, !tbaa !54
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_alpha_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -5.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float -5.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 33
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeDomainSettings_beta_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 34
  %5 = load float, ptr %4, align 8, !tbaa !55
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_beta_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -5.000000e+00
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float -5.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 34
  store float %8, ptr %9, align 8, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeDomainSettings_collision_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Group, ptr noundef %6) #15
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SmokeDomainSettings_collision_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 5
  store ptr %6, ptr %10, align 8, !tbaa !56
  ret void
}

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @SmokeDomainSettings_fluid_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Group, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeDomainSettings_fluid_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 3
  store ptr %6, ptr %10, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeDomainSettings_effector_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Group, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeDomainSettings_effector_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 4
  store ptr %6, ptr %10, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeDomainSettings_strength_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 42
  %5 = load float, ptr %4, align 4, !tbaa !59
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_strength_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 42
  store float %8, ptr %9, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_dissolve_speed_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 41
  %5 = load i32, ptr %4, align 8, !tbaa !60
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_dissolve_speed_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 41
  store i32 %6, ptr %7, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_use_dissolve_smoke_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 37
  %5 = load i32, ptr %4, align 4, !tbaa !51
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_use_dissolve_smoke_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 37
  %7 = load i32, ptr %6, align 4, !tbaa !51
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_use_dissolve_smoke_log_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 37
  %5 = load i32, ptr %4, align 4, !tbaa !51
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_use_dissolve_smoke_log_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 37
  %7 = load i32, ptr %6, align 4, !tbaa !51
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeDomainSettings_point_cache_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PointCache, ptr noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_point_cache_compress_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 45
  %5 = load i32, ptr %4, align 8, !tbaa !61
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_point_cache_compress_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 45
  store i32 %1, ptr %5, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_collision_extents_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 50
  %5 = load i32, ptr %4, align 8, !tbaa !62
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_collision_extents_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 50
  store i32 %1, ptr %5, align 8, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeDomainSettings_effector_weights_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 49
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_EffectorWeights, ptr noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_highres_sampling_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 55
  %5 = load i32, ptr %4, align 4, !tbaa !64
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_highres_sampling_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 55
  store i32 %1, ptr %5, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeDomainSettings_time_scale_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 51
  %5 = load float, ptr %4, align 4, !tbaa !65
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_time_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3FC99999A0000000
  %6 = fcmp ogt float %1, 1.500000e+00
  %7 = select i1 %6, float 1.500000e+00, float %1
  %8 = select i1 %5, float 0x3FC99999A0000000, float %7
  %9 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 51
  store float %8, ptr %9, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeDomainSettings_vorticity_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 52
  %5 = load float, ptr %4, align 8, !tbaa !66
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_vorticity_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 4.000000e+00
  %7 = select i1 %6, float 4.000000e+00, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 52
  store float %8, ptr %9, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @SmokeDomainSettings_density_grid_get(ptr nocapture readnone %0, ptr nocapture readnone %1) #8 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @SmokeDomainSettings_flame_grid_get(ptr nocapture readnone %0, ptr nocapture readnone %1) #8 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SmokeDomainSettings_color_grid_get(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #9 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_cell_size_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 15
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !67
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !67
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !68

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_start_point_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 12
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !67
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !67
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !71

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_domain_resolution_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 26
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !72
  %10 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %9, ptr %10, align 4, !tbaa !72
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !73

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeDomainSettings_burning_rate_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 56
  %5 = load float, ptr %4, align 8, !tbaa !74
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_burning_rate_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 4.000000e+00
  %7 = select i1 %6, float 4.000000e+00, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 56
  store float %8, ptr %9, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeDomainSettings_flame_smoke_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 57
  %5 = load float, ptr %4, align 4, !tbaa !75
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_flame_smoke_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 8.000000e+00
  %7 = select i1 %6, float 8.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 57
  store float %8, ptr %9, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeDomainSettings_flame_vorticity_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 58
  %5 = load float, ptr %4, align 8, !tbaa !76
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_flame_vorticity_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 58
  store float %8, ptr %9, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeDomainSettings_flame_ignition_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 59
  %5 = load float, ptr %4, align 4, !tbaa !77
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_flame_ignition_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 5.000000e-01
  %6 = fcmp ogt float %1, 5.000000e+00
  %7 = select i1 %6, float 5.000000e+00, float %1
  %8 = select i1 %5, float 5.000000e-01, float %7
  %9 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 59
  store float %8, ptr %9, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeDomainSettings_flame_max_temp_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 60
  %5 = load float, ptr %4, align 8, !tbaa !78
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_flame_max_temp_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 60
  store float %8, ptr %9, align 8, !tbaa !78
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_flame_smoke_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 61
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !67
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !67
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !79

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_flame_smoke_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 61
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !67
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x47EFFFFFE0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 0x47EFFFFFE0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !67
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !80

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_use_adaptive_domain_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 37
  %5 = load i32, ptr %4, align 4, !tbaa !51
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_use_adaptive_domain_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 37
  %7 = load i32, ptr %6, align 4, !tbaa !51
  %8 = and i32 %7, -129
  %9 = select i1 %5, i32 0, i32 128
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_additional_res_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 31
  %5 = load i32, ptr %4, align 4, !tbaa !81
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_additional_res_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 512)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 31
  store i32 %6, ptr %7, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeDomainSettings_adapt_margin_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 30
  %5 = load i32, ptr %4, align 8, !tbaa !82
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_adapt_margin_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 24)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 2)
  %7 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 30
  store i32 %6, ptr %7, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeDomainSettings_adapt_threshold_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 32
  %5 = load float, ptr %4, align 8, !tbaa !83
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeDomainSettings_adapt_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 5.000000e-01
  %7 = select i1 %6, float 5.000000e-01, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %4, i64 0, i32 32
  store float %8, ptr %9, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeFlowSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SmokeFlowSettings_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SmokeFlowSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeFlowSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeFlowSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SmokeFlowSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeFlowSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeFlowSettings_density_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 8, !tbaa !84
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_density_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 9
  store float %8, ptr %9, align 8, !tbaa !84
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_smoke_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 10
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !67
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !67
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !86

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_smoke_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 10
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !67
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 0x47EFFFFFE0000000
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 0x47EFFFFFE0000000, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !67
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !87

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeFlowSettings_fuel_amount_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 8, !tbaa !88
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_fuel_amount_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 11
  store float %8, ptr %9, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeFlowSettings_temperature_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 4, !tbaa !89
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_temperature_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -1.000000e+01
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float -1.000000e+01, float %7
  %9 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 12
  store float %8, ptr %9, align 4, !tbaa !89
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeFlowSettings_particle_system_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ParticleSystem, ptr noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_particle_system_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeFlowSettings_smoke_flow_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 22
  %5 = load i16, ptr %4, align 2, !tbaa !91
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_smoke_flow_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 22
  store i16 %5, ptr %6, align 2, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeFlowSettings_smoke_flow_source_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 23
  %5 = load i16, ptr %4, align 8, !tbaa !92
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_smoke_flow_source_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 23
  store i16 %5, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeFlowSettings_use_absolute_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 25
  %5 = load i32, ptr %4, align 4, !tbaa !93
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_use_absolute_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 25
  %7 = load i32, ptr %6, align 4, !tbaa !93
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeFlowSettings_use_initial_velocity_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 25
  %5 = load i32, ptr %4, align 4, !tbaa !93
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_use_initial_velocity_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 25
  %7 = load i32, ptr %6, align 4, !tbaa !93
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeFlowSettings_velocity_factor_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 4, !tbaa !94
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_velocity_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -1.000000e+02
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float -1.000000e+02, float %7
  %9 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 6
  store float %8, ptr %9, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeFlowSettings_velocity_normal_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 8, !tbaa !95
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_velocity_normal_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -1.000000e+02
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float -1.000000e+02, float %7
  %9 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 7
  store float %8, ptr %9, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeFlowSettings_velocity_random_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !96
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_velocity_random_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 4, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeFlowSettings_volume_density_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 8, !tbaa !97
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_volume_density_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeFlowSettings_surface_distance_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 4, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_surface_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 14
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeFlowSettings_particle_size_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 8, !tbaa !99
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_particle_size_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3FB99999A0000000
  %6 = fcmp ogt float %1, 2.000000e+01
  %7 = select i1 %6, float 2.000000e+01, float %1
  %8 = select i1 %5, float 0x3FB99999A0000000, float %7
  %9 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 15
  store float %8, ptr %9, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeFlowSettings_use_particle_size_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 25
  %5 = load i32, ptr %4, align 4, !tbaa !93
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_use_particle_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 25
  %7 = load i32, ptr %6, align 4, !tbaa !93
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeFlowSettings_subframes_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 4, !tbaa !100
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_subframes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 50)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 16
  store i32 %6, ptr %7, align 4, !tbaa !100
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeFlowSettings_density_vertex_group_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 21
  %6 = load i16, ptr %5, align 4, !tbaa !101
  %7 = sext i16 %6 to i32
  tail call void @rna_object_vgroup_name_index_get(ptr noundef %0, ptr noundef %1, i32 noundef %7) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SmokeFlowSettings_density_vertex_group_length(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 21
  %5 = load i16, ptr %4, align 4, !tbaa !101
  %6 = sext i16 %5 to i32
  %7 = tail call i32 @rna_object_vgroup_name_index_length(ptr noundef %0, i32 noundef %6) #15
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeFlowSettings_density_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 21
  tail call void @rna_object_vgroup_name_index_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeFlowSettings_use_texture_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 25
  %5 = load i32, ptr %4, align 4, !tbaa !93
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_use_texture_set(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 25
  %7 = load i32, ptr %6, align 4, !tbaa !93
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeFlowSettings_texture_map_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 24
  %5 = load i16, ptr %4, align 2, !tbaa !102
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_texture_map_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 24
  store i16 %5, ptr %6, align 2, !tbaa !102
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeFlowSettings_uv_layer_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 20
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeFlowSettings_uv_layer_length(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 20
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @SmokeFlowSettings_uv_layer_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 20
  tail call void @rna_object_uvlayer_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeFlowSettings_noise_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeFlowSettings_noise_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !103
  ret void
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #3

declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeFlowSettings_texture_size_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !104
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_texture_size_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0x3F847AE140000000
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0x3F847AE140000000, float %7
  %9 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmokeFlowSettings_texture_offset_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 4, !tbaa !105
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeFlowSettings_texture_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+02
  %7 = select i1 %6, float 2.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 4, !tbaa !105
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeCollSettings_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_SmokeCollSettings_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SmokeCollSettings_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeCollSettings_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeCollSettings_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SmokeCollSettings_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeCollSettings_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeCollSettings_collision_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeCollSettings, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 4, !tbaa !106
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeCollSettings_collision_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SmokeCollSettings, ptr %4, i64 0, i32 4
  store i16 %5, ptr %6, align 4, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SmokeDomainSettings_density_grid_get_length(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #9 {
  store i32 0, ptr %1, align 4, !tbaa !72
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @rna_SmokeModifier_grid_get_length(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #9 {
  store i32 0, ptr %1, align 4, !tbaa !72
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SmokeDomainSettings_flame_grid_get_length(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #9 {
  store i32 0, ptr %1, align 4, !tbaa !72
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @SmokeDomainSettings_color_grid_get_length(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #9 {
  store i32 0, ptr %1, align 4, !tbaa !72
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @rna_SmokeModifier_color_grid_get_length(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #9 {
  store i32 0, ptr %1, align 4, !tbaa !72
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @rna_Smoke_reset(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  tail call void @smokeModifier_reset(ptr noundef %6) #15
  %7 = load ptr, ptr %4, align 8, !tbaa !45
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.SmokeModifierData, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !109
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %7, i64 0, i32 47
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.PointCache, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !112
  %19 = or i32 %18, 2
  store i32 %19, ptr %17, align 8, !tbaa !112
  br label %20

20:                                               ; preds = %3, %10, %14
  %21 = load ptr, ptr %2, align 8, !tbaa !115
  tail call void @DAG_id_tag_update(ptr noundef %21, i16 noundef signext 2) #15
  %22 = load ptr, ptr %2, align 8, !tbaa !115
  tail call void @DAG_id_tag_update(ptr noundef %22, i16 noundef signext 2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Smoke_resetCache(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.SmokeModifierData, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %5, i64 0, i32 47
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.PointCache, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !112
  %17 = or i32 %16, 2
  store i32 %17, ptr %15, align 8, !tbaa !112
  br label %18

18:                                               ; preds = %12, %8, %3
  %19 = load ptr, ptr %2, align 8, !tbaa !115
  tail call void @DAG_id_tag_update(ptr noundef %19, i16 noundef signext 2) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Smoke_reset_dependency(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  tail call void @smokeModifier_reset(ptr noundef %6) #15
  %7 = load ptr, ptr %5, align 8, !tbaa !108
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.SmokeModifierData, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !109
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %11, i64 0, i32 47
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.PointCache, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !112
  %18 = or i32 %17, 2
  store i32 %18, ptr %16, align 8, !tbaa !112
  br label %19

19:                                               ; preds = %13, %9, %3
  %20 = load ptr, ptr %2, align 8, !tbaa !115
  tail call void @DAG_id_tag_update(ptr noundef %20, i16 noundef signext 2) #15
  tail call void @DAG_relations_tag_update(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_SmokeDomainSettings_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [128 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %4, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #15
  %6 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 6
  %7 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %6, i64 noundef 128) #15
  %8 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.214, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #15
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_SmokeFlowSettings_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [128 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #15
  %6 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 6
  %7 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %6, i64 noundef 128) #15
  %8 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.237, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #15
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_SmokeCollSettings_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [128 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #15
  %6 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 6
  %7 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %6, i64 noundef 128) #15
  %8 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.247, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #15
  ret ptr %8
}

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

declare void @rna_object_vgroup_name_index_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rna_object_vgroup_name_index_length(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @rna_object_vgroup_name_index_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rna_object_uvlayer_name_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @smokeModifier_reset(ptr noundef) local_unnamed_addr #3

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #3

declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

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
!45 = !{!41, !36, i64 16}
!46 = !{!47, !43, i64 416}
!47 = !{!"SmokeDomainSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 192, !37, i64 204, !37, i64 268, !37, i64 332, !37, i64 344, !37, i64 356, !37, i64 368, !43, i64 380, !48, i64 384, !48, i64 388, !43, i64 392, !43, i64 396, !48, i64 400, !48, i64 404, !48, i64 408, !43, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !49, i64 428, !49, i64 430, !43, i64 432, !48, i64 436, !37, i64 440, !48, i64 452, !43, i64 456, !43, i64 460, !37, i64 464, !37, i64 480, !36, i64 512, !43, i64 520, !48, i64 524, !48, i64 528, !43, i64 532, !37, i64 536, !43, i64 548, !48, i64 552, !48, i64 556, !48, i64 560, !48, i64 564, !48, i64 568, !37, i64 572}
!48 = !{!"float", !37, i64 0}
!49 = !{!"short", !37, i64 0}
!50 = !{!47, !43, i64 412}
!51 = !{!47, !43, i64 420}
!52 = !{!47, !43, i64 424}
!53 = !{!47, !49, i64 428}
!54 = !{!47, !48, i64 404}
!55 = !{!47, !48, i64 408}
!56 = !{!47, !36, i64 40}
!57 = !{!47, !36, i64 24}
!58 = !{!47, !36, i64 32}
!59 = !{!47, !48, i64 436}
!60 = !{!47, !43, i64 432}
!61 = !{!47, !43, i64 456}
!62 = !{!47, !43, i64 520}
!63 = !{!47, !36, i64 512}
!64 = !{!47, !43, i64 548}
!65 = !{!47, !48, i64 524}
!66 = !{!47, !48, i64 528}
!67 = !{!48, !48, i64 0}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = distinct !{!71, !69, !70}
!72 = !{!43, !43, i64 0}
!73 = distinct !{!73, !69, !70}
!74 = !{!47, !48, i64 552}
!75 = !{!47, !48, i64 556}
!76 = !{!47, !48, i64 560}
!77 = !{!47, !48, i64 564}
!78 = !{!47, !48, i64 568}
!79 = distinct !{!79, !69, !70}
!80 = distinct !{!80, !69, !70}
!81 = !{!47, !43, i64 396}
!82 = !{!47, !43, i64 392}
!83 = !{!47, !48, i64 400}
!84 = !{!85, !48, i64 56}
!85 = !{!"SmokeFlowSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !43, i64 40, !48, i64 44, !48, i64 48, !48, i64 52, !48, i64 56, !37, i64 60, !48, i64 72, !48, i64 76, !48, i64 80, !48, i64 84, !48, i64 88, !43, i64 92, !48, i64 96, !48, i64 100, !43, i64 104, !37, i64 108, !49, i64 172, !49, i64 174, !49, i64 176, !49, i64 178, !43, i64 180}
!86 = distinct !{!86, !69, !70}
!87 = distinct !{!87, !69, !70}
!88 = !{!85, !48, i64 72}
!89 = !{!85, !48, i64 76}
!90 = !{!85, !36, i64 16}
!91 = !{!85, !49, i64 174}
!92 = !{!85, !49, i64 176}
!93 = !{!85, !43, i64 180}
!94 = !{!85, !48, i64 44}
!95 = !{!85, !48, i64 48}
!96 = !{!85, !48, i64 52}
!97 = !{!85, !48, i64 80}
!98 = !{!85, !48, i64 84}
!99 = !{!85, !48, i64 88}
!100 = !{!85, !43, i64 92}
!101 = !{!85, !49, i64 172}
!102 = !{!85, !49, i64 178}
!103 = !{!85, !36, i64 24}
!104 = !{!85, !48, i64 96}
!105 = !{!85, !48, i64 100}
!106 = !{!107, !49, i64 28}
!107 = !{!"SmokeCollSettings", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !49, i64 28, !49, i64 30}
!108 = !{!47, !36, i64 0}
!109 = !{!110, !36, i64 112}
!110 = !{!"SmokeModifierData", !111, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !48, i64 136, !43, i64 140}
!111 = !{!"ModifierData", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!112 = !{!113, !43, i64 16}
!113 = !{!"PointCache", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !49, i64 60, !49, i64 62, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !36, i64 1280, !114, i64 1288, !36, i64 1304, !36, i64 1312}
!114 = !{!"ListBase", !36, i64 0, !36, i64 8}
!115 = !{!41, !36, i64 0}
!116 = !{!85, !36, i64 0}
!117 = !{!107, !36, i64 0}
