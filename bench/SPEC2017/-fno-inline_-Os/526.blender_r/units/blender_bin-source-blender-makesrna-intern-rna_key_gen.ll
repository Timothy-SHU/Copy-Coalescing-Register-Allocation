; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_key_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_key_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }

@RNA_ShapeKey = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ShapeKeyPoint, ptr @RNA_Key, ptr null, %struct.ListBase { ptr @rna_ShapeKey_rna_properties, ptr @rna_ShapeKey_data } }, ptr @.str.61, ptr null, ptr null, i32 4, ptr @.str.62, ptr @.str.63, ptr @.str.5, i32 176, ptr @rna_ShapeKey_name, ptr @rna_ShapeKey_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ShapeKey_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Key_key_blocks = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Key_animation_data, ptr @rna_Key_reference_key, i32 -1, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.8, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Key_key_blocks_begin, ptr @Key_key_blocks_next, ptr @Key_key_blocks_end, ptr @Key_key_blocks_get, ptr null, ptr @Key_key_blocks_lookup_int, ptr @Key_key_blocks_lookup_string, ptr null, ptr @RNA_ShapeKey }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@RNA_AnimData = external global %struct.StructRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@rna_ShapeKey_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKey_rna_type, ptr null, i32 -1, ptr @.str.26, i32 128, ptr @.str.27, ptr @.str.28, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKey_rna_properties_begin, ptr @ShapeKey_rna_properties_next, ptr @ShapeKey_rna_properties_end, ptr @ShapeKey_rna_properties_get, ptr null, ptr null, ptr @ShapeKey_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ShapeKey_data = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ShapeKey_slider_max, i32 -1, ptr @.str.59, i32 0, ptr @.str.60, ptr @.str.4, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKey_data_begin, ptr @ShapeKey_data_next, ptr @ShapeKey_data_end, ptr @ShapeKey_data_get, ptr @ShapeKey_data_length, ptr @ShapeKey_data_lookup_int, ptr null, ptr null, ptr @RNA_UnknownType }, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Array iterator out of range: %s (index %d)\0A\00", align 1
@__func__.ShapeKey_data_lookup_int = private unnamed_addr constant [25 x i8] c"ShapeKey_data_lookup_int\00", align 1
@rna_ShapeKeyPoint_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKeyPoint_rna_type, ptr null, i32 -1, ptr @.str.26, i32 128, ptr @.str.27, ptr @.str.28, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKeyPoint_rna_properties_begin, ptr @ShapeKeyPoint_rna_properties_next, ptr @ShapeKeyPoint_rna_properties_end, ptr @ShapeKeyPoint_rna_properties_get, ptr null, ptr null, ptr @ShapeKeyPoint_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ShapeKeyCurvePoint_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKeyCurvePoint_rna_type, ptr null, i32 -1, ptr @.str.26, i32 128, ptr @.str.27, ptr @.str.28, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKeyCurvePoint_rna_properties_begin, ptr @ShapeKeyCurvePoint_rna_properties_next, ptr @ShapeKeyCurvePoint_rna_properties_end, ptr @ShapeKeyCurvePoint_rna_properties_get, ptr null, ptr null, ptr @ShapeKeyCurvePoint_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ShapeKeyBezierPoint_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKeyBezierPoint_rna_type, ptr null, i32 -1, ptr @.str.26, i32 128, ptr @.str.27, ptr @.str.28, i32 0, ptr @.str.5, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKeyBezierPoint_rna_properties_begin, ptr @ShapeKeyBezierPoint_rna_properties_next, ptr @ShapeKeyBezierPoint_rna_properties_end, ptr @ShapeKeyBezierPoint_rna_properties_get, ptr null, ptr null, ptr @ShapeKeyBezierPoint_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"reference_key\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Reference Key\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rna_Key_reference_key = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Key_key_blocks, ptr null, i32 -1, ptr @.str.2, i32 8650752, ptr @.str.3, ptr @.str.4, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Key_reference_key_get, ptr null, ptr null, ptr null, ptr @RNA_ShapeKey }, align 8
@rna_Key_animation_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Key_user, ptr @rna_Key_key_blocks, i32 -1, ptr @.str.9, i32 8388608, ptr @.str.10, ptr @.str.11, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Key_animation_data_get, ptr null, ptr null, ptr null, ptr @RNA_AnimData }, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"key_blocks\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Key Blocks\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Shape keys\00", align 1
@rna_Key_user = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Key_use_relative, ptr @rna_Key_animation_data, i32 -1, ptr @.str.12, i32 8650816, ptr @.str.13, ptr @.str.14, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Key_user_get, ptr null, ptr null, ptr null, ptr @RNA_ID }, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"animation_data\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Animation data for this datablock\00", align 1
@rna_Key_use_relative = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Key_eval_time, ptr @rna_Key_user, i32 -1, ptr @.str.15, i32 3, ptr @.str.16, ptr @.str.17, i32 0, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Key_use_relative_get, ptr @Key_use_relative_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Datablock using these shape keys\00", align 1
@rna_Key_eval_time = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Key_slurph, ptr @rna_Key_use_relative, i32 -1, ptr @.str.18, i32 8195, ptr @.str.19, ptr @.str.20, i32 0, ptr @.str.5, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 216, i32 4, ptr null, ptr null }, ptr @Key_eval_time_get, ptr @Key_eval_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 3.000000e+05, float 0.000000e+00, float 3.000000e+05, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.15 = private unnamed_addr constant [13 x i8] c"use_relative\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Relative\00", align 1
@.str.17 = private unnamed_addr constant [96 x i8] c"Make shape keys relative, otherwise play through shapes as a sequence using the evaluation time\00", align 1
@rna_Key_slurph = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Key_eval_time, i32 -1, ptr @.str.21, i32 8195, ptr @.str.22, ptr @.str.23, i32 0, ptr @.str.5, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 212, i32 1, ptr null, ptr null }, ptr @Key_slurph_get, ptr @Key_slurph_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -500, i32 500, i32 -500, i32 500, i32 1, i32 0, ptr null }, align 8
@.str.18 = private unnamed_addr constant [10 x i8] c"eval_time\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Evaluation Time\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Evaluation time for absolute shape keys\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"slurph\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Slurph\00", align 1
@.str.23 = private unnamed_addr constant [78 x i8] c"Create a delay (in frames) in applying key positions, first vertex goes first\00", align 1
@RNA_ImageUser = external global %struct.StructRNA, align 8
@.str.24 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.25 = private unnamed_addr constant [73 x i8] c"Shape keys datablock containing different shapes of geometric datablocks\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_Key = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ShapeKey, ptr @RNA_ImageUser, ptr null, %struct.ListBase { ptr @rna_Key_reference_key, ptr @rna_Key_slurph } }, ptr @.str.24, ptr null, ptr null, i32 7, ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 176, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@rna_ShapeKey_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKey_name, ptr @rna_ShapeKey_rna_properties, i32 -1, ptr @.str.29, i32 8912896, ptr @.str.30, ptr @.str.31, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKey_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.26 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_ShapeKey_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKey_frame, ptr @rna_ShapeKey_rna_type, i32 -1, ptr @.str.32, i32 262145, ptr @.str.33, ptr @.str.34, i32 0, ptr @.str.5, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKey_name_get, ptr @ShapeKey_name_length, ptr @ShapeKey_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.4 }, align 8
@.str.29 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_ShapeKey_frame = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKey_value, ptr @rna_ShapeKey_name, i32 -1, ptr @.str.35, i32 2, ptr @.str.36, ptr @.str.37, i32 0, ptr @.str.5, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKey_frame_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Name of Shape Key\00", align 1
@rna_ShapeKey_value = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKey_interpolation, ptr @rna_ShapeKey_frame, i32 -1, ptr @.str.38, i32 3, ptr @.str.39, ptr @.str.40, i32 0, ptr @.str.5, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKey_value_get, ptr @ShapeKey_value_set, ptr null, ptr null, ptr @rna_ShapeKey_value_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+01, float 1.000000e+01, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.35 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"Frame for absolute keys\00", align 1
@rna_ShapeKey_interpolation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKey_vertex_group, ptr @rna_ShapeKey_value, i32 -1, ptr @.str.41, i32 3, ptr @.str.42, ptr @.str.43, i32 0, ptr @.str.5, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKey_interpolation_get, ptr @ShapeKey_interpolation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ShapeKey_interpolation_items, i32 4, i32 0 }, align 8
@.str.38 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"Value of shape key at the current frame\00", align 1
@rna_ShapeKey_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKey_relative_key, ptr @rna_ShapeKey_interpolation, i32 -1, ptr @.str.44, i32 262145, ptr @.str.45, ptr @.str.46, i32 0, ptr @.str.5, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKey_vertex_group_get, ptr @ShapeKey_vertex_group_length, ptr @ShapeKey_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.4 }, align 8
@.str.41 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Interpolation\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"Interpolation type for absolute shape keys\00", align 1
@rna_ShapeKey_interpolation_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.4 }, %struct.EnumPropertyItem { i32 1, ptr @.str.83, i32 0, ptr @.str.84, ptr @.str.4 }, %struct.EnumPropertyItem { i32 3, ptr @.str.85, i32 0, ptr @.str.86, ptr @.str.4 }, %struct.EnumPropertyItem { i32 2, ptr @.str.87, i32 0, ptr @.str.88, ptr @.str.4 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ShapeKey_relative_key = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKey_mute, ptr @rna_ShapeKey_vertex_group, i32 -1, ptr @.str.47, i32 8650753, ptr @.str.48, ptr @.str.49, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKey_relative_key_get, ptr @ShapeKey_relative_key_set, ptr null, ptr null, ptr @RNA_ShapeKey }, align 8
@.str.44 = private unnamed_addr constant [13 x i8] c"vertex_group\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Vertex Group\00", align 1
@.str.46 = private unnamed_addr constant [47 x i8] c"Vertex weight group, to blend with basis shape\00", align 1
@rna_ShapeKey_mute = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKey_slider_min, ptr @rna_ShapeKey_relative_key, i32 -1, ptr @.str.50, i32 4099, ptr @.str.51, ptr @.str.52, i32 253, ptr @.str.5, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKey_mute_get, ptr @ShapeKey_mute_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.47 = private unnamed_addr constant [13 x i8] c"relative_key\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"Relative Key\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"Shape used as a relative key\00", align 1
@rna_ShapeKey_slider_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKey_slider_max, ptr @rna_ShapeKey_mute, i32 -1, ptr @.str.53, i32 3, ptr @.str.54, ptr @.str.55, i32 0, ptr @.str.5, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKey_slider_min_get, ptr @ShapeKey_slider_min_set, ptr null, ptr null, ptr @rna_ShapeKey_slider_min_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+01, float 1.000000e+01, float -1.000000e+01, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.50 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"Mute\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Mute this shape key\00", align 1
@rna_ShapeKey_slider_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKey_data, ptr @rna_ShapeKey_slider_min, i32 -1, ptr @.str.56, i32 3, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.5, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKey_slider_max_get, ptr @ShapeKey_slider_max_set, ptr null, ptr null, ptr @rna_ShapeKey_slider_max_range, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+01, float 1.000000e+01, float -1.000000e+01, float 1.000000e+01, float 1.000000e+01, i32 3, float 1.000000e+00, ptr null }, align 8
@.str.53 = private unnamed_addr constant [11 x i8] c"slider_min\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"Slider Min\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"Minimum for slider\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"slider_max\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"Slider Max\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"Maximum for slider\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@RNA_UnknownType = external global %struct.StructRNA, align 8
@RNA_ShapeKeyPoint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ShapeKeyCurvePoint, ptr @RNA_ShapeKey, ptr null, %struct.ListBase { ptr @rna_ShapeKeyPoint_rna_properties, ptr @rna_ShapeKeyPoint_co } }, ptr @.str.66, ptr null, ptr null, i32 4, ptr @.str.67, ptr @.str.68, ptr @.str.5, i32 17, ptr null, ptr @rna_ShapeKeyPoint_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ShapeKeyPoint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.61 = private unnamed_addr constant [9 x i8] c"ShapeKey\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"Shape Key\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"Shape key in a shape keys datablock\00", align 1
@rna_ShapeKeyPoint_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKeyPoint_co, ptr @rna_ShapeKeyPoint_rna_properties, i32 -1, ptr @.str.29, i32 8912896, ptr @.str.30, ptr @.str.31, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKeyPoint_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ShapeKeyPoint_co = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ShapeKeyPoint_rna_type, i32 -1, ptr @.str.64, i32 3, ptr @.str.65, ptr @.str.4, i32 0, ptr @.str.5, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @ShapeKeyPoint_co_get, ptr @ShapeKeyPoint_co_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_ShapeKeyPoint_co_default }, align 8
@.str.64 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@rna_ShapeKeyPoint_co_default = internal global [3 x float] zeroinitializer, align 4
@RNA_ShapeKeyCurvePoint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ShapeKeyBezierPoint, ptr @RNA_ShapeKeyPoint, ptr null, %struct.ListBase { ptr @rna_ShapeKeyCurvePoint_rna_properties, ptr @rna_ShapeKeyCurvePoint_tilt } }, ptr @.str.71, ptr null, ptr null, i32 4, ptr @.str.72, ptr @.str.73, ptr @.str.5, i32 17, ptr null, ptr @rna_ShapeKeyCurvePoint_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ShapeKeyPoint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.66 = private unnamed_addr constant [14 x i8] c"ShapeKeyPoint\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"Shape Key Point\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"Point in a shape key\00", align 1
@rna_ShapeKeyCurvePoint_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKeyCurvePoint_co, ptr @rna_ShapeKeyCurvePoint_rna_properties, i32 -1, ptr @.str.29, i32 8912896, ptr @.str.30, ptr @.str.31, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKeyCurvePoint_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ShapeKeyCurvePoint_co = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKeyCurvePoint_tilt, ptr @rna_ShapeKeyCurvePoint_rna_type, i32 -1, ptr @.str.64, i32 3, ptr @.str.65, ptr @.str.4, i32 0, ptr @.str.5, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @ShapeKeyCurvePoint_co_get, ptr @ShapeKeyCurvePoint_co_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_ShapeKeyCurvePoint_co_default }, align 8
@rna_ShapeKeyCurvePoint_tilt = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ShapeKeyCurvePoint_co, i32 -1, ptr @.str.69, i32 3, ptr @.str.70, ptr @.str.4, i32 0, ptr @.str.5, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKeyCurvePoint_tilt_get, ptr @ShapeKeyCurvePoint_tilt_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_ShapeKeyCurvePoint_co_default = internal global [3 x float] zeroinitializer, align 4
@.str.69 = private unnamed_addr constant [5 x i8] c"tilt\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"Tilt\00", align 1
@RNA_ShapeKeyBezierPoint = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Lamp, ptr @RNA_ShapeKeyCurvePoint, ptr null, %struct.ListBase { ptr @rna_ShapeKeyBezierPoint_rna_properties, ptr @rna_ShapeKeyBezierPoint_handle_right } }, ptr @.str.78, ptr null, ptr null, i32 4, ptr @.str.79, ptr @.str.80, ptr @.str.5, i32 17, ptr null, ptr @rna_ShapeKeyBezierPoint_rna_properties, ptr null, ptr null, ptr null, ptr @rna_ShapeKeyPoint_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.71 = private unnamed_addr constant [19 x i8] c"ShapeKeyCurvePoint\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"Shape Key Curve Point\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"Point in a shape key for curves\00", align 1
@rna_ShapeKeyBezierPoint_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKeyBezierPoint_co, ptr @rna_ShapeKeyBezierPoint_rna_properties, i32 -1, ptr @.str.29, i32 8912896, ptr @.str.30, ptr @.str.31, i32 0, ptr @.str.5, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShapeKeyBezierPoint_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ShapeKeyBezierPoint_co = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKeyBezierPoint_handle_left, ptr @rna_ShapeKeyBezierPoint_rna_type, i32 -1, ptr @.str.64, i32 3, ptr @.str.65, ptr @.str.4, i32 0, ptr @.str.5, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @ShapeKeyBezierPoint_co_get, ptr @ShapeKeyBezierPoint_co_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_ShapeKeyBezierPoint_co_default }, align 8
@rna_ShapeKeyBezierPoint_handle_left = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ShapeKeyBezierPoint_handle_right, ptr @rna_ShapeKeyBezierPoint_co, i32 -1, ptr @.str.74, i32 3, ptr @.str.75, ptr @.str.4, i32 0, ptr @.str.5, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @ShapeKeyBezierPoint_handle_left_get, ptr @ShapeKeyBezierPoint_handle_left_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_ShapeKeyBezierPoint_handle_left_default }, align 8
@rna_ShapeKeyBezierPoint_co_default = internal global [3 x float] zeroinitializer, align 4
@rna_ShapeKeyBezierPoint_handle_right = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ShapeKeyBezierPoint_handle_left, i32 -1, ptr @.str.76, i32 3, ptr @.str.77, ptr @.str.4, i32 0, ptr @.str.5, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Key_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @ShapeKeyBezierPoint_handle_right_get, ptr @ShapeKeyBezierPoint_handle_right_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_ShapeKeyBezierPoint_handle_right_default }, align 8
@.str.74 = private unnamed_addr constant [12 x i8] c"handle_left\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"Handle 1 Location\00", align 1
@rna_ShapeKeyBezierPoint_handle_left_default = internal global [3 x float] zeroinitializer, align 4
@.str.76 = private unnamed_addr constant [13 x i8] c"handle_right\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"Handle 2 Location\00", align 1
@rna_ShapeKeyBezierPoint_handle_right_default = internal global [3 x float] zeroinitializer, align 4
@RNA_Lamp = external global %struct.StructRNA, align 8
@.str.78 = private unnamed_addr constant [20 x i8] c"ShapeKeyBezierPoint\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"Shape Key Bezier Point\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"Point in a shape key for Bezier curves\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"KEY_LINEAR\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"KEY_CARDINAL\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"Cardinal\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"KEY_CATMULL_ROM\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"Catmull-Rom\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"KEY_BSPLINE\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"BSpline\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"shape_keys.key_blocks[\22%s\22]\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"key_blocks[\22%s\22]\00", align 1
@.str.91 = private unnamed_addr constant [26 x i8] c"key_blocks[\22%s\22].data[%d]\00", align 1
@.str.92 = private unnamed_addr constant [37 x i8] c"shape_keys.key_blocks[\22%s\22].data[%d]\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_object_shapekey_index_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_ShapeKey_find_key(ptr noundef %1) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 10
  %8 = load i16, ptr %7, align 2, !tbaa !34
  %9 = sext i16 %8 to i32
  %10 = icmp sgt i32 %9, %2
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6
  %13 = tail call ptr @BLI_findlink(ptr noundef nonnull %12, i32 noundef %2) #16
  br label %14

