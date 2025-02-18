; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_fcurve_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_fcurve_gen.c"
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
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.FPoint = type { [2 x float], i32, i32 }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.FMod_Generator = type { ptr, i32, i32, i32, i32 }
%struct.FMod_FunctionGenerator = type { float, float, float, float, i32, i32 }
%struct.FMod_Envelope = type { ptr, i32, float, float, float }
%struct.FCM_EnvelopeData = type { float, float, float, i16, i16 }
%struct.FMod_Cycles = type { i16, i16, i16, i16 }
%struct.FMod_Limits = type { %struct.rctf, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.FMod_Noise = type { float, float, float, float, i16, i16 }
%struct.FMod_Stepped = type { float, float, float, float, i32 }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.FModifierTypeInfo = type { i16, i16, i16, i16, [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"GENERATOR\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Generator\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Generate a curve using a factorized or expanded polynomial\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"FNGENERATOR\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Built-In Function\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"Generate a curve using standard math functions such as sin and cos\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"ENVELOPE\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Envelope\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"Reshape F-Curve values - e.g. change amplitude of movements\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"CYCLES\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Cycles\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Cyclic extend/repeat keyframe sequence\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"NOISE\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Add pseudo-random noise on top of F-Curves\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"PYTHON\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Python\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"LIMITS\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Limits\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"Restrict maximum and minimum values of F-Curve\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"STEPPED\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Stepped Interpolation\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"Snap values to nearest grid-step - e.g. for a stop-motion look\00", align 1
@fmodifier_type_items = dso_local local_unnamed_addr global [10 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 3, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 4, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 5, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 7, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.22 }, %struct.EnumPropertyItem { i32 9, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.25 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.26 = private unnamed_addr constant [9 x i8] c"KEYFRAME\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Keyframe\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"Normal keyframe - e.g. for key poses\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"BREAKDOWN\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"Breakdown\00", align 1
@.str.31 = private unnamed_addr constant [58 x i8] c"A breakdown pose - e.g. for transitions between key poses\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"EXTREME\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Extreme\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"An 'extreme' pose, or some other purpose as needed\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"JITTER\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"Jitter\00", align 1
@.str.37 = private unnamed_addr constant [79 x i8] c"A filler or baked keyframe for keying on ones, or some other purpose as needed\00", align 1
@beztriple_keyframe_type_items = dso_local local_unnamed_addr global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.28 }, %struct.EnumPropertyItem { i32 2, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.31 }, %struct.EnumPropertyItem { i32 1, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.34 }, %struct.EnumPropertyItem { i32 3, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.37 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [5 x i8] c"AUTO\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"Automatic Easing\00", align 1
@.str.40 = private unnamed_addr constant [157 x i8] c"Easing type is chosen automatically based on what the type of interpolation used (e.g. 'Ease In' for transitional types, and 'Ease Out' for dynamic effects)\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"EASE_IN\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"Ease In\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"Only on the end closest to the next keyframe\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"EASE_OUT\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"Ease Out\00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"Only on the end closest to the first keyframe\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"EASE_IN_OUT\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"Ease In and Out\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"Segment between both keyframes\00", align 1
@beztriple_interpolation_easing_items = dso_local local_unnamed_addr global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.38, i32 540, ptr @.str.39, ptr @.str.40 }, %struct.EnumPropertyItem { i32 1, ptr @.str.41, i32 538, ptr @.str.42, ptr @.str.43 }, %struct.EnumPropertyItem { i32 2, ptr @.str.44, i32 539, ptr @.str.45, ptr @.str.46 }, %struct.EnumPropertyItem { i32 3, ptr @.str.47, i32 540, ptr @.str.48, ptr @.str.49 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FCurve_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_rna_type, ptr null, i32 -1, ptr @.str.52, i32 128, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurve_rna_properties_begin, ptr @FCurve_rna_properties_next, ptr @FCurve_rna_properties_end, ptr @FCurve_rna_properties_get, ptr null, ptr null, ptr @FCurve_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Driver = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ChannelDriverVariables, ptr @RNA_DriverVariable, ptr null, %struct.ListBase { ptr @rna_Driver_rna_properties, ptr @rna_Driver_is_valid } }, ptr @.str.63, ptr null, ptr null, i32 4, ptr @.str.63, ptr @.str.245, ptr @.str.55, i32 519, ptr null, ptr @rna_Driver_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_ActionGroup = external global %struct.StructRNA, align 8
@rna_FCurve_sampled_points = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_keyframe_points, ptr @rna_FCurve_is_valid, i32 -1, ptr @.str.95, i32 16384, ptr @.str.96, ptr @.str.97, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurve_sampled_points_begin, ptr @FCurve_sampled_points_next, ptr @FCurve_sampled_points_end, ptr @FCurve_sampled_points_get, ptr @FCurve_sampled_points_length, ptr @FCurve_sampled_points_lookup_int, ptr null, ptr null, ptr @RNA_FCurveSample }, align 8
@.str.50 = private unnamed_addr constant [44 x i8] c"Array iterator out of range: %s (index %d)\0A\00", align 1
@__func__.FCurve_sampled_points_lookup_int = private unnamed_addr constant [33 x i8] c"FCurve_sampled_points_lookup_int\00", align 1
@rna_FCurve_keyframe_points = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_modifiers, ptr @rna_FCurve_sampled_points, i32 -1, ptr @.str.98, i32 16384, ptr @.str.99, ptr @.str.100, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_FCurveKeyframePoints, ptr null }, ptr @FCurve_keyframe_points_begin, ptr @FCurve_keyframe_points_next, ptr @FCurve_keyframe_points_end, ptr @FCurve_keyframe_points_get, ptr @FCurve_keyframe_points_length, ptr @FCurve_keyframe_points_lookup_int, ptr null, ptr null, ptr @RNA_Keyframe }, align 8
@__func__.FCurve_keyframe_points_lookup_int = private unnamed_addr constant [34 x i8] c"FCurve_keyframe_points_lookup_int\00", align 1
@rna_FCurve_modifiers = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FCurve_keyframe_points, i32 -1, ptr @.str.101, i32 0, ptr @.str.102, ptr @.str.103, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_FCurveModifiers, ptr null }, ptr @FCurve_modifiers_begin, ptr @FCurve_modifiers_next, ptr @FCurve_modifiers_end, ptr @FCurve_modifiers_get, ptr null, ptr @FCurve_modifiers_lookup_int, ptr null, ptr null, ptr @RNA_FModifier }, align 8
@rna_FCurveKeyframePoints_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurveKeyframePoints_rna_type, ptr null, i32 -1, ptr @.str.52, i32 128, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurveKeyframePoints_rna_properties_begin, ptr @FCurveKeyframePoints_rna_properties_next, ptr @FCurveKeyframePoints_rna_properties_end, ptr @FCurveKeyframePoints_rna_properties_get, ptr null, ptr null, ptr @FCurveKeyframePoints_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_FCurveModifiers_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurveModifiers_rna_type, ptr null, i32 -1, ptr @.str.52, i32 128, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurveModifiers_rna_properties_begin, ptr @FCurveModifiers_rna_properties_next, ptr @FCurveModifiers_rna_properties_end, ptr @FCurveModifiers_rna_properties_get, ptr null, ptr null, ptr @FCurveModifiers_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Keyframe_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_rna_type, ptr null, i32 -1, ptr @.str.52, i32 128, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Keyframe_rna_properties_begin, ptr @Keyframe_rna_properties_next, ptr @Keyframe_rna_properties_end, ptr @Keyframe_rna_properties_get, ptr null, ptr null, ptr @Keyframe_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_FCurveSample_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurveSample_rna_type, ptr null, i32 -1, ptr @.str.52, i32 128, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurveSample_rna_properties_begin, ptr @FCurveSample_rna_properties_next, ptr @FCurveSample_rna_properties_end, ptr @FCurveSample_rna_properties_get, ptr null, ptr null, ptr @FCurveSample_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_DriverTarget_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_DriverTarget_rna_type, ptr null, i32 -1, ptr @.str.52, i32 128, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DriverTarget_rna_properties_begin, ptr @DriverTarget_rna_properties_next, ptr @DriverTarget_rna_properties_end, ptr @DriverTarget_rna_properties_get, ptr null, ptr null, ptr @DriverTarget_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@rna_DriverVariable_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_DriverVariable_rna_type, ptr null, i32 -1, ptr @.str.52, i32 128, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DriverVariable_rna_properties_begin, ptr @DriverVariable_rna_properties_next, ptr @DriverVariable_rna_properties_end, ptr @DriverVariable_rna_properties_get, ptr null, ptr null, ptr @DriverVariable_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_DriverVariable_targets = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DriverVariable_type, i32 -1, ptr @.str.228, i32 16384, ptr @.str.229, ptr @.str.230, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 1, [3 x i32] [i32 8, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DriverVariable_targets_begin, ptr @DriverVariable_targets_next, ptr @DriverVariable_targets_end, ptr @DriverVariable_targets_get, ptr @DriverVariable_targets_length, ptr @DriverVariable_targets_lookup_int, ptr null, ptr null, ptr @RNA_DriverTarget }, align 8
@__func__.DriverVariable_targets_lookup_int = private unnamed_addr constant [34 x i8] c"DriverVariable_targets_lookup_int\00", align 1
@rna_Driver_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Driver_rna_type, ptr null, i32 -1, ptr @.str.52, i32 128, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Driver_rna_properties_begin, ptr @Driver_rna_properties_next, ptr @Driver_rna_properties_end, ptr @Driver_rna_properties_get, ptr null, ptr null, ptr @Driver_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Driver_variables = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Driver_show_debug_info, ptr @rna_Driver_expression, i32 -1, ptr @.str.238, i32 0, ptr @.str.239, ptr @.str.240, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_ChannelDriverVariables, ptr null }, ptr @Driver_variables_begin, ptr @Driver_variables_next, ptr @Driver_variables_end, ptr @Driver_variables_get, ptr null, ptr @Driver_variables_lookup_int, ptr @Driver_variables_lookup_string, ptr null, ptr @RNA_DriverVariable }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@rna_ChannelDriverVariables_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ChannelDriverVariables_rna_type, ptr null, i32 -1, ptr @.str.52, i32 128, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ChannelDriverVariables_rna_properties_begin, ptr @ChannelDriverVariables_rna_properties_next, ptr @ChannelDriverVariables_rna_properties_end, ptr @ChannelDriverVariables_rna_properties_get, ptr null, ptr null, ptr @ChannelDriverVariables_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_FModifier_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifier_rna_type, ptr null, i32 -1, ptr @.str.52, i32 128, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifier_rna_properties_begin, ptr @FModifier_rna_properties_next, ptr @FModifier_rna_properties_end, ptr @FModifier_rna_properties_get, ptr null, ptr null, ptr @FModifier_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_FModifierEnvelope_control_points = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierEnvelope_reference_value, ptr null, i32 -1, ptr @.str.318, i32 16384, ptr @.str.319, ptr @.str.320, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_FModifierEnvelopeControlPoints, ptr null }, ptr @FModifierEnvelope_control_points_begin, ptr @FModifierEnvelope_control_points_next, ptr @FModifierEnvelope_control_points_end, ptr @FModifierEnvelope_control_points_get, ptr @FModifierEnvelope_control_points_length, ptr @FModifierEnvelope_control_points_lookup_int, ptr null, ptr null, ptr @RNA_FModifierEnvelopeControlPoint }, align 8
@__func__.FModifierEnvelope_control_points_lookup_int = private unnamed_addr constant [44 x i8] c"FModifierEnvelope_control_points_lookup_int\00", align 1
@rna_FModifierEnvelopeControlPoints_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierEnvelopeControlPoints_rna_type, ptr null, i32 -1, ptr @.str.52, i32 128, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierEnvelopeControlPoints_rna_properties_begin, ptr @FModifierEnvelopeControlPoints_rna_properties_next, ptr @FModifierEnvelopeControlPoints_rna_properties_end, ptr @FModifierEnvelopeControlPoints_rna_properties_get, ptr null, ptr null, ptr @FModifierEnvelopeControlPoints_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_FModifierEnvelopeControlPoint_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierEnvelopeControlPoint_rna_type, ptr null, i32 -1, ptr @.str.52, i32 128, ptr @.str.53, ptr @.str.54, i32 0, ptr @.str.55, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierEnvelopeControlPoint_rna_properties_begin, ptr @FModifierEnvelopeControlPoint_rna_properties_next, ptr @FModifierEnvelopeControlPoint_rna_properties_end, ptr @FModifierEnvelopeControlPoint_rna_properties_get, ptr null, ptr null, ptr @FModifierEnvelopeControlPoint_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_FCurve_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_extrapolation, ptr @rna_FCurve_rna_properties, i32 -1, ptr @.str.56, i32 8912896, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurve_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.52 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_FCurve_extrapolation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_driver, ptr @rna_FCurve_rna_type, i32 -1, ptr @.str.59, i32 3, ptr @.str.60, ptr @.str.61, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_FCurve_update_data, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurve_extrapolation_get, ptr @FCurve_extrapolation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FCurve_extrapolation_items, i32 2, i32 0 }, align 8
@.str.56 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_FCurve_driver = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_group, ptr @rna_FCurve_extrapolation, i32 -1, ptr @.str.62, i32 8388608, ptr @.str.63, ptr @.str.64, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurve_driver_get, ptr null, ptr null, ptr null, ptr @RNA_Driver }, align 8
@.str.59 = private unnamed_addr constant [14 x i8] c"extrapolation\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"Extrapolation\00", align 1
@.str.61 = private unnamed_addr constant [77 x i8] c"Method used for evaluating value of F-Curve outside first and last keyframes\00", align 1
@rna_FCurve_extrapolation_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.439, i32 0, ptr @.str.440, ptr @.str.441 }, %struct.EnumPropertyItem { i32 1, ptr @.str.442, i32 0, ptr @.str.443, ptr @.str.444 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FCurve_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_data_path, ptr @rna_FCurve_driver, i32 -1, ptr @.str.65, i32 8388609, ptr @.str.66, ptr @.str.67, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 234881024, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurve_group_get, ptr @FCurve_group_set, ptr null, ptr null, ptr @RNA_ActionGroup }, align 8
@.str.62 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"Driver\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"Channel Driver (only set for Driver F-Curves)\00", align 1
@rna_FCurve_data_path = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_array_index, ptr @rna_FCurve_group, i32 -1, ptr @.str.68, i32 262145, ptr @.str.69, ptr @.str.70, i32 0, ptr @.str.55, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 234881024, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurve_data_path_get, ptr @FCurve_data_path_length, ptr @FCurve_data_path_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.2 }, align 8
@.str.65 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"Action Group that this F-Curve belongs to\00", align 1
@rna_FCurve_array_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_color_mode, ptr @rna_FCurve_data_path, i32 -1, ptr @.str.71, i32 8195, ptr @.str.72, ptr @.str.73, i32 0, ptr @.str.55, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 234881024, ptr null, ptr null, i32 76, i32 0, ptr null, ptr null }, ptr @FCurve_array_index_get, ptr @FCurve_array_index_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.68 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"Data Path\00", align 1
@.str.70 = private unnamed_addr constant [41 x i8] c"RNA Path to property affected by F-Curve\00", align 1
@rna_FCurve_color_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_color, ptr @rna_FCurve_array_index, i32 -1, ptr @.str.74, i32 3, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 234881024, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurve_color_mode_get, ptr @FCurve_color_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FCurve_color_mode_items, i32 3, i32 0 }, align 8
@.str.71 = private unnamed_addr constant [12 x i8] c"array_index\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"RNA Array Index\00", align 1
@.str.73 = private unnamed_addr constant [65 x i8] c"Index to the specific property affected by F-Curve if applicable\00", align 1
@rna_FCurve_color = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_select, ptr @rna_FCurve_color_mode, i32 -1, ptr @.str.77, i32 8195, ptr @.str.78, ptr @.str.79, i32 0, ptr @.str.55, i32 2, i32 20, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 234881024, ptr null, ptr null, i32 92, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @FCurve_color_get, ptr @FCurve_color_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_FCurve_color_default }, align 8
@.str.74 = private unnamed_addr constant [11 x i8] c"color_mode\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"Color Mode\00", align 1
@.str.76 = private unnamed_addr constant [58 x i8] c"Method used to determine color of F-Curve in Graph Editor\00", align 1
@rna_FCurve_color_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.445, i32 0, ptr @.str.446, ptr @.str.447 }, %struct.EnumPropertyItem { i32 1, ptr @.str.448, i32 0, ptr @.str.449, ptr @.str.450 }, %struct.EnumPropertyItem { i32 2, ptr @.str.451, i32 0, ptr @.str.452, ptr @.str.453 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FCurve_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_lock, ptr @rna_FCurve_color, i32 -1, ptr @.str.80, i32 3, ptr @.str.81, ptr @.str.82, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468550, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurve_select_get, ptr @FCurve_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.77 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.79 = private unnamed_addr constant [41 x i8] c"Color of the F-Curve in the Graph Editor\00", align 1
@rna_FCurve_color_default = internal global [3 x float] zeroinitializer, align 4
@rna_FCurve_lock = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_mute, ptr @rna_FCurve_select, i32 -1, ptr @.str.83, i32 3, ptr @.str.84, ptr @.str.85, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurve_lock_get, ptr @FCurve_lock_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.80 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.82 = private unnamed_addr constant [32 x i8] c"F-Curve is selected for editing\00", align 1
@rna_FCurve_mute = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_hide, ptr @rna_FCurve_lock, i32 -1, ptr @.str.86, i32 3, ptr @.str.87, ptr @.str.88, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239599617, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurve_mute_get, ptr @FCurve_mute_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.83 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.85 = private unnamed_addr constant [36 x i8] c"F-Curve's settings cannot be edited\00", align 1
@rna_FCurve_hide = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_is_valid, ptr @rna_FCurve_mute, i32 -1, ptr @.str.89, i32 3, ptr @.str.90, ptr @.str.91, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 252510208, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurve_hide_get, ptr @FCurve_hide_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.86 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"Muted\00", align 1
@.str.88 = private unnamed_addr constant [25 x i8] c"F-Curve is not evaluated\00", align 1
@rna_FCurve_is_valid = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_sampled_points, ptr @rna_FCurve_hide, i32 -1, ptr @.str.92, i32 3, ptr @.str.93, ptr @.str.94, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurve_is_valid_get, ptr @FCurve_is_valid_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.89 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"Hide\00", align 1
@.str.91 = private unnamed_addr constant [64 x i8] c"F-Curve and its keyframes are hidden in the Graph Editor graphs\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"is_valid\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"Valid\00", align 1
@.str.94 = private unnamed_addr constant [88 x i8] c"False when F-Curve could not be evaluated in past, so should be skipped when evaluating\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"sampled_points\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"Sampled Points\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c"Sampled animation data\00", align 1
@RNA_FCurveSample = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_DriverTarget, ptr @RNA_Keyframe, ptr null, %struct.ListBase { ptr @rna_FCurveSample_rna_properties, ptr @rna_FCurveSample_co } }, ptr @.str.204, ptr null, ptr null, i32 4, ptr @.str.205, ptr @.str.206, ptr @.str.55, i32 17, ptr null, ptr @rna_FCurveSample_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.98 = private unnamed_addr constant [16 x i8] c"keyframe_points\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"Keyframes\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"User-editable keyframes\00", align 1
@RNA_FCurveKeyframePoints = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FCurveModifiers, ptr @RNA_FCurve, ptr null, %struct.ListBase { ptr @rna_FCurveKeyframePoints_rna_properties, ptr @rna_FCurveKeyframePoints_rna_type } }, ptr @.str.144, ptr null, ptr null, i32 4, ptr @.str.145, ptr @.str.146, ptr @.str.55, i32 17, ptr null, ptr @rna_FCurveKeyframePoints_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_FCurveKeyframePoints_insert_func, ptr @rna_FCurveKeyframePoints_remove_func } }, align 8
@RNA_Keyframe = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FCurveSample, ptr @RNA_FCurveModifiers, ptr null, %struct.ListBase { ptr @rna_Keyframe_rna_properties, ptr @rna_Keyframe_handle_right } }, ptr @.str.27, ptr null, ptr null, i32 4, ptr @.str.27, ptr @.str.200, ptr @.str.55, i32 17, ptr null, ptr @rna_Keyframe_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.101 = private unnamed_addr constant [10 x i8] c"modifiers\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"Modifiers\00", align 1
@.str.103 = private unnamed_addr constant [45 x i8] c"Modifiers affecting the shape of the F-Curve\00", align 1
@RNA_FCurveModifiers = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Keyframe, ptr @RNA_FCurveKeyframePoints, ptr null, %struct.ListBase { ptr @rna_FCurveModifiers_rna_properties, ptr @rna_FCurveModifiers_active } }, ptr @.str.158, ptr null, ptr null, i32 4, ptr @.str.159, ptr @.str.160, ptr @.str.55, i32 17, ptr null, ptr @rna_FCurveModifiers_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_FCurveModifiers_new_func, ptr @rna_FCurveModifiers_remove_func } }, align 8
@RNA_FModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FModifierGenerator, ptr @RNA_ChannelDriverVariables, ptr null, %struct.ListBase { ptr @rna_FModifier_rna_properties, ptr @rna_FModifier_influence } }, ptr @.str.285, ptr null, ptr null, i32 4, ptr @.str.286, ptr @.str.287, ptr @.str.55, i32 17, ptr null, ptr @rna_FModifier_rna_properties, ptr null, ptr null, ptr @rna_FModifierType_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_FCurve_evaluate_value = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FCurve_evaluate_frame, i32 -1, ptr @.str.107, i32 11, ptr @.str.108, ptr @.str.109, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.104 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.106 = private unnamed_addr constant [32 x i8] c"Evaluate F-Curve at given frame\00", align 1
@rna_FCurve_evaluate_frame = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurve_evaluate_value, ptr null, i32 -1, ptr @.str.104, i32 7, ptr @.str.105, ptr @.str.106, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.107 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.109 = private unnamed_addr constant [32 x i8] c"Value of F-Curve specific frame\00", align 1
@rna_FCurve_update_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_FCurve_range_func, ptr @rna_FCurve_evaluate_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.112, i32 0, ptr @.str.113, ptr @FCurve_update_call, ptr null }, align 8
@.str.110 = private unnamed_addr constant [9 x i8] c"evaluate\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"Evaluate F-Curve\00", align 1
@rna_FCurve_evaluate_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_FCurve_update_func, ptr null, ptr null, %struct.ListBase { ptr @rna_FCurve_evaluate_frame, ptr @rna_FCurve_evaluate_value } }, ptr @.str.110, i32 0, ptr @.str.111, ptr @FCurve_evaluate_call, ptr @rna_FCurve_evaluate_value }, align 8
@rna_FCurve_range_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_FCurve_update_autoflags_func, ptr @rna_FCurve_update_func, ptr null, %struct.ListBase { ptr @rna_FCurve_range_range, ptr @rna_FCurve_range_range } }, ptr @.str.114, i32 0, ptr @.str.117, ptr @FCurve_range_call, ptr null }, align 8
@.str.112 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.113 = private unnamed_addr constant [81 x i8] c"Ensure keyframes are sorted in chronological order and handles are set correctly\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"Min/Max values\00", align 1
@rna_FCurve_range_range_default = internal global [2 x float] zeroinitializer, align 4
@rna_FCurve_range_range = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.114, i32 8388619, ptr @.str.115, ptr @.str.116, i32 0, ptr @.str.55, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_FCurve_range_range_default }, align 8
@rna_FCurve_update_autoflags_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_FCurve_range_func, ptr null, %struct.ListBase { ptr @rna_FCurve_update_autoflags_data, ptr @rna_FCurve_update_autoflags_data } }, ptr @.str.121, i32 24, ptr @.str.122, ptr @FCurve_update_autoflags_call, ptr null }, align 8
@.str.117 = private unnamed_addr constant [33 x i8] c"Get the time extents for F-Curve\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.120 = private unnamed_addr constant [56 x i8] c"Data containing the property controlled by given FCurve\00", align 1
@RNA_AnyType = external global %struct.StructRNA, align 8
@rna_FCurve_update_autoflags_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.118, i32 8652804, ptr @.str.119, ptr @.str.120, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_AnyType }, align 8
@.str.121 = private unnamed_addr constant [17 x i8] c"update_autoflags\00", align 1
@.str.122 = private unnamed_addr constant [134 x i8] c"Update FCurve flags set automatically from affected property (currently, integer/discrete flags set when the property is not a float)\00", align 1
@RNA_DynamicPaintSurface = external global %struct.StructRNA, align 8
@.str.123 = private unnamed_addr constant [7 x i8] c"FCurve\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"F-Curve\00", align 1
@.str.125 = private unnamed_addr constant [44 x i8] c"F-Curve defining values of a period of time\00", align 1
@RNA_FCurve = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FCurveKeyframePoints, ptr @RNA_DynamicPaintSurface, ptr null, %struct.ListBase { ptr @rna_FCurve_rna_properties, ptr @rna_FCurve_modifiers } }, ptr @.str.123, ptr null, ptr null, i32 4, ptr @.str.124, ptr @.str.125, ptr @.str.55, i32 167, ptr null, ptr @rna_FCurve_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_FCurve_evaluate_func, ptr @rna_FCurve_update_autoflags_func } }, align 8
@rna_FCurveKeyframePoints_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FCurveKeyframePoints_rna_properties, i32 -1, ptr @.str.56, i32 8912896, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurveKeyframePoints_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_FCurveKeyframePoints_insert_value = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurveKeyframePoints_insert_options, ptr @rna_FCurveKeyframePoints_insert_frame, i32 -1, ptr @.str.107, i32 7, ptr @.str.2, ptr @.str.127, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.126 = private unnamed_addr constant [31 x i8] c"X Value of this keyframe point\00", align 1
@rna_FCurveKeyframePoints_insert_frame = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurveKeyframePoints_insert_value, ptr null, i32 -1, ptr @.str.104, i32 7, ptr @.str.2, ptr @.str.126, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_FCurveKeyframePoints_insert_options = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurveKeyframePoints_insert_keyframe, ptr @rna_FCurveKeyframePoints_insert_value, i32 -1, ptr @.str.128, i32 2097155, ptr @.str.2, ptr @.str.129, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_FCurveKeyframePoints_insert_options_items, i32 3, i32 0 }, align 8
@.str.127 = private unnamed_addr constant [31 x i8] c"Y Value of this keyframe point\00", align 1
@rna_FCurveKeyframePoints_insert_keyframe = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FCurveKeyframePoints_insert_options, i32 -1, ptr @.str.130, i32 8388616, ptr @.str.2, ptr @.str.131, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Keyframe }, align 8
@.str.128 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"Keyframe options\00", align 1
@rna_FCurveKeyframePoints_insert_options_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 16, ptr @.str.454, i32 0, ptr @.str.455, ptr @.str.456 }, %struct.EnumPropertyItem { i32 1, ptr @.str.457, i32 0, ptr @.str.458, ptr @.str.459 }, %struct.EnumPropertyItem { i32 4, ptr @.str.460, i32 0, ptr @.str.140, ptr @.str.461 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.130 = private unnamed_addr constant [9 x i8] c"keyframe\00", align 1
@.str.131 = private unnamed_addr constant [23 x i8] c"Newly created keyframe\00", align 1
@rna_FCurveKeyframePoints_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_FCurveKeyframePoints_remove_func, ptr @rna_FCurveKeyframePoints_insert_func, ptr null, %struct.ListBase { ptr @rna_FCurveKeyframePoints_add_count, ptr @rna_FCurveKeyframePoints_add_count } }, ptr @.str.137, i32 0, ptr @.str.133, ptr @FCurveKeyframePoints_add_call, ptr null }, align 8
@.str.132 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.133 = private unnamed_addr constant [34 x i8] c"Add a keyframe point to a F-Curve\00", align 1
@rna_FCurveKeyframePoints_insert_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_FCurveKeyframePoints_add_func, ptr null, ptr null, %struct.ListBase { ptr @rna_FCurveKeyframePoints_insert_frame, ptr @rna_FCurveKeyframePoints_insert_keyframe } }, ptr @.str.132, i32 0, ptr @.str.133, ptr @FCurveKeyframePoints_insert_call, ptr @rna_FCurveKeyframePoints_insert_keyframe }, align 8
@.str.134 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"Number\00", align 1
@.str.136 = private unnamed_addr constant [38 x i8] c"Number of points to add to the spline\00", align 1
@rna_FCurveKeyframePoints_add_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.134, i32 3, ptr @.str.135, ptr @.str.136, i32 0, ptr @.str.55, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 1, ptr null }, align 8
@rna_FCurveKeyframePoints_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_FCurveKeyframePoints_add_func, ptr null, %struct.ListBase { ptr @rna_FCurveKeyframePoints_remove_keyframe, ptr @rna_FCurveKeyframePoints_remove_fast } }, ptr @.str.142, i32 16, ptr @.str.143, ptr @FCurveKeyframePoints_remove_call, ptr null }, align 8
@.str.137 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@rna_FCurveKeyframePoints_remove_fast = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FCurveKeyframePoints_remove_keyframe, i32 -1, ptr @.str.139, i32 3, ptr @.str.140, ptr @.str.141, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.138 = private unnamed_addr constant [19 x i8] c"Keyframe to remove\00", align 1
@rna_FCurveKeyframePoints_remove_keyframe = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurveKeyframePoints_remove_fast, ptr null, i32 -1, ptr @.str.130, i32 264196, ptr @.str.2, ptr @.str.138, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Keyframe }, align 8
@.str.139 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c"Fast\00", align 1
@.str.141 = private unnamed_addr constant [65 x i8] c"Fast keyframe removal to avoid recalculating the curve each time\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.143 = private unnamed_addr constant [32 x i8] c"Remove keyframe from an F-Curve\00", align 1
@.str.144 = private unnamed_addr constant [21 x i8] c"FCurveKeyframePoints\00", align 1
@.str.145 = private unnamed_addr constant [16 x i8] c"Keyframe Points\00", align 1
@.str.146 = private unnamed_addr constant [30 x i8] c"Collection of keyframe points\00", align 1
@rna_FCurveModifiers_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurveModifiers_active, ptr @rna_FCurveModifiers_rna_properties, i32 -1, ptr @.str.56, i32 8912896, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurveModifiers_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_FCurveModifiers_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FCurveModifiers_rna_type, i32 -1, ptr @.str.147, i32 8388609, ptr @.str.148, ptr @.str.148, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurveModifiers_active_get, ptr @FCurveModifiers_active_set, ptr null, ptr null, ptr @RNA_FModifier }, align 8
@.str.147 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.148 = private unnamed_addr constant [24 x i8] c"Active F-Curve Modifier\00", align 1
@rna_FCurveModifiers_new_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FCurveModifiers_new_fmodifier, i32 -1, ptr @.str.151, i32 7, ptr @.str.2, ptr @.str.152, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_FCurveModifiers_new_type_items, i32 9, i32 1 }, align 8
@.str.149 = private unnamed_addr constant [10 x i8] c"fmodifier\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"New fmodifier\00", align 1
@rna_FCurveModifiers_new_fmodifier = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurveModifiers_new_type, ptr null, i32 -1, ptr @.str.149, i32 8388616, ptr @.str.2, ptr @.str.150, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_FModifier }, align 8
@.str.151 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.152 = private unnamed_addr constant [23 x i8] c"Constraint type to add\00", align 1
@rna_FCurveModifiers_new_type_items = internal global [10 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 3, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 4, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 5, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 7, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.22 }, %struct.EnumPropertyItem { i32 9, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.25 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FCurveModifiers_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_FCurveModifiers_new_func, ptr null, %struct.ListBase { ptr @rna_FCurveModifiers_remove_modifier, ptr @rna_FCurveModifiers_remove_modifier } }, ptr @.str.142, i32 16, ptr @.str.157, ptr @FCurveModifiers_remove_call, ptr null }, align 8
@.str.153 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.154 = private unnamed_addr constant [32 x i8] c"Add a constraint to this object\00", align 1
@rna_FCurveModifiers_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_FCurveModifiers_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_FCurveModifiers_new_fmodifier, ptr @rna_FCurveModifiers_new_type } }, ptr @.str.153, i32 0, ptr @.str.154, ptr @FCurveModifiers_new_call, ptr @rna_FCurveModifiers_new_fmodifier }, align 8
@.str.155 = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@.str.156 = private unnamed_addr constant [17 x i8] c"Removed modifier\00", align 1
@rna_FCurveModifiers_remove_modifier = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.155, i32 264196, ptr @.str.2, ptr @.str.156, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_FModifier }, align 8
@.str.157 = private unnamed_addr constant [36 x i8] c"Remove a modifier from this F-Curve\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"FCurveModifiers\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"F-Curve Modifiers\00", align 1
@.str.160 = private unnamed_addr constant [32 x i8] c"Collection of F-Curve Modifiers\00", align 1
@rna_Keyframe_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_select_left_handle, ptr @rna_Keyframe_rna_properties, i32 -1, ptr @.str.56, i32 8912896, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Keyframe_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_Keyframe_select_left_handle = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_select_right_handle, ptr @rna_Keyframe_rna_type, i32 -1, ptr @.str.161, i32 8195, ptr @.str.162, ptr @.str.163, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468550, ptr null, ptr null, i32 51, i32 2, ptr null, ptr null }, ptr @Keyframe_select_left_handle_get, ptr @Keyframe_select_left_handle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_Keyframe_select_right_handle = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_select_control_point, ptr @rna_Keyframe_select_left_handle, i32 -1, ptr @.str.164, i32 8195, ptr @.str.165, ptr @.str.166, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468550, ptr null, ptr null, i32 53, i32 2, ptr null, ptr null }, ptr @Keyframe_select_right_handle_get, ptr @Keyframe_select_right_handle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.161 = private unnamed_addr constant [19 x i8] c"select_left_handle\00", align 1
@.str.162 = private unnamed_addr constant [18 x i8] c"Handle 1 selected\00", align 1
@.str.163 = private unnamed_addr constant [29 x i8] c"Left handle selection status\00", align 1
@rna_Keyframe_select_control_point = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_handle_left_type, ptr @rna_Keyframe_select_right_handle, i32 -1, ptr @.str.167, i32 8195, ptr @.str.81, ptr @.str.168, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468550, ptr null, ptr null, i32 52, i32 2, ptr null, ptr null }, ptr @Keyframe_select_control_point_get, ptr @Keyframe_select_control_point_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.164 = private unnamed_addr constant [20 x i8] c"select_right_handle\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"Handle 2 selected\00", align 1
@.str.166 = private unnamed_addr constant [30 x i8] c"Right handle selection status\00", align 1
@rna_Keyframe_handle_left_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_handle_right_type, ptr @rna_Keyframe_select_control_point, i32 -1, ptr @.str.169, i32 3, ptr @.str.170, ptr @.str.171, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Keyframe_handle_left_type_get, ptr @Keyframe_handle_left_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Keyframe_handle_left_type_items, i32 5, i32 0 }, align 8
@.str.167 = private unnamed_addr constant [21 x i8] c"select_control_point\00", align 1
@.str.168 = private unnamed_addr constant [31 x i8] c"Control point selection status\00", align 1
@rna_Keyframe_handle_right_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_interpolation, ptr @rna_Keyframe_handle_left_type, i32 -1, ptr @.str.172, i32 3, ptr @.str.173, ptr @.str.171, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Keyframe_handle_right_type_get, ptr @Keyframe_handle_right_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Keyframe_handle_right_type_items, i32 5, i32 0 }, align 8
@.str.169 = private unnamed_addr constant [17 x i8] c"handle_left_type\00", align 1
@.str.170 = private unnamed_addr constant [17 x i8] c"Left Handle Type\00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c"Handle types\00", align 1
@rna_Keyframe_handle_left_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.462, i32 0, ptr @.str.463, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.464, i32 0, ptr @.str.465, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.466, i32 0, ptr @.str.467, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.38, i32 0, ptr @.str.468, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.469, i32 0, ptr @.str.470, ptr @.str.471 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Keyframe_interpolation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_type, ptr @rna_Keyframe_handle_right_type, i32 -1, ptr @.str.174, i32 3, ptr @.str.175, ptr @.str.176, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Keyframe_interpolation_get, ptr @Keyframe_interpolation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Keyframe_interpolation_items, i32 16, i32 0 }, align 8
@.str.172 = private unnamed_addr constant [18 x i8] c"handle_right_type\00", align 1
@.str.173 = private unnamed_addr constant [18 x i8] c"Right Handle Type\00", align 1
@rna_Keyframe_handle_right_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.462, i32 0, ptr @.str.463, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.464, i32 0, ptr @.str.465, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.466, i32 0, ptr @.str.467, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.38, i32 0, ptr @.str.468, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.469, i32 0, ptr @.str.470, ptr @.str.471 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Keyframe_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_easing, ptr @rna_Keyframe_interpolation, i32 -1, ptr @.str.151, i32 3, ptr @.str.177, ptr @.str.178, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Keyframe_type_get, ptr @Keyframe_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Keyframe_type_items, i32 4, i32 0 }, align 8
@.str.174 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.175 = private unnamed_addr constant [14 x i8] c"Interpolation\00", align 1
@.str.176 = private unnamed_addr constant [98 x i8] c"Interpolation method to use for segment of the F-Curve from this Keyframe until the next Keyframe\00", align 1
@rna_Keyframe_interpolation_items = internal global [17 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.175, ptr @.str.472 }, %struct.EnumPropertyItem { i32 0, ptr @.str.439, i32 525, ptr @.str.440, ptr @.str.473 }, %struct.EnumPropertyItem { i32 1, ptr @.str.442, i32 526, ptr @.str.443, ptr @.str.474 }, %struct.EnumPropertyItem { i32 2, ptr @.str.475, i32 527, ptr @.str.476, ptr @.str.477 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.478, ptr @.str.479 }, %struct.EnumPropertyItem { i32 12, ptr @.str.480, i32 528, ptr @.str.481, ptr @.str.482 }, %struct.EnumPropertyItem { i32 9, ptr @.str.483, i32 529, ptr @.str.484, ptr @.str.485 }, %struct.EnumPropertyItem { i32 6, ptr @.str.486, i32 530, ptr @.str.487, ptr @.str.488 }, %struct.EnumPropertyItem { i32 10, ptr @.str.489, i32 531, ptr @.str.490, ptr @.str.491 }, %struct.EnumPropertyItem { i32 11, ptr @.str.492, i32 532, ptr @.str.493, ptr @.str.494 }, %struct.EnumPropertyItem { i32 8, ptr @.str.495, i32 533, ptr @.str.496, ptr @.str.497 }, %struct.EnumPropertyItem { i32 5, ptr @.str.498, i32 534, ptr @.str.499, ptr @.str.500 }, %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr @.str.501, ptr @.str.502 }, %struct.EnumPropertyItem { i32 3, ptr @.str.503, i32 537, ptr @.str.183, ptr @.str.504 }, %struct.EnumPropertyItem { i32 4, ptr @.str.505, i32 535, ptr @.str.506, ptr @.str.507 }, %struct.EnumPropertyItem { i32 7, ptr @.str.508, i32 536, ptr @.str.509, ptr @.str.510 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Keyframe_easing = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_back, ptr @rna_Keyframe_type, i32 -1, ptr @.str.179, i32 3, ptr @.str.180, ptr @.str.181, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Keyframe_easing_get, ptr @Keyframe_easing_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Keyframe_easing_items, i32 4, i32 0 }, align 8
@.str.177 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.178 = private unnamed_addr constant [44 x i8] c"Type of keyframe (for visual purposes only)\00", align 1
@rna_Keyframe_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.28 }, %struct.EnumPropertyItem { i32 2, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.31 }, %struct.EnumPropertyItem { i32 1, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.34 }, %struct.EnumPropertyItem { i32 3, ptr @.str.35, i32 0, ptr @.str.36, ptr @.str.37 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Keyframe_back = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_amplitude, ptr @rna_Keyframe_easing, i32 -1, ptr @.str.182, i32 8195, ptr @.str.183, ptr @.str.184, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 56, i32 4, ptr null, ptr null }, ptr @Keyframe_back_get, ptr @Keyframe_back_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.179 = private unnamed_addr constant [7 x i8] c"easing\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"Easing\00", align 1
@.str.181 = private unnamed_addr constant [96 x i8] c"Which ends of the segment between this and the next keyframe easing interpolation is applied to\00", align 1
@rna_Keyframe_easing_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.38, i32 540, ptr @.str.39, ptr @.str.40 }, %struct.EnumPropertyItem { i32 1, ptr @.str.41, i32 538, ptr @.str.42, ptr @.str.43 }, %struct.EnumPropertyItem { i32 2, ptr @.str.44, i32 539, ptr @.str.45, ptr @.str.46 }, %struct.EnumPropertyItem { i32 3, ptr @.str.47, i32 540, ptr @.str.48, ptr @.str.49 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Keyframe_amplitude = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_period, ptr @rna_Keyframe_back, i32 -1, ptr @.str.185, i32 8195, ptr @.str.186, ptr @.str.187, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 60, i32 4, ptr null, ptr null }, ptr @Keyframe_amplitude_get, ptr @Keyframe_amplitude_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.182 = private unnamed_addr constant [5 x i8] c"back\00", align 1
@.str.183 = private unnamed_addr constant [5 x i8] c"Back\00", align 1
@.str.184 = private unnamed_addr constant [38 x i8] c"Amount of overshoot for 'back' easing\00", align 1
@rna_Keyframe_period = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_handle_left, ptr @rna_Keyframe_amplitude, i32 -1, ptr @.str.188, i32 8195, ptr @.str.189, ptr @.str.190, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 64, i32 4, ptr null, ptr null }, ptr @Keyframe_period_get, ptr @Keyframe_period_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.185 = private unnamed_addr constant [10 x i8] c"amplitude\00", align 1
@.str.186 = private unnamed_addr constant [10 x i8] c"Amplitude\00", align 1
@.str.187 = private unnamed_addr constant [53 x i8] c"Amount to boost elastic bounces for 'elastic' easing\00", align 1
@rna_Keyframe_handle_left = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_co, ptr @rna_Keyframe_period, i32 -1, ptr @.str.191, i32 3, ptr @.str.192, ptr @.str.193, i32 0, ptr @.str.55, i32 2, i32 31, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Keyframe_handle_left_get, ptr @Keyframe_handle_left_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Keyframe_handle_left_default }, align 8
@.str.188 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"Period\00", align 1
@.str.190 = private unnamed_addr constant [40 x i8] c"Time between bounces for elastic easing\00", align 1
@rna_Keyframe_co = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Keyframe_handle_right, ptr @rna_Keyframe_handle_left, i32 -1, ptr @.str.194, i32 3, ptr @.str.195, ptr @.str.196, i32 0, ptr @.str.55, i32 2, i32 31, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Keyframe_co_get, ptr @Keyframe_co_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Keyframe_co_default }, align 8
@.str.191 = private unnamed_addr constant [12 x i8] c"handle_left\00", align 1
@.str.192 = private unnamed_addr constant [12 x i8] c"Left Handle\00", align 1
@.str.193 = private unnamed_addr constant [58 x i8] c"Coordinates of the left handle (before the control point)\00", align 1
@rna_Keyframe_handle_left_default = internal global [2 x float] zeroinitializer, align 4
@rna_Keyframe_handle_right = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Keyframe_co, i32 -1, ptr @.str.197, i32 3, ptr @.str.198, ptr @.str.199, i32 0, ptr @.str.55, i32 2, i32 31, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Keyframe_handle_right_get, ptr @Keyframe_handle_right_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Keyframe_handle_right_default }, align 8
@.str.194 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.195 = private unnamed_addr constant [14 x i8] c"Control Point\00", align 1
@.str.196 = private unnamed_addr constant [33 x i8] c"Coordinates of the control point\00", align 1
@rna_Keyframe_co_default = internal global [2 x float] zeroinitializer, align 4
@.str.197 = private unnamed_addr constant [13 x i8] c"handle_right\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"Right Handle\00", align 1
@.str.199 = private unnamed_addr constant [58 x i8] c"Coordinates of the right handle (after the control point)\00", align 1
@rna_Keyframe_handle_right_default = internal global [2 x float] zeroinitializer, align 4
@.str.200 = private unnamed_addr constant [70 x i8] c"Bezier curve point with two handles defining a Keyframe on an F-Curve\00", align 1
@rna_FCurveSample_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurveSample_select, ptr @rna_FCurveSample_rna_properties, i32 -1, ptr @.str.56, i32 8912896, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurveSample_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_FCurveSample_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FCurveSample_co, ptr @rna_FCurveSample_rna_type, i32 -1, ptr @.str.80, i32 3, ptr @.str.81, ptr @.str.201, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468550, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FCurveSample_select_get, ptr @FCurveSample_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_FCurveSample_co = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FCurveSample_select, i32 -1, ptr @.str.194, i32 8195, ptr @.str.202, ptr @.str.203, i32 0, ptr @.str.55, i32 2, i32 31, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @FCurveSample_co_get, ptr @FCurveSample_co_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_FCurveSample_co_default }, align 8
@.str.201 = private unnamed_addr constant [17 x i8] c"Selection status\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.203 = private unnamed_addr constant [18 x i8] c"Point coordinates\00", align 1
@rna_FCurveSample_co_default = internal global [2 x float] zeroinitializer, align 4
@RNA_DriverTarget = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_DriverVariable, ptr @RNA_FCurveSample, ptr null, %struct.ListBase { ptr @rna_DriverTarget_rna_properties, ptr @rna_DriverTarget_transform_space } }, ptr @.str.222, ptr null, ptr null, i32 4, ptr @.str.223, ptr @.str.224, ptr @.str.55, i32 17, ptr null, ptr @rna_DriverTarget_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.204 = private unnamed_addr constant [13 x i8] c"FCurveSample\00", align 1
@.str.205 = private unnamed_addr constant [15 x i8] c"F-Curve Sample\00", align 1
@.str.206 = private unnamed_addr constant [25 x i8] c"Sample point for F-Curve\00", align 1
@rna_DriverTarget_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DriverTarget_id, ptr @rna_DriverTarget_rna_properties, i32 -1, ptr @.str.56, i32 8912896, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DriverTarget_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_DriverTarget_id = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DriverTarget_id_type, ptr @rna_DriverTarget_rna_type, i32 -1, ptr @.str.207, i32 8388673, ptr @.str.208, ptr @.str.209, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DriverTarget_update_data, i32 0, ptr @rna_DriverTarget_id_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DriverTarget_id_get, ptr @DriverTarget_id_set, ptr @rna_DriverTarget_id_typef, ptr null, ptr @RNA_ID }, align 8
@rna_DriverTarget_id_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DriverTarget_data_path, ptr @rna_DriverTarget_id, i32 -1, ptr @.str.210, i32 3, ptr @.str.211, ptr @.str.212, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DriverTarget_update_data, i32 0, ptr @rna_DriverTarget_id_type_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DriverTarget_id_type_get, ptr @DriverTarget_id_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DriverTarget_id_type_items, i32 31, i32 16975 }, align 8
@.str.207 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.208 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.209 = private unnamed_addr constant [96 x i8] c"ID-block that the specific property used can be found from (id_type property must be set first)\00", align 1
@rna_DriverTarget_data_path = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DriverTarget_bone_target, ptr @rna_DriverTarget_id_type, i32 -1, ptr @.str.68, i32 262145, ptr @.str.69, ptr @.str.213, i32 0, ptr @.str.55, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DriverTarget_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DriverTarget_data_path_get, ptr @DriverTarget_data_path_length, ptr @DriverTarget_data_path_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.2 }, align 8
@.str.210 = private unnamed_addr constant [8 x i8] c"id_type\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"ID Type\00", align 1
@.str.212 = private unnamed_addr constant [34 x i8] c"Type of ID-block that can be used\00", align 1
@rna_DriverTarget_id_type_items = internal global [32 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 17217, ptr @.str.511, i32 115, ptr @.str.512, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21057, ptr @.str.513, i32 172, ptr @.str.514, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21058, ptr @.str.515, i32 182, ptr @.str.516, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16707, ptr @.str.517, i32 168, ptr @.str.518, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21827, ptr @.str.519, i32 161, ptr @.str.520, ptr @.str.2 }, %struct.EnumPropertyItem { i32 18006, ptr @.str.521, i32 186, ptr @.str.522, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17479, ptr @.str.523, i32 197, ptr @.str.524, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21063, ptr @.str.525, i32 171, ptr @.str.66, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19785, ptr @.str.526, i32 183, ptr @.str.527, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17739, ptr @.str.528, i32 176, ptr @.str.529, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16716, ptr @.str.530, i32 164, ptr @.str.531, ptr @.str.2 }, %struct.EnumPropertyItem { i32 18764, ptr @.str.532, i32 170, ptr @.str.533, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21324, ptr @.str.534, i32 198, ptr @.str.535, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21580, ptr @.str.536, i32 163, ptr @.str.537, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21325, ptr @.str.538, i32 467, ptr @.str.539, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16717, ptr @.str.540, i32 165, ptr @.str.541, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16973, ptr @.str.542, i32 162, ptr @.str.543, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17741, ptr @.str.544, i32 160, ptr @.str.545, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21582, ptr @.str.546, i32 119, ptr @.str.547, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16975, ptr @.str.548, i32 159, ptr @.str.549, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17232, ptr @.str.550, i32 321, ptr @.str.551, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19536, ptr @.str.552, i32 54, ptr @.str.553, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16720, ptr @.str.554, i32 169, ptr @.str.555, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17235, ptr @.str.556, i32 156, ptr @.str.557, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21075, ptr @.str.558, i32 27, ptr @.str.559, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19283, ptr @.str.560, i32 90, ptr @.str.561, ptr @.str.2 }, %struct.EnumPropertyItem { i32 20307, ptr @.str.562, i32 501, ptr @.str.563, ptr @.str.2 }, %struct.EnumPropertyItem { i32 22612, ptr @.str.564, i32 112, ptr @.str.565, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17748, ptr @.str.566, i32 166, ptr @.str.567, ptr @.str.2 }, %struct.EnumPropertyItem { i32 20311, ptr @.str.568, i32 158, ptr @.str.569, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19799, ptr @.str.570, i32 26, ptr @.str.571, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DriverTarget_bone_target = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DriverTarget_transform_type, ptr @rna_DriverTarget_data_path, i32 -1, ptr @.str.214, i32 262145, ptr @.str.215, ptr @.str.216, i32 0, ptr @.str.55, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 32, i32 0, i32 0], i32 0, ptr @rna_DriverTarget_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DriverTarget_bone_target_get, ptr @DriverTarget_bone_target_length, ptr @DriverTarget_bone_target_set, ptr null, ptr null, ptr null, i32 32, ptr @.str.2 }, align 8
@.str.213 = private unnamed_addr constant [42 x i8] c"RNA Path (from ID-block) to property used\00", align 1
@rna_DriverTarget_transform_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DriverTarget_transform_space, ptr @rna_DriverTarget_bone_target, i32 -1, ptr @.str.217, i32 3, ptr @.str.177, ptr @.str.218, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DriverTarget_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DriverTarget_transform_type_get, ptr @DriverTarget_transform_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DriverTarget_transform_type_items, i32 9, i32 0 }, align 8
@.str.214 = private unnamed_addr constant [12 x i8] c"bone_target\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"Bone Name\00", align 1
@.str.216 = private unnamed_addr constant [34 x i8] c"Name of PoseBone to use as target\00", align 1
@rna_DriverTarget_transform_space = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DriverTarget_transform_type, i32 -1, ptr @.str.219, i32 3, ptr @.str.220, ptr @.str.221, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_DriverTarget_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DriverTarget_transform_space_get, ptr @DriverTarget_transform_space_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DriverTarget_transform_space_items, i32 3, i32 0 }, align 8
@.str.217 = private unnamed_addr constant [15 x i8] c"transform_type\00", align 1
@.str.218 = private unnamed_addr constant [21 x i8] c"Driver variable type\00", align 1
@rna_DriverTarget_transform_type_items = internal global [10 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.572, i32 0, ptr @.str.573, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.574, i32 0, ptr @.str.575, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.576, i32 0, ptr @.str.577, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.578, i32 0, ptr @.str.579, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.580, i32 0, ptr @.str.581, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.582, i32 0, ptr @.str.583, ptr @.str.2 }, %struct.EnumPropertyItem { i32 6, ptr @.str.584, i32 0, ptr @.str.585, ptr @.str.2 }, %struct.EnumPropertyItem { i32 7, ptr @.str.586, i32 0, ptr @.str.587, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.588, i32 0, ptr @.str.589, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.219 = private unnamed_addr constant [16 x i8] c"transform_space\00", align 1
@.str.220 = private unnamed_addr constant [16 x i8] c"Transform Space\00", align 1
@.str.221 = private unnamed_addr constant [35 x i8] c"Space in which transforms are used\00", align 1
@rna_DriverTarget_transform_space_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.590, i32 0, ptr @.str.591, ptr @.str.592 }, %struct.EnumPropertyItem { i32 4, ptr @.str.593, i32 0, ptr @.str.220, ptr @.str.594 }, %struct.EnumPropertyItem { i32 12, ptr @.str.595, i32 0, ptr @.str.596, ptr @.str.597 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_DriverVariable = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Driver, ptr @RNA_DriverTarget, ptr null, %struct.ListBase { ptr @rna_DriverVariable_rna_properties, ptr @rna_DriverVariable_targets } }, ptr @.str.231, ptr null, ptr null, i32 4, ptr @.str.232, ptr @.str.233, ptr @.str.55, i32 17, ptr @rna_DriverVariable_name, ptr @rna_DriverVariable_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.222 = private unnamed_addr constant [13 x i8] c"DriverTarget\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"Driver Target\00", align 1
@.str.224 = private unnamed_addr constant [44 x i8] c"Source of input values for driver variables\00", align 1
@rna_DriverVariable_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DriverVariable_name, ptr @rna_DriverVariable_rna_properties, i32 -1, ptr @.str.56, i32 8912896, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DriverVariable_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_DriverVariable_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DriverVariable_type, ptr @rna_DriverVariable_rna_type, i32 -1, ptr @.str.225, i32 262145, ptr @.str.226, ptr @.str.227, i32 0, ptr @.str.55, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_DriverTarget_update_name, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DriverVariable_name_get, ptr @DriverVariable_name_length, ptr @DriverVariable_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@rna_DriverVariable_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DriverVariable_targets, ptr @rna_DriverVariable_name, i32 -1, ptr @.str.151, i32 3, ptr @.str.177, ptr @.str.218, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ChannelDriver_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DriverVariable_type_get, ptr @DriverVariable_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DriverVariable_type_items, i32 4, i32 0 }, align 8
@.str.225 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.226 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.227 = private unnamed_addr constant [108 x i8] c"Name to use in scripted expressions/functions (no spaces or dots are allowed, and must start with a letter)\00", align 1
@rna_DriverVariable_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.598, i32 0, ptr @.str.599, ptr @.str.600 }, %struct.EnumPropertyItem { i32 3, ptr @.str.601, i32 0, ptr @.str.602, ptr @.str.603 }, %struct.EnumPropertyItem { i32 1, ptr @.str.604, i32 0, ptr @.str.605, ptr @.str.606 }, %struct.EnumPropertyItem { i32 2, ptr @.str.607, i32 0, ptr @.str.608, ptr @.str.609 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.228 = private unnamed_addr constant [8 x i8] c"targets\00", align 1
@.str.229 = private unnamed_addr constant [8 x i8] c"Targets\00", align 1
@.str.230 = private unnamed_addr constant [51 x i8] c"Sources of input data for evaluating this variable\00", align 1
@.str.231 = private unnamed_addr constant [15 x i8] c"DriverVariable\00", align 1
@.str.232 = private unnamed_addr constant [16 x i8] c"Driver Variable\00", align 1
@.str.233 = private unnamed_addr constant [57 x i8] c"Variable from some source/target for driver relationship\00", align 1
@rna_Driver_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Driver_type, ptr @rna_Driver_rna_properties, i32 -1, ptr @.str.56, i32 8912896, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Driver_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_Driver_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Driver_expression, ptr @rna_Driver_rna_type, i32 -1, ptr @.str.151, i32 3, ptr @.str.177, ptr @.str.234, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_ChannelDriver_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Driver_type_get, ptr @Driver_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Driver_type_items, i32 5, i32 0 }, align 8
@rna_Driver_expression = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Driver_variables, ptr @rna_Driver_type, i32 -1, ptr @.str.235, i32 262145, ptr @.str.236, ptr @.str.237, i32 0, ptr @.str.55, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 256, i32 0, i32 0], i32 0, ptr @rna_ChannelDriver_update_expr, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Driver_expression_get, ptr @Driver_expression_length, ptr @Driver_expression_set, ptr null, ptr null, ptr null, i32 256, ptr @.str.2 }, align 8
@.str.234 = private unnamed_addr constant [12 x i8] c"Driver type\00", align 1
@rna_Driver_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.610, i32 0, ptr @.str.611, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.612, i32 0, ptr @.str.613, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.614, i32 0, ptr @.str.615, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.616, i32 0, ptr @.str.341, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.617, i32 0, ptr @.str.344, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.235 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.236 = private unnamed_addr constant [11 x i8] c"Expression\00", align 1
@.str.237 = private unnamed_addr constant [42 x i8] c"Expression to use for Scripted Expression\00", align 1
@rna_Driver_show_debug_info = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Driver_is_valid, ptr @rna_Driver_variables, i32 -1, ptr @.str.241, i32 3, ptr @.str.242, ptr @.str.243, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Driver_show_debug_info_get, ptr @Driver_show_debug_info_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.238 = private unnamed_addr constant [10 x i8] c"variables\00", align 1
@.str.239 = private unnamed_addr constant [10 x i8] c"Variables\00", align 1
@.str.240 = private unnamed_addr constant [44 x i8] c"Properties acting as inputs for this driver\00", align 1
@RNA_ChannelDriverVariables = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FModifier, ptr @RNA_Driver, ptr null, %struct.ListBase { ptr @rna_ChannelDriverVariables_rna_properties, ptr @rna_ChannelDriverVariables_rna_type } }, ptr @.str.252, ptr null, ptr null, i32 4, ptr @.str.253, ptr @.str.254, ptr @.str.55, i32 17, ptr null, ptr @rna_ChannelDriverVariables_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ChannelDriverVariables_new_func, ptr @rna_ChannelDriverVariables_remove_func } }, align 8
@rna_Driver_is_valid = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Driver_show_debug_info, i32 -1, ptr @.str.92, i32 3, ptr @.str.1, ptr @.str.244, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Driver_is_valid_get, ptr @Driver_is_valid_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.241 = private unnamed_addr constant [16 x i8] c"show_debug_info\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"Show Debug Info\00", align 1
@.str.243 = private unnamed_addr constant [83 x i8] c"Show intermediate values for the driver calculations to allow debugging of drivers\00", align 1
@.str.244 = private unnamed_addr constant [60 x i8] c"Driver could not be evaluated in past, so should be skipped\00", align 1
@.str.245 = private unnamed_addr constant [61 x i8] c"Driver for the value of a setting based on an external value\00", align 1
@rna_ChannelDriverVariables_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ChannelDriverVariables_rna_properties, i32 -1, ptr @.str.56, i32 8912896, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ChannelDriverVariables_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.246 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.247 = private unnamed_addr constant [30 x i8] c"Newly created Driver Variable\00", align 1
@rna_ChannelDriverVariables_new_var = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.246, i32 8388616, ptr @.str.2, ptr @.str.247, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_DriverVariable }, align 8
@rna_ChannelDriverVariables_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_ChannelDriverVariables_new_func, ptr null, %struct.ListBase { ptr @rna_ChannelDriverVariables_remove_variable, ptr @rna_ChannelDriverVariables_remove_variable } }, ptr @.str.142, i32 16, ptr @.str.251, ptr @ChannelDriverVariables_remove_call, ptr null }, align 8
@.str.248 = private unnamed_addr constant [34 x i8] c"Add a new variable for the driver\00", align 1
@rna_ChannelDriverVariables_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ChannelDriverVariables_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_ChannelDriverVariables_new_var, ptr @rna_ChannelDriverVariables_new_var } }, ptr @.str.153, i32 0, ptr @.str.248, ptr @ChannelDriverVariables_new_call, ptr @rna_ChannelDriverVariables_new_var }, align 8
@.str.249 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.250 = private unnamed_addr constant [35 x i8] c"Variable to remove from the driver\00", align 1
@rna_ChannelDriverVariables_remove_variable = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.249, i32 264196, ptr @.str.2, ptr @.str.250, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_DriverVariable }, align 8
@.str.251 = private unnamed_addr constant [44 x i8] c"Remove an existing variable from the driver\00", align 1
@.str.252 = private unnamed_addr constant [23 x i8] c"ChannelDriverVariables\00", align 1
@.str.253 = private unnamed_addr constant [24 x i8] c"ChannelDriver Variables\00", align 1
@.str.254 = private unnamed_addr constant [39 x i8] c"Collection of channel driver Variables\00", align 1
@rna_FModifier_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifier_type, ptr @rna_FModifier_rna_properties, i32 -1, ptr @.str.56, i32 8912896, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifier_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_FModifier_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifier_show_expanded, ptr @rna_FModifier_rna_type, i32 -1, ptr @.str.151, i32 2, ptr @.str.177, ptr @.str.255, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifier_type_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_FModifier_type_items, i32 9, i32 0 }, align 8
@rna_FModifier_show_expanded = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifier_mute, ptr @rna_FModifier_type, i32 -1, ptr @.str.256, i32 4099, ptr @.str.257, ptr @.str.258, i32 4, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifier_show_expanded_get, ptr @FModifier_show_expanded_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.255 = private unnamed_addr constant [22 x i8] c"F-Curve Modifier Type\00", align 1
@rna_FModifier_type_items = internal global [10 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.3, i32 0, ptr @.str.4, ptr @.str.5 }, %struct.EnumPropertyItem { i32 2, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8 }, %struct.EnumPropertyItem { i32 3, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 4, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 5, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 7, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.2 }, %struct.EnumPropertyItem { i32 8, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.22 }, %struct.EnumPropertyItem { i32 9, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.25 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FModifier_mute = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifier_is_valid, ptr @rna_FModifier_show_expanded, i32 -1, ptr @.str.86, i32 4099, ptr @.str.87, ptr @.str.259, i32 515, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifier_mute_get, ptr @FModifier_mute_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.256 = private unnamed_addr constant [14 x i8] c"show_expanded\00", align 1
@.str.257 = private unnamed_addr constant [9 x i8] c"Expanded\00", align 1
@.str.258 = private unnamed_addr constant [43 x i8] c"F-Curve Modifier's panel is expanded in UI\00", align 1
@rna_FModifier_is_valid = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifier_active, ptr @rna_FModifier_mute, i32 -1, ptr @.str.92, i32 2, ptr @.str.260, ptr @.str.261, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifier_is_valid_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.259 = private unnamed_addr constant [39 x i8] c"F-Curve Modifier will not be evaluated\00", align 1
@rna_FModifier_active = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifier_use_restricted_range, ptr @rna_FModifier_is_valid, i32 -1, ptr @.str.147, i32 4099, ptr @.str.262, ptr @.str.263, i32 12, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_FModifier_active_update, i32 239534080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifier_active_get, ptr @FModifier_active_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.260 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.261 = private unnamed_addr constant [64 x i8] c"F-Curve Modifier has invalid settings and will not be evaluated\00", align 1
@rna_FModifier_use_restricted_range = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifier_frame_start, ptr @rna_FModifier_active, i32 -1, ptr @.str.264, i32 4099, ptr @.str.265, ptr @.str.266, i32 4, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifier_use_restricted_range_get, ptr @FModifier_use_restricted_range_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.262 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.263 = private unnamed_addr constant [42 x i8] c"F-Curve Modifier is the one being edited \00", align 1
@rna_FModifier_frame_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifier_frame_end, ptr @rna_FModifier_use_restricted_range, i32 -1, ptr @.str.267, i32 3, ptr @.str.268, ptr @.str.269, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifier_frame_start_get, ptr @FModifier_frame_start_set, ptr null, ptr null, ptr @rna_FModifier_start_frame_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.264 = private unnamed_addr constant [21 x i8] c"use_restricted_range\00", align 1
@.str.265 = private unnamed_addr constant [21 x i8] c"Restrict Frame Range\00", align 1
@.str.266 = private unnamed_addr constant [111 x i8] c"F-Curve Modifier is only applied for the specified frame range to help mask off effects in order to chain them\00", align 1
@rna_FModifier_frame_end = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifier_blend_in, ptr @rna_FModifier_frame_start, i32 -1, ptr @.str.270, i32 3, ptr @.str.271, ptr @.str.272, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifier_frame_end_get, ptr @FModifier_frame_end_set, ptr null, ptr null, ptr @rna_FModifier_end_frame_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.267 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.268 = private unnamed_addr constant [12 x i8] c"Start Frame\00", align 1
@.str.269 = private unnamed_addr constant [75 x i8] c"Frame that modifier's influence starts (if Restrict Frame Range is in use)\00", align 1
@rna_FModifier_blend_in = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifier_blend_out, ptr @rna_FModifier_frame_end, i32 -1, ptr @.str.273, i32 8195, ptr @.str.274, ptr @.str.275, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 104, i32 4, ptr null, ptr null }, ptr @FModifier_blend_in_get, ptr @FModifier_blend_in_set, ptr null, ptr null, ptr @rna_FModifier_blending_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.270 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.271 = private unnamed_addr constant [10 x i8] c"End Frame\00", align 1
@.str.272 = private unnamed_addr constant [73 x i8] c"Frame that modifier's influence ends (if Restrict Frame Range is in use)\00", align 1
@rna_FModifier_blend_out = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifier_use_influence, ptr @rna_FModifier_blend_in, i32 -1, ptr @.str.276, i32 8195, ptr @.str.277, ptr @.str.278, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 108, i32 4, ptr null, ptr null }, ptr @FModifier_blend_out_get, ptr @FModifier_blend_out_set, ptr null, ptr null, ptr @rna_FModifier_blending_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.273 = private unnamed_addr constant [9 x i8] c"blend_in\00", align 1
@.str.274 = private unnamed_addr constant [9 x i8] c"Blend In\00", align 1
@.str.275 = private unnamed_addr constant [63 x i8] c"Number of frames from start frame for influence to take effect\00", align 1
@rna_FModifier_use_influence = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifier_influence, ptr @rna_FModifier_blend_out, i32 -1, ptr @.str.279, i32 4099, ptr @.str.280, ptr @.str.281, i32 4, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifier_use_influence_get, ptr @FModifier_use_influence_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.276 = private unnamed_addr constant [10 x i8] c"blend_out\00", align 1
@.str.277 = private unnamed_addr constant [10 x i8] c"Blend Out\00", align 1
@.str.278 = private unnamed_addr constant [58 x i8] c"Number of frames from end frame for influence to fade out\00", align 1
@rna_FModifier_influence = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FModifier_use_influence, i32 -1, ptr @.str.282, i32 8195, ptr @.str.283, ptr @.str.284, i32 0, ptr @.str.55, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239534080, ptr null, ptr null, i32 92, i32 4, ptr null, ptr null }, ptr @FModifier_influence_get, ptr @FModifier_influence_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.279 = private unnamed_addr constant [14 x i8] c"use_influence\00", align 1
@.str.280 = private unnamed_addr constant [14 x i8] c"Use Influence\00", align 1
@.str.281 = private unnamed_addr constant [64 x i8] c"F-Curve Modifier's effects will be tempered by a default factor\00", align 1
@.str.282 = private unnamed_addr constant [10 x i8] c"influence\00", align 1
@.str.283 = private unnamed_addr constant [10 x i8] c"Influence\00", align 1
@.str.284 = private unnamed_addr constant [70 x i8] c"Amount of influence F-Curve Modifier will have when not fading in/out\00", align 1
@RNA_FModifierGenerator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FModifierFunctionGenerator, ptr @RNA_FModifier, ptr null, %struct.ListBase { ptr @rna_FModifierGenerator_use_additive, ptr @rna_FModifierGenerator_coefficients } }, ptr @.str.300, ptr null, ptr null, i32 4, ptr @.str.301, ptr @.str.302, ptr @.str.55, i32 17, ptr null, ptr @rna_FModifier_rna_properties, ptr @RNA_FModifier, ptr null, ptr @rna_FModifierType_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.285 = private unnamed_addr constant [10 x i8] c"FModifier\00", align 1
@.str.286 = private unnamed_addr constant [11 x i8] c"F-Modifier\00", align 1
@.str.287 = private unnamed_addr constant [31 x i8] c"Modifier for values of F-Curve\00", align 1
@rna_FModifierGenerator_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierGenerator_poly_order, ptr @rna_FModifierGenerator_use_additive, i32 -1, ptr @.str.291, i32 3, ptr @.str.292, ptr @.str.293, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_FModifier_verify_data_update, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierGenerator_mode_get, ptr @FModifierGenerator_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FModifierGenerator_mode_items, i32 2, i32 0 }, align 8
@.str.288 = private unnamed_addr constant [13 x i8] c"use_additive\00", align 1
@.str.289 = private unnamed_addr constant [9 x i8] c"Additive\00", align 1
@.str.290 = private unnamed_addr constant [104 x i8] c"Values generated by this modifier are applied on top of the existing values instead of overwriting them\00", align 1
@rna_FModifierGenerator_use_additive = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierGenerator_mode, ptr null, i32 -1, ptr @.str.288, i32 3, ptr @.str.289, ptr @.str.290, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierGenerator_use_additive_get, ptr @FModifierGenerator_use_additive_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_FModifierGenerator_poly_order = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierGenerator_coefficients, ptr @rna_FModifierGenerator_mode, i32 -1, ptr @.str.294, i32 8195, ptr @.str.295, ptr @.str.296, i32 0, ptr @.str.55, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_FModifier_verify_data_update, i32 239468545, ptr null, ptr null, i32 12, i32 0, ptr null, ptr null }, ptr @FModifierGenerator_poly_order_get, ptr @FModifierGenerator_poly_order_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 100, i32 1, i32 100, i32 1, i32 0, ptr null }, align 8
@.str.291 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.292 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.293 = private unnamed_addr constant [25 x i8] c"Type of generator to use\00", align 1
@rna_FModifierGenerator_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.618, i32 0, ptr @.str.619, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.620, i32 0, ptr @.str.621, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FModifierGenerator_coefficients = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FModifierGenerator_poly_order, i32 -1, ptr @.str.297, i32 131075, ptr @.str.298, ptr @.str.299, i32 0, ptr @.str.55, i32 2, i32 0, ptr @rna_FModifierGenerator_coefficients_get_length, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i32 32, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @FModifierGenerator_coefficients_get, ptr @FModifierGenerator_coefficients_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_FModifierGenerator_coefficients_default }, align 8
@.str.294 = private unnamed_addr constant [11 x i8] c"poly_order\00", align 1
@.str.295 = private unnamed_addr constant [17 x i8] c"Polynomial Order\00", align 1
@.str.296 = private unnamed_addr constant [74 x i8] c"The highest power of 'x' for this polynomial (number of coefficients - 1)\00", align 1
@.str.297 = private unnamed_addr constant [13 x i8] c"coefficients\00", align 1
@.str.298 = private unnamed_addr constant [13 x i8] c"Coefficients\00", align 1
@.str.299 = private unnamed_addr constant [57 x i8] c"Coefficients for 'x' (starting from lowest power of x^0)\00", align 1
@rna_FModifierGenerator_coefficients_default = internal global [32 x float] zeroinitializer, align 16
@RNA_FModifierFunctionGenerator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FModifierEnvelope, ptr @RNA_FModifierGenerator, ptr null, %struct.ListBase { ptr @rna_FModifierFunctionGenerator_amplitude, ptr @rna_FModifierFunctionGenerator_function_type } }, ptr @.str.315, ptr null, ptr null, i32 4, ptr @.str.316, ptr @.str.317, ptr @.str.55, i32 17, ptr null, ptr @rna_FModifier_rna_properties, ptr @RNA_FModifier, ptr null, ptr @rna_FModifierType_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.300 = private unnamed_addr constant [19 x i8] c"FModifierGenerator\00", align 1
@.str.301 = private unnamed_addr constant [21 x i8] c"Generator F-Modifier\00", align 1
@.str.302 = private unnamed_addr constant [59 x i8] c"Deterministically generate values for the modified F-Curve\00", align 1
@rna_FModifierFunctionGenerator_phase_multiplier = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierFunctionGenerator_phase_offset, ptr @rna_FModifierFunctionGenerator_amplitude, i32 -1, ptr @.str.304, i32 8195, ptr @.str.305, ptr @.str.306, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @FModifierFunctionGenerator_phase_multiplier_get, ptr @FModifierFunctionGenerator_phase_multiplier_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.303 = private unnamed_addr constant [52 x i8] c"Scale factor determining the maximum/minimum values\00", align 1
@rna_FModifierFunctionGenerator_amplitude = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierFunctionGenerator_phase_multiplier, ptr null, i32 -1, ptr @.str.185, i32 8195, ptr @.str.186, ptr @.str.303, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @FModifierFunctionGenerator_amplitude_get, ptr @FModifierFunctionGenerator_amplitude_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_FModifierFunctionGenerator_phase_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierFunctionGenerator_value_offset, ptr @rna_FModifierFunctionGenerator_phase_multiplier, i32 -1, ptr @.str.307, i32 8195, ptr @.str.308, ptr @.str.309, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @FModifierFunctionGenerator_phase_offset_get, ptr @FModifierFunctionGenerator_phase_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.304 = private unnamed_addr constant [17 x i8] c"phase_multiplier\00", align 1
@.str.305 = private unnamed_addr constant [17 x i8] c"Phase Multiplier\00", align 1
@.str.306 = private unnamed_addr constant [53 x i8] c"Scale factor determining the 'speed' of the function\00", align 1
@rna_FModifierFunctionGenerator_value_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierFunctionGenerator_use_additive, ptr @rna_FModifierFunctionGenerator_phase_offset, i32 -1, ptr @.str.310, i32 8195, ptr @.str.311, ptr @.str.312, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @FModifierFunctionGenerator_value_offset_get, ptr @FModifierFunctionGenerator_value_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.307 = private unnamed_addr constant [13 x i8] c"phase_offset\00", align 1
@.str.308 = private unnamed_addr constant [13 x i8] c"Phase Offset\00", align 1
@.str.309 = private unnamed_addr constant [47 x i8] c"Constant factor to offset time by for function\00", align 1
@rna_FModifierFunctionGenerator_use_additive = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierFunctionGenerator_function_type, ptr @rna_FModifierFunctionGenerator_value_offset, i32 -1, ptr @.str.288, i32 3, ptr @.str.289, ptr @.str.290, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierFunctionGenerator_use_additive_get, ptr @FModifierFunctionGenerator_use_additive_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.310 = private unnamed_addr constant [13 x i8] c"value_offset\00", align 1
@.str.311 = private unnamed_addr constant [13 x i8] c"Value Offset\00", align 1
@.str.312 = private unnamed_addr constant [36 x i8] c"Constant factor to offset values by\00", align 1
@rna_FModifierFunctionGenerator_function_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FModifierFunctionGenerator_use_additive, i32 -1, ptr @.str.313, i32 3, ptr @.str.177, ptr @.str.314, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierFunctionGenerator_function_type_get, ptr @FModifierFunctionGenerator_function_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FModifierFunctionGenerator_function_type_items, i32 6, i32 0 }, align 8
@.str.313 = private unnamed_addr constant [14 x i8] c"function_type\00", align 1
@.str.314 = private unnamed_addr constant [33 x i8] c"Type of built-in function to use\00", align 1
@rna_FModifierFunctionGenerator_function_type_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.622, i32 0, ptr @.str.623, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.624, i32 0, ptr @.str.625, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.626, i32 0, ptr @.str.627, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.628, i32 0, ptr @.str.629, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.630, i32 0, ptr @.str.631, ptr @.str.2 }, %struct.EnumPropertyItem { i32 5, ptr @.str.632, i32 0, ptr @.str.633, ptr @.str.634 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_FModifierEnvelope = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FModifierEnvelopeControlPoints, ptr @RNA_FModifierFunctionGenerator, ptr null, %struct.ListBase { ptr @rna_FModifierEnvelope_control_points, ptr @rna_FModifierEnvelope_default_max } }, ptr @.str.330, ptr null, ptr null, i32 4, ptr @.str.331, ptr @.str.332, ptr @.str.55, i32 17, ptr null, ptr @rna_FModifier_rna_properties, ptr @RNA_FModifier, ptr null, ptr @rna_FModifierType_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.315 = private unnamed_addr constant [27 x i8] c"FModifierFunctionGenerator\00", align 1
@.str.316 = private unnamed_addr constant [29 x i8] c"Built-In Function F-Modifier\00", align 1
@.str.317 = private unnamed_addr constant [42 x i8] c"Generate values using a Built-In Function\00", align 1
@rna_FModifierEnvelope_reference_value = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierEnvelope_default_min, ptr @rna_FModifierEnvelope_control_points, i32 -1, ptr @.str.321, i32 8195, ptr @.str.322, ptr @.str.323, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @FModifierEnvelope_reference_value_get, ptr @FModifierEnvelope_reference_value_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.318 = private unnamed_addr constant [15 x i8] c"control_points\00", align 1
@.str.319 = private unnamed_addr constant [15 x i8] c"Control Points\00", align 1
@.str.320 = private unnamed_addr constant [50 x i8] c"Control points defining the shape of the envelope\00", align 1
@RNA_FModifierEnvelopeControlPoints = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FModifierEnvelopeControlPoint, ptr @RNA_FModifierEnvelope, ptr null, %struct.ListBase { ptr @rna_FModifierEnvelopeControlPoints_rna_properties, ptr @rna_FModifierEnvelopeControlPoints_rna_type } }, ptr @.str.339, ptr null, ptr null, i32 4, ptr @.str.319, ptr @.str.320, ptr @.str.55, i32 17, ptr null, ptr @rna_FModifierEnvelopeControlPoints_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_FModifierEnvelopeControlPoints_add_func, ptr @rna_FModifierEnvelopeControlPoints_remove_func } }, align 8
@RNA_FModifierEnvelopeControlPoint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FModifierCycles, ptr @RNA_FModifierEnvelopeControlPoints, ptr null, %struct.ListBase { ptr @rna_FModifierEnvelopeControlPoint_rna_properties, ptr @rna_FModifierEnvelopeControlPoint_frame } }, ptr @.str.347, ptr null, ptr null, i32 4, ptr @.str.348, ptr @.str.349, ptr @.str.55, i32 17, ptr null, ptr @rna_FModifierEnvelopeControlPoint_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_FModifierEnvelope_default_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierEnvelope_default_max, ptr @rna_FModifierEnvelope_reference_value, i32 -1, ptr @.str.324, i32 8195, ptr @.str.325, ptr @.str.326, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 16, i32 4, ptr null, ptr null }, ptr @FModifierEnvelope_default_min_get, ptr @FModifierEnvelope_default_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.321 = private unnamed_addr constant [16 x i8] c"reference_value\00", align 1
@.str.322 = private unnamed_addr constant [16 x i8] c"Reference Value\00", align 1
@.str.323 = private unnamed_addr constant [62 x i8] c"Value that envelope's influence is centered around / based on\00", align 1
@rna_FModifierEnvelope_default_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FModifierEnvelope_default_min, i32 -1, ptr @.str.327, i32 8195, ptr @.str.328, ptr @.str.329, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 20, i32 4, ptr null, ptr null }, ptr @FModifierEnvelope_default_max_get, ptr @FModifierEnvelope_default_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.324 = private unnamed_addr constant [12 x i8] c"default_min\00", align 1
@.str.325 = private unnamed_addr constant [16 x i8] c"Default Minimum\00", align 1
@.str.326 = private unnamed_addr constant [62 x i8] c"Lower distance from Reference Value for 1:1 default influence\00", align 1
@.str.327 = private unnamed_addr constant [12 x i8] c"default_max\00", align 1
@.str.328 = private unnamed_addr constant [16 x i8] c"Default Maximum\00", align 1
@.str.329 = private unnamed_addr constant [62 x i8] c"Upper distance from Reference Value for 1:1 default influence\00", align 1
@.str.330 = private unnamed_addr constant [18 x i8] c"FModifierEnvelope\00", align 1
@.str.331 = private unnamed_addr constant [20 x i8] c"Envelope F-Modifier\00", align 1
@.str.332 = private unnamed_addr constant [41 x i8] c"Scale the values of the modified F-Curve\00", align 1
@rna_FModifierEnvelopeControlPoints_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FModifierEnvelopeControlPoints_rna_properties, i32 -1, ptr @.str.56, i32 8912896, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierEnvelopeControlPoints_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_FModifierEnvelopeControlPoints_add_point = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FModifierEnvelopeControlPoints_add_frame, i32 -1, ptr @.str.334, i32 8388616, ptr @.str.2, ptr @.str.335, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_FModifierEnvelopeControlPoint }, align 8
@.str.333 = private unnamed_addr constant [32 x i8] c"Frame to add this control-point\00", align 1
@rna_FModifierEnvelopeControlPoints_add_frame = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierEnvelopeControlPoints_add_point, ptr null, i32 -1, ptr @.str.104, i32 7, ptr @.str.2, ptr @.str.333, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.334 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.335 = private unnamed_addr constant [28 x i8] c"Newly created control-point\00", align 1
@rna_FModifierEnvelopeControlPoints_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_FModifierEnvelopeControlPoints_add_func, ptr null, %struct.ListBase { ptr @rna_FModifierEnvelopeControlPoints_remove_point, ptr @rna_FModifierEnvelopeControlPoints_remove_point } }, ptr @.str.142, i32 16, ptr @.str.338, ptr @FModifierEnvelopeControlPoints_remove_call, ptr null }, align 8
@.str.336 = private unnamed_addr constant [43 x i8] c"Add a control point to a FModifierEnvelope\00", align 1
@rna_FModifierEnvelopeControlPoints_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_FModifierEnvelopeControlPoints_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_FModifierEnvelopeControlPoints_add_frame, ptr @rna_FModifierEnvelopeControlPoints_add_point } }, ptr @.str.137, i32 16, ptr @.str.336, ptr @FModifierEnvelopeControlPoints_add_call, ptr @rna_FModifierEnvelopeControlPoints_add_point }, align 8
@.str.337 = private unnamed_addr constant [24 x i8] c"Control-point to remove\00", align 1
@rna_FModifierEnvelopeControlPoints_remove_point = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.334, i32 8652804, ptr @.str.2, ptr @.str.337, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_FModifierEnvelopeControlPoint }, align 8
@.str.338 = private unnamed_addr constant [49 x i8] c"Remove a control-point from an FModifierEnvelope\00", align 1
@.str.339 = private unnamed_addr constant [31 x i8] c"FModifierEnvelopeControlPoints\00", align 1
@rna_FModifierEnvelopeControlPoint_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierEnvelopeControlPoint_min, ptr @rna_FModifierEnvelopeControlPoint_rna_properties, i32 -1, ptr @.str.56, i32 8912896, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.55, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierEnvelopeControlPoint_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_FModifierEnvelopeControlPoint_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierEnvelopeControlPoint_max, ptr @rna_FModifierEnvelopeControlPoint_rna_type, i32 -1, ptr @.str.340, i32 8195, ptr @.str.341, ptr @.str.342, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @FModifierEnvelopeControlPoint_min_get, ptr @FModifierEnvelopeControlPoint_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_FModifierEnvelopeControlPoint_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierEnvelopeControlPoint_frame, ptr @rna_FModifierEnvelopeControlPoint_min, i32 -1, ptr @.str.343, i32 8195, ptr @.str.344, ptr @.str.345, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @FModifierEnvelopeControlPoint_max_get, ptr @FModifierEnvelopeControlPoint_max_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.340 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.341 = private unnamed_addr constant [14 x i8] c"Minimum Value\00", align 1
@.str.342 = private unnamed_addr constant [46 x i8] c"Lower bound of envelope at this control-point\00", align 1
@rna_FModifierEnvelopeControlPoint_frame = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FModifierEnvelopeControlPoint_max, i32 -1, ptr @.str.104, i32 8195, ptr @.str.105, ptr @.str.346, i32 0, ptr @.str.55, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @FModifierEnvelopeControlPoint_frame_get, ptr @FModifierEnvelopeControlPoint_frame_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.343 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.344 = private unnamed_addr constant [14 x i8] c"Maximum Value\00", align 1
@.str.345 = private unnamed_addr constant [46 x i8] c"Upper bound of envelope at this control-point\00", align 1
@.str.346 = private unnamed_addr constant [35 x i8] c"Frame this control-point occurs on\00", align 1
@RNA_FModifierCycles = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FModifierPython, ptr @RNA_FModifierEnvelopeControlPoint, ptr null, %struct.ListBase { ptr @rna_FModifierCycles_mode_before, ptr @rna_FModifierCycles_cycles_after } }, ptr @.str.362, ptr null, ptr null, i32 4, ptr @.str.363, ptr @.str.364, ptr @.str.55, i32 17, ptr null, ptr @rna_FModifier_rna_properties, ptr @RNA_FModifier, ptr null, ptr @rna_FModifierType_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.347 = private unnamed_addr constant [30 x i8] c"FModifierEnvelopeControlPoint\00", align 1
@.str.348 = private unnamed_addr constant [23 x i8] c"Envelope Control Point\00", align 1
@.str.349 = private unnamed_addr constant [38 x i8] c"Control point for envelope F-Modifier\00", align 1
@rna_FModifierCycles_cycles_before = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierCycles_mode_after, ptr @rna_FModifierCycles_mode_before, i32 -1, ptr @.str.353, i32 8195, ptr @.str.354, ptr @.str.355, i32 0, ptr @.str.55, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 4, i32 1, ptr null, ptr null }, ptr @FModifierCycles_cycles_before_get, ptr @FModifierCycles_cycles_before_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -32768, i32 32767, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.350 = private unnamed_addr constant [12 x i8] c"mode_before\00", align 1
@.str.351 = private unnamed_addr constant [12 x i8] c"Before Mode\00", align 1
@.str.352 = private unnamed_addr constant [42 x i8] c"Cycling mode to use before first keyframe\00", align 1
@rna_FModifierCycles_mode_before_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.635, i32 0, ptr @.str.636, ptr @.str.637 }, %struct.EnumPropertyItem { i32 1, ptr @.str.638, i32 0, ptr @.str.639, ptr @.str.640 }, %struct.EnumPropertyItem { i32 2, ptr @.str.641, i32 0, ptr @.str.642, ptr @.str.643 }, %struct.EnumPropertyItem { i32 3, ptr @.str.644, i32 0, ptr @.str.645, ptr @.str.646 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FModifierCycles_mode_before = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierCycles_cycles_before, ptr null, i32 -1, ptr @.str.350, i32 3, ptr @.str.351, ptr @.str.352, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierCycles_mode_before_get, ptr @FModifierCycles_mode_before_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FModifierCycles_mode_before_items, i32 4, i32 0 }, align 8
@rna_FModifierCycles_mode_after = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierCycles_cycles_after, ptr @rna_FModifierCycles_cycles_before, i32 -1, ptr @.str.356, i32 3, ptr @.str.357, ptr @.str.358, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierCycles_mode_after_get, ptr @FModifierCycles_mode_after_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FModifierCycles_mode_after_items, i32 4, i32 0 }, align 8
@.str.353 = private unnamed_addr constant [14 x i8] c"cycles_before\00", align 1
@.str.354 = private unnamed_addr constant [14 x i8] c"Before Cycles\00", align 1
@.str.355 = private unnamed_addr constant [71 x i8] c"Maximum number of cycles to allow before first keyframe (0 = infinite)\00", align 1
@rna_FModifierCycles_cycles_after = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FModifierCycles_mode_after, i32 -1, ptr @.str.359, i32 8195, ptr @.str.360, ptr @.str.361, i32 0, ptr @.str.55, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 6, i32 1, ptr null, ptr null }, ptr @FModifierCycles_cycles_after_get, ptr @FModifierCycles_cycles_after_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -32768, i32 32767, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.356 = private unnamed_addr constant [11 x i8] c"mode_after\00", align 1
@.str.357 = private unnamed_addr constant [11 x i8] c"After Mode\00", align 1
@.str.358 = private unnamed_addr constant [40 x i8] c"Cycling mode to use after last keyframe\00", align 1
@rna_FModifierCycles_mode_after_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.635, i32 0, ptr @.str.636, ptr @.str.637 }, %struct.EnumPropertyItem { i32 1, ptr @.str.638, i32 0, ptr @.str.639, ptr @.str.640 }, %struct.EnumPropertyItem { i32 2, ptr @.str.641, i32 0, ptr @.str.642, ptr @.str.643 }, %struct.EnumPropertyItem { i32 3, ptr @.str.644, i32 0, ptr @.str.645, ptr @.str.646 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.359 = private unnamed_addr constant [13 x i8] c"cycles_after\00", align 1
@.str.360 = private unnamed_addr constant [13 x i8] c"After Cycles\00", align 1
@.str.361 = private unnamed_addr constant [69 x i8] c"Maximum number of cycles to allow after last keyframe (0 = infinite)\00", align 1
@RNA_FModifierPython = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FModifierLimits, ptr @RNA_FModifierCycles, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.365, ptr null, ptr null, i32 4, ptr @.str.366, ptr @.str.367, ptr @.str.55, i32 17, ptr null, ptr @rna_FModifier_rna_properties, ptr @RNA_FModifier, ptr null, ptr @rna_FModifierType_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.362 = private unnamed_addr constant [16 x i8] c"FModifierCycles\00", align 1
@.str.363 = private unnamed_addr constant [18 x i8] c"Cycles F-Modifier\00", align 1
@.str.364 = private unnamed_addr constant [42 x i8] c"Repeat the values of the modified F-Curve\00", align 1
@RNA_FModifierLimits = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FModifierNoise, ptr @RNA_FModifierPython, ptr null, %struct.ListBase { ptr @rna_FModifierLimits_use_min_x, ptr @rna_FModifierLimits_max_y } }, ptr @.str.388, ptr null, ptr null, i32 4, ptr @.str.389, ptr @.str.390, ptr @.str.55, i32 17, ptr null, ptr @rna_FModifier_rna_properties, ptr @RNA_FModifier, ptr null, ptr @rna_FModifierType_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.365 = private unnamed_addr constant [16 x i8] c"FModifierPython\00", align 1
@.str.366 = private unnamed_addr constant [18 x i8] c"Python F-Modifier\00", align 1
@.str.367 = private unnamed_addr constant [55 x i8] c"Perform user-defined operation on the modified F-Curve\00", align 1
@rna_FModifierLimits_use_min_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierLimits_use_max_x, ptr @rna_FModifierLimits_use_min_x, i32 -1, ptr @.str.371, i32 3, ptr @.str.372, ptr @.str.373, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierLimits_use_min_y_get, ptr @FModifierLimits_use_min_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.368 = private unnamed_addr constant [10 x i8] c"use_min_x\00", align 1
@.str.369 = private unnamed_addr constant [10 x i8] c"Minimum X\00", align 1
@.str.370 = private unnamed_addr constant [24 x i8] c"Use the minimum X value\00", align 1
@rna_FModifierLimits_use_min_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierLimits_use_min_y, ptr null, i32 -1, ptr @.str.368, i32 3, ptr @.str.369, ptr @.str.370, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierLimits_use_min_x_get, ptr @FModifierLimits_use_min_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_FModifierLimits_use_max_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierLimits_use_max_y, ptr @rna_FModifierLimits_use_min_y, i32 -1, ptr @.str.374, i32 3, ptr @.str.375, ptr @.str.376, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierLimits_use_max_x_get, ptr @FModifierLimits_use_max_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.371 = private unnamed_addr constant [10 x i8] c"use_min_y\00", align 1
@.str.372 = private unnamed_addr constant [10 x i8] c"Minimum Y\00", align 1
@.str.373 = private unnamed_addr constant [24 x i8] c"Use the minimum Y value\00", align 1
@rna_FModifierLimits_use_max_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierLimits_min_x, ptr @rna_FModifierLimits_use_max_x, i32 -1, ptr @.str.377, i32 3, ptr @.str.378, ptr @.str.379, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierLimits_use_max_y_get, ptr @FModifierLimits_use_max_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.374 = private unnamed_addr constant [10 x i8] c"use_max_x\00", align 1
@.str.375 = private unnamed_addr constant [10 x i8] c"Maximum X\00", align 1
@.str.376 = private unnamed_addr constant [24 x i8] c"Use the maximum X value\00", align 1
@rna_FModifierLimits_min_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierLimits_min_y, ptr @rna_FModifierLimits_use_max_y, i32 -1, ptr @.str.380, i32 3, ptr @.str.369, ptr @.str.381, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierLimits_min_x_get, ptr @FModifierLimits_min_x_set, ptr null, ptr null, ptr @rna_FModifierLimits_minx_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.377 = private unnamed_addr constant [10 x i8] c"use_max_y\00", align 1
@.str.378 = private unnamed_addr constant [10 x i8] c"Maximum Y\00", align 1
@.str.379 = private unnamed_addr constant [24 x i8] c"Use the maximum Y value\00", align 1
@rna_FModifierLimits_min_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierLimits_max_x, ptr @rna_FModifierLimits_min_x, i32 -1, ptr @.str.382, i32 3, ptr @.str.372, ptr @.str.383, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierLimits_min_y_get, ptr @FModifierLimits_min_y_set, ptr null, ptr null, ptr @rna_FModifierLimits_miny_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.380 = private unnamed_addr constant [6 x i8] c"min_x\00", align 1
@.str.381 = private unnamed_addr constant [24 x i8] c"Lowest X value to allow\00", align 1
@rna_FModifierLimits_max_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierLimits_max_y, ptr @rna_FModifierLimits_min_y, i32 -1, ptr @.str.384, i32 3, ptr @.str.375, ptr @.str.385, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierLimits_max_x_get, ptr @FModifierLimits_max_x_set, ptr null, ptr null, ptr @rna_FModifierLimits_maxx_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.382 = private unnamed_addr constant [6 x i8] c"min_y\00", align 1
@.str.383 = private unnamed_addr constant [24 x i8] c"Lowest Y value to allow\00", align 1
@rna_FModifierLimits_max_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FModifierLimits_max_x, i32 -1, ptr @.str.386, i32 3, ptr @.str.378, ptr @.str.387, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierLimits_max_y_get, ptr @FModifierLimits_max_y_set, ptr null, ptr null, ptr @rna_FModifierLimits_maxy_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.384 = private unnamed_addr constant [6 x i8] c"max_x\00", align 1
@.str.385 = private unnamed_addr constant [25 x i8] c"Highest X value to allow\00", align 1
@.str.386 = private unnamed_addr constant [6 x i8] c"max_y\00", align 1
@.str.387 = private unnamed_addr constant [25 x i8] c"Highest Y value to allow\00", align 1
@RNA_FModifierNoise = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FModifierStepped, ptr @RNA_FModifierLimits, ptr null, %struct.ListBase { ptr @rna_FModifierNoise_blend_type, ptr @rna_FModifierNoise_depth } }, ptr @.str.409, ptr null, ptr null, i32 4, ptr @.str.410, ptr @.str.411, ptr @.str.55, i32 17, ptr null, ptr @rna_FModifier_rna_properties, ptr @RNA_FModifier, ptr null, ptr @rna_FModifierType_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.388 = private unnamed_addr constant [16 x i8] c"FModifierLimits\00", align 1
@.str.389 = private unnamed_addr constant [17 x i8] c"Limit F-Modifier\00", align 1
@.str.390 = private unnamed_addr constant [52 x i8] c"Limit the time/value ranges of the modified F-Curve\00", align 1
@rna_FModifierNoise_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierNoise_strength, ptr @rna_FModifierNoise_blend_type, i32 -1, ptr @.str.394, i32 8195, ptr @.str.395, ptr @.str.396, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @FModifierNoise_scale_get, ptr @FModifierNoise_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.391 = private unnamed_addr constant [11 x i8] c"blend_type\00", align 1
@.str.392 = private unnamed_addr constant [11 x i8] c"Blend Type\00", align 1
@.str.393 = private unnamed_addr constant [41 x i8] c"Method of modifying the existing F-Curve\00", align 1
@rna_FModifierNoise_blend_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.454, i32 0, ptr @.str.455, ptr @.str.2 }, %struct.EnumPropertyItem { i32 1, ptr @.str.647, i32 0, ptr @.str.648, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.649, i32 0, ptr @.str.650, ptr @.str.2 }, %struct.EnumPropertyItem { i32 3, ptr @.str.651, i32 0, ptr @.str.652, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_FModifierNoise_blend_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierNoise_scale, ptr null, i32 -1, ptr @.str.391, i32 3, ptr @.str.392, ptr @.str.393, i32 0, ptr @.str.55, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierNoise_blend_type_get, ptr @FModifierNoise_blend_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_FModifierNoise_blend_type_items, i32 4, i32 0 }, align 8
@rna_FModifierNoise_strength = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierNoise_phase, ptr @rna_FModifierNoise_scale, i32 -1, ptr @.str.397, i32 8195, ptr @.str.398, ptr @.str.399, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @FModifierNoise_strength_get, ptr @FModifierNoise_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.394 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.395 = private unnamed_addr constant [6 x i8] c"Scale\00", align 1
@.str.396 = private unnamed_addr constant [31 x i8] c"Scaling (in time) of the noise\00", align 1
@rna_FModifierNoise_phase = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierNoise_offset, ptr @rna_FModifierNoise_strength, i32 -1, ptr @.str.400, i32 8195, ptr @.str.401, ptr @.str.402, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @FModifierNoise_phase_get, ptr @FModifierNoise_phase_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.397 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.398 = private unnamed_addr constant [9 x i8] c"Strength\00", align 1
@.str.399 = private unnamed_addr constant [74 x i8] c"Amplitude of the noise - the amount that it modifies the underlying curve\00", align 1
@rna_FModifierNoise_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierNoise_depth, ptr @rna_FModifierNoise_phase, i32 -1, ptr @.str.403, i32 8195, ptr @.str.404, ptr @.str.405, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @FModifierNoise_offset_get, ptr @FModifierNoise_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.400 = private unnamed_addr constant [6 x i8] c"phase\00", align 1
@.str.401 = private unnamed_addr constant [6 x i8] c"Phase\00", align 1
@.str.402 = private unnamed_addr constant [35 x i8] c"A random seed for the noise effect\00", align 1
@rna_FModifierNoise_depth = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FModifierNoise_offset, i32 -1, ptr @.str.406, i32 8195, ptr @.str.407, ptr @.str.408, i32 0, ptr @.str.55, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 16, i32 1, ptr null, ptr null }, ptr @FModifierNoise_depth_get, ptr @FModifierNoise_depth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32767, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.403 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.404 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.405 = private unnamed_addr constant [33 x i8] c"Time offset for the noise effect\00", align 1
@.str.406 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.407 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str.408 = private unnamed_addr constant [49 x i8] c"Amount of fine level detail present in the noise\00", align 1
@RNA_FModifierStepped = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FluidSettings, ptr @RNA_FModifierNoise, ptr null, %struct.ListBase { ptr @rna_FModifierStepped_frame_step, ptr @rna_FModifierStepped_frame_end } }, ptr @.str.425, ptr null, ptr null, i32 4, ptr @.str.426, ptr @.str.427, ptr @.str.55, i32 17, ptr null, ptr @rna_FModifier_rna_properties, ptr @RNA_FModifier, ptr null, ptr @rna_FModifierType_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.409 = private unnamed_addr constant [15 x i8] c"FModifierNoise\00", align 1
@.str.410 = private unnamed_addr constant [17 x i8] c"Noise F-Modifier\00", align 1
@.str.411 = private unnamed_addr constant [40 x i8] c"Give randomness to the modified F-Curve\00", align 1
@rna_FModifierStepped_frame_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierStepped_use_frame_start, ptr @rna_FModifierStepped_frame_step, i32 -1, ptr @.str.415, i32 8195, ptr @.str.404, ptr @.str.416, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 4, i32 4, ptr null, ptr null }, ptr @FModifierStepped_frame_offset_get, ptr @FModifierStepped_frame_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.412 = private unnamed_addr constant [11 x i8] c"frame_step\00", align 1
@.str.413 = private unnamed_addr constant [10 x i8] c"Step Size\00", align 1
@.str.414 = private unnamed_addr constant [36 x i8] c"Number of frames to hold each value\00", align 1
@rna_FModifierStepped_frame_step = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierStepped_frame_offset, ptr null, i32 -1, ptr @.str.412, i32 8195, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null }, ptr @FModifierStepped_frame_step_get, ptr @FModifierStepped_frame_step_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_FModifierStepped_use_frame_start = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierStepped_use_frame_end, ptr @rna_FModifierStepped_frame_offset, i32 -1, ptr @.str.417, i32 3, ptr @.str.418, ptr @.str.419, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierStepped_use_frame_start_get, ptr @FModifierStepped_use_frame_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.415 = private unnamed_addr constant [13 x i8] c"frame_offset\00", align 1
@.str.416 = private unnamed_addr constant [104 x i8] c"Reference number of frames before frames get held (use to get hold for '1-3' vs '5-7' holding patterns)\00", align 1
@rna_FModifierStepped_use_frame_end = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierStepped_frame_start, ptr @rna_FModifierStepped_use_frame_start, i32 -1, ptr @.str.420, i32 3, ptr @.str.421, ptr @.str.422, i32 0, ptr @.str.55, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FModifierStepped_use_frame_end_get, ptr @FModifierStepped_use_frame_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.417 = private unnamed_addr constant [16 x i8] c"use_frame_start\00", align 1
@.str.418 = private unnamed_addr constant [16 x i8] c"Use Start Frame\00", align 1
@.str.419 = private unnamed_addr constant [54 x i8] c"Restrict modifier to only act after its 'start' frame\00", align 1
@rna_FModifierStepped_frame_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_FModifierStepped_frame_end, ptr @rna_FModifierStepped_use_frame_end, i32 -1, ptr @.str.267, i32 8195, ptr @.str.268, ptr @.str.423, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 8, i32 4, ptr null, ptr null }, ptr @FModifierStepped_frame_start_get, ptr @FModifierStepped_frame_start_set, ptr null, ptr null, ptr @rna_FModifierStepped_start_frame_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.420 = private unnamed_addr constant [14 x i8] c"use_frame_end\00", align 1
@.str.421 = private unnamed_addr constant [14 x i8] c"Use End Frame\00", align 1
@.str.422 = private unnamed_addr constant [53 x i8] c"Restrict modifier to only act before its 'end' frame\00", align 1
@rna_FModifierStepped_frame_end = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_FModifierStepped_frame_start, i32 -1, ptr @.str.270, i32 8195, ptr @.str.271, ptr @.str.424, i32 0, ptr @.str.55, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 239468545, ptr null, ptr null, i32 12, i32 4, ptr null, ptr null }, ptr @FModifierStepped_frame_end_get, ptr @FModifierStepped_frame_end_set, ptr null, ptr null, ptr @rna_FModifierStepped_end_frame_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.423 = private unnamed_addr constant [55 x i8] c"Frame that modifier's influence starts (if applicable)\00", align 1
@.str.424 = private unnamed_addr constant [53 x i8] c"Frame that modifier's influence ends (if applicable)\00", align 1
@RNA_FluidSettings = external global %struct.StructRNA, align 8
@.str.425 = private unnamed_addr constant [17 x i8] c"FModifierStepped\00", align 1
@.str.426 = private unnamed_addr constant [33 x i8] c"Stepped Interpolation F-Modifier\00", align 1
@.str.427 = private unnamed_addr constant [93 x i8] c"Hold each interpolated value from the F-Curve for several frames without changing the timing\00", align 1
@.str.428 = private unnamed_addr constant [80 x i8] c"ERROR: one of the ID's for the groups to assign to is invalid (ptr=%p, val=%p)\0A\00", align 1
@.str.429 = private unnamed_addr constant [41 x i8] c"ERROR: ID's differ - ptr=%p vs value=%p\0A\00", align 1
@.str.432 = private unnamed_addr constant [50 x i8] c"ERROR: F-Curve (%p) doesn't exist in action '%s'\0A\00", align 1
@MEM_recallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.rna_FKeyframe_points_add = private unnamed_addr constant [25 x i8] c"rna_FKeyframe_points_add\00", align 1
@.str.433 = private unnamed_addr constant [24 x i8] c"Keyframe not in F-Curve\00", align 1
@.str.434 = private unnamed_addr constant [43 x i8] c"F-Curve modifier '%s' not found in F-Curve\00", align 1
@.str.435 = private unnamed_addr constant [39 x i8] c"Variable does not exist in this driver\00", align 1
@.str.436 = private unnamed_addr constant [38 x i8] c"Already a control point at frame %.6f\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.rna_FModifierEnvelope_points_add = private unnamed_addr constant [33 x i8] c"rna_FModifierEnvelope_points_add\00", align 1
@.str.437 = private unnamed_addr constant [17 x i8] c"FCM_EnvelopeData\00", align 1
@.str.438 = private unnamed_addr constant [41 x i8] c"Control point not in Envelope F-Modifier\00", align 1
@__func__.rna_FModifierEnvelope_points_remove = private unnamed_addr constant [36 x i8] c"rna_FModifierEnvelope_points_remove\00", align 1
@.str.439 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.440 = private unnamed_addr constant [9 x i8] c"Constant\00", align 1
@.str.441 = private unnamed_addr constant [34 x i8] c"Hold values of endpoint keyframes\00", align 1
@.str.442 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.443 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.444 = private unnamed_addr constant [56 x i8] c"Use slope of curve leading in/out of endpoint keyframes\00", align 1
@.str.445 = private unnamed_addr constant [13 x i8] c"AUTO_RAINBOW\00", align 1
@.str.446 = private unnamed_addr constant [13 x i8] c"Auto Rainbow\00", align 1
@.str.447 = private unnamed_addr constant [68 x i8] c"Cycle through the rainbow, trying to give each curve a unique color\00", align 1
@.str.448 = private unnamed_addr constant [9 x i8] c"AUTO_RGB\00", align 1
@.str.449 = private unnamed_addr constant [16 x i8] c"Auto XYZ to RGB\00", align 1
@.str.450 = private unnamed_addr constant [82 x i8] c"Use axis colors for transform and color properties, and auto-rainbow for the rest\00", align 1
@.str.451 = private unnamed_addr constant [7 x i8] c"CUSTOM\00", align 1
@.str.452 = private unnamed_addr constant [13 x i8] c"User Defined\00", align 1
@.str.453 = private unnamed_addr constant [41 x i8] c"Use custom hand-picked color for F-Curve\00", align 1
@.str.454 = private unnamed_addr constant [8 x i8] c"REPLACE\00", align 1
@.str.455 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.456 = private unnamed_addr constant [60 x i8] c"Don't add any new keyframes, but just replace existing ones\00", align 1
@.str.457 = private unnamed_addr constant [7 x i8] c"NEEDED\00", align 1
@.str.458 = private unnamed_addr constant [7 x i8] c"Needed\00", align 1
@.str.459 = private unnamed_addr constant [36 x i8] c"Only adds keyframes that are needed\00", align 1
@.str.460 = private unnamed_addr constant [5 x i8] c"FAST\00", align 1
@.str.461 = private unnamed_addr constant [67 x i8] c"Fast keyframe insertion to avoid recalculating the curve each time\00", align 1
@.str.462 = private unnamed_addr constant [5 x i8] c"FREE\00", align 1
@.str.463 = private unnamed_addr constant [5 x i8] c"Free\00", align 1
@.str.464 = private unnamed_addr constant [7 x i8] c"VECTOR\00", align 1
@.str.465 = private unnamed_addr constant [7 x i8] c"Vector\00", align 1
@.str.466 = private unnamed_addr constant [8 x i8] c"ALIGNED\00", align 1
@.str.467 = private unnamed_addr constant [8 x i8] c"Aligned\00", align 1
@.str.468 = private unnamed_addr constant [10 x i8] c"Automatic\00", align 1
@.str.469 = private unnamed_addr constant [13 x i8] c"AUTO_CLAMPED\00", align 1
@.str.470 = private unnamed_addr constant [13 x i8] c"Auto Clamped\00", align 1
@.str.471 = private unnamed_addr constant [38 x i8] c"Auto handles clamped to not overshoot\00", align 1
@.str.472 = private unnamed_addr constant [39 x i8] c"Standard transitions between keyframes\00", align 1
@.str.473 = private unnamed_addr constant [62 x i8] c"No interpolation, value of A gets held until B is encountered\00", align 1
@.str.474 = private unnamed_addr constant [66 x i8] c"Straight-line interpolation between A and B (i.e. no ease in/out)\00", align 1
@.str.475 = private unnamed_addr constant [7 x i8] c"BEZIER\00", align 1
@.str.476 = private unnamed_addr constant [7 x i8] c"Bezier\00", align 1
@.str.477 = private unnamed_addr constant [73 x i8] c"Smooth interpolation between A and B, with some control over curve shape\00", align 1
@.str.478 = private unnamed_addr constant [21 x i8] c"Easing (by strength)\00", align 1
@.str.479 = private unnamed_addr constant [94 x i8] c"Predefined inertial transitions, useful for motion graphics (from least to most ''dramatic'')\00", align 1
@.str.480 = private unnamed_addr constant [5 x i8] c"SINE\00", align 1
@.str.481 = private unnamed_addr constant [11 x i8] c"Sinusoidal\00", align 1
@.str.482 = private unnamed_addr constant [71 x i8] c"Sinusoidal easing (weakest, almost linear but with a slight curvature)\00", align 1
@.str.483 = private unnamed_addr constant [5 x i8] c"QUAD\00", align 1
@.str.484 = private unnamed_addr constant [10 x i8] c"Quadratic\00", align 1
@.str.485 = private unnamed_addr constant [17 x i8] c"Quadratic easing\00", align 1
@.str.486 = private unnamed_addr constant [6 x i8] c"CUBIC\00", align 1
@.str.487 = private unnamed_addr constant [6 x i8] c"Cubic\00", align 1
@.str.488 = private unnamed_addr constant [13 x i8] c"Cubic easing\00", align 1
@.str.489 = private unnamed_addr constant [6 x i8] c"QUART\00", align 1
@.str.490 = private unnamed_addr constant [8 x i8] c"Quartic\00", align 1
@.str.491 = private unnamed_addr constant [15 x i8] c"Quartic easing\00", align 1
@.str.492 = private unnamed_addr constant [6 x i8] c"QUINT\00", align 1
@.str.493 = private unnamed_addr constant [8 x i8] c"Quintic\00", align 1
@.str.494 = private unnamed_addr constant [15 x i8] c"Quintic easing\00", align 1
@.str.495 = private unnamed_addr constant [5 x i8] c"EXPO\00", align 1
@.str.496 = private unnamed_addr constant [12 x i8] c"Exponential\00", align 1
@.str.497 = private unnamed_addr constant [30 x i8] c"Exponential easing (dramatic)\00", align 1
@.str.498 = private unnamed_addr constant [5 x i8] c"CIRC\00", align 1
@.str.499 = private unnamed_addr constant [9 x i8] c"Circular\00", align 1
@.str.500 = private unnamed_addr constant [45 x i8] c"Circular easing (strongest and most dynamic)\00", align 1
@.str.501 = private unnamed_addr constant [16 x i8] c"Dynamic Effects\00", align 1
@.str.502 = private unnamed_addr constant [39 x i8] c"Simple physics-inspired easing effects\00", align 1
@.str.503 = private unnamed_addr constant [5 x i8] c"BACK\00", align 1
@.str.504 = private unnamed_addr constant [39 x i8] c"Cubic easing with overshoot and settle\00", align 1
@.str.505 = private unnamed_addr constant [7 x i8] c"BOUNCE\00", align 1
@.str.506 = private unnamed_addr constant [7 x i8] c"Bounce\00", align 1
@.str.507 = private unnamed_addr constant [67 x i8] c"Exponentially decaying parabolic bounce, like when objects collide\00", align 1
@.str.508 = private unnamed_addr constant [8 x i8] c"ELASTIC\00", align 1
@.str.509 = private unnamed_addr constant [8 x i8] c"Elastic\00", align 1
@.str.510 = private unnamed_addr constant [55 x i8] c"Exponentially decaying sine wave, like an elastic band\00", align 1
@.str.511 = private unnamed_addr constant [7 x i8] c"ACTION\00", align 1
@.str.512 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.513 = private unnamed_addr constant [9 x i8] c"ARMATURE\00", align 1
@.str.514 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.515 = private unnamed_addr constant [6 x i8] c"BRUSH\00", align 1
@.str.516 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.517 = private unnamed_addr constant [7 x i8] c"CAMERA\00", align 1
@.str.518 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.519 = private unnamed_addr constant [6 x i8] c"CURVE\00", align 1
@.str.520 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.521 = private unnamed_addr constant [5 x i8] c"FONT\00", align 1
@.str.522 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.523 = private unnamed_addr constant [13 x i8] c"GREASEPENCIL\00", align 1
@.str.524 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.525 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.526 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.527 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.528 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str.529 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.530 = private unnamed_addr constant [5 x i8] c"LAMP\00", align 1
@.str.531 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@.str.532 = private unnamed_addr constant [8 x i8] c"LIBRARY\00", align 1
@.str.533 = private unnamed_addr constant [8 x i8] c"Library\00", align 1
@.str.534 = private unnamed_addr constant [10 x i8] c"LINESTYLE\00", align 1
@.str.535 = private unnamed_addr constant [11 x i8] c"Line Style\00", align 1
@.str.536 = private unnamed_addr constant [8 x i8] c"LATTICE\00", align 1
@.str.537 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.538 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.539 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.540 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.541 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.542 = private unnamed_addr constant [5 x i8] c"META\00", align 1
@.str.543 = private unnamed_addr constant [9 x i8] c"MetaBall\00", align 1
@.str.544 = private unnamed_addr constant [5 x i8] c"MESH\00", align 1
@.str.545 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.546 = private unnamed_addr constant [9 x i8] c"NODETREE\00", align 1
@.str.547 = private unnamed_addr constant [9 x i8] c"NodeTree\00", align 1
@.str.548 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.549 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.550 = private unnamed_addr constant [11 x i8] c"PAINTCURVE\00", align 1
@.str.551 = private unnamed_addr constant [12 x i8] c"Paint Curve\00", align 1
@.str.552 = private unnamed_addr constant [8 x i8] c"PALETTE\00", align 1
@.str.553 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@.str.554 = private unnamed_addr constant [9 x i8] c"PARTICLE\00", align 1
@.str.555 = private unnamed_addr constant [9 x i8] c"Particle\00", align 1
@.str.556 = private unnamed_addr constant [6 x i8] c"SCENE\00", align 1
@.str.557 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.558 = private unnamed_addr constant [7 x i8] c"SCREEN\00", align 1
@.str.559 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.560 = private unnamed_addr constant [8 x i8] c"SPEAKER\00", align 1
@.str.561 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.562 = private unnamed_addr constant [6 x i8] c"SOUND\00", align 1
@.str.563 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@.str.564 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.565 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.566 = private unnamed_addr constant [8 x i8] c"TEXTURE\00", align 1
@.str.567 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.568 = private unnamed_addr constant [6 x i8] c"WORLD\00", align 1
@.str.569 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.570 = private unnamed_addr constant [14 x i8] c"WINDOWMANAGER\00", align 1
@.str.571 = private unnamed_addr constant [15 x i8] c"Window Manager\00", align 1
@.str.572 = private unnamed_addr constant [6 x i8] c"LOC_X\00", align 1
@.str.573 = private unnamed_addr constant [11 x i8] c"X Location\00", align 1
@.str.574 = private unnamed_addr constant [6 x i8] c"LOC_Y\00", align 1
@.str.575 = private unnamed_addr constant [11 x i8] c"Y Location\00", align 1
@.str.576 = private unnamed_addr constant [6 x i8] c"LOC_Z\00", align 1
@.str.577 = private unnamed_addr constant [11 x i8] c"Z Location\00", align 1
@.str.578 = private unnamed_addr constant [6 x i8] c"ROT_X\00", align 1
@.str.579 = private unnamed_addr constant [11 x i8] c"X Rotation\00", align 1
@.str.580 = private unnamed_addr constant [6 x i8] c"ROT_Y\00", align 1
@.str.581 = private unnamed_addr constant [11 x i8] c"Y Rotation\00", align 1
@.str.582 = private unnamed_addr constant [6 x i8] c"ROT_Z\00", align 1
@.str.583 = private unnamed_addr constant [11 x i8] c"Z Rotation\00", align 1
@.str.584 = private unnamed_addr constant [8 x i8] c"SCALE_X\00", align 1
@.str.585 = private unnamed_addr constant [8 x i8] c"X Scale\00", align 1
@.str.586 = private unnamed_addr constant [8 x i8] c"SCALE_Y\00", align 1
@.str.587 = private unnamed_addr constant [8 x i8] c"Y Scale\00", align 1
@.str.588 = private unnamed_addr constant [8 x i8] c"SCALE_Z\00", align 1
@.str.589 = private unnamed_addr constant [8 x i8] c"Z Scale\00", align 1
@.str.590 = private unnamed_addr constant [12 x i8] c"WORLD_SPACE\00", align 1
@.str.591 = private unnamed_addr constant [12 x i8] c"World Space\00", align 1
@.str.592 = private unnamed_addr constant [65 x i8] c"Transforms include effects of parenting/restpose and constraints\00", align 1
@.str.593 = private unnamed_addr constant [16 x i8] c"TRANSFORM_SPACE\00", align 1
@.str.594 = private unnamed_addr constant [59 x i8] c"Transforms don't include parenting/restpose or constraints\00", align 1
@.str.595 = private unnamed_addr constant [12 x i8] c"LOCAL_SPACE\00", align 1
@.str.596 = private unnamed_addr constant [12 x i8] c"Local Space\00", align 1
@.str.597 = private unnamed_addr constant [69 x i8] c"Transforms include effects of constraints but not parenting/restpose\00", align 1
@.str.598 = private unnamed_addr constant [12 x i8] c"SINGLE_PROP\00", align 1
@.str.599 = private unnamed_addr constant [16 x i8] c"Single Property\00", align 1
@.str.600 = private unnamed_addr constant [47 x i8] c"Use the value from some RNA property (Default)\00", align 1
@.str.601 = private unnamed_addr constant [11 x i8] c"TRANSFORMS\00", align 1
@.str.602 = private unnamed_addr constant [18 x i8] c"Transform Channel\00", align 1
@.str.603 = private unnamed_addr constant [45 x i8] c"Final transformation value of object or bone\00", align 1
@.str.604 = private unnamed_addr constant [14 x i8] c"ROTATION_DIFF\00", align 1
@.str.605 = private unnamed_addr constant [22 x i8] c"Rotational Difference\00", align 1
@.str.606 = private unnamed_addr constant [32 x i8] c"Use the angle between two bones\00", align 1
@.str.607 = private unnamed_addr constant [9 x i8] c"LOC_DIFF\00", align 1
@.str.608 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.609 = private unnamed_addr constant [38 x i8] c"Distance between two bones or objects\00", align 1
@.str.610 = private unnamed_addr constant [8 x i8] c"AVERAGE\00", align 1
@.str.611 = private unnamed_addr constant [15 x i8] c"Averaged Value\00", align 1
@.str.612 = private unnamed_addr constant [4 x i8] c"SUM\00", align 1
@.str.613 = private unnamed_addr constant [11 x i8] c"Sum Values\00", align 1
@.str.614 = private unnamed_addr constant [9 x i8] c"SCRIPTED\00", align 1
@.str.615 = private unnamed_addr constant [20 x i8] c"Scripted Expression\00", align 1
@.str.616 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@.str.617 = private unnamed_addr constant [4 x i8] c"MAX\00", align 1
@RNA_UnknownType = external global %struct.StructRNA, align 8
@.str.618 = private unnamed_addr constant [11 x i8] c"POLYNOMIAL\00", align 1
@.str.619 = private unnamed_addr constant [20 x i8] c"Expanded Polynomial\00", align 1
@.str.620 = private unnamed_addr constant [22 x i8] c"POLYNOMIAL_FACTORISED\00", align 1
@.str.621 = private unnamed_addr constant [22 x i8] c"Factorized Polynomial\00", align 1
@.str.622 = private unnamed_addr constant [4 x i8] c"SIN\00", align 1
@.str.623 = private unnamed_addr constant [5 x i8] c"Sine\00", align 1
@.str.624 = private unnamed_addr constant [4 x i8] c"COS\00", align 1
@.str.625 = private unnamed_addr constant [7 x i8] c"Cosine\00", align 1
@.str.626 = private unnamed_addr constant [4 x i8] c"TAN\00", align 1
@.str.627 = private unnamed_addr constant [8 x i8] c"Tangent\00", align 1
@.str.628 = private unnamed_addr constant [5 x i8] c"SQRT\00", align 1
@.str.629 = private unnamed_addr constant [12 x i8] c"Square Root\00", align 1
@.str.630 = private unnamed_addr constant [3 x i8] c"LN\00", align 1
@.str.631 = private unnamed_addr constant [18 x i8] c"Natural Logarithm\00", align 1
@.str.632 = private unnamed_addr constant [5 x i8] c"SINC\00", align 1
@.str.633 = private unnamed_addr constant [16 x i8] c"Normalized Sine\00", align 1
@.str.634 = private unnamed_addr constant [11 x i8] c"sin(x) / x\00", align 1
@.str.635 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.636 = private unnamed_addr constant [10 x i8] c"No Cycles\00", align 1
@.str.637 = private unnamed_addr constant [18 x i8] c"Don't do anything\00", align 1
@.str.638 = private unnamed_addr constant [7 x i8] c"REPEAT\00", align 1
@.str.639 = private unnamed_addr constant [14 x i8] c"Repeat Motion\00", align 1
@.str.640 = private unnamed_addr constant [28 x i8] c"Repeat keyframe range as-is\00", align 1
@.str.641 = private unnamed_addr constant [14 x i8] c"REPEAT_OFFSET\00", align 1
@.str.642 = private unnamed_addr constant [19 x i8] c"Repeat with Offset\00", align 1
@.str.643 = private unnamed_addr constant [86 x i8] c"Repeat keyframe range, but with offset based on gradient between start and end values\00", align 1
@.str.644 = private unnamed_addr constant [7 x i8] c"MIRROR\00", align 1
@.str.645 = private unnamed_addr constant [16 x i8] c"Repeat Mirrored\00", align 1
@.str.646 = private unnamed_addr constant [65 x i8] c"Alternate between forward and reverse playback of keyframe range\00", align 1
@.str.647 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.648 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.649 = private unnamed_addr constant [9 x i8] c"SUBTRACT\00", align 1
@.str.650 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.651 = private unnamed_addr constant [9 x i8] c"MULTIPLY\00", align 1
@.str.652 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@str = private unnamed_addr constant [79 x i8] c"ERROR: cannot assign F-Curve to group, since F-Curve is not attached to any ID\00", align 1
@str.653 = private unnamed_addr constant [45 x i8] c"ERROR: F-Curve already belongs to this group\00", align 1
@switch.table.rna_FModifierType_refine = private unnamed_addr constant [9 x ptr] [ptr @RNA_FModifierGenerator, ptr @RNA_FModifierFunctionGenerator, ptr @RNA_FModifierEnvelope, ptr @RNA_FModifierCycles, ptr @RNA_FModifierNoise, ptr @RNA_UnknownType, ptr @RNA_FModifierPython, ptr @RNA_FModifierLimits, ptr @RNA_FModifierStepped], align 8

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FCurve_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
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
define internal void @FCurve_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @FCurve_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FCurve_extrapolation_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !46
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurve_extrapolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 10
  store i16 %5, ptr %6, align 2, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_driver_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Driver, ptr noundef %6) #20
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_group_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ActionGroup, ptr noundef %6) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_group_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds i8, ptr %1, i64 16
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %6, null
  %10 = icmp eq ptr %3, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.428, ptr noundef %6, ptr noundef %3)
  br label %54

