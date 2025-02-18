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
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
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

; Function Attrs: nounwind uwtable
define dso_local void @rna_object_shapekey_index_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !34
  switch i16 %5, label %17 [
    i16 21827, label %6
    i16 17739, label %18
    i16 21580, label %9
    i16 17741, label %12
    i16 16975, label %15
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  br label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Lattice, ptr %1, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  br label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  br label %18

15:                                               ; preds = %3
  %16 = tail call ptr @BKE_key_from_object(ptr noundef %1) #13
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %3, %6, %9, %12, %15, %17
  %19 = phi ptr [ null, %17 ], [ %16, %15 ], [ %14, %12 ], [ %11, %9 ], [ %8, %6 ], [ %1, %3 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Key, ptr %19, i64 0, i32 10
  %23 = load i16, ptr %22, align 2, !tbaa !51
  %24 = sext i16 %23 to i32
  %25 = icmp sgt i32 %24, %2
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.Key, ptr %19, i64 0, i32 6
  %28 = tail call ptr @BLI_findlink(ptr noundef nonnull %27, i32 noundef %2) #13
  br label %29

29:                                               ; preds = %26, %21, %18
  %30 = phi ptr [ %28, %26 ], [ null, %21 ], [ null, %18 ]
  tail call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %30, ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @rna_object_shapekey_index_set(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !34
  switch i16 %5, label %17 [
    i16 21827, label %6
    i16 17739, label %18
    i16 21580, label %9
    i16 17741, label %12
    i16 16975, label %15
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  br label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  br label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  br label %18

15:                                               ; preds = %3
  %16 = tail call ptr @BKE_key_from_object(ptr noundef %0) #13
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %3, %6, %9, %12, %15, %17
  %19 = phi ptr [ null, %17 ], [ %16, %15 ], [ %14, %12 ], [ %11, %9 ], [ %8, %6 ], [ %0, %3 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Key, ptr %19, i64 0, i32 6
  %23 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = tail call i32 @BLI_findindex(ptr noundef nonnull %22, ptr noundef %24) #13
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %18
  br label %28

28:                                               ; preds = %21, %27
  %29 = phi i32 [ %2, %27 ], [ %25, %21 ]
  ret i32 %29
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Key_reference_key_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %6) #13
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Key_key_blocks_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !57
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Key_key_blocks, ptr %6, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.Key, ptr %5, i64 0, i32 6
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #13
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !61
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %13 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #13, !noalias !62
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %13) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @Key_key_blocks_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #13
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Key_key_blocks_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %8 = tail call ptr @rna_iterator_listbase_get(ptr noundef %0) #13, !noalias !65
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %8) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Key_key_blocks_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Key_key_blocks_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #13
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !57
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_Key_key_blocks, ptr %10, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.Key, ptr %8, i64 0, i32 6
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #13
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !61
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %17 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #13, !noalias !68
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %17) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %18

18:                                               ; preds = %3, %15
  %19 = load i32, ptr %12, align 8, !tbaa !61
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !71
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
  %33 = load ptr, ptr %22, align 8, !tbaa !73
  br label %46

34:                                               ; preds = %27, %34
  %35 = phi i32 [ %36, %34 ], [ %1, %27 ]
  %36 = add nsw i32 %35, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #13
  %37 = icmp sgt i32 %35, 1
  %38 = load i32, ptr %12, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %34, label %41, !llvm.loop !74

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
  %52 = load ptr, ptr %48, align 8, !tbaa !77
  store ptr %52, ptr %22, align 8, !tbaa !73
  %53 = icmp sgt i32 %47, 1
  br i1 %53, label %46, label %54, !llvm.loop !79

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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %63 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %5) #13, !noalias !80
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %63) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %64

64:                                               ; preds = %60, %62, %18
  %65 = phi i1 [ false, %18 ], [ %61, %62 ], [ %61, %60 ]
  %66 = zext i1 %65 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #13
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Key_key_blocks_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !57
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_Key_key_blocks, ptr %11, align 8, !tbaa !59
  %12 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 6
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #13
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %18 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #13, !noalias !83
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %18) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %19

19:                                               ; preds = %3, %16
  %20 = load i32, ptr %13, align 8, !tbaa !61
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  br label %25

25:                                               ; preds = %22, %59
  %26 = phi i8 [ 0, %22 ], [ %54, %59 ]
  %27 = load ptr, ptr %24, align 8, !tbaa !53
  %28 = icmp eq ptr %27, null
  br i1 %28, label %53, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.KeyBlock, ptr %27, i64 0, i32 11
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #14
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, 1024
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %7, ptr noundef nonnull %30, i64 noundef 64) #13
  %36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %50

38:                                               ; preds = %29
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %40 = add i64 %31, 1
  %41 = and i64 %40, 4294967295
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str) #13
  %43 = load ptr, ptr %24, align 8, !tbaa !53
  %44 = getelementptr inbounds %struct.KeyBlock, ptr %43, i64 0, i32 11
  %45 = call ptr @BLI_strncpy_utf8(ptr noundef %42, ptr noundef nonnull %44, i64 noundef 64) #13
  %46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %1) #14
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %48(ptr noundef %42) #13
  br i1 %47, label %49, label %50

49:                                               ; preds = %38, %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false)
  br label %50

50:                                               ; preds = %49, %38, %34
  %51 = phi i8 [ %26, %34 ], [ %26, %38 ], [ 1, %49 ]
  %52 = phi i1 [ true, %34 ], [ true, %38 ], [ false, %49 ]
  br i1 %52, label %53, label %62

53:                                               ; preds = %50, %25
  %54 = phi i8 [ %51, %50 ], [ %26, %25 ]
  call void @rna_iterator_listbase_next(ptr noundef nonnull %6) #13
  %55 = load i32, ptr %13, align 8, !tbaa !61
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %58 = call ptr @rna_iterator_listbase_get(ptr noundef nonnull %6) #13, !noalias !86
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %58) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %59