14:                                               ; preds = %11, %6, %3
  %15 = phi ptr [ %13, %11 ], [ null, %6 ], [ null, %3 ]
  tail call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %15, ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_ShapeKey_find_key(ptr noundef %0) unnamed_addr #0 !PGOFuncName !44 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !45
  switch i16 %3, label %15 [
    i16 21827, label %4
    i16 17739, label %16
    i16 21580, label %7
    i16 17741, label %10
    i16 16975, label %13
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  br label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  br label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  br label %16

13:                                               ; preds = %1
  %14 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %0) #16
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %1, %15, %13, %10, %7, %4
  %17 = phi ptr [ null, %15 ], [ %14, %13 ], [ %12, %10 ], [ %9, %7 ], [ %6, %4 ], [ %0, %1 ]
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rna_object_shapekey_index_set(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_ShapeKey_find_key(ptr noundef %0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 6
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = tail call i32 @BLI_findindex(ptr noundef nonnull %7, ptr noundef %9) #16
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %3
  br label %13

13:                                               ; preds = %6, %12
  %14 = phi i32 [ %2, %12 ], [ %10, %6 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Key_reference_key_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %6) #16
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Key_key_blocks_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !58
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Key_key_blocks, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.Key, ptr %5, i64 0, i32 6
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #16
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !62
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @Key_key_blocks_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Key_key_blocks_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !63 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #16
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Key_key_blocks_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @Key_key_blocks_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Key_key_blocks_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Key_key_blocks_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @Key_key_blocks_begin(ptr noundef nonnull %4, ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !64
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
  br i1 %25, label %19, label %26, !llvm.loop !66

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
  %37 = load ptr, ptr %33, align 8, !tbaa !68
  store ptr %37, ptr %10, align 8, !tbaa !70
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !71

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
  call void @Key_key_blocks_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @Key_key_blocks_end(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Key_key_blocks_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #17
  call void @Key_key_blocks_begin(ptr noundef nonnull %4, ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !62
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !72
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @ShapeKey_name_length(ptr noundef nonnull %10) #15
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @ShapeKey_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #15
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str) #16
  call void @ShapeKey_name_get(ptr noundef nonnull %10, ptr noundef %25) #15
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #18
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %28(ptr noundef %25) #16
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @Key_key_blocks_next(ptr noundef nonnull %4) #15
  %30 = load i32, ptr %6, align 8, !tbaa !62
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !73

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @Key_key_blocks_end(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShapeKey_name_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 11
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #18
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKey_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Key_animation_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimData, ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Key_user_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ID, ptr noundef %6) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Key_use_relative_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !76
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Key_use_relative_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !76
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Key_eval_time_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 8, !tbaa !77
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Key_eval_time_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 3.000000e+05
  %7 = select i1 %6, float 3.000000e+05, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Key_slurph_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 4, !tbaa !78
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Key_slurph_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 500)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -500)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 11
  store i16 %7, ptr %8, align 4, !tbaa !78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKey_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !58
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ShapeKey_rna_properties, ptr %4, align 8, !tbaa !60
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @ShapeKey_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ShapeKey_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !79 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKey_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @ShapeKey_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKey_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ShapeKey_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKey_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKey_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_ShapeKey_name_set(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ShapeKey_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !80 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %5, i64 0, i32 11
  %7 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %6, i64 noundef 64) #16
  %8 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #16
  %9 = load ptr, ptr %0, align 8, !tbaa !81
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = call fastcc ptr @rna_ShapeKey_find_key(ptr noundef nonnull %9) #15
  %13 = getelementptr inbounds %struct.Key, ptr %12, i64 0, i32 6
  call void @BLI_uniquename(ptr noundef nonnull %13, ptr noundef %5, ptr noundef nonnull @.str.24, i8 noundef zeroext 46, i32 noundef 48, i32 noundef 64) #16
  br label %14

14:                                               ; preds = %11, %2
  call void @BKE_all_animdata_fix_paths_rename(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShapeKey_frame_get(ptr nocapture noundef readonly %0) #7 {
  %2 = tail call fastcc float @rna_ShapeKey_frame_get(ptr noundef %0) #15
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @rna_ShapeKey_frame_get(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !82 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !83
  %6 = fmul float %5, 1.000000e+02
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShapeKey_value_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !85
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKey_value_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_ShapeKey_value_set(ptr noundef %0, float noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ShapeKey_value_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !86 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 13
  %6 = load float, ptr %5, align 8, !tbaa !87
  %7 = fcmp ogt float %6, %1
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 14
  %10 = load float, ptr %9, align 4, !tbaa !88
  %11 = fcmp olt float %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %2, %8, %12
  %14 = phi float [ %10, %12 ], [ %1, %8 ], [ %6, %2 ]
  %15 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 3
  store float %14, ptr %15, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShapeKey_interpolation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !89
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKey_interpolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 4
  store i16 %5, ptr %6, align 8, !tbaa !89
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKey_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 12
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShapeKey_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 12
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #18
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKey_vertex_group_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 12
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKey_relative_key_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @rna_ShapeKey_relative_key_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ShapeKey_relative_key_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !90 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load ptr, ptr %1, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !91
  %8 = sext i16 %7 to i32
  tail call void @rna_object_shapekey_index_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %5, i32 noundef %8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKey_relative_key_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_ShapeKey_relative_key_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ShapeKey_relative_key_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !92 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load ptr, ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !91
  %8 = sext i16 %7 to i32
  %9 = tail call i32 @rna_object_shapekey_index_set(ptr noundef %5, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1, i32 noundef %8) #15
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %6, align 4, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShapeKey_mute_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !93
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKey_mute_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !93
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShapeKey_slider_min_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 8, !tbaa !87
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKey_slider_min_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_ShapeKey_slider_min_set(ptr noundef %0, float noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ShapeKey_slider_min_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !94 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @rna_ShapeKey_slider_min_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull poison, ptr nonnull poison) #15
  %7 = load float, ptr %3, align 4, !tbaa !95
  %8 = fcmp ogt float %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load float, ptr %4, align 4, !tbaa !95
  %11 = fcmp olt float %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %2, %9, %12
  %14 = phi float [ %10, %12 ], [ %1, %9 ], [ %7, %2 ]
  %15 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 13
  store float %14, ptr %15, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShapeKey_slider_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 4, !tbaa !88
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKey_slider_max_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  tail call fastcc void @rna_ShapeKey_slider_max_set(ptr noundef %0, float noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ShapeKey_slider_max_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #8 !PGOFuncName !96 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @rna_ShapeKey_slider_max_range(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nonnull poison, ptr nonnull poison) #15
  %7 = load float, ptr %3, align 4, !tbaa !95
  %8 = fcmp ogt float %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load float, ptr %4, align 4, !tbaa !95
  %11 = fcmp olt float %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %2, %9, %12
  %14 = phi float [ %10, %12 ], [ %1, %9 ], [ %7, %2 ]
  %15 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 14
  store float %14, ptr %15, align 4, !tbaa !88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ShapeKey_data_length(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_ShapeKey_data_length(ptr noundef %0) #15
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_ShapeKey_data_length(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !97 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = tail call fastcc ptr @rna_ShapeKey_find_key(ptr noundef %2) #15
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !45
  %12 = icmp eq i16 %11, 21827
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.Nurb, ptr %15, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = sdiv i32 %7, 3
  br label %21

21:                                               ; preds = %13, %19, %1
  %22 = phi i32 [ %20, %19 ], [ %7, %13 ], [ %7, %1 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKey_data_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !58
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ShapeKey_data, ptr %4, align 8, !tbaa !60
  tail call fastcc void @rna_ShapeKey_data_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @ShapeKey_data_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ShapeKey_data_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !102 {
  %3 = load ptr, ptr %1, align 8, !tbaa !81
  %4 = tail call fastcc ptr @rna_ShapeKey_find_key(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !103
  %11 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !45
  %15 = icmp eq i16 %14, 21827
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  %19 = getelementptr inbounds %struct.Nurb, ptr %18, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !100
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = sdiv i32 %8, 3
  %24 = mul nsw i32 %10, 3
  br label %25

25:                                               ; preds = %16, %22, %2
  %26 = phi i32 [ %23, %22 ], [ %8, %16 ], [ %8, %2 ]
  %27 = phi i32 [ %24, %22 ], [ %10, %16 ], [ %10, %2 ]
  %28 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !104
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %29, i32 noundef %27, i32 noundef %26, i8 noundef zeroext 0, ptr noundef null) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ShapeKey_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !105 {
  tail call fastcc void @rna_ShapeKey_data_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKey_data_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @ShapeKey_data_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKey_data_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ShapeKey_data_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @ShapeKey_data_begin(ptr noundef nonnull %4, ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = icmp sgt i32 %1, -1
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, %1
  %15 = select i1 %11, i1 %14, i1 false
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.ShapeKey_data_lookup_int, i32 noundef %1) #15
  br label %42

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %22, %24
  %25 = phi i32 [ %26, %24 ], [ %1, %22 ]
  %26 = add nsw i32 %25, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %4) #16
  %27 = icmp ne i32 %26, 0
  %28 = load i32, ptr %6, align 8
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %24, label %38, !llvm.loop !108

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !109
  %34 = mul nsw i32 %33, %1
  %35 = load ptr, ptr %10, align 8, !tbaa !110
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  store ptr %37, ptr %10, align 8, !tbaa !110
  br label %41

38:                                               ; preds = %24
  %39 = icmp eq i32 %26, 0
  %40 = select i1 %39, i1 %29, i1 false
  br i1 %40, label %41, label %42

41:                                               ; preds = %22, %31, %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @ShapeKey_data_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %42

42:                                               ; preds = %16, %38, %41, %3
  %43 = phi i32 [ 0, %3 ], [ 1, %41 ], [ 0, %38 ], [ 0, %16 ]
  call void @ShapeKey_data_end(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %43
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKeyPoint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !58
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ShapeKeyPoint_rna_properties, ptr %4, align 8, !tbaa !60
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @ShapeKeyPoint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ShapeKeyPoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !111 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKeyPoint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @ShapeKeyPoint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKeyPoint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ShapeKeyPoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKeyPoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyPoint_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  tail call fastcc void @rna_ShapeKeyPoint_co_get(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ShapeKeyPoint_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 !PGOFuncName !112 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load float, ptr %4, align 4, !tbaa !95
  store float %5, ptr %1, align 4, !tbaa !95
  %6 = getelementptr inbounds float, ptr %4, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !95
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float %7, ptr %8, align 4, !tbaa !95
  %9 = getelementptr inbounds float, ptr %4, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !95
  %11 = getelementptr inbounds float, ptr %1, i64 2
  store float %10, ptr %11, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyPoint_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  tail call fastcc void @rna_ShapeKeyPoint_co_set(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ShapeKeyPoint_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !113 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load float, ptr %1, align 4, !tbaa !95
  store float %5, ptr %4, align 4, !tbaa !95
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !95
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float %7, ptr %8, align 4, !tbaa !95
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !95
  %11 = getelementptr inbounds float, ptr %4, i64 2
  store float %10, ptr %11, align 4, !tbaa !95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKeyCurvePoint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !58
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ShapeKeyCurvePoint_rna_properties, ptr %4, align 8, !tbaa !60
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @ShapeKeyCurvePoint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ShapeKeyCurvePoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !114 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKeyCurvePoint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @ShapeKeyCurvePoint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKeyCurvePoint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ShapeKeyCurvePoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKeyCurvePoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyCurvePoint_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  tail call fastcc void @rna_ShapeKeyPoint_co_get(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyCurvePoint_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  tail call fastcc void @rna_ShapeKeyPoint_co_set(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShapeKeyCurvePoint_tilt_get(ptr nocapture noundef readonly %0) #7 {
  %2 = tail call fastcc float @rna_ShapeKeyCurvePoint_tilt_get(ptr noundef %0) #15
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @rna_ShapeKeyCurvePoint_tilt_get(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = getelementptr inbounds float, ptr %3, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !95
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyCurvePoint_tilt_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  tail call fastcc void @rna_ShapeKeyCurvePoint_tilt_set(ptr noundef %0, float noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ShapeKeyCurvePoint_tilt_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #9 !PGOFuncName !116 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds float, ptr %4, i64 3
  store float %1, ptr %5, align 4, !tbaa !95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKeyBezierPoint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !58
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ShapeKeyBezierPoint_rna_properties, ptr %4, align 8, !tbaa !60
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @ShapeKeyBezierPoint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ShapeKeyBezierPoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !117 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKeyBezierPoint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @ShapeKeyBezierPoint_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKeyBezierPoint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ShapeKeyBezierPoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ShapeKeyBezierPoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyBezierPoint_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  tail call fastcc void @rna_ShapeKeyBezierPoint_co_get(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ShapeKeyBezierPoint_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 !PGOFuncName !118 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds float, ptr %4, i64 3
  %6 = load float, ptr %5, align 4, !tbaa !95
  store float %6, ptr %1, align 4, !tbaa !95
  %7 = getelementptr inbounds float, ptr %4, i64 4
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !95
  %10 = getelementptr inbounds float, ptr %4, i64 5
  %11 = load float, ptr %10, align 4, !tbaa !95
  %12 = getelementptr inbounds float, ptr %1, i64 2
  store float %11, ptr %12, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyBezierPoint_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  tail call fastcc void @rna_ShapeKeyBezierPoint_co_set(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ShapeKeyBezierPoint_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !119 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load float, ptr %1, align 4, !tbaa !95
  %6 = getelementptr inbounds float, ptr %4, i64 3
  store float %5, ptr %6, align 4, !tbaa !95
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = getelementptr inbounds float, ptr %4, i64 4
  store float %8, ptr %9, align 4, !tbaa !95
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !95
  %12 = getelementptr inbounds float, ptr %4, i64 5
  store float %11, ptr %12, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyBezierPoint_handle_left_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  tail call fastcc void @rna_ShapeKeyBezierPoint_handle_1_co_get(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ShapeKeyBezierPoint_handle_1_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 !PGOFuncName !120 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load float, ptr %4, align 4, !tbaa !95
  store float %5, ptr %1, align 4, !tbaa !95
  %6 = getelementptr inbounds float, ptr %4, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !95
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float %7, ptr %8, align 4, !tbaa !95
  %9 = getelementptr inbounds float, ptr %4, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !95
  %11 = getelementptr inbounds float, ptr %1, i64 2
  store float %10, ptr %11, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyBezierPoint_handle_left_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  tail call fastcc void @rna_ShapeKeyBezierPoint_handle_1_co_set(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ShapeKeyBezierPoint_handle_1_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !121 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load float, ptr %1, align 4, !tbaa !95
  store float %5, ptr %4, align 4, !tbaa !95
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !95
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float %7, ptr %8, align 4, !tbaa !95
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !95
  %11 = getelementptr inbounds float, ptr %4, i64 2
  store float %10, ptr %11, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyBezierPoint_handle_right_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  tail call fastcc void @rna_ShapeKeyBezierPoint_handle_2_co_get(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ShapeKeyBezierPoint_handle_2_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #11 !PGOFuncName !122 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds float, ptr %4, i64 6
  %6 = load float, ptr %5, align 4, !tbaa !95
  store float %6, ptr %1, align 4, !tbaa !95
  %7 = getelementptr inbounds float, ptr %4, i64 7
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !95
  %10 = getelementptr inbounds float, ptr %4, i64 8
  %11 = load float, ptr %10, align 4, !tbaa !95
  %12 = getelementptr inbounds float, ptr %1, i64 2
  store float %11, ptr %12, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyBezierPoint_handle_right_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  tail call fastcc void @rna_ShapeKeyBezierPoint_handle_2_co_set(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_ShapeKeyBezierPoint_handle_2_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !123 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load float, ptr %1, align 4, !tbaa !95
  %6 = getelementptr inbounds float, ptr %4, i64 6
  store float %5, ptr %6, align 4, !tbaa !95
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = getelementptr inbounds float, ptr %4, i64 7
  store float %8, ptr %9, align 4, !tbaa !95
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !95
  %12 = getelementptr inbounds float, ptr %4, i64 8
  store float %11, ptr %12, align 4, !tbaa !95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Key_update_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !124 {
  %4 = load ptr, ptr %2, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3, %13
  %9 = phi ptr [ %14, %13 ], [ %6, %3 ]
  %10 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %9) #16
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @DAG_id_tag_update(ptr noundef nonnull %9, i16 noundef signext 2) #16
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef nonnull %9) #16
  br label %13

13:                                               ; preds = %8, %12
  %14 = load ptr, ptr %9, align 8, !tbaa !59
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !125

16:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: optsize
declare ptr @rna_ID_refine(ptr noundef) #2

; Function Attrs: optsize
declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_ShapeKey_value_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #11 !PGOFuncName !126 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %7, i64 0, i32 13
  %9 = load float, ptr %8, align 8, !tbaa !87
  store float %9, ptr %1, align 4, !tbaa !95
  %10 = getelementptr inbounds %struct.KeyBlock, ptr %7, i64 0, i32 14
  %11 = load float, ptr %10, align 4, !tbaa !88
  store float %11, ptr %2, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_ShapeKey_slider_min_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #11 !PGOFuncName !127 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  store float -1.000000e+01, ptr %1, align 4, !tbaa !95
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %7, i64 0, i32 14
  %9 = load float, ptr %8, align 4, !tbaa !88
  %10 = fadd float %9, 0xBF50624DE0000000
  store float %10, ptr %2, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_ShapeKey_slider_max_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #11 !PGOFuncName !128 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %7, i64 0, i32 13
  %9 = load float, ptr %8, align 8, !tbaa !87
  %10 = fadd float %9, 0x3F50624DE0000000
  store float %10, ptr %1, align 4, !tbaa !95
  store float 1.000000e+01, ptr %2, align 4, !tbaa !95
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ShapeKey_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !129 {
  %2 = alloca [128 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load ptr, ptr %0, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #17
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 11
  %7 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %6, i64 noundef 128) #16
  %8 = icmp eq ptr %5, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !45
  %12 = icmp eq i16 %11, 17739
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  br label %14

14:                                               ; preds = %9, %13
  %15 = phi ptr [ @.str.90, %13 ], [ @.str.89, %9 ]
  %16 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull %15, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #17
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_ShapeKeyPoint_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !130 {
  %2 = alloca [128 x i8], align 16
  %3 = load ptr, ptr %0, align 8, !tbaa !81
  %4 = tail call fastcc ptr @rna_ShapeKey_find_key(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = tail call fastcc ptr @rna_ShapeKeyData_find_keyblock(ptr noundef %4, ptr noundef %6) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #17
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = icmp eq ptr %11, @RNA_ShapeKeyBezierPoint
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @rna_ShapeKeyBezierPoint_get_index(ptr noundef nonnull %7, ptr noundef %6) #15, !range !132
  br label %17

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @rna_ShapeKeyPoint_get_index(ptr noundef %4, ptr noundef nonnull %7, ptr noundef %6) #15
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.KeyBlock, ptr %7, i64 0, i32 11
  %20 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %19, i64 noundef 128) #16
  %21 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %22 = load i16, ptr %21, align 8, !tbaa !45
  %23 = icmp eq i16 %22, 17739
  %24 = select i1 %23, ptr @.str.91, ptr @.str.92
  %25 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull %24, ptr noundef nonnull %2, i32 noundef %18) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #17
  br label %26

26:                                               ; preds = %1, %17
  %27 = phi ptr [ %25, %17 ], [ null, %1 ]
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_all_animdata_fix_paths_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ShapeKey_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !133 {
  %3 = load ptr, ptr %1, align 8, !tbaa !134
  %4 = tail call fastcc ptr @rna_ShapeKey_find_key(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !45
  %9 = icmp eq i16 %8, 21827
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.Nurb, ptr %12, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @RNA_ShapeKeyCurvePoint, ptr @RNA_ShapeKeyBezierPoint
  br label %17

17:                                               ; preds = %2, %10
  %18 = phi ptr [ %16, %10 ], [ @RNA_ShapeKeyPoint, %2 ]
  %19 = tail call ptr @rna_iterator_array_get(ptr noundef nonnull %1) #16
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %18, ptr noundef %19) #16
  ret void
}

; Function Attrs: optsize
declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @rna_ShapeKeyData_find_keyblock(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #12 !PGOFuncName !135 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 6
  %8 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %7, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %6, %28
  %12 = phi ptr [ %29, %28 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.KeyBlock, ptr %12, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !104
  %15 = icmp eq ptr %14, null
  %16 = icmp ugt ptr %14, %1
  %17 = or i1 %15, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %11
  %19 = icmp eq ptr %14, %1
  br i1 %19, label %31, label %20

20:                                               ; preds = %18
  %21 = load i32, ptr %8, align 8, !tbaa !103
  %22 = getelementptr inbounds %struct.KeyBlock, ptr %12, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !98
  %24 = mul nsw i32 %23, %21
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %14, i64 %25
  %27 = icmp ugt ptr %26, %1
  br i1 %27, label %31, label %28

28:                                               ; preds = %20, %11
  %29 = load ptr, ptr %12, align 8, !tbaa !59
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %11, !llvm.loop !136

31:                                               ; preds = %28, %18, %20, %6, %2
  %32 = phi ptr [ null, %2 ], [ null, %6 ], [ null, %28 ], [ %12, %18 ], [ %12, %20 ]
  ret ptr %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rna_ShapeKeyBezierPoint_get_index(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #13 !PGOFuncName !137 {
  %3 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = lshr exact i64 %7, 2
  %9 = trunc i64 %8 to i32
  %10 = sdiv i32 %9, 12
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rna_ShapeKeyPoint_get_index(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #13 !PGOFuncName !138 {
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = ptrtoint ptr %2 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !103
  %12 = sdiv i32 %9, %11
  ret i32 %12
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }
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
!34 = !{!35, !40, i64 210}
!35 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !42, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !43, i64 216, !41, i64 220}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"float", !38, i64 0}
!44 = !{!"rna_key_gen.c:rna_ShapeKey_find_key"}
!45 = !{!40, !40, i64 0}
!46 = !{!47, !37, i64 192}
!47 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !43, i64 252, !43, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !43, i64 340, !43, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !48, i64 504, !43, i64 512, !43, i64 516, !43, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!48 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!49 = !{!50, !37, i64 192}
!50 = !{!"Lattice", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !38, i64 144, !38, i64 145, !38, i64 146, !38, i64 147, !41, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !37, i64 272}
!51 = !{!52, !37, i64 144}
!52 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !53, i64 280, !53, i64 480, !53, i64 680, !53, i64 880, !53, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !43, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!53 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!54 = !{!55, !37, i64 16}
!55 = !{!"PointerRNA", !56, i64 0, !37, i64 8, !37, i64 16}
!56 = !{!"", !37, i64 0}
!57 = !{!35, !37, i64 128}
!58 = !{i64 0, i64 8, !59, i64 8, i64 8, !59, i64 16, i64 8, !59}
!59 = !{!37, !37, i64 0}
!60 = !{!61, !37, i64 48}
!61 = !{!"CollectionPropertyIterator", !55, i64 0, !55, i64 24, !37, i64 48, !38, i64 56, !41, i64 96, !41, i64 100, !55, i64 104, !41, i64 128}
!62 = !{!61, !41, i64 128}
!63 = !{!"rna_key_gen.c:Key_key_blocks_get"}
!64 = !{!65, !37, i64 16}
!65 = !{!"ListBaseIterator", !37, i64 0, !41, i64 8, !37, i64 16}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!69, !37, i64 0}
!69 = !{!"Link", !37, i64 0, !37, i64 8}
!70 = !{!65, !37, i64 0}
!71 = distinct !{!71, !67}
!72 = !{!61, !37, i64 120}
!73 = distinct !{!73, !67}
!74 = !{!35, !37, i64 120}
!75 = !{!35, !37, i64 200}
!76 = !{!35, !40, i64 208}
!77 = !{!35, !43, i64 216}
!78 = !{!35, !40, i64 212}
!79 = !{!"rna_key_gen.c:ShapeKey_rna_properties_get"}
!80 = !{!"rna_key_gen.c:rna_ShapeKey_name_set"}
!81 = !{!55, !37, i64 0}
!82 = !{!"rna_key_gen.c:rna_ShapeKey_frame_get"}
!83 = !{!84, !43, i64 16}
!84 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !43, i64 16, !43, i64 20, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !43, i64 176, !43, i64 180}
!85 = !{!84, !43, i64 20}
!86 = !{!"rna_key_gen.c:rna_ShapeKey_value_set"}
!87 = !{!84, !43, i64 176}
!88 = !{!84, !43, i64 180}
!89 = !{!84, !40, i64 24}
!90 = !{!"rna_key_gen.c:rna_ShapeKey_relative_key_get"}
!91 = !{!84, !40, i64 28}
!92 = !{!"rna_key_gen.c:rna_ShapeKey_relative_key_set"}
!93 = !{!84, !40, i64 30}
!94 = !{!"rna_key_gen.c:rna_ShapeKey_slider_min_set"}
!95 = !{!43, !43, i64 0}
!96 = !{!"rna_key_gen.c:rna_ShapeKey_slider_max_set"}
!97 = !{!"rna_key_gen.c:rna_ShapeKey_data_length"}
!98 = !{!84, !41, i64 32}
!99 = !{!47, !37, i64 136}
!100 = !{!101, !37, i64 72}
!101 = !{!"Nurb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !38, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!102 = !{!"rna_key_gen.c:rna_ShapeKey_data_begin"}
!103 = !{!35, !41, i64 168}
!104 = !{!84, !37, i64 40}
!105 = !{!"rna_key_gen.c:ShapeKey_data_get"}
!106 = !{!107, !37, i64 32}
!107 = !{!"ArrayIterator", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !41, i64 28, !37, i64 32}
!108 = distinct !{!108, !67}
!109 = !{!107, !41, i64 24}
!110 = !{!107, !37, i64 0}
!111 = !{!"rna_key_gen.c:ShapeKeyPoint_rna_properties_get"}
!112 = !{!"rna_key_gen.c:rna_ShapeKeyPoint_co_get"}
!113 = !{!"rna_key_gen.c:rna_ShapeKeyPoint_co_set"}
!114 = !{!"rna_key_gen.c:ShapeKeyCurvePoint_rna_properties_get"}
!115 = !{!"rna_key_gen.c:rna_ShapeKeyCurvePoint_tilt_get"}
!116 = !{!"rna_key_gen.c:rna_ShapeKeyCurvePoint_tilt_set"}
!117 = !{!"rna_key_gen.c:ShapeKeyBezierPoint_rna_properties_get"}
!118 = !{!"rna_key_gen.c:rna_ShapeKeyBezierPoint_co_get"}
!119 = !{!"rna_key_gen.c:rna_ShapeKeyBezierPoint_co_set"}
!120 = !{!"rna_key_gen.c:rna_ShapeKeyBezierPoint_handle_1_co_get"}
!121 = !{!"rna_key_gen.c:rna_ShapeKeyBezierPoint_handle_1_co_set"}
!122 = !{!"rna_key_gen.c:rna_ShapeKeyBezierPoint_handle_2_co_get"}
!123 = !{!"rna_key_gen.c:rna_ShapeKeyBezierPoint_handle_2_co_set"}
!124 = !{!"rna_key_gen.c:rna_Key_update_data"}
!125 = distinct !{!125, !67}
!126 = !{!"rna_key_gen.c:rna_ShapeKey_value_range"}
!127 = !{!"rna_key_gen.c:rna_ShapeKey_slider_min_range"}
!128 = !{!"rna_key_gen.c:rna_ShapeKey_slider_max_range"}
!129 = !{!"rna_key_gen.c:rna_ShapeKey_path"}
!130 = !{!"rna_key_gen.c:rna_ShapeKeyPoint_path"}
!131 = !{!55, !37, i64 8}
!132 = !{i32 -178956970, i32 178956971}
!133 = !{!"rna_key_gen.c:rna_ShapeKey_data_get"}
!134 = !{!61, !37, i64 0}
!135 = !{!"rna_key_gen.c:rna_ShapeKeyData_find_keyblock"}
!136 = distinct !{!136, !67}
!137 = !{!"rna_key_gen.c:rna_ShapeKeyBezierPoint_get_index"}
!138 = !{!"rna_key_gen.c:rna_ShapeKeyPoint_get_index"}