14:                                               ; preds = %2
  %15 = icmp eq ptr %5, null
  %16 = icmp eq ptr %6, %3
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.429, ptr noundef %6, ptr noundef %3)
  br label %54

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !54
  %23 = icmp eq i16 %22, 17217
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %26 = load i16, ptr %25, align 8, !tbaa !54
  %27 = icmp eq i16 %26, 17217
  br i1 %27, label %33, label %28

28:                                               ; preds = %24, %20
  %29 = tail call ptr @BKE_animdata_from_id(ptr noundef %6) #20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %29, align 8, !tbaa !55
  br label %33

33:                                               ; preds = %31, %28, %24
  %34 = phi ptr [ %6, %24 ], [ %32, %31 ], [ null, %28 ]
  %35 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  %37 = icmp eq ptr %36, %5
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.653)
  br label %54

40:                                               ; preds = %33
  %41 = icmp eq ptr %34, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %54

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bAction, ptr %34, i64 0, i32 1
  %46 = tail call i32 @BLI_findindex(ptr noundef nonnull %45, ptr noundef %8) #20
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ID, ptr %34, i64 0, i32 4
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.432, ptr noundef %8, ptr noundef nonnull %49)
  br label %54

51:                                               ; preds = %44
  tail call void @action_groups_remove_channel(ptr noundef nonnull %34, ptr noundef %8) #20
  br i1 %15, label %53, label %52