59:                                               ; preds = %53, %57
  %60 = load i32, ptr %13, align 8, !tbaa !61
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %25, !llvm.loop !89

62:                                               ; preds = %50, %59
  %63 = phi i8 [ %54, %59 ], [ %51, %50 ]
  %64 = zext nneg i8 %63 to i32
  br label %65

65:                                               ; preds = %62, %19
  %66 = phi i32 [ 0, %19 ], [ %64, %62 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #13
  ret i32 %66
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShapeKey_name_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 11
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKey_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @Key_animation_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimData, ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Key_user_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ID, ptr noundef %6) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Key_use_relative_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !92
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Key_use_relative_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 8, !tbaa !92
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Key_eval_time_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 8, !tbaa !93
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Key_eval_time_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 3.000000e+05
  %7 = select i1 %6, float 3.000000e+05, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Key_slurph_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 4, !tbaa !94
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Key_slurph_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 500)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -500)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 11
  store i16 %7, ptr %8, align 4, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKey_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !57
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ShapeKey_rna_properties, ptr %4, align 8, !tbaa !59
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ShapeKey_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKey_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKey_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ShapeKey_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKey_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKey_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %5, i64 0, i32 11
  %7 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %6, i64 noundef 64) #13
  %8 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #13
  %9 = load ptr, ptr %0, align 8, !tbaa !95
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !34
  switch i16 %13, label %25 [
    i16 21827, label %14
    i16 17739, label %26
    i16 21580, label %17
    i16 17741, label %20
    i16 16975, label %23
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  br label %26

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Lattice, ptr %9, i64 0, i32 23
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  br label %26

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.Mesh, ptr %9, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  br label %26

23:                                               ; preds = %11
  %24 = call ptr @BKE_key_from_object(ptr noundef nonnull %9) #13
  br label %26

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %11, %14, %17, %20, %23, %25
  %27 = phi ptr [ null, %25 ], [ %24, %23 ], [ %22, %20 ], [ %19, %17 ], [ %16, %14 ], [ %9, %11 ]
  %28 = getelementptr inbounds %struct.Key, ptr %27, i64 0, i32 6
  call void @BLI_uniquename(ptr noundef nonnull %28, ptr noundef %5, ptr noundef nonnull @.str.24, i8 noundef zeroext 46, i32 noundef 48, i32 noundef 64) #13
  br label %29

29:                                               ; preds = %2, %26
  call void @BKE_all_animdata_fix_paths_rename(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShapeKey_frame_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !96
  %6 = fmul float %5, 1.000000e+02
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShapeKey_value_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKey_value_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 13
  %6 = load float, ptr %5, align 8, !tbaa !99
  %7 = fcmp ogt float %6, %1
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 14
  %10 = load float, ptr %9, align 4, !tbaa !100
  %11 = fcmp olt float %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %2, %8, %12
  %14 = phi float [ %10, %12 ], [ %1, %8 ], [ %6, %2 ]
  %15 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 3
  store float %14, ptr %15, align 4, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShapeKey_interpolation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !101
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKey_interpolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 4
  store i16 %5, ptr %6, align 8, !tbaa !101
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKey_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 12
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShapeKey_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 12
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKey_vertex_group_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 12
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKey_relative_key_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53, !noalias !102
  %5 = load ptr, ptr %1, align 8, !tbaa !95, !noalias !102
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !105, !noalias !102
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !34, !noalias !106
  switch i16 %10, label %22 [
    i16 21827, label %11
    i16 17739, label %23
    i16 21580, label %14
    i16 17741, label %17
    i16 16975, label %20
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !38, !noalias !106
  br label %23

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !46, !noalias !106
  br label %23

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !48, !noalias !106
  br label %23

20:                                               ; preds = %2
  %21 = tail call ptr @BKE_key_from_object(ptr noundef %5) #13, !noalias !106
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %20, %17, %14, %11, %2
  %24 = phi ptr [ null, %22 ], [ %21, %20 ], [ %19, %17 ], [ %16, %14 ], [ %13, %11 ], [ %5, %2 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.Key, ptr %24, i64 0, i32 10
  %28 = load i16, ptr %27, align 2, !tbaa !51, !noalias !106
  %29 = icmp sgt i16 %28, %7
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Key, ptr %24, i64 0, i32 6
  %32 = tail call ptr @BLI_findlink(ptr noundef nonnull %31, i32 noundef %8) #13, !noalias !106
  br label %33

33:                                               ; preds = %23, %26, %30
  %34 = phi ptr [ %32, %30 ], [ null, %26 ], [ null, %23 ]
  tail call void @RNA_pointer_create(ptr noundef %5, ptr noundef nonnull @RNA_ShapeKey, ptr noundef %34, ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKey_relative_key_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = load ptr, ptr %0, align 8, !tbaa !95
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %6, i64 0, i32 6
  %9 = load i16, ptr %8, align 4, !tbaa !105
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %12 = load i16, ptr %11, align 8, !tbaa !34
  switch i16 %12, label %24 [
    i16 21827, label %13
    i16 17739, label %25
    i16 21580, label %16
    i16 17741, label %19
    i16 16975, label %22
  ]

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  br label %25

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 23
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  br label %25

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  br label %25

22:                                               ; preds = %2
  %23 = tail call ptr @BKE_key_from_object(ptr noundef %7) #13
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %2, %13, %16, %19, %22, %24
  %26 = phi ptr [ null, %24 ], [ %23, %22 ], [ %21, %19 ], [ %18, %16 ], [ %15, %13 ], [ %7, %2 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Key, ptr %26, i64 0, i32 6
  %30 = tail call i32 @BLI_findindex(ptr noundef nonnull %29, ptr noundef %4) #13
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %28, %32
  %34 = phi i32 [ %10, %32 ], [ %30, %28 ]
  %35 = trunc i32 %34 to i16
  store i16 %35, ptr %8, align 4, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShapeKey_mute_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !109
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKey_mute_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !109
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShapeKey_slider_min_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 8, !tbaa !99
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKey_slider_min_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 14
  %6 = load float, ptr %5, align 4, !tbaa !100
  %7 = fadd float %6, 0xBF50624DE0000000
  %8 = fcmp olt float %1, -1.000000e+01
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = fcmp olt float %7, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %2, %9, %11
  %13 = phi float [ %7, %11 ], [ %1, %9 ], [ -1.000000e+01, %2 ]
  %14 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 13
  store float %13, ptr %14, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShapeKey_slider_max_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.KeyBlock, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 4, !tbaa !100
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKey_slider_max_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 13
  %6 = load float, ptr %5, align 8, !tbaa !99
  %7 = fadd float %6, 0x3F50624DE0000000
  %8 = fcmp ogt float %7, %1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = fcmp ogt float %1, 1.000000e+01
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %2, %9, %11
  %13 = phi float [ 1.000000e+01, %11 ], [ %1, %9 ], [ %7, %2 ]
  %14 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 14
  store float %13, ptr %14, align 4, !tbaa !100
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ShapeKey_data_length(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %4 = load i16, ptr %3, align 8, !tbaa !34
  switch i16 %4, label %16 [
    i16 21827, label %5
    i16 17739, label %17
    i16 21580, label %8
    i16 17741, label %11
    i16 16975, label %14
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Curve, ptr %2, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  br label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Lattice, ptr %2, i64 0, i32 23
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  br label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  br label %17

14:                                               ; preds = %1
  %15 = tail call ptr @BKE_key_from_object(ptr noundef %2) #13
  br label %17

16:                                               ; preds = %1
  unreachable

17:                                               ; preds = %1, %5, %8, %11, %14
  %18 = phi ptr [ %15, %14 ], [ %13, %11 ], [ %10, %8 ], [ %7, %5 ], [ %2, %1 ]
  %19 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.KeyBlock, ptr %20, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !110
  %23 = getelementptr inbounds %struct.Key, ptr %18, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 4
  %26 = load i16, ptr %25, align 8, !tbaa !34
  %27 = icmp eq i16 %26, 21827
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.Curve, ptr %24, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !111
  %31 = getelementptr inbounds %struct.Nurb, ptr %30, i64 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !112
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = sdiv i32 %22, 3
  br label %36

36:                                               ; preds = %17, %28, %34
  %37 = phi i32 [ %35, %34 ], [ %22, %28 ], [ %22, %17 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKey_data_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !57
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ShapeKey_data, ptr %4, align 8, !tbaa !59
  %5 = load ptr, ptr %1, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !34
  switch i16 %7, label %19 [
    i16 21827, label %8
    i16 17739, label %20
    i16 21580, label %11
    i16 17741, label %14
    i16 16975, label %17
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  br label %20

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Lattice, ptr %5, i64 0, i32 23
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  br label %20

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  br label %20

17:                                               ; preds = %2
  %18 = tail call ptr @BKE_key_from_object(ptr noundef %5) #13
  br label %20

19:                                               ; preds = %2
  unreachable

20:                                               ; preds = %2, %8, %11, %14, %17
  %21 = phi ptr [ %18, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ], [ %5, %2 ]
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.KeyBlock, ptr %23, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !110
  %26 = getelementptr inbounds %struct.Key, ptr %21, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !114
  %28 = getelementptr inbounds %struct.Key, ptr %21, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 4
  %31 = load i16, ptr %30, align 8, !tbaa !34
  %32 = icmp eq i16 %31, 21827
  br i1 %32, label %33, label %42

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.Curve, ptr %29, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !111
  %36 = getelementptr inbounds %struct.Nurb, ptr %35, i64 0, i32 18
  %37 = load ptr, ptr %36, align 8, !tbaa !112
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = sdiv i32 %25, 3
  %41 = mul nsw i32 %27, 3
  br label %42

42:                                               ; preds = %20, %33, %39
  %43 = phi i32 [ %40, %39 ], [ %25, %33 ], [ %25, %20 ]
  %44 = phi i32 [ %41, %39 ], [ %27, %33 ], [ %27, %20 ]
  %45 = getelementptr inbounds %struct.KeyBlock, ptr %23, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !115
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %46, i32 noundef %44, i32 noundef %43, i8 noundef zeroext 0, ptr noundef null) #13
  %47 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !61
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %84, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %52 = load ptr, ptr %0, align 8, !tbaa !116, !noalias !117
  %53 = getelementptr inbounds %struct.ID, ptr %52, i64 0, i32 4
  %54 = load i16, ptr %53, align 8, !tbaa !34, !noalias !117
  switch i16 %54, label %66 [
    i16 21827, label %55
    i16 17739, label %67
    i16 21580, label %58
    i16 17741, label %61
    i16 16975, label %64
  ]

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.Curve, ptr %52, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !38, !noalias !117
  br label %67

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.Lattice, ptr %52, i64 0, i32 23
  %60 = load ptr, ptr %59, align 8, !tbaa !46, !noalias !117
  br label %67

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.Mesh, ptr %52, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !48, !noalias !117
  br label %67

64:                                               ; preds = %50
  %65 = tail call ptr @BKE_key_from_object(ptr noundef %52) #13, !noalias !117
  br label %67

66:                                               ; preds = %50
  unreachable

67:                                               ; preds = %64, %61, %58, %55, %50
  %68 = phi ptr [ %65, %64 ], [ %63, %61 ], [ %60, %58 ], [ %57, %55 ], [ %52, %50 ]
  %69 = getelementptr inbounds %struct.Key, ptr %68, i64 0, i32 8
  %70 = load ptr, ptr %69, align 8, !tbaa !91, !noalias !117
  %71 = getelementptr inbounds %struct.ID, ptr %70, i64 0, i32 4
  %72 = load i16, ptr %71, align 8, !tbaa !34, !noalias !117
  %73 = icmp eq i16 %72, 21827
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.Curve, ptr %70, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !111, !noalias !117
  %77 = getelementptr inbounds %struct.Nurb, ptr %76, i64 0, i32 18
  %78 = load ptr, ptr %77, align 8, !tbaa !112, !noalias !117
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr @RNA_ShapeKeyCurvePoint, ptr @RNA_ShapeKeyBezierPoint
  br label %81

81:                                               ; preds = %67, %74
  %82 = phi ptr [ %80, %74 ], [ @RNA_ShapeKeyPoint, %67 ]
  %83 = tail call ptr @rna_iterator_array_get(ptr noundef nonnull %0) #13, !noalias !117
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0, ptr noundef nonnull %82, ptr noundef %83) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %84

84:                                               ; preds = %81, %42
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ShapeKey_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !116, !noalias !122
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !34, !noalias !122
  switch i16 %5, label %17 [
    i16 21827, label %6
    i16 17739, label %18
    i16 21580, label %9
    i16 17741, label %12
    i16 16975, label %15
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !38, !noalias !122
  br label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !46, !noalias !122
  br label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !48, !noalias !122
  br label %18

15:                                               ; preds = %2
  %16 = tail call ptr @BKE_key_from_object(ptr noundef %3) #13, !noalias !122
  br label %18

17:                                               ; preds = %2
  unreachable

18:                                               ; preds = %2, %6, %9, %12, %15
  %19 = phi ptr [ %16, %15 ], [ %14, %12 ], [ %11, %9 ], [ %8, %6 ], [ %3, %2 ]
  %20 = getelementptr inbounds %struct.Key, ptr %19, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !91, !noalias !122
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4
  %23 = load i16, ptr %22, align 8, !tbaa !34, !noalias !122
  %24 = icmp eq i16 %23, 21827
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !111, !noalias !122
  %28 = getelementptr inbounds %struct.Nurb, ptr %27, i64 0, i32 18
  %29 = load ptr, ptr %28, align 8, !tbaa !112, !noalias !122
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr @RNA_ShapeKeyCurvePoint, ptr @RNA_ShapeKeyBezierPoint
  br label %32

32:                                               ; preds = %18, %25
  %33 = phi ptr [ %31, %25 ], [ @RNA_ShapeKeyPoint, %18 ]
  %34 = tail call ptr @rna_iterator_array_get(ptr noundef nonnull %1) #13, !noalias !122
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %33, ptr noundef %34) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKey_data_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %8 = load ptr, ptr %0, align 8, !tbaa !116, !noalias !125
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !34, !noalias !125
  switch i16 %10, label %22 [
    i16 21827, label %11
    i16 17739, label %23
    i16 21580, label %14
    i16 17741, label %17
    i16 16975, label %20
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !38, !noalias !125
  br label %23

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 23
  %16 = load ptr, ptr %15, align 8, !tbaa !46, !noalias !125
  br label %23

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !48, !noalias !125
  br label %23

20:                                               ; preds = %6
  %21 = tail call ptr @BKE_key_from_object(ptr noundef %8) #13, !noalias !125
  br label %23

22:                                               ; preds = %6
  unreachable

23:                                               ; preds = %20, %17, %14, %11, %6
  %24 = phi ptr [ %21, %20 ], [ %19, %17 ], [ %16, %14 ], [ %13, %11 ], [ %8, %6 ]
  %25 = getelementptr inbounds %struct.Key, ptr %24, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !91, !noalias !125
  %27 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 4
  %28 = load i16, ptr %27, align 8, !tbaa !34, !noalias !125
  %29 = icmp eq i16 %28, 21827
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.Curve, ptr %26, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !111, !noalias !125
  %33 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 18
  %34 = load ptr, ptr %33, align 8, !tbaa !112, !noalias !125
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, ptr @RNA_ShapeKeyCurvePoint, ptr @RNA_ShapeKeyBezierPoint
  br label %37

37:                                               ; preds = %23, %30
  %38 = phi ptr [ %36, %30 ], [ @RNA_ShapeKeyPoint, %23 ]
  %39 = tail call ptr @rna_iterator_array_get(ptr noundef nonnull %0) #13, !noalias !125
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0, ptr noundef nonnull %38, ptr noundef %39) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %40

40:                                               ; preds = %37, %1
  ret void
}

declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKey_data_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #13
  ret void
}

declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ShapeKey_data_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #13
  call void @ShapeKey_data_begin(ptr noundef nonnull %4, ptr noundef %0)
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %83, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = icmp sgt i32 %1, -1
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, %1
  %15 = select i1 %11, i1 %14, i1 false
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull @__func__.ShapeKey_data_lookup_int, i32 noundef %1)
  br label %47

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %18
  %23 = icmp sgt i32 %1, 0
  %24 = load i32, ptr %6, align 8
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %34

27:                                               ; preds = %22, %27
  %28 = phi i32 [ %29, %27 ], [ %1, %22 ]
  %29 = add nsw i32 %28, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %4) #13
  %30 = icmp sgt i32 %28, 1
  %31 = load i32, ptr %6, align 8
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %27, label %34, !llvm.loop !132

34:                                               ; preds = %27, %22
  %35 = phi i32 [ %1, %22 ], [ %29, %27 ]
  %36 = phi i1 [ %25, %22 ], [ %32, %27 ]
  %37 = icmp eq i32 %35, 0
  %38 = select i1 %37, i1 %36, i1 false
  %39 = zext i1 %38 to i32
  br label %47

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !133
  %43 = mul nsw i32 %42, %1
  %44 = load ptr, ptr %10, align 8, !tbaa !134
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  store ptr %46, ptr %10, align 8, !tbaa !134
  br label %47

47:                                               ; preds = %34, %40, %16
  %48 = phi i32 [ 0, %16 ], [ %39, %34 ], [ 1, %40 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %83, label %50

50:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %51 = load ptr, ptr %4, align 8, !tbaa !116, !noalias !135
  %52 = getelementptr inbounds %struct.ID, ptr %51, i64 0, i32 4
  %53 = load i16, ptr %52, align 8, !tbaa !34, !noalias !135
  switch i16 %53, label %65 [
    i16 21827, label %54
    i16 17739, label %66
    i16 21580, label %57
    i16 17741, label %60
    i16 16975, label %63
  ]

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Curve, ptr %51, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !38, !noalias !135
  br label %66

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.Lattice, ptr %51, i64 0, i32 23
  %59 = load ptr, ptr %58, align 8, !tbaa !46, !noalias !135
  br label %66

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.Mesh, ptr %51, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !48, !noalias !135
  br label %66

63:                                               ; preds = %50
  %64 = call ptr @BKE_key_from_object(ptr noundef %51) #13, !noalias !135
  br label %66

65:                                               ; preds = %50
  unreachable

66:                                               ; preds = %63, %60, %57, %54, %50
  %67 = phi ptr [ %64, %63 ], [ %62, %60 ], [ %59, %57 ], [ %56, %54 ], [ %51, %50 ]
  %68 = getelementptr inbounds %struct.Key, ptr %67, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !91, !noalias !135
  %70 = getelementptr inbounds %struct.ID, ptr %69, i64 0, i32 4
  %71 = load i16, ptr %70, align 8, !tbaa !34, !noalias !135
  %72 = icmp eq i16 %71, 21827
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.Curve, ptr %69, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !111, !noalias !135
  %76 = getelementptr inbounds %struct.Nurb, ptr %75, i64 0, i32 18
  %77 = load ptr, ptr %76, align 8, !tbaa !112, !noalias !135
  %78 = icmp eq ptr %77, null
  %79 = select i1 %78, ptr @RNA_ShapeKeyCurvePoint, ptr @RNA_ShapeKeyBezierPoint
  br label %80

80:                                               ; preds = %66, %73
  %81 = phi ptr [ %79, %73 ], [ @RNA_ShapeKeyPoint, %66 ]
  %82 = call ptr @rna_iterator_array_get(ptr noundef nonnull %4) #13, !noalias !135
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4, ptr noundef nonnull %81, ptr noundef %82) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %83

83:                                               ; preds = %47, %80, %3
  %84 = phi i32 [ 0, %3 ], [ %48, %80 ], [ %48, %47 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #13
  ret i32 %84
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKeyPoint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !57
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ShapeKeyPoint_rna_properties, ptr %4, align 8, !tbaa !59
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ShapeKeyPoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKeyPoint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKeyPoint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ShapeKeyPoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKeyPoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyPoint_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load float, ptr %4, align 4, !tbaa !140
  store float %5, ptr %1, align 4, !tbaa !140
  %6 = getelementptr inbounds float, ptr %4, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !140
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float %7, ptr %8, align 4, !tbaa !140
  %9 = getelementptr inbounds float, ptr %4, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !140
  %11 = getelementptr inbounds float, ptr %1, i64 2
  store float %10, ptr %11, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyPoint_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load float, ptr %1, align 4, !tbaa !140
  store float %5, ptr %4, align 4, !tbaa !140
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !140
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float %7, ptr %8, align 4, !tbaa !140
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !140
  %11 = getelementptr inbounds float, ptr %4, i64 2
  store float %10, ptr %11, align 4, !tbaa !140
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKeyCurvePoint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !57
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ShapeKeyCurvePoint_rna_properties, ptr %4, align 8, !tbaa !59
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ShapeKeyCurvePoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKeyCurvePoint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKeyCurvePoint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ShapeKeyCurvePoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKeyCurvePoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyCurvePoint_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load float, ptr %4, align 4, !tbaa !140
  store float %5, ptr %1, align 4, !tbaa !140
  %6 = getelementptr inbounds float, ptr %4, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !140
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float %7, ptr %8, align 4, !tbaa !140
  %9 = getelementptr inbounds float, ptr %4, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !140
  %11 = getelementptr inbounds float, ptr %1, i64 2
  store float %10, ptr %11, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyCurvePoint_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load float, ptr %1, align 4, !tbaa !140
  store float %5, ptr %4, align 4, !tbaa !140
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !140
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float %7, ptr %8, align 4, !tbaa !140
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !140
  %11 = getelementptr inbounds float, ptr %4, i64 2
  store float %10, ptr %11, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShapeKeyCurvePoint_tilt_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds float, ptr %3, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !140
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyCurvePoint_tilt_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds float, ptr %4, i64 3
  store float %1, ptr %5, align 4, !tbaa !140
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKeyBezierPoint_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !57
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ShapeKeyBezierPoint_rna_properties, ptr %4, align 8, !tbaa !59
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #13
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ShapeKeyBezierPoint_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKeyBezierPoint_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKeyBezierPoint_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ShapeKeyBezierPoint_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ShapeKeyBezierPoint_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyBezierPoint_co_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds float, ptr %4, i64 3
  %6 = load float, ptr %5, align 4, !tbaa !140
  store float %6, ptr %1, align 4, !tbaa !140
  %7 = getelementptr inbounds float, ptr %4, i64 4
  %8 = load float, ptr %7, align 4, !tbaa !140
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !140
  %10 = getelementptr inbounds float, ptr %4, i64 5
  %11 = load float, ptr %10, align 4, !tbaa !140
  %12 = getelementptr inbounds float, ptr %1, i64 2
  store float %11, ptr %12, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyBezierPoint_co_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load float, ptr %1, align 4, !tbaa !140
  %6 = getelementptr inbounds float, ptr %4, i64 3
  store float %5, ptr %6, align 4, !tbaa !140
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !140
  %9 = getelementptr inbounds float, ptr %4, i64 4
  store float %8, ptr %9, align 4, !tbaa !140
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !140
  %12 = getelementptr inbounds float, ptr %4, i64 5
  store float %11, ptr %12, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyBezierPoint_handle_left_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load float, ptr %4, align 4, !tbaa !140
  store float %5, ptr %1, align 4, !tbaa !140
  %6 = getelementptr inbounds float, ptr %4, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !140
  %8 = getelementptr inbounds float, ptr %1, i64 1
  store float %7, ptr %8, align 4, !tbaa !140
  %9 = getelementptr inbounds float, ptr %4, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !140
  %11 = getelementptr inbounds float, ptr %1, i64 2
  store float %10, ptr %11, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyBezierPoint_handle_left_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load float, ptr %1, align 4, !tbaa !140
  store float %5, ptr %4, align 4, !tbaa !140
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !140
  %8 = getelementptr inbounds float, ptr %4, i64 1
  store float %7, ptr %8, align 4, !tbaa !140
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !140
  %11 = getelementptr inbounds float, ptr %4, i64 2
  store float %10, ptr %11, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyBezierPoint_handle_right_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds float, ptr %4, i64 6
  %6 = load float, ptr %5, align 4, !tbaa !140
  store float %6, ptr %1, align 4, !tbaa !140
  %7 = getelementptr inbounds float, ptr %4, i64 7
  %8 = load float, ptr %7, align 4, !tbaa !140
  %9 = getelementptr inbounds float, ptr %1, i64 1
  store float %8, ptr %9, align 4, !tbaa !140
  %10 = getelementptr inbounds float, ptr %4, i64 8
  %11 = load float, ptr %10, align 4, !tbaa !140
  %12 = getelementptr inbounds float, ptr %1, i64 2
  store float %11, ptr %12, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShapeKeyBezierPoint_handle_right_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load float, ptr %1, align 4, !tbaa !140
  %6 = getelementptr inbounds float, ptr %4, i64 6
  store float %5, ptr %6, align 4, !tbaa !140
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !140
  %9 = getelementptr inbounds float, ptr %4, i64 7
  store float %8, ptr %9, align 4, !tbaa !140
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !140
  %12 = getelementptr inbounds float, ptr %4, i64 8
  store float %11, ptr %12, align 4, !tbaa !140
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Key_update_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3, %13
  %9 = phi ptr [ %14, %13 ], [ %6, %3 ]
  %10 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %9) #13
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @DAG_id_tag_update(ptr noundef nonnull %9, i16 noundef signext 2) #13
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef nonnull %9) #13
  br label %13

13:                                               ; preds = %8, %12
  %14 = load ptr, ptr %9, align 8, !tbaa !58
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !141

16:                                               ; preds = %13, %3
  ret void
}

declare ptr @rna_ID_refine(ptr noundef) #2

declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_ShapeKey_value_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #11 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %7, i64 0, i32 13
  %9 = load float, ptr %8, align 8, !tbaa !99
  store float %9, ptr %1, align 4, !tbaa !140
  %10 = getelementptr inbounds %struct.KeyBlock, ptr %7, i64 0, i32 14
  %11 = load float, ptr %10, align 4, !tbaa !100
  store float %11, ptr %2, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_ShapeKey_slider_min_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #11 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  store float -1.000000e+01, ptr %1, align 4, !tbaa !140
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %7, i64 0, i32 14
  %9 = load float, ptr %8, align 4, !tbaa !100
  %10 = fadd float %9, 0xBF50624DE0000000
  store float %10, ptr %2, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_ShapeKey_slider_max_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #11 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.KeyBlock, ptr %7, i64 0, i32 13
  %9 = load float, ptr %8, align 8, !tbaa !99
  %10 = fadd float %9, 0x3F50624DE0000000
  store float %10, ptr %1, align 4, !tbaa !140
  store float 1.000000e+01, ptr %2, align 4, !tbaa !140
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_ShapeKey_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [128 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load ptr, ptr %0, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #13
  %6 = getelementptr inbounds %struct.KeyBlock, ptr %4, i64 0, i32 11
  %7 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %6, i64 noundef 128) #13
  %8 = icmp eq ptr %5, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i16 %11, 17739
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  br label %14

14:                                               ; preds = %9, %13
  %15 = phi ptr [ @.str.90, %13 ], [ @.str.89, %9 ]
  %16 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull %15, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #13
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_ShapeKeyPoint_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [128 x i8], align 16
  %3 = load ptr, ptr %0, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !34
  switch i16 %5, label %17 [
    i16 21827, label %6
    i16 17739, label %18
    i16 21580, label %9
    i16 17741, label %12
    i16 16975, label %15
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  br label %18

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  br label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  br label %18

15:                                               ; preds = %1
  %16 = tail call ptr @BKE_key_from_object(ptr noundef %3) #13
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %1, %6, %9, %12, %15, %17
  %19 = phi ptr [ null, %17 ], [ %16, %15 ], [ %14, %12 ], [ %11, %9 ], [ %8, %6 ], [ %3, %1 ]
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  %22 = icmp eq ptr %19, null
  %23 = icmp eq ptr %21, null
  %24 = or i1 %22, %23
  br i1 %24, label %58, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Key, ptr %19, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = icmp eq ptr %27, null
  br i1 %28, label %58, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Key, ptr %19, i64 0, i32 4
  br label %31

31:                                               ; preds = %29, %54
  %32 = phi ptr [ %27, %29 ], [ %56, %54 ]
  %33 = phi ptr [ undef, %29 ], [ %55, %54 ]
  %34 = getelementptr inbounds %struct.KeyBlock, ptr %32, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !115
  %36 = icmp eq ptr %35, null
  br i1 %36, label %54, label %37

37:                                               ; preds = %31
  %38 = icmp ugt ptr %35, %21
  br i1 %38, label %51, label %39

39:                                               ; preds = %37
  %40 = icmp eq ptr %35, %21
  br i1 %40, label %51, label %41

41:                                               ; preds = %39
  %42 = load i32, ptr %30, align 8, !tbaa !114
  %43 = getelementptr inbounds %struct.KeyBlock, ptr %32, i64 0, i32 8
  %44 = load i32, ptr %43, align 8, !tbaa !110
  %45 = mul nsw i32 %44, %42
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %35, i64 %46
  %48 = icmp ugt ptr %47, %21
  %49 = zext i1 %48 to i32
  %50 = select i1 %48, ptr %32, ptr %33
  br label %51

51:                                               ; preds = %41, %39, %37
  %52 = phi i32 [ 4, %37 ], [ 1, %39 ], [ %49, %41 ]
  %53 = phi ptr [ %33, %37 ], [ %32, %39 ], [ %50, %41 ]
  switch i32 %52, label %58 [
    i32 0, label %54
    i32 4, label %54
  ]

54:                                               ; preds = %51, %51, %31
  %55 = phi ptr [ %53, %51 ], [ %53, %51 ], [ %33, %31 ]
  %56 = load ptr, ptr %32, align 8, !tbaa !58
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %31, !llvm.loop !142

58:                                               ; preds = %51, %54, %25, %18
  %59 = phi ptr [ null, %18 ], [ null, %25 ], [ null, %54 ], [ %53, %51 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %87, label %61

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #13
  %62 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !143
  %64 = icmp eq ptr %63, @RNA_ShapeKeyBezierPoint
  %65 = getelementptr inbounds %struct.KeyBlock, ptr %59, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !115
  %67 = ptrtoint ptr %21 to i64
  %68 = ptrtoint ptr %66 to i64
  %69 = sub i64 %67, %68
  br i1 %64, label %70, label %74

70:                                               ; preds = %61
  %71 = lshr exact i64 %69, 2
  %72 = trunc i64 %71 to i32
  %73 = sdiv i32 %72, 12
  br label %79

74:                                               ; preds = %61
  %75 = trunc i64 %69 to i32
  %76 = getelementptr inbounds %struct.Key, ptr %19, i64 0, i32 4
  %77 = load i32, ptr %76, align 8, !tbaa !114
  %78 = sdiv i32 %75, %77
  br label %79

79:                                               ; preds = %74, %70
  %80 = phi i32 [ %73, %70 ], [ %78, %74 ]
  %81 = getelementptr inbounds %struct.KeyBlock, ptr %59, i64 0, i32 11
  %82 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %81, i64 noundef 128) #13
  %83 = load i16, ptr %4, align 8, !tbaa !34
  %84 = icmp eq i16 %83, 17739
  %85 = select i1 %84, ptr @.str.91, ptr @.str.92
  %86 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull %85, ptr noundef nonnull %2, i32 noundef %80) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #13
  br label %87

87:                                               ; preds = %58, %79
  %88 = phi ptr [ %86, %79 ], [ null, %58 ]
  ret ptr %88
}

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #2

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_all_animdata_fix_paths_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41, i64 192}
!39 = !{!"Curve", !40, i64 0, !41, i64 120, !41, i64 128, !43, i64 136, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !35, i64 244, !35, i64 246, !35, i64 248, !35, i64 250, !44, i64 252, !44, i64 256, !42, i64 260, !35, i64 264, !35, i64 266, !42, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !35, i64 284, !35, i64 286, !35, i64 288, !35, i64 290, !42, i64 292, !42, i64 296, !36, i64 300, !35, i64 304, !36, i64 306, !36, i64 307, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !42, i64 348, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !41, i64 368, !41, i64 376, !36, i64 384, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !41, i64 480, !42, i64 488, !42, i64 492, !41, i64 496, !45, i64 504, !44, i64 512, !44, i64 516, !44, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!40 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !36, i64 32, !35, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !41, i64 112}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = !{!"ListBase", !41, i64 0, !41, i64 8}
!44 = !{!"float", !36, i64 0}
!45 = !{!"CharInfo", !35, i64 0, !35, i64 2, !36, i64 4, !36, i64 5, !35, i64 6}
!46 = !{!47, !41, i64 192}
!47 = !{!"Lattice", !40, i64 0, !41, i64 120, !35, i64 128, !35, i64 130, !35, i64 132, !35, i64 134, !35, i64 136, !35, i64 138, !35, i64 140, !35, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !42, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !36, i64 208, !41, i64 272}
!48 = !{!49, !41, i64 144}
!49 = !{!"Mesh", !40, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !50, i64 280, !50, i64 480, !50, i64 680, !50, i64 880, !50, i64 1080, !42, i64 1280, !42, i64 1284, !42, i64 1288, !42, i64 1292, !42, i64 1296, !42, i64 1300, !42, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !42, i64 1344, !35, i64 1348, !35, i64 1350, !44, i64 1352, !42, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !35, i64 1366, !41, i64 1368}
!50 = !{!"CustomData", !41, i64 0, !36, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !41, i64 184, !41, i64 192}
!51 = !{!52, !35, i64 210}
!52 = !{!"Key", !40, i64 0, !41, i64 120, !41, i64 128, !36, i64 136, !42, i64 168, !42, i64 172, !43, i64 176, !41, i64 192, !41, i64 200, !35, i64 208, !35, i64 210, !35, i64 212, !35, i64 214, !44, i64 216, !42, i64 220}
!53 = !{!54, !41, i64 16}
!54 = !{!"PointerRNA", !55, i64 0, !41, i64 8, !41, i64 16}
!55 = !{!"", !41, i64 0}
!56 = !{!52, !41, i64 128}
!57 = !{i64 0, i64 8, !58, i64 8, i64 8, !58, i64 16, i64 8, !58}
!58 = !{!41, !41, i64 0}
!59 = !{!60, !41, i64 48}
!60 = !{!"CollectionPropertyIterator", !54, i64 0, !54, i64 24, !41, i64 48, !36, i64 56, !42, i64 96, !42, i64 100, !54, i64 104, !42, i64 128}
!61 = !{!60, !42, i64 128}
!62 = !{!63}
!63 = distinct !{!63, !64, !"Key_key_blocks_get: argument 0"}
!64 = distinct !{!64, !"Key_key_blocks_get"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"Key_key_blocks_get: argument 0"}
!67 = distinct !{!67, !"Key_key_blocks_get"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"Key_key_blocks_get: argument 0"}
!70 = distinct !{!70, !"Key_key_blocks_get"}
!71 = !{!72, !41, i64 16}
!72 = !{!"ListBaseIterator", !41, i64 0, !42, i64 8, !41, i64 16}
!73 = !{!72, !41, i64 0}
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!78, !41, i64 0}
!78 = !{!"Link", !41, i64 0, !41, i64 8}
!79 = distinct !{!79, !75, !76}
!80 = !{!81}
!81 = distinct !{!81, !82, !"Key_key_blocks_get: argument 0"}
!82 = distinct !{!82, !"Key_key_blocks_get"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"Key_key_blocks_get: argument 0"}
!85 = distinct !{!85, !"Key_key_blocks_get"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"Key_key_blocks_get: argument 0"}
!88 = distinct !{!88, !"Key_key_blocks_get"}
!89 = distinct !{!89, !75, !76}
!90 = !{!52, !41, i64 120}
!91 = !{!52, !41, i64 200}
!92 = !{!52, !35, i64 208}
!93 = !{!52, !44, i64 216}
!94 = !{!52, !35, i64 212}
!95 = !{!54, !41, i64 0}
!96 = !{!97, !44, i64 16}
!97 = !{!"KeyBlock", !41, i64 0, !41, i64 8, !44, i64 16, !44, i64 20, !35, i64 24, !35, i64 26, !35, i64 28, !35, i64 30, !42, i64 32, !42, i64 36, !41, i64 40, !36, i64 48, !36, i64 112, !44, i64 176, !44, i64 180}
!98 = !{!97, !44, i64 20}
!99 = !{!97, !44, i64 176}
!100 = !{!97, !44, i64 180}
!101 = !{!97, !35, i64 24}
!102 = !{!103}
!103 = distinct !{!103, !104, !"rna_ShapeKey_relative_key_get: argument 0"}
!104 = distinct !{!104, !"rna_ShapeKey_relative_key_get"}
!105 = !{!97, !35, i64 28}
!106 = !{!107}
!107 = distinct !{!107, !108, !"rna_object_shapekey_index_get: argument 0"}
!108 = distinct !{!108, !"rna_object_shapekey_index_get"}
!109 = !{!97, !35, i64 30}
!110 = !{!97, !42, i64 32}
!111 = !{!39, !41, i64 136}
!112 = !{!113, !41, i64 72}
!113 = !{!"Nurb", !41, i64 0, !41, i64 8, !35, i64 16, !35, i64 18, !35, i64 20, !35, i64 22, !42, i64 24, !42, i64 28, !36, i64 32, !35, i64 36, !35, i64 38, !35, i64 40, !35, i64 42, !35, i64 44, !35, i64 46, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !35, i64 80, !35, i64 82, !42, i64 84}
!114 = !{!52, !42, i64 168}
!115 = !{!97, !41, i64 40}
!116 = !{!60, !41, i64 0}
!117 = !{!118, !120}
!118 = distinct !{!118, !119, !"rna_ShapeKey_data_get: argument 0"}
!119 = distinct !{!119, !"rna_ShapeKey_data_get"}
!120 = distinct !{!120, !121, !"ShapeKey_data_get: argument 0"}
!121 = distinct !{!121, !"ShapeKey_data_get"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"rna_ShapeKey_data_get: argument 0"}
!124 = distinct !{!124, !"rna_ShapeKey_data_get"}
!125 = !{!126, !128}
!126 = distinct !{!126, !127, !"rna_ShapeKey_data_get: argument 0"}
!127 = distinct !{!127, !"rna_ShapeKey_data_get"}
!128 = distinct !{!128, !129, !"ShapeKey_data_get: argument 0"}
!129 = distinct !{!129, !"ShapeKey_data_get"}
!130 = !{!131, !41, i64 32}
!131 = !{!"ArrayIterator", !41, i64 0, !41, i64 8, !41, i64 16, !42, i64 24, !42, i64 28, !41, i64 32}
!132 = distinct !{!132, !75, !76}
!133 = !{!131, !42, i64 24}
!134 = !{!131, !41, i64 0}
!135 = !{!136, !138}
!136 = distinct !{!136, !137, !"rna_ShapeKey_data_get: argument 0"}
!137 = distinct !{!137, !"rna_ShapeKey_data_get"}
!138 = distinct !{!138, !139, !"ShapeKey_data_get: argument 0"}
!139 = distinct !{!139, !"ShapeKey_data_get"}
!140 = !{!44, !44, i64 0}
!141 = distinct !{!141, !75, !76}
!142 = distinct !{!142, !75, !76}
!143 = !{!54, !41, i64 8}