52:                                               ; preds = %51
  tail call void @action_groups_add_channel(ptr noundef nonnull %34, ptr noundef nonnull %5, ptr noundef %8) #20
  br label %54

53:                                               ; preds = %51
  tail call void @BLI_addtail(ptr noundef nonnull %45, ptr noundef %8) #20
  br label %54

54:                                               ; preds = %12, %18, %38, %42, %48, %52, %53
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurve_data_path_get(ptr nocapture noundef readonly %0, ptr noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6) #20
  br label %11

10:                                               ; preds = %2
  store i8 0, ptr %1, align 1, !tbaa !58
  br label %11

11:                                               ; preds = %8, %10
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FCurve_data_path_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #21
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_data_path_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %9(ptr noundef nonnull %6) #20
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i8, ptr %1, align 1, !tbaa !58
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @BLI_strdup(ptr noundef nonnull %1) #20
  store ptr %14, ptr %5, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 9
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = and i16 %16, -1025
  store i16 %17, ptr %15, align 8, !tbaa !59
  br label %19

18:                                               ; preds = %10
  store ptr null, ptr %5, align 8, !tbaa !57
  br label %19

19:                                               ; preds = %13, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FCurve_array_index_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !60
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurve_array_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 11
  store i32 %1, ptr %5, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FCurve_color_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !61
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurve_color_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 13
  store i32 %1, ptr %5, align 8, !tbaa !61
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurve_color_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 14
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !62
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !62
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !63

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurve_color_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 14
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !62
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 1.000000e+00
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 1.000000e+00, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !62
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %6, !llvm.loop !66

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FCurve_select_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !59
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurve_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !59
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FCurve_lock_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !59
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurve_lock_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !59
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FCurve_mute_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !59
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurve_mute_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !59
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FCurve_hide_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !59
  %6 = and i16 %5, 1
  %7 = xor i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurve_hide_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !59
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FCurve_is_valid_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !59
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurve_is_valid_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !59
  %8 = and i16 %7, -1025
  %9 = select i1 %5, i16 1024, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FCurve_sampled_points_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !68
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_sampled_points_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FCurve_sampled_points, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !68
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 16, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #20
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %16 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #20, !noalias !69
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_FCurveSample, ptr noundef %16) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @FCurve_sampled_points_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #20
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FCurveSample, ptr noundef %3) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_sampled_points_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #20, !noalias !72
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_FCurveSample, ptr noundef %8) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_sampled_points_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #20
  ret void
}

declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @FCurve_sampled_points_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #20
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_FCurve_sampled_points, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !68
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 16, i32 noundef %14, i8 noundef zeroext 0, ptr noundef null) #20
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %20 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #20, !noalias !75
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FCurveSample, ptr noundef %20) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %21

21:                                               ; preds = %3, %18
  %22 = load i32, ptr %15, align 8, !tbaa !44
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %26 = icmp sgt i32 %1, -1
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, %1
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, ptr noundef nonnull @__func__.FCurve_sampled_points_lookup_int, i32 noundef %1)
  br label %62

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %1, 0
  %39 = load i32, ptr %15, align 8
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %49

42:                                               ; preds = %37, %42
  %43 = phi i32 [ %44, %42 ], [ %1, %37 ]
  %44 = add nsw i32 %43, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #20
  %45 = icmp sgt i32 %43, 1
  %46 = load i32, ptr %15, align 8
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %42, label %49, !llvm.loop !80

49:                                               ; preds = %42, %37
  %50 = phi i32 [ %1, %37 ], [ %44, %42 ]
  %51 = phi i1 [ %40, %37 ], [ %47, %42 ]
  %52 = icmp eq i32 %50, 0
  %53 = select i1 %52, i1 %51, i1 false
  %54 = zext i1 %53 to i32
  br label %62

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !81
  %58 = mul nsw i32 %57, %1
  %59 = load ptr, ptr %25, align 8, !tbaa !82
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store ptr %61, ptr %25, align 8, !tbaa !82
  br label %62

62:                                               ; preds = %49, %55, %31
  %63 = phi i32 [ 0, %31 ], [ %54, %49 ], [ 1, %55 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %66 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #20, !noalias !83
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FCurveSample, ptr noundef %66) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  br label %67

67:                                               ; preds = %62, %65, %21
  %68 = phi i32 [ 0, %21 ], [ %63, %65 ], [ %63, %62 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #20
  ret i32 %68
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FCurve_keyframe_points_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !68
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_keyframe_points_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FCurve_keyframe_points, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !68
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 72, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #20
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %16 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #20, !noalias !87
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_Keyframe, ptr noundef %16) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FCurve_keyframe_points_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #20
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Keyframe, ptr noundef %3) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_keyframe_points_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #20, !noalias !90
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_Keyframe, ptr noundef %8) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_keyframe_points_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FCurve_keyframe_points_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #20
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_FCurve_keyframe_points, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !68
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 72, i32 noundef %14, i8 noundef zeroext 0, ptr noundef null) #20
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %20 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #20, !noalias !93
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Keyframe, ptr noundef %20) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %21

21:                                               ; preds = %3, %18
  %22 = load i32, ptr %15, align 8, !tbaa !44
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %26 = icmp sgt i32 %1, -1
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, %1
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, ptr noundef nonnull @__func__.FCurve_keyframe_points_lookup_int, i32 noundef %1)
  br label %62

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %1, 0
  %39 = load i32, ptr %15, align 8
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %49

42:                                               ; preds = %37, %42
  %43 = phi i32 [ %44, %42 ], [ %1, %37 ]
  %44 = add nsw i32 %43, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #20
  %45 = icmp sgt i32 %43, 1
  %46 = load i32, ptr %15, align 8
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %42, label %49, !llvm.loop !96

49:                                               ; preds = %42, %37
  %50 = phi i32 [ %1, %37 ], [ %44, %42 ]
  %51 = phi i1 [ %40, %37 ], [ %47, %42 ]
  %52 = icmp eq i32 %50, 0
  %53 = select i1 %52, i1 %51, i1 false
  %54 = zext i1 %53 to i32
  br label %62

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !81
  %58 = mul nsw i32 %57, %1
  %59 = load ptr, ptr %25, align 8, !tbaa !82
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store ptr %61, ptr %25, align 8, !tbaa !82
  br label %62

62:                                               ; preds = %49, %55, %31
  %63 = phi i32 [ 0, %31 ], [ %54, %49 ], [ 1, %55 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %66 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #20, !noalias !97
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Keyframe, ptr noundef %66) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  br label %67

67:                                               ; preds = %62, %65, %21
  %68 = phi i32 [ 0, %21 ], [ %63, %65 ], [ %63, %62 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #20
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_modifiers_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FCurve_modifiers, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.FCurve, ptr %5, i64 0, i32 4
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #20
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #20, !noalias !100
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_FModifier, ptr noundef %13) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @FCurve_modifiers_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #20
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FModifier, ptr noundef %3) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_modifiers_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #20, !noalias !103
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_FModifier, ptr noundef %8) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_modifiers_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @FCurve_modifiers_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #20
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_FCurve_modifiers, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 4
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #20
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #20, !noalias !106
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FModifier, ptr noundef %17) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !109
  %25 = icmp eq ptr %24, null
  %26 = icmp sgt i32 %1, 0
  br i1 %25, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %12, align 8
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %34, label %41

31:                                               ; preds = %21
  br i1 %26, label %32, label %54

32:                                               ; preds = %31
  %33 = load ptr, ptr %22, align 8, !tbaa !111
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #20
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !112

41:                                               ; preds = %34, %27
  %42 = phi i32 [ %1, %27 ], [ %36, %34 ]
  %43 = phi i1 [ %29, %27 ], [ %39, %34 ]
  %44 = icmp eq i32 %42, 0
  %45 = select i1 %44, i1 %43, i1 false
  br label %60

46:                                               ; preds = %32, %50
  %47 = phi i32 [ %51, %50 ], [ %1, %32 ]
  %48 = phi ptr [ %52, %50 ], [ %33, %32 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = add nsw i32 %47, -1
  %52 = load ptr, ptr %48, align 8, !tbaa !113
  store ptr %52, ptr %22, align 8, !tbaa !111
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !115

54:                                               ; preds = %46, %50, %31
  %55 = phi i32 [ %1, %31 ], [ %47, %46 ], [ 0, %50 ]
  %56 = icmp eq i32 %55, 0
  %57 = load ptr, ptr %22, align 8
  %58 = icmp ne ptr %57, null
  %59 = select i1 %56, i1 %58, i1 false
  br label %60

60:                                               ; preds = %54, %41
  %61 = phi i1 [ %45, %41 ], [ %59, %54 ]
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #20, !noalias !116
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FModifier, ptr noundef %63) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #20
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveKeyframePoints_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FCurveKeyframePoints_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FCurveKeyframePoints_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveKeyframePoints_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveKeyframePoints_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FCurveKeyframePoints_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveKeyframePoints_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveModifiers_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FCurveModifiers_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FCurveModifiers_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveModifiers_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveModifiers_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FCurveModifiers_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveModifiers_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveModifiers_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !119
  %5 = getelementptr inbounds %struct.FCurve, ptr %4, i64 0, i32 4
  %6 = tail call ptr @find_active_fmodifier(ptr noundef nonnull %5) #20, !noalias !119
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FModifier, ptr noundef %6) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveModifiers_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 4
  tail call void @set_active_fmodifier(ptr noundef nonnull %7, ptr noundef %4) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Keyframe_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Keyframe_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Keyframe_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Keyframe_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Keyframe_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Keyframe_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @Keyframe_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Keyframe_select_left_handle_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !122
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_select_left_handle_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 7
  store i8 %5, ptr %6, align 1, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Keyframe_select_right_handle_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %5 = load i8, ptr %4, align 1, !tbaa !124
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_select_right_handle_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 9
  store i8 %5, ptr %6, align 1, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Keyframe_select_control_point_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 4, !tbaa !125
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_select_control_point_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 8
  store i8 %5, ptr %6, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Keyframe_handle_left_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !126
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_handle_left_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 5
  store i8 %5, ptr %6, align 1, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Keyframe_handle_right_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 2, !tbaa !127
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_handle_right_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 6
  store i8 %5, ptr %6, align 2, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Keyframe_interpolation_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 4
  %5 = load i8, ptr %4, align 4, !tbaa !128
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_interpolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 4
  store i8 %5, ptr %6, align 4, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Keyframe_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 10
  %5 = load i8, ptr %4, align 2, !tbaa !129
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 10
  store i8 %5, ptr %6, align 2, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Keyframe_easing_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 11
  %5 = load i8, ptr %4, align 1, !tbaa !130
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_easing_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 11
  store i8 %5, ptr %6, align 1, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Keyframe_back_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 4, !tbaa !131
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_back_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 12
  store float %1, ptr %5, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Keyframe_amplitude_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 4, !tbaa !132
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_amplitude_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 4, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Keyframe_period_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 4, !tbaa !133
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_period_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.BezTriple, ptr %4, i64 0, i32 14
  store float %1, ptr %5, align 4, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_handle_left_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load float, ptr %4, align 4, !tbaa !62
  store float %5, ptr %1, align 4, !tbaa !62
  %6 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !62
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float %7, ptr %8, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_handle_left_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load float, ptr %1, align 4, !tbaa !62
  store float %5, ptr %4, align 4, !tbaa !62
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !62
  %8 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float %7, ptr %8, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !62
  store float %6, ptr %1, align 4, !tbaa !62
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !62
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load float, ptr %1, align 4, !tbaa !62
  %6 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  store float %5, ptr %6, align 4, !tbaa !62
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !62
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  store float %8, ptr %9, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_handle_right_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !62
  store float %6, ptr %1, align 4, !tbaa !62
  %7 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !62
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Keyframe_handle_right_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load float, ptr %1, align 4, !tbaa !62
  %6 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  store float %5, ptr %6, align 4, !tbaa !62
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !62
  %9 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  store float %8, ptr %9, align 4, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveSample_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FCurveSample_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FCurveSample_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveSample_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveSample_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FCurveSample_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveSample_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FCurveSample_select_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FPoint, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !134
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurveSample_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.FPoint, ptr %4, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !134
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !134
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurveSample_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %4, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !62
  %9 = getelementptr inbounds float, ptr %1, i64 %6
  store float %8, ptr %9, align 4, !tbaa !62
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %5, label %12, !llvm.loop !136

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FCurveSample_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %1, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !62
  %9 = getelementptr inbounds float, ptr %4, i64 %6
  store float %8, ptr %9, align 4, !tbaa !62
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %5, label %12, !llvm.loop !137

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverTarget_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_DriverTarget_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DriverTarget_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverTarget_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverTarget_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DriverTarget_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverTarget_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverTarget_id_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ID, ptr noundef %5) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DriverTarget_id_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #6 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  store ptr %4, ptr %6, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DriverTarget_id_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DriverTarget, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !140
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DriverTarget_id_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DriverTarget, ptr %4, i64 0, i32 4
  %6 = load i16, ptr %5, align 2, !tbaa !141
  %7 = and i16 %6, 2
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds %struct.DriverTarget, ptr %4, i64 0, i32 5
  %10 = select i1 %8, i32 %1, i32 16975
  store i32 %10, ptr %9, align 4, !tbaa !140
  %11 = load ptr, ptr %4, align 8, !tbaa !138
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !54
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.DriverTarget, ptr %4, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !140
  %19 = icmp eq i32 %18, %16
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store ptr null, ptr %4, align 8, !tbaa !138
  br label %21

21:                                               ; preds = %2, %13, %20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DriverTarget_data_path_get(ptr nocapture noundef readonly %0, ptr noundef %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DriverTarget, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6) #20
  br label %11

10:                                               ; preds = %2
  store i8 0, ptr %1, align 1, !tbaa !58
  br label %11

11:                                               ; preds = %8, %10
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DriverTarget_data_path_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DriverTarget, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !142
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #21
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverTarget_data_path_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DriverTarget, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %9(ptr noundef nonnull %6) #20
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i8, ptr %1, align 1, !tbaa !58
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @BLI_strdup(ptr noundef nonnull %1) #20
  br label %15

15:                                               ; preds = %10, %13
  %16 = phi ptr [ %14, %13 ], [ null, %10 ]
  store ptr %16, ptr %5, align 8, !tbaa !142
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverTarget_bone_target_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DriverTarget, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 32) #20
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DriverTarget_bone_target_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DriverTarget, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #21
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @DriverTarget_bone_target_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DriverTarget, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DriverTarget_transform_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DriverTarget, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !143
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DriverTarget_transform_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.DriverTarget, ptr %4, i64 0, i32 3
  store i16 %5, ptr %6, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DriverTarget_transform_space_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DriverTarget, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !141
  %6 = and i16 %5, 12
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DriverTarget_transform_space_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DriverTarget, ptr %4, i64 0, i32 4
  %6 = load i16, ptr %5, align 2, !tbaa !141
  %7 = and i16 %6, -13
  %8 = trunc i32 %1 to i16
  %9 = or i16 %7, %8
  store i16 %9, ptr %5, align 2, !tbaa !141
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverVariable_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_DriverVariable_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DriverVariable_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverVariable_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverVariable_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DriverVariable_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverVariable_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverVariable_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DriverVar, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DriverVariable_name_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DriverVar, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #21
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverVariable_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DriverVar, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DriverVariable_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DriverVar, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !144
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverVariable_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  tail call void @driver_change_variable_type(ptr noundef %4, i32 noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DriverVariable_targets_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DriverVar, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !146
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverVariable_targets_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_DriverVariable_targets, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.DriverVar, ptr %5, i64 0, i32 3
  %8 = getelementptr inbounds %struct.DriverVar, ptr %5, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !146
  %10 = sext i16 %9 to i32
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 56, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #20
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %16 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #20, !noalias !147
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_DriverTarget, ptr noundef %16) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DriverVariable_targets_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #20
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_DriverTarget, ptr noundef %3) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverVariable_targets_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #20, !noalias !150
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_DriverTarget, ptr noundef %8) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DriverVariable_targets_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @DriverVariable_targets_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #20
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_DriverVariable_targets, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.DriverVar, ptr %8, i64 0, i32 3
  %12 = getelementptr inbounds %struct.DriverVar, ptr %8, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !146
  %14 = sext i16 %13 to i32
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, i32 noundef 56, i32 noundef %14, i8 noundef zeroext 0, ptr noundef null) #20
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %20 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #20, !noalias !153
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_DriverTarget, ptr noundef %20) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %21

21:                                               ; preds = %3, %18
  %22 = load i32, ptr %15, align 8, !tbaa !44
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %26 = icmp sgt i32 %1, -1
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, %1
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, ptr noundef nonnull @__func__.DriverVariable_targets_lookup_int, i32 noundef %1)
  br label %62

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %1, 0
  %39 = load i32, ptr %15, align 8
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %49

42:                                               ; preds = %37, %42
  %43 = phi i32 [ %44, %42 ], [ %1, %37 ]
  %44 = add nsw i32 %43, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #20
  %45 = icmp sgt i32 %43, 1
  %46 = load i32, ptr %15, align 8
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %42, label %49, !llvm.loop !156

49:                                               ; preds = %42, %37
  %50 = phi i32 [ %1, %37 ], [ %44, %42 ]
  %51 = phi i1 [ %40, %37 ], [ %47, %42 ]
  %52 = icmp eq i32 %50, 0
  %53 = select i1 %52, i1 %51, i1 false
  %54 = zext i1 %53 to i32
  br label %62

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !81
  %58 = mul nsw i32 %57, %1
  %59 = load ptr, ptr %25, align 8, !tbaa !82
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store ptr %61, ptr %25, align 8, !tbaa !82
  br label %62

62:                                               ; preds = %49, %55, %31
  %63 = phi i32 [ 0, %31 ], [ %54, %49 ], [ 1, %55 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %66 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #20, !noalias !157
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_DriverTarget, ptr noundef %66) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  br label %67

67:                                               ; preds = %62, %65, %21
  %68 = phi i32 [ 0, %21 ], [ %63, %65 ], [ %63, %62 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #20
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define dso_local void @Driver_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Driver_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Driver_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Driver_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Driver_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Driver_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @Driver_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Driver_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ChannelDriver, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !160
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Driver_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ChannelDriver, ptr %4, i64 0, i32 5
  store i32 %1, ptr %5, align 8, !tbaa !160
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Driver_expression_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ChannelDriver, ptr %4, i64 0, i32 1
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 256) #20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Driver_expression_length(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ChannelDriver, ptr %3, i64 0, i32 1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #21
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @Driver_expression_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ChannelDriver, ptr %4, i64 0, i32 1
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 256) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Driver_variables_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Driver_variables, ptr %6, align 8, !tbaa !39
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef %5, ptr noundef null) #20
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %12 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #20, !noalias !162
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_DriverVariable, ptr noundef %12) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Driver_variables_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #20
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_DriverVariable, ptr noundef %3) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Driver_variables_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #20, !noalias !165
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_DriverVariable, ptr noundef %8) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Driver_variables_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Driver_variables_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #20
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_Driver_variables, ptr %10, align 8, !tbaa !39
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef %8, ptr noundef null) #20
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %16 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #20, !noalias !168
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_DriverVariable, ptr noundef %16) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %17

17:                                               ; preds = %3, %14
  %18 = load i32, ptr %11, align 8, !tbaa !44
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %63, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !109
  %24 = icmp eq ptr %23, null
  %25 = icmp sgt i32 %1, 0
  br i1 %24, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %11, align 8
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %33, label %40

30:                                               ; preds = %20
  br i1 %25, label %31, label %53

31:                                               ; preds = %30
  %32 = load ptr, ptr %21, align 8, !tbaa !111
  br label %45

33:                                               ; preds = %26, %33
  %34 = phi i32 [ %35, %33 ], [ %1, %26 ]
  %35 = add nsw i32 %34, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #20
  %36 = icmp sgt i32 %34, 1
  %37 = load i32, ptr %11, align 8
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %33, label %40, !llvm.loop !171

40:                                               ; preds = %33, %26
  %41 = phi i32 [ %1, %26 ], [ %35, %33 ]
  %42 = phi i1 [ %28, %26 ], [ %38, %33 ]
  %43 = icmp eq i32 %41, 0
  %44 = select i1 %43, i1 %42, i1 false
  br label %59

45:                                               ; preds = %31, %49
  %46 = phi i32 [ %50, %49 ], [ %1, %31 ]
  %47 = phi ptr [ %51, %49 ], [ %32, %31 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = add nsw i32 %46, -1
  %51 = load ptr, ptr %47, align 8, !tbaa !113
  store ptr %51, ptr %21, align 8, !tbaa !111
  %52 = icmp sgt i32 %46, 1
  br i1 %52, label %45, label %53, !llvm.loop !172

53:                                               ; preds = %45, %49, %30
  %54 = phi i32 [ %1, %30 ], [ %46, %45 ], [ 0, %49 ]
  %55 = icmp eq i32 %54, 0
  %56 = load ptr, ptr %21, align 8
  %57 = icmp ne ptr %56, null
  %58 = select i1 %55, i1 %57, i1 false
  br label %59

59:                                               ; preds = %53, %40
  %60 = phi i1 [ %44, %40 ], [ %58, %53 ]
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %62 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #20, !noalias !173
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_DriverVariable, ptr noundef %62) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  br label %63

63:                                               ; preds = %59, %61, %17
  %64 = phi i1 [ false, %17 ], [ %60, %61 ], [ %60, %59 ]
  %65 = zext i1 %64 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #20
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Driver_variables_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #20
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_Driver_variables, ptr %11, align 8, !tbaa !39
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef %9, ptr noundef null) #20
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #20, !noalias !176
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_DriverVariable, ptr noundef %17) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %24

24:                                               ; preds = %21, %58
  %25 = phi i8 [ 0, %21 ], [ %53, %58 ]
  %26 = load ptr, ptr %23, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.DriverVar, ptr %26, i64 0, i32 2
  %30 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #21
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %31, 1024
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef nonnull %29, i64 noundef 64) #20
  %35 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #21
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %48, label %49

37:                                               ; preds = %28
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %39 = add i64 %30, 1
  %40 = and i64 %39, 4294967295
  %41 = call ptr %38(i64 noundef %40, ptr noundef nonnull @.str.51) #20
  %42 = load ptr, ptr %23, align 8, !tbaa !45
  %43 = getelementptr inbounds %struct.DriverVar, ptr %42, i64 0, i32 2
  %44 = call ptr @BLI_strncpy_utf8(ptr noundef %41, ptr noundef nonnull %43, i64 noundef 64) #20
  %45 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) %1) #21
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %47(ptr noundef %41) #20
  br i1 %46, label %48, label %49

48:                                               ; preds = %37, %33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 24, i1 false)
  br label %49

49:                                               ; preds = %48, %37, %33
  %50 = phi i8 [ %25, %33 ], [ %25, %37 ], [ 1, %48 ]
  %51 = phi i1 [ true, %33 ], [ true, %37 ], [ false, %48 ]
  br i1 %51, label %52, label %61

52:                                               ; preds = %49, %24
  %53 = phi i8 [ %50, %49 ], [ %25, %24 ]
  call void @rna_iterator_listbase_next(ptr noundef nonnull %6) #20
  %54 = load i32, ptr %12, align 8, !tbaa !44
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %57 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #20, !noalias !179
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_DriverVariable, ptr noundef %57) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %58

58:                                               ; preds = %52, %56
  %59 = load i32, ptr %12, align 8, !tbaa !44
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %24, !llvm.loop !182

61:                                               ; preds = %49, %58
  %62 = phi i8 [ %53, %58 ], [ %50, %49 ]
  %63 = zext nneg i8 %62 to i32
  br label %64

64:                                               ; preds = %61, %18
  %65 = phi i32 [ 0, %18 ], [ %63, %61 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #20
  ret i32 %65
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Driver_show_debug_info_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ChannelDriver, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !183
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Driver_show_debug_info_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ChannelDriver, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !183
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !183
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Driver_is_valid_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ChannelDriver, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !183
  %6 = and i32 %5, 1
  %7 = xor i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Driver_is_valid_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ChannelDriver, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !183
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !183
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ChannelDriverVariables_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ChannelDriverVariables_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ChannelDriverVariables_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ChannelDriverVariables_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ChannelDriverVariables_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ChannelDriverVariables_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ChannelDriverVariables_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifier_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FModifier_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FModifier_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifier_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifier_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FModifier_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifier_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifier_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !184
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifier_show_expanded_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !186
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifier_show_expanded_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !186
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !186
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifier_mute_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !186
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifier_mute_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !186
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !186
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifier_is_valid_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !186
  %6 = and i16 %5, 1
  %7 = xor i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifier_active_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !186
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifier_active_set(ptr nocapture noundef readonly %0, i32 %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 5
  %6 = load i16, ptr %5, align 2, !tbaa !186
  %7 = or i16 %6, 4
  store i16 %7, ptr %5, align 2, !tbaa !186
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifier_use_restricted_range_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !186
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifier_use_restricted_range_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !186
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !186
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifier_frame_start_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 8, !tbaa !187
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifier_frame_start_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -3.000000e+05
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = fcmp ogt float %1, 3.000000e+05
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8, %6, %2
  %10 = phi float [ 3.000000e+05, %8 ], [ %1, %6 ], [ -3.000000e+05, %2 ]
  %11 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 7
  store float %10, ptr %11, align 8, !tbaa !187
  %12 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 8
  %13 = load float, ptr %12, align 4, !tbaa !188
  %14 = fcmp ult float %10, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store float %10, ptr %12, align 4, !tbaa !188
  br label %16

16:                                               ; preds = %9, %15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifier_frame_end_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !188
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifier_frame_end_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -3.000000e+05
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = fcmp ogt float %1, 3.000000e+05
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8, %6, %2
  %10 = phi float [ 3.000000e+05, %8 ], [ %1, %6 ], [ -3.000000e+05, %2 ]
  %11 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 8
  store float %10, ptr %11, align 4, !tbaa !188
  %12 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 7
  %13 = load float, ptr %12, align 8, !tbaa !187
  %14 = fcmp ugt float %10, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store float %10, ptr %12, align 8, !tbaa !187
  br label %16

16:                                               ; preds = %9, %15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifier_blend_in_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 8, !tbaa !189
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifier_blend_in_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !188
  %7 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 7
  %8 = load float, ptr %7, align 8, !tbaa !187
  %9 = fsub float %6, %8
  %10 = fcmp olt float %1, 0.000000e+00
  %11 = fcmp olt float %9, %1
  %12 = select i1 %11, float %9, float %1
  %13 = select i1 %10, float 0.000000e+00, float %12
  %14 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 9
  store float %13, ptr %14, align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_FModifier_blending_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #13 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  store float 0.000000e+00, ptr %1, align 4, !tbaa !62
  %8 = getelementptr inbounds %struct.FModifier, ptr %7, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !188
  %10 = getelementptr inbounds %struct.FModifier, ptr %7, i64 0, i32 7
  %11 = load float, ptr %10, align 8, !tbaa !187
  %12 = fsub float %9, %11
  store float %12, ptr %2, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifier_blend_out_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !190
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifier_blend_out_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !188
  %7 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 7
  %8 = load float, ptr %7, align 8, !tbaa !187
  %9 = fsub float %6, %8
  %10 = fcmp olt float %1, 0.000000e+00
  %11 = fcmp olt float %9, %1
  %12 = select i1 %11, float %9, float %1
  %13 = select i1 %10, float 0.000000e+00, float %12
  %14 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 10
  store float %13, ptr %14, align 4, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifier_use_influence_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !186
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifier_use_influence_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !186
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !186
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifier_influence_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 4, !tbaa !191
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifier_influence_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 6
  store float %8, ptr %9, align 4, !tbaa !191
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierGenerator_use_additive_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Generator, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !193
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierGenerator_use_additive_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !193
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !193
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierGenerator_mode_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Generator, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !195
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierGenerator_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 3
  store i32 %1, ptr %7, align 8, !tbaa !195
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierGenerator_poly_order_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Generator, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !196
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierGenerator_poly_order_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 100)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %9 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 2
  store i32 %8, ptr %9, align 4, !tbaa !196
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierGenerator_coefficients_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = load ptr, ptr %6, align 8, !tbaa !197
  %8 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !198
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %7, i64 %11, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierGenerator_coefficients_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = load ptr, ptr %6, align 8, !tbaa !197
  %8 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !198
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %1, i64 %11, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierFunctionGenerator_amplitude_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = load float, ptr %5, align 4, !tbaa !199
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierFunctionGenerator_amplitude_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  store float %1, ptr %6, align 4, !tbaa !199
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierFunctionGenerator_phase_multiplier_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !201
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierFunctionGenerator_phase_multiplier_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 1
  store float %1, ptr %7, align 4, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierFunctionGenerator_phase_offset_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !202
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierFunctionGenerator_phase_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 2
  store float %1, ptr %7, align 4, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierFunctionGenerator_value_offset_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !203
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierFunctionGenerator_value_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 3
  store float %1, ptr %7, align 4, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierFunctionGenerator_use_additive_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !204
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierFunctionGenerator_use_additive_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !204
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !204
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierFunctionGenerator_function_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !205
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierFunctionGenerator_function_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_FunctionGenerator, ptr %6, i64 0, i32 4
  store i32 %1, ptr %7, align 4, !tbaa !205
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierEnvelope_control_points_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = load ptr, ptr %5, align 8, !tbaa !206
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.FMod_Envelope, ptr %5, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !208
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelope_control_points_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.FModifier, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FModifierEnvelope_control_points, ptr %8, align 8, !tbaa !39
  %9 = load ptr, ptr %7, align 8, !tbaa !206
  %10 = getelementptr inbounds %struct.FMod_Envelope, ptr %7, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !208
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %9, i32 noundef 16, i32 noundef %11, i8 noundef zeroext 0, ptr noundef null) #20
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %17 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #20, !noalias !209
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_FModifierEnvelopeControlPoint, ptr noundef %17) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %18

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FModifierEnvelope_control_points_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #20
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FModifierEnvelopeControlPoint, ptr noundef %3) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelope_control_points_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #20, !noalias !212
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_FModifierEnvelopeControlPoint, ptr noundef %8) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelope_control_points_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FModifierEnvelope_control_points_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #20
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.FModifier, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !192
  %11 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %11, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_FModifierEnvelope_control_points, ptr %12, align 8, !tbaa !39
  %13 = load ptr, ptr %10, align 8, !tbaa !206
  %14 = getelementptr inbounds %struct.FMod_Envelope, ptr %10, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !208
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef %13, i32 noundef 16, i32 noundef %15, i8 noundef zeroext 0, ptr noundef null) #20
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !44
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %21 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #20, !noalias !215
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FModifierEnvelopeControlPoint, ptr noundef %21) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %22

22:                                               ; preds = %3, %19
  %23 = load i32, ptr %16, align 8, !tbaa !44
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %68, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %27 = icmp sgt i32 %1, -1
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, %1
  %31 = select i1 %27, i1 %30, i1 false
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, ptr noundef nonnull @__func__.FModifierEnvelope_control_points_lookup_int, i32 noundef %1)
  br label %63

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !78
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %34
  %39 = icmp sgt i32 %1, 0
  %40 = load i32, ptr %16, align 8
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %50

43:                                               ; preds = %38, %43
  %44 = phi i32 [ %45, %43 ], [ %1, %38 ]
  %45 = add nsw i32 %44, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #20
  %46 = icmp sgt i32 %44, 1
  %47 = load i32, ptr %16, align 8
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %43, label %50, !llvm.loop !218

50:                                               ; preds = %43, %38
  %51 = phi i32 [ %1, %38 ], [ %45, %43 ]
  %52 = phi i1 [ %41, %38 ], [ %48, %43 ]
  %53 = icmp eq i32 %51, 0
  %54 = select i1 %53, i1 %52, i1 false
  %55 = zext i1 %54 to i32
  br label %63

56:                                               ; preds = %34
  %57 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !81
  %59 = mul nsw i32 %58, %1
  %60 = load ptr, ptr %26, align 8, !tbaa !82
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  store ptr %62, ptr %26, align 8, !tbaa !82
  br label %63

63:                                               ; preds = %50, %56, %32
  %64 = phi i32 [ 0, %32 ], [ %55, %50 ], [ 1, %56 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %67 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #20, !noalias !219
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_FModifierEnvelopeControlPoint, ptr noundef %67) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  br label %68

68:                                               ; preds = %63, %66, %22
  %69 = phi i32 [ 0, %22 ], [ %64, %66 ], [ %64, %63 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #20
  ret i32 %69
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierEnvelope_reference_value_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Envelope, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !222
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierEnvelope_reference_value_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 2
  store float %1, ptr %7, align 4, !tbaa !222
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierEnvelope_default_min_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Envelope, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 8, !tbaa !223
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierEnvelope_default_min_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 3
  store float %1, ptr %7, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierEnvelope_default_max_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Envelope, ptr %5, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !224
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierEnvelope_default_max_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 4
  store float %1, ptr %7, align 4, !tbaa !224
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelopeControlPoints_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FModifierEnvelopeControlPoints_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FModifierEnvelopeControlPoints_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelopeControlPoints_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelopeControlPoints_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FModifierEnvelopeControlPoints_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelopeControlPoints_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelopeControlPoint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_FModifierEnvelopeControlPoint_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @FModifierEnvelopeControlPoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelopeControlPoint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelopeControlPoint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @FModifierEnvelopeControlPoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelopeControlPoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierEnvelopeControlPoint_min_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load float, ptr %3, align 4, !tbaa !225
  ret float %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierEnvelopeControlPoint_min_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  store float %1, ptr %4, align 4, !tbaa !225
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierEnvelopeControlPoint_max_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !227
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierEnvelopeControlPoint_max_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %4, i64 0, i32 1
  store float %1, ptr %5, align 4, !tbaa !227
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierEnvelopeControlPoint_frame_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !228
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierEnvelopeControlPoint_frame_set(ptr nocapture noundef readonly %0, float noundef %1) #6 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %4, i64 0, i32 2
  store float %1, ptr %5, align 4, !tbaa !228
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierCycles_mode_before_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = load i16, ptr %5, align 2, !tbaa !229
  %7 = sext i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierCycles_mode_before_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = trunc i32 %1 to i16
  store i16 %7, ptr %6, align 2, !tbaa !229
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierCycles_cycles_before_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Cycles, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !231
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierCycles_cycles_before_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 -32768)
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.FMod_Cycles, ptr %6, i64 0, i32 2
  store i16 %9, ptr %10, align 2, !tbaa !231
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierCycles_mode_after_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Cycles, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !232
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierCycles_mode_after_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.FMod_Cycles, ptr %6, i64 0, i32 1
  store i16 %7, ptr %8, align 2, !tbaa !232
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierCycles_cycles_after_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Cycles, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !233
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierCycles_cycles_after_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 -32768)
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.FMod_Cycles, ptr %6, i64 0, i32 3
  store i16 %9, ptr %10, align 2, !tbaa !233
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierLimits_use_min_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Limits, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !234
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierLimits_use_min_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.FMod_Limits, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !234
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierLimits_use_min_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Limits, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !234
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierLimits_use_min_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.FMod_Limits, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !234
  %10 = and i32 %9, -5
  %11 = select i1 %7, i32 0, i32 4
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierLimits_use_max_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Limits, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !234
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierLimits_use_max_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.FMod_Limits, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !234
  %10 = and i32 %9, -3
  %11 = select i1 %7, i32 0, i32 2
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierLimits_use_max_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Limits, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !234
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierLimits_use_max_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.FMod_Limits, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !234
  %10 = and i32 %9, -9
  %11 = select i1 %7, i32 0, i32 8
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierLimits_min_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = load float, ptr %5, align 4, !tbaa !237
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierLimits_min_x_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  store float %1, ptr %6, align 4, !tbaa !237
  %7 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !238
  %9 = fcmp ugt float %8, %1
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store float %1, ptr %7, align 4, !tbaa !238
  br label %11

11:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierLimits_min_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !239
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierLimits_min_y_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  store float %1, ptr %7, align 4, !tbaa !239
  %8 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  %9 = load float, ptr %8, align 4, !tbaa !240
  %10 = fcmp ugt float %9, %1
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store float %1, ptr %8, align 4, !tbaa !240
  br label %12

12:                                               ; preds = %2, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierLimits_max_x_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !238
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierLimits_max_x_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  store float %1, ptr %7, align 4, !tbaa !238
  %8 = load float, ptr %6, align 4, !tbaa !237
  %9 = fcmp ult float %8, %1
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store float %1, ptr %6, align 4, !tbaa !237
  br label %11

11:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierLimits_max_y_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !240
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierLimits_max_y_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  store float %1, ptr %7, align 4, !tbaa !240
  %8 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  %9 = load float, ptr %8, align 4, !tbaa !239
  %10 = fcmp ult float %9, %1
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store float %1, ptr %8, align 4, !tbaa !239
  br label %12

12:                                               ; preds = %2, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierNoise_blend_type_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Noise, ptr %5, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !241
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierNoise_blend_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = trunc i32 %1 to i16
  %8 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 5
  store i16 %7, ptr %8, align 2, !tbaa !241
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierNoise_scale_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = load float, ptr %5, align 4, !tbaa !243
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierNoise_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  store float %1, ptr %6, align 4, !tbaa !243
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierNoise_strength_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Noise, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !244
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierNoise_strength_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 1
  store float %1, ptr %7, align 4, !tbaa !244
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierNoise_phase_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Noise, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !245
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierNoise_phase_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 2
  store float %1, ptr %7, align 4, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierNoise_offset_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Noise, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !246
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierNoise_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 3
  store float %1, ptr %7, align 4, !tbaa !246
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierNoise_depth_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Noise, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 4, !tbaa !247
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierNoise_depth_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.FMod_Noise, ptr %6, i64 0, i32 4
  store i16 %9, ptr %10, align 4, !tbaa !247
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierStepped_frame_step_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = load float, ptr %5, align 4, !tbaa !248
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierStepped_frame_step_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  store float %1, ptr %6, align 4, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierStepped_frame_offset_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Stepped, ptr %5, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !250
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierStepped_frame_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 1
  store float %1, ptr %7, align 4, !tbaa !250
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierStepped_use_frame_start_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Stepped, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !251
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierStepped_use_frame_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp ne i32 %1, 0
  %8 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !251
  %10 = and i32 %9, -2
  %11 = zext i1 %7 to i32
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !251
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierStepped_use_frame_end_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Stepped, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !251
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierStepped_use_frame_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !251
  %10 = and i32 %9, -3
  %11 = select i1 %7, i32 0, i32 2
  %12 = or disjoint i32 %10, %11
  store i32 %12, ptr %8, align 4, !tbaa !251
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierStepped_frame_start_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Stepped, ptr %5, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !252
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierStepped_frame_start_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !251
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !253
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi float [ %13, %11 ], [ 3.000000e+05, %2 ]
  %16 = fcmp olt float %1, -3.000000e+05
  %17 = fcmp olt float %15, %1
  %18 = select i1 %17, float %15, float %1
  %19 = select i1 %16, float -3.000000e+05, float %18
  %20 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 2
  store float %19, ptr %20, align 4, !tbaa !252
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_FModifierStepped_start_frame_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #13 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.FModifier, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !192
  store float -3.000000e+05, ptr %1, align 4, !tbaa !62
  %10 = getelementptr inbounds %struct.FMod_Stepped, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !251
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.FMod_Stepped, ptr %9, i64 0, i32 3
  %16 = load float, ptr %15, align 4, !tbaa !253
  br label %17

17:                                               ; preds = %5, %14
  %18 = phi float [ %16, %14 ], [ 3.000000e+05, %5 ]
  store float %18, ptr %2, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @FModifierStepped_frame_end_get(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.FMod_Stepped, ptr %5, i64 0, i32 3
  %7 = load float, ptr %6, align 4, !tbaa !253
  ret float %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @FModifierStepped_frame_end_set(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !251
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !252
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi float [ %13, %11 ], [ -3.000000e+05, %2 ]
  %16 = fcmp ogt float %15, %1
  %17 = fcmp ogt float %1, 3.000000e+05
  %18 = select i1 %17, float 3.000000e+05, float %1
  %19 = select i1 %16, float %15, float %18
  %20 = getelementptr inbounds %struct.FMod_Stepped, ptr %6, i64 0, i32 3
  store float %19, ptr %20, align 4, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_FModifierStepped_end_frame_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #13 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.FModifier, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !192
  %10 = getelementptr inbounds %struct.FMod_Stepped, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !251
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.FMod_Stepped, ptr %9, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !252
  br label %17

17:                                               ; preds = %5, %14
  %18 = phi float [ %16, %14 ], [ -3.000000e+05, %5 ]
  store float %18, ptr %1, align 4, !tbaa !62
  store float 3.000000e+05, ptr %2, align 4, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local float @FCurve_evaluate(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = tail call float @evaluate_fcurve(ptr noundef %0, float noundef %1) #20
  ret float %3
}

declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_evaluate_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !254
  %8 = load float, ptr %7, align 4, !tbaa !62
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = tail call float @evaluate_fcurve(ptr noundef %6, float noundef %8) #20
  store float %10, ptr %9, align 4, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_update(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @sort_time_fcurve(ptr noundef %0) #20
  tail call void @calchandles_fcurve(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_update_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  tail call void @sort_time_fcurve(ptr noundef %6) #20
  tail call void @calchandles_fcurve(ptr noundef %6) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_range(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds float, ptr %1, i64 1
  %4 = tail call zeroext i8 @calc_fcurve_range(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_range_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !254
  %8 = getelementptr inbounds float, ptr %7, i64 1
  %9 = tail call zeroext i8 @calc_fcurve_range(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_update_autoflags(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @update_autoflags_fcurve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #20
  ret void
}

declare void @update_autoflags_fcurve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @FCurve_update_autoflags_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !254
  tail call void @update_autoflags_fcurve(ptr noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %7) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @FCurveKeyframePoints_insert(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = trunc i32 %3 to i16
  %6 = or i16 %5, 64
  %7 = tail call i32 @insert_vert_fcurve(ptr noundef %0, float noundef %1, float noundef %2, i16 noundef signext %6) #20
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = icmp ne ptr %9, null
  %11 = icmp sgt i32 %7, -1
  %12 = select i1 %10, i1 %11, i1 false
  %13 = zext nneg i32 %7 to i64
  %14 = getelementptr inbounds %struct.BezTriple, ptr %9, i64 %13
  %15 = select i1 %12, ptr %14, ptr null
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveKeyframePoints_insert_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !254
  %8 = load float, ptr %7, align 4, !tbaa !62
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = load float, ptr %9, align 4, !tbaa !62
  %11 = getelementptr inbounds i8, ptr %7, i64 8
  %12 = load i32, ptr %11, align 4, !tbaa !256
  %13 = getelementptr inbounds i8, ptr %7, i64 12
  %14 = trunc i32 %12 to i16
  %15 = or i16 %14, 64
  %16 = tail call i32 @insert_vert_fcurve(ptr noundef %6, float noundef %8, float noundef %10, i16 noundef signext %15) #20
  %17 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = icmp ne ptr %18, null
  %20 = icmp sgt i32 %16, -1
  %21 = select i1 %19, i1 %20, i1 false
  %22 = zext nneg i32 %16 to i64
  %23 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 %22
  %24 = select i1 %21, ptr %23, ptr null
  store ptr %24, ptr %13, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveKeyframePoints_add(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %30

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = add i32 %9, %1
  %11 = zext i32 %10 to i64
  %12 = mul nuw nsw i64 %11, 72
  %13 = tail call ptr %5(ptr noundef %7, i64 noundef %12, ptr noundef nonnull @__func__.rna_FKeyframe_points_add) #20
  store ptr %13, ptr %6, align 8, !tbaa !86
  %14 = load i32, ptr %8, align 8, !tbaa !68
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.BezTriple, ptr %13, i64 %15
  %17 = add i32 %14, %1
  store i32 %17, ptr %8, align 8, !tbaa !68
  br label %18

18:                                               ; preds = %18, %4
  %19 = phi ptr [ %16, %4 ], [ %28, %18 ]
  %20 = phi i32 [ %1, %4 ], [ %21, %18 ]
  %21 = add nsw i32 %20, -1
  %22 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 0, i32 9
  store i8 1, ptr %22, align 1, !tbaa !124
  %23 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 0, i32 8
  store i8 1, ptr %23, align 4, !tbaa !125
  %24 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 0, i32 7
  store i8 1, ptr %24, align 1, !tbaa !122
  %25 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 0, i32 4
  store i8 2, ptr %25, align 4, !tbaa !128
  %26 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 0, i32 6
  store i8 4, ptr %26, align 2, !tbaa !127
  %27 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 0, i32 5
  store i8 4, ptr %27, align 1, !tbaa !126
  %28 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 1
  %29 = icmp eq i32 %21, 0
  br i1 %29, label %30, label %18, !llvm.loop !257

30:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveKeyframePoints_add_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !254
  %6 = load i32, ptr %5, align 4, !tbaa !256
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = add i32 %15, %6
  %17 = zext i32 %16 to i64
  %18 = mul nuw nsw i64 %17, 72
  %19 = tail call ptr %11(ptr noundef %13, i64 noundef %18, ptr noundef nonnull @__func__.rna_FKeyframe_points_add) #20
  store ptr %19, ptr %12, align 8, !tbaa !86
  %20 = load i32, ptr %14, align 8, !tbaa !68
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.BezTriple, ptr %19, i64 %21
  %23 = add i32 %20, %6
  store i32 %23, ptr %14, align 8, !tbaa !68
  br label %24

24:                                               ; preds = %24, %8
  %25 = phi ptr [ %22, %8 ], [ %34, %24 ]
  %26 = phi i32 [ %6, %8 ], [ %27, %24 ]
  %27 = add nsw i32 %26, -1
  %28 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 9
  store i8 1, ptr %28, align 1, !tbaa !124
  %29 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 8
  store i8 1, ptr %29, align 4, !tbaa !125
  %30 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 7
  store i8 1, ptr %30, align 1, !tbaa !122
  %31 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 4
  store i8 2, ptr %31, align 4, !tbaa !128
  %32 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 6
  store i8 4, ptr %32, align 2, !tbaa !127
  %33 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 0, i32 5
  store i8 4, ptr %33, align 1, !tbaa !126
  %34 = getelementptr inbounds %struct.BezTriple, ptr %25, i64 1
  %35 = icmp eq i32 %27, 0
  br i1 %35, label %36, label %24, !llvm.loop !257

36:                                               ; preds = %24, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveKeyframePoints_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 72
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !68
  %18 = icmp ugt i32 %17, %13
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.433) #20
  br label %23

20:                                               ; preds = %15
  %21 = icmp eq i32 %3, 0
  %22 = zext i1 %21 to i8
  tail call void @delete_fcurve_key(ptr noundef %0, i32 noundef %13, i8 noundef zeroext %22) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %23

23:                                               ; preds = %19, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveKeyframePoints_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !254
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !256
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = ptrtoint ptr %12 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 72
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !68
  %24 = icmp ugt i32 %23, %19
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.433) #20
  br label %29

26:                                               ; preds = %21
  %27 = icmp eq i32 %10, 0
  %28 = zext i1 %27 to i8
  tail call void @delete_fcurve_key(ptr noundef %6, i32 noundef %19, i8 noundef zeroext %28) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %29

29:                                               ; preds = %25, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @FCurveModifiers_new(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  %4 = tail call ptr @add_fmodifier(ptr noundef nonnull %3, i32 noundef %1) #20
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveModifiers_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !254
  %8 = getelementptr inbounds i8, ptr %7, i64 8
  %9 = load i32, ptr %8, align 4, !tbaa !256
  %10 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 4
  %11 = tail call ptr @add_fmodifier(ptr noundef nonnull %10, i32 noundef %9) #20
  store ptr %11, ptr %7, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveModifiers_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 4
  %7 = tail call i32 @BLI_findindex(ptr noundef nonnull %6, ptr noundef %5) #20
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.FModifier, ptr %5, i64 0, i32 3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.434, ptr noundef nonnull %10) #20
  br label %13

11:                                               ; preds = %3
  %12 = tail call zeroext i8 @remove_fmodifier(ptr noundef nonnull %6, ptr noundef %5) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %13

13:                                               ; preds = %9, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FCurveModifiers_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !254
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 4
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef %10) #20
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.FModifier, ptr %10, i64 0, i32 3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.434, ptr noundef nonnull %15) #20
  br label %18

16:                                               ; preds = %4
  %17 = tail call zeroext i8 @remove_fmodifier(ptr noundef nonnull %11, ptr noundef %10) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %18

18:                                               ; preds = %14, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ChannelDriverVariables_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @driver_add_new_variable(ptr noundef %0) #20
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @ChannelDriverVariables_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !254
  %8 = tail call ptr @driver_add_new_variable(ptr noundef %6) #20
  store ptr %8, ptr %7, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ChannelDriverVariables_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = tail call i32 @BLI_findindex(ptr noundef %0, ptr noundef %5) #20
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.435) #20
  br label %10

9:                                                ; preds = %3
  tail call void @driver_free_variable(ptr noundef %0, ptr noundef %5) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %10

10:                                               ; preds = %8, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ChannelDriverVariables_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !254
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = tail call i32 @BLI_findindex(ptr noundef %6, ptr noundef %10) #20
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.435) #20
  br label %15

14:                                               ; preds = %4
  tail call void @driver_free_variable(ptr noundef %6, ptr noundef %10) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %15

15:                                               ; preds = %13, %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @FModifierGenerator_coefficients_get_length(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !198
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i32 [ %10, %8 ], [ 100, %2 ]
  store i32 %12, ptr %1, align 4, !tbaa !256
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @rna_FModifierGenerator_coefficients_get_length(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FModifier, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.FMod_Generator, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !198
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i32 [ %10, %8 ], [ 100, %2 ]
  store i32 %12, ptr %1, align 4, !tbaa !256
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @FModifierEnvelopeControlPoints_add(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_FModifierEnvelope_points_add(ptr noundef %0, ptr noundef %1, float noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rna_FModifierEnvelope_points_add(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = load ptr, ptr %6, align 8, !tbaa !206
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  %10 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !208
  %12 = call i32 @BKE_fcm_envelope_find_index(ptr noundef nonnull %7, float noundef %2, i32 noundef %11, ptr noundef nonnull %4) #20
  %13 = load i8, ptr %4, align 1, !tbaa !58
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = fpext float %2 to double
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.436, double noundef %16) #20
  br label %37

17:                                               ; preds = %9
  %18 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !35
  %19 = load ptr, ptr %6, align 8, !tbaa !206
  %20 = load i32, ptr %10, align 8, !tbaa !208
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 4
  %24 = call ptr %18(ptr noundef %19, i64 noundef %23, ptr noundef nonnull @__func__.rna_FModifierEnvelope_points_add) #20
  store ptr %24, ptr %6, align 8, !tbaa !206
  %25 = load i32, ptr %10, align 8, !tbaa !208
  %26 = icmp slt i32 %12, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = sext i32 %12 to i64
  %29 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %24, i64 %28
  %30 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %29, i64 1
  %31 = sub nsw i32 %25, %12
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %30, ptr align 4 %29, i64 %33, i1 false)
  br label %34

34:                                               ; preds = %27, %17
  %35 = load i32, ptr %10, align 8, !tbaa !208
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %10, align 8, !tbaa !208
  br label %37

37:                                               ; preds = %34, %15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  br i1 %14, label %42, label %53

38:                                               ; preds = %3
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %40 = tail call ptr %39(i64 noundef 16, ptr noundef nonnull @.str.437) #20
  store ptr %40, ptr %6, align 8, !tbaa !206
  %41 = getelementptr inbounds %struct.FMod_Envelope, ptr %6, i64 0, i32 1
  store i32 1, ptr %41, align 8, !tbaa !208
  br label %42

42:                                               ; preds = %37, %38
  %43 = phi i32 [ %12, %37 ], [ 0, %38 ]
  %44 = load ptr, ptr %6, align 8, !tbaa !206
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %44, i64 %45
  store float -1.000000e+00, ptr %46, align 4, !tbaa.struct !258
  %47 = getelementptr inbounds i8, ptr %46, i64 4
  store float 1.000000e+00, ptr %47, align 4, !tbaa.struct !259
  %48 = getelementptr inbounds i8, ptr %46, i64 8
  store float %2, ptr %48, align 4, !tbaa.struct !260
  %49 = getelementptr inbounds i8, ptr %46, i64 12
  store i16 0, ptr %49, align 4, !tbaa.struct !261
  %50 = getelementptr inbounds i8, ptr %46, i64 14
  store i16 0, ptr %50, align 2, !tbaa.struct !262
  %51 = load ptr, ptr %6, align 8, !tbaa !206
  %52 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %51, i64 %45
  br label %53

53:                                               ; preds = %37, %42
  %54 = phi ptr [ %52, %42 ], [ null, %37 ]
  ret ptr %54
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelopeControlPoints_add_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !254
  %8 = load float, ptr %7, align 4, !tbaa !62
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = tail call fastcc ptr @rna_FModifierEnvelope_points_add(ptr noundef %6, ptr noundef %1, float noundef %8)
  store ptr %10, ptr %9, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelopeControlPoints_remove(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.FModifier, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !192
  %8 = load ptr, ptr %7, align 8, !tbaa !206
  %9 = ptrtoint ptr %5 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.FMod_Envelope, ptr %7, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !208
  %18 = icmp sgt i32 %17, %13
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %3
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.438) #20
  br label %45

20:                                               ; preds = %15
  %21 = icmp sgt i32 %17, 1
  br i1 %21, label %22, label %39

22:                                               ; preds = %20
  %23 = and i64 %12, 4294967295
  %24 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %8, i64 %23
  %25 = add nuw nsw i64 %12, 1
  %26 = and i64 %25, 4294967295
  %27 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %8, i64 %26
  %28 = xor i32 %13, -1
  %29 = add nsw i32 %17, %28
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %24, ptr align 4 %27, i64 %31, i1 false)
  %32 = load i32, ptr %16, align 8, !tbaa !208
  %33 = add nsw i32 %32, -1
  store i32 %33, ptr %16, align 8, !tbaa !208
  %34 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !35
  %35 = load ptr, ptr %7, align 8, !tbaa !206
  %36 = sext i32 %33 to i64
  %37 = shl nsw i64 %36, 4
  %38 = tail call ptr %34(ptr noundef %35, i64 noundef %37, ptr noundef nonnull @__func__.rna_FModifierEnvelope_points_remove) #20
  store ptr %38, ptr %7, align 8, !tbaa !206
  br label %44

39:                                               ; preds = %20
  %40 = icmp eq ptr %8, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %42(ptr noundef nonnull %8) #20
  store ptr null, ptr %7, align 8, !tbaa !206
  br label %43

43:                                               ; preds = %41, %39
  store i32 0, ptr %16, align 8, !tbaa !208
  br label %44

44:                                               ; preds = %43, %22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %45

45:                                               ; preds = %19, %44
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FModifierEnvelopeControlPoints_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %3, align 8, !tbaa !254
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.FModifier, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !192
  %12 = load ptr, ptr %11, align 8, !tbaa !206
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.FMod_Envelope, ptr %11, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !208
  %22 = icmp sgt i32 %21, %17
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.438) #20
  br label %49

24:                                               ; preds = %19
  %25 = icmp sgt i32 %21, 1
  br i1 %25, label %26, label %43

26:                                               ; preds = %24
  %27 = and i64 %16, 4294967295
  %28 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %12, i64 %27
  %29 = add nuw nsw i64 %16, 1
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds %struct.FCM_EnvelopeData, ptr %12, i64 %30
  %32 = xor i32 %17, -1
  %33 = add nsw i32 %21, %32
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %28, ptr align 4 %31, i64 %35, i1 false)
  %36 = load i32, ptr %20, align 8, !tbaa !208
  %37 = add nsw i32 %36, -1
  store i32 %37, ptr %20, align 8, !tbaa !208
  %38 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !35
  %39 = load ptr, ptr %11, align 8, !tbaa !206
  %40 = sext i32 %37 to i64
  %41 = shl nsw i64 %40, 4
  %42 = tail call ptr %38(ptr noundef %39, i64 noundef %41, ptr noundef nonnull @__func__.rna_FModifierEnvelope_points_remove) #20
  store ptr %42, ptr %11, align 8, !tbaa !206
  br label %48

43:                                               ; preds = %24
  %44 = icmp eq ptr %12, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %46(ptr noundef nonnull %12) #20
  store ptr null, ptr %11, align 8, !tbaa !206
  br label %47

47:                                               ; preds = %45, %43
  store i32 0, ptr %20, align 8, !tbaa !208
  br label %48

48:                                               ; preds = %47, %26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %49

49:                                               ; preds = %23, %48
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_FCurve_update_data(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @sort_time_fcurve(ptr noundef %5) #20
  tail call void @calchandles_fcurve(ptr noundef %5) #20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_DriverTarget_update_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %5 = load ptr, ptr %2, align 8, !tbaa !53
  %6 = tail call ptr @BKE_animdata_from_id(ptr noundef %5) #20
  %7 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 5
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.FCurve, ptr %10, i64 0, i32 9
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = and i16 %16, -1025
  store i16 %17, ptr %15, align 8, !tbaa !59
  %18 = icmp eq ptr %14, null
  br i1 %18, label %8, label %19, !llvm.loop !263

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !tbaa !53
  call void @RNA_pointer_create(ptr noundef %20, ptr noundef nonnull @RNA_Driver, ptr noundef nonnull %14, ptr noundef nonnull %4) #20
  %21 = load ptr, ptr %4, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds %struct.ChannelDriver, ptr %23, i64 0, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !183
  %26 = and i32 %25, -2
  store i32 %26, ptr %24, align 4, !tbaa !183
  call void @DAG_relations_tag_update(ptr noundef %0) #20
  call void @DAG_id_tag_update(ptr noundef %21, i16 noundef signext 3) #20
  call void @WM_main_add_notifier(i32 noundef 67305472, ptr noundef %1) #20
  br label %27

27:                                               ; preds = %8, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_DriverTarget_id_editable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DriverTarget, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !140
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_DriverTarget_id_typef(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DriverTarget, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !140
  %6 = trunc i32 %5 to i16
  %7 = tail call ptr @ID_code_to_RNA_type(i16 noundef signext %6) #20
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_DriverTarget_id_type_editable(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DriverTarget, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !141
  %6 = and i16 %5, 2
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal void @rna_DriverTarget_update_name(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @rna_DriverTarget_update_data(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %6 = getelementptr inbounds %struct.ChannelDriver, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !183
  %8 = or i32 %7, 16
  store i32 %8, ptr %6, align 4, !tbaa !183
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_ChannelDriver_update_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.ChannelDriver, ptr %6, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !183
  %9 = and i32 %8, -2
  store i32 %9, ptr %7, align 4, !tbaa !183
  tail call void @DAG_relations_tag_update(ptr noundef %0) #20
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 3) #20
  tail call void @WM_main_add_notifier(i32 noundef 67305472, ptr noundef %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_ChannelDriver_update_expr(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.ChannelDriver, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !183
  %8 = or i32 %7, 8
  store i32 %8, ptr %6, align 4, !tbaa !183
  %9 = load ptr, ptr %2, align 8, !tbaa !53
  %10 = and i32 %8, -2
  store i32 %10, ptr %6, align 4, !tbaa !183
  tail call void @DAG_relations_tag_update(ptr noundef %0) #20
  tail call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 3) #20
  tail call void @WM_main_add_notifier(i32 noundef 67305472, ptr noundef %1) #20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @rna_FModifier_active_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #15 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.FModifier, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !264
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %12, %3
  %10 = load ptr, ptr %5, align 8, !tbaa !265
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %20

12:                                               ; preds = %3, %12
  %13 = phi ptr [ %18, %12 ], [ %7, %3 ]
  %14 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 5
  %15 = load i16, ptr %14, align 2, !tbaa !186
  %16 = and i16 %15, -5
  store i16 %16, ptr %14, align 2, !tbaa !186
  %17 = getelementptr inbounds %struct.FModifier, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !264
  %19 = icmp eq ptr %18, null
  br i1 %19, label %9, label %12, !llvm.loop !266

20:                                               ; preds = %9, %20
  %21 = phi ptr [ %25, %20 ], [ %10, %9 ]
  %22 = getelementptr inbounds %struct.FModifier, ptr %21, i64 0, i32 5
  %23 = load i16, ptr %22, align 2, !tbaa !186
  %24 = and i16 %23, -5
  store i16 %24, ptr %22, align 2, !tbaa !186
  %25 = load ptr, ptr %21, align 8, !tbaa !265
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !267

27:                                               ; preds = %20, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @rna_FModifier_start_frame_range(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #16 {
  store float -3.000000e+05, ptr %1, align 4, !tbaa !62
  store float 3.000000e+05, ptr %2, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_FModifier_end_frame_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #13 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  store float -3.000000e+05, ptr %1, align 4, !tbaa !62
  %8 = getelementptr inbounds %struct.FModifier, ptr %7, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !186
  %10 = and i16 %9, 16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.FModifier, ptr %7, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !187
  br label %15

15:                                               ; preds = %5, %12
  %16 = phi float [ %14, %12 ], [ -3.000000e+05, %5 ]
  store float %16, ptr %3, align 4, !tbaa !62
  store float 3.000000e+05, ptr %4, align 4, !tbaa !62
  store float 3.000000e+05, ptr %2, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef nonnull ptr @rna_FModifierType_refine(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.FModifier, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !184
  %6 = add i16 %5, -1
  %7 = icmp ult i16 %6, 9
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = zext nneg i16 %6 to i64
  %10 = getelementptr inbounds [9 x ptr], ptr @switch.table.rna_FModifierType_refine, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %1, %8
  %13 = phi ptr [ %11, %8 ], [ @RNA_UnknownType, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @rna_FModifier_verify_data_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = tail call ptr @fmodifier_get_typeinfo(ptr noundef %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %6, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !268
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %5) #20
  br label %13

13:                                               ; preds = %12, %8, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @rna_FModifierLimits_minx_range(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #16 {
  store float -3.000000e+05, ptr %1, align 4, !tbaa !62
  store float 3.000000e+05, ptr %2, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @rna_FModifierLimits_miny_range(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #16 {
  store float 0xC7EFFFFFE0000000, ptr %1, align 4, !tbaa !62
  store float 0x47EFFFFFE0000000, ptr %2, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_FModifierLimits_maxx_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #13 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.FModifier, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !192
  store float -3.000000e+05, ptr %1, align 4, !tbaa !62
  %10 = getelementptr inbounds %struct.FMod_Limits, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !234
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = load float, ptr %9, align 4, !tbaa !237
  br label %16

16:                                               ; preds = %5, %14
  %17 = phi float [ %15, %14 ], [ -3.000000e+05, %5 ]
  store float %17, ptr %3, align 4, !tbaa !62
  store float 3.000000e+05, ptr %4, align 4, !tbaa !62
  store float 3.000000e+05, ptr %2, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_FModifierLimits_maxy_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #13 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.FModifier, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !192
  store float 0xC7EFFFFFE0000000, ptr %1, align 4, !tbaa !62
  %10 = getelementptr inbounds %struct.FMod_Limits, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !234
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.rctf, ptr %9, i64 0, i32 2
  %16 = load float, ptr %15, align 4, !tbaa !239
  br label %17

17:                                               ; preds = %5, %14
  %18 = phi float [ %16, %14 ], [ 0xC7EFFFFFE0000000, %5 ]
  store float %18, ptr %3, align 4, !tbaa !62
  store float 0x47EFFFFFE0000000, ptr %4, align 4, !tbaa !62
  store float 0x47EFFFFFE0000000, ptr %2, align 4, !tbaa !62
  ret void
}

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #3

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @action_groups_remove_channel(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @action_groups_add_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #17

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

declare ptr @find_active_fmodifier(ptr noundef) local_unnamed_addr #3

declare void @set_active_fmodifier(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @driver_change_variable_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @sort_time_fcurve(ptr noundef) local_unnamed_addr #3

declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @calc_fcurve_range(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @insert_vert_fcurve(ptr noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @delete_fcurve_key(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @add_fmodifier(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare zeroext i8 @remove_fmodifier(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @driver_add_new_variable(ptr noundef) local_unnamed_addr #3

declare void @driver_free_variable(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BKE_fcm_envelope_find_index(ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ID_code_to_RNA_type(i16 noundef signext) local_unnamed_addr #3

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #3

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fmodifier_get_typeinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }

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
!46 = !{!47, !50, i64 74}
!47 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !48, i64 32, !36, i64 48, !36, i64 56, !43, i64 64, !49, i64 68, !50, i64 72, !50, i64 74, !43, i64 76, !36, i64 80, !43, i64 88, !37, i64 92, !49, i64 104, !49, i64 108}
!48 = !{!"ListBase", !36, i64 0, !36, i64 8}
!49 = !{!"float", !37, i64 0}
!50 = !{!"short", !37, i64 0}
!51 = !{!47, !36, i64 24}
!52 = !{!47, !36, i64 16}
!53 = !{!41, !36, i64 0}
!54 = !{!50, !50, i64 0}
!55 = !{!56, !36, i64 0}
!56 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !48, i64 24, !36, i64 40, !48, i64 48, !48, i64 64, !43, i64 80, !43, i64 84, !50, i64 88, !50, i64 90, !49, i64 92}
!57 = !{!47, !36, i64 80}
!58 = !{!37, !37, i64 0}
!59 = !{!47, !50, i64 72}
!60 = !{!47, !43, i64 76}
!61 = !{!47, !43, i64 88}
!62 = !{!49, !49, i64 0}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !{!66, !64, !65}
!67 = !{!47, !36, i64 56}
!68 = !{!47, !43, i64 64}
!69 = !{!70}
!70 = distinct !{!70, !71, !"FCurve_sampled_points_get: argument 0"}
!71 = distinct !{!71, !"FCurve_sampled_points_get"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"FCurve_sampled_points_get: argument 0"}
!74 = distinct !{!74, !"FCurve_sampled_points_get"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"FCurve_sampled_points_get: argument 0"}
!77 = distinct !{!77, !"FCurve_sampled_points_get"}
!78 = !{!79, !36, i64 32}
!79 = !{!"ArrayIterator", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 28, !36, i64 32}
!80 = distinct !{!80, !64, !65}
!81 = !{!79, !43, i64 24}
!82 = !{!79, !36, i64 0}
!83 = !{!84}
!84 = distinct !{!84, !85, !"FCurve_sampled_points_get: argument 0"}
!85 = distinct !{!85, !"FCurve_sampled_points_get"}
!86 = !{!47, !36, i64 48}
!87 = !{!88}
!88 = distinct !{!88, !89, !"FCurve_keyframe_points_get: argument 0"}
!89 = distinct !{!89, !"FCurve_keyframe_points_get"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"FCurve_keyframe_points_get: argument 0"}
!92 = distinct !{!92, !"FCurve_keyframe_points_get"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"FCurve_keyframe_points_get: argument 0"}
!95 = distinct !{!95, !"FCurve_keyframe_points_get"}
!96 = distinct !{!96, !64, !65}
!97 = !{!98}
!98 = distinct !{!98, !99, !"FCurve_keyframe_points_get: argument 0"}
!99 = distinct !{!99, !"FCurve_keyframe_points_get"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"FCurve_modifiers_get: argument 0"}
!102 = distinct !{!102, !"FCurve_modifiers_get"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"FCurve_modifiers_get: argument 0"}
!105 = distinct !{!105, !"FCurve_modifiers_get"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"FCurve_modifiers_get: argument 0"}
!108 = distinct !{!108, !"FCurve_modifiers_get"}
!109 = !{!110, !36, i64 16}
!110 = !{!"ListBaseIterator", !36, i64 0, !43, i64 8, !36, i64 16}
!111 = !{!110, !36, i64 0}
!112 = distinct !{!112, !64, !65}
!113 = !{!114, !36, i64 0}
!114 = !{!"Link", !36, i64 0, !36, i64 8}
!115 = distinct !{!115, !64, !65}
!116 = !{!117}
!117 = distinct !{!117, !118, !"FCurve_modifiers_get: argument 0"}
!118 = distinct !{!118, !"FCurve_modifiers_get"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"rna_FCurve_active_modifier_get: argument 0"}
!121 = distinct !{!121, !"rna_FCurve_active_modifier_get"}
!122 = !{!123, !37, i64 51}
!123 = !{!"BezTriple", !37, i64 0, !49, i64 36, !49, i64 40, !49, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !49, i64 56, !49, i64 60, !49, i64 64, !37, i64 68}
!124 = !{!123, !37, i64 53}
!125 = !{!123, !37, i64 52}
!126 = !{!123, !37, i64 49}
!127 = !{!123, !37, i64 50}
!128 = !{!123, !37, i64 48}
!129 = !{!123, !37, i64 54}
!130 = !{!123, !37, i64 55}
!131 = !{!123, !49, i64 56}
!132 = !{!123, !49, i64 60}
!133 = !{!123, !49, i64 64}
!134 = !{!135, !43, i64 8}
!135 = !{!"FPoint", !37, i64 0, !43, i64 8, !43, i64 12}
!136 = distinct !{!136, !64, !65}
!137 = distinct !{!137, !64, !65}
!138 = !{!139, !36, i64 0}
!139 = !{!"DriverTarget", !36, i64 0, !36, i64 8, !37, i64 16, !50, i64 48, !50, i64 50, !43, i64 52}
!140 = !{!139, !43, i64 52}
!141 = !{!139, !50, i64 50}
!142 = !{!139, !36, i64 8}
!143 = !{!139, !50, i64 48}
!144 = !{!145, !50, i64 530}
!145 = !{!"DriverVar", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !50, i64 528, !50, i64 530, !49, i64 532}
!146 = !{!145, !50, i64 528}
!147 = !{!148}
!148 = distinct !{!148, !149, !"DriverVariable_targets_get: argument 0"}
!149 = distinct !{!149, !"DriverVariable_targets_get"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"DriverVariable_targets_get: argument 0"}
!152 = distinct !{!152, !"DriverVariable_targets_get"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"DriverVariable_targets_get: argument 0"}
!155 = distinct !{!155, !"DriverVariable_targets_get"}
!156 = distinct !{!156, !64, !65}
!157 = !{!158}
!158 = distinct !{!158, !159, !"DriverVariable_targets_get: argument 0"}
!159 = distinct !{!159, !"DriverVariable_targets_get"}
!160 = !{!161, !43, i64 288}
!161 = !{!"ChannelDriver", !48, i64 0, !37, i64 16, !36, i64 272, !49, i64 280, !49, i64 284, !43, i64 288, !43, i64 292}
!162 = !{!163}
!163 = distinct !{!163, !164, !"Driver_variables_get: argument 0"}
!164 = distinct !{!164, !"Driver_variables_get"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"Driver_variables_get: argument 0"}
!167 = distinct !{!167, !"Driver_variables_get"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"Driver_variables_get: argument 0"}
!170 = distinct !{!170, !"Driver_variables_get"}
!171 = distinct !{!171, !64, !65}
!172 = distinct !{!172, !64, !65}
!173 = !{!174}
!174 = distinct !{!174, !175, !"Driver_variables_get: argument 0"}
!175 = distinct !{!175, !"Driver_variables_get"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"Driver_variables_get: argument 0"}
!178 = distinct !{!178, !"Driver_variables_get"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"Driver_variables_get: argument 0"}
!181 = distinct !{!181, !"Driver_variables_get"}
!182 = distinct !{!182, !64, !65}
!183 = !{!161, !43, i64 292}
!184 = !{!185, !50, i64 88}
!185 = !{!"FModifier", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !50, i64 88, !50, i64 90, !49, i64 92, !49, i64 96, !49, i64 100, !49, i64 104, !49, i64 108}
!186 = !{!185, !50, i64 90}
!187 = !{!185, !49, i64 96}
!188 = !{!185, !49, i64 100}
!189 = !{!185, !49, i64 104}
!190 = !{!185, !49, i64 108}
!191 = !{!185, !49, i64 92}
!192 = !{!185, !36, i64 16}
!193 = !{!194, !43, i64 20}
!194 = !{!"FMod_Generator", !36, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20}
!195 = !{!194, !43, i64 16}
!196 = !{!194, !43, i64 12}
!197 = !{!194, !36, i64 0}
!198 = !{!194, !43, i64 8}
!199 = !{!200, !49, i64 0}
!200 = !{!"FMod_FunctionGenerator", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !43, i64 16, !43, i64 20}
!201 = !{!200, !49, i64 4}
!202 = !{!200, !49, i64 8}
!203 = !{!200, !49, i64 12}
!204 = !{!200, !43, i64 20}
!205 = !{!200, !43, i64 16}
!206 = !{!207, !36, i64 0}
!207 = !{!"FMod_Envelope", !36, i64 0, !43, i64 8, !49, i64 12, !49, i64 16, !49, i64 20}
!208 = !{!207, !43, i64 8}
!209 = !{!210}
!210 = distinct !{!210, !211, !"FModifierEnvelope_control_points_get: argument 0"}
!211 = distinct !{!211, !"FModifierEnvelope_control_points_get"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"FModifierEnvelope_control_points_get: argument 0"}
!214 = distinct !{!214, !"FModifierEnvelope_control_points_get"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"FModifierEnvelope_control_points_get: argument 0"}
!217 = distinct !{!217, !"FModifierEnvelope_control_points_get"}
!218 = distinct !{!218, !64, !65}
!219 = !{!220}
!220 = distinct !{!220, !221, !"FModifierEnvelope_control_points_get: argument 0"}
!221 = distinct !{!221, !"FModifierEnvelope_control_points_get"}
!222 = !{!207, !49, i64 12}
!223 = !{!207, !49, i64 16}
!224 = !{!207, !49, i64 20}
!225 = !{!226, !49, i64 0}
!226 = !{!"FCM_EnvelopeData", !49, i64 0, !49, i64 4, !49, i64 8, !50, i64 12, !50, i64 14}
!227 = !{!226, !49, i64 4}
!228 = !{!226, !49, i64 8}
!229 = !{!230, !50, i64 0}
!230 = !{!"FMod_Cycles", !50, i64 0, !50, i64 2, !50, i64 4, !50, i64 6}
!231 = !{!230, !50, i64 4}
!232 = !{!230, !50, i64 2}
!233 = !{!230, !50, i64 6}
!234 = !{!235, !43, i64 16}
!235 = !{!"FMod_Limits", !236, i64 0, !43, i64 16, !43, i64 20}
!236 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!237 = !{!235, !49, i64 0}
!238 = !{!235, !49, i64 4}
!239 = !{!235, !49, i64 8}
!240 = !{!235, !49, i64 12}
!241 = !{!242, !50, i64 18}
!242 = !{!"FMod_Noise", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !50, i64 16, !50, i64 18}
!243 = !{!242, !49, i64 0}
!244 = !{!242, !49, i64 4}
!245 = !{!242, !49, i64 8}
!246 = !{!242, !49, i64 12}
!247 = !{!242, !50, i64 16}
!248 = !{!249, !49, i64 0}
!249 = !{!"FMod_Stepped", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !43, i64 16}
!250 = !{!249, !49, i64 4}
!251 = !{!249, !43, i64 16}
!252 = !{!249, !49, i64 8}
!253 = !{!249, !49, i64 12}
!254 = !{!255, !36, i64 0}
!255 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!256 = !{!43, !43, i64 0}
!257 = distinct !{!257, !64, !65}
!258 = !{i64 0, i64 4, !62, i64 4, i64 4, !62, i64 8, i64 4, !62, i64 12, i64 2, !54, i64 14, i64 2, !54}
!259 = !{i64 0, i64 4, !62, i64 4, i64 4, !62, i64 8, i64 2, !54, i64 10, i64 2, !54}
!260 = !{i64 0, i64 4, !62, i64 4, i64 2, !54, i64 6, i64 2, !54}
!261 = !{i64 0, i64 2, !54, i64 2, i64 2, !54}
!262 = !{i64 0, i64 2, !54}
!263 = distinct !{!263, !64, !65}
!264 = !{!185, !36, i64 8}
!265 = !{!185, !36, i64 0}
!266 = distinct !{!266, !64, !65}
!267 = distinct !{!267, !64, !65}
!268 = !{!269, !36, i64 160}
!269 = !{!"FModifierTypeInfo", !50, i64 0, !50, i64 2, !50, i64 4, !50, i64 6, !37, i64 8, !37, i64 72, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192}
